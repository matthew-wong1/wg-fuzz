struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>) -> bool {
    var var_0 = vec4<f32>(1000f, _wgslsmith_f_op_f32(max(1000f, 459f)), _wgslsmith_f_op_f32(f32(-1f) * -1186f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(-1f))));
    var var_1 = vec4<bool>(true, _wgslsmith_mult_i32(2147483647i >> (0u % 32u), u_input.a.x) == ~0i, -1991f == var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -u_input.a, abs(vec3<i32>(-20005i, 7081i, u_input.a.x))) >= firstLeadingBit(u_input.a.x));
    var var_2 = arg_0;
    let var_3 = true != !all(!vec3<bool>(var_1.x, var_2.a.c, false));
    let var_4 = all(arg_1.xx);
    return !var_2.a.a && arg_0.a.c;
}

fn func_2() -> f32 {
    var var_0 = u_input.a.x;
    var_0 = _wgslsmith_clamp_i32(13408i, u_input.a.x, -(~(-1i)));
    var var_1 = _wgslsmith_div_vec3_u32(~select(u_input.b, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 54640u), u_input.b), select(false, func_3(Struct_3(Struct_1(false, false, true)), vec4<bool>(false, false, false, false)), u_input.b.x != 1u)), ~(~vec3<u32>(u_input.b.x << (u_input.b.x % 32u), ~42012u, reverseBits(0u))));
    var var_2 = abs(var_1.x);
    var var_3 = 322f;
    return -357f;
}

fn func_1() -> Struct_2 {
    var var_0 = -1198f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(649f - 1490f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-871f + -968f) - -639f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(583f + 1000f))));
    var_0 = -339f;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(549f))) + -685f) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2()))), true, true);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-714f, -539f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-926f + -485f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -536f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-161f - -1145f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(630f + 1252f), _wgslsmith_f_op_f32(select(628f, 830f, var_1.b)))))));
    return Struct_2(vec4<u32>(~u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~(~max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 0u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, 74051u, u_input.b.x, 51405u), vec4<u32>(0u, u_input.b.x, u_input.b.x, 37984u)))));
    var_0 = func_1();
    var var_1 = 1u;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-856f, -133f))) * _wgslsmith_f_op_f32(func_2())), 286f, -1164f, 1823f);
    var_0 = Struct_2(vec4<u32>(select(~17601u, 0u, !all(vec2<bool>(false, false))), _wgslsmith_clamp_u32(abs(var_0.a.x), ~var_0.a.x, countOneBits(var_0.a.x)), 0u, firstLeadingBit(select(4294967295u, ~u_input.b.x, true))));
    var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(1869f - -650f), 1000f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-148f * var_2.x) * _wgslsmith_f_op_f32(f32(-1f) * -2110f)), 781f, var_2.x, var_2.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_2.yz))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -174f), _wgslsmith_f_op_f32(-var_2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~abs(min(vec4<i32>(u_input.a.x, u_input.a.x, -19468i, 13144i), vec4<i32>(25396i, 19547i, u_input.a.x, -1i)))), vec2<i32>(-21777i, u_input.a.x), -u_input.a.x);
}

