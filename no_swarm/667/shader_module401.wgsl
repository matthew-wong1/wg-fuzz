struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: array<vec2<i32>, 8>;

var<private> global2: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec4<bool>(false, true, false, true), vec4<f32>(343f, -1000f, -1731f, 918f), Struct_1(1086f, 48594u, true)), Struct_2(vec4<bool>(true, true, false, false), vec4<f32>(-1504f, 898f, 972f, -112f), Struct_1(-1000f, 69449u, false)), Struct_2(vec4<bool>(true, false, false, true), vec4<f32>(-595f, -531f, 604f, -142f), Struct_1(931f, 3417u, false)), Struct_2(vec4<bool>(false, false, true, true), vec4<f32>(1000f, 1401f, -578f, 1000f), Struct_1(-1055f, 45138u, true)), Struct_2(vec4<bool>(true, true, true, true), vec4<f32>(-1839f, -414f, -1000f, -1164f), Struct_1(1382f, 0u, false)), Struct_2(vec4<bool>(false, false, false, false), vec4<f32>(1000f, 593f, 1176f, 150f), Struct_1(-800f, 1u, false)), Struct_2(vec4<bool>(false, true, true, true), vec4<f32>(-1190f, 959f, 452f, 652f), Struct_1(-1000f, 10698u, true)), Struct_2(vec4<bool>(false, true, false, false), vec4<f32>(665f, -217f, -851f, -1000f), Struct_1(790f, 24065u, false)), Struct_2(vec4<bool>(true, false, false, true), vec4<f32>(-164f, -358f, -1110f, 109f), Struct_1(-548f, 4294967295u, false)), Struct_2(vec4<bool>(false, false, true, true), vec4<f32>(-1235f, -1060f, 708f, 1289f), Struct_1(748f, 1u, true)), Struct_2(vec4<bool>(true, false, false, false), vec4<f32>(-860f, 1392f, 113f, 128f), Struct_1(1360f, 3945u, false)), Struct_2(vec4<bool>(false, true, true, false), vec4<f32>(1040f, 102f, 2269f, -1311f), Struct_1(1458f, 38570u, false)), Struct_2(vec4<bool>(true, true, false, true), vec4<f32>(-262f, 430f, 1401f, -640f), Struct_1(-474f, 0u, true)), Struct_2(vec4<bool>(true, true, false, false), vec4<f32>(-258f, 1959f, -805f, 215f), Struct_1(-746f, 4294967295u, false)), Struct_2(vec4<bool>(false, false, true, false), vec4<f32>(-460f, 400f, -170f, 176f), Struct_1(-1000f, 38818u, true)), Struct_2(vec4<bool>(false, true, false, true), vec4<f32>(219f, -1434f, -1478f, 1322f), Struct_1(-156f, 4294967295u, false)), Struct_2(vec4<bool>(false, true, false, false), vec4<f32>(-694f, -794f, -407f, 879f), Struct_1(-813f, 53051u, false)), Struct_2(vec4<bool>(false, true, true, false), vec4<f32>(908f, 1515f, -1199f, -615f), Struct_1(-287f, 76587u, false)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: i32, arg_3: vec3<u32>) -> vec4<bool> {
    global0 = select(vec3<bool>(global0.x, true, true), select(vec3<bool>(all(vec2<bool>(true, false)), true, true), !select(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, global0.x, true)), !vec3<bool>(true, global0.x, true), select(vec3<bool>(global0.x, true, false), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, global0.x, global0.x))), all(select(select(vec3<bool>(true, false, global0.x), vec3<bool>(false, global0.x, true), global0.x), !vec3<bool>(true, false, global0.x), arg_3.x <= arg_3.x))), !(!vec3<bool>(true, any(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), !global0.x)));
    let var_0 = Struct_2(select(!select(select(vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, true, global0.x)), vec4<bool>(global0.x, global0.x, true, false), !vec4<bool>(global0.x, global0.x, true, true)), !select(!vec4<bool>(true, global0.x, global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(false, true, true, global0.x)), all(vec4<bool>(true, global0.x, false, true))), select(vec4<bool>(any(vec2<bool>(global0.x, false)), all(vec4<bool>(global0.x, true, true, false)), true, true), vec4<bool>(any(vec3<bool>(global0.x, global0.x, global0.x)), global0.x, !global0.x, any(vec4<bool>(global0.x, global0.x, true, global0.x))), select(any(vec4<bool>(false, global0.x, global0.x, true)), false, true))), vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(359f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(324f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(424f * -237f), -1292f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(469f, 1000f)))))), Struct_1(-2085f, 4294967295u, global0.x));
    global0 = vec3<bool>((12565u >> (u_input.a.x % 32u)) < var_0.c.b, false, global0.x);
    let var_1 = Struct_3(u_input.a);
    let var_2 = any(select(vec3<bool>(select(var_0.a.x, var_0.a.x, true), global0.x, true), !vec3<bool>(!global0.x, var_0.c.c, any(vec4<bool>(var_0.a.x, global0.x, var_0.a.x, var_0.a.x))), var_0.a.xxy));
    return var_0.a;
}

