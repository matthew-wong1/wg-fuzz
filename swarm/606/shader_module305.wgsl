struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
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

var<private> global0: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    global0 = true;
    let var_0 = -11963i;
    global0 = true;
    var var_1 = true;
    let var_2 = select(!vec3<bool>(all(vec2<bool>(true, true)), false, all(vec3<bool>(false, true, false))), !vec3<bool>(!(u_input.b.x != u_input.b.x), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), true), all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))))));
    return abs(13356u);
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_2(Struct_1(vec3<u32>(u_input.b.x, ~func_3(vec4<f32>(522f, -1000f, -506f, 522f)), _wgslsmith_div_u32(~51089u, u_input.b.x)), ~_wgslsmith_div_u32(~u_input.b.x, 4294967295u), u_input.b.x, -2147483647i), u_input.b.x, select(vec4<bool>(!all(vec4<bool>(false, false, false, false)), true != (22543u < u_input.b.x), false, any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true))), vec4<bool>(true, true, true, true), true), ~(~4294967295u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(405f + 310f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-213f - -193f) - 1148f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(549f - 1436f) * _wgslsmith_f_op_f32(420f - -1534f)), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(f32(-1f) * -532f), false))))));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1043f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.e.x, 594f)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e.x, var_0.e.x)))))));
    let var_2 = var_0;
    var_1 = 1445f;
    var var_3 = _wgslsmith_mod_u32(~4294967295u, u_input.b.x);
    return vec3<bool>(all(vec3<bool>(true, true, true)), !all(var_0.c.wzy), false);
}

fn func_1() -> Struct_1 {
    global0 = all(func_2());
    var var_0 = Struct_1(~(~vec3<u32>(firstTrailingBit(4294967295u), ~1u, 33546u)), u_input.b.x, ~select(~func_3(vec4<f32>(-873f, 1342f, -1781f, -3222f)), u_input.b.x, true), -countOneBits(reverseBits(countOneBits(u_input.a))));
    global0 = select(true, select(!any(vec4<bool>(false, true, true, true)), true | (4294967295u > u_input.b.x), true) || false, false);
    let var_1 = Struct_2(Struct_1(vec3<u32>(1u, u_input.b.x, firstTrailingBit(var_0.b) & firstLeadingBit(0u)), (u_input.b.x >> ((u_input.b.x | u_input.b.x) % 32u)) << (abs(~60058u) % 32u), u_input.b.x, var_0.d), 1u, vec4<bool>(func_2().x, false, !all(vec3<bool>(true, true, true)), !select(true, true, true)), _wgslsmith_add_u32(var_0.b, 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-198f, -433f))))));
    return Struct_1(vec3<u32>(firstTrailingBit(_wgslsmith_mod_u32(0u, u_input.b.x) & 4294967295u), ~0u, ~var_1.a.b ^ u_input.b.x), var_1.d, ~873u, (1i >> (var_0.a.x % 32u)) ^ ~(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (~u_input.a <= 1i) & true;
    let var_1 = any(select(!vec3<bool>(true, true, var_0), vec3<bool>(true, true, true), false));
    var var_2 = Struct_2(func_1(), firstTrailingBit(func_1().b), select(vec4<bool>(var_0, ~0u != abs(u_input.b.x), any(vec2<bool>(true, false)), all(func_2().yz)), !(!(!vec4<bool>(var_1, true, true, true))), any(!vec2<bool>(var_1, var_1))), 96386u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1f - -472f), _wgslsmith_f_op_f32(min(-237f, _wgslsmith_f_op_f32(ceil(211f)))))));
    var var_3 = Struct_2(func_1(), 2644u, vec4<bool>(var_2.a.b <= var_2.d, var_2.c.x, func_2().x, true), 27694u, var_2.e);
    let var_4 = !(u_input.a == _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a, var_3.a.d), 39673i)) == true;
    var_3 = Struct_2(Struct_1(~(~_wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(var_3.d, 46640u, var_2.d), vec3<u32>(1u, 4294967295u, var_3.d))), _wgslsmith_mult_u32(var_2.b, var_2.b), 5682u, var_2.a.d), max(56657u, ~select(var_3.d, var_3.b, var_1 || var_4)), select(select(select(select(vec4<bool>(var_3.c.x, true, var_1, var_1), vec4<bool>(var_4, var_2.c.x, false, var_4), var_3.c), var_3.c, true), var_2.c, var_3.c), select(!var_2.c, select(var_3.c, vec4<bool>(true, var_0, false, var_1), !vec4<bool>(false, false, true, var_1)), !var_1), false), firstTrailingBit(~26190u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_3.e.x, var_2.e.x)))))));
    var_2 = Struct_2(func_1(), firstLeadingBit(var_3.b), var_3.c, firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~var_3.b, 0u), 47912u)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.e.x, var_2.e.x)) - -830f), var_2.e.x), var_3.e.x));
    var var_5 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -104f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2007f - var_3.e.x), 267f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.e.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.e.x))))))));
    var var_6 = Struct_1(var_3.a.a, abs(~var_3.b), var_2.a.c, _wgslsmith_add_i32(reverseBits(u_input.a), var_3.a.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.e.x)));
}

