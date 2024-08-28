struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: i32;

var<private> global2: array<u32, 2> = array<u32, 2>(4294967295u, 1u);

var<private> global3: array<bool, 18> = array<bool, 18>(true, false, true, true, false, true, true, false, true, true, false, false, true, true, true, true, false, true);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec2<f32>) -> bool {
    let var_0 = select(-_wgslsmith_div_vec3_i32(~vec3<i32>(6010i, -4629i, -65879i), -_wgslsmith_mult_vec3_i32(vec3<i32>(37892i, 2147483647i, arg_1.d.x), vec3<i32>(-2147483647i, arg_1.d.x, -5027i))), -_wgslsmith_clamp_vec3_i32(vec3<i32>(select(-18281i, arg_1.d.x, true), 2237i, -arg_1.d.x), vec3<i32>(~arg_1.d.x, 2147483647i, ~arg_1.d.x), vec3<i32>(58516i, _wgslsmith_dot_vec3_i32(vec3<i32>(-20756i, -4599i, -50725i), vec3<i32>(-23765i, 0i, 0i)), arg_1.d.x)), !select(select(vec3<bool>(global3[_wgslsmith_index_u32(0u, 18u)], arg_1.a, global3[_wgslsmith_index_u32(70538u, 18u)]), select(vec3<bool>(arg_1.a, true, global3[_wgslsmith_index_u32(0u, 18u)]), vec3<bool>(arg_1.a, true, global3[_wgslsmith_index_u32(u_input.a.x, 18u)]), false), global3[_wgslsmith_index_u32(1u, 18u)]), !(!vec3<bool>(arg_1.a, global3[_wgslsmith_index_u32(5754u, 18u)], true)), select(vec3<bool>(true, true, true), select(vec3<bool>(arg_1.a, true, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], 18u)]), vec3<bool>(arg_1.a, arg_1.a, arg_1.a), false), select(vec3<bool>(true, global3[_wgslsmith_index_u32(arg_1.e.x, 18u)], global3[_wgslsmith_index_u32(4294967295u, 18u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 18u)], arg_1.a, false), vec3<bool>(false, true, arg_1.a)))));
    global3 = array<bool, 18>();
    global1 = _wgslsmith_div_i32(-2147483647i, ~0i);
    global0 = array<Struct_1, 32>();
    global2 = array<u32, 2>();
    return !any(!(!(!vec2<bool>(global3[_wgslsmith_index_u32(34532u, 18u)], true))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.c.zzz, vec3<f32>(730f, _wgslsmith_f_op_f32(min(arg_0.b, _wgslsmith_f_op_f32(-arg_0.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1040f))))) - vec3<f32>(2066f, _wgslsmith_f_op_f32(f32(-1f) * -877f), arg_0.c.x));
    let var_1 = Struct_2(_wgslsmith_div_f32(-606f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-284f)) + -631f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1994f)) + -935f), _wgslsmith_f_op_f32(round(arg_0.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.c - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_0.b, -1647f, var_0.x))) - _wgslsmith_f_op_vec4_f32(arg_0.c * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, var_0.x, arg_0.b, var_0.x), vec4<f32>(arg_0.b, arg_0.c.x, var_0.x, arg_0.b)))))), arg_2.a.x, arg_2);
    let var_2 = !(!(!var_1.a));
    let var_3 = vec2<bool>(!func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1865f), _wgslsmith_f_op_f32(min(var_0.x, -1785f))), Struct_3(true, 197f, _wgslsmith_f_op_f32(min(var_1.b, var_0.x)), vec2<i32>(1i, 1i), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.d, 4294967295u, 13603u), vec3<u32>(0u, arg_1, var_1.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.yx)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1391f, 202f) - var_0.zy))), true);
    global2 = array<u32, 2>();
    return vec4<u32>(select(u_input.a.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(var_1.e.a.x, 2u)], arg_0.d), arg_2.a), !(var_3.x | true)), ~(~4294967295u), abs(global2[_wgslsmith_index_u32(firstTrailingBit(1u) << (arg_1 % 32u), 2u)]), arg_2.a.x) << (~(~_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.e.a.x, 0u, 21948u, 4294967295u)), ~vec4<u32>(arg_2.a.x, u_input.a.x, 0u, arg_2.a.x))) % vec4<u32>(32u));
}

