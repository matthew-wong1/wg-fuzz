struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: i32,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: vec4<f32>;

var<private> global2: array<vec4<i32>, 19>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_2(Struct_1(297f, true, -1i, _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(~7116u, 19u)] | (global2[_wgslsmith_index_u32(u_input.a.x, 19u)] | global2[_wgslsmith_index_u32(5515u, 19u)]), countOneBits(global2[_wgslsmith_index_u32(4294967295u, 19u)] | global2[_wgslsmith_index_u32(u_input.a.x, 19u)])), vec4<i32>(~(-20694i), firstLeadingBit(-1i) >> (_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) % 32u), abs(~84678i), ~(-1925i))), Struct_1(-793f, !(true & any(vec3<bool>(true, true, false))), ~2147483647i, 0i, vec4<i32>(-(-2147483647i >> (u_input.a.x % 32u)), countOneBits(31423i), -12526i, _wgslsmith_sub_i32(-2147483647i, -29754i) << (u_input.a.x % 32u))));
    let var_1 = vec3<i32>(-54419i, _wgslsmith_div_i32(_wgslsmith_add_i32(0i, -1i), 26226i), -1i);
    var var_2 = _wgslsmith_clamp_i32(~_wgslsmith_dot_vec2_i32(abs(var_1.yy), vec2<i32>(1i, min(18684i, -30140i))), 17232i, _wgslsmith_clamp_i32(-reverseBits(max(-38797i, var_0.b.d)), ~var_1.x, var_0.a.d));
    var var_3 = ~(((vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u) ^ vec4<u32>(u_input.a.x, 31018u, u_input.a.x, u_input.a.x)) | ~vec4<u32>(u_input.a.x, u_input.a.x, 19781u, u_input.a.x)) & (select(vec4<u32>(u_input.a.x, 12469u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(false, false, var_0.b.b, true)) ^ ~vec4<u32>(u_input.a.x, u_input.a.x, 57061u, u_input.a.x))) & ~countOneBits(abs(vec4<u32>(u_input.a.x, 8019u, 1u, 49257u) ^ vec4<u32>(u_input.a.x, 3469u, 1u, 4294967295u)));
    var var_4 = ~var_0.b.c;
    return vec3<f32>(_wgslsmith_f_op_f32(sign(global1.x)), -1521f, _wgslsmith_f_op_f32(-global1.x));
}

fn func_2() -> Struct_1 {
    global2 = array<vec4<i32>, 19>();
    global2 = array<vec4<i32>, 19>();
    let var_0 = Struct_4(~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())));
    let var_1 = vec3<bool>(all(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true))) && any(vec4<bool>(false, true, false, global1.x > -558f)), any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true))), true);
    global0 = var_0.a;
    return Struct_1(2073f, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(~(-1i), _wgslsmith_add_i32(0i, 2147483647i)), 93085i, -_wgslsmith_mod_i32(39770i, -9856i)) == _wgslsmith_mod_i32(~0i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(2147483647i, -2147483647i), -1i, countOneBits(0i))), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-17712i, 9606i), abs(vec2<i32>(-81929i, -1i))) & _wgslsmith_add_i32(select(44439i, -9961i, var_1.x), ~1i), _wgslsmith_sub_i32(-(~5781i), 2147483647i)), _wgslsmith_dot_vec4_i32(select(max(-vec4<i32>(1402i, 12003i, -2147483647i, 13519i), ~global2[_wgslsmith_index_u32(u_input.a.x, 19u)]), abs(min(vec4<i32>(-2147483647i, 1i, -7376i, -1i), vec4<i32>(-1056i, 2147483647i, -2147483647i, 37446i))), vec4<bool>(true, all(var_1), !var_1.x, false)), vec4<i32>(1i, 57272i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(93225i, 1i, 1i), firstLeadingBit(15728i)), 1i)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(abs(1i), 1i, ~2147483647i, select(-41933i, 1i, true)), _wgslsmith_mod_vec4_i32(global2[_wgslsmith_index_u32(~u_input.a.x, 19u)], select(global2[_wgslsmith_index_u32(var_0.a, 19u)], vec4<i32>(-10921i, -2147483647i, 20000i, -2147483647i), vec4<bool>(false, true, var_1.x, true))))));
}

fn func_1() -> vec4<f32> {
    var var_0 = false;
    global1 = vec4<f32>(_wgslsmith_f_op_f32(select(283f, global1.x, false)), -1168f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -654f)), -968f)), 501f);
    var var_1 = func_2();
    let var_2 = Struct_2(func_2(), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -322f)), ~var_1.e.x < var_1.d, var_1.c, var_1.d << (min(~22543u, 4294967295u) % 32u), vec4<i32>(-11079i, var_1.e.x, firstLeadingBit(-19813i), ~(-var_1.e.x))));
    let var_3 = max(abs(u_input.a) << (vec3<u32>(67223u, u_input.a.x, _wgslsmith_mod_u32(80858u, ~u_input.a.x)) % vec3<u32>(32u)), max(vec3<u32>(~51312u >> ((4294967295u >> (u_input.a.x % 32u)) % 32u), ~countOneBits(u_input.a.x), 10912u), u_input.a));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -430f))), 1000f, -1623f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, var_2.a.a, -1000f, -1482f), vec4<f32>(var_2.a.a, 383f, var_1.a, global1.x)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, -515f, var_2.a.a, -1772f)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<i32>) -> Struct_4 {
    global2 = array<vec4<i32>, 19>();
    let var_0 = all(!select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), all(vec2<bool>(true, true))));
    var var_1 = var_0;
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - 485f)), 160f, -1238f) - vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-224f - _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), -267f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))))), global1.x, _wgslsmith_div_f32(global1.x, global1.x)));
    return Struct_4((1u ^ _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x ^ 4294967295u)) & (u_input.a.x >> (~_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.xz) % 32u)), vec3<f32>(arg_0.x, -532f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_3.x, arg_0.x))), global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 19>();
    global0 = 4294967295u;
    global0 = u_input.a.x;
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_1()))), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(680i, -1i, 1i), vec3<i32>(107i, -47251i, 1i)), ~select(vec3<i32>(12100i, -1i, 53126i), vec3<i32>(2033i, -13026i, 0i), vec3<bool>(false, true, true))), vec3<i32>(~(~0i), 41687i, _wgslsmith_clamp_i32(max(-2147483647i, -1i), _wgslsmith_mod_i32(2147483647i, -1i), -2147483647i))));
    var var_1 = firstLeadingBit(-vec2<i32>((i32(-1i) * -1i) << (1u % 32u), ~1i));
    let x = u_input.a;
    s_output = StorageBuffer(298f, ~countOneBits(-20587i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -417f, -1668f, var_0.b.x))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, -955f, global1.x, -1431f), vec4<f32>(global1.x, var_0.b.x, -981f, 627f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, global1.x, global1.x, 433f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-662f, var_0.b.x, 887f, 1000f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-197f, global1.x, global1.x, -965f)))), (vec2<i32>(var_1.x, var_1.x) | vec2<i32>(_wgslsmith_sub_i32(53918i, var_1.x), select(7011i, -12179i, false))) ^ func_2().e.wz);
}

