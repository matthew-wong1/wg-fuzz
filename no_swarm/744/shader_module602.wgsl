struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(0u, 4294967295u, 1u, 75396u, 21039u, 1u);

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<f32>(-250f, 713f, -558f), vec2<f32>(-1000f, 820f), -839f), Struct_1(vec3<f32>(2310f, 1389f, 208f), vec2<f32>(-1000f, 937f), -277f), Struct_1(vec3<f32>(2103f, 744f, 744f), vec2<f32>(-1784f, -234f), -114f), Struct_1(vec3<f32>(729f, -1000f, -1000f), vec2<f32>(-1619f, -967f), -1766f));

var<private> global2: u32 = 0u;

var<private> global3: array<f32, 29> = array<f32, 29>(471f, 1083f, 266f, -358f, 1680f, -1000f, -888f, -327f, -1000f, 518f, -150f, -351f, 540f, 577f, 1000f, 1347f, -2451f, 1437f, -956f, -722f, -1000f, 204f, 317f, 880f, 1260f, 248f, 1368f, 562f, 514f);

var<private> global4: array<vec3<u32>, 16>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    let var_0 = vec4<u32>(1u, ~20656u, u_input.b.x, global0[_wgslsmith_index_u32(max(u_input.c.x, ~u_input.c.x), 6u)] << (_wgslsmith_mod_u32(u_input.b.x, global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(4294967295u, global0[_wgslsmith_index_u32(71082u, 6u)], 4294967295u)), 6u)]) % 32u));
    let var_1 = var_0.zz;
    global0 = array<u32, 6>();
    let var_2 = abs(var_0.x);
    var var_3 = global1[_wgslsmith_index_u32(~min(global0[_wgslsmith_index_u32(3502u, 6u)], u_input.b.x << (84774u % 32u)), 4u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(24181u, ~(var_0.x << (1283u % 32u))), 29u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1253f) * _wgslsmith_f_op_f32(-var_3.b.x))));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global1 = array<Struct_1, 4>();
    var var_0 = 285f;
    global2 = ~(arg_1 >> (u_input.c.x % 32u));
    var var_1 = -u_input.a;
    global1 = array<Struct_1, 4>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_0.a.zy)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_0.a.x, global3[_wgslsmith_index_u32(72326u, 29u)]), _wgslsmith_f_op_f32(step(1145f, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1, 6u)], 29u)]))) * arg_0.a.xz)), _wgslsmith_f_op_f32(-148f + _wgslsmith_f_op_f32(func_3())));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = select(select(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, false))), vec3<bool>(true, true, true)), vec3<bool>(any(vec2<bool>(true, true)) & (351f >= arg_3.c), all(vec2<bool>(true, true)), arg_1.x < -2334i), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), all(vec3<bool>(true, true, true))), select(vec3<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false)), all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)))), vec3<bool>(any(vec3<bool>(true, false, false)), true, false), false));
    global1 = array<Struct_1, 4>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(arg_3.a, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-384f, -1000f, global3[_wgslsmith_index_u32(0u, 29u)])))))), vec2<f32>(func_2(global1[_wgslsmith_index_u32(1u, 4u)], 30951u).b.x, arg_3.b.x), 963f);
    let var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(select(_wgslsmith_div_vec3_u32(global4[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(arg_0.x, 6u)]), 16u)], _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, arg_0.x, 1u), u_input.b, global4[_wgslsmith_index_u32(4294967295u, 16u)])), u_input.b, all(!vec4<bool>(false, false, true, var_0.x))), reverseBits(_wgslsmith_mod_vec3_u32(select(vec3<u32>(arg_0.x, 12526u, arg_0.x), vec3<u32>(109147u, global0[_wgslsmith_index_u32(4294967295u, 6u)], 4294967295u), vec3<bool>(var_0.x, var_0.x, true)), global4[_wgslsmith_index_u32(arg_0.x, 16u)] | vec3<u32>(arg_0.x, 8628u, 57858u)))), max(vec3<u32>(_wgslsmith_div_u32(5380u, arg_0.x), global0[_wgslsmith_index_u32(4294967295u, 6u)] & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, arg_0.x), 6u)], 6u)], _wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(arg_0.x, 6u)], ~0u)), u_input.c.wxw));
    let var_3 = arg_2.b.x;
    return Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.b))))), 1474f);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = func_4(vec2<u32>(arg_1.x, _wgslsmith_mod_u32(~_wgslsmith_mult_u32(u_input.c.x, 4294967295u), min(102766u, u_input.b.x))), vec4<i32>(u_input.a, u_input.a ^ (_wgslsmith_dot_vec2_i32(vec2<i32>(36361i, -2147483647i), vec2<i32>(-40919i, u_input.a)) & ~u_input.a), countOneBits(~_wgslsmith_clamp_i32(u_input.a, u_input.a, -31137i)), u_input.a), Struct_1(vec3<f32>(arg_2.a.x, arg_3.c, _wgslsmith_f_op_f32(f32(-1f) * -1626f)), vec2<f32>(global3[_wgslsmith_index_u32(arg_1.x, 29u)], _wgslsmith_f_op_f32(-arg_3.b.x)), arg_3.c), func_2(arg_2, _wgslsmith_add_u32(~4294967295u, 6645u)));
    let var_1 = global1[_wgslsmith_index_u32(727u, 4u)];
    var var_2 = !vec4<bool>(!arg_0.x != true, !all(!vec4<bool>(false, arg_0.x, arg_0.x, false)), arg_0.x, true);
    global1 = array<Struct_1, 4>();
    global1 = array<Struct_1, 4>();
    return 86714u;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: vec2<u32>) -> StorageBuffer {
    var var_0 = !(!all(vec3<bool>(true, true, true)));
    let var_1 = vec4<i32>(~(-u_input.a), _wgslsmith_add_i32(-1i, u_input.a >> (~(~arg_2.x) % 32u)), ~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a, -1i, u_input.a) << (vec3<u32>(37619u, arg_2.x, arg_2.x) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(50137i, -2147483647i, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.a, 0i, 1i)), 2147483647i, firstLeadingBit(u_input.a))), min(u_input.a, i32(-1i) * -2147483647i));
    var var_2 = abs(vec2<i32>(~select(0i, ~1078i, true), -53823i));
    let var_3 = 27710u;
    var_0 = all(select(vec3<bool>(false, false, !any(vec4<bool>(false, false, false, false))), vec3<bool>(true, true, true), true));
    return StorageBuffer(vec4<i32>(19625i, ~_wgslsmith_mult_i32(u_input.a, _wgslsmith_div_i32(1i, -1i)), ~var_2.x, var_1.x), ~0u << ((min(24110u | u_input.b.x, u_input.b.x) ^ (~global0[_wgslsmith_index_u32(51272u, 6u)] ^ _wgslsmith_sub_u32(72804u, global0[_wgslsmith_index_u32(arg_2.x, 6u)]))) % 32u), u_input.c.yyw, u_input.c, _wgslsmith_f_op_f32(-arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b.x;
    let var_1 = countOneBits(max(~(~(u_input.c | vec4<u32>(99505u, var_0, 6584u, var_0))), u_input.c));
    global3 = array<f32, 29>();
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 6u)], 6u)], ~var_1.x) ^ ((0u ^ (2838u | _wgslsmith_dot_vec4_u32(vec4<u32>(45207u, 36278u, 1u, 0u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], global0[_wgslsmith_index_u32(var_0, 6u)], u_input.b.x, 1u)))) << (var_1.x % 32u)), 29u)];
    global0 = array<u32, 6>();
    global1 = array<Struct_1, 4>();
    var var_3 = global1[_wgslsmith_index_u32(var_1.x, 4u)];
    let x = u_input.a;
    s_output = func_5(var_3.a, _wgslsmith_f_op_vec2_f32(exp2(var_3.b)), vec2<u32>(50565u, ~(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3646u, 6u)], 6u)]), 6u)] >> (global0[_wgslsmith_index_u32(func_1(vec3<bool>(true, true, false), vec2<u32>(global0[_wgslsmith_index_u32(1304u, 6u)], global0[_wgslsmith_index_u32(5496u, 6u)]), global1[_wgslsmith_index_u32(0u, 4u)], Struct_1(vec3<f32>(global3[_wgslsmith_index_u32(16267u, 29u)], var_3.c, -1299f), var_3.a.xy, 252f)), 6u)] % 32u))));
}

