struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(842f, 1i, vec3<f32>(954f, 216f, -176f), 41438u), Struct_1(369f, 54033i, vec3<f32>(633f, -1214f, -1324f), 4078u), Struct_1(-297f, 6796i, vec3<f32>(-1651f, 711f, 938f), 1u), Struct_1(194f, 2147483647i, vec3<f32>(1535f, 484f, -692f), 4294967295u), Struct_1(1520f, 2147483647i, vec3<f32>(-1000f, 942f, 435f), 64964u));

var<private> global1: array<Struct_2, 30>;

var<private> global2: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: vec4<f32>) -> i32 {
    let var_0 = global2.b;
    var var_1 = arg_2.c.d;
    global1 = array<Struct_2, 30>();
    var var_2 = vec3<bool>(true, !((_wgslsmith_add_u32(38233u, arg_2.a.d) >= (1u & u_input.a)) | (global2.b != abs(arg_2.c.b))), any(select(select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), all(vec4<bool>(true, false, false, false))), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), !any(vec2<bool>(false, true)))));
    let var_3 = any(select(select(vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(true, false, true), select(vec3<bool>(true, true, var_2.x), vec3<bool>(true, var_2.x, var_2.x), any(vec4<bool>(true, var_2.x, var_2.x, false)))), vec3<bool>(false, var_2.x, true), vec3<bool>(!all(vec3<bool>(true, var_2.x, true)), false, true)));
    return i32(-1i) * -global2.b;
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = arg_2.d;
    var var_1 = vec3<bool>(false, false, any(!(!(!vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)))));
    var_0 = 1u;
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(~firstLeadingBit(11405i), arg_2.b, arg_2.b), abs(vec3<i32>(func_3(firstTrailingBit(2147483647i), vec3<f32>(arg_0, arg_2.a, 569f), Struct_3(Struct_1(arg_0, global2.b, vec3<f32>(arg_0, -1771f, arg_2.a), 13601u), arg_2.c.x, Struct_1(arg_2.a, -1i, vec3<f32>(-2639f, 432f, -2304f), arg_2.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, arg_2.a, arg_2.a, 286f))), 1i, 1i)));
    var_1 = !vec3<bool>(true, any(select(!vec4<bool>(arg_1.x, arg_1.x, true, true), vec4<bool>(true, true, true, true), all(var_1.xz))), all(vec4<bool>(select(true, var_1.x, true), !arg_1.x, true, true)));
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-423f)))), firstTrailingBit(-25686i) >> (0u % 32u), _wgslsmith_f_op_vec3_f32(arg_2.c * global2.c), ~(~_wgslsmith_mult_u32(global2.d, u_input.a))), -1158f, global0[_wgslsmith_index_u32(~global2.d, 5u)]);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: u32, arg_3: bool) -> f32 {
    global0 = array<Struct_1, 5>();
    global1 = array<Struct_2, 30>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.c.c.x, global2.a)) + 1125f))))), _wgslsmith_dot_vec3_i32(-(abs(vec3<i32>(arg_1.c.b, arg_1.a.b, -7229i)) ^ reverseBits(vec3<i32>(arg_1.a.b, arg_1.c.b, global2.b))), firstLeadingBit(firstTrailingBit(firstLeadingBit(vec3<i32>(-11112i, 0i, -1i))))), _wgslsmith_f_op_vec3_f32(min(global2.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_2(-1000f, arg_0.ywx, Struct_1(-954f, 0i, vec3<f32>(556f, -606f, arg_1.c.a), arg_1.c.d)).a.c) * global2.c))), arg_1.a.d);
    let var_1 = arg_1.c.c.x;
    global0 = array<Struct_1, 5>();
    return var_1;
}

