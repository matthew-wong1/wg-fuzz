struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: bool;

var<private> global2: array<vec3<f32>, 18>;

var<private> global3: vec3<i32>;

var<private> global4: Struct_1;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4) -> vec4<u32> {
    global2 = array<vec3<f32>, 18>();
    global0 = array<f32, 12>();
    return _wgslsmith_div_vec4_u32(vec4<u32>(global4.a, ~68224u, 31294u, firstTrailingBit(firstTrailingBit(global4.a))), ~vec4<u32>(~_wgslsmith_dot_vec3_u32(u_input.b, arg_1.a.a.www), 18908u, firstTrailingBit(_wgslsmith_mod_u32(global4.a, arg_1.a.a.x)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.a.x, 4294967295u, global4.b, 0u), vec4<u32>(arg_1.c, 1u, global4.e.x, 46516u)), arg_1.c)));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_4) -> vec3<bool> {
    return vec3<bool>(arg_1.x > arg_3.c, !arg_3.d, arg_3.a.c);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>) -> Struct_4 {
    let var_0 = !func_4(-621f, min(func_3(global4.c, Struct_4(Struct_2(vec4<u32>(18246u, 1u, 1u, 4294967295u), 21078u, false), vec2<f32>(-357f, 1264f), arg_0.x, false)), global4.e), Struct_1(4294967295u, ~1533u & _wgslsmith_mod_u32(0u, global4.a), global4.c, u_input.e, ~vec4<u32>(arg_0.x, global4.b, u_input.b.x, 40331u)), Struct_4(Struct_2(vec4<u32>(u_input.a.x, 4294967295u, 20372u, arg_0.x), min(u_input.b.x, arg_0.x), all(vec4<bool>(false, true, true, false))), vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 8231u), 12u)], _wgslsmith_div_f32(global4.c.x, 138f)), u_input.a.x | 1u, any(vec2<bool>(true, true))));
    global0 = array<f32, 12>();
    let var_1 = _wgslsmith_f_op_f32(floor(-1240f));
    let var_2 = Struct_1(func_3(vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * arg_1.x) * _wgslsmith_div_f32(1740f, global0[_wgslsmith_index_u32(arg_0.x, 12u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - arg_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(global4.b, 12u)]))))), Struct_4(Struct_2(min(global4.e, u_input.a), ~arg_0.x, !var_0.x), vec2<f32>(global4.c.x, _wgslsmith_f_op_f32(select(global4.c.x, 2101f, true))), 1u, any(!vec3<bool>(var_0.x, var_0.x, var_0.x)))).x, 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global4.c, vec4<f32>(var_1, arg_1.x, var_1, 577f), any(vec4<bool>(var_0.x, false, var_0.x, false)))))), reverseBits(0i), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1193f, -589f, arg_1.x, global0[_wgslsmith_index_u32(arg_0.x, 12u)]))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-417f, var_1, 612f, arg_1.x)))), Struct_4(Struct_2(~vec4<u32>(0u, global4.e.x, 0u, arg_0.x), 0u & arg_0.x, all(vec2<bool>(true, var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(step(arg_1.x, global0[_wgslsmith_index_u32(23083u, 12u)])), arg_1.x), max(reverseBits(1u), _wgslsmith_clamp_u32(u_input.b.x, arg_0.x, 22921u)), !(u_input.d == 1i))));
    var var_3 = abs(~_wgslsmith_sub_i32(var_2.d << (_wgslsmith_mod_u32(24625u, arg_0.x) % 32u), global3.x & u_input.e));
    return Struct_4(Struct_2(~func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.c.x, 416f, 580f, var_1), vec4<f32>(-324f, 836f, -217f, 366f), false)), Struct_4(Struct_2(var_2.e, 4294967295u, false), vec2<f32>(global0[_wgslsmith_index_u32(19960u, 12u)], var_1), var_2.a, var_0.x)), _wgslsmith_dot_vec3_u32(u_input.a.xxz, vec3<u32>(12833u, 11983u, 5643u)), all(!vec2<bool>(false, var_0.x))), vec2<f32>(global4.c.x, -548f), _wgslsmith_mod_u32(_wgslsmith_mult_u32(~global4.a | arg_0.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.b.x, global4.a, 0u), func_3(var_2.c, Struct_4(Struct_2(vec4<u32>(0u, var_2.b, u_input.a.x, arg_0.x), var_2.e.x, false), global4.c.wy, u_input.b.x, false)))), 49518u), false);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_4(func_2(~_wgslsmith_mod_vec3_u32(arg_1.a.a.wxx, u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(895f, global4.c.x) + global4.c.xx))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global4.c.xy * arg_1.b)))).a, _wgslsmith_f_op_vec2_f32(-global4.c.yz), min(~func_2(min(arg_3.a.yzy, vec3<u32>(40535u, 56122u, 29420u)), vec2<f32>(1641f, arg_1.b.x)).c, _wgslsmith_mod_u32(arg_2.a.x, arg_1.c)), false);
    global3 = arg_0;
    global0 = array<f32, 12>();
    global3 = -vec3<i32>(-45021i, firstTrailingBit(u_input.d), -global4.d);
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(571f, global0[_wgslsmith_index_u32(6209u, 12u)]) * vec2<f32>(560f, global0[_wgslsmith_index_u32(86758u, 12u)]))))), true, -countOneBits(u_input.c.xwy), arg_1.a.a.zyx);
    return func_2(~(~(~_wgslsmith_add_vec3_u32(var_1.d, vec3<u32>(var_0.c, u_input.b.x, arg_2.b)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(786f * 1571f)), _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(global4.c.x * global4.c.x))))).a;
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = vec4<f32>(-1834f, -248f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.c.x)))))), 733f);
    var var_1 = 45030i;
    let var_2 = func_5(select(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(global3.x, global3.x, global4.d), u_input.c.yyw), -u_input.c.zxz), u_input.c.wxw, true), func_2(~vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b, global4.e.yxy), u_input.b.x ^ global4.e.x, 4294967295u), vec2<f32>(-1000f, global4.c.x)), Struct_2(u_input.a, _wgslsmith_dot_vec3_u32(func_2(_wgslsmith_div_vec3_u32(u_input.b, u_input.b), global4.c.yy).a.a.zwy, vec3<u32>(global4.e.x, 108416u >> (1u % 32u), global4.a)), !(!(global4.d > global4.d))), Struct_2(global4.e, global4.e.x, false || any(vec2<bool>(true, true))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-889f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.c.x - func_2(var_2.a.zww, vec2<f32>(global4.c.x, 1068f)).b.x) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(32211u, 12u)])), arg_0.x, _wgslsmith_f_op_f32(func_2(~(~vec3<u32>(24397u, var_2.b, global4.a)), _wgslsmith_f_op_vec2_f32(-global4.c.yz)).b.x * global4.c.x));
    global0 = array<f32, 12>();
    return func_5(-vec3<i32>(~_wgslsmith_div_i32(5680i, -1i), -1i, 18435i), Struct_4(func_2(reverseBits(var_2.a.wwy), var_0.wx).a, var_0.xw, ~0u, (!var_2.c | var_2.c) != false), func_2(vec3<u32>(global4.e.x, 1u, global4.b & 1u) << (_wgslsmith_add_vec3_u32(u_input.a.zxy, vec3<u32>(51440u, 32455u, u_input.b.x) | global4.e.zyz) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global4.c.x, _wgslsmith_f_op_f32(-global4.c.x))))).a, Struct_2(global4.e, u_input.b.x, var_2.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = func_1(_wgslsmith_f_op_vec2_f32(global4.c.wz * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global4.c.xy)))))));
    let var_2 = 1i;
    let var_3 = reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(~(~0u), var_0.x, max(var_0.x, 11331u), var_0.x), var_0));
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1101f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4.c.x)) * global4.c.x))));
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(func_2(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 105465u, global4.e.x), min(global4.a, 1u), firstTrailingBit(var_1.a.x)), global4.c.ww).b.x, -504f, -1677f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-292f, global4.c.x)) * func_2(u_input.b, global4.c.xy).b.x) + 956f)), -global3.x, 1931f);
}

