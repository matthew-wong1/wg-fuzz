struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: bool,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1397f, 1256f);

var<private> global1: u32;

var<private> global2: bool = true;

var<private> global3: Struct_3 = Struct_3(Struct_2(Struct_1(vec3<f32>(-1000f, 250f, -160f), vec4<f32>(590f, -700f, -1000f, 651f), false, vec4<u32>(59034u, 1u, 54032u, 4294967295u), vec3<i32>(1i, 38317i, 43994i)), Struct_1(vec3<f32>(-331f, -807f, 1523f), vec4<f32>(1000f, 235f, -350f, 829f), true, vec4<u32>(73578u, 0u, 81255u, 1u), vec3<i32>(0i, 0i, 6510i)), -36847i, true, true), Struct_2(Struct_1(vec3<f32>(-551f, 1461f, 898f), vec4<f32>(-381f, -2700f, 1099f, -1470f), false, vec4<u32>(0u, 78239u, 4294967295u, 14338u), vec3<i32>(25391i, 48031i, i32(-2147483648))), Struct_1(vec3<f32>(-160f, -750f, 117f), vec4<f32>(-2073f, 774f, 1071f, -1832f), true, vec4<u32>(56703u, 128231u, 1u, 1u), vec3<i32>(0i, 26181i, 0i)), 1i, true, false), vec3<i32>(32231i, -37662i, 9015i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>) -> vec2<bool> {
    global2 = global3.b.a.c;
    let var_0 = Struct_3(Struct_2(global3.a.b, global3.a.a, ~min(u_input.b, -2147483647i), false, false), global3.a, vec3<i32>(~min(global3.b.c, global3.c.x) >> (1u % 32u), abs(global3.c.x | global3.c.x) | global3.c.x, _wgslsmith_mult_i32(1i, global3.a.b.e.x)));
    global2 = arg_0;
    global3 = var_0;
    var var_1 = Struct_2(var_0.a.a, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.a.a) + _wgslsmith_f_op_vec3_f32(min(var_0.b.a.a, vec3<f32>(var_0.a.b.b.x, 1000f, 283f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, var_0.a.a.a.x, 1072f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.a.b.b))), true, vec4<u32>(global3.b.a.d.x ^ u_input.c, 4294967295u, 1755u, global3.a.b.d.x | 80559u) << (global3.a.a.d % vec4<u32>(32u)), vec3<i32>(countOneBits(global3.b.c), countOneBits(u_input.a), u_input.a)), 1i | (-abs(30531i) & global3.c.x), any(vec4<bool>(!(false || arg_0), !(!arg_0), all(!vec3<bool>(false, true, global3.a.a.c)), !var_0.a.b.c)), all(select(!(!vec4<bool>(global3.a.d, true, false, arg_0)), !select(vec4<bool>(false, false, global3.b.e, global3.a.e), vec4<bool>(false, global3.a.a.c, true, global3.a.a.c), vec4<bool>(global3.a.e, true, global3.a.d, false)), false)));
    return vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(var_0.a.a.a.x + global3.b.b.b.x))) < _wgslsmith_f_op_f32(round(global3.b.b.b.x)), any(select(!vec4<bool>(global3.b.b.c, true, var_0.a.b.c, global3.a.e), vec4<bool>(select(false, true, global3.b.e), all(vec3<bool>(arg_0, global3.b.a.c, arg_0)), var_0.a.b.a.x >= var_1.a.a.x, any(vec3<bool>(var_1.a.c, false, global3.a.b.c))), vec4<bool>(!var_1.e, true, false, any(vec4<bool>(arg_0, arg_0, arg_0, global3.a.b.c))))));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: bool) -> Struct_3 {
    var var_0 = Struct_4(global3.a, vec2<u32>(global3.b.b.d.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(global3.a.a.d.x, 8981u, 67081u, 6085u), vec4<u32>(global3.b.a.d.x, 4294967295u, u_input.c, 0u)) << (countOneBits(u_input.c) % 32u)), 8579u);
    var var_1 = _wgslsmith_div_vec2_i32(max(-arg_1, select(countOneBits(-global3.c.xx), abs(arg_1 ^ global3.c.xx), func_3(any(vec4<bool>(true, false, arg_2, false)), var_0.a.b.d.yyz))), arg_1);
    var_1 = ~(_wgslsmith_add_vec2_i32(arg_1, var_0.a.b.e.zy) << (var_0.b % vec2<u32>(32u)));
    var_0 = Struct_4(Struct_2(Struct_1(vec3<f32>(-380f, _wgslsmith_f_op_f32(global0.x - -611f), _wgslsmith_f_op_f32(-1187f + -2148f)), vec4<f32>(_wgslsmith_div_f32(var_0.a.b.a.x, global3.b.b.a.x), 127f, _wgslsmith_f_op_f32(413f + 2234f), 231f), global3.b.b.c, vec4<u32>(var_0.c, var_0.a.a.d.x, 0u, var_0.b.x) << (vec4<u32>(global3.a.b.d.x, 3061u, u_input.c, var_0.a.b.d.x) % vec4<u32>(32u)), firstTrailingBit(vec3<i32>(global3.b.b.e.x, 3634i, 36535i) & var_0.a.a.e)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-2158f - -801f), _wgslsmith_div_f32(var_0.a.b.a.x, 757f), _wgslsmith_f_op_f32(exp2(var_0.a.a.a.x))), _wgslsmith_f_op_vec4_f32(select(global3.a.a.b, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.b.a.x, var_0.a.b.b.x, global3.b.a.b.x, 1578f))), vec4<bool>(var_0.a.e, true, arg_2, arg_2))), _wgslsmith_dot_vec3_i32(vec3<i32>(6784i, -2147483647i, arg_1.x), global3.c) <= max(19112i, 0i), global3.b.b.d, vec3<i32>(var_1.x, ~12830i, -16975i)), 10872i, true && any(select(vec4<bool>(false, arg_2, false, true), vec4<bool>(false, false, global3.a.b.c, false), true)), true), _wgslsmith_add_vec2_u32((~vec2<u32>(var_0.a.a.d.x, var_0.a.a.d.x) | global3.a.b.d.zx) << (_wgslsmith_div_vec2_u32(vec2<u32>(53159u, 4294967295u), vec2<u32>(global3.a.b.d.x, 0u)) % vec2<u32>(32u)), select(~var_0.b, global3.a.a.d.xz, vec2<bool>(var_0.a.b.d.x != global3.b.b.d.x, any(vec4<bool>(true, var_0.a.b.c, arg_2, global3.a.e))))), global3.b.b.d.x);
    var var_2 = -1i;
    return Struct_3(Struct_2(var_0.a.b, global3.b.b, var_1.x, global3.a.b.c, true), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1045f, var_0.a.a.a.x, global3.b.a.b.x) - vec3<f32>(-832f, -397f, global0.x)))), vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.a.b.a.x)), _wgslsmith_f_op_f32(-global0.x), -1310f, _wgslsmith_f_op_f32(min(-716f, -630f))), true, global3.a.b.d, -_wgslsmith_clamp_vec3_i32(vec3<i32>(-101722i, 1i, -22654i), vec3<i32>(-23630i, var_0.a.c, 3345i), global3.a.b.e)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.a.a.b.xwz, vec3<f32>(1095f, global0.x, -1236f))) * global3.a.a.b.xyw), _wgslsmith_f_op_vec4_f32(vec4<f32>(605f, global3.a.a.b.x, 1567f, global3.b.b.b.x) + _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, 1071f, global0.x), vec4<f32>(-485f, global3.b.b.b.x, global3.b.b.b.x, 481f))), !(var_0.a.b.c || arg_2), ~(vec4<u32>(u_input.c, var_0.a.a.d.x, 1u, 4294967295u) >> (var_0.a.a.d % vec4<u32>(32u))), -(~vec3<i32>(global3.b.a.e.x, -32065i, -26548i))), _wgslsmith_div_i32(firstLeadingBit(-12982i), -1i), arg_2, global3.a.a.c), ~firstLeadingBit(-firstLeadingBit(var_0.a.a.e)));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = arg_0;
    global3 = var_0;
    var var_1 = global3.b.e;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.a.a.a.xx, vec2<f32>(_wgslsmith_f_op_f32(max(-918f, var_0.a.b.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, global3.a.a.b.x))))));
    let var_2 = func_2(-abs(-8856i), vec2<i32>(_wgslsmith_clamp_i32(-global3.c.x, var_0.b.b.e.x, 1i) ^ global3.c.x, ~reverseBits(~global3.b.b.e.x)), ~21774u == _wgslsmith_dot_vec3_u32(var_0.a.a.d.xzz, reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 8548u, 16596u), arg_0.a.b.d.zxw))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 536f, 552f) + vec3<f32>(-1306f, arg_0.b.a.b.x, var_0.a.a.b.x)), vec3<f32>(-2936f, -411f, 561f)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2600f, 171f, -718f, global0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(256f, 392f, -843f, 406f) + var_2.b.b.b), vec4<bool>(any(vec3<bool>(var_2.b.d, true, global3.b.e)), var_2.b.a.c, true, false))))), _wgslsmith_mod_i32(select(max(1i, u_input.b), -18002i, !var_0.b.a.c), arg_0.c.x) <= ~(-28421i), ((arg_0.a.a.d | ~global3.a.a.d) >> (~_wgslsmith_sub_vec4_u32(arg_0.a.b.d, var_0.a.b.d) % vec4<u32>(32u))) ^ ~(~vec4<u32>(4294967295u, var_0.b.b.d.x, u_input.c, 1u) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.b.b.d.x, 0u, 64672u, var_0.a.b.d.x), vec4<u32>(u_input.c, var_2.a.b.d.x, var_0.a.b.d.x, 4294967295u), vec4<u32>(global3.a.a.d.x, 33999u, 0u, 4294967295u)) % vec4<u32>(32u))), reverseBits(~vec3<i32>(var_2.a.a.e.x, u_input.a, var_0.a.a.e.x >> (global3.b.b.d.x % 32u))));
}