fn func_2(arg_0: vec4<i32>) -> vec2<i32> {
    var var_0 = func_4(Struct_2(all(vec4<bool>(global3[_wgslsmith_index_u32(1u, 18u)], func_3(293f, Struct_3(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], 18u)], -274f, -1564f, arg_0.yw, vec3<u32>(54022u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(96726u, 2u)], 2u)], 2u)], u_input.a.x)), vec2<f32>(1198f, -1000f)), true, select(true, global3[_wgslsmith_index_u32(1u, 18u)], true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -731f)) * 639f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-616f - 139f), _wgslsmith_f_op_f32(floor(1298f)), -1276f, _wgslsmith_f_op_f32(621f * 887f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(411f, 1000f, -1777f, -730f), vec4<f32>(-1130f, -2234f, -324f, 260f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(664f, -661f, 766f, 1667f), vec4<f32>(348f, 734f, 1102f, -1660f), vec4<bool>(true, true, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], 18u)], false))))), 98432u, global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(u_input.a.x, 2u)], global2[_wgslsmith_index_u32(~u_input.a.x, 2u)])), 32u)]), global2[_wgslsmith_index_u32(13285u, 2u)], Struct_1(~(~(~vec2<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], u_input.a.x))), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-21886i, arg_0.x, arg_0.x, 1300i), ~vec4<i32>(29902i, -44261i, 0i, -10421i), !vec4<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 18u)], global3[_wgslsmith_index_u32(104016u, 18u)], global3[_wgslsmith_index_u32(1u, 18u)], global3[_wgslsmith_index_u32(u_input.a.x, 18u)])), ~arg_0), _wgslsmith_mod_i32(3478i, -683i), true));
    var var_1 = select(_wgslsmith_add_u32(~(~firstTrailingBit(24991u)), ~4294967295u), u_input.a.x << (max(_wgslsmith_mult_u32(0u, select(4294967295u, 60957u, false)), ~u_input.a.x) % 32u), !(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)] << (u_input.a.x % 32u), 18u)] | func_3(319f, Struct_3(true, 176f, 1424f, arg_0.xw, var_0.yzx), vec2<f32>(864f, 1024f))) != true);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-188f, -1615f)) + _wgslsmith_f_op_f32(round(130f))), -564f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(132f - -295f), _wgslsmith_f_op_f32(floor(-1202f))) + _wgslsmith_f_op_f32(-647f - _wgslsmith_f_op_f32(floor(430f))))));
    var var_3 = _wgslsmith_sub_u32(65651u, countOneBits(~1u));
    global2 = array<u32, 2>();
    return _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, _wgslsmith_add_i32(arg_0.x, 53294i)), abs(arg_0.zy ^ vec2<i32>(abs(55691i), _wgslsmith_sub_i32(0i, -1i))));
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    let var_0 = Struct_3(true, _wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(-arg_0.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(321f, -1000f, any(vec3<bool>(global3[_wgslsmith_index_u32(39214u, 18u)], false, arg_0.a)))), _wgslsmith_div_f32(arg_0.b, arg_0.c)), arg_0.d, _wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(20044u, 0u, arg_0.e.x), arg_0.e), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10510u, 2u)], 2u)] ^ u_input.a.x, 2u)], 2u)], 5737u, u_input.a.x)));
    var var_1 = Struct_2(arg_0.a, arg_0.b, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(min(-329f, -554f)), _wgslsmith_f_op_f32(arg_0.b + -1706f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.c)) - 1193f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -338f)))))), 67118u, Struct_1(_wgslsmith_mult_vec2_u32(~(u_input.a & vec2<u32>(39846u, 5558u)), ~vec2<u32>(u_input.a.x, 4294967295u)), var_0.d.x, -arg_0.d.x, true & (4294967295u < ~var_0.e.x)));
    global0 = array<Struct_1, 32>();
    let var_2 = vec3<bool>(arg_0.a, false, var_0.a);
    global0 = array<Struct_1, 32>();
    return Struct_3(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0.c)), _wgslsmith_div_f32(-1000f, 812f))) - _wgslsmith_f_op_f32(select(var_1.b, var_1.b, true))), _wgslsmith_f_op_f32(-var_0.c), ~(~(~vec2<i32>(2147483647i, var_0.d.x))), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 5723u >> (var_1.e.a.x % 32u), 39108u), _wgslsmith_mult_vec3_u32(firstTrailingBit(arg_0.e), arg_0.e | var_0.e)), vec3<u32>(~var_0.e.x, countOneBits(3530u | var_1.e.a.x), 13731u)));
}

