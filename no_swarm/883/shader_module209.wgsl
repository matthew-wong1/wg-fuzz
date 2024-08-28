struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: Struct_2,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: bool) -> vec3<f32> {
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1000f)), -368f)))) * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1628f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1347f, -169f)) * 1f)) * -1291f));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_1 {
    return arg_1.a;
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = func_3(vec4<i32>(-1i) * -u_input.c, Struct_2(Struct_1(vec3<bool>(true, true, true), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-367f, -1846f, 481f)) * _wgslsmith_f_op_vec3_f32(func_2(true))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-791f, -1000f, -1000f))), u_input.c));
    let var_1 = Struct_2(func_3(vec4<i32>(~u_input.d << (arg_0 % 32u), -_wgslsmith_sub_i32(-1i, u_input.d), u_input.d, firstTrailingBit(-42396i) | -1i), Struct_2(func_3(_wgslsmith_clamp_vec4_i32(u_input.c, u_input.c, u_input.c), Struct_2(var_0, vec3<f32>(356f, 321f, -873f), u_input.c)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -741f), -815f, _wgslsmith_div_f32(1818f, -155f)), select(u_input.c, u_input.c ^ u_input.c, select(vec4<bool>(false, var_0.a.x, true, false), vec4<bool>(true, var_0.a.x, true, false), vec4<bool>(var_0.a.x, false, var_0.b, var_0.a.x))))), vec3<f32>(1f, 1f, 1f), countOneBits(u_input.c));
    var var_2 = select(!vec4<bool>(!var_0.b, var_0.b, true, true), !select(vec4<bool>(var_0.b, true, u_input.b == var_1.c.x, !var_1.a.a.x), select(vec4<bool>(true, true, false, true), select(vec4<bool>(var_1.a.b, false, var_1.a.b, true), vec4<bool>(true, var_0.a.x, true, true), true), !vec4<bool>(var_0.a.x, false, false, true)), !(!vec4<bool>(var_1.a.b, var_0.a.x, var_1.a.b, false))), _wgslsmith_dot_vec3_i32(abs(countOneBits(u_input.c.xzy)), vec3<i32>(reverseBits(var_1.c.x), var_1.c.x, 19172i)) < -38693i);
    var_2 = !(!(!(!(!vec4<bool>(true, false, true, var_1.a.b)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1064f + 314f)), _wgslsmith_f_op_f32(abs(207f)), 1252f, -327f) - vec4<f32>(548f, 218f, _wgslsmith_f_op_f32(-1330f + -1149f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-237f, 907f))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec3<bool>(false, true | any(vec3<bool>(false, false, false)), any(vec2<bool>(true, true))), vec3<bool>(false, func_1(43264u) != true, any(vec4<bool>(true, true, true, true))), true), !any(func_3(vec4<i32>(u_input.b, 0i, -1i, 0i), Struct_2(Struct_1(vec3<bool>(false, true, true), false), vec3<f32>(456f, -592f, 1277f), u_input.c)).a.xx));
    var var_1 = _wgslsmith_div_u32(1560u, ~1u) ^ ~max(~1u, ~1u ^ firstTrailingBit(1u));
    var var_2 = !(!var_0.a.x);
    var_1 = 5317u;
    let var_3 = select(!select(!(!vec4<bool>(var_0.a.x, var_0.b, var_0.b, false)), select(!vec4<bool>(var_0.a.x, var_0.b, true, true), select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(true, var_0.b, var_0.b, true), true), vec4<bool>(true, true, true, true)), false), !(!vec4<bool>(true, false, var_0.b, all(var_0.a.xz))), vec4<bool>(false, func_3(~select(u_input.c, u_input.c, vec4<bool>(true, var_0.a.x, true, var_0.a.x)), Struct_2(func_3(vec4<i32>(u_input.c.x, 2147483647i, 63520i, u_input.d), Struct_2(Struct_1(vec3<bool>(true, var_0.a.x, false), var_0.a.x), vec3<f32>(2329f, 611f, 1469f), u_input.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(175f, -181f, 832f) + vec3<f32>(-2282f, -379f, 355f)), vec4<i32>(u_input.d, u_input.d, 35000i, u_input.b))).a.x, true, var_0.a.x));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec3_f32(func_2(any(vec3<bool>(var_3.x, true, false)))).x, _wgslsmith_f_op_vec3_f32(func_2(true)).x, _wgslsmith_f_op_f32(step(-669f, -335f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(238f - -896f), _wgslsmith_f_op_f32(f32(-1f) * -1109f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(1747f, 2660f)), _wgslsmith_f_op_f32(select(327f, 2130f, false)), 338f, _wgslsmith_f_op_f32(max(899f, -470f))))));
    let var_5 = (_wgslsmith_sub_u32(select(_wgslsmith_dot_vec2_u32(vec2<u32>(28370u, 51878u), vec2<u32>(10087u, 1u)), 43866u, var_0.a.x), ~1u) > firstLeadingBit(~_wgslsmith_mod_u32(1u, 12806u))) || !all(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_4.wz + var_4.ww), 1u, ~12222u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_4.x, 906f, 796f, var_4.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, var_4.x, var_4.x, -149f)))))), max(select(13055i, countOneBits(select(u_input.a, -2147483647i, var_3.x)), false), -u_input.d));
}

