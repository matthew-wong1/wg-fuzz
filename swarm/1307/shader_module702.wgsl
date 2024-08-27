struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, true), vec4<u32>(1u, 37410u, 1u, 11026u), vec2<f32>(2014f, -1490f));

var<private> global1: u32;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec2<bool>(true, true), vec4<u32>(4294967295u, 3962u, 1u, 48583u), vec2<f32>(-507f, 681f)), Struct_1(vec2<bool>(false, true), vec4<u32>(19733u, 19825u, 5127u, 28099u), vec2<f32>(1000f, 529f)), Struct_1(vec2<bool>(true, true), vec4<u32>(4294967295u, 23131u, 11628u, 14136u), vec2<f32>(-3166f, 307f)), Struct_1(vec2<bool>(false, false), vec4<u32>(32019u, 101734u, 15004u, 75676u), vec2<f32>(-1125f, 289f)), Struct_1(vec2<bool>(false, true), vec4<u32>(4294967295u, 43216u, 69340u, 9871u), vec2<f32>(-918f, 587f)), Struct_1(vec2<bool>(true, true), vec4<u32>(64457u, 46514u, 27076u, 1u), vec2<f32>(873f, 239f)), Struct_1(vec2<bool>(true, true), vec4<u32>(1u, 0u, 0u, 1u), vec2<f32>(-1339f, -1004f)), Struct_1(vec2<bool>(false, false), vec4<u32>(0u, 26794u, 0u, 1u), vec2<f32>(-598f, -319f)), Struct_1(vec2<bool>(true, true), vec4<u32>(27413u, 28271u, 1u, 49455u), vec2<f32>(-438f, 629f)), Struct_1(vec2<bool>(true, true), vec4<u32>(274u, 110280u, 4294967295u, 1414u), vec2<f32>(-846f, -2058f)), Struct_1(vec2<bool>(true, false), vec4<u32>(36712u, 4294967295u, 57182u, 0u), vec2<f32>(1000f, 640f)), Struct_1(vec2<bool>(false, false), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), vec2<f32>(-413f, 2602f)), Struct_1(vec2<bool>(false, true), vec4<u32>(4294967295u, 34171u, 54604u, 53757u), vec2<f32>(1291f, -3281f)), Struct_1(vec2<bool>(false, false), vec4<u32>(0u, 47956u, 1u, 19306u), vec2<f32>(286f, -994f)), Struct_1(vec2<bool>(true, true), vec4<u32>(4294967295u, 65278u, 4294967295u, 4294967295u), vec2<f32>(-2277f, 827f)), Struct_1(vec2<bool>(false, false), vec4<u32>(4294967295u, 1u, 71576u, 4294967295u), vec2<f32>(-1162f, -1471f)), Struct_1(vec2<bool>(false, false), vec4<u32>(0u, 102877u, 18616u, 1u), vec2<f32>(-873f, -222f)), Struct_1(vec2<bool>(false, true), vec4<u32>(77902u, 0u, 58901u, 4851u), vec2<f32>(-219f, -390f)), Struct_1(vec2<bool>(true, true), vec4<u32>(35226u, 29505u, 4294967295u, 4294967295u), vec2<f32>(-713f, -336f)), Struct_1(vec2<bool>(false, true), vec4<u32>(33557u, 0u, 0u, 27251u), vec2<f32>(-1319f, -737f)), Struct_1(vec2<bool>(true, false), vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec2<f32>(443f, 1192f)), Struct_1(vec2<bool>(true, false), vec4<u32>(4294967295u, 102517u, 13430u, 20555u), vec2<f32>(-1000f, -480f)), Struct_1(vec2<bool>(true, false), vec4<u32>(19243u, 4294967295u, 17430u, 4294967295u), vec2<f32>(-2354f, -1039f)), Struct_1(vec2<bool>(false, false), vec4<u32>(21784u, 0u, 0u, 1u), vec2<f32>(261f, 304f)), Struct_1(vec2<bool>(true, true), vec4<u32>(1u, 52733u, 15973u, 4475u), vec2<f32>(-482f, -1610f)), Struct_1(vec2<bool>(true, false), vec4<u32>(7659u, 0u, 4294967295u, 4294967295u), vec2<f32>(100f, -786f)), Struct_1(vec2<bool>(false, true), vec4<u32>(26637u, 4294967295u, 0u, 37832u), vec2<f32>(-947f, -526f)), Struct_1(vec2<bool>(false, true), vec4<u32>(0u, 1928u, 15186u, 40956u), vec2<f32>(829f, -1046f)), Struct_1(vec2<bool>(false, false), vec4<u32>(43201u, 1u, 1u, 1u), vec2<f32>(412f, -207f)), Struct_1(vec2<bool>(false, true), vec4<u32>(38782u, 0u, 37019u, 7832u), vec2<f32>(-222f, 1491f)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(vec2<bool>(all(!(!vec4<bool>(true, false, true, arg_2.a.x))), false), ~reverseBits(vec4<u32>(_wgslsmith_add_u32(0u, 13477u), 38312u, _wgslsmith_dot_vec3_u32(vec3<u32>(60021u, arg_2.b.x, u_input.b), vec3<u32>(u_input.b, 549u, 1u)), 4294967295u)), _wgslsmith_div_vec2_f32(arg_2.c, global0.c));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(345f, _wgslsmith_div_f32(var_0.c.x, global0.c.x)));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1095f, var_0.c.x)) - _wgslsmith_f_op_f32(select(-292f, -1710f, var_0.a.x)))) - 246f), global0.c.x);
    let var_2 = Struct_1(select(arg_2.a, vec2<bool>(!arg_2.a.x, false), select(vec2<bool>(false, var_0.a.x), global0.a, !vec2<bool>(var_0.a.x, global0.a.x))), _wgslsmith_div_vec4_u32(countOneBits(abs(var_0.b)), ~firstTrailingBit(var_0.b >> (var_0.b % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.c) - _wgslsmith_f_op_vec2_f32(-var_0.c))))));
    let var_3 = var_0;
    return 0u;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> vec3<f32> {
    global0 = Struct_1(arg_2.a, _wgslsmith_add_vec4_u32(arg_2.b, vec4<u32>(arg_2.b.x, global0.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x, u_input.b) ^ vec2<u32>(3713u, u_input.b), ~arg_2.b.xz), 4294967295u)), arg_2.c);
    var var_0 = arg_2;
    let var_1 = global2[_wgslsmith_index_u32(abs(reverseBits(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(var_0.b.x, u_input.b, u_input.b), ~(global0.b.x ^ u_input.b)))), 30u)];
    global1 = 49093u;
    global1 = func_3(u_input.c, select(global0.a, select(select(var_1.a, vec2<bool>(true, true), any(global0.a)), !select(vec2<bool>(arg_2.a.x, false), vec2<bool>(arg_2.a.x, true), var_0.a), vec2<bool>(all(vec3<bool>(arg_2.a.x, var_0.a.x, true)), true)), !any(arg_2.a)), Struct_1(vec2<bool>(var_1.a.x, false && !var_1.a.x), global0.b, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global0.c - arg_2.c)))));
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.x, -539f, var_0.c.x), vec3<f32>(global0.c.x, -156f, arg_2.c.x))), vec3<f32>(var_1.c.x, var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-259f)) + _wgslsmith_f_op_f32(min(122f, arg_3))))))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_mod_vec3_i32(select(~vec3<i32>(12222i, u_input.a.x, u_input.a.x) & (u_input.c.xwx >> (vec3<u32>(arg_0, global0.b.x, 64394u) % vec3<u32>(32u))), u_input.c.wxy, true), vec3<i32>(min(_wgslsmith_mult_i32(u_input.c.x, 0i), 37490i), firstTrailingBit(~u_input.a.x), ~u_input.c.x)) << ((select(_wgslsmith_mod_vec3_u32(~arg_3.b.yyy, vec3<u32>(arg_2.b.x, 38417u, arg_2.b.x)), ~vec3<u32>(0u, 1u, 15314u), true | (arg_3.a.x | false)) >> (arg_1.b.zww % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(939f, arg_1.c.x, arg_3.c.x)), vec3<f32>(arg_1.c.x, arg_3.c.x, arg_3.c.x), select(vec3<bool>(true, false, true), vec3<bool>(global0.a.x, false, true), global0.a.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-382f, -1317f, 1541f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(0i, global0.a.x, arg_1, -486f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.x, -562f, -1323f))), vec3<f32>(_wgslsmith_f_op_f32(2084f + arg_3.c.x), _wgslsmith_f_op_f32(-arg_2.c.x), arg_2.c.x))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1669f, arg_2.c.x, -788f), vec3<f32>(arg_3.c.x, -2408f, 770f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-585f, arg_3.c.x, arg_3.c.x), vec3<f32>(-2378f, arg_2.c.x, -632f), arg_1.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(arg_3.c.x * arg_1.c.x), _wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(ceil(arg_2.c.x))), select(select(vec3<bool>(arg_1.a.x, global0.a.x, true), vec3<bool>(false, true, global0.a.x), vec3<bool>(true, true, arg_1.a.x)), vec3<bool>(true, true, true), vec3<bool>(false, false, arg_3.a.x)))))));
    global2 = array<Struct_1, 30>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1286f - global0.c.x) + arg_1.c.x) * arg_3.c.x), _wgslsmith_f_op_f32(min(arg_1.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-144f, var_1.x)))))), _wgslsmith_f_op_f32(-563f - _wgslsmith_f_op_f32(-arg_1.c.x)) > _wgslsmith_f_op_f32(floor(-464f)))));
    global0 = arg_2;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 30>();
    let var_0 = Struct_1(!(!select(select(vec2<bool>(global0.a.x, false), vec2<bool>(false, true), global0.a.x), global0.a, global0.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.b, 99167u), 61906u, global0.b.x, _wgslsmith_mult_u32(u_input.b, func_1(21900u, Struct_1(vec2<bool>(false, global0.a.x), vec4<u32>(1u, 52915u, 63042u, 4640u), vec2<f32>(-691f, -554f)), global2[_wgslsmith_index_u32(4294967295u, 30u)], Struct_1(vec2<bool>(global0.a.x, false), global0.b, vec2<f32>(global0.c.x, -648f))))), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.b.x, global0.b.x, global0.b.x, 128809u), ~global0.b), global0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.c.x)) - _wgslsmith_div_f32(global0.c.x, 1196f)))));
    var var_1 = global2[_wgslsmith_index_u32(u_input.b, 30u)];
    let var_2 = Struct_1(var_1.a, ~reverseBits(select(~var_0.b, countOneBits(global0.b), true)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.c, _wgslsmith_f_op_vec2_f32(-global0.c)) - vec2<f32>(_wgslsmith_f_op_vec3_f32(func_2(u_input.c.x, false, Struct_1(vec2<bool>(var_0.a.x, true), var_1.b, var_0.c), var_1.c.x)).x, var_0.c.x)))));
    var var_3 = _wgslsmith_f_op_f32(exp2(1f));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, 594f, var_0.b.x);
}