fn func_2() -> Struct_3 {
    global0 = select(vec3<bool>(all(select(!vec4<bool>(false, global0.x, global0.x, global0.x), func_3(0u, vec3<i32>(-13255i, 1i, 1i), -33173i, vec3<u32>(0u, u_input.a.x, u_input.a.x)), global0.x)), true, any(!(!vec4<bool>(global0.x, global0.x, false, global0.x)))), select(select(vec3<bool>(false, all(vec3<bool>(global0.x, false, global0.x)), all(vec3<bool>(global0.x, false, true))), func_3(87998u, vec3<i32>(-3477i, -1i, 43367i), i32(-1i) * -1i, ~vec3<u32>(43802u, 592u, 23518u)).zxy, false), vec3<bool>(true, any(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, global0.x, global0.x), global0.x)), any(!vec4<bool>(global0.x, global0.x, true, global0.x))), vec3<bool>(false, u_input.a.x > 4294967295u, any(vec3<bool>(true, false, global0.x)))), select(vec3<bool>(all(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, global0.x, true))), any(vec3<bool>(true, true, true)), false), select(!(!vec3<bool>(global0.x, true, false)), vec3<bool>(false, true, 1043u > u_input.a.x), false), true));
    global1 = array<vec2<i32>, 8>();
    let var_0 = -64263i;
    global2 = array<Struct_2, 18>();
    var var_1 = firstLeadingBit(-48310i);
    return Struct_3(vec2<u32>(~u_input.a.x, firstTrailingBit(_wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(u_input.a.x, 0u)))));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(1571f)), 217f, _wgslsmith_f_op_f32(f32(-1f) * -377f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-551f, 461f, 1000f), vec3<f32>(-183f, -2258f, 1810f), true)), _wgslsmith_div_vec3_f32(vec3<f32>(1757f, -1699f, 1707f), vec3<f32>(-307f, -953f, -950f))) + vec3<f32>(_wgslsmith_f_op_f32(1340f * 146f), -420f, -108f)))));
    var var_1 = func_2();
    global1 = array<vec2<i32>, 8>();
    let var_2 = ~(~(~vec4<u32>(0u, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(15599u, 25979u, var_1.a.x, 18014u), vec4<u32>(var_1.a.x, var_1.a.x, u_input.a.x, var_1.a.x)), ~69397u)));
    global0 = select(func_3(firstTrailingBit(_wgslsmith_mod_u32(var_2.x, _wgslsmith_add_u32(var_1.a.x, 4294967295u))), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-63675i, -2147483647i, 44196i), vec3<i32>(-35462i, -2147483647i, 25160i), vec3<i32>(-20976i, -5292i, 14725i)), vec3<i32>(2093i, -14020i, -11741i)) ^ _wgslsmith_mod_vec3_i32(max(vec3<i32>(1i, 0i, 0i), vec3<i32>(-58319i, 0i, 2147483647i)), ~vec3<i32>(2796i, 947i, 26107i)), ~(-2147483647i), var_2.yxz).yxw, select(select(vec3<bool>(any(vec3<bool>(global0.x, true, global0.x)), all(vec2<bool>(false, global0.x)), all(vec4<bool>(global0.x, false, true, false))), select(func_3(8574u, vec3<i32>(-2147483647i, 272i, -206i), 26353i, vec3<u32>(4294967295u, 34919u, u_input.a.x)).xxz, !vec3<bool>(global0.x, global0.x, true), func_3(12771u, vec3<i32>(-21157i, 0i, 37559i), 1i, vec3<u32>(4294967295u, var_1.a.x, 5305u)).xwz), true), vec3<bool>(global0.x, !(!global0.x), global0.x), vec3<bool>(true, true, true)), select(func_3((u_input.a.x ^ var_2.x) >> (~31605u % 32u), vec3<i32>(_wgslsmith_mult_i32(39973i, 1i), abs(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 54140i, -1i, 0i), vec4<i32>(27533i, -2147483647i, 8807i, -11653i))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, -29483i, -23060i), vec4<i32>(-66828i, 18569i, 2634i, -11330i)), vec3<u32>(abs(var_1.a.x), var_1.a.x, 4294967295u)).zzx, vec3<bool>(any(vec2<bool>(global0.x, global0.x)), !global0.x, global0.x), all(!global0.yx) | global0.x));
    return Struct_3(vec2<u32>(abs(_wgslsmith_clamp_u32(4294967295u, var_2.x, var_2.x) >> (13235u % 32u)), u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x >> (53043u % 32u);
    let var_1 = 513f;
    var var_2 = func_1();
    let var_3 = _wgslsmith_f_op_f32(select(var_1, var_1, !(!all(!vec3<bool>(global0.x, global0.x, global0.x)))));
    let var_4 = -1i;
    global0 = !vec3<bool>(global0.x, any(!select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, false), vec2<bool>(true, true))), true);
    global2 = array<Struct_2, 18>();
    var var_5 = u_input.a.x;
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-358f + _wgslsmith_f_op_f32(-1341f - _wgslsmith_f_op_f32(var_3 - -716f)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstTrailingBit(vec2<u32>(_wgslsmith_sub_u32(var_2.a.x, 1u), u_input.a.x ^ var_2.a.x))), global1[_wgslsmith_index_u32(var_2.a.x, 8u)]);
}

