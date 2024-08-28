struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 18> = array<bool, 18>(false, false, true, false, false, true, true, true, false, true, false, true, false, true, true, true, true, true);

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(882f), Struct_1(268f), Struct_1(1650f), Struct_1(764f), Struct_1(1220f), Struct_1(1291f), Struct_1(-1821f), Struct_1(386f), Struct_1(-997f), Struct_1(-482f), Struct_1(-353f), Struct_1(1070f), Struct_1(739f), Struct_1(-984f), Struct_1(1567f), Struct_1(139f), Struct_1(1431f), Struct_1(-855f), Struct_1(914f), Struct_1(328f), Struct_1(1210f), Struct_1(-1000f), Struct_1(-1636f), Struct_1(409f), Struct_1(587f), Struct_1(-476f), Struct_1(543f), Struct_1(968f), Struct_1(-570f));

var<private> global3: i32 = -8546i;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: Struct_1) -> i32 {
    global2 = array<Struct_1, 29>();
    global3 = u_input.b.x;
    var var_0 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, u_input.d << (min(45624u, u_input.d) % 32u), ~u_input.d), ~max(reverseBits(vec4<u32>(749u, 3987u, 1u, u_input.d)), ~vec4<u32>(1u, 4294967295u, 20261u, u_input.d)));
    let var_1 = ~(~(~_wgslsmith_mult_u32(var_0.x ^ 4294967295u, u_input.d)));
    return ~_wgslsmith_sub_i32(-(u_input.a << (_wgslsmith_sub_u32(4294967295u, u_input.d) % 32u)), _wgslsmith_mod_i32(1796i, firstTrailingBit(abs(-26833i))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> u32 {
    global3 = arg_0;
    global1 = array<bool, 18>();
    global2 = array<Struct_1, 29>();
    let var_0 = any(select(vec2<bool>(u_input.a >= arg_2, any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 18u)], global1[_wgslsmith_index_u32(73660u, 18u)]))), select(select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 18u)]), vec2<bool>(true, true), vec2<bool>(false, global1[_wgslsmith_index_u32(49895u, 18u)])), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, global1[_wgslsmith_index_u32(40954u, 18u)])), true), true & !global1[_wgslsmith_index_u32(u_input.d, 18u)])) && true;
    var var_1 = -u_input.b.x;
    return 0u;
}

fn func_1() -> i32 {
    var var_0 = vec2<u32>(firstLeadingBit(reverseBits(4294967295u)), 3477u);
    global1 = array<bool, 18>();
    var var_1 = global2[_wgslsmith_index_u32(1744u, 29u)];
    let var_2 = select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(func_3(-reverseBits(-42053i), Struct_1(307f), abs(func_2(Struct_1(554f), vec4<bool>(global1[_wgslsmith_index_u32(60374u, 18u)], global1[_wgslsmith_index_u32(23234u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(var_0.x, 18u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(1u, 18u)], true), Struct_1(-1040f))), Struct_1(-188f)), 18u)], !all(!vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 18u)], global1[_wgslsmith_index_u32(u_input.d, 18u)], global1[_wgslsmith_index_u32(var_0.x, 18u)]))), vec4<bool>(global1[_wgslsmith_index_u32(~countOneBits(~u_input.d), 18u)], true, any(vec2<bool>(true, true)), !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 64853u), vec2<u32>(53152u, var_0.x) << (vec2<u32>(u_input.d, var_0.x) % vec2<u32>(32u))), 18u)]), !select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(52928u, 18u)], false, true), !vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(var_0.x, 18u)], false), select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(43467u, 18u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 18u)], false, false), true)), !vec4<bool>(false, true, global1[_wgslsmith_index_u32(22289u, 18u)], true), global1[_wgslsmith_index_u32(var_0.x, 18u)]));
    global0 = u_input.d;
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 29>();
    var var_0 = u_input.a;
    global0 = _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(firstTrailingBit(countOneBits(vec2<u32>(u_input.d, u_input.d))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.d, u_input.d), vec2<u32>(6842u, 63113u) & vec2<u32>(u_input.d, 27396u), abs(vec2<u32>(4294967295u, u_input.d)))), vec2<u32>(u_input.d, ~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d, 4294967295u, 68420u), vec4<u32>(1u, u_input.d, 39998u, 2434u)))));
    var var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(16647u), u_input.d, 4294967295u), vec3<u32>(4294967295u, u_input.d, ~94937u)), 29u)];
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, max(4294967295u, (103062u & u_input.d) >> (u_input.d % 32u))) >> (u_input.d % 32u), 29u)];
    var var_3 = Struct_1(-923f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(u_input.c.x, func_1()), u_input.c.x & -(2147483647i << ((u_input.d | u_input.d) % 32u)), firstTrailingBit(vec4<i32>(-10726i, u_input.a, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.e, -2147483647i, u_input.b.x, u_input.e), ~vec4<i32>(0i, u_input.b.x, -2147483647i, -10596i)), ~_wgslsmith_div_i32(u_input.a, u_input.c.x))), u_input.d ^ 7763u);
}

