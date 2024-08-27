struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>) -> u32 {
    return arg_0.a.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> vec4<u32> {
    let var_0 = arg_0.x ^ -1i;
    let var_1 = Struct_1(~vec2<u32>(func_3(arg_1, select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), abs(arg_0)), 39833u));
    let var_2 = arg_1.a.x;
    let var_3 = var_1;
    var var_4 = var_1;
    return ~vec4<u32>(var_2, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_4.a.x, 51046u, var_1.a.x, var_1.a.x) ^ vec4<u32>(1059u, var_1.a.x, var_2, var_4.a.x), abs(vec4<u32>(var_1.a.x, 1u, var_4.a.x, arg_1.a.x)))), var_3.a.x, 4294967295u);
}

fn func_1() -> StorageBuffer {
    let var_0 = true;
    let var_1 = vec4<u32>(4294967295u, ~_wgslsmith_clamp_u32(0u, _wgslsmith_mod_u32(50350u, 31001u), firstTrailingBit(9582u)), (_wgslsmith_dot_vec3_u32(vec3<u32>(4125u, 79207u, 93324u), vec3<u32>(0u, 32665u, 29495u)) | abs(0u)) << (abs(reverseBits(0u)) % 32u), reverseBits(~(~37588u))) ^ func_2(min(vec2<i32>(~u_input.a, u_input.a), vec2<i32>(_wgslsmith_clamp_i32(38956i, 10000i, -1i), u_input.a)), Struct_1(vec2<u32>(1u, abs(4294967295u))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a, u_input.a), -2147483647i | u_input.a) | -(~u_input.a));
    var var_2 = reverseBits(~(~select(-vec3<i32>(u_input.a, 0i, 1i), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<bool>(false, var_0, var_0))));
    let var_3 = Struct_1(vec2<u32>(var_1.x, max(63312u, 3378u | _wgslsmith_div_u32(1u, var_1.x))));
    var_2 = max(vec3<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, var_2.x, -10219i) << (vec3<u32>(4294967295u, var_1.x, 26331u) % vec3<u32>(32u)), vec3<i32>(-27865i, 1209i, 0i), vec3<bool>(true, true, true)), -(vec3<i32>(-19806i, -4719i, 1i) & vec3<i32>(0i, var_2.x, u_input.a))), _wgslsmith_mod_i32(u_input.a, var_2.x), 2147483647i), _wgslsmith_sub_vec3_i32(~vec3<i32>(var_2.x & u_input.a, -26942i, u_input.a), ~vec3<i32>(~3202i, var_2.x << (1u % 32u), ~var_2.x)));
    return StorageBuffer(min(vec4<i32>(~6392i, ~(-2147483647i), u_input.a, 2147483647i), vec4<i32>(-u_input.a, 1i, _wgslsmith_sub_i32(0i, u_input.a), ~(-2147483647i)) >> (vec4<u32>(~0u, 1u, ~var_3.a.x, var_3.a.x) % vec4<u32>(32u))), var_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1436f, -673f)))), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = false;
    let var_1 = ~(~1u) | ~select(87314u, ~1u, true);
    let var_2 = -((max(abs(vec3<i32>(2147483647i, -6794i, u_input.a)), -vec3<i32>(0i, u_input.a, u_input.a)) | min(_wgslsmith_sub_vec3_i32(vec3<i32>(51063i, u_input.a, u_input.a), vec3<i32>(2147483647i, 1i, u_input.a)), ~vec3<i32>(-19692i, -2147483647i, u_input.a))) | ~(-(vec3<i32>(u_input.a, -2147483647i, 0i) ^ vec3<i32>(1i, -9499i, -2147483647i))));
    var var_3 = Struct_1(_wgslsmith_add_vec2_u32(~(~(vec2<u32>(var_1, 23672u) & vec2<u32>(var_1, 90172u))), _wgslsmith_add_vec2_u32(vec2<u32>(22142u, ~4294967295u), ~vec2<u32>(var_1, 1u))));
    let x = u_input.a;
    s_output = func_1();
}

