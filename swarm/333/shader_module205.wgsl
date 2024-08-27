struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: Struct_2,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_3,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
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

var<private> global0: array<i32, 21>;

var<private> global1: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(1377f, -1224f), vec2<f32>(1873f, -1734f), vec2<f32>(-1499f, 1000f), vec2<f32>(345f, 1133f), vec2<f32>(1000f, 1021f), vec2<f32>(-615f, 949f), vec2<f32>(-181f, 1099f), vec2<f32>(214f, -1438f), vec2<f32>(-1376f, -712f), vec2<f32>(-141f, 1000f), vec2<f32>(712f, -298f), vec2<f32>(1000f, 663f));

var<private> global2: Struct_3 = Struct_3(vec4<f32>(788f, 477f, 579f, 2240f), vec4<f32>(1000f, -760f, 1210f, -1390f), Struct_2(-810f, vec2<i32>(21676i, 1i)), vec3<u32>(4294967295u, 13580u, 4294967295u), Struct_1(vec3<f32>(653f, 1000f, 441f), vec4<u32>(4294967295u, 9647u, 16169u, 4294967295u), vec2<i32>(-6090i, -29634i), true));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: f32, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(global2.b.x - arg_0.a), -373f)));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(global2.a, global2.a, vec4<bool>(global2.e.d, any(vec2<bool>(true, global2.e.d)), global2.e.d & global2.e.d, any(vec3<bool>(global2.e.d, global2.e.d, global2.e.d))))), _wgslsmith_f_op_vec4_f32(global2.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.a - global2.a))))), vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), arg_0.a, _wgslsmith_f_op_f32(-arg_0.a)), Struct_2(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.a)) - arg_2)), arg_0.b), ~abs(vec3<u32>(min(4294967295u, global2.d.x), global2.e.b.x, u_input.b.x)), global2.e);
    global0 = array<i32, 21>();
    global2 = var_1;
    var var_2 = vec2<bool>(any(!vec4<bool>(false, var_1.e.d, var_1.e.d || var_1.e.d, true)), !global2.e.d);
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(firstLeadingBit(var_1.d.x) & _wgslsmith_add_u32(global2.e.b.x, global2.e.b.x), ~(~4294967295u)), vec2<u32>(21559u, ~38257u));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_5(arg_0.xx, Struct_3(global2.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global2.a, vec4<f32>(global2.c.a, global2.a.x, global2.e.a.x, global2.b.x)))))), global2.c, ~countOneBits(~u_input.b), Struct_1(_wgslsmith_f_op_vec3_f32(abs(global2.e.a)), ~global2.e.b, -(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], global2.e.c.x)), false)), ~(~abs(vec4<u32>(arg_1.x, 0u, 4294967295u, 49958u))), global2.c);
    global1 = array<vec2<f32>, 12>();
    var var_1 = var_0.d.b;
    global2 = var_0.b;
    var_0 = Struct_5(arg_0.yx, Struct_3(global2.a, global2.b, var_0.d, vec3<u32>(_wgslsmith_dot_vec2_u32(global2.e.b.yy, _wgslsmith_sub_vec2_u32(global2.d.yy, u_input.b.yy)), _wgslsmith_mod_u32(func_3(Struct_2(var_0.d.a, global2.e.c), global2.e.c.x, -981f, global0[_wgslsmith_index_u32(22547u, 21u)]), _wgslsmith_mult_u32(1u, global2.e.b.x)), 19848u), var_0.b.e), ~select(~global2.e.b & vec4<u32>(56401u, arg_1.x, 37718u, var_0.c.x), abs(~var_0.b.e.b), arg_0.x), global2.c);
    return global2.c;
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_5) -> Struct_2 {
    global2 = arg_2.b;
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(global2.b.zwx)))))));
    let var_1 = -min(select(~vec4<i32>(arg_2.b.e.c.x, arg_2.b.c.b.x, 0i, -1i), ~vec4<i32>(u_input.a, 24916i, arg_2.b.c.b.x, 16156i), vec4<bool>(false, false, arg_0.b, false)), vec4<i32>(global2.e.c.x, firstTrailingBit(-4276i), -u_input.a, ~6847i)) >> (global2.e.b % vec4<u32>(32u));
    global1 = array<vec2<f32>, 12>();
    var var_2 = !select(vec4<bool>((var_0.x > 350f) | true, any(vec4<bool>(global2.e.d, arg_0.b, arg_1, global2.e.d)), false, !(arg_1 || arg_2.b.e.d)), select(vec4<bool>(arg_2.a.x, all(vec3<bool>(false, arg_2.a.x, false)), true, !arg_2.b.e.d), select(vec4<bool>(false, arg_1, false, arg_2.b.e.d), vec4<bool>(true, false, global2.e.d, arg_1), select(vec4<bool>(arg_1, false, true, false), vec4<bool>(global2.e.d, true, global2.e.d, arg_2.b.e.d), vec4<bool>(true, true, true, global2.e.d))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -961f)) == _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(floor(arg_2.d.a))));
    return func_2(var_2.ywz, select(firstLeadingBit(_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(0u, arg_0.a, 4294967295u)), abs(arg_2.b.e.b.yww), ~arg_2.c.yzx)), vec3<u32>(firstTrailingBit(firstTrailingBit(26852u)), ~_wgslsmith_mult_u32(global2.d.x, arg_2.b.d.x), min(global2.e.b.x, arg_2.c.x) >> (u_input.b.x % 32u)), all(select(!arg_2.a, var_2.yy, global2.e.d))), select(select(!arg_2.a, var_2.wx, select(vec2<bool>(true, false), !var_2.wx, var_2.wx)), arg_2.a, vec2<bool>(!arg_1 && true, !(62345u >= global2.d.x))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_4) -> vec2<i32> {
    var var_0 = -1i;
    let var_1 = Struct_3(_wgslsmith_div_vec4_f32(global2.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.b)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, 317f, -263f, 145f))))), vec4<f32>(436f, -953f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a, global2.a.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) * _wgslsmith_div_f32(-734f, -914f))), 553f), func_4(arg_2, global2.d.x <= reverseBits(_wgslsmith_mod_u32(4294967295u, 1u)), Struct_5(!select(vec2<bool>(arg_2.b, global2.e.d), vec2<bool>(arg_2.b, false), true), Struct_3(vec4<f32>(175f, 544f, 2216f, global2.e.a.x), global2.a, func_2(vec3<bool>(true, false, global2.e.d), vec3<u32>(arg_2.a, 1u, 0u), vec2<bool>(arg_2.b, global2.e.d)), ~u_input.b, Struct_1(vec3<f32>(arg_1.a, 1659f, 539f), vec4<u32>(0u, u_input.b.x, 9926u, u_input.b.x), arg_1.b, global2.e.d)), ~(vec4<u32>(u_input.b.x, u_input.b.x, 61561u, 4944u) >> (vec4<u32>(arg_2.a, 0u, 25027u, 54844u) % vec4<u32>(32u))), Struct_2(_wgslsmith_f_op_f32(-global2.e.a.x), arg_1.b))), firstTrailingBit(firstLeadingBit(vec3<u32>(arg_2.a, firstTrailingBit(u_input.b.x), 45481u))), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.e.a), _wgslsmith_f_op_vec3_f32(-global2.b.wyx)))), abs(~countOneBits(global2.e.b)), arg_1.b, true));
    var var_2 = _wgslsmith_f_op_vec4_f32(-var_1.b);
    let var_3 = 55007u;
    global0 = array<i32, 21>();
    return vec2<i32>(_wgslsmith_add_i32(0i, _wgslsmith_dot_vec4_i32(~vec4<i32>(global2.c.b.x, var_1.c.b.x, global2.e.c.x, 15866i) << (~global2.e.b % vec4<u32>(32u)), vec4<i32>(var_1.c.b.x, 2147483647i, u_input.a, -34403i) | (vec4<i32>(global2.c.b.x, u_input.a, var_1.e.c.x, -2147483647i) & vec4<i32>(1i, global0[_wgslsmith_index_u32(var_1.d.x, 21u)], u_input.a, global2.e.c.x)))), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.b.x;
    let var_1 = ~u_input.b.yx;
    global2 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global2.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.a))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -146f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-111f, global2.e.a.x)) - global2.b.x))), global2.a.x, global2.e.a.x), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1086f * 490f)))), max(global2.e.c, ~(-global2.c.b))), vec3<u32>(1u, 9211u, 4294967295u), global2.e);
    global1 = array<vec2<f32>, 12>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(global2.b.yzy)))), ~(~(~global2.e.b)), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~(~vec2<i32>(-11303i, global2.e.c.x)), -func_1(global2.c, Struct_2(-784f, global2.c.b), Struct_4(1u, global2.e.d))), vec2<i32>(firstTrailingBit(-2147483647i), select(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], u_input.a), global2.e.c.x, global2.e.d & false))), true);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~var_1.x | 0u, 27749u, firstLeadingBit(_wgslsmith_sub_u32(11843u, ~var_1.x))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_f_op_f32(-1841f - global2.b.x), _wgslsmith_div_f32(-314f, 509f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.a.x - -461f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, global2.c.a, global2.c.a, global2.a.x) - global2.b), vec4<f32>(global2.b.x, var_2.a.x, var_2.a.x, var_2.a.x))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 1u), 12u)])), _wgslsmith_f_op_vec2_f32(ceil(global1[_wgslsmith_index_u32(18304u, 12u)])))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1553f, global2.a.x))), vec2<f32>(_wgslsmith_f_op_f32(-global2.e.a.x), 1223f), true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(730f)))), -1000f), -48313i);
}

