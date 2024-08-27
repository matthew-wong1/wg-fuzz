struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(160f, 926f);

var<private> global1: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(Struct_1(true, 22967i, vec2<bool>(true, true), vec2<bool>(false, true), 495f), Struct_1(true, -1i, vec2<bool>(true, false), vec2<bool>(true, false), -1703f), Struct_1(true, -25117i, vec2<bool>(false, true), vec2<bool>(false, false), 173f), true), Struct_3(Struct_1(true, 1i, vec2<bool>(true, false), vec2<bool>(true, false), -543f), Struct_1(true, i32(-2147483648), vec2<bool>(false, true), vec2<bool>(false, true), -3117f), Struct_1(false, -5756i, vec2<bool>(false, true), vec2<bool>(false, false), -783f), true), Struct_3(Struct_1(false, 4268i, vec2<bool>(false, true), vec2<bool>(false, false), -125f), Struct_1(false, 32210i, vec2<bool>(true, false), vec2<bool>(false, false), -1175f), Struct_1(true, -41490i, vec2<bool>(false, true), vec2<bool>(true, true), 1201f), false), Struct_3(Struct_1(true, -48504i, vec2<bool>(false, true), vec2<bool>(false, false), -149f), Struct_1(false, -46846i, vec2<bool>(true, false), vec2<bool>(true, false), -1734f), Struct_1(false, 2147483647i, vec2<bool>(false, true), vec2<bool>(false, false), -1439f), true), Struct_3(Struct_1(true, -38431i, vec2<bool>(false, true), vec2<bool>(true, true), 505f), Struct_1(false, 2147483647i, vec2<bool>(false, true), vec2<bool>(true, true), -236f), Struct_1(false, 1i, vec2<bool>(false, true), vec2<bool>(false, true), -1000f), true));

var<private> global2: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(15970u, 33343u), vec2<u32>(1u, 42621u), vec2<u32>(4294967295u, 19854u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 86992u), vec2<u32>(4294967295u, 44649u), vec2<u32>(4294967295u, 4065u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> bool {
    global1 = array<Struct_3, 5>();
    var var_0 = Struct_2(48190u, arg_0.b.b.e, ~((abs(u_input.a.x) >> (firstLeadingBit(4294967295u) % 32u)) & 0i));
    global2 = array<vec2<u32>, 7>();
    let var_1 = -u_input.a;
    let var_2 = 1u;
    return !(!select(all(!arg_0.c), !all(arg_0.c), !(!arg_0.b.b.d.x)));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> Struct_1 {
    global2 = array<vec2<u32>, 7>();
    global0 = arg_1.zy;
    let var_0 = ~(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x >> (1u % 32u), u_input.a.x), vec2<i32>(u_input.a.x, _wgslsmith_add_i32(13214i, arg_0)), vec2<i32>(2147483647i, 48998i) & u_input.a.yz) & u_input.a.wx);
    var var_1 = Struct_3(Struct_1(false, reverseBits(~13307i), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true))), vec2<bool>(true, _wgslsmith_div_f32(arg_1.x, -742f) <= -255f), global0.x), Struct_1(!func_3(Struct_4(Struct_1(false, 2147483647i, vec2<bool>(true, false), vec2<bool>(true, false), -1214f), global1[_wgslsmith_index_u32(1u, 5u)], vec4<bool>(true, false, false, true)), arg_1.x), ~(~u_input.a.x), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true))), vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -208f) * global0.x)), Struct_1(true, firstTrailingBit(arg_0), select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), any(vec4<bool>(true, false, false, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), false), all(vec4<bool>(false, false, false, true))), vec2<bool>(_wgslsmith_clamp_u32(1u, 0u, 1364u) < ~122891u, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(-1181f + arg_1.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(arg_1.x + 1994f))))) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) + _wgslsmith_f_op_f32(f32(-1f) * -754f)))));
    var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(abs(abs(vec3<u32>(0u, 0u, 1u))), vec3<u32>(1u, 1u, 1u)) & select(24459u, _wgslsmith_clamp_u32(~1u, 0u, ~select(79846u, 4294967295u, true)), (false || (2410f < arg_1.x)) || var_1.a.d.x), 5u)];
    return Struct_1(!var_1.c.c.x, _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mult_i32(-19644i, -19902i)) & u_input.a.x, !vec2<bool>((true != var_1.c.c.x) & true, true | var_1.a.c.x), vec2<bool>(any(vec2<bool>(!var_1.a.a, true)), !(true | !var_1.d)), _wgslsmith_div_f32(708f, 347f));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>) -> vec2<f32> {
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(217f, _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-arg_0.b.e))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(113f * _wgslsmith_f_op_f32(-arg_1.x)))));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<f32>) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_4(Struct_3(func_2(19859i, arg_1.wwy), Struct_1(false, u_input.a.x, vec2<bool>(true, true), vec2<bool>(false, false), arg_1.x), func_2(u_input.a.x, arg_2.wyw), true), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.x, 1241f, global0.x), vec3<f32>(global0.x, arg_1.x, -1125f))))))) * arg_2.xw);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(global1[_wgslsmith_index_u32(~min(5464u, ~8346u), 5u)], vec3<f32>(1894f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_1.x, 1000f))))))).x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.a.x, vec4<f32>(-1990f, 1283f, 1000f, 726f), vec4<f32>(global0.x, global0.x, global0.x, global0.x))) + -1000f))))));
    global2 = array<vec2<u32>, 7>();
    var var_0 = vec2<u32>(84028u, ~(1u << (0u % 32u)));
    let var_1 = _wgslsmith_clamp_vec2_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(16918u, 7u)], ~select(max(vec2<u32>(var_0.x, var_0.x), global2[_wgslsmith_index_u32(var_0.x ^ var_0.x, 7u)]), reverseBits(select(vec2<u32>(4294967295u, 0u), vec2<u32>(var_0.x, var_0.x), vec2<bool>(false, true))), !func_2(u_input.a.x, vec3<f32>(global0.x, -734f, -821f)).c));
    var_0 = vec2<u32>(max(var_0.x, ~var_1.x), 0u);
    var var_2 = true;
    let var_3 = u_input.a.x & _wgslsmith_add_i32(~(~1i), -8531i);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -874f, -150f, global0.x) - vec4<f32>(global0.x, -877f, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-120f, global0.x, -679f, 277f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1228f), -1214f, _wgslsmith_f_op_f32(round(-332f)), 1000f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1003f, -308f, -291f, global0.x)))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-2315f)), _wgslsmith_f_op_f32(min(global0.x, 835f)))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(round(-209f)), 727f)));
    global1 = array<Struct_3, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<u32>(~(~var_0.x), firstTrailingBit(max(0u, 1u)))), var_3, vec2<f32>(_wgslsmith_f_op_f32(var_4.x + global0.x), _wgslsmith_f_op_f32(step(1079f, _wgslsmith_f_op_f32(func_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1000f, var_4.x, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-699f, -965f, global0.x, global0.x))))))), _wgslsmith_mult_vec3_u32(~firstTrailingBit(vec3<u32>(43678u, 4294967295u, var_1.x) << (vec3<u32>(0u, var_0.x, var_0.x) % vec3<u32>(32u))), vec3<u32>(var_1.x, 1u, (var_1.x | var_1.x) >> (reverseBits(var_0.x) % 32u))));
}

