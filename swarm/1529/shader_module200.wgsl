struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(-53419i, -66176i, -1i, i32(-2147483648), -49635i, -49640i, i32(-2147483648), -9455i, 9011i, 34732i, -9856i, 25069i, 1i, 2147483647i, 2147483647i, 0i, i32(-2147483648), i32(-2147483648), 2147483647i, 7374i, 0i, -29380i, -40876i, i32(-2147483648));

var<private> global1: array<i32, 5>;

var<private> global2: bool;

var<private> global3: array<i32, 9>;

var<private> global4: i32;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_div_f32(819f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1000f, -800f)), -1695f)) - _wgslsmith_f_op_f32(-1f)))));
    global1 = array<i32, 5>();
    var var_1 = _wgslsmith_div_vec3_i32(reverseBits(select(_wgslsmith_sub_vec3_i32(~vec3<i32>(-20612i, -17029i, u_input.c.x), vec3<i32>(global3[_wgslsmith_index_u32(u_input.b, 9u)], 4478i, global3[_wgslsmith_index_u32(u_input.b, 9u)])), select(-vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 5u)], global3[_wgslsmith_index_u32(1u, 9u)], 1i), vec3<i32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.b, 24u)], -46553i) | vec3<i32>(u_input.a.x, 1i, -1i), vec3<bool>(true, true, true)), vec3<bool>(any(vec2<bool>(false, true)), true, any(vec3<bool>(false, false, false))))), ~reverseBits(~(~vec3<i32>(u_input.c.x, 1i, -1i))));
    let var_2 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(34804u, u_input.b), vec2<u32>(u_input.b, 0u)) >> (50457u % 32u), ~_wgslsmith_div_u32(18287u, u_input.b)), firstLeadingBit(firstTrailingBit(~abs(vec3<u32>(u_input.b, u_input.b, u_input.b)))), abs(vec3<u32>(select(1u, countOneBits(840u), true), countOneBits(4294967295u), u_input.b)));
    let var_3 = Struct_4(u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0, -392f, -691f, -1225f))), vec4<f32>(var_0, -1505f, 133f, var_0)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(419f, 116f, var_0, var_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1361f, var_0, -250f, var_0))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2517f, -634f, var_0, -551f), vec4<f32>(-1663f, -276f, -1753f, var_0)))), vec4<bool>(select(false, true, true), true, var_1.x != u_input.a.x, true)))), abs(_wgslsmith_add_vec2_i32(u_input.c, vec2<i32>(1i, -2147483647i << (u_input.b % 32u)))), vec3<u32>(u_input.b, _wgslsmith_div_u32(0u, u_input.b >> (34145u % 32u)), _wgslsmith_clamp_u32(~21098u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, var_2.x), vec3<u32>(18093u, var_2.x, var_2.x)), ~var_2.x)) >> (var_2 % vec3<u32>(32u)), true);
    return var_3.b.wy;
}

