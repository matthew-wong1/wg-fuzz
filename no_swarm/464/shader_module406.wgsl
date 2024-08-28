struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(251f)))), 383f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(197f, 289f))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(1836f)), -402f, _wgslsmith_f_op_f32(f32(-1f) * -1035f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-692f * 782f)))));
    var var_1 = ~u_input.b >> ((u_input.b << (u_input.d % 32u)) % 32u);
    let var_2 = u_input.a.x;
    var var_3 = 1u;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), _wgslsmith_f_op_f32(483f * var_0.x), -202f, var_0.x) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -369f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -304f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(761f, var_0.x, var_0.x, var_0.x) + vec4<f32>(var_0.x, 1144f, 830f, var_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x)), -154f))));
    return abs(~(~_wgslsmith_dot_vec2_u32(min(vec2<u32>(72514u, u_input.b), vec2<u32>(u_input.b, u_input.d)), ~vec2<u32>(u_input.b, 3853u))));
}

fn func_2(arg_0: vec2<i32>) -> vec4<u32> {
    let var_0 = 45722u;
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_div_i32(~(-13350i) << (select(func_3(), u_input.b, all(vec2<bool>(true, false))) % 32u), -97i), ~arg_0.x);
    var var_2 = vec2<bool>(true, !(var_0 >= u_input.d));
    let var_3 = 579f;
    let var_4 = Struct_1(~vec4<i32>(countOneBits(min(13242i, var_1)), arg_0.x, -(2147483647i >> (var_0 % 32u)), -1i), 0i, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_3, 984f, var_3)), vec4<f32>(-230f, var_3, -1503f, 1153f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3, _wgslsmith_div_f32(876f, -1204f), -740f, var_3))))));
    return select(vec4<u32>(~(~(17393u ^ var_0)), var_0 & ~(~1u), ~13207u, 4294967295u), vec4<u32>(func_3(), ~14619u ^ (13842u ^ var_0), 29695u, ~_wgslsmith_div_u32(4294967295u, var_0) ^ u_input.b), any(select(!(!vec2<bool>(var_2.x, false)), vec2<bool>(true, true), vec2<bool>(!var_2.x, true))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.d, u_input.b) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 9171u, u_input.b), vec4<u32>(u_input.b, 50097u, u_input.d, u_input.d)) % vec4<u32>(32u)), func_2(~vec2<i32>(u_input.a.x, -40305i))));
    var_0 = 0u;
    return Struct_2(Struct_1(max(u_input.a | -u_input.c, u_input.a), u_input.a.x << (u_input.d % 32u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-429f, -2131f, 614f, -985f), vec4<f32>(-270f, 904f, -406f, -1930f)))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))), Struct_1(~reverseBits(min(vec4<i32>(u_input.e.x, u_input.c.x, u_input.a.x, 111485i), vec4<i32>(-90835i, 1i, u_input.c.x, 0i))), min(countOneBits(32869i), countOneBits(abs(u_input.a.x))), vec4<f32>(1f, 1f, 1f, 1f)));
}

fn func_4(arg_0: Struct_2) -> bool {
    return all(vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, true), u_input.b != u_input.d)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x != 9509i;
    var var_1 = select(select(select(select(select(vec3<bool>(true, var_0, var_0), vec3<bool>(true, var_0, true), vec3<bool>(true, false, var_0)), select(vec3<bool>(var_0, var_0, false), vec3<bool>(true, var_0, true), vec3<bool>(var_0, var_0, var_0)), vec3<bool>(true, var_0, false)), vec3<bool>(var_0, var_0, var_0 || var_0), true), !(!(!vec3<bool>(var_0, true, var_0))), vec3<bool>(true, !select(var_0, false, true), any(vec3<bool>(true, var_0, var_0)))), vec3<bool>(var_0, true, false), func_4(func_1(!vec2<bool>(var_0, var_0))));
    var_1 = vec3<bool>(true, true, true);
    var_1 = !(!vec3<bool>(var_1.x, (u_input.b | u_input.b) < _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.d), vec2<u32>(4294967295u, u_input.d)), func_4(Struct_2(Struct_1(vec4<i32>(2147483647i, u_input.e.x, u_input.c.x, u_input.c.x), 1i, vec4<f32>(202f, 1069f, -446f, 876f)), vec2<f32>(376f, -316f), Struct_1(u_input.a, u_input.a.x, vec4<f32>(1366f, -839f, -454f, -2233f))))));
    let var_2 = func_1(var_1.yx);
    var var_3 = 29030u;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.a.ww, _wgslsmith_mult_u32(~(~u_input.b), 4294967295u));
}

