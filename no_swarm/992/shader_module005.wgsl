struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(false, false, true, false, false, true, false, true, false, true);

var<private> global1: array<Struct_1, 18>;

var<private> global2: array<vec2<u32>, 25>;

var<private> global3: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(false, vec4<i32>(85916i, 19489i, i32(-2147483648), -31798i)), Struct_1(true, vec4<i32>(0i, -27549i, 0i, -1i)), Struct_1(false, vec4<i32>(1i, 2147483647i, 1i, 1i)), Struct_1(true, vec4<i32>(14272i, -50451i, 18343i, i32(-2147483648))), Struct_1(false, vec4<i32>(0i, -60646i, 0i, i32(-2147483648))), Struct_1(false, vec4<i32>(-1i, -1i, i32(-2147483648), 6591i)), Struct_1(true, vec4<i32>(0i, 23724i, i32(-2147483648), 0i)), Struct_1(true, vec4<i32>(33046i, 27176i, 3875i, -1i)), Struct_1(false, vec4<i32>(0i, -8447i, 11126i, 32806i)), Struct_1(true, vec4<i32>(35327i, 0i, i32(-2147483648), 10857i)), Struct_1(false, vec4<i32>(-1i, 2147483647i, i32(-2147483648), 1i)), Struct_1(false, vec4<i32>(10290i, -38396i, -3981i, 1i)), Struct_1(true, vec4<i32>(2147483647i, -2843i, 2147483647i, 13733i)), Struct_1(true, vec4<i32>(-21646i, -74301i, 0i, -1i)), Struct_1(true, vec4<i32>(2147483647i, -15067i, -4472i, -8195i)), Struct_1(false, vec4<i32>(-21239i, 1i, 2147483647i, i32(-2147483648))), Struct_1(true, vec4<i32>(18073i, -39652i, 10572i, i32(-2147483648))), Struct_1(true, vec4<i32>(-37992i, -49559i, -1i, -12652i)), Struct_1(false, vec4<i32>(-13991i, 0i, 19289i, 7639i)), Struct_1(false, vec4<i32>(2933i, -1i, -24196i, 0i)), Struct_1(true, vec4<i32>(34815i, 10678i, 1i, 0i)), Struct_1(true, vec4<i32>(-9743i, -28679i, -211i, -20054i)), Struct_1(true, vec4<i32>(-1i, 39154i, -32608i, 0i)), Struct_1(true, vec4<i32>(20357i, i32(-2147483648), 2147483647i, 2147483647i)), Struct_1(false, vec4<i32>(43263i, i32(-2147483648), 32899i, 76365i)), Struct_1(false, vec4<i32>(2147483647i, -81021i, -2724i, 23326i)), Struct_1(false, vec4<i32>(-20119i, 1487i, 0i, -1i)), Struct_1(true, vec4<i32>(-9781i, 2147483647i, -4001i, 2147483647i)), Struct_1(false, vec4<i32>(1i, -1i, -10114i, -6188i)), Struct_1(false, vec4<i32>(33244i, 78668i, 0i, -1i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_3) -> vec2<u32> {
    global3 = array<Struct_1, 30>();
    let var_0 = (45744i | -arg_1.b.x) | ~u_input.b.x;
    var var_1 = true;
    var_1 = !((arg_0.a.b.x >> (57470u % 32u)) <= 1i) | ((_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d.x, 1u, 85152u), vec4<u32>(39817u, 0u, arg_1.a.x, 1u)) == 1u) & !(_wgslsmith_dot_vec4_i32(arg_0.a.b, vec4<i32>(-57860i, u_input.b.x, arg_1.b.x, -1i)) <= -u_input.a));
    var var_2 = 17074i;
    return max(max(_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_1.a.x, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, 49551u), global2[_wgslsmith_index_u32(u_input.d.x, 25u)])), ~vec2<u32>(u_input.d.x, 26328u)) & max(global2[_wgslsmith_index_u32(arg_1.a.x >> ((50171u ^ u_input.d.x) % 32u), 25u)], ~arg_1.a << (select(vec2<u32>(arg_1.a.x, u_input.d.x), vec2<u32>(arg_1.a.x, arg_1.a.x), vec2<bool>(global0[_wgslsmith_index_u32(arg_1.a.x, 10u)], arg_0.a.a)) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(firstTrailingBit(39209u), ~4294967295u), abs(0u)), vec2<u32>(u_input.d.x, 4294967295u)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: bool) -> u32 {
    global0 = array<bool, 10>();
    let var_0 = Struct_1(true, _wgslsmith_add_vec4_i32(-abs(u_input.b), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b.wy, u_input.b.wx), _wgslsmith_sub_i32(-2147483647i, u_input.c), u_input.b.x, select(arg_0, u_input.c, global0[_wgslsmith_index_u32(u_input.d.x, 10u)])) ^ (max(vec4<i32>(0i, 2147483647i, arg_0, 2147483647i), u_input.b) & -u_input.b)));
    var var_1 = _wgslsmith_f_op_f32(max(677f, 980f));
    let var_2 = -(~(~_wgslsmith_mult_i32(~arg_0, u_input.b.x)));
    global2 = array<vec2<u32>, 25>();
    return arg_1 | u_input.d.x;
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = firstLeadingBit(~u_input.b.x >> (u_input.d.x % 32u)) < _wgslsmith_add_i32(arg_0, -_wgslsmith_div_i32(countOneBits(arg_0), u_input.b.x));
    global2 = array<vec2<u32>, 25>();
    let var_1 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(u_input.d.x, 25u)], func_2(Struct_4(Struct_1(global0[_wgslsmith_index_u32(u_input.d.x, 10u)], u_input.b)), Struct_2(u_input.d, u_input.b.wx), Struct_3(false))), firstLeadingBit(u_input.d.x)), u_input.d.x, func_3(firstLeadingBit(arg_0), u_input.d.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 53378u), 10u)]), max(u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.d ^ global2[_wgslsmith_index_u32(abs(u_input.d.x), 25u)], u_input.d)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -710f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-662f, 351f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(283f + -313f))), u_input.a > _wgslsmith_mod_i32(-1i, 19146i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1277f)) * 107f), _wgslsmith_f_op_f32(f32(-1f) * -663f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(857f)) * _wgslsmith_f_op_f32(round(-321f)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(370f, var_2.x, var_2.x), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.x, -440f, var_2.x)))))))));
    return Struct_3(global0[_wgslsmith_index_u32(23269u, 10u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1101f;
    global3 = array<Struct_1, 30>();
    global0 = array<bool, 10>();
    global1 = array<Struct_1, 18>();
    let var_1 = func_1(_wgslsmith_add_i32(19447i, -reverseBits(u_input.a)));
    let var_2 = Struct_2(~(~u_input.d & (_wgslsmith_clamp_vec2_u32(vec2<u32>(54933u, 6119u), vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(24109u, 0u)) & _wgslsmith_mult_vec2_u32(global2[_wgslsmith_index_u32(1u, 25u)], vec2<u32>(u_input.d.x, u_input.d.x)))), min(u_input.b.yx, ~vec2<i32>(firstTrailingBit(u_input.a), u_input.a ^ 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -2148f, -1526f, 590f), vec4<f32>(680f, -402f, -251f, 905f)), vec4<f32>(-896f, 227f, -551f, -1000f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -727f), _wgslsmith_f_op_f32(2190f - -491f), 1f, 731f)))));
}

