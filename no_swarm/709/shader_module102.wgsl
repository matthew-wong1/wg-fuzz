struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: bool) -> vec3<u32> {
    return vec3<u32>(_wgslsmith_div_u32(~_wgslsmith_mult_u32(1u, u_input.d), ~u_input.d), _wgslsmith_add_u32(_wgslsmith_mod_u32(14726u, 0u | u_input.b), ~u_input.b), 0u) ^ reverseBits(~(~(vec3<u32>(u_input.d, 4294967295u, u_input.d) >> (vec3<u32>(28198u, 84407u, u_input.d) % vec3<u32>(32u)))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> vec3<bool> {
    var var_0 = arg_0;
    var var_1 = func_1(all(vec4<bool>(false, arg_0.b.x, true, var_0.b.x))).x;
    var var_2 = _wgslsmith_clamp_i32(-24382i, firstTrailingBit(select(i32(-1i) * -2147483647i, arg_1, false && any(vec4<bool>(arg_0.b.x, var_0.b.x, arg_0.b.x, true)))), ~(~(-min(var_0.c.x, 30387i))));
    let var_3 = abs(_wgslsmith_mult_i32(u_input.c, ~_wgslsmith_div_i32(u_input.a.x, _wgslsmith_sub_i32(arg_1, u_input.a.x))));
    var var_4 = Struct_1(abs(var_0.a), vec3<bool>(false, false, var_0.b.x), abs(u_input.a));
    return select(select(vec3<bool>(true, arg_0.b.x, var_0.b.x && true), var_0.b, false), vec3<bool>(var_0.b.x, arg_0.b.x, var_4.b.x), var_4.b.x);
}

fn func_2() -> StorageBuffer {
    let var_0 = Struct_1(firstTrailingBit(func_1(true).x), !select(vec3<bool>(true, true, true), func_3(Struct_1(u_input.d, vec3<bool>(false, false, false), u_input.a), 8248i, 804f), select(vec3<bool>(true, true, false), func_3(Struct_1(1u, vec3<bool>(false, false, false), u_input.a), -1i, 223f), any(vec3<bool>(true, false, false)))), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(-1i, u_input.c, u_input.c), u_input.a) ^ select(vec3<i32>(11331i, u_input.c, -1i), u_input.a, vec3<bool>(true, true, false)), -u_input.a), countOneBits(u_input.a), _wgslsmith_mod_vec3_i32(-u_input.a, ~min(u_input.a, u_input.a))));
    var var_1 = var_0;
    return StorageBuffer(0i, ~_wgslsmith_clamp_i32(abs(u_input.c), countOneBits(var_1.c.x), 34567i) | (-(u_input.c << (0u % 32u)) ^ u_input.a.x), vec3<i32>(abs(var_1.c.x), min(23859i, ~var_1.c.x & (var_0.c.x << (u_input.b % 32u))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.c.x, var_0.c.x, 37026i), vec4<i32>(u_input.a.x, -33069i, -4347i, u_input.c)), -11047i, ~(~0i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_u32(max(max(vec2<u32>(25118u, 27901u), vec2<u32>(19282u, u_input.d)) ^ _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.d, u_input.b)), ~(~vec2<u32>(u_input.d, 67116u))), ~(~vec2<u32>(4294967295u, u_input.d) & abs(vec2<u32>(u_input.b, u_input.d)))), vec3<bool>(!((u_input.c == -1i) & true), false, u_input.a.x >= u_input.a.x), vec3<i32>(~(i32(-1i) * -1i), u_input.a.x, firstLeadingBit(u_input.c)));
    let var_1 = ~(~(~vec4<u32>(abs(u_input.d), 1u, ~u_input.b, 2784u)));
    var_0 = Struct_1((~12082u >> ((99923u ^ ~u_input.b) % 32u)) | 9107u, !select(select(var_0.b, var_0.b, var_0.b), !var_0.b, var_0.b.x), ~select(~vec3<i32>(var_0.c.x, -2147483647i, -1452i), var_0.c, vec3<bool>(var_0.b.x, var_0.b.x, true)) >> (~_wgslsmith_sub_vec3_u32(func_1(var_0.b.x), var_1.yzy) % vec3<u32>(32u)));
    let var_2 = -637f;
    var_0 = Struct_1(0u, vec3<bool>(var_0.b.x, var_0.b.x, select(true, var_0.b.x | true, var_2 < var_2) != true), vec3<i32>(1i, var_0.c.x, ~_wgslsmith_mod_i32(abs(0i), _wgslsmith_add_i32(2147483647i, var_0.c.x))));
    let var_3 = 1i;
    let x = u_input.a;
    s_output = func_2();
}

