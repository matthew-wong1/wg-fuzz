struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    var var_0 = -_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-58469i, -8016i, 0i, -2147483647i)), ~vec4<i32>(0i, 38552i, 6563i, 1i)) >> (~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(min(vec4<u32>(30201u, u_input.a, u_input.a, 4294967295u), vec4<u32>(94356u, 1u, u_input.a, 4294967295u)), ~vec4<u32>(1u, u_input.a, u_input.a, 4294967295u)), select(~vec4<u32>(44810u, u_input.a, u_input.a, u_input.a), ~vec4<u32>(1204u, u_input.a, 19186u, u_input.a), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)], true))) % vec4<u32>(32u));
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_i32(abs(-30973i), _wgslsmith_add_i32(reverseBits(-1i), var_0.x)), ~vec2<u32>(~u_input.a, 41335u), vec2<i32>(24255i, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(~2147483647i, -2147483647i), ~var_0.wz)), max(u_input.a, select((1u | u_input.a) << (~1u % 32u), u_input.a, false)), max(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 41526u, u_input.a, 18937u), vec4<u32>(4294967295u, u_input.a, u_input.a, 0u)), 4294967295u ^ u_input.a), abs(~vec2<u32>(40765u, 17338u)) & (vec2<u32>(1u, u_input.a) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)))), _wgslsmith_add_u32(0u << (u_input.a % 32u), _wgslsmith_add_u32(u_input.a, _wgslsmith_clamp_u32(37508u, u_input.a, u_input.a)) >> (37682u % 32u)));
    var var_2 = ~(~abs(_wgslsmith_sub_u32(var_1.a.b.x, var_1.c.x)));
    var_0 = vec4<i32>(-(~var_1.a.c.x ^ var_1.a.d), var_0.x, abs(-2147483647i), _wgslsmith_sub_i32(-2147483647i, firstTrailingBit(1i << (abs(u_input.a) % 32u))));
    var var_3 = min(countOneBits(u_input.a), 1u & var_1.c.x);
    return global0[_wgslsmith_index_u32(0u, 8u)];
}

fn func_2(arg_0: vec2<u32>) -> vec2<u32> {
    var var_0 = !vec4<bool>(true, true, func_3(), all(vec4<bool>(!global0[_wgslsmith_index_u32(u_input.a, 8u)], any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(3523u, 8u)], global0[_wgslsmith_index_u32(arg_0.x, 8u)], true)), global0[_wgslsmith_index_u32(0u, 8u)] | true, false)));
    return ~(~vec2<u32>(4294967295u, 24937u));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> Struct_1 {
    global0 = array<bool, 8>();
    return arg_0;
}

fn func_1() -> Struct_1 {
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    var var_0 = func_4(Struct_1(-37117i, ~func_2(vec2<u32>(44721u, u_input.a)), ~(-vec2<i32>(0i, 0i)), abs(40037i)), u_input.a, max(u_input.a, 32610u | _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1611u, 4294967295u), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(1u, 44424u))));
    var var_1 = Struct_1(_wgslsmith_mod_i32(0i, 2201i), ~(~select(func_2(vec2<u32>(4294967295u, u_input.a)), var_0.b, vec2<bool>(global0[_wgslsmith_index_u32(45265u, 8u)], global0[_wgslsmith_index_u32(14434u, 8u)]))), ~((func_4(Struct_1(var_0.a, var_0.b, var_0.c, var_0.d), 16857u, 13026u).c >> (vec2<u32>(0u, 23095u) % vec2<u32>(32u))) ^ vec2<i32>(1i, ~var_0.c.x)), 0i);
    return Struct_1(_wgslsmith_mod_i32(var_0.c.x, var_0.c.x), var_0.b, _wgslsmith_sub_vec2_i32(vec2<i32>(countOneBits(var_1.a), var_1.a), vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d, -1i, var_1.d, -92485i), vec4<i32>(var_1.c.x, var_1.d, var_0.d, var_1.c.x)), var_1.d)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(15532i, var_0.c.x, 2147483647i, 2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.d, -2147483647i, var_1.a, -23999i), vec4<i32>(var_1.c.x, var_0.d, var_0.a, 1i))), -countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.c.x, 1i, 45284i, var_0.a), vec4<i32>(var_0.c.x, var_1.a, 0i, -1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(), ~(~(~u_input.a) ^ (~u_input.a | 61622u)), vec2<u32>(~0u, ~_wgslsmith_mult_u32(63018u, 1u)), u_input.a);
    var var_1 = vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], !global0[_wgslsmith_index_u32(_wgslsmith_div_u32(11208u, u_input.a & var_0.a.b.x), 8u)] == (countOneBits(~var_0.c.x) <= var_0.a.b.x));
    var var_2 = vec3<i32>(var_0.a.c.x, var_0.a.c.x, min(max(_wgslsmith_mod_i32(-16490i >> (u_input.a % 32u), var_0.a.c.x), 1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.c.x, var_0.a.c.x, -5246i), vec3<i32>(var_0.a.c.x, -19545i, var_0.a.c.x))), 1i));
    let var_3 = ~(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~var_0.c, var_0.c), var_0.a.b.x));
    var_2 = -vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2456i, var_2.x, 1i, var_0.a.d), firstLeadingBit(vec4<i32>(-7746i, var_0.a.a, var_2.x, var_0.a.a))), countOneBits(vec4<i32>(-11313i, 4200i, 32082i, -26745i))), var_0.a.a, -20610i);
    var_2 = min(~_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.x, var_0.a.d, 17128i), vec3<i32>(18431i, var_0.a.a, 1i)), vec3<i32>(-1i, 0i, var_0.a.a) >> (vec3<u32>(var_0.a.b.x, 4294967295u, var_3) % vec3<u32>(32u))), vec3<i32>(abs(-19286i) & var_2.x, var_2.x, var_0.a.d)) & (vec3<i32>(-1i) * -(-vec3<i32>(var_2.x, -2147483647i, var_2.x) & select(vec3<i32>(var_0.a.a, 48171i, -2147483647i), vec3<i32>(2963i, var_0.a.d, -1i), vec3<bool>(var_1.x, var_1.x, var_1.x))));
    let var_4 = vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], !select((var_2.x & var_2.x) != 481i, true, global0[_wgslsmith_index_u32(max(~var_3, max(var_3, 5553u)), 8u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-686f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1043f * 512f))))), ~23310u);
}