fn func_4(arg_0: Struct_3) -> vec2<i32> {
    global3 = array<i32, 9>();
    global1 = array<i32, 5>();
    var var_0 = arg_0.a.wz;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_0.b.x, 789f) + vec3<f32>(arg_0.b.x, arg_0.b.x, -985f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(169f, 1000f, -631f), vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x))), select(arg_0.a.zxx, !arg_0.a.xwy, !arg_0.c.a)))), u_input.c, vec2<f32>(-390f, arg_0.b.x), arg_0.c.b);
    let var_2 = Struct_5(vec4<i32>(_wgslsmith_mult_i32(~var_1.b.x, min(min(36998i, 0i), _wgslsmith_clamp_i32(var_1.b.x, u_input.c.x, u_input.c.x))), global1[_wgslsmith_index_u32(~u_input.b, 5u)], _wgslsmith_div_i32(var_1.b.x, -global3[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.d.x, arg_0.d.x), 9u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(~global3[_wgslsmith_index_u32(0u, 9u)], abs(global0[_wgslsmith_index_u32(1u, 24u)]), -52789i), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(0u, 24u)], u_input.a.x, 2147483647i), -vec3<i32>(42347i, var_1.b.x, 1881i), vec3<i32>(global1[_wgslsmith_index_u32(arg_0.d.x, 5u)], 53689i, global3[_wgslsmith_index_u32(0u, 9u)])))), select(_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(7107u, u_input.b), 1u | arg_0.d.x), ~(~u_input.b)), select(min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.d.x), arg_0.d.yz), _wgslsmith_sub_u32(0u, 0u)), _wgslsmith_sub_u32(~4294967295u, arg_0.d.x), true), true), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d.x, 48950u << (u_input.b % 32u)), arg_0.d.zy | arg_0.d.yx));
    return _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -min(var_1.b, -var_1.b), vec2<i32>(min(~(~var_2.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(18125u, 24u)], var_1.b.x, -2147483647i), vec3<i32>(global3[_wgslsmith_index_u32(u_input.b, 9u)], u_input.a.x, global3[_wgslsmith_index_u32(var_2.c, 9u)])) & -1i), 27724i));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_5) -> vec3<f32> {
    var var_0 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 0u), arg_0.d.xz) >> ((arg_0.d.yy << (arg_0.d.zx % vec2<u32>(32u))) % vec2<u32>(32u)), ~vec2<u32>(17184u, 19229u) ^ arg_0.d.xx) | ~arg_0.d.zx;
    let var_1 = func_4(Struct_3(vec4<bool>(!any(vec2<bool>(true, true)), any(vec2<bool>(true, true)), all(arg_0.a), arg_0.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_0.b + arg_0.b), _wgslsmith_div_vec2_f32(arg_0.b, vec2<f32>(arg_0.b.x, arg_0.b.x)))) - _wgslsmith_f_op_vec2_f32(func_3())), arg_0.c, _wgslsmith_sub_vec3_u32(arg_0.d, abs(countOneBits(vec3<u32>(71448u, 11433u, 6463u))))));
    return _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1602f, _wgslsmith_f_op_f32(floor(573f)), -558f)));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_1) -> Struct_5 {
    let var_0 = Struct_3(select(vec4<bool>(false, false, true, arg_3.a.x != 563f), select(!vec4<bool>(arg_1.b, arg_0, arg_0, arg_0), !vec4<bool>(arg_3.d, arg_1.b, arg_0, arg_3.d), !select(vec4<bool>(arg_1.b, arg_1.b, true, true), vec4<bool>(arg_0, arg_3.d, false, arg_3.d), vec4<bool>(false, arg_1.a, arg_3.d, false))), true), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(570f, _wgslsmith_f_op_f32(select(1416f, arg_3.a.x, true))) * -2215f), -1249f), Struct_2(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(335f + arg_3.c.x)) <= _wgslsmith_f_op_f32(-1f), -min(max(global3[_wgslsmith_index_u32(arg_2.a, 9u)], 1i), _wgslsmith_sub_i32(1i, 2147483647i))), _wgslsmith_div_vec3_u32(arg_2.d, arg_2.d) ^ abs(vec3<u32>(u_input.b, 1u, 39091u)));
    global0 = array<i32, 24>();
    var var_1 = ((~_wgslsmith_mod_u32(arg_2.a, u_input.b) ^ ~(~1u)) >> (u_input.b % 32u)) << (var_0.d.x % 32u);
    var var_2 = Struct_2(arg_1.b, false, -select(global3[_wgslsmith_index_u32(~(~0u), 9u)], _wgslsmith_div_i32(-47392i, -16226i) << (1u % 32u), arg_0));
    let var_3 = any(var_0.a.yyy);
    return Struct_5(-_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.c, -10907i, 48495i, arg_2.c.x), -vec4<i32>(0i, 33054i, -53333i, arg_1.c)), max(-vec4<i32>(13989i, u_input.a.x, u_input.c.x, arg_1.c), select(vec4<i32>(45670i, arg_3.b.x, 41136i, arg_3.b.x), vec4<i32>(u_input.c.x, arg_2.c.x, arg_3.b.x, 0i), vec4<bool>(arg_0, true, arg_2.e, arg_3.d)))), arg_2.a, 0u);
}

