struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    var var_0 = u_input.b;
    var_0 = ~7692i;
    var var_1 = Struct_2(arg_1.a.a, Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~u_input.a, _wgslsmith_mult_vec4_u32(arg_0.a, vec4<u32>(arg_1.a.b.a.x, u_input.a.x, 101970u, u_input.a.x))), ~(~vec4<u32>(10469u, arg_1.a.b.a.x, arg_1.b.a.x, arg_1.a.a.a.x)))));
    var_1 = Struct_2(arg_0, Struct_1(arg_1.b.a));
    var var_2 = Struct_2(var_1.a, arg_1.a.b);
    return 47747u;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_1(vec4<u32>(reverseBits(func_3(Struct_1(u_input.a), Struct_3(Struct_2(Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_2.x)), Struct_1(vec4<u32>(41307u, arg_2.x, arg_2.x, u_input.a.x))), Struct_1(arg_2)))), ~_wgslsmith_dot_vec3_u32(u_input.a.xyx, _wgslsmith_add_vec3_u32(vec3<u32>(1336u, u_input.a.x, 16063u), u_input.a.xxz)), 4294967295u, ~u_input.a.x));
    var var_1 = Struct_2(Struct_1(min(vec4<u32>(var_0.a.x >> (u_input.a.x % 32u), arg_2.x, ~0u, max(24409u, 0u)), vec4<u32>(~var_0.a.x, ~4294967295u, _wgslsmith_div_u32(u_input.a.x, 18588u), ~arg_2.x))), Struct_1(select(arg_2, ~countOneBits(vec4<u32>(arg_2.x, var_0.a.x, var_0.a.x, 14145u)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), select(true, false, true)))));
    let var_2 = var_0.a.x;
    var var_3 = Struct_2(Struct_1(firstLeadingBit(var_1.a.a)), var_0);
    let var_4 = Struct_2(var_1.b, Struct_1(min(var_1.a.a, var_3.a.a)));
    return Struct_2(var_1.b, var_1.b);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: i32) -> u32 {
    let var_0 = abs(u_input.b) >> (~(~(u_input.a.x | _wgslsmith_mod_u32(arg_0, u_input.a.x))) % 32u);
    let var_1 = func_2(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(firstLeadingBit(~vec2<i32>(29983i, u_input.b)), -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, var_0), vec2<i32>(u_input.b, var_0))), vec2<i32>(-(~u_input.b), arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1659f - -1175f) - 117f), u_input.a);
    var var_2 = -1i;
    var_2 = 44376i;
    let var_3 = vec2<bool>(!(arg_2 | true), !any(select(!vec4<bool>(true, false, arg_2, true), !vec4<bool>(arg_2, true, false, arg_2), arg_2)));
    return reverseBits(firstTrailingBit(firstLeadingBit(30038u | u_input.a.x))) << (countOneBits(~4994u ^ _wgslsmith_add_u32(25226u, _wgslsmith_add_u32(arg_1, arg_0))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(Struct_1(~reverseBits(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x))), Struct_1(vec4<u32>(1u, 75786u ^ u_input.a.x, 4294967295u, func_1(u_input.a.x, 50822u, false, u_input.b)))), Struct_1(u_input.a));
    var_0 = Struct_3(var_0.a, func_2(1i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1623f)))), ~vec4<u32>(_wgslsmith_mult_u32(1u, u_input.a.x), func_3(Struct_1(var_0.a.a.a), Struct_3(var_0.a, var_0.a.a)), ~0u, countOneBits(14170u))).a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~17105u), -_wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.b, 61435i, 14970i), -2147483647i ^ u_input.b), u_input.b), ~select(_wgslsmith_mult_vec2_u32(select(u_input.a.yz, vec2<u32>(0u, var_0.b.a.x), true), vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(var_0.a.b.a.x, 4294967295u)), ~var_0.b.a.xw), any(vec2<bool>(true, false))), -_wgslsmith_div_vec3_i32(~(vec3<i32>(-2147483647i, u_input.b, 2981i) << (vec3<u32>(var_0.a.a.a.x, 4294967295u, var_0.b.a.x) % vec3<u32>(32u))), ~select(vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<i32>(u_input.b, u_input.b, -2147483647i), true)));
}

