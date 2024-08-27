struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(0i), Struct_1(-1i), Struct_1(-4951i), Struct_1(25475i), Struct_1(-1i), Struct_1(-25817i), Struct_1(63465i), Struct_1(1i), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(-8918i), Struct_1(-10852i), Struct_1(-13021i), Struct_1(2373i), Struct_1(53312i), Struct_1(-12297i), Struct_1(50284i), Struct_1(9700i), Struct_1(2147483647i), Struct_1(63382i), Struct_1(4700i), Struct_1(-6319i), Struct_1(i32(-2147483648)), Struct_1(0i), Struct_1(i32(-2147483648)), Struct_1(15745i));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    return arg_1;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec4<i32> {
    return _wgslsmith_div_vec4_i32(firstLeadingBit(u_input.c), abs(-vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b.a, -40304i), vec2<i32>(arg_1.b.a, 2147483647i)), u_input.c.x, abs(arg_0.a), _wgslsmith_sub_i32(arg_0.a, 8147i))));
}

fn func_1(arg_0: vec2<u32>) -> vec2<bool> {
    let var_0 = arg_0;
    var var_1 = true;
    var var_2 = max(vec4<i32>(abs(u_input.c.x), u_input.d, 2147483647i, -2147483647i) | _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.c.x, u_input.c.x, u_input.d), vec4<i32>(u_input.a, 0i, 2147483647i, -1i)) ^ firstTrailingBit(vec4<i32>(u_input.d, 2495i, -2147483647i, u_input.a)), func_3(func_2(true, global0[_wgslsmith_index_u32(0u, 27u)]), Struct_2(vec4<u32>(u_input.b, u_input.b, var_0.x, arg_0.x), Struct_1(-26575i), global0[_wgslsmith_index_u32(25721u, 27u)]))), max(vec4<i32>(u_input.a, _wgslsmith_mult_i32(~u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 10202i, u_input.c.x), vec3<i32>(u_input.c.x, -2147483647i, -2147483647i))), u_input.c.x, ~max(-4008i, u_input.c.x)), u_input.c << ((vec4<u32>(0u, u_input.b, u_input.b, 1u) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 52008u, var_0.x, 4294967295u), vec4<u32>(2146u, 45963u, u_input.b, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_3 = u_input.c;
    var var_4 = Struct_2(~abs(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 21400u, 47763u, u_input.b), vec4<u32>(4294967295u, 0u, arg_0.x, 69838u))) ^ ~vec4<u32>(_wgslsmith_sub_u32(arg_0.x, u_input.b), select(u_input.b, 72817u, true), 1u, arg_0.x), global0[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(4294967295u, arg_0.x, 9082u)), abs(vec3<u32>(1u, var_0.x, arg_0.x))), _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(arg_0.x, 4294967295u, 54265u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 1u), vec3<u32>(165u, var_0.x, arg_0.x)))), 1u), 27u)], Struct_1(func_2(!any(vec3<bool>(false, true, false)), func_2(false, func_2(false, global0[_wgslsmith_index_u32(17454u, 27u)]))).a));
    return vec2<bool>(any(vec4<bool>(true, true, true, true)), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 27>();
    let var_0 = select(vec2<bool>(select(true, true, false | select(false, false, true)), !(~u_input.d == 2147483647i)), select(!select(vec2<bool>(true, true), func_1(vec2<u32>(u_input.b, u_input.b)), true), func_1(vec2<u32>(_wgslsmith_div_u32(0u, u_input.b), reverseBits(u_input.b))), vec2<bool>(true, true)), !(u_input.c.x < ~92470i));
    var var_1 = vec3<bool>(var_0.x, true, var_0.x);
    global0 = array<Struct_1, 27>();
    var var_2 = u_input.b;
    var var_3 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 2038u) & vec2<u32>(u_input.b, 32371u), vec2<u32>(1u, u_input.b)), abs(abs(vec2<u32>(u_input.b, 14736u)))), 1u, 1u, u_input.b);
    var var_4 = Struct_2(vec4<u32>(~(~_wgslsmith_clamp_u32(79760u, 1622u, var_3.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_3.x, u_input.b, var_3.x, var_3.x), vec4<u32>(var_3.x, 41341u, var_3.x, 0u)), vec4<u32>(68044u, 27367u, var_3.x, 4294967295u) ^ vec4<u32>(1u, u_input.b, var_3.x, var_3.x)) & ((16587u & var_3.x) ^ ~u_input.b), _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(0u, var_3.x, 4294967295u, 55422u)), vec4<u32>(_wgslsmith_div_u32(var_3.x, 0u), u_input.b, ~54409u, var_3.x)), min(_wgslsmith_mod_u32(44807u, abs(48344u)), 1u)), func_2(var_1.x, func_2(!(u_input.b < 4294967295u), Struct_1(max(11733i, 0i)))), Struct_1(-1i));
    var var_5 = !vec2<bool>(any(!(!vec4<bool>(false, var_0.x, false, true))), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.yz, ~var_4.a.zw, _wgslsmith_div_i32(var_4.c.a, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c.xzz, vec3<i32>(-1i, u_input.a, u_input.d)), vec3<i32>(var_4.c.a, var_4.b.a, 1i)) & (~var_4.b.a & -67726i)));
}

