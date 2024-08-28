struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

var<private> global1: array<Struct_2, 29>;

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(vec2<i32>(2147483647i, -68467i), vec3<i32>(-24531i, 33691i, -13477i), 4294967295u, vec4<u32>(27115u, 4294967295u, 47462u, 3483u)), Struct_4(vec2<i32>(-4622i, i32(-2147483648)), vec3<i32>(1i, i32(-2147483648), 1i), 4294967295u, vec4<u32>(30791u, 4004u, 0u, 0u)), Struct_4(vec2<i32>(-1i, 0i), vec3<i32>(-1i, 2147483647i, -16512i), 68789u, vec4<u32>(6646u, 1u, 30116u, 14856u)), Struct_4(vec2<i32>(0i, 2147483647i), vec3<i32>(48621i, 15841i, 21976i), 17244u, vec4<u32>(45845u, 4294967295u, 1u, 1u)), Struct_4(vec2<i32>(20007i, 0i), vec3<i32>(-1i, 0i, -1i), 1u, vec4<u32>(0u, 20523u, 20575u, 0u)), Struct_4(vec2<i32>(0i, 68875i), vec3<i32>(2147483647i, 6992i, 33708i), 0u, vec4<u32>(0u, 4294967295u, 64533u, 4294967295u)), Struct_4(vec2<i32>(87129i, -16808i), vec3<i32>(2147483647i, 1i, i32(-2147483648)), 0u, vec4<u32>(37453u, 19112u, 0u, 0u)), Struct_4(vec2<i32>(0i, i32(-2147483648)), vec3<i32>(1i, 0i, -1i), 0u, vec4<u32>(21395u, 14884u, 4294967295u, 0u)), Struct_4(vec2<i32>(97528i, -6928i), vec3<i32>(-32397i, -1i, -1i), 53071u, vec4<u32>(26562u, 0u, 4294967295u, 96474u)), Struct_4(vec2<i32>(-1i, -1i), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), 49931u, vec4<u32>(10023u, 4294967295u, 1u, 0u)), Struct_4(vec2<i32>(1i, -37651i), vec3<i32>(-7225i, -10512i, 2147483647i), 0u, vec4<u32>(4294967295u, 28691u, 4294967295u, 1u)), Struct_4(vec2<i32>(26020i, -20879i), vec3<i32>(i32(-2147483648), 11i, i32(-2147483648)), 73033u, vec4<u32>(28254u, 33318u, 104283u, 0u)), Struct_4(vec2<i32>(i32(-2147483648), 1i), vec3<i32>(0i, 0i, 118132i), 47805u, vec4<u32>(73922u, 42222u, 50291u, 7316u)), Struct_4(vec2<i32>(21030i, 55989i), vec3<i32>(i32(-2147483648), -1i, -7192i), 67010u, vec4<u32>(1u, 1u, 85530u, 4294967295u)), Struct_4(vec2<i32>(0i, 0i), vec3<i32>(-16958i, -13415i, 9155i), 0u, vec4<u32>(1u, 23976u, 4294967295u, 33278u)), Struct_4(vec2<i32>(1i, 0i), vec3<i32>(0i, 1i, 2147483647i), 1u, vec4<u32>(10993u, 26632u, 4294967295u, 1u)), Struct_4(vec2<i32>(-19264i, -30173i), vec3<i32>(1i, -1i, 2147483647i), 0u, vec4<u32>(0u, 9975u, 22641u, 1u)), Struct_4(vec2<i32>(65645i, 2147483647i), vec3<i32>(-10715i, -2864i, -17448i), 1u, vec4<u32>(46971u, 21837u, 23373u, 55510u)), Struct_4(vec2<i32>(-1i, 26051i), vec3<i32>(i32(-2147483648), 1i, 21712i), 0u, vec4<u32>(49065u, 4294967295u, 4294967295u, 4294967295u)), Struct_4(vec2<i32>(8610i, 1i), vec3<i32>(1i, 0i, 18333i), 4639u, vec4<u32>(4294967295u, 52935u, 87432u, 53396u)), Struct_4(vec2<i32>(2147483647i, -9124i), vec3<i32>(35463i, -6060i, -6948i), 0u, vec4<u32>(70593u, 7292u, 47977u, 4294967295u)), Struct_4(vec2<i32>(-52810i, 15260i), vec3<i32>(i32(-2147483648), 0i, 43203i), 1u, vec4<u32>(4294967295u, 4294967295u, 36696u, 9016u)), Struct_4(vec2<i32>(1i, -14402i), vec3<i32>(-11585i, -56096i, -77204i), 1u, vec4<u32>(0u, 4294967295u, 1647u, 18599u)), Struct_4(vec2<i32>(-1i, 0i), vec3<i32>(-31333i, -1i, -58969i), 0u, vec4<u32>(0u, 0u, 42434u, 7861u)), Struct_4(vec2<i32>(2147483647i, 1i), vec3<i32>(-59681i, 0i, -350i), 20089u, vec4<u32>(38577u, 26163u, 4294967295u, 1u)), Struct_4(vec2<i32>(0i, -1i), vec3<i32>(-42213i, -28818i, 1i), 71984u, vec4<u32>(63261u, 6926u, 40397u, 17955u)), Struct_4(vec2<i32>(3669i, -48906i), vec3<i32>(-101343i, -1633i, -1i), 11213u, vec4<u32>(1u, 10397u, 31398u, 7639u)), Struct_4(vec2<i32>(0i, -1i), vec3<i32>(14527i, 1i, 1i), 13122u, vec4<u32>(0u, 1u, 41687u, 43110u)), Struct_4(vec2<i32>(-23764i, -32906i), vec3<i32>(33314i, -29722i, -1i), 4294967295u, vec4<u32>(41420u, 54542u, 84083u, 72074u)));

