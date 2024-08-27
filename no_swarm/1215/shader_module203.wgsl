struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4, arg_2: i32) -> vec4<u32> {
    return arg_1.b << (vec4<u32>(arg_1.d.b.x, arg_0.b.b.x, _wgslsmith_clamp_u32(arg_1.c.a.x & arg_1.d.b.x, _wgslsmith_mod_u32(29309u, arg_0.b.c.x), ~u_input.b) ^ firstTrailingBit(_wgslsmith_dot_vec3_u32(arg_1.b.ywx, vec3<u32>(arg_0.b.b.x, arg_0.b.c.x, u_input.d.x))), 4294967295u) % vec4<u32>(32u));
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    let var_1 = countOneBits(select(vec3<i32>(45195i, -1i, 1220i) & u_input.c, ~(-u_input.c), true) << (~vec3<u32>(~u_input.a, ~u_input.d.x, _wgslsmith_mod_u32(2762u, u_input.b)) % vec3<u32>(32u)));
    let var_2 = Struct_1(~(~select(~vec4<u32>(u_input.a, u_input.a, 1u, 27471u), ~vec4<u32>(91994u, 0u, u_input.d.x, u_input.d.x), var_1.x <= 48624i)), var_0, ~u_input.b);
    var var_3 = ((var_2.a | (func_2(Struct_3(0u, Struct_2(-380f, var_2.a.zw, u_input.d)), Struct_4(u_input.d, var_2.a, Struct_1(vec4<u32>(var_2.a.x, 0u, var_2.a.x, 19536u), true, var_2.c), Struct_2(-2405f, vec2<u32>(4930u, u_input.b), var_2.a.xy)), 2147483647i) << (~vec4<u32>(4294967295u, 51570u, var_2.a.x, 4294967295u) % vec4<u32>(32u)))) ^ var_2.a) ^ vec4<u32>(4294967295u, ~u_input.b, ~4294967295u, 15816u);
    var_3 = var_2.a;
    return var_2;
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_3(~4294967295u, Struct_2(1325f, vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.b) & u_input.d, u_input.d)), u_input.d));
    var var_1 = vec3<bool>(true, true & any(vec3<bool>(true, all(vec2<bool>(true, true)), true)), 519f <= _wgslsmith_f_op_f32(step(var_0.b.a, var_0.b.a)));
    var var_2 = var_0.b;
    var_2 = var_0.b;
    var_2 = Struct_2(var_2.a, _wgslsmith_mult_vec2_u32(var_0.b.c, u_input.d), vec2<u32>((var_0.b.c.x >> (~1u % 32u)) & 4294967295u, func_2(Struct_3(_wgslsmith_div_u32(4294967295u, var_0.b.b.x), var_0.b), Struct_4(var_0.b.b | var_2.b, ~vec4<u32>(276u, 4294967295u, var_2.b.x, u_input.d.x), func_1(), Struct_2(var_2.a, u_input.d, var_2.b)), u_input.c.x).x));
    return max(var_2.c, _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(~var_0.a, 0u >> (1u % 32u)), 1u), vec2<u32>(var_0.a, abs(var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(41432u);
    let var_1 = Struct_4(u_input.d, ~vec4<u32>(~var_0, 34086u, _wgslsmith_div_u32(14508u, u_input.a), _wgslsmith_div_u32(var_0, 23514u)) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.d.x, u_input.d.x, 1u) & vec4<u32>(u_input.a, var_0, u_input.b, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, var_0, u_input.d.x, 0u), vec4<u32>(26772u, u_input.d.x, 35464u, 0u))), func_1(), Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1338f), -943f, ~var_0 == ~u_input.d.x)), _wgslsmith_clamp_vec2_u32(firstTrailingBit(func_3()), vec2<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1682u, u_input.a, var_0), vec3<u32>(u_input.b, u_input.a, 1u))), ~max(u_input.d, vec2<u32>(98939u, 4294967295u))), u_input.d));
    var var_2 = false;
    let var_3 = var_1;
    let var_4 = ~vec3<i32>(-(abs(2147483647i) | u_input.c.x), abs(_wgslsmith_mult_i32(-1i, u_input.c.x)), u_input.c.x);
    var_2 = any(vec2<bool>(any(!(!vec3<bool>(var_1.c.b, var_1.c.b, var_3.c.b))), var_1.c.b));
    let var_5 = 1u;
    let var_6 = var_3.c.b;
    let var_7 = Struct_1(var_3.c.a, any(select(select(!vec4<bool>(true, true, false, var_3.c.b), !vec4<bool>(true, var_6, false, true), var_6), !select(vec4<bool>(var_6, true, true, false), vec4<bool>(false, var_1.c.b, var_1.c.b, var_1.c.b), vec4<bool>(var_1.c.b, false, var_3.c.b, false)), vec4<bool>(2147483647i > u_input.c.x, true, all(vec2<bool>(true, var_1.c.b)), u_input.a != 1u))), abs(func_2(Struct_3(var_1.d.c.x, var_3.d), var_3, -55230i).x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_1.c.a), _wgslsmith_add_i32(~(~_wgslsmith_add_i32(1i, var_4.x)), u_input.c.x), _wgslsmith_add_u32(~var_1.c.a.x, firstTrailingBit(select(u_input.d.x, 0u, false) >> (_wgslsmith_mult_u32(1u, 1u) % 32u))), vec4<i32>(u_input.c.x, ~firstLeadingBit(var_4.x) ^ var_4.x, _wgslsmith_div_i32(~var_4.x >> (abs(0u) % 32u), 1i), max(var_4.x, ~(-25810i))));
}

