struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-14454i, 0i, -1i);

var<private> global1: Struct_4 = Struct_4(vec4<f32>(-1288f, -1060f, -1454f, 392f), Struct_3(false, -1017f, vec4<u32>(4294967295u, 27059u, 20625u, 1634u), 0u), vec2<f32>(-242f, 157f), -1937f);

var<private> global2: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(true, -217f, vec4<u32>(7801u, 4294967295u, 8785u, 37729u), 53339u), Struct_3(false, 1000f, vec4<u32>(1u, 20987u, 1u, 0u), 1u), Struct_3(false, -1591f, vec4<u32>(1u, 51840u, 59132u, 0u), 11709u), Struct_3(true, 539f, vec4<u32>(72737u, 0u, 0u, 1u), 2301u), Struct_3(true, -1736f, vec4<u32>(1u, 4294967295u, 4294967295u, 30360u), 0u), Struct_3(false, 899f, vec4<u32>(11067u, 4294967295u, 1u, 34126u), 12197u), Struct_3(false, -1157f, vec4<u32>(59743u, 18266u, 1u, 46234u), 79679u), Struct_3(false, 570f, vec4<u32>(31536u, 4294967295u, 0u, 34601u), 67770u), Struct_3(false, -125f, vec4<u32>(8469u, 1u, 1394u, 1u), 1u), Struct_3(true, -1414f, vec4<u32>(0u, 4294967295u, 4294967295u, 78858u), 4294967295u), Struct_3(false, -1254f, vec4<u32>(9185u, 1u, 0u, 0u), 4294967295u), Struct_3(false, -396f, vec4<u32>(81714u, 10346u, 1u, 4294967295u), 1u), Struct_3(true, -988f, vec4<u32>(1u, 363u, 1u, 26411u), 1u));

var<private> global3: vec4<i32> = vec4<i32>(43176i, -1i, i32(-2147483648), -62973i);

var<private> global4: array<bool, 4> = array<bool, 4>(false, false, false, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.b.b, global1.d, global1.b.a)) - _wgslsmith_f_op_f32(-global1.d))), -241f)) + global1.a.x);
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(981f, 1613f, -703f, global1.a.x) + global1.a) + vec4<f32>(global1.b.b, global1.d, -1223f, 321f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global1.a)))) - global1.a), Struct_3(global1.b.a, _wgslsmith_f_op_f32(-global1.a.x), ~firstLeadingBit(vec4<u32>(0u, global1.b.c.x, global1.b.c.x, u_input.b.x)), global1.b.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global1.a.yw)) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.b.b)) - _wgslsmith_f_op_f32(ceil(-3600f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.b.b, global1.b.b, global4[_wgslsmith_index_u32(13095u, 4u)])) + _wgslsmith_f_op_f32(select(-1035f, global1.a.x, global1.b.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1141f)));
    global2 = array<Struct_3, 13>();
    let var_2 = Struct_3(!global1.b.a, global1.b.b, _wgslsmith_sub_vec4_u32(select(~vec4<u32>(var_1.b.c.x, global1.b.c.x, var_1.b.d, 45118u), reverseBits(vec4<u32>(4294967295u, 46510u, 26882u, 17160u)), global1.b.a), vec4<u32>(global1.b.d, ~u_input.c.x, 1u, ~45650u)) ^ firstLeadingBit(var_1.b.c), ~(~(_wgslsmith_div_u32(u_input.d, 66428u) ^ var_1.b.d)));
    let var_3 = Struct_3(all(!select(select(vec3<bool>(var_2.a, true, global4[_wgslsmith_index_u32(var_1.b.c.x, 4u)]), vec3<bool>(var_1.b.a, false, false), vec3<bool>(true, false, var_1.b.a)), !vec3<bool>(global1.b.a, var_2.a, var_2.a), vec3<bool>(global1.b.a, true, global1.b.a))), _wgslsmith_f_op_f32(700f + _wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.d, var_1.a.x)) - -788f))), vec4<u32>(countOneBits(_wgslsmith_div_u32(global1.b.d, u_input.c.x)), global1.b.d, _wgslsmith_div_u32(_wgslsmith_div_u32(0u, var_2.d), var_1.b.d | 29748u), 1u) >> (_wgslsmith_sub_vec4_u32(global1.b.c, global1.b.c) % vec4<u32>(32u)), reverseBits(u_input.c.x));
    return ~2147483647i;
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>) -> f32 {
    var var_0 = vec2<bool>(true, !(max(func_3(), 0i | arg_1.x) < firstTrailingBit(global0.x)));
    var var_1 = vec3<bool>(!(!(!any(vec3<bool>(arg_0.b.a, false, global1.b.a)))), false, arg_0.b.a);
    let var_2 = vec3<bool>(var_1.x == (~abs(global1.b.c.x) >= ~max(59384u, 0u)), true, any(vec3<bool>(any(var_1.xy), global1.b.a, var_1.x)));
    let var_3 = ~min(func_3(), global0.x);
    let var_4 = !(!select(!vec3<bool>(global1.b.a, false, false), select(!var_2, !var_2, false), select(!vec3<bool>(true, false, var_1.x), vec3<bool>(var_1.x, global4[_wgslsmith_index_u32(5325u, 4u)], global1.b.a), vec3<bool>(true, false, var_2.x))));
    return global1.a.x;
}

