struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = abs(vec4<u32>(firstTrailingBit(4294967295u) | 4294967295u, 16821u, 43581u, (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 54533u), arg_1.xz) << ((arg_0.a.x | 4294967295u) % 32u)) << (~(~4294967295u) % 32u)));
    let var_1 = true;
    global0 = max(~_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1.x, arg_0.a.x, global0.x, 1u) | (var_0 & vec4<u32>(global0.x, 0u, global0.x, 6954u)), vec4<u32>(u_input.c, 2161u & var_0.x, global0.x, global0.x)), vec4<u32>(4294967295u, abs(u_input.c), arg_0.a.x, select(53111u << (~global0.x % 32u), arg_0.a.x, arg_2.a.x)));
    let var_2 = Struct_3(var_0, vec2<bool>(var_1, true));
    var var_3 = Struct_3(~vec4<u32>(global0.x, arg_1.x, u_input.c >> (50392u % 32u), 64624u) | var_2.a, vec2<bool>(true, !all(!vec3<bool>(true, arg_0.b.x, true))));
    return vec4<u32>(select(~(~1u), 0u, !(arg_2.a.x & true) | arg_2.a.x), ~4294967295u, ~_wgslsmith_div_u32(_wgslsmith_div_u32(23791u, u_input.c), ~(~1u)), _wgslsmith_mod_u32(1u, abs(_wgslsmith_sub_u32(var_0.x, arg_0.a.x))) << (~global0.x % 32u));
}

fn func_2() -> bool {
    global0 = ~(~min(~firstLeadingBit(vec4<u32>(4294967295u, 23421u, 9542u, u_input.c)), ~vec4<u32>(u_input.c, u_input.c, 98318u, 15412u) & func_3(Struct_3(vec4<u32>(global0.x, 42386u, u_input.c, 49310u), vec2<bool>(true, false)), vec4<u32>(u_input.c, u_input.c, 0u, 90886u), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, false)))));
    var var_0 = global0.zzw;
    global0 = firstTrailingBit(vec4<u32>(0u, 4294967295u, _wgslsmith_mult_u32(~_wgslsmith_add_u32(1u, var_0.x), global0.x), countOneBits(u_input.c)));
    var var_1 = abs(max(-2147483647i, 1i));
    let var_2 = Struct_1(firstLeadingBit(firstTrailingBit(vec4<i32>(u_input.b, ~1i, u_input.a.x & u_input.a.x, -u_input.a.x))), _wgslsmith_add_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(3666i, 2147483647i, u_input.a.x, u_input.b), vec4<i32>(u_input.a.x, -1088i, u_input.a.x, u_input.a.x))) | (_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b), u_input.a) | u_input.a), ~u_input.a), abs(u_input.a.wyz), u_input.b);
    return !all(select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), vec2<bool>(true, true)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<bool>) -> u32 {
    global0 = _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, global0.x, u_input.c, 0u), _wgslsmith_add_vec4_u32(~((vec4<u32>(64682u, global0.x, u_input.c, u_input.c) ^ vec4<u32>(50428u, 44941u, 4294967295u, u_input.c)) | ~vec4<u32>(24523u, global0.x, 97465u, global0.x)), countOneBits(firstLeadingBit(vec4<u32>(0u, 2802u, 4294967295u, 0u) << (vec4<u32>(u_input.c, 1u, global0.x, 4294967295u) % vec4<u32>(32u))))));
    var var_0 = vec3<i32>(-u_input.b, u_input.b, _wgslsmith_mult_i32(u_input.b, 378i));
    var var_1 = u_input.a;
    var var_2 = select(abs(arg_1.a), u_input.a, select(!(!select(vec4<bool>(arg_2.a.x, arg_3.x, arg_2.a.x, true), vec4<bool>(arg_2.a.x, arg_2.a.x, false, arg_2.a.x), true)), vec4<bool>(arg_2.a.x, !arg_3.x, true, arg_3.x), vec4<bool>(~26640u == _wgslsmith_div_u32(u_input.c, u_input.c), -620f >= _wgslsmith_div_f32(arg_0.x, 1034f), !func_2(), all(arg_2.a))));
    let var_3 = firstTrailingBit(global0.zyx);
    return ~(~(39577u >> (var_3.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_u32(abs(vec4<u32>(~global0.x, u_input.c, _wgslsmith_sub_u32(func_1(vec2<f32>(-1000f, -1206f), Struct_1(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, u_input.b), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), -55701i), Struct_2(vec2<bool>(true, true)), vec3<bool>(false, false, false)), firstLeadingBit(global0.x)), _wgslsmith_mult_u32(~34477u, ~global0.x))), ~(~(~(~vec4<u32>(0u, 16105u, 4294967295u, u_input.c)))));
    var var_1 = _wgslsmith_div_f32(249f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(428f + _wgslsmith_f_op_f32(trunc(-1525f))) - _wgslsmith_f_op_f32(f32(-1f) * -1383f)));
    var_1 = -1000f;
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1637f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1143f + -1487f), _wgslsmith_f_op_f32(min(-833f, -1000f))), 130f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -206f), 862f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(global0.ww, vec2<u32>(global0.x | u_input.c, var_0.x)) << (vec2<u32>(u_input.c, ~u_input.c) % vec2<u32>(32u)));
}