fn func_1() -> vec3<u32> {
    let var_0 = func_5(Struct_3(global3[_wgslsmith_index_u32(~(~(~1u)), 18u)], 708f, _wgslsmith_f_op_f32(f32(-1f) * -918f), ~func_2(vec4<i32>(1i, 2147483647i, -1i, 34301i) >> (vec4<u32>(u_input.a.x, global2[_wgslsmith_index_u32(0u, 2u)], u_input.a.x, 4294967295u) % vec4<u32>(32u))), vec3<u32>(countOneBits(countOneBits(1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 2u)]), ~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 4294967295u)), 1u)));
    let var_1 = ~var_0.d;
    let var_2 = func_5(Struct_3(firstTrailingBit(var_1.x) == -reverseBits(var_1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-var_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b + 1063f), var_0.b))), -vec2<i32>(var_0.d.x, var_0.d.x) | -vec2<i32>(var_0.d.x, 2147483647i), _wgslsmith_mult_vec3_u32(var_0.e, _wgslsmith_add_vec3_u32(vec3<u32>(var_0.e.x, u_input.a.x, 22329u), vec3<u32>(u_input.a.x, var_0.e.x, 12608u))) | ~vec3<u32>(var_0.e.x, var_0.e.x, 1u)));
    global2 = array<u32, 2>();
    return ~(~var_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global3[_wgslsmith_index_u32(~abs(~58709u), 18u)], -124f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -666f))))), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, select(-2147483647i, 54662i, false)), ~(-vec2<i32>(-30270i, 2147483647i))), _wgslsmith_add_vec3_u32((~vec3<u32>(0u, global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(32127u, 2u)]) ^ (vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) >> (vec3<u32>(80793u, u_input.a.x, global2[_wgslsmith_index_u32(1u, 2u)]) % vec3<u32>(32u)))) << (select(vec3<u32>(u_input.a.x, 4294967295u, 53592u), vec3<u32>(49325u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 2u)], u_input.a.x), global3[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(u_input.a.x, 2u)]), 18u)]) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u) << (func_1() % vec3<u32>(32u)), vec3<u32>(1u, 16070u, 1u) & ~vec3<u32>(global2[_wgslsmith_index_u32(0u, 2u)], u_input.a.x, u_input.a.x))));
    var_0 = Struct_3(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-575f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.b)), 337f)))), var_0.b, -_wgslsmith_add_vec2_i32(firstLeadingBit(var_0.d), var_0.d), vec3<u32>(func_1().x, u_input.a.x, select(func_1().x, ~global2[_wgslsmith_index_u32(u_input.a.x, 2u)], select(var_0.a, var_0.a, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], 18u)]))) >> ((select(vec3<u32>(16015u, u_input.a.x, var_0.e.x), ~vec3<u32>(var_0.e.x, global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(0u, 2u)]), select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 18u)], var_0.a, true), vec3<bool>(false, false, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], 18u)]))) >> (firstTrailingBit(vec3<u32>(49234u, u_input.a.x, var_0.e.x) >> (vec3<u32>(global2[_wgslsmith_index_u32(15123u, 2u)], global2[_wgslsmith_index_u32(u_input.a.x, 2u)], 1u) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = select(!select(select(select(vec4<bool>(true, global3[_wgslsmith_index_u32(68636u, 18u)], var_0.a, false), vec4<bool>(false, true, false, true), global3[_wgslsmith_index_u32(9968u, 18u)]), !vec4<bool>(false, true, true, var_0.a), !vec4<bool>(var_0.a, false, var_0.a, var_0.a)), vec4<bool>(!global3[_wgslsmith_index_u32(1u, 18u)], global3[_wgslsmith_index_u32(max(52553u, global2[_wgslsmith_index_u32(u_input.a.x, 2u)]), 18u)], true, false), global3[_wgslsmith_index_u32(var_0.e.x, 18u)]), !(!vec4<bool>(true, true, true, var_0.d.x < var_0.d.x)), !(!vec4<bool>(true, var_0.a, !global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 18u)], any(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 18u)], true, global3[_wgslsmith_index_u32(16943u, 18u)])))));
    global1 = abs(var_0.d.x);
    var var_2 = func_5(func_5(Struct_3(select(var_0.a, global3[_wgslsmith_index_u32(1u, 18u)], var_0.a | false), _wgslsmith_div_f32(-1144f, _wgslsmith_f_op_f32(-var_0.c)), 727f, ~var_0.d, _wgslsmith_div_vec3_u32(var_0.e, var_0.e) & ~var_0.e)));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(554f * _wgslsmith_f_op_f32(var_2.b * -1976f))));
    var var_4 = -1189f;
    var var_5 = Struct_3(all(select(!var_1.zz, vec2<bool>(true, true), true)), 512f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1092f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1061f), _wgslsmith_f_op_f32(-221f - var_0.b))) + _wgslsmith_f_op_f32(var_2.b * _wgslsmith_f_op_f32(var_2.c * var_2.c))), func_5(func_5(Struct_3(false, _wgslsmith_f_op_f32(var_0.c * var_0.b), _wgslsmith_f_op_f32(-967f * var_2.c), var_0.d, var_2.e | var_2.e))).d, var_2.e);
    let var_6 = var_5.b;
    let x = u_input.a;
    s_output = StorageBuffer(-3048f, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, -333f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_5.b)), !select(var_1.xw, vec2<bool>(false, var_0.a), var_5.a))))), 5549u);
}

