struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(4294967295u, 1u, 1u, 5688u, 4294967295u, 12408u, 52673u, 4294967295u, 0u, 43985u, 18246u, 15690u, 1u, 0u, 38124u, 6473u, 31309u, 30775u, 4294967295u, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(866f)))) + -2341f), _wgslsmith_dot_vec3_u32(vec3<u32>(13131u, 21293u, 1u), vec3<u32>(u_input.a, u_input.c, global0[_wgslsmith_index_u32(23292u, 20u)])) << (_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)] ^ 38274u, 0u) % 32u), vec2<bool>(all(vec4<bool>(false, false, false, true)), !all(vec2<bool>(false, true)))), 1i, any(vec2<bool>(true, true)), vec2<u32>(u_input.c, u_input.b.x));
    var var_1 = var_0.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2368f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_div_f32(-1157f, 1881f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a.a, 2091f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(287f, 1367f)), select(vec2<bool>(true, false), vec2<bool>(true, false), var_1.c.x))))))));
    var var_3 = var_0.a.a;
    let var_4 = var_0;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)), 9071u, vec2<bool>(true, 952f != var_1.a));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> Struct_2 {
    let var_0 = u_input.d.x ^ abs(u_input.d.x);
    let var_1 = select(abs(vec4<i32>(-1i) * -vec4<i32>(-14042i, 39443i, arg_2, u_input.d.x)), firstTrailingBit(select(-_wgslsmith_div_vec4_i32(vec4<i32>(-104807i, var_0, 1i, arg_0.x), vec4<i32>(u_input.d.x, -26413i, var_0, -45740i)), ~vec4<i32>(var_0, 7692i, 2147483647i, arg_2) << (vec4<u32>(50730u, 27100u, 76063u, global0[_wgslsmith_index_u32(57919u, 20u)]) % vec4<u32>(32u)), select(vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, false), select(vec4<bool>(false, true, arg_1.c.x, true), vec4<bool>(true, true, arg_1.c.x, true), arg_1.c.x), vec4<bool>(false, arg_1.c.x, true, arg_1.c.x)))), (1f >= arg_1.a) & ((max(arg_0.x, 1i) <= ~arg_2) | true));
    global0 = array<u32, 20>();
    let var_2 = -vec2<i32>(~(-min(-2663i, -38876i)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.d.x, 36292i), var_1.yx, arg_1.c.x) >> (_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(11732u, arg_1.b)) % vec2<u32>(32u)), u_input.d.zx));
    let var_3 = ~_wgslsmith_sub_u32(~_wgslsmith_sub_u32(arg_1.b, arg_1.b << (25876u % 32u)), ~92607u);
    return Struct_2(arg_1, ~(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, var_0, -6274i), u_input.d) >> (global0[_wgslsmith_index_u32(var_3, 20u)] % 32u)), !(any(!vec3<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x)) & all(vec2<bool>(false, true))), vec2<u32>(~(~global0[_wgslsmith_index_u32(4294967295u, 20u)] << (~65144u % 32u)), ~global0[_wgslsmith_index_u32(reverseBits(4294967295u), 20u)]));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec2<f32>) -> vec2<bool> {
    var var_0 = vec3<bool>(arg_0.c, select(true, true, all(vec4<bool>(true, true, true, true))), all(select(!(!vec4<bool>(arg_1.e.c.x, true, arg_0.a.c.x, false)), vec4<bool>(!arg_0.c, any(vec4<bool>(true, arg_0.c, arg_0.c, false)), arg_0.a.c.x, arg_1.d.c), !(!vec4<bool>(arg_0.c, true, false, false)))));
    let var_1 = (6672i << (global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.d.a.b, _wgslsmith_mod_u32(u_input.a, 9158u)), 20u)], 20u)] % 32u)) <= abs(firstLeadingBit(_wgslsmith_mult_i32(19972i, _wgslsmith_dot_vec3_i32(arg_1.a, arg_1.a))));
    global0 = array<u32, 20>();
    global0 = array<u32, 20>();
    var var_2 = arg_1;
    return vec2<bool>(any(!vec2<bool>(true, !var_1)), _wgslsmith_sub_i32(~u_input.d.x << (arg_1.b.b % 32u), -_wgslsmith_dot_vec3_i32(u_input.d, var_2.a)) >= arg_1.a.x);
}

