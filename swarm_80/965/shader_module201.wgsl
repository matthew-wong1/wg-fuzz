struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32) -> vec4<i32> {
    var var_0 = select(arg_0.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, 30017u, u_input.b.x, u_input.b.x)), ~u_input.b), ~u_input.b.x) != u_input.c.x, true);
    var_0 = !select(all(vec4<bool>(true, true, true, true)), arg_0.x, (-39175i >> (firstTrailingBit(u_input.b.x) % 32u)) == 2147483647i);
    let var_1 = true;
    let var_2 = arg_0;
    var var_3 = Struct_1(u_input.e);
    return -u_input.e;
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<i32>(26031i << (u_input.c.x % 32u), u_input.a >> (98578u % 32u), _wgslsmith_mult_i32(~(2147483647i >> (~u_input.b.x % 32u)), _wgslsmith_dot_vec4_i32(-func_3(vec4<bool>(true, false, false, false), -1698f), select(min(vec4<i32>(u_input.a, u_input.a, 19989i, -1i), vec4<i32>(-2147483647i, -1i, u_input.e.x, u_input.a)), firstLeadingBit(u_input.e), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true))))));
    var var_1 = Struct_2(u_input.d, 293f);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(select(-1192f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_1.b)), _wgslsmith_f_op_f32(abs(var_1.b))))), all(vec2<bool>(false, var_1.b != var_1.b)))), -431f, var_1.b, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1884f * _wgslsmith_f_op_f32(abs(var_1.b))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, 382f) + var_1.b)))));
    var_0 = ~vec3<i32>(func_3(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false), var_2.x).x, firstTrailingBit(u_input.a), 1i ^ _wgslsmith_sub_i32(16124i, var_0.x)) >> ((vec3<u32>(4294967295u, ~u_input.b.x, ~u_input.c.x) ^ firstTrailingBit(vec3<u32>(~0u, ~0u, ~0u))) % vec3<u32>(32u));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_div_f32(-3377f, -498f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1456f + -515f))), _wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -865f));
    return Struct_2(u_input.d, 1000f);
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = u_input.e.xw;
    var var_1 = u_input.e.zy;
    var var_2 = func_2();
    var_1 = ~vec2<i32>(-var_0.x, max(_wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.e), ~u_input.e), var_2.a));
    var var_3 = ~_wgslsmith_mod_u32(0u, 4294967295u);
    return Struct_1(u_input.e);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = func_1(!select(all(!vec2<bool>(false, arg_2)), any(vec2<bool>(arg_2, true)), !arg_2));
    return _wgslsmith_f_op_f32(289f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-711f))) + _wgslsmith_div_f32(func_2().b, _wgslsmith_f_op_f32(trunc(-702f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(304f * -569f), -1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(1i == (u_input.e.x >> (u_input.c.x % 32u))), true, true, Struct_1(~(vec4<i32>(11997i, u_input.d, -33216i, -2147483647i) | vec4<i32>(0i, u_input.e.x, -1i, -1i))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-277f + 601f)))));
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 1238f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1891f), -133f), var_0) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -557f, -523f)), vec3<f32>(-979f, var_0, -946f)))));
    var var_3 = Struct_1(select(u_input.e, func_1(true).a, true));
    let var_4 = 43226u ^ (select(~_wgslsmith_dot_vec3_u32(u_input.b.zzw, u_input.b.xwx), ~_wgslsmith_clamp_u32(13457u, 1u, u_input.b.x), false) << (~abs(1u) % 32u));
    var var_5 = func_2();
    var var_6 = ~vec2<u32>(0u, var_4);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, 21091u, func_1(!any(select(vec2<bool>(true, true), vec2<bool>(false, false), true))).a.zzw);
}

