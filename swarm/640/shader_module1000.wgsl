struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    var var_0 = 1i;
    var var_1 = Struct_2(!select(select(!arg_0.zxz, !arg_0.zwx, arg_0.x), select(vec3<bool>(true, true, arg_0.x), arg_0.yyx, true), u_input.b > u_input.d), u_input.a, Struct_1(vec4<i32>(30974i, u_input.b, -17265i, 35517i), u_input.b, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d, u_input.d, u_input.b, u_input.d), vec4<i32>(32228i, -1i, 1i, -2147483647i) & vec4<i32>(0i, u_input.d, 0i, 10145i)), u_input.b ^ -u_input.d)), Struct_1(vec4<i32>(select(u_input.b, i32(-1i) * -21318i, true), 44106i, u_input.b, u_input.b), u_input.d, firstLeadingBit(-u_input.d) ^ -59346i), Struct_1(vec4<i32>(max(-68987i, -13311i), u_input.b, u_input.b, i32(-1i) * -2147483647i), u_input.b, u_input.b));
    let var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(var_1.d.b, _wgslsmith_div_i32(countOneBits(-1i), 1i), var_1.d.b, -1i), var_1.e.a);
    var var_3 = Struct_1(var_1.d.a, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.b, var_1.d.c)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -47028i), var_2.yz)), var_1.c.a.zx), vec2<i32>(abs(-15153i), ~42213i) >> (~min(vec2<u32>(1u, u_input.c.x), u_input.a.zy) % vec2<u32>(32u))), reverseBits(_wgslsmith_add_i32(40052i, u_input.d)));
    var_0 = _wgslsmith_add_i32(countOneBits(var_3.a.x | _wgslsmith_clamp_i32(~(-35809i), abs(var_2.x), max(var_2.x, -71725i))), -2147483647i);
    return _wgslsmith_sub_i32(u_input.b, ~var_3.c);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(max(~_wgslsmith_add_vec4_i32(-vec4<i32>(1i, u_input.b, u_input.b, -2147483647i), ~vec4<i32>(u_input.d, 2147483647i, u_input.b, -2147483647i)), firstTrailingBit(vec4<i32>(u_input.b, u_input.b, u_input.d, u_input.b) | vec4<i32>(u_input.d, 17914i, u_input.d, u_input.d)) << (firstLeadingBit(~vec4<u32>(55757u, 60372u, u_input.a.x, 0u)) % vec4<u32>(32u))), select(abs(abs(2147483647i)), 0i, false) | u_input.d, -1i);
    let var_1 = 0u;
    var var_2 = Struct_1(firstTrailingBit(_wgslsmith_clamp_vec4_i32(var_0.a, vec4<i32>(-79113i, u_input.d, ~(-2147483647i), firstTrailingBit(-2147483647i)), _wgslsmith_mod_vec4_i32(select(vec4<i32>(var_0.b, u_input.b, var_0.a.x, var_0.c), vec4<i32>(-1i, u_input.b, 0i, 10005i), true), ~vec4<i32>(-2147483647i, u_input.d, u_input.b, var_0.a.x)))), func_3(global0[_wgslsmith_index_u32(max(~18068u, abs(abs(1u))), 6u)]), var_0.b);
    var var_3 = global0[_wgslsmith_index_u32(select(var_1 ^ var_1, countOneBits(4294967295u), (-u_input.b << (u_input.c.x % 32u)) < u_input.d) | ~_wgslsmith_dot_vec3_u32(u_input.a, ~vec3<u32>(var_1, u_input.a.x, 0u)), 6u)];
    var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_mod_u32(u_input.c.x, u_input.a.x), var_1), 6u)];
    return Struct_2(select(!vec3<bool>(var_3.x, false, var_3.x), var_3.xwy, !select(vec3<bool>(var_3.x, true, var_3.x), select(var_3.yyx, var_3.zxw, vec3<bool>(var_3.x, var_3.x, var_3.x)), true)), u_input.a, Struct_1(-reverseBits(var_2.a), func_3(vec4<bool>(all(var_3.xzz), var_3.x, var_3.x, all(vec3<bool>(true, var_3.x, false)))), ~(-26108i)), Struct_1(~vec4<i32>(firstTrailingBit(0i), var_0.a.x, 2147483647i, _wgslsmith_dot_vec3_i32(var_0.a.yxw, var_2.a.zzw)), var_0.b, ~(~(-50298i))), Struct_1(~max(vec4<i32>(u_input.b, 0i, -69298i, -9120i), -var_2.a), ~reverseBits(-1i) & abs(min(u_input.b, var_2.b)), var_2.c));
}

