struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = max(vec2<i32>(2147483647i, ~_wgslsmith_clamp_i32(-9218i, -2147483647i, -1i)), vec2<i32>(_wgslsmith_add_i32(~(-11275i), 15449i) << (_wgslsmith_dot_vec2_u32(~u_input.c.xy, ~u_input.b.yy) % 32u), 2147483647i));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-441f, _wgslsmith_f_op_f32(floor(-378f)), 1f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-990f, -1000f, 1217f), vec3<f32>(308f, 378f, 1064f), vec3<bool>(arg_0, false, false))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(640f, 758f, 526f) * vec3<f32>(1867f, -424f, 193f))) + vec3<f32>(329f, 157f, _wgslsmith_f_op_f32(-193f + 1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -246f), _wgslsmith_f_op_f32(round(220f)), 1000f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-598f + 137f), _wgslsmith_f_op_f32(-1980f + -159f), _wgslsmith_f_op_f32(-209f - -879f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 524f, -332f) - vec3<f32>(430f, -958f, 1979f))))), true));
    var var_2 = vec3<u32>(9068u << (u_input.a.x % 32u), max(u_input.c.x & 29400u, 10999u << (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.a.x), u_input.a) % 32u)), u_input.c.x);
    var_2 = _wgslsmith_div_vec3_u32(~u_input.b, ~vec3<u32>(_wgslsmith_mod_u32(~0u, 8427u & global0[_wgslsmith_index_u32(var_2.x, 22u)]), global0[_wgslsmith_index_u32(14937u, 22u)], 4294967295u));
    var var_3 = ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 22u)], 17972u), ~0u >> (select(u_input.a.x, var_2.x, true) % 32u)), ~1u, _wgslsmith_clamp_u32(abs(u_input.c.x), max(_wgslsmith_mult_u32(u_input.a.x, 1u), u_input.b.x), 3032u), select(1u, ~3975u >> ((var_2.x ^ 4294967295u) % 32u), true));
    return var_1.x;
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<bool>(true, true);
    let var_1 = vec3<bool>(!var_0.x, !var_0.x, true);
    var var_2 = !(!(!var_1.x));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0.x))), _wgslsmith_div_u32(4294967295u, u_input.c.x), _wgslsmith_sub_vec2_u32(~u_input.c.yz, ~u_input.b.yy) | ~(~vec2<u32>(0u, u_input.b.x)), _wgslsmith_dot_vec4_u32(u_input.a >> (_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(27937u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49970u, 22u)], 22u)], u_input.c.x, u_input.b.x)) % vec4<u32>(32u)), vec4<u32>(min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 22u)], 22u)], global0[_wgslsmith_index_u32(1u, 22u)]), _wgslsmith_dot_vec2_u32(u_input.a.wy, u_input.b.yx), 0u, u_input.a.x)), select(select(!var_1, select(var_1, vec3<bool>(true, var_0.x, var_0.x), var_1), vec3<bool>(var_0.x, true, true)), !(!var_1), vec3<bool>(true, true, true))), Struct_1(384f, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(87244u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30360u, 22u)], 22u)], 4294967295u)), u_input.a.ywy >> (vec3<u32>(80413u, global0[_wgslsmith_index_u32(0u, 22u)], 39326u) % vec3<u32>(32u))), _wgslsmith_mult_u32(select(43019u, global0[_wgslsmith_index_u32(u_input.b.x, 22u)], false), u_input.b.x)), countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(1u, 22u)]), u_input.c.xx)), 1u | _wgslsmith_add_u32(~u_input.b.x, ~28868u), var_1));
    var_2 = (_wgslsmith_sub_i32(~22720i, 1i) << (u_input.c.x % 32u)) <= 1i;
    return Struct_1(_wgslsmith_f_op_f32(-var_3.b.a), _wgslsmith_dot_vec2_u32(u_input.c.zz, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x >> (0u % 32u), select(42021u, var_3.a.c.x, var_1.x)), vec2<u32>(1u, 1u & global0[_wgslsmith_index_u32(31411u, 22u)]))), vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.a.yxz, u_input.c)) & ~u_input.a.x, firstLeadingBit(countOneBits(32096u))), _wgslsmith_mod_u32(reverseBits(max(firstLeadingBit(45719u), firstLeadingBit(var_3.a.d))), min(var_3.b.d, min(15073u, ~var_3.a.c.x))), var_1);
}

fn func_1(arg_0: vec4<u32>) -> vec4<u32> {
    global0 = array<u32, 22>();
    let var_0 = func_2();
    global0 = array<u32, 22>();
    let var_1 = -(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-3467i, 0i, 33529i, -67989i)), i32(-1i) * -1i) ^ _wgslsmith_mult_i32(_wgslsmith_sub_i32(7618i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, 43378i, 10086i), vec4<i32>(12177i, 9966i, -2155i, -20753i))), select(_wgslsmith_mod_i32(9112i, -16761i), ~(-1i), any(var_0.e.zz))));
    global0 = array<u32, 22>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.a);
    var_0 = ~(~u_input.a) ^ ~select(select(firstTrailingBit(vec4<u32>(2086u, global0[_wgslsmith_index_u32(67125u, 22u)], 18165u, global0[_wgslsmith_index_u32(22980u, 22u)])), u_input.a, vec4<bool>(true, false, true, true)), min(select(u_input.a, vec4<u32>(16783u, u_input.a.x, u_input.a.x, 69315u), true), reverseBits(u_input.a)), vec4<bool>(true, select(true, false, false), all(vec3<bool>(false, false, false)), true));
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(799f, -756f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-404f, -157f))))))));
    var var_2 = ~min(u_input.a, u_input.a << (min(firstLeadingBit(u_input.a), _wgslsmith_add_vec4_u32(u_input.a, u_input.a)) % vec4<u32>(32u)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(floor(900f)), _wgslsmith_f_op_f32(-var_1.x), var_1.x);
    var var_4 = Struct_3(func_2(), Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(func_2().a)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(18376u, 5093u), vec2<u32>(21069u, u_input.c.x)), 22u)], 22u)], ~_wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(11844u, 22u)], u_input.b.x), var_2.wz), _wgslsmith_mult_u32(68449u, 0u), vec3<bool>(true, true, true)), Struct_1(var_3.x, 4294967295u, select(vec2<u32>(var_0.x, u_input.a.x) | vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(13586u, 22u)]), ~u_input.c.yy, true), ~(1u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10071u, 22u)], 22u)]), func_2().e)));
    var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_vec3_i32(-vec3<i32>(1i, 1i, 1i), firstLeadingBit(vec3<i32>(1i, 1i, 1i))), func_1(u_input.a).ww);
}

