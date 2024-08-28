struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global2: Struct_2 = Struct_2(vec2<bool>(true, true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = ~1u;
    var_0 = u_input.b.x;
    var_0 = u_input.c;
    let var_1 = select(vec4<bool>(!all(vec3<bool>(false, true, global2.a.x)) | true, false, global1.x, any(select(global1.zww, vec3<bool>(true, global1.x, global2.a.x), select(vec3<bool>(global2.a.x, false, arg_1.b), vec3<bool>(global2.a.x, true, true), global1.x)))), select(select(select(!vec4<bool>(true, arg_1.c, arg_1.b, true), select(vec4<bool>(global1.x, true, global2.a.x, global1.x), vec4<bool>(false, global1.x, true, arg_1.b), vec4<bool>(global1.x, false, true, arg_1.c)), 0u < arg_0.x), !(!vec4<bool>(global2.a.x, false, false, global2.a.x)), global1.x), !select(select(vec4<bool>(true, false, arg_1.c, false), vec4<bool>(arg_1.b, global1.x, global2.a.x, global2.a.x), global1.x), !vec4<bool>(arg_1.c, false, false, global2.a.x), true), select(!vec4<bool>(global1.x, true, false, arg_1.c), !vec4<bool>(false, global1.x, true, global2.a.x), false)), select(select(!(!vec4<bool>(global2.a.x, true, global2.a.x, arg_1.c)), vec4<bool>(all(vec4<bool>(false, false, false, arg_1.c)), select(true, global2.a.x, arg_1.b), !global1.x, false), vec4<bool>(all(vec4<bool>(global2.a.x, true, global2.a.x, global1.x)), true, true, true)), select(vec4<bool>(true, global1.x, true, false), vec4<bool>(!global1.x, true, 1535f <= arg_1.a, global1.x), select(vec4<bool>(true, false, global2.a.x, false), vec4<bool>(true, global2.a.x, true, global2.a.x), vec4<bool>(false, true, true, true))), select(select(vec4<bool>(global2.a.x, false, false, global2.a.x), select(vec4<bool>(global2.a.x, false, true, false), vec4<bool>(arg_1.c, arg_1.b, global1.x, true), true), all(global2.a)), vec4<bool>(true, true, true, true), !global1.x)));
    var var_2 = ~(~_wgslsmith_sub_i32(-(u_input.a >> (63402u % 32u)), -(-33318i | u_input.a)));
    return select(vec4<bool>(global1.x, all(!vec4<bool>(true, var_1.x, true, true)) | !any(global1.xyz), global1.x, true), !vec4<bool>(false, any(vec2<bool>(global1.x, global2.a.x)), true, false), !vec4<bool>(true, any(global1.ywz), global1.x, arg_1.c));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = -1340f;
    var var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(u_input.b, ~u_input.b), u_input.b);
    global1 = select(func_3(u_input.b.zxw, arg_0), vec4<bool>(!(!(u_input.a >= u_input.a)), func_3(var_1.zzz, arg_0).x, select(_wgslsmith_dot_vec2_u32(vec2<u32>(8618u, var_1.x), var_1.wz), ~var_1.x, false || global1.x) != (_wgslsmith_sub_u32(74489u, var_1.x) & countOneBits(76916u)), all(global1.xy)), vec4<bool>(arg_0.c || true, !(!global2.a.x), true, false));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1152f, _wgslsmith_f_op_f32(abs(arg_0.a)), _wgslsmith_f_op_f32(-2293f + -519f)))), vec3<f32>(_wgslsmith_f_op_f32(arg_0.a - -256f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -332f)), arg_0.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -507f), arg_0.a) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, -1000f), vec3<f32>(-1000f, -291f, -189f)), vec3<f32>(404f, 478f, -394f)))))), func_3(vec3<u32>(912u, firstTrailingBit(var_1.x), ~u_input.e) & (~u_input.b.yzy & firstLeadingBit(u_input.b.wzy)), arg_0).yxz));
    let var_3 = global2.a.x;
    return Struct_2(global2.a);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-993f, -249f, _wgslsmith_f_op_f32(f32(-1f) * -2203f), 182f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-947f, -359f, 1309f, -626f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(897f, -1641f, -1014f, 448f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1957f, 210f, 1000f, -2149f) * vec4<f32>(298f, -648f, -1845f, 1023f))))), (arg_0.a.x | any(!vec3<bool>(arg_2.a.x, global1.x, arg_2.a.x))) && false));
    var var_1 = Struct_1(-912f, !(true | !arg_2.a.x), true);
    global1 = !func_3(vec3<u32>(0u, _wgslsmith_mod_u32(4294967295u, 3474u), _wgslsmith_clamp_u32(max(u_input.c, u_input.e), u_input.d.x, 3698u)), Struct_1(var_0.x, var_1.b, true));
    var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1679f)), -620f, true)))), var_1.c, select(-37780i, 29097i, arg_0.a.x) != reverseBits(-27838i));
    var var_2 = countOneBits(_wgslsmith_mod_u32(u_input.b.x | ~1u, ~(~0u ^ u_input.d.x)));
    return all(vec3<bool>(var_1.b, all(select(!global1.xyw, !global1.zzz, global2.a.x && global1.x)), !arg_0.a.x));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    global0 = array<i32, 30>();
    let var_0 = u_input.d;
    let var_1 = global1.zz;
    let var_2 = !select(vec3<bool>(arg_0.x, func_4(func_2(Struct_1(-122f, global2.a.x, arg_0.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global0[_wgslsmith_index_u32(var_0.x, 30u)], -58226i, 1i), vec4<i32>(u_input.a, 26262i, global0[_wgslsmith_index_u32(24753u, 30u)], u_input.a)), func_2(Struct_1(1168f, false, true))), !(!global2.a.x)), select(vec3<bool>(var_0.x < var_0.x, u_input.e >= u_input.e, arg_0.x), select(!vec3<bool>(false, arg_0.x, false), arg_0.xzw, false), vec3<bool>(true, arg_0.x, global2.a.x)), vec3<bool>(!global1.x, global1.x && (true || arg_0.x), func_4(Struct_2(vec2<bool>(false, global2.a.x)), 1i, Struct_2(global1.xw))));
    global2 = Struct_2(global1.xw);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-627f - _wgslsmith_f_op_f32(min(-859f, 273f)))), _wgslsmith_f_op_f32(-1923f + 1545f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(426f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-319f, 526f), _wgslsmith_f_op_f32(422f - -473f))), _wgslsmith_f_op_f32(548f + 895f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + vec4<f32>(-1833f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -854f), _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<bool>(global1.x, false, false, true)))), _wgslsmith_div_f32(469f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(vec4<bool>(global1.x, global2.a.x, global2.a.x, false))), -609f)))));
    let var_1 = Struct_1(var_0.x, true || (_wgslsmith_div_i32(15242i, -2147483647i) > -global0[_wgslsmith_index_u32(1u, 30u)]), global2.a.x);
    global1 = !select(!(!vec4<bool>(global1.x, global1.x, true, true)), func_3(u_input.b.xzz, var_1), vec4<bool>(true, u_input.b.x < min(0u, 6111u), true, global1.x));
    global2 = func_2(var_1);
    var var_2 = var_1.a;
    var var_3 = Struct_2(select(func_2(var_1).a, global2.a, true));
    var var_4 = global1.ywz;
    var_4 = global1.xyw;
    let var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_i32(-firstTrailingBit(vec2<i32>(-1i, -2147483647i)), ~vec2<i32>(var_5, var_5)), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a))))), vec3<f32>(420f, _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - _wgslsmith_f_op_f32(select(-1818f, _wgslsmith_f_op_f32(-var_1.a), !global1.x)))), vec3<i32>(-2147483647i, -_wgslsmith_sub_i32(var_5, global0[_wgslsmith_index_u32(775u, 30u)]), u_input.a));
}

