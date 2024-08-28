struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_3(true), 482f);

var<private> global1: array<f32, 18> = array<f32, 18>(1005f, 1000f, 902f, -1023f, 1098f, -103f, 876f, -671f, -271f, -315f, -451f, 1511f, -1091f, -610f, 1534f, -1117f, -353f, -653f);

var<private> global2: vec4<u32>;

var<private> global3: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(false));

var<private> global4: array<vec4<u32>, 12>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(167f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b))), all(vec4<bool>(arg_0, true, true, false)))) + _wgslsmith_f_op_f32(-arg_1.x)), arg_2.b & 1i, 55993u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(778f, -1000f)), 200f)), _wgslsmith_f_op_f32(ceil(-113f))));
    global4 = array<vec4<u32>, 12>();
    global3 = array<Struct_3, 15>();
    global0 = Struct_5(Struct_3((arg_0 == arg_0) & !(true | arg_3.a.x)), _wgslsmith_div_f32(arg_1.x, global0.b));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.b, arg_1.x, global0.a.a)))) * _wgslsmith_div_f32(global1[_wgslsmith_index_u32(22025u, 18u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2544f)))), -1242f, arg_2.a);
    return arg_3.a.x;
}

fn func_2(arg_0: vec3<i32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(~countOneBits(select(4294967295u, 0u, false)), 18u)])), -u_input.d.x, ~(~0u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.b, _wgslsmith_f_op_f32(156f * -1595f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-265f, global1[_wgslsmith_index_u32(1u, 18u)])))));
    global4 = array<vec4<u32>, 12>();
    let var_1 = !vec4<bool>(func_3(true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(482f, 571f, 356f, global1[_wgslsmith_index_u32(46232u, 18u)]))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.d.x, global0.b, global1[_wgslsmith_index_u32(global2.x, 18u)], -749f))), global0.a.a)), Struct_1(-759f, var_0.b, global2.x, var_0.d), Struct_2(!vec2<bool>(true, global0.a.a))), global0.a.a, u_input.a >= -37246i, true);
    let var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(~(~abs(global2.x)), select(_wgslsmith_dot_vec3_u32(vec3<u32>(53712u, 0u, 4294967295u), ~vec3<u32>(22677u, 33742u, 1u)), global2.x, !(var_1.x && var_1.x)), min(1u, 1u)), ~(~(~global2.wyz)) >> (global2.zww % vec3<u32>(32u)));
    let var_3 = 1i;
    return true;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: f32, arg_3: vec2<bool>) -> Struct_5 {
    var var_0 = global2.zxy;
    global4 = array<vec4<u32>, 12>();
    var var_1 = Struct_2(arg_3);
    var var_2 = i32(-1i) * -64189i;
    var_0 = ~(~(select(vec3<u32>(var_0.x, 29220u, var_0.x), _wgslsmith_add_vec3_u32(arg_0, vec3<u32>(global2.x, global2.x, global2.x)), global0.a.a) & ~_wgslsmith_div_vec3_u32(vec3<u32>(0u, global2.x, 77211u), global2.xxw)));
    return Struct_5(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.b, global1[_wgslsmith_index_u32(0u, 18u)]))))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_1) -> Struct_5 {
    let var_0 = Struct_2(select(vec2<bool>(func_4(abs(vec3<u32>(6593u, arg_1.c, 1u)), arg_0, -164f, select(vec2<bool>(global0.a.a, global0.a.a), vec2<bool>(true, global0.a.a), true)).a.a, true), select(vec2<bool>(func_3(arg_0.a.a, vec4<f32>(-552f, global1[_wgslsmith_index_u32(arg_1.c, 18u)], 1013f, arg_0.b), arg_1, Struct_2(vec2<bool>(true, false))), true), !(!vec2<bool>(arg_0.a.a, true)), !(arg_1.b >= u_input.a)), !select(vec2<bool>(global0.a.a, global0.a.a), select(vec2<bool>(arg_0.a.a, global0.a.a), vec2<bool>(arg_0.a.a, true), false), select(vec2<bool>(true, true), vec2<bool>(false, true), global0.a.a))));
    var var_1 = all(!vec3<bool>(var_0.a.x, !(!global0.a.a), _wgslsmith_div_u32(global2.x, global2.x) < _wgslsmith_dot_vec2_u32(global2.xw, vec2<u32>(arg_1.c, arg_1.c))));
    global4 = array<vec4<u32>, 12>();
    let var_2 = arg_1;
    return Struct_5(global0.a, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_1.c, 18u)], 118f) * _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, 1000f), 1f)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: f32) -> i32 {
    let var_0 = func_5(func_4(abs(~global2.wxy), Struct_5(global0.a, -1178f), _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1082f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2.x, 18u)] + arg_2)))), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(arg_1, arg_1)), !vec2<bool>(arg_1, arg_1), func_2(vec3<i32>(15723i, -22460i, u_input.c)))), Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 18u)]), abs(arg_0.x), global2.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(339f, global0.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(global2.x, 18u)], global1[_wgslsmith_index_u32(global2.x, 18u)])), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1626f, 589f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-143f, -770f) + vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], -1014f))))))));
    let var_1 = func_4(global2.xzx, func_5(func_4(_wgslsmith_add_vec3_u32(vec3<u32>(global2.x, 0u, global2.x), global2.xww), Struct_5(Struct_3(global0.a.a), global0.b), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(firstLeadingBit(global2.x), 18u)])), select(select(vec2<bool>(false, true), vec2<bool>(var_0.a.a, var_0.a.a), vec2<bool>(true, false)), select(vec2<bool>(false, global0.a.a), vec2<bool>(arg_1, var_0.a.a), arg_1), true)), Struct_1(-435f, arg_0.x, ~1u | abs(global2.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-506f, -737f)))))), func_4(vec3<u32>(46567u, 36886u, ~77242u), func_5(var_0, Struct_1(global1[_wgslsmith_index_u32(11338u, 18u)], firstLeadingBit(-1i), min(5093u, 0u), vec2<f32>(-586f, 238f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.x, 18u)]))), select(!select(vec2<bool>(false, arg_1), vec2<bool>(true, false), false), select(select(vec2<bool>(global0.a.a, true), vec2<bool>(var_0.a.a, true), vec2<bool>(true, var_0.a.a)), vec2<bool>(var_0.a.a, true), func_2(vec3<i32>(7934i, 1i, u_input.c))), vec2<bool>(arg_1, true))).b, !select(vec2<bool>(true, true), vec2<bool>(!var_0.a.a, !arg_1), vec2<bool>(func_5(var_0, Struct_1(global0.b, u_input.d.x, global2.x, vec2<f32>(2492f, arg_2))).a.a, arg_1 || global0.a.a))).a.a;
    global1 = array<f32, 18>();
    global3 = array<Struct_3, 15>();
    var var_2 = _wgslsmith_f_op_f32(-global0.b);
    return -firstTrailingBit(38158i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 18>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b))), func_1(firstLeadingBit(abs(firstLeadingBit(u_input.d))), any(select(select(vec2<bool>(global0.a.a, false), vec2<bool>(global0.a.a, false), vec2<bool>(global0.a.a, global0.a.a)), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global0.b))))), global2.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(3085f, global1[_wgslsmith_index_u32(firstLeadingBit(58882u), 18u)])))));
    global1 = array<f32, 18>();
    global1 = array<f32, 18>();
    var var_1 = select(select(select(vec3<bool>(any(vec4<bool>(global0.a.a, global0.a.a, true, false)), 10170u == var_0.c, any(vec2<bool>(global0.a.a, global0.a.a))), vec3<bool>(var_0.a <= var_0.a, func_2(vec3<i32>(u_input.a, -1i, -1i)), false), select(vec3<bool>(true, global0.a.a, global0.a.a), vec3<bool>(true, true, true), global0.a.a)), !vec3<bool>(true, false, func_5(Struct_5(global0.a, global1[_wgslsmith_index_u32(var_0.c, 18u)]), Struct_1(-699f, u_input.c, 41027u, var_0.d)).a.a), vec3<bool>(_wgslsmith_clamp_u32(11396u, 4294967295u, var_0.c) < 1u, !(-1586f >= global0.b), true)), vec3<bool>(true, all(vec2<bool>(global0.b <= global1[_wgslsmith_index_u32(global2.x, 18u)], global0.a.a)), false), !select(!select(vec3<bool>(true, false, global0.a.a), vec3<bool>(false, false, global0.a.a), global0.a.a), vec3<bool>(true, true, true), global0.a.a));
    global1 = array<f32, 18>();
    var_0 = Struct_1(463f, var_0.b, global2.x, _wgslsmith_f_op_vec2_f32(max(var_0.d, var_0.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(2502f)), global2.wwz & ~(reverseBits(vec3<u32>(57196u, 4294967295u, 88622u)) ^ global2.ywy));
}

