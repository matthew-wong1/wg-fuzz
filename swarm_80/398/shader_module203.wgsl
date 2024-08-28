struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(-667f, vec3<bool>(true, false, true)), Struct_3(560f, vec3<bool>(false, true, true)), Struct_3(157f, vec3<bool>(true, true, true)), Struct_3(-203f, vec3<bool>(false, true, true)), Struct_3(-1460f, vec3<bool>(false, false, true)), Struct_3(558f, vec3<bool>(true, true, true)), Struct_3(-1000f, vec3<bool>(true, true, true)), Struct_3(854f, vec3<bool>(false, true, true)), Struct_3(-519f, vec3<bool>(true, false, true)), Struct_3(-1717f, vec3<bool>(true, true, false)), Struct_3(1019f, vec3<bool>(true, true, true)), Struct_3(-1000f, vec3<bool>(true, false, false)), Struct_3(-935f, vec3<bool>(false, false, false)), Struct_3(824f, vec3<bool>(true, false, false)), Struct_3(-1382f, vec3<bool>(true, false, false)), Struct_3(-1000f, vec3<bool>(true, true, false)), Struct_3(-124f, vec3<bool>(true, false, false)), Struct_3(-1472f, vec3<bool>(false, false, false)), Struct_3(646f, vec3<bool>(true, false, true)), Struct_3(1000f, vec3<bool>(false, true, true)), Struct_3(-1384f, vec3<bool>(true, false, false)), Struct_3(-366f, vec3<bool>(false, false, true)), Struct_3(248f, vec3<bool>(false, true, true)), Struct_3(-285f, vec3<bool>(false, true, false)));

var<private> global1: array<Struct_2, 10>;

var<private> global2: Struct_2;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = global2.a;
    let var_1 = Struct_3(820f, !(!(!select(vec3<bool>(global2.a, false, false), vec3<bool>(true, true, global2.a), true))));
    global1 = array<Struct_2, 10>();
    let var_2 = Struct_2(var_1.b.x);
    let var_3 = Struct_2(false);
    return Struct_2(!all(!(!vec2<bool>(false, var_3.a))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> i32 {
    var var_0 = -1856f;
    var_0 = 294f;
    let var_1 = global0[_wgslsmith_index_u32(abs(~_wgslsmith_div_u32(select(55797u, arg_0 ^ arg_0, true), firstLeadingBit(1u))), 24u)];
    var var_2 = arg_1.b;
    let var_3 = any(vec4<bool>(!arg_1.a, arg_1.c, true, arg_1.c || func_2(19971i).a));
    return _wgslsmith_mod_i32(arg_1.b, -u_input.b);
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> Struct_1 {
    global2 = func_2(2147483647i);
    global2 = Struct_2(global2.a | (global2.a || !global2.a));
    global0 = array<Struct_3, 24>();
    let var_0 = 1u;
    var var_1 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_1, arg_1), vec3<u32>(71194u, arg_1, 31502u)), abs(vec3<u32>(1u, 4294967295u, 7385u))) ^ _wgslsmith_add_vec3_u32(select(vec3<u32>(arg_1, 53269u, arg_0.x), vec3<u32>(arg_0.x, 73495u, 1u), true), max(vec3<u32>(var_0, arg_0.x, 0u), vec3<u32>(36319u, 1u, arg_0.x))), vec3<u32>(~(~arg_1), firstTrailingBit(~arg_1), ~(var_0 | 4294967295u)));
    return Struct_1(global2.a, 6646i, (true | func_2(~u_input.a).a) & true, func_3(~(4294967295u << (min(var_0, arg_1) % 32u)), Struct_1(true, abs(_wgslsmith_sub_i32(25277i, 33409i)), all(vec4<bool>(false, global2.a, global2.a, false)), _wgslsmith_add_i32(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -13753i), vec2<i32>(u_input.a, -2147483647i))), (u_input.b << (var_1.x % 32u)) >> (var_0 % 32u))), -u_input.a << (abs(arg_0.x) % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_2 {
    var var_0 = func_1(~(select(vec2<u32>(22708u, arg_1), _wgslsmith_sub_vec2_u32(vec2<u32>(73465u, 4294967295u), vec2<u32>(1u, 1u)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, global2.a))) ^ _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(45497u, arg_1)), vec2<u32>(arg_1, 8029u) << (vec2<u32>(arg_1, 146733u) % vec2<u32>(32u)))), ~12039u);
    global1 = array<Struct_2, 10>();
    var var_1 = ~(~vec3<u32>(~arg_1, 15863u, arg_1) | vec3<u32>(42003u, abs(reverseBits(1u)), firstTrailingBit(1u)));
    let var_2 = func_2(~max(~(~var_0.e), u_input.b));
    global0 = array<Struct_3, 24>();
    return Struct_2(false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(vec4<u32>(~0u, ~1u, 1u, _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(60541u, 0u, 43183u, 1u), vec4<u32>(7729u, 1u, 2241u, 9257u)), 1u), ~(~18539u))), vec4<u32>(~max(~74128u, ~37499u), ~(~(~1u)), ~0u << (0u % 32u), 51280u));
    var var_1 = !(!(!vec4<bool>(true, !global2.a, 1i > u_input.b, false)));
    var var_2 = func_4(func_1(vec2<u32>(~48124u, max(1u, 4294967295u)) << (var_0.zz % vec2<u32>(32u)), reverseBits(~(~0u))), ~_wgslsmith_clamp_u32(var_0.x ^ ~var_0.x, ~0u & var_0.x, 1u));
    var_1 = !vec4<bool>(func_2(_wgslsmith_add_i32(u_input.b | u_input.a, ~u_input.b)).a, var_2.a, true, !global2.a);
    var var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(-(i32(-1i) * -41981i), countOneBits(u_input.b), -(~0i), _wgslsmith_clamp_i32(u_input.a, reverseBits(-38711i), 0i)) | select(firstLeadingBit(select(vec4<i32>(u_input.a, u_input.b, -1i, -28458i), vec4<i32>(u_input.a, u_input.a, 0i, 15559i), true)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(13861i, 0i, 1i, u_input.b), vec4<i32>(u_input.b, u_input.b, 20569i, u_input.b)), ~vec4<i32>(-1i, 0i, -1i, -28719i), vec4<i32>(41489i, u_input.a, u_input.b, -1i) << (vec4<u32>(0u, var_0.x, var_0.x, var_0.x) % vec4<u32>(32u))), vec4<bool>(true, global2.a && false, func_2(2147483647i).a, var_1.x)), ~vec4<i32>(-min(2539i, u_input.a), countOneBits(u_input.a), min(countOneBits(1928i), u_input.b & 2147483647i), 1i));
    let var_4 = var_3.xx;
    global0 = array<Struct_3, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(11653i, ~0u, -1i, 2147483647i);
}

