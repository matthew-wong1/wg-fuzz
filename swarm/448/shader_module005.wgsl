struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: array<Struct_3, 17>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = 34618u;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -669f)), -1000f)), -455f);
    var var_2 = global2[_wgslsmith_index_u32(44933u, 17u)];
    let var_3 = vec4<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(0i, -43426i), -8967i), 1i, reverseBits(~9891i)), vec3<i32>(_wgslsmith_sub_i32(max(-1i, 2147483647i), countOneBits(-37680i)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), ~vec2<i32>(-2147483647i, 2147483647i)), countOneBits(abs(-17904i)))), 1i, -1i);
    let var_4 = vec3<u32>(reverseBits(41611u ^ u_input.a), 0u, u_input.a);
    return select(select(!(!vec3<bool>(global1.x, global1.x, global1.x)), vec3<bool>(true, !(global1.x && false), true), select(vec3<bool>(all(vec4<bool>(false, true, true, false)), global1.x, global1.x | global1.x), !(!vec3<bool>(false, false, global1.x)), vec3<bool>(false, global1.x || false, true))), vec3<bool>(!((32488i << (var_4.x % 32u)) >= firstLeadingBit(-29926i)), !all(select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(true, global1.x, false, global1.x), vec4<bool>(true, global1.x, true, global1.x))), !(!global1.x)), select(vec3<bool>(true, global1.x, global1.x), !(!vec3<bool>(global1.x, global1.x, global1.x)), !(!select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, global1.x, false)))));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> u32 {
    var var_0 = true;
    global1 = !vec3<bool>(!global1.x & (global1.x && (false == global1.x)), true, any(!vec4<bool>(global1.x, false, global1.x, global1.x)) & all(func_3(Struct_3(-1014f, Struct_1(vec4<f32>(1792f, -2803f, -580f, 1133f))))));
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(0i, reverseBits(arg_1), ~abs(arg_1), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(2147483647i, 0i, arg_0.x)), (vec3<i32>(arg_1, arg_1, arg_0.x) & arg_0) | -vec3<i32>(42653i, arg_0.x, 1i))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, 0i, -2147483647i) << (vec4<u32>(u_input.a, u_input.a, 35889u, 76753u) % vec4<u32>(32u)), min(vec4<i32>(arg_1, arg_0.x, arg_1, arg_1), vec4<i32>(arg_1, arg_1, -2147483647i, 1i)), vec4<i32>(arg_0.x, 7143i, arg_0.x, 0i)) >> ((~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 1u, 4294967295u, 69560u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)) << (min(~vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a, u_input.a), vec4<u32>(4294967295u, 0u, u_input.a, u_input.a))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global0 = (_wgslsmith_dot_vec3_i32(~arg_0, arg_0) >> (~_wgslsmith_sub_u32(abs(u_input.a), _wgslsmith_div_u32(u_input.a, u_input.a)) % 32u)) | 21489i;
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 33482i >> (u_input.a % 32u), -1i), ~_wgslsmith_clamp_vec3_i32(countOneBits(arg_0), vec3<i32>(arg_1, 26909i, 34995i), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -12436i, arg_1), vec3<i32>(0i, arg_1, -39784i)))) == select(~1i, -(~2147483647i) >> (1u % 32u), any(vec3<bool>(true, true, true)));
    return u_input.a;
}

fn func_1() -> Struct_4 {
    var var_0 = ~vec4<u32>(u_input.a ^ min(countOneBits(u_input.a), ~u_input.a), firstLeadingBit(~u_input.a), func_2(vec3<i32>(1i, 1i, 1i), 9890i), u_input.a);
    global0 = -max(_wgslsmith_mod_i32(_wgslsmith_div_i32(1i, ~29538i), -select(0i, 0i, global1.x)), 0i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(531f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -472f), _wgslsmith_f_op_f32(218f + -267f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(266f, 1000f))) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-354f, 1330f), _wgslsmith_f_op_f32(select(-109f, 131f, global1.x)), true))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -2473f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_2 = vec4<i32>(1i ^ _wgslsmith_mod_i32(-_wgslsmith_clamp_i32(0i, 1586i, -2147483647i), i32(-1i) * -1i), -5477i, _wgslsmith_div_i32(-(i32(-1i) * -2147483647i), _wgslsmith_mod_i32(29705i, ~1i)), _wgslsmith_clamp_i32(i32(-1i) * -1i, min(abs(1i), ~1i), -select(39615i, _wgslsmith_mod_i32(1i, -54691i), true)));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -635f)));
    return Struct_4(-1286f, Struct_3(1f, Struct_1(vec4<f32>(2541f, 542f, _wgslsmith_f_op_f32(256f + 1000f), -1000f))));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: i32) -> i32 {
    let var_0 = arg_0.a;
    var var_1 = select(_wgslsmith_mult_u32(1u, u_input.a), u_input.a, any(arg_1.zww));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(arg_0.b.b.a.zzw, arg_0.b.b.a.zyw));
    var var_3 = Struct_3(-1000f, Struct_1(arg_0.b.b.a));
    var_1 = ~4294967295u;
    return firstLeadingBit(-(~min(41239i, countOneBits(1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(abs(vec4<i32>(_wgslsmith_clamp_i32(select(-2147483647i, 22792i, global1.x), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(-2147483647i, 2147483647i)), 2147483647i), ~(~(-18774i)), 1i >> (_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a) % 32u), 2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(func_4(func_1(), select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(global1.x, false, global1.x, true), global1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -10570i, 1i), vec3<i32>(-51254i, 0i, -58332i))), _wgslsmith_mult_i32(1i, 2147483647i), countOneBits(-64653i), ~max(-2147483647i, 0i)), vec4<i32>(_wgslsmith_mult_i32(-35493i, -11560i), -1i, func_4(Struct_4(1703f, global2[_wgslsmith_index_u32(1u, 17u)]), vec4<bool>(true, true, global1.x, false), countOneBits(1i)), ~(-1i)), -(select(vec4<i32>(-3609i, 2147483647i, 1i, 52524i), vec4<i32>(-9719i, -1i, 2147483647i, 30049i), vec4<bool>(false, global1.x, global1.x, true)) | -vec4<i32>(-6582i, 19185i, -3676i, 21886i))));
    let var_1 = _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(-24874i, 15475i)), var_0.yy);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(select(-614f, -1000f, false)), func_1().b);
    var var_3 = global1.x;
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))) < -1421f;
    var var_4 = ~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.x, var_1.x >> (21389u % 32u)) | ~_wgslsmith_mod_vec2_i32(vec2<i32>(80660i, var_1.x), var_1), -select(var_1, vec2<i32>(0i, 6154i), select(vec2<bool>(true, global1.x), vec2<bool>(true, global1.x), global1.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(~var_0.x, i32(-1i) * -1i), abs(-vec2<i32>(-2147483647i, var_0.x))));
    let var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1065f, -585f, var_2.b.a, 952f))), vec4<f32>(var_2.a, var_2.a, var_2.a, -1083f), !global1.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) + 440f), -966f, _wgslsmith_div_f32(var_2.b.b.a.x, 386f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.a)))), !all(vec3<bool>(true, false, global1.x)) && global1.x)));
    var var_6 = _wgslsmith_div_f32(var_5.a.x, 856f);
    var var_7 = vec2<i32>(_wgslsmith_clamp_i32(i32(-1i) * -var_1.x, var_0.x, 1i), reverseBits(-var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(1374f);
}

