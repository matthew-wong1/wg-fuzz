struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(1i, 1i, 2147483647i), Struct_1(-28029i, 0i, 2147483647i), Struct_1(-29264i, 14605i, 2147483647i), Struct_1(-1i, 1i, -19764i), Struct_1(1i, 1i, -1i), Struct_1(-1i, 21468i, 60027i), Struct_1(1i, 294i, -1939i), Struct_1(-1i, -1i, 0i), Struct_1(0i, -1i, -50734i), Struct_1(0i, 2147483647i, -17614i), Struct_1(i32(-2147483648), i32(-2147483648), -19220i), Struct_1(-21642i, 26320i, 46622i));

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(i32(-2147483648), -65265i, 4726i), Struct_1(-16399i, 1i, 1i), Struct_1(21623i, 1i, 2147483647i), Struct_1(1i, 1i, 75260i), Struct_1(1i, 27469i, 0i), Struct_1(2147483647i, -1i, 83078i), Struct_1(20093i, -12444i, -21733i), Struct_1(-1i, -1i, -50911i), Struct_1(-1i, 1i, 40878i), Struct_1(9868i, -11080i, 13810i), Struct_1(14819i, 1i, 0i), Struct_1(-1i, -29024i, i32(-2147483648)), Struct_1(14745i, 2147483647i, 0i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    var var_0 = vec2<u32>(7775u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b, min(4294967295u, 3458u) & (41012u | u_input.a.x)), select(0u, 12409u, select(true, false, true))));
    var_0 = vec2<u32>(~29773u, 4294967295u);
    var var_1 = _wgslsmith_mult_vec2_u32(countOneBits(countOneBits(u_input.a)), select(select(u_input.a, vec2<u32>(28590u, 4294967295u), vec2<bool>(true, false)), reverseBits(u_input.a), vec2<bool>(true, true)) ^ vec2<u32>(var_0.x, firstLeadingBit(2220u)));
    var var_2 = abs(_wgslsmith_dot_vec3_i32(reverseBits(abs(vec3<i32>(1i, 1i, 1i))), abs(vec3<i32>(1i, 1i, 1i))));
    global1 = array<Struct_1, 13>();
    return any(vec4<bool>(select(all(vec3<bool>(true, true, true)), true, false), !select(all(vec2<bool>(false, false)), all(vec4<bool>(true, true, false, false)), select(true, false, true)), true, all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false))));
}

fn func_2() -> i32 {
    global1 = array<Struct_1, 13>();
    var var_0 = vec3<bool>(true, false, any(select(vec3<bool>(true, all(vec3<bool>(false, false, true)), true), vec3<bool>(false, true, true), vec3<bool>(all(vec2<bool>(true, true)), func_3(), all(vec2<bool>(true, false))))));
    let var_1 = 0u;
    let var_2 = vec3<u32>(u_input.b, min(_wgslsmith_sub_u32(firstLeadingBit(4294967295u), ~var_1), ~15194u), u_input.a.x);
    var var_3 = Struct_1(0i, -2147483647i, 1i);
    return -1i;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_2) -> vec4<u32> {
    global1 = array<Struct_1, 13>();
    let var_0 = u_input.a | ~(~vec2<u32>(u_input.b, u_input.a.x));
    let var_1 = 311f;
    let var_2 = Struct_1(abs(-(-arg_2.b.c & -arg_0.x)), firstLeadingBit(func_2()), 1i);
    let var_3 = true;
    return ~vec4<u32>(~countOneBits(26202u), var_0.x, ~1u, 53916u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 13>();
    global1 = array<Struct_1, 13>();
    let var_0 = ~reverseBits(firstTrailingBit(func_1(vec2<i32>(2147483647i, 24592i), vec3<bool>(false, false, true), Struct_2(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], false, true, 89740u)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.b, 68748u), vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)) % vec4<u32>(32u))));
    global1 = array<Struct_1, 13>();
    var var_1 = Struct_1(1i, _wgslsmith_sub_i32(abs(abs(max(1i, -972i))), _wgslsmith_add_i32(-2147483647i, _wgslsmith_mult_i32(48371i, 0i)) >> (~(u_input.b | u_input.b) % 32u)), -abs(-_wgslsmith_mod_i32(-1i, 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_div_vec3_u32(func_1(vec2<i32>(0i, var_1.c), vec3<bool>(true, true, true), Struct_2(27884u, Struct_1(2147483647i, 65144i, 2147483647i), false, true, var_0.x)).zzz, vec3<u32>(var_0.x, var_0.x, u_input.a.x)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 1u, 2028u), vec3<u32>(23161u, 1u, 0u), var_0.yzy), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true))));
}