fn func_5(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> Struct_3 {
    global0 = array<u32, 20>();
    global0 = array<u32, 20>();
    global0 = array<u32, 20>();
    var var_0 = 1u;
    let var_1 = _wgslsmith_add_vec3_i32(max(vec3<i32>(u_input.d.x, ~(-u_input.d.x), u_input.d.x), vec3<i32>(i32(-1i) * -u_input.d.x, 1i, u_input.d.x)), _wgslsmith_add_vec3_i32(~(-vec3<i32>(u_input.d.x, u_input.d.x, -1447i)), u_input.d) >> (~abs(vec3<u32>(arg_2.b, 1u, 41347u)) % vec3<u32>(32u)));
    return Struct_3(u_input.d, arg_2, false, func_3(~min(vec2<i32>(-34120i, u_input.d.x), var_1.yy), Struct_1(arg_3, ~4294967295u, !(!arg_2.c)), firstTrailingBit(u_input.d.x >> (arg_2.b % 32u)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9492u, 20u)], 20u)]), arg_2);
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = func_5(select(func_4(func_3(vec2<i32>(-30794i, u_input.d.x) ^ vec2<i32>(u_input.d.x, u_input.d.x), func_2(u_input.d), u_input.d.x | -1i, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(15007u, 1u), 20u)], 20u)]), Struct_3(abs(u_input.d), Struct_1(arg_0, global0[_wgslsmith_index_u32(u_input.a, 20u)], vec2<bool>(false, false)), true, Struct_2(Struct_1(501f, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(78087u, 20u)], 20u)], vec2<bool>(false, false)), -1i, true, u_input.b), func_3(u_input.d.yx, Struct_1(-1008f, 73322u, vec2<bool>(true, true)), 31388i, 1u).a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-180f, arg_0))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, 340f), vec2<f32>(arg_0, arg_0), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, arg_0)))))), vec2<bool>(true, true), !func_4(Struct_2(Struct_1(arg_0, 48709u, vec2<bool>(true, false)), u_input.d.x, true, vec2<u32>(4294967295u, u_input.c)), Struct_3(u_input.d, Struct_1(arg_0, 4294967295u, vec2<bool>(false, false)), false, Struct_2(Struct_1(arg_0, 4294967295u, vec2<bool>(true, false)), -43671i, true, vec2<u32>(35304u, u_input.c)), Struct_1(1191f, 4294967295u, vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, -1579f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - vec2<f32>(587f, arg_0)))), select(all(vec4<bool>(false, true, false, false)) || true, true, !(u_input.a < global0[_wgslsmith_index_u32(4779u, 20u)])) && (true && all(vec3<bool>(true, true, true))), Struct_1(arg_0, _wgslsmith_dot_vec4_u32((vec4<u32>(u_input.b.x, 4294967295u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 20u)], 20u)], 20u)]) << (vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28733u, 20u)], 20u)], 20u)], 20u)], u_input.b.x, 9247u) % vec4<u32>(32u))) & ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26664u, 20u)], 20u)], 0u, u_input.a, 35993u), max(vec4<u32>(0u, 0u, u_input.a, global0[_wgslsmith_index_u32(9788u, 20u)]) | vec4<u32>(u_input.a, u_input.c, u_input.c, global0[_wgslsmith_index_u32(71853u, 20u)]), max(vec4<u32>(1u, global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48790u, 20u)], 20u)], 4563u), vec4<u32>(45363u, u_input.c, 4294967295u, u_input.c)))), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
    let var_1 = _wgslsmith_add_vec3_u32(~vec3<u32>(~(~var_0.e.b), max(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, var_0.d.d.x), 20u)], ~17677u), 1u | global0[_wgslsmith_index_u32(1u, 20u)]), select(~vec3<u32>(~global0[_wgslsmith_index_u32(var_0.e.b, 20u)], abs(global0[_wgslsmith_index_u32(10925u, 20u)]), ~32833u), _wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.b.b, 4294967295u, u_input.c), vec3<u32>(~8907u, _wgslsmith_mod_u32(u_input.c, global0[_wgslsmith_index_u32(19734u, 20u)]), abs(global0[_wgslsmith_index_u32(1u, 20u)]))), vec3<bool>(func_4(var_0.d, Struct_3(var_0.a, var_0.e, true, Struct_2(Struct_1(arg_0, 54324u, var_0.d.a.c), u_input.d.x, var_0.d.a.c.x, var_0.d.d), var_0.b), vec2<f32>(-793f, var_0.d.a.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-542f, 809f))).x, true & !var_0.d.c, !var_0.b.c.x && !var_0.d.a.c.x)));
    return _wgslsmith_div_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(66140u, ~var_1.x), 59505u ^ min(0u, global0[_wgslsmith_index_u32(13867u, 20u)])), 20u)], 14289u) | _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.yz, vec2<u32>(85989u, 24318u)), var_1.yx, ~u_input.b), _wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 20u)], 20u)], 4294967295u), func_5(vec2<bool>(var_0.e.c.x, true), var_0.c, Struct_1(-1549f, global0[_wgslsmith_index_u32(var_0.e.b, 20u)], vec2<bool>(true, var_0.e.c.x)), 788f).d.d), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(-reverseBits(vec4<i32>(u_input.d.x, 1i, 1i, u_input.d.x)) << (~vec4<u32>(global0[_wgslsmith_index_u32(12413u, 20u)], global0[_wgslsmith_index_u32(20953u, 20u)], u_input.c, 4294967295u) % vec4<u32>(32u)), vec4<i32>(-2147483647i, -24370i, u_input.d.x | _wgslsmith_sub_i32(u_input.d.x, u_input.d.x), u_input.d.x)), ~_wgslsmith_sub_u32(57771u, ~firstTrailingBit(4294967295u)), u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(firstLeadingBit(49406u), 20u)], u_input.b.x, ~(u_input.b.x >> (u_input.b.x % 32u))), vec3<u32>(u_input.b.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(36345u, u_input.a, u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 20u)], 20u)], 20181u)), func_1(_wgslsmith_f_op_f32(-1136f - 1850f)))), _wgslsmith_clamp_vec2_u32(u_input.b, ~u_input.b, u_input.b | countOneBits(abs(u_input.b))));
}

