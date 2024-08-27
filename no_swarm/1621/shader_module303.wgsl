struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-267f, true), Struct_1(399f, true), Struct_1(-814f, true), Struct_1(981f, true), Struct_1(-1000f, false), Struct_1(-1888f, false), Struct_1(-1002f, false), Struct_1(-1524f, true), Struct_1(1000f, true), Struct_1(1326f, true), Struct_1(826f, true), Struct_1(-190f, true), Struct_1(1000f, false), Struct_1(988f, false), Struct_1(1251f, false), Struct_1(-1370f, false), Struct_1(173f, false), Struct_1(-827f, false), Struct_1(-428f, false), Struct_1(-314f, true), Struct_1(-1565f, false), Struct_1(-1207f, true), Struct_1(1083f, true), Struct_1(509f, false), Struct_1(-894f, true), Struct_1(-676f, false), Struct_1(481f, true), Struct_1(-712f, true), Struct_1(843f, true), Struct_1(-1793f, false));

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(793f, true), Struct_1(1000f, false), Struct_1(186f, false), Struct_1(110f, false), Struct_1(-1000f, false), Struct_1(-629f, false), Struct_1(954f, false), Struct_1(-570f, false), Struct_1(1280f, false), Struct_1(2562f, false), Struct_1(1143f, false), Struct_1(-297f, false));

var<private> global4: Struct_1 = Struct_1(1845f, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global1 = select(vec3<bool>(!all(vec4<bool>(false, false, global1.x, false)), global1.x, any(!(!vec3<bool>(global4.b, true, global0.b)))), vec3<bool>(global0.a >= global4.a, all(global1.zz), select(!(-2281f < global4.a), false, all(select(vec4<bool>(true, true, false, global0.b), vec4<bool>(true, true, false, true), vec4<bool>(global4.b, true, global0.b, true))))), !any(!(!vec2<bool>(global4.b, false))));
    let var_0 = vec4<bool>(global0.b, all(!(!(!global1.zz))), global4.a < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a - -685f))), all(!select(vec2<bool>(false, false), global1.yx, false)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a + -871f)), -473f)), -1688f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.a))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1373f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_mult_i32(-51280i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(23528i, 2147483647i, 1i, 6064i), vec4<i32>(1i, 0i, -21i, 1i)), reverseBits(-42309i))) >= -firstTrailingBit(_wgslsmith_mod_i32(-41891i, 1967i)));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a, var_1.x, -1651f) + vec3<f32>(var_2.a, var_1.x, -869f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(421f, global4.a, -967f) * vec3<f32>(1663f, var_2.a, -958f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1173f, global0.a, _wgslsmith_f_op_f32(global0.a + global4.a))))));
    return ~_wgslsmith_dot_vec3_i32(firstLeadingBit(~_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 29585i, -2147483647i), vec3<i32>(-1i, 26638i, 1i))), ~vec3<i32>(i32(-1i) * -34886i, min(-2147483647i, -21770i), abs(31054i)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> f32 {
    let var_0 = 25996u;
    let var_1 = ~_wgslsmith_mult_i32(2147483647i, func_3());
    var var_2 = global0.b;
    let var_3 = arg_0.zz;
    var var_4 = Struct_1(-1524f, global1.x);
    return 1000f;
}

fn func_1() -> Struct_1 {
    var var_0 = !(!(!select(!vec3<bool>(global1.x, false, false), vec3<bool>(global1.x, global0.b, global1.x), global1.x)));
    var var_1 = select(vec3<i32>(_wgslsmith_dot_vec2_i32(~abs(vec2<i32>(-3052i, 39199i)), ~vec2<i32>(0i, -2147483647i)), ~(-64312i), 44016i), vec3<i32>(reverseBits(-43804i), abs(21240i), ~(-76603i)), any(var_0.xx));
    var_1 = ~(~vec3<i32>(1i, 0i, ~var_1.x) << (vec3<u32>(41324u, 4294967295u, countOneBits(0u)) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(vec3<i32>(41191i, 4585i, var_1.x), Struct_1(global0.a, true), global2[_wgslsmith_index_u32(0u, 30u)], 262f)), _wgslsmith_f_op_f32(abs(global0.a)))), global0.a, -746f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1339f, 1929f, _wgslsmith_f_op_f32(select(global4.a, global0.a, global0.b))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a, global0.a, global4.a))))))));
    let var_3 = vec3<i32>(reverseBits(-_wgslsmith_mult_i32(var_1.x, _wgslsmith_mod_i32(2147483647i, 69271i))), 1i, _wgslsmith_sub_i32(~_wgslsmith_mod_i32(i32(-1i) * -26479i, firstLeadingBit(20979i)), _wgslsmith_mult_i32(var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 0i, var_1.x), vec3<i32>(-1i, -17400i, var_1.x) << (u_input.c % vec3<u32>(32u))))));
    return global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.d >> (u_input.b % 32u), 28484u), 1u)), 60211u | (0u ^ ~_wgslsmith_mult_u32(u_input.a.x, u_input.d)), firstTrailingBit(~u_input.b)), 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.a, global1.x);
    global4 = func_1();
    global4 = Struct_1(-1000f, !global1.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1322f + _wgslsmith_f_op_f32(max(-827f, _wgslsmith_f_op_f32(-var_0.a)))) - var_0.a), u_input.c.x < u_input.d);
    global3 = array<Struct_1, 12>();
    global0 = global3[_wgslsmith_index_u32(u_input.d, 12u)];
    var var_2 = -2147483647i;
    let var_3 = func_1();
    let var_4 = select(all(select(select(vec4<bool>(global0.b, true, var_0.b, var_0.b), vec4<bool>(false, true, false, global1.x), global0.b), vec4<bool>(false, global4.b, false, global4.b), true)), !global4.b, true) && (var_0.b | global4.b);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), -vec2<i32>(0i, -1i)) | -65346i), vec2<i32>(-1i) * -vec2<i32>(1i, 1i), ~(~28146u), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1394f * var_0.a) - _wgslsmith_f_op_f32(-var_3.a)), var_0.a)));
}