var<private> global4: vec3<f32> = vec3<f32>(-1000f, -793f, -156f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = global2.x;
    var_0 = all(!(!(!vec4<bool>(global2.x, global2.x, false, false))));
    let var_1 = Struct_1(vec4<i32>(arg_1.a.x, (22341i | _wgslsmith_dot_vec3_i32(arg_1.a.zxx, vec3<i32>(arg_0, arg_1.c.x, arg_0))) << (1u % 32u), -890i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, arg_1.a.x, -8209i), -u_input.b.yzx), ~abs(vec3<i32>(arg_0, arg_0, 1i)))), abs(u_input.b.yyx), ~firstTrailingBit(reverseBits(-vec3<i32>(2147483647i, arg_0, arg_1.b.x))), vec3<bool>(true || !global2.x, !select(true, arg_1.d.x, all(arg_1.d)), arg_1.d.x));
    global3 = array<Struct_4, 29>();
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(u_input.a.x), 14u)] >> (u_input.a.x % 32u), 14u)]), 29u)];
    return (4294967295u ^ _wgslsmith_mult_u32(var_2.a.x, reverseBits(global0[_wgslsmith_index_u32(1u, 14u)]))) & 4294967295u;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: bool) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(1u, 14u)], 0u | global0[_wgslsmith_index_u32(func_3(arg_1.a.x, Struct_1(vec4<i32>(2147483647i, -30073i, arg_1.a.x, u_input.b.x), vec3<i32>(arg_0.x, 1i, -31080i), vec3<i32>(arg_1.b.x, u_input.b.x, 2147483647i), vec3<bool>(false, global2.x, true))), 14u)])), ~abs(arg_1.c), select(~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~u_input.a.x, 14u)], ~global0[_wgslsmith_index_u32(1u, 14u)]), 0u, any(select(!vec4<bool>(arg_2, arg_2, true, global2.x), vec4<bool>(false, true, false, arg_2), !arg_2)))), 29u)];
    var var_1 = global4.xz;
    var var_2 = Struct_2(arg_1.d.wy, var_0.c.d, Struct_1(min(_wgslsmith_mult_vec4_i32(u_input.b, ~u_input.b), -u_input.b & _wgslsmith_div_vec4_i32(vec4<i32>(1i, 2147483647i, -5642i, arg_0.x), vec4<i32>(45473i, u_input.b.x, var_0.c.c.x, 1i))), firstLeadingBit(arg_1.b) >> (vec3<u32>(4294967295u, ~global0[_wgslsmith_index_u32(var_0.a.x, 14u)], firstLeadingBit(global0[_wgslsmith_index_u32(72138u, 14u)])) % vec3<u32>(32u)), var_0.c.a.yxx, var_0.c.d), var_0.c.d.x & all(var_0.b.zy));
    var var_3 = -351f;
    var var_4 = ~(~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 85425u, global0[_wgslsmith_index_u32(var_0.a.x, 14u)], 52425u), vec4<u32>(25211u, 1u, 4294967295u, u_input.a.x) & vec4<u32>(97431u, u_input.a.x, 0u, 4294967295u)), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24553u, 14u)], 14u)], _wgslsmith_mod_u32(u_input.a.x, 0u), ~u_input.a.x, arg_1.c)));
    return 662f;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_2) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(func_2(arg_2.c.b, Struct_4(vec2<i32>(arg_2.c.c.x, u_input.b.x), vec3<i32>(arg_2.c.b.x, -48354i, arg_2.c.c.x), 19550u, vec4<u32>(arg_2.a.x, arg_2.a.x, 0u, u_input.a.x)), global2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -179f))))));
    let var_1 = global1[_wgslsmith_index_u32(94889u, 29u)];
    let var_2 = ~(_wgslsmith_clamp_vec2_u32(var_1.a, _wgslsmith_mult_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(1u, 14u)]), ~vec2<u32>(30976u, arg_2.a.x)), u_input.a.zz) >> (vec2<u32>(0u, abs(var_1.a.x)) % vec2<u32>(32u)));
    global3 = array<Struct_4, 29>();
    global1 = array<Struct_2, 29>();
    return vec4<i32>(~u_input.b.x, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-2147483647i, arg_2.c.a.x)) & vec2<i32>(arg_0.x, _wgslsmith_sub_i32(-1i, 2478i)), abs(u_input.b.yz)), arg_0.x << (global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 14u)] % 32u), -14640i);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>) -> vec3<bool> {
    global3 = array<Struct_4, 29>();
    let var_0 = Struct_3(_wgslsmith_dot_vec3_u32((_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(0u, arg_1.a.x, 1u)) >> ((vec3<u32>(global0[_wgslsmith_index_u32(arg_1.a.x, 14u)], u_input.a.x, 1u) ^ vec3<u32>(global0[_wgslsmith_index_u32(40687u, 14u)], global0[_wgslsmith_index_u32(38050u, 14u)], u_input.a.x)) % vec3<u32>(32u))) & u_input.a, ~(~u_input.a)), global4.x, select(!(!(!vec4<bool>(global2.x, arg_1.c.d.x, true, global2.x))), !(!(!vec4<bool>(false, true, arg_1.c.d.x, false))), all(!vec3<bool>(arg_1.c.d.x, false, false))));
    global2 = vec3<bool>(global2.x, global2.x, true | all(!(!vec4<bool>(false, var_0.c.x, var_0.c.x, arg_1.c.d.x))));
    global0 = array<u32, 14>();
    global2 = select(!arg_1.c.d, select(vec3<bool>(true, arg_2.x >= arg_1.c.a.x, all(var_0.c)), select(!vec3<bool>(false, global2.x, arg_1.c.d.x), !select(arg_1.b, arg_1.b, var_0.c.xzz), any(select(arg_1.c.d, var_0.c.yxy, vec3<bool>(true, var_0.c.x, true)))), !var_0.c.zxx), vec3<bool>(any(var_0.c), false, select(global2.x, true, true)));
    return vec3<bool>(arg_1.b.x, var_0.c.x, !global2.x);
}