fn func_6(arg_0: Struct_5) -> Struct_3 {
    global1 = array<i32, 5>();
    var var_0 = Struct_4(38234u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec3_f32(func_2(Struct_3(vec4<bool>(true, false, false, false), vec2<f32>(230f, -596f), Struct_2(false, true, u_input.a.x), vec3<u32>(1u, arg_0.b, 47287u)), Struct_5(vec4<i32>(arg_0.a.x, -22732i, -2147483647i, 0i), 12268u, 0u), Struct_5(vec4<i32>(u_input.c.x, arg_0.a.x, -2147483647i, global1[_wgslsmith_index_u32(arg_0.c, 5u)]), 4294967295u, arg_0.b))).x)) * 697f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1036f, -1000f)) - -484f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -825f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-463f)) + _wgslsmith_f_op_f32(floor(-112f))) + _wgslsmith_f_op_f32(f32(-1f) * -1234f))), firstTrailingBit(abs(-vec2<i32>(global1[_wgslsmith_index_u32(64951u, 5u)], 50039i))), ~(~vec3<u32>(~52542u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.c, u_input.b, 38853u), vec4<u32>(4294967295u, 12460u, u_input.b, arg_0.c)), firstTrailingBit(arg_0.b))), true);
    var_0 = Struct_4(abs(u_input.b) | ~(~60795u), vec4<f32>(208f, -1108f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.b.x, 105f), var_0.b.x))), -1000f), arg_0.a.zx, firstTrailingBit(abs(var_0.d)), var_0.e);
    var var_1 = Struct_2(false & all(!(!vec4<bool>(var_0.e, var_0.e, true, true))), true, 1i);
    global3 = array<i32, 9>();
    return Struct_3(!vec4<bool>(var_1.b, _wgslsmith_f_op_vec2_f32(func_3()).x <= _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x), !select(true, false, var_1.a), var_0.e), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(965f - _wgslsmith_div_f32(-297f, -1224f)), _wgslsmith_f_op_f32(max(1672f, var_0.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.b.x, -1000f))))))), Struct_2(all(vec4<bool>(u_input.c.x >= global0[_wgslsmith_index_u32(var_0.a, 24u)], !var_1.b, all(vec4<bool>(var_1.a, false, var_0.e, true)), true)), var_1.b, -7483i << (u_input.b % 32u)), vec3<u32>(~_wgslsmith_mod_u32(arg_0.b >> (357u % 32u), _wgslsmith_dot_vec3_u32(var_0.d, var_0.d)), var_0.d.x, _wgslsmith_div_u32(~_wgslsmith_div_u32(var_0.a, 16433u), 31074u)));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = func_6(func_5(false, Struct_2(true, false, abs(arg_0.x << (u_input.b % 32u))), Struct_4(1u, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-728f, -327f, -1278f, 575f)), vec4<f32>(739f, 268f, -1056f, 548f))), (vec2<i32>(global1[_wgslsmith_index_u32(u_input.b, 5u)], 1i) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) >> ((vec2<u32>(1u, u_input.b) | vec2<u32>(82332u, u_input.b)) % vec2<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(3085u, 3241u, u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(42070u, 29425u, u_input.b), vec3<u32>(1u, 1u, 1u))), any(vec3<bool>(false, true, true))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1461f, 301f, 732f) * vec3<f32>(1163f, -360f, 663f)) - _wgslsmith_f_op_vec3_f32(func_2(Struct_3(vec4<bool>(true, true, true, false), vec2<f32>(-1034f, -416f), Struct_2(true, true, -995i), vec3<u32>(33908u, 8182u, 35927u)), Struct_5(vec4<i32>(global1[_wgslsmith_index_u32(69792u, 5u)], arg_0.x, 29143i, global1[_wgslsmith_index_u32(20487u, 5u)]), 0u, 1u), Struct_5(vec4<i32>(62806i, 2147483647i, 44130i, global1[_wgslsmith_index_u32(u_input.b, 5u)]), u_input.b, 13578u)))), arg_0.zy | u_input.a, vec2<f32>(_wgslsmith_f_op_f32(-307f * -1851f), -1116f), false)));
    let var_1 = all(select(func_6(func_5(all(vec3<bool>(false, false, var_0.c.a)), var_0.c, Struct_4(var_0.d.x, vec4<f32>(-1173f, -1667f, var_0.b.x, var_0.b.x), arg_0.zx, vec3<u32>(16057u, 0u, 4294967295u), false), Struct_1(vec3<f32>(539f, -1205f, -2073f), arg_0.xz, vec2<f32>(-1000f, 1474f), true))).a.wyw, vec3<bool>(true, true, var_0.c.a), var_0.a.x));
    global1 = array<i32, 5>();
    let var_2 = ~reverseBits(~_wgslsmith_mod_vec2_u32(~var_0.d.zx, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 23548u), var_0.d.zx)));
    let var_3 = var_0.b;
    return var_0.c;
}