fn func_4(arg_0: Struct_2) -> bool {
    global0 = array<vec4<bool>, 6>();
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), -vec2<i32>((arg_0.e.a.x | 1i) & -arg_0.e.b, 25237i));
    let var_1 = _wgslsmith_mod_i32(var_0, -7238i);
    global0 = array<vec4<bool>, 6>();
    global0 = array<vec4<bool>, 6>();
    return all(!vec2<bool>(arg_0.a.x, all(select(arg_0.a, arg_0.a, arg_0.a))));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: bool) -> bool {
    global0 = array<vec4<bool>, 6>();
    let var_0 = all(vec3<bool>(func_4(func_2()), all(global0[_wgslsmith_index_u32(u_input.c.x, 6u)]), true));
    let var_1 = select(vec3<bool>(var_0, !arg_2, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 1u), vec2<u32>(74009u, 0u)), _wgslsmith_sub_u32(4294967295u, u_input.a.x), u_input.c.x) > 19921u), select(vec3<bool>(!(arg_2 && false), true, true), !select(!vec3<bool>(var_0, var_0, true), func_2().a, any(vec3<bool>(true, true, true))), all(!(!vec3<bool>(false, false, var_0)))), arg_2);
    var var_2 = func_2();
    let var_3 = vec4<u32>(_wgslsmith_add_u32(min(~4294967295u, 4294967295u), func_2().b.x) << (arg_1 % 32u), arg_1, 3684u, ~var_2.b.x);
    return any(select(vec4<bool>(var_1.x, any(vec3<bool>(false, false, arg_2)), func_4(Struct_2(var_2.a, var_2.b, Struct_1(var_2.c.a, -29963i, u_input.b), Struct_1(vec4<i32>(var_2.c.a.x, var_2.c.b, u_input.b, 14937i), 21775i, 1i), var_2.e)), true), global0[_wgslsmith_index_u32(~1u, 6u)], vec4<bool>(var_0, any(vec4<bool>(var_1.x, var_0, false, true)), var_0, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 6>();
    var var_0 = all(select(!vec3<bool>(func_1(vec4<f32>(-1637f, 333f, -189f, 253f), u_input.a.x, false), true, true), vec3<bool>(select(true, false, true), true, any(vec4<bool>(true, false, true, true))), any(vec3<bool>(true, true, true))));
    var var_1 = abs(82293u);
    let var_2 = any(vec2<bool>(true, select(true, -20521i < u_input.d, true))) && (func_4(func_2()) || true);
    var_0 = false;
    let var_3 = func_2().c;
    var var_4 = 1u;
    var_4 = abs((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.c.x, u_input.a.x, u_input.a.x), vec4<u32>(22952u, u_input.c.x, 4294967295u, u_input.a.x)) ^ abs(81058u)) | max(_wgslsmith_div_u32(4294967295u, 39101u), _wgslsmith_mult_u32(1u, 61920u))) << (_wgslsmith_sub_u32(firstTrailingBit(firstTrailingBit(u_input.c.x) << (~u_input.c.x % 32u)), 1u) % 32u);
    global0 = array<vec4<bool>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(select(4294967295u, 61547u, !(0u <= ~u_input.c.x)), -var_3.a.xzy, var_3.b, vec2<u32>(4294967295u, 4294967295u));
}

