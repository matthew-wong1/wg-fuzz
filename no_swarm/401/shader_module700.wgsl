struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = u_input.a;
    return vec4<bool>(true, false, !arg_0.b, !(!(1u <= arg_0.a)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: f32) -> vec3<u32> {
    var var_0 = _wgslsmith_add_i32(u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(0i, 0i, u_input.a.x ^ u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(1i, u_input.a.x, u_input.a.x, 1i)), vec4<i32>(u_input.a.x << (117369u % 32u), u_input.a.x, _wgslsmith_mod_i32(1i, -1i), u_input.a.x | 0i))));
    var var_1 = firstTrailingBit(~_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0, 1u, arg_0), vec3<u32>(4294967295u, 33871u, arg_0) ^ vec3<u32>(4294967295u, 15938u, arg_0))) | vec3<u32>(_wgslsmith_mult_u32(~(~arg_0), ~select(arg_0, 0u, true)), ~(~(28579u & arg_0)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, arg_0, 35844u), firstTrailingBit(vec3<u32>(95202u, 4294967295u, arg_0))));
    var_1 = max(firstTrailingBit(~vec3<u32>(arg_0, var_1.x, arg_0) ^ vec3<u32>(_wgslsmith_clamp_u32(1u, 16035u, var_1.x), 38658u, countOneBits(arg_0))), vec3<u32>(_wgslsmith_dot_vec2_u32(var_1.xy, vec2<u32>(var_1.x, _wgslsmith_div_u32(arg_0, var_1.x))), 6876u, 4294967295u));
    var_0 = -(~firstTrailingBit(reverseBits(u_input.a.x)));
    var var_2 = arg_1.x == false;
    return countOneBits(_wgslsmith_sub_vec3_u32(~min(select(vec3<u32>(4294967295u, arg_0, 0u), vec3<u32>(var_1.x, 34615u, 1u), vec3<bool>(arg_1.x, arg_1.x, false)), abs(vec3<u32>(124164u, arg_0, var_1.x))), abs(select(vec3<u32>(0u, arg_0, var_1.x) >> (vec3<u32>(arg_0, 1u, arg_0) % vec3<u32>(32u)), ~vec3<u32>(var_1.x, 9705u, arg_0), false))));
}

fn func_2() -> Struct_3 {
    let var_0 = vec2<i32>(u_input.a.x, u_input.a.x);
    var var_1 = true;
    var var_2 = Struct_3(Struct_1(firstLeadingBit(~_wgslsmith_clamp_u32(67568u, 56369u, 1919u)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)))));
    let var_3 = ~var_0.x;
    var var_4 = ~_wgslsmith_clamp_vec3_u32(~(~(vec3<u32>(var_2.a.a, 0u, var_2.a.a) ^ vec3<u32>(28131u, var_2.a.a, 39002u))), select(_wgslsmith_mult_vec3_u32(func_3(1u, vec3<bool>(false, var_2.a.b, true), -1819f), func_3(var_2.a.a, vec3<bool>(var_2.a.b, true, var_2.a.b), 1000f)), vec3<u32>(countOneBits(var_2.a.a), var_2.a.a, var_2.a.a), select(select(vec3<bool>(var_2.a.b, var_2.a.b, var_2.a.b), vec3<bool>(var_2.a.b, var_2.a.b, var_2.a.b), true), vec3<bool>(true, true, true), vec3<bool>(var_2.a.b, true, true))), vec3<u32>(~(~4294967295u), ~var_2.a.a & _wgslsmith_mod_u32(var_2.a.a, var_2.a.a), var_2.a.a));
    return Struct_3(Struct_1(9474u, reverseBits(~var_0.x) > var_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!all(func_1(Struct_1(1u, true))) | !all(vec4<bool>(false, false, false, true)));
    var var_1 = 0i;
    var_1 = firstLeadingBit(5743i);
    var var_2 = Struct_1(0u << (1u % 32u), true);
    var var_3 = Struct_4(func_2());
    var var_4 = var_3.a.a;
    var var_5 = var_4.a;
    var var_6 = !vec4<bool>(true, true, var_4.b, all(select(vec2<bool>(var_0, var_3.a.a.b), select(vec2<bool>(true, var_4.b), vec2<bool>(var_3.a.a.b, var_4.b), vec2<bool>(var_4.b, false)), select(vec2<bool>(var_3.a.a.b, false), vec2<bool>(var_4.b, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, countOneBits(-9976i), 5521i, u_input.a.x)), -_wgslsmith_mult_vec4_i32(vec4<i32>(10249i, 2147483647i, u_input.a.x, 2147483647i), vec4<i32>(-39863i, u_input.a.x, 18166i, 29704i) & vec4<i32>(8042i, -1i, 8217i, u_input.a.x))), 10624u);
}

