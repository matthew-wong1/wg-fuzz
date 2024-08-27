struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(2098i, 0i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1363i, 0i), vec2<i32>(2147483647i, -1i), vec2<i32>(-8062i, -15440i), vec2<i32>(-1i, 13804i), vec2<i32>(0i, 34412i), vec2<i32>(0i, 0i), vec2<i32>(1i, 2147483647i), vec2<i32>(2147483647i, -38366i), vec2<i32>(1i, -19796i), vec2<i32>(1i, -4977i), vec2<i32>(-1i, -70151i), vec2<i32>(-94824i, 11999i), vec2<i32>(0i, -1i), vec2<i32>(0i, 2147483647i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(28159i, -1i), vec2<i32>(27284i, -37827i), vec2<i32>(10035i, 0i), vec2<i32>(-2130i, 1i), vec2<i32>(-1i, -1i), vec2<i32>(-36856i, -1i), vec2<i32>(14973i, 2147483647i), vec2<i32>(0i, -1i), vec2<i32>(-1i, -1i), vec2<i32>(11093i, -42364i), vec2<i32>(43585i, 24037i), vec2<i32>(i32(-2147483648), 2147483647i));

var<private> global1: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(4294967295u, 4294967295u, 10724u), vec3<u32>(52318u, 0u, 1u), vec3<u32>(1u, 5697u, 38345u), vec3<u32>(21436u, 41241u, 0u), vec3<u32>(36683u, 93998u, 48763u), vec3<u32>(4294967295u, 4294967295u, 0u));

var<private> global2: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(-3477i, -28152i, vec3<bool>(false, true, false)), vec4<i32>(2147483647i, -1i, -68021i, 35098i), vec3<i32>(-80078i, -44487i, 27557i), vec4<u32>(72574u, 0u, 1u, 0u)), Struct_2(Struct_1(-41021i, 20321i, vec3<bool>(true, true, true)), vec4<i32>(1i, 2147483647i, 0i, -20336i), vec3<i32>(i32(-2147483648), 956i, 1i), vec4<u32>(40614u, 0u, 62257u, 78970u)), Struct_2(Struct_1(i32(-2147483648), 14401i, vec3<bool>(false, false, true)), vec4<i32>(1463i, i32(-2147483648), 49525i, 0i), vec3<i32>(2147483647i, -5128i, 0i), vec4<u32>(1u, 0u, 29534u, 4294967295u)), Struct_2(Struct_1(32221i, -8951i, vec3<bool>(true, true, false)), vec4<i32>(-4255i, 2438i, 2147483647i, 47641i), vec3<i32>(2147483647i, 9651i, 2147483647i), vec4<u32>(1u, 1u, 17858u, 0u)), Struct_2(Struct_1(-2244i, 35048i, vec3<bool>(true, false, true)), vec4<i32>(i32(-2147483648), 1604i, 55i, -38672i), vec3<i32>(-54034i, 2147483647i, 1i), vec4<u32>(1u, 29475u, 1u, 1u)), Struct_2(Struct_1(39416i, -1i, vec3<bool>(false, true, true)), vec4<i32>(-20458i, -1i, 1i, 1i), vec3<i32>(0i, -15741i, 53429i), vec4<u32>(18064u, 51406u, 59918u, 1u)));

var<private> global3: Struct_1 = Struct_1(-1i, 1i, vec3<bool>(true, false, true));

var<private> global4: array<f32, 4>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> Struct_1 {
    global1 = array<vec3<u32>, 6>();
    global1 = array<vec3<u32>, 6>();
    global0 = array<vec2<i32>, 29>();
    var var_0 = global2[_wgslsmith_index_u32(1u, 6u)];
    var var_1 = true;
    return var_0.a;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_sub_i32(-min(firstLeadingBit(global3.b), -15279i), ~(global3.b | 1i)), -2147483647i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(48408u, 4294967295u), 4u)] - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-182f, global4[_wgslsmith_index_u32(4294967295u, 4u)])))))));
}

