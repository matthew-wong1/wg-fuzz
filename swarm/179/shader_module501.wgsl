struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(abs(-vec4<i32>(u_input.a, -1i, u_input.b.x, u_input.a) >> ((vec4<u32>(0u, u_input.c.x, 45648u, u_input.c.x) << (vec4<u32>(4294967295u, 69100u, 49038u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))), ~((vec4<i32>(1i, 2147483647i, u_input.a, -3228i) | u_input.b) ^ ~vec4<i32>(-40506i, 0i, 0i, u_input.a))), u_input.b);
    var var_1 = 1000f;
    let var_2 = reverseBits(30942i);
    var_1 = _wgslsmith_f_op_f32(max(1152f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1504f))) - arg_1.x)));
    var_0 = firstTrailingBit(u_input.b);
    return true;
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<f32>) -> bool {
    let var_0 = arg_2.x;
    let var_1 = true;
    let var_2 = !(!select(vec2<bool>(var_1, !var_1), vec2<bool>(all(vec2<bool>(false, false)), func_3(true, vec3<f32>(arg_2.x, arg_2.x, var_0))), ~8645u >= u_input.c.x));
    var var_3 = vec3<i32>(-1i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a, u_input.a) & max(-2147483647i, arg_1), ~20366i, _wgslsmith_clamp_i32(u_input.b.x, arg_1, u_input.b.x)), u_input.a), arg_1);
    let var_4 = vec4<bool>(true || !var_2.x, any(!(!select(vec2<bool>(var_1, true), var_2, var_2))), true, var_1);
    return var_4.x;
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    var var_0 = func_2(~abs(u_input.c.wxx), ~_wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.a, arg_0.x), arg_0, false), max(vec2<i32>(-2147483647i, arg_0.x), vec2<i32>(u_input.a, u_input.b.x))) | abs(u_input.b.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1189f, 574f, 1667f) + vec3<f32>(-1072f, 1235f, -608f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-800f, 879f, 1299f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-342f, -286f, -1000f)))))));
    let var_1 = Struct_4(vec3<i32>(i32(-1i) * -2147483647i, u_input.b.x << (~abs(24519u) % 32u), select(-1i, -19854i, false)), 1384f, u_input.c.x, 1u, 0u);
    var_0 = any(vec3<bool>(var_1.d != u_input.c.x, any(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), true)), true));
    let var_2 = var_1.b;
    let var_3 = Struct_3(~reverseBits(4294967295u), select(!select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), false), true), vec4<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)), select(true, true, false) && true, !all(vec3<bool>(true, true, true)), false), vec4<bool>(true, func_2(vec3<u32>(var_1.d, u_input.c.x, var_1.c), 2147483647i, vec3<f32>(-210f, var_1.b, -1580f)) | func_3(false, vec3<f32>(var_2, 887f, var_2)), true, select(-684i, var_1.a.x, true) <= ~arg_0.x)), true, -10063i);
    return max(~1u, var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(u_input.b.zzw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1592f + 496f)) * _wgslsmith_f_op_f32(floor(-851f)))), 18162u, (u_input.c.x >> (~_wgslsmith_sub_u32(u_input.c.x, 0u) % 32u)) >> (1u % 32u), ~func_1(~vec2<i32>(2147483647i, 31329i)));
    var var_1 = Struct_3(~select(~_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), var_0.c, true), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), true, 1i);
    var var_2 = Struct_1(!var_1.b.zyy);
    var var_3 = true;
    var var_4 = select(var_2.a.yz, vec2<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.b.x, var_1.c, var_2.a.x, var_2.a.x), vec4<bool>(false, var_2.a.x, var_2.a.x, false)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1493f)))))), 0i);
}