fn func_1() -> Struct_1 {
    global4 = array<bool, 4>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_4(global1.a, global2[_wgslsmith_index_u32(0u, 13u)], global1.c, global1.c.x), global3.xzz)) - global1.b.b) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -413f), _wgslsmith_f_op_f32(global1.b.b * global1.b.b)))) - _wgslsmith_f_op_f32(464f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c.x * global1.a.x), global1.c.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1180f))))) - global1.a.x));
    var var_1 = u_input.d;
    let var_2 = Struct_2(_wgslsmith_mult_i32(global0.x, _wgslsmith_clamp_i32(abs(-41816i), global0.x & -57711i, _wgslsmith_dot_vec4_i32(vec4<i32>(60434i, 2570i, -40135i, global0.x), vec4<i32>(global3.x, global3.x, global0.x, global0.x))) & global3.x));
    var_0 = -1102f;
    return Struct_1(vec2<bool>(true, true), var_2.a, global0.x, !vec2<bool>(all(vec4<bool>(global1.b.a, false, global4[_wgslsmith_index_u32(u_input.b.x, 4u)], false)), false | (global4[_wgslsmith_index_u32(u_input.c.x, 4u)] & global1.b.a)), u_input.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_4 {
    let var_0 = _wgslsmith_clamp_vec3_i32(~firstTrailingBit(abs(global3.xww) | vec3<i32>(1i, global0.x, -10295i)), global3.yzw, _wgslsmith_mult_vec3_i32(vec3<i32>(~global3.x, 0i, -43962i), reverseBits(vec3<i32>(global3.x, -54394i, global0.x))) & global3.zzx);
    global4 = array<bool, 4>();
    var var_1 = Struct_2(var_0.x);
    global3 = -(vec4<i32>(-1i) * -(max(vec4<i32>(44453i, -5044i, arg_0.b, arg_0.b), vec4<i32>(var_1.a, 24687i, 12676i, global0.x)) | select(vec4<i32>(-46091i, 39008i, -32703i, arg_0.b), vec4<i32>(global0.x, global3.x, arg_0.b, -29156i), false)));
    let var_2 = Struct_2(i32(-1i) * -(arg_0.c | firstLeadingBit(15924i)));
    return Struct_4(global1.a, Struct_3(true, _wgslsmith_f_op_f32(-global1.b.b), select(~vec4<u32>(114891u, 31570u, u_input.a, 51402u), global1.b.c | global1.b.c, select(vec4<bool>(false, true, global1.b.a, global1.b.a), vec4<bool>(true, true, false, global1.b.a), false)) | vec4<u32>(~u_input.a, global1.b.c.x, _wgslsmith_div_u32(u_input.c.x, 4294967295u), ~4294967295u), ~u_input.b.x | ~31551u), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, 255f) - vec2<f32>(global1.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global1.d)))))), global1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), -global3.x);
    global0 = select(abs(abs(global3.wyz)), global3.xyz, !(!select(vec3<bool>(global1.b.a, false, global4[_wgslsmith_index_u32(var_0.b.c.x, 4u)]), !vec3<bool>(false, global4[_wgslsmith_index_u32(25826u, 4u)], var_0.b.a), any(vec4<bool>(true, true, global1.b.a, false)))));
    global0 = ~(~(vec3<i32>(global0.x, ~6428i, 1i) | _wgslsmith_sub_vec3_i32(vec3<i32>(global3.x, global0.x, global0.x) | global3.ywx, vec3<i32>(global3.x, -15976i, 1i))));
    var var_1 = _wgslsmith_f_op_f32(-global1.c.x);
    var var_2 = vec2<u32>(var_0.b.d, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b.d, global1.b.c.x, 0u), ~global1.b.c.wzy), vec3<u32>(15506u, ~global1.b.c.x, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(global1.b.c.x, u_input.b.x, global1.b.d)))), var_0.b.d));
    global1 = func_4(func_1(), 1i << (var_0.b.c.x % 32u));
    let var_3 = _wgslsmith_f_op_f32(-global1.d);
    let x = u_input.a;
    s_output = StorageBuffer(global3.xy, vec4<u32>(_wgslsmith_mult_u32(1u, firstLeadingBit(_wgslsmith_mod_u32(u_input.c.x, 4294967295u))), max(global1.b.c.x, var_0.b.c.x), ~(~abs(26424u)), 4294967295u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1321f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-211f, var_3)), -983f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-607f, 1000f)) - 1008f), _wgslsmith_f_op_f32(trunc(-1049f))) * global1.a), -2147483647i);
}

