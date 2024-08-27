struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: f32) -> i32 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_sub_vec3_u32(~(~vec3<u32>(4294967295u, 0u, u_input.a)), firstTrailingBit(vec3<u32>(u_input.a, u_input.a, ~u_input.a))) | (max(~_wgslsmith_clamp_vec3_u32(vec3<u32>(8788u, 83107u, u_input.a), vec3<u32>(45100u, u_input.a, u_input.a), vec3<u32>(u_input.a, 29573u, u_input.a)), min(reverseBits(vec3<u32>(4294967295u, 0u, u_input.a)), vec3<u32>(0u, u_input.a, u_input.a))) ^ (min(abs(vec3<u32>(u_input.a, u_input.a, 39213u)), abs(vec3<u32>(u_input.a, 0u, u_input.a))) ^ ~select(vec3<u32>(0u, 58012u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), true)));
    var var_2 = Struct_1(vec3<bool>(all(vec2<bool>(true, true)), arg_0.a.x, var_0.a.x), arg_1.b);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(ceil(-1598f))));
    var_1 = vec3<u32>(~u_input.a, ~78173u, ~var_1.x);
    return -41415i;
}

fn func_2() -> bool {
    let var_0 = ~_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-61216i, countOneBits(2147483647i), func_3(Struct_1(vec3<bool>(true, true, false), vec3<i32>(1i, 0i, 2147483647i)), Struct_1(vec3<bool>(true, false, true), vec3<i32>(1i, 1i, 0i)), vec4<f32>(-681f, 2095f, 339f, -1000f), 137f)), _wgslsmith_add_i32(-54014i, 2147483647i)), -select(-vec2<i32>(0i, -58400i), select(vec2<i32>(-37049i, -51433i), vec2<i32>(8928i, 1i), vec2<bool>(true, false)), vec2<bool>(true, true)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-431f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -501f), _wgslsmith_f_op_f32(select(-511f, -137f, false)))))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-165f, -774f))));
    let var_2 = firstTrailingBit(_wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(0u, u_input.a, u_input.a, 62666u)), min(~vec4<u32>(23241u, 33308u, 1u, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)))) | vec4<u32>(u_input.a, ~(~(~u_input.a)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(65276u, 84090u, 0u), ~vec3<u32>(u_input.a, 60084u, 4272u)), _wgslsmith_mod_u32(1u, ~(~17277u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(select(var_1, var_1, false)), -733f, _wgslsmith_f_op_f32(round(var_1)), _wgslsmith_f_op_f32(-1000f * -353f))))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(1526f, _wgslsmith_f_op_f32(step(var_1, -815f))), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1, 867f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1208f))))));
    let var_4 = var_2.wwy;
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(!vec3<bool>(func_2(), _wgslsmith_f_op_f32(min(819f, -1000f)) >= _wgslsmith_f_op_f32(step(-1000f, -1090f)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)))), vec3<i32>(1i, (-22721i << (firstTrailingBit(u_input.a) % 32u)) << (~(~u_input.a) % 32u), 1i));
    var var_1 = select(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.a, 64144u, u_input.a)) | ~vec3<u32>(41582u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, firstLeadingBit(52867u), 4294967295u)), select(_wgslsmith_add_vec3_u32(abs(~vec3<u32>(u_input.a, 17987u, 6435u)), ~vec3<u32>(5353u, 1u, 21853u) << (~vec3<u32>(109747u, u_input.a, u_input.a) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(~vec3<u32>(52260u, u_input.a, u_input.a), firstTrailingBit(vec3<u32>(u_input.a, 75525u, 9424u))), var_0.a.x), var_0.a.x);
    var var_2 = true;
    var_2 = !all(var_0.a.zy);
    var var_3 = Struct_1(var_0.a, -(~select(~var_0.b, select(var_0.b, vec3<i32>(var_0.b.x, var_0.b.x, var_0.b.x), var_0.a.x), var_0.a)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(2147483647i, ~(-2147483647i), ~(-4337i));
    let var_1 = ~var_0.x;
    var var_2 = Struct_1(vec3<bool>(true, true, true), -(vec3<i32>(_wgslsmith_dot_vec3_i32(var_0, var_0), var_0.x, var_0.x) ^ countOneBits(vec3<i32>(44456i, var_1, var_0.x))));
    let var_3 = func_1();
    var_2 = var_3;
    var_2 = Struct_1(var_2.a, var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(func_1().b.xz, -firstTrailingBit(_wgslsmith_sub_vec3_i32(-var_0, vec3<i32>(15677i, var_2.b.x, var_3.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(831f, -800f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-617f)))), _wgslsmith_dot_vec3_u32(max(vec3<u32>(1u, u_input.a, u_input.a), abs(vec3<u32>(19666u, 0u, u_input.a))) >> (countOneBits(~vec3<u32>(128606u, u_input.a, u_input.a)) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, ~u_input.a, 0u)));
}

