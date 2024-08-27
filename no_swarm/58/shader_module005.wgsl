struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = Struct_2(arg_1);
    var var_1 = ~_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(min(min(var_0.a.b.xyw, u_input.a.wyx), arg_1.b.wwy), vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, 4940i), var_0.a.b.x, var_0.a.b.x << (arg_1.c % 32u)), vec3<i32>(~2147483647i, _wgslsmith_div_i32(-23641i, var_0.a.b.x), -1i)), max(select(var_0.a.b.yyy, _wgslsmith_add_vec3_i32(var_0.a.b.xww, arg_1.b.xxw), vec3<bool>(true, true, true)), -var_0.a.b.zyy));
    let var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(~(~4294967295u), arg_1.c, var_0.a.c, arg_1.c) >> ((firstLeadingBit(vec4<u32>(7534u, var_0.a.c, 26367u, 31795u)) >> (vec4<u32>(countOneBits(51114u), min(1u, 33139u), var_0.a.c, countOneBits(arg_1.c)) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~abs(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.c, var_0.a.c, 0u, arg_1.c), vec4<u32>(var_0.a.c, var_0.a.c, 12378u, 46210u)))));
    let var_3 = var_0;
    return ~var_2.wx;
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> bool {
    var var_0 = -(~vec2<i32>(_wgslsmith_sub_i32(abs(arg_1.a.b.x), -2147483647i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(0i, arg_1.a.b.x, 26909i, arg_1.a.b.x)), max(arg_1.a.b, arg_1.a.b))));
    var_0 = u_input.a.ww;
    var var_1 = ~(~(~reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.a.c, arg_1.a.c, 4294967295u), vec3<u32>(15798u, arg_1.a.c, 4599u)))));
    var var_2 = Struct_1(all(!vec4<bool>(arg_1.a.a, true, true, arg_1.a.a)), u_input.a, ~(~(~1u)));
    var var_3 = _wgslsmith_clamp_u32(max(var_2.c, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.x, arg_1.a.c) ^ var_1.zz, max(vec2<u32>(arg_1.a.c, var_2.c), vec2<u32>(var_2.c, 72017u))), var_1.zz)), arg_1.a.c, 0u);
    return ~0u < _wgslsmith_sub_u32(~(~(~var_1.x)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~4294967295u, arg_1.a.c ^ var_2.c, arg_1.a.c), var_2.c));
}

fn func_1() -> u32 {
    let var_0 = ~(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(27920u, 1u), vec2<u32>(4294967295u, 4294967295u)), ~vec2<u32>(4294967295u, 61387u), vec2<u32>(4294967295u, 0u)) ^ vec2<u32>(1u, 1u)) | select(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4042u, abs(76035u))), func_2(vec2<bool>(true, true), Struct_1(true, vec4<i32>(1i, 42567i, u_input.b.x, u_input.b.x) ^ u_input.a, 31430u)), select(vec2<bool>(true, true), vec2<bool>(true, func_3(-437f, Struct_2(Struct_1(true, vec4<i32>(-31524i, 0i, u_input.a.x, 2147483647i), 4294967295u)))), vec2<bool>(true, true)));
    let var_1 = Struct_1(true & any(vec2<bool>(var_0.x < 37115u, true)), vec4<i32>(u_input.b.x, 22719i, u_input.b.x, ~u_input.b.x), ~var_0.x);
    var var_2 = Struct_2(Struct_1(true, (-vec4<i32>(-1i, -28618i, var_1.b.x, 1i) | u_input.a) ^ u_input.a, var_0.x));
    var_2 = Struct_2(Struct_1(all(!(!vec2<bool>(var_1.a, var_2.a.a))), countOneBits(vec4<i32>(var_2.a.b.x ^ 25006i, min(u_input.b.x, var_1.b.x), var_1.b.x, ~var_1.b.x)), 46007u));
    return ~var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, max(13359u, 4294967295u), ~select(82584u, 0u, false)), vec3<u32>(func_1(), ~1u, _wgslsmith_clamp_u32(0u, 53264u, 0u)) & vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u)) << (firstTrailingBit(vec3<u32>(~countOneBits(94888u), 4089u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(4294967295u, 59775u, 4294967295u)), ~1u))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(countOneBits(u_input.a), u_input.a), (vec2<u32>(~7495u, _wgslsmith_add_u32(var_0.x, var_0.x)) & firstLeadingBit(vec2<u32>(1u, var_0.x))) | countOneBits(max(var_0.xz << (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u)), ~var_0.xx)));
}