fn func_5(arg_0: vec3<bool>) -> vec4<i32> {
    var var_0 = Struct_4(vec2<i32>(abs(abs(u_input.b.x)) << (max(4060u << (global0[_wgslsmith_index_u32(u_input.a.x, 14u)] % 32u), ~global0[_wgslsmith_index_u32(u_input.a.x, 14u)]) % 32u), u_input.b.x), vec3<i32>(_wgslsmith_div_i32(u_input.b.x ^ u_input.b.x, u_input.b.x) << (~reverseBits(1u) % 32u), -u_input.b.x, _wgslsmith_mod_i32(~u_input.b.x, u_input.b.x)), 1u, vec4<u32>(_wgslsmith_mod_u32(~select(u_input.a.x, 4294967295u, global2.x), _wgslsmith_add_u32(128994u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)])), 124563u, ~13193u, 0u));
    global1 = array<Struct_2, 29>();
    global3 = array<Struct_4, 29>();
    let var_1 = ~u_input.b.x;
    global1 = array<Struct_2, 29>();
    return abs(vec4<i32>(abs(firstLeadingBit(u_input.b.x)), _wgslsmith_div_i32(~(-1i), ~var_1), i32(-1i) * -77330i, var_1)) | reverseBits(select(vec4<i32>(_wgslsmith_add_i32(u_input.b.x, var_1), -u_input.b.x, _wgslsmith_sub_i32(var_1, u_input.b.x), reverseBits(-2147483647i)), u_input.b, vec4<bool>(true, all(arg_0.zx), !global2.x, any(arg_0.yz))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -func_5(func_4(-26547i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(15678u, 1u, global0[_wgslsmith_index_u32(17671u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)]), vec4<u32>(16740u, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 0u, 4294967295u) | vec4<u32>(u_input.a.x, 22724u, u_input.a.x, u_input.a.x)), 29u)], max(u_input.b, func_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec3<f32>(global4.x, global4.x, -373f), Struct_2(vec2<u32>(25471u, 96u), vec3<bool>(false, global2.x, true), Struct_1(u_input.b, u_input.b.wyx, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<bool>(global2.x, false, global2.x)), false)))));
    let var_1 = ~(firstTrailingBit(_wgslsmith_div_vec3_u32(u_input.a, u_input.a)) & ~vec3<u32>(40255u, 30075u, global0[_wgslsmith_index_u32(15501u, 14u)])) | max(vec3<u32>(func_3(_wgslsmith_dot_vec3_i32(var_0.zxz, var_0.wwx), Struct_1(vec4<i32>(u_input.b.x, -1i, 38863i, -18805i), vec3<i32>(0i, 2147483647i, var_0.x), vec3<i32>(20576i, u_input.b.x, 16558i), vec3<bool>(global2.x, global2.x, true))), 48457u, u_input.a.x), vec3<u32>(8172u, ~74365u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32130u, 14u)], 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)])) >> (~vec3<u32>(u_input.a.x, 25701u, 3379u) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.x, global4.x, global4.x, global4.x), vec4<f32>(941f, global4.x, global4.x, 1000f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.x, global4.x, -260f, global4.x))), !vec4<bool>(true, global2.x, global2.x, false))) * _wgslsmith_div_vec4_f32(vec4<f32>(-747f, global4.x, 617f, -1033f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(581f, global4.x, 865f, global4.x))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(870f, 212f, 1008f, 1000f) * vec4<f32>(global4.x, global4.x, 406f, 459f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, -385f, global4.x, 103f) + vec4<f32>(global4.x, 437f, -2330f, 961f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global4.x, 510f, global4.x, 498f)))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, -1000f, global4.x, global4.x) * vec4<f32>(1550f, global4.x, global4.x, -472f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.x, -1000f, -1833f, 602f), vec4<f32>(global4.x, 1185f, global4.x, 2656f), global2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 104f, -1792f, 1000f))), global2.x))));
    global0 = array<u32, 14>();
    global1 = array<Struct_2, 29>();
    global4 = var_2.wxw;
    let var_3 = abs(countOneBits(~(~max(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43679u, 14u)], 14u)], var_1.x, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec4<u32>(31350u, u_input.a.x, 45364u, 0u)))));
    var var_4 = Struct_3(var_3.x, var_2.x, !select(select(select(vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(global2.x, global2.x, true, false)), select(vec4<bool>(global2.x, false, true, false), vec4<bool>(false, global2.x, true, global2.x), vec4<bool>(true, true, true, true)), !global2.x), select(!vec4<bool>(true, true, global2.x, true), select(vec4<bool>(global2.x, global2.x, true, true), vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(global2.x, global2.x, false, global2.x)), global2.x), false));
    let var_5 = Struct_2(vec2<u32>(42601u, 47344u), var_4.c.yzy, Struct_1(_wgslsmith_clamp_vec4_i32(u_input.b >> ((var_3 | var_3) % vec4<u32>(32u)), var_0, func_5(vec3<bool>(true, true, var_4.c.x))), vec3<i32>(~var_0.x, ~var_0.x, var_0.x | 17774i) & ~firstTrailingBit(vec3<i32>(u_input.b.x, -1i, u_input.b.x)), countOneBits(u_input.b.xxz), !(!(!vec3<bool>(global2.x, true, true)))), false || !(60845u == _wgslsmith_add_u32(u_input.a.x, var_4.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-783f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1689f)))))), _wgslsmith_mult_u32(1u, 1u), global4.yy);
}