fn func_1() -> u32 {
    global2 = false;
    global3 = Struct_3(Struct_2(global3.a.a, func_4(func_2(~(-21943i), ~global3.b.b.e.yz, global3.a.a.a.x != 654f)), u_input.b, !global3.b.a.c, true), global3.a, func_2(~u_input.a & _wgslsmith_add_i32(firstTrailingBit(0i), global3.a.c), select(-global3.b.b.e.zy, vec2<i32>(_wgslsmith_clamp_i32(u_input.a, -2147483647i, global3.a.a.e.x), u_input.b), !vec2<bool>(global3.b.e, false)), !global3.a.b.c).a.b.e);
    global1 = 4294967295u;
    return abs(32594u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!(!(!vec3<bool>(global3.a.b.c, false, true)))));
    var var_1 = _wgslsmith_mod_u32(1u, ~func_1());
    var_0 = select(vec3<bool>(any(select(!vec4<bool>(global3.b.e, true, var_0.x, global3.a.e), select(vec4<bool>(var_0.x, var_0.x, global3.a.b.c, global3.a.e), vec4<bool>(var_0.x, global3.a.e, global3.b.d, true), global3.b.e), !vec4<bool>(true, var_0.x, false, global3.a.a.c))), false, false), vec3<bool>(all(!select(vec4<bool>(true, true, global3.b.d, global3.a.e), vec4<bool>(var_0.x, true, global3.a.b.c, true), true)), func_2(firstLeadingBit(max(u_input.a, u_input.a)), vec2<i32>(-1i, ~u_input.b), !global3.b.b.c | global3.b.d).b.e, !(!all(vec2<bool>(true, false)))), select(true & !any(vec4<bool>(false, global3.b.b.c, var_0.x, false)), var_0.x, global3.b.a.c));
    var_1 = abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(103470u, 9820u, global3.b.a.d.x), abs(global3.a.b.d.yzz))) << ((~_wgslsmith_mod_u32(u_input.c, ~1u) << (u_input.c % 32u)) % 32u);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-346f, func_4(Struct_3(global3.a, Struct_2(global3.b.b, Struct_1(global3.a.b.b.wyw, vec4<f32>(global0.x, global3.a.b.b.x, -1030f, -162f), false, vec4<u32>(u_input.c, 4294967295u, 31577u, 97477u), global3.b.a.e), u_input.a, global3.b.a.c, global3.b.b.c), global3.c)).b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.a.b.b.yw) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(542f, 1069f)))))));
    var_1 = 64907u;
    var var_2 = all(vec3<bool>((_wgslsmith_f_op_f32(global0.x - 652f) <= _wgslsmith_f_op_f32(-1225f + -2101f)) | true, global3.a.b.c, var_0.x));
    let var_3 = Struct_1(global3.b.b.a, vec4<f32>(_wgslsmith_div_f32(global0.x, func_4(Struct_3(Struct_2(Struct_1(global3.b.b.a, global3.a.a.b, global3.a.a.c, vec4<u32>(u_input.c, 64686u, u_input.c, 0u), vec3<i32>(-2147483647i, u_input.a, u_input.b)), Struct_1(vec3<f32>(1000f, global3.b.a.a.x, global3.a.b.a.x), vec4<f32>(global0.x, -465f, global3.a.a.a.x, global0.x), global3.b.b.c, global3.b.a.d, global3.b.a.e), u_input.b, var_0.x, false), Struct_2(global3.a.a, global3.b.b, u_input.a, true, false), global3.c)).a.x), func_2(func_4(func_2(-1i, vec2<i32>(-2147483647i, -2147483647i), true)).e.x, vec2<i32>(u_input.b, select(-2147483647i, 52601i, true)), !(!var_0.x)).b.a.b.x, -127f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2029f) - -195f))), ~firstTrailingBit(global3.b.a.d.x) >= global3.a.b.d.x, _wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(global3.a.b.d, global3.a.b.d), vec4<u32>(0u, 1u, u_input.c, global3.b.b.d.x)), _wgslsmith_mult_vec4_u32(global3.a.a.d, select(global3.a.a.d, _wgslsmith_clamp_vec4_u32(global3.b.a.d, vec4<u32>(0u, 45037u, 1u, u_input.c), global3.b.a.d), !var_0.x))), global3.a.b.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3259f * -900f) * _wgslsmith_div_f32(global3.a.a.a.x, 1359f)), global3.a.b.a.x)), 0i, vec3<i32>(-max(global3.c.x, 1i), -55180i, global3.b.c), global3.a.a.d.x);
}

