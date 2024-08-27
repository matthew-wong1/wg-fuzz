struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: array<i32, 1> = array<i32, 1>(1i);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: u32) -> vec3<u32> {
    var var_0 = vec2<i32>(countOneBits(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a, ~1i, global0[_wgslsmith_index_u32(reverseBits(arg_2), 1u)]), ~(-global0[_wgslsmith_index_u32(31508u, 1u)]))), i32(-1i) * -18842i);
    return vec3<u32>(reverseBits(_wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(22120u, 49668u, arg_0.a, u_input.b), vec4<u32>(0u, 36728u, arg_2, arg_0.a)))), ~arg_2, ~reverseBits(reverseBits(49346u)));
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_2(856f);
    global0 = array<i32, 1>();
    let var_1 = _wgslsmith_div_vec3_u32(func_3(Struct_4(~u_input.b, Struct_3(Struct_2(-777f)), Struct_3(Struct_2(1335f))), Struct_2(_wgslsmith_f_op_f32(max(var_0.a, -1000f))), 39114u), vec3<u32>(~(abs(u_input.b) << (u_input.c % 32u)), _wgslsmith_sub_u32(u_input.c, u_input.b), ~(~u_input.b)));
    var var_2 = countOneBits(var_1.x);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-var_0.a));
    return select(vec2<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), any(vec4<bool>(false, true, true, false)))), true), vec2<bool>(true, true), vec2<bool>(true, true));
}

fn func_1() -> vec4<i32> {
    let var_0 = any(func_2());
    var var_1 = u_input.c;
    var_1 = u_input.c;
    var_1 = 0u;
    let var_2 = select((~vec4<u32>(0u, u_input.b, u_input.c, 0u) & ~vec4<u32>(u_input.b, u_input.c, 1u, 109530u)) | min(select(vec4<u32>(u_input.c, u_input.b, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.b, 7237u, u_input.c), vec4<bool>(var_0, false, var_0, var_0)), vec4<u32>(u_input.c, u_input.b, 0u, u_input.c) ^ vec4<u32>(27055u, 54692u, u_input.b, u_input.b)), firstLeadingBit(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.b, 30868u, u_input.c, 51335u)), vec4<u32>(4294967295u, u_input.b, u_input.c, u_input.b) >> (vec4<u32>(45690u, u_input.b, u_input.c, 0u) % vec4<u32>(32u)))), true) >> ((abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(32377u, 0u, u_input.b, u_input.c), ~vec4<u32>(33558u, 77300u, 1u, 26355u), _wgslsmith_sub_vec4_u32(vec4<u32>(17902u, 4294967295u, u_input.c, u_input.b), vec4<u32>(0u, 108056u, 1u, u_input.b)))) >> (firstTrailingBit(vec4<u32>(u_input.b ^ 0u, 1u, 1u, _wgslsmith_div_u32(70610u, 15035u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    return max(vec4<i32>(0i, 1i, 1i, _wgslsmith_div_i32(max(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(u_input.c, 1u)]))), u_input.a)), vec4<i32>(u_input.a, _wgslsmith_mult_i32(~(-26928i), u_input.a), 1i, -683i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(_wgslsmith_mult_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 1u)], 2006i, u_input.a, u_input.a)), func_1()));
    global0 = array<i32, 1>();
    var var_1 = Struct_1(true, !(!all(vec2<bool>(true, true)) & false), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-var_0.xx >> (_wgslsmith_add_vec2_u32(vec2<u32>(9806u, u_input.b), vec2<u32>(u_input.b, u_input.c)) % vec2<u32>(32u)), var_0.wx), var_0.wx), !all(select(func_2(), vec2<bool>(false, true), func_2().x)));
    global0 = array<i32, 1>();
    let var_2 = 4294967295u;
    let var_3 = ~vec2<u32>(~min(~var_2, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_2), vec2<u32>(var_2, 97856u))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, var_2), u_input.c));
    let var_4 = reverseBits(_wgslsmith_div_vec4_i32(var_0, -var_0));
    let var_5 = 1u >> (_wgslsmith_mod_u32(~69894u, ~(countOneBits(var_3.x) >> (4294967295u % 32u))) % 32u);
    var_1 = Struct_1(true, !((true || any(vec4<bool>(true, var_1.d, false, var_1.d))) | all(select(vec2<bool>(true, var_1.d), vec2<bool>(false, false), true))), ~(~(-77610i) & _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_4.wzz, var_0.wwz), _wgslsmith_dot_vec4_i32(var_0, vec4<i32>(var_1.c, 42419i, var_1.c, 0i)))), all(vec3<bool>(_wgslsmith_mod_i32(var_0.x, -1i) >= _wgslsmith_div_i32(var_0.x, 8336i), false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_3));
}