fn func_4(arg_0: u32, arg_1: f32) -> Struct_1 {
    global4 = array<f32, 4>();
    var var_0 = Struct_1(func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -464f), arg_1)), select(!select(vec4<bool>(false, global3.c.x, global3.c.x, true), vec4<bool>(global3.c.x, global3.c.x, global3.c.x, global3.c.x), vec4<bool>(global3.c.x, global3.c.x, global3.c.x, true)), select(select(vec4<bool>(false, global3.c.x, global3.c.x, global3.c.x), vec4<bool>(global3.c.x, false, true, global3.c.x), vec4<bool>(global3.c.x, global3.c.x, false, global3.c.x)), !vec4<bool>(global3.c.x, false, true, global3.c.x), vec4<bool>(false, global3.c.x, global3.c.x, global3.c.x)), false)).a, global3.b << (85218u % 32u), vec3<bool>(!any(select(vec2<bool>(false, false), global3.c.yx, global3.c.xy)), !(func_2(-142f, vec4<bool>(false, true, true, global3.c.x)).c.x | any(vec2<bool>(global3.c.x, global3.c.x))), global3.c.x == any(global3.c.yz)));
    global4 = array<f32, 4>();
    let var_1 = Struct_3(global3.c.xx, Struct_2(func_2(_wgslsmith_f_op_f32(func_3(!global3.c.yy, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 33796u), vec2<u32>(4294967295u, arg_0), vec2<u32>(1u, arg_0)))), select(vec4<bool>(false, false, var_0.c.x, var_0.c.x), select(vec4<bool>(global3.c.x, global3.c.x, var_0.c.x, var_0.c.x), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), global3.c.x), !vec4<bool>(false, true, false, var_0.c.x))), _wgslsmith_add_vec4_i32(-vec4<i32>(global3.a, 0i, -2147483647i, -2147483647i), _wgslsmith_add_vec4_i32(min(vec4<i32>(0i, var_0.b, 1i, 1i), vec4<i32>(1i, global3.a, global3.b, var_0.b)), vec4<i32>(49214i, 1i, -2147483647i, -1i))), vec3<i32>(global3.a, -15787i, global3.b), select(reverseBits(vec4<u32>(0u, 1u, 4294967295u, arg_0)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, arg_0, 0u, u_input.a), vec4<u32>(1u, arg_0, arg_0, u_input.a)) ^ vec4<u32>(0u, u_input.a, u_input.a, u_input.a), _wgslsmith_f_op_f32(trunc(-561f)) > _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_0, 4u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(min(422f, 521f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 4u)]))), arg_1)), var_0.c);
    var var_2 = 26522u;
    return func_2(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(var_1.c.x * global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(var_1.b.d), _wgslsmith_clamp_vec4_u32(var_1.b.d, var_1.b.d, var_1.b.d)), 4u)])), select(!select(select(vec4<bool>(global3.c.x, true, var_0.c.x, global3.c.x), vec4<bool>(false, global3.c.x, var_1.b.a.c.x, true), true), !vec4<bool>(global3.c.x, var_0.c.x, global3.c.x, false), var_1.a.x), vec4<bool>((global4[_wgslsmith_index_u32(40731u, 4u)] < -1000f) | (var_1.c.x >= global4[_wgslsmith_index_u32(0u, 4u)]), !(var_0.c.x != true), _wgslsmith_div_f32(arg_1, arg_1) != _wgslsmith_f_op_f32(round(var_1.c.x)), true), var_0.c.x));
}