fn func_5(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = abs(countOneBits(_wgslsmith_dot_vec4_i32(abs(-vec4<i32>(-12859i, global2.b, 2147483647i, global2.b)), ~vec4<i32>(2147483647i, 1962i, 1i, -10514i))));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global2.c, global2.c)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1002f, global2.a, arg_0.x) + vec3<f32>(arg_0.x, global2.a, global2.c.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1153f, -302f, global2.a) * vec3<f32>(arg_0.x, arg_0.x, -971f)) + global2.c))));
    global1 = array<Struct_2, 30>();
    var var_2 = !select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), true)), !vec3<bool>(select(true, true, true), true, global2.b <= -2147483647i), vec3<bool>(false, false, all(vec3<bool>(false, true, true))));
    var_2 = select(!select(select(vec3<bool>(var_2.x, false, false), !vec3<bool>(false, var_2.x, false), true), !vec3<bool>(false, var_2.x, false), select(!vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(true, true, true), select(vec3<bool>(var_2.x, false, true), vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(var_2.x, true, true)))), select(vec3<bool>(true, _wgslsmith_f_op_f32(min(1048f, arg_0.x)) != _wgslsmith_f_op_f32(abs(global2.c.x)), _wgslsmith_add_i32(global2.b, -80705i) >= 2147483647i), !select(!vec3<bool>(true, false, var_2.x), select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(var_2.x, var_2.x, var_2.x), var_2.x), vec3<bool>(var_2.x, false, false)), select(select(!vec3<bool>(var_2.x, false, false), vec3<bool>(true, false, true), true), vec3<bool>(var_2.x, false, global2.a == 890f), !select(vec3<bool>(var_2.x, false, false), vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(var_2.x, var_2.x, var_2.x)))), select(select(vec3<bool>(true, var_2.x, all(var_2.zz)), vec3<bool>(!var_2.x, true, all(vec2<bool>(false, var_2.x))), true), select(!select(vec3<bool>(true, false, var_2.x), vec3<bool>(var_2.x, true, true), false), vec3<bool>(true, true, all(vec3<bool>(true, var_2.x, true))), vec3<bool>(true, true, true)), !var_2.x));
    return global0[_wgslsmith_index_u32(reverseBits(global2.d), 5u)];
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: u32) -> u32 {
    let var_0 = ~vec3<i32>(~66726i, -2147483647i, global2.b) | abs(firstLeadingBit(vec3<i32>(global2.b, 0i, 23739i)) & min(vec3<i32>(1i, global2.b, global2.b) >> (vec3<u32>(u_input.a, 30401u, 6878u) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(0i, 0i, 1i))));
    global1 = array<Struct_2, 30>();
    global2 = global0[_wgslsmith_index_u32(46329u, 5u)];
    global2 = func_5(vec2<f32>(_wgslsmith_f_op_f32(func_4(vec4<bool>(true, true, true, true), func_2(arg_1, vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(u_input.a, 5u)]), 7441u, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), -340f)));
    var var_1 = -(~_wgslsmith_add_i32(global2.b, abs(var_0.x))) < -(26874i | global2.b);
    return _wgslsmith_clamp_u32(countOneBits(abs(_wgslsmith_mult_u32(61981u ^ global2.d, u_input.a << (0u % 32u)))), ~arg_2 | (~(~u_input.a) ^ ~(arg_2 ^ 0u)), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(abs(-768i), global2.b, _wgslsmith_clamp_i32(global2.b, ~1i, 22447i));
    let var_1 = func_1(1056f, _wgslsmith_f_op_f32(-global2.c.x), 39034u);
    var var_2 = _wgslsmith_div_f32(global2.a, -712f);
    let var_3 = select(vec2<bool>(false, all(vec2<bool>(var_0.x == -1i, any(vec2<bool>(false, false))))), !(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))), vec2<bool>(false, !(-global2.b <= (45076i & global2.b))));
    var var_4 = -1i;
    var var_5 = Struct_2(func_2(-483f, vec3<bool>(true, all(vec4<bool>(true, var_3.x, true, var_3.x)) | false, true), Struct_1(global2.c.x, var_0.x & var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.c)), select(~0u, ~global2.d, var_3.x))).c);
    global1 = array<Struct_2, 30>();
    global1 = array<Struct_2, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-global2.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-314f, global2.a)), _wgslsmith_f_op_f32(select(global2.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1595f, _wgslsmith_f_op_f32(var_5.a.c.x * var_5.a.c.x)) * -928f), all(!select(vec3<bool>(true, false, var_3.x), vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(var_3.x, var_3.x, var_3.x))))));
}

