struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(i32(-1i) * -(~u_input.c.x), false, _wgslsmith_mult_i32(-7782i & u_input.c.x, _wgslsmith_mod_i32(-u_input.c.x, -u_input.c.x)) < ~u_input.a.x);
    var_0 = Struct_1(~(_wgslsmith_mod_i32(max(-28941i, var_0.a), -u_input.a.x) ^ -52145i), select(true, !var_0.b, !var_0.b), 49881u <= u_input.b);
    let var_1 = Struct_2(Struct_1(-58231i, false, false || !all(vec4<bool>(var_0.b, var_0.b, true, var_0.b))));
    let var_2 = 11845u;
    var var_3 = var_1.a;
    return 4294967295u;
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = ~_wgslsmith_mod_vec4_u32(min(firstTrailingBit(abs(vec4<u32>(1u, 1u, u_input.b, 49334u))), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) | countOneBits(vec4<u32>(0u, u_input.b, u_input.b, u_input.b))), vec4<u32>(u_input.b, u_input.b, 1u, ~u_input.b));
    let var_1 = Struct_1(-(~(-30905i)), !arg_0, u_input.c.x <= ~u_input.c.x);
    return select(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(23994i, 40684i, var_1.a), u_input.c)) & _wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.c.x, u_input.c.x, u_input.a.x) >> (vec3<u32>(0u, u_input.b, u_input.b) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.c.x, u_input.c.x), vec3<i32>(-31966i, 0i, var_1.a)), u_input.c)), min(1i, u_input.a.x) & countOneBits(1i), any(!(!(!vec3<bool>(arg_0, var_1.b, arg_0)))));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: f32) -> Struct_2 {
    let var_0 = vec2<u32>(func_2(), 4294967295u);
    return Struct_2(Struct_1(~(func_3(arg_1.x) & ~u_input.c.x), !arg_1.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(u_input.c.x);
    let var_1 = vec2<bool>(true, _wgslsmith_add_u32(~4294967295u, u_input.b) <= u_input.b);
    let var_2 = ~(~_wgslsmith_div_vec4_i32(vec4<i32>(abs(35109i), min(0i, var_0), -1i, 0i), vec4<i32>(var_0, 35397i, 13636i, u_input.a.x) & vec4<i32>(u_input.a.x, var_0, -12469i, 50519i)));
    let var_3 = func_1(4294967295u, !vec4<bool>(false, false, true, var_1.x), -1355f);
    var var_4 = 33752u;
    let var_5 = Struct_4(var_3, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1082f)))), Struct_2(Struct_1(var_2.x, !func_1(1u, vec4<bool>(true, false, true, true), 1117f).a.b, !all(vec4<bool>(var_1.x, false, true, true)))));
    var var_6 = vec3<u32>(u_input.b, 1u, _wgslsmith_div_u32(~_wgslsmith_div_u32(1u << (u_input.b % 32u), u_input.b), u_input.b));
    var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(-21652i);
}

