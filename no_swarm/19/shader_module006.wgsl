struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(true, true, true, true, false, false, true, true, false, false, false, true, false, true, true);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<f32> {
    let var_0 = vec2<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -12302i), vec2<i32>(-60227i, 0i | u_input.a)));
    var var_1 = u_input.b.wy;
    global0 = array<bool, 15>();
    let var_2 = Struct_2(false, Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, u_input.b.x), u_input.c.zx), ~0u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(973f, -2112f) * 1201f), _wgslsmith_f_op_f32(-103f * -795f), _wgslsmith_f_op_f32(1047f * -627f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -291f) - -187f), -1169f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -800f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -953f)))), _wgslsmith_f_op_f32(1244f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -363f)))));
    let var_3 = var_2.a;
    return _wgslsmith_f_op_vec3_f32(var_2.b.c - var_2.b.c);
}

fn func_2() -> f32 {
    var var_0 = Struct_2(!global0[_wgslsmith_index_u32(u_input.b.x, 15u)], Struct_1(u_input.b.zw, 10030u, _wgslsmith_f_op_vec3_f32(func_3())), -495f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -140f)) - 296f)));
    global0 = array<bool, 15>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-888f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -245f) + _wgslsmith_f_op_f32(var_0.b.c.x * 270f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, var_0.b.c.x)) * _wgslsmith_f_op_f32(exp2(var_0.c))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(ceil(-165f)), true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1185f, var_1.x) * var_0.c)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, var_1.x, -1598f, var_1.x), vec4<f32>(var_1.x, var_0.c, -139f, var_0.b.c.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -919f, 1301f)))));
    var var_3 = u_input.d.xz;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(746f))) - -937f);
}

fn func_4(arg_0: vec4<u32>, arg_1: f32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(sign(-1000f));
    var var_1 = Struct_1(~_wgslsmith_clamp_vec2_u32(firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(100358u, u_input.b.x), vec2<u32>(5803u, 1u))), (vec2<u32>(u_input.c.x, u_input.b.x) >> (vec2<u32>(1u, 42718u) % vec2<u32>(32u))) ^ ~arg_0.zw, countOneBits(vec2<u32>(28973u, 1u)) & (arg_0.yy << (vec2<u32>(u_input.b.x, 40109u) % vec2<u32>(32u)))), u_input.b.x, vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(sign(-758f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-218f * arg_1), -397f))))));
    let var_2 = ~(0u >> ((1379u | arg_0.x) % 32u));
    let var_3 = Struct_1(_wgslsmith_mod_vec2_u32(abs(arg_0.wy), arg_0.xw), 30835u, vec3<f32>(589f, _wgslsmith_f_op_f32(-657f - var_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1074f)))));
    let var_4 = var_3;
    return global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(countOneBits(~arg_0), vec4<u32>(~var_2, abs(var_3.b), 6247u, abs(var_1.b))) ^ reverseBits(1u)), 15u)];
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: bool) -> Struct_2 {
    global0 = array<bool, 15>();
    var var_0 = _wgslsmith_clamp_u32(u_input.b.x, 76511u, _wgslsmith_mod_u32(u_input.b.x, u_input.c.x ^ (~35350u | u_input.c.x)));
    var_0 = _wgslsmith_add_u32(17028u, abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), _wgslsmith_clamp_vec2_u32(u_input.b.xw, vec2<u32>(62250u, 27234u), u_input.b.xw)), _wgslsmith_clamp_u32(reverseBits(u_input.c.x), u_input.c.x, 1u))));
    let var_1 = max(max(vec3<i32>(u_input.d.x, u_input.a, u_input.a), countOneBits(vec3<i32>(u_input.a, -u_input.d.x, -u_input.d.x))), vec3<i32>(~(~firstLeadingBit(-35741i)), u_input.d.x, u_input.a));
    let var_2 = Struct_1(countOneBits(vec2<u32>(u_input.c.x, abs(u_input.c.x))), (_wgslsmith_mod_u32(_wgslsmith_mult_u32(33578u, 76462u), _wgslsmith_dot_vec2_u32(u_input.c.wz, u_input.b.zz)) << (53867u % 32u)) >> (abs(1u) % 32u), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-252f, -734f, 551f)), vec3<f32>(-648f, arg_1.x, arg_1.x))));
    return Struct_2(true, var_2, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1269f))), _wgslsmith_f_op_f32(-var_2.c.x))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1524u, u_input.b.x, u_input.c.x, u_input.c.x), vec4<u32>(0u, arg_0.x, arg_0.x, 35796u)), 18799u)), _wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.b.x, u_input.c.x, 123872u), vec3<u32>(~1u, countOneBits(arg_0.x & 4294967295u), arg_0.x)));
    let var_1 = 38991u;
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    let var_2 = Struct_3(!all(!vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(1u, 15u)])) | global0[_wgslsmith_index_u32(u_input.b.x, 15u)], -_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.d.xx, vec2<i32>(arg_1.x, u_input.a)) << (68715u % 32u), -3231i), ~(((var_0.x | arg_0.x) >> (_wgslsmith_dot_vec4_u32(u_input.c, u_input.b) % 32u)) | abs(u_input.c.x)), func_5(!vec2<bool>(!global0[_wgslsmith_index_u32(var_1, 15u)], true), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1014f, 584f, -415f) * vec3<f32>(-1279f, -1087f, 1678f))))), !func_4(vec4<u32>(u_input.c.x, 101612u, 28679u, 34814u), _wgslsmith_f_op_f32(func_2()))), Struct_1(~u_input.c.xx, ~(~abs(var_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(249f, 347f, 832f)))));
    return _wgslsmith_f_op_f32(step(var_2.d.d, _wgslsmith_f_op_vec3_f32(func_3()).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(vec3<u32>(u_input.b.x, max(u_input.c.x, u_input.c.x), countOneBits(~abs(u_input.c.x))), u_input.d));
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    var var_1 = _wgslsmith_sub_u32(firstLeadingBit(firstLeadingBit(u_input.b.x) >> (~2780u % 32u)), 0u);
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    let var_2 = !vec2<bool>(!(!global0[_wgslsmith_index_u32(1u, 15u)]), global0[_wgslsmith_index_u32(abs(4294967295u), 15u)]);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(func_1(u_input.c.zxx, -u_input.d)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -148f))), 87002u, ~(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(48723u, u_input.b.x, 1u, 1u), vec4<u32>(u_input.c.x, u_input.b.x, 39668u, 4294967295u)), 73519u) << ((_wgslsmith_sub_vec2_u32(u_input.c.xz, u_input.c.xw) | min(u_input.b.zz, vec2<u32>(1u, u_input.b.x))) % vec2<u32>(32u))));
}