fn func_1() -> Struct_2 {
    global3 = func_2(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~u_input.a, 4u)]), select(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(global3.c.x, true, false, global3.c.x), global3.c.x), vec4<bool>(true, false, true, true), 4294967295u == u_input.a), select(!(!vec4<bool>(global3.c.x, false, global3.c.x, false)), vec4<bool>(all(vec3<bool>(global3.c.x, global3.c.x, global3.c.x)), !global3.c.x, !global3.c.x, global3.c.x), vec4<bool>(global3.c.x && false, global3.c.x, global3.c.x, u_input.a != 1u)), select(vec4<bool>(!global3.c.x, false, true, all(global3.c.yz)), !select(vec4<bool>(true, global3.c.x, global3.c.x, true), vec4<bool>(false, true, global3.c.x, true), global3.c.x), any(!global3.c.yy))));
    var var_0 = Struct_3(global3.c.xy, Struct_2(func_4(20600u, _wgslsmith_f_op_f32(func_3(vec2<bool>(global3.c.x, global3.c.x), _wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 32261u))))), -vec4<i32>(~global3.b, _wgslsmith_add_i32(-8239i, 32241i), global3.a, 2147483647i), _wgslsmith_div_vec3_i32(-firstTrailingBit(vec3<i32>(-1i, 19666i, global3.b)), max(countOneBits(vec3<i32>(global3.a, global3.b, -13926i)), -vec3<i32>(-1i, global3.a, -25279i))), ~(vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.a) << (vec4<u32>(0u, 4294967295u, 0u, u_input.a) % vec4<u32>(32u))) >> ((~vec4<u32>(u_input.a, 0u, 35490u, u_input.a) >> (max(vec4<u32>(1u, u_input.a, 48184u, 0u), vec4<u32>(21369u, u_input.a, 21036u, u_input.a)) % vec4<u32>(32u))) % vec4<u32>(32u))), vec3<f32>(-2233f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(select(~u_input.a, ~u_input.a, false), 4u)] - global4[_wgslsmith_index_u32(0u, 4u)]), _wgslsmith_f_op_f32(func_3(global3.c.zz, vec2<u32>(u_input.a, 34899u)))), !(!vec3<bool>(global3.c.x, !global3.c.x, !global3.c.x)));
    global3 = var_0.b.a;
    global0 = array<vec2<i32>, 29>();
    var var_1 = global1[_wgslsmith_index_u32(reverseBits(max(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 28440u, 1u), var_0.b.d.zxy), firstLeadingBit(54379u))), 6u)] & min(_wgslsmith_div_vec3_u32(vec3<u32>(32914u, firstTrailingBit(31082u), ~1u), ~var_0.b.d.yzw ^ _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 113267u, 1u), vec3<u32>(u_input.a, 1u, 4294967295u))), vec3<u32>(_wgslsmith_add_u32(~u_input.a, ~var_0.b.d.x), var_0.b.d.x, ~countOneBits(var_0.b.d.x)));
    return Struct_2(Struct_1(_wgslsmith_add_i32(~(-1i), var_0.b.c.x), -62069i, !vec3<bool>(true, global3.c.x != true, global3.c.x)), firstLeadingBit(var_0.b.b), vec3<i32>(1i, ~_wgslsmith_div_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(10347i, var_0.b.c.x), var_0.b.c.yy)), max(~global3.a, countOneBits(-12115i))), ~var_0.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 6>();
    let var_0 = global3.c.x;
    var var_1 = Struct_3(select(select(!select(vec2<bool>(global3.c.x, global3.c.x), vec2<bool>(false, true), global3.c.zz), select(!global3.c.xy, global3.c.xz, !global3.c.x), vec2<bool>(!global3.c.x, global3.c.x)), select(vec2<bool>(false, u_input.a >= 11921u), global3.c.zx, false), !(global3.c.x & true)), func_1(), vec3<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.a, 4u)]), 2353f, global4[_wgslsmith_index_u32(~31613u, 4u)]), func_4(~(~u_input.a) ^ min(_wgslsmith_clamp_u32(u_input.a, u_input.a, 42520u), ~u_input.a), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(59163u, func_1().d.x, ~u_input.a), ~global1[_wgslsmith_index_u32(10484u, 6u)] << (~vec3<u32>(0u, 69475u, u_input.a) % vec3<u32>(32u))), 4u)]).c);
    global3 = var_1.b.a;
    global1 = array<vec3<u32>, 6>();
    var var_2 = func_1();
    let var_3 = var_1.c;
    let var_4 = _wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(var_1.b.b << (~var_2.d % vec4<u32>(32u)), vec4<i32>(var_1.b.c.x, var_2.c.x >> (1u % 32u), 54055i, ~global3.b)), ~_wgslsmith_mod_i32(var_2.c.x, var_2.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, vec2<u32>(_wgslsmith_mult_u32(abs(reverseBits(6469u)), max(var_1.b.d.x, var_1.b.d.x)), u_input.a), var_1.c.yz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) + _wgslsmith_f_op_f32(1000f + var_3.x)) + _wgslsmith_f_op_f32(f32(-1f) * -763f)) - _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(var_1.b.d.x, 4u)])), -1i);
}