fn func_7(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    global1 = array<i32, 5>();
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(countOneBits(_wgslsmith_add_i32(u_input.a.x, arg_1.c)), _wgslsmith_mult_i32(select(-1i, u_input.c.x, arg_1.a), 1i)), _wgslsmith_mult_i32((arg_2.b.x & -2147483647i) & (arg_0.c.x >> (arg_0.d.x % 32u)), -global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.a, arg_0.d.x), 5u)])), _wgslsmith_mod_i32(_wgslsmith_add_i32(2147483647i, -65996i) << (arg_0.a % 32u), -1i), 31700i, arg_0.c.x);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_add_u32(select(_wgslsmith_clamp_u32(arg_0.a, 49903u, 40146u), func_6(Struct_5(vec4<i32>(arg_0.c.x, -17192i, global0[_wgslsmith_index_u32(arg_0.d.x, 24u)], 0i), 31792u, 16764u)).d.x, arg_2.d), 1u)), arg_0.d.x), 5u)];
    var var_2 = func_5(_wgslsmith_f_op_f32(f32(-1f) * -486f) >= _wgslsmith_div_f32(-1067f, arg_2.c.x), Struct_2(!(_wgslsmith_f_op_f32(f32(-1f) * -314f) <= _wgslsmith_f_op_f32(floor(227f))), func_6(func_5(arg_2.a.x >= 375f, arg_1, arg_0, Struct_1(arg_2.a, var_0.zy, vec2<f32>(146f, arg_0.b.x), false))).a.x, firstLeadingBit(abs(global0[_wgslsmith_index_u32(abs(1u), 24u)]))), Struct_4(1u, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(453f, 901f, arg_0.b.x, arg_2.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-744f, -1262f, 554f, arg_0.b.x) * arg_0.b)))), ~reverseBits(select(vec2<i32>(arg_0.c.x, global1[_wgslsmith_index_u32(arg_0.a, 5u)]), u_input.c, false)), arg_0.d, arg_0.e & false), arg_2);
    let var_3 = 18127u;
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_7(Struct_4(u_input.b, vec4<f32>(-2658f, 1000f, -1427f, 1816f), vec2<i32>(global1[_wgslsmith_index_u32(u_input.b, 5u)], -48610i), vec3<u32>(u_input.b, 55692u, 45382u), false), func_1(vec3<i32>(u_input.c.x, 21324i, 1i)), Struct_1(vec3<f32>(-1000f, 1000f, 425f), u_input.a, vec2<f32>(1217f, -102f), true))) * -1058f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1236f))));
    global0 = array<i32, 24>();
    global4 = -2147483647i;
    let var_1 = func_5(firstLeadingBit(u_input.a.x) <= ~(~(~global3[_wgslsmith_index_u32(u_input.b, 9u)])), func_6(func_5(func_6(Struct_5(vec4<i32>(global1[_wgslsmith_index_u32(76367u, 5u)], global3[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(0u, 24u)], -10920i), u_input.b, 4294967295u)).c.a, func_6(Struct_5(vec4<i32>(global3[_wgslsmith_index_u32(u_input.b, 9u)], -1i, global3[_wgslsmith_index_u32(u_input.b, 9u)], global0[_wgslsmith_index_u32(u_input.b, 24u)]), u_input.b, u_input.b)).c, Struct_4(firstTrailingBit(0u), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, -745f, var_0.x, -2086f), vec4<f32>(-428f, -386f, var_0.x, var_0.x))), -vec2<i32>(-1i, 2147483647i), vec3<u32>(u_input.b, 31863u, u_input.b), false), Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(366f, -639f, var_0.x))), vec2<i32>(11718i, global3[_wgslsmith_index_u32(4294967295u, 9u)]) ^ vec2<i32>(1i, -1i), vec2<f32>(-1000f, -273f), all(vec2<bool>(false, false))))).c, Struct_4(func_5(true, Struct_2(all(vec4<bool>(false, false, false, false)), true, 2147483647i & u_input.c.x), Struct_4(~49120u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1420f, -841f, var_0.x, var_0.x)), vec2<i32>(global0[_wgslsmith_index_u32(44923u, 24u)], global1[_wgslsmith_index_u32(u_input.b, 5u)]), min(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(10801u, u_input.b, u_input.b)), true), Struct_1(vec3<f32>(var_0.x, 288f, 833f), vec2<i32>(-2147483647i, 2147483647i) ^ vec2<i32>(global3[_wgslsmith_index_u32(4640u, 9u)], u_input.a.x), var_0, true)).b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2480f, var_0.x, 1379f, var_0.x) + vec4<f32>(1409f, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) + vec4<f32>(-428f, 1370f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -1540f)), any(vec3<bool>(false, true, true)))))), vec2<i32>(-(~u_input.c.x), -_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.b, 5u)], 1i)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 27678u, u_input.b), vec3<u32>(u_input.b, u_input.b, 10028u))) & min(~vec3<u32>(u_input.b, 77119u, u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(24046u, 0u, u_input.b), vec3<u32>(u_input.b, u_input.b, 4294967295u))), any(vec2<bool>(any(vec3<bool>(false, true, true)), true))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1899f, _wgslsmith_f_op_f32(f32(-1f) * -346f), 1000f)), vec2<i32>(func_5(true, Struct_2(false, false, -2147483647i), Struct_4(4294967295u, vec4<f32>(-942f, 1004f, var_0.x, var_0.x), u_input.c, vec3<u32>(7785u, 0u, 0u), true), Struct_1(vec3<f32>(var_0.x, var_0.x, var_0.x), u_input.c, vec2<f32>(var_0.x, var_0.x), false)).a.x, global1[_wgslsmith_index_u32(u_input.b, 5u)]), var_0, true));
    global0 = array<i32, 24>();
    var var_2 = Struct_3(!vec4<bool>(true, true, all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), false), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0 + vec2<f32>(-768f, var_0.x)) - _wgslsmith_f_op_vec2_f32(var_0 + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-621f, var_0.x))))))), func_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, func_4(Struct_3(vec4<bool>(true, false, true, false), vec2<f32>(var_0.x, var_0.x), Struct_2(true, true, -29488i), vec3<u32>(u_input.b, var_1.c, 4294967295u))).x, abs(global1[_wgslsmith_index_u32(8856u, 5u)])), ~var_1.a.zxy)), _wgslsmith_add_vec3_u32(select(vec3<u32>(~1u, u_input.b, abs(u_input.b)), vec3<u32>(var_1.b, u_input.b, 47012u) | max(vec3<u32>(23501u, 0u, 658u), vec3<u32>(var_1.b, u_input.b, u_input.b)), true), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, ~1u, u_input.b), ~_wgslsmith_mod_vec3_u32(vec3<u32>(27923u, u_input.b, var_1.c), vec3<u32>(u_input.b, var_1.c, 36217u)))));
    global4 = 1i;
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1670f, -109f, var_0.x)) - vec3<f32>(var_0.x, var_0.x, -427f)), vec3<f32>(-605f, var_0.x, var_0.x)))), vec2<i32>(_wgslsmith_clamp_i32(abs(-2147483647i), 18618i, select(1i, 1i, all(vec4<bool>(false, var_2.c.a, true, true)))), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(var_2.d.x, u_input.b) >> (abs(~0u) % 32u), 24u)]), var_2.b, true);
    var var_4 = var_2.a.xwy;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c, 653f, _wgslsmith_f_op_vec2_f32(var_2.b * var_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3()).x + _wgslsmith_f_op_f32(func_7(Struct_4(6532u, vec4<f32>(218f, var_3.c.x, var_3.c.x, var_0.x), vec2<i32>(-18867i, var_1.a.x), vec3<u32>(var_1.b, 4294967295u, var_2.d.x), var_3.d), var_2.c, Struct_1(var_3.a, var_3.b, var_2.b, var_2.a.x))))));
}

