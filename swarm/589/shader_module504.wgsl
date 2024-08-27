struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(1i, Struct_1(117f, 1i, vec3<i32>(1i, 0i, 50900i), vec4<u32>(87706u, 1u, 4294967295u, 80969u), false), Struct_1(-1320f, 2147483647i, vec3<i32>(-31333i, -1334i, 2147483647i), vec4<u32>(1u, 4294967295u, 0u, 13937u), false), Struct_1(241f, 0i, vec3<i32>(11607i, 8120i, 1i), vec4<u32>(0u, 0u, 1u, 4294967295u), true)), vec2<f32>(1000f, 279f), 1i, vec4<i32>(-8453i, -28420i, 0i, -34829i));

var<private> global1: array<Struct_2, 3>;

var<private> global2: Struct_1 = Struct_1(655f, 71477i, vec3<i32>(2147483647i, 74936i, 0i), vec4<u32>(10356u, 50641u, 31126u, 1u), true);

var<private> global3: Struct_1;

var<private> global4: array<u32, 23> = array<u32, 23>(0u, 1u, 50550u, 5599u, 4294967295u, 0u, 1u, 4294967295u, 3723u, 0u, 4294967295u, 73019u, 0u, 4294967295u, 0u, 17421u, 2389u, 1u, 132200u, 60760u, 41421u, 24410u, 60605u);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = false;
    return -521f;
}

fn func_3(arg_0: vec4<f32>) -> bool {
    let var_0 = ~(global0.d << (vec4<u32>(countOneBits(~global0.a.c.d.x), 1u, max(global4[_wgslsmith_index_u32(~85690u, 23u)], global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(38147u, global0.a.b.d.x, 4294967295u), global3.d.zwy), 23u)]), _wgslsmith_dot_vec3_u32(global2.d.xyz, ~vec3<u32>(4294967295u, 4294967295u, 71618u))) % vec4<u32>(32u)));
    let var_1 = global0.a.c;
    global2 = Struct_1(-1434f, i32(-1i) * -1i, global2.c, _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(max(4294967295u, 43231u), countOneBits(global3.d.x), ~global0.a.b.d.x), ~1u << (select(43587u, 1u, var_1.e) % 32u), min(~global3.d.x, ~4294967295u), 0u), ~select(global2.d, global3.d & vec4<u32>(72649u, global3.d.x, global3.d.x, 67254u), global2.d.x >= 4294967295u)), global3.e);
    global1 = array<Struct_2, 3>();
    var var_2 = _wgslsmith_add_vec4_u32(~var_1.d, ~vec4<u32>(var_1.d.x, 49813u, max(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.d.x, 4294967295u, 1u, global0.a.c.d.x), global2.d), _wgslsmith_dot_vec2_u32(global3.d.wx, var_1.d.yy)), 4294967295u));
    return true;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    global4 = array<u32, 23>();
    var var_0 = ~(~(~global0.d << (~select(global3.d, global3.d, global3.e) % vec4<u32>(32u))));
    global4 = array<u32, 23>();
    var var_1 = Struct_1(global2.a, 0i, var_0.yyx, select(_wgslsmith_sub_vec4_u32(global0.a.b.d, ~(~vec4<u32>(4294967295u, global2.d.x, global4[_wgslsmith_index_u32(global2.d.x, 23u)], global4[_wgslsmith_index_u32(global3.d.x, 23u)]))), arg_1.d, vec4<bool>(true, true, !all(vec4<bool>(false, global3.e, false, false)), global3.e)), func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.d.a, 1502f, _wgslsmith_f_op_f32(f32(-1f) * -808f), _wgslsmith_f_op_f32(func_2(arg_1.a))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.a, global2.a, -125f, global3.a), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-113f, 462f, 270f, global3.a), vec4<f32>(-222f, arg_1.a, 1516f, 1302f))))), !(!vec4<bool>(true, arg_1.e, false, true))))));
    var var_2 = select(reverseBits(-abs(_wgslsmith_add_vec3_i32(var_1.c, arg_1.c))), select(vec3<i32>(global2.c.x, -u_input.a.x, ~(arg_1.c.x & global3.b)), ~vec3<i32>(-17265i, ~(-1i), select(arg_1.b, arg_1.c.x, global0.a.d.e)), arg_0), vec3<bool>(all(select(select(vec4<bool>(false, arg_2.x, global2.e, true), vec4<bool>(true, false, var_1.e, false), true), vec4<bool>(false, true, arg_0.x, arg_1.e), func_3(vec4<f32>(arg_1.a, global0.a.d.a, 435f, -642f)))), !arg_0.x, true));
    return Struct_1(_wgslsmith_f_op_f32(537f - -2227f), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(arg_1.c.x, 2147483647i, 0i), ~(-arg_1.c)), vec3<i32>(var_2.x, _wgslsmith_clamp_i32(var_0.x, i32(-1i) * -global3.c.x, -46120i), -2269i), vec4<u32>(global2.d.x, ~1u, global3.d.x, min(7830u, select(abs(var_1.d.x), var_1.d.x, !arg_0.x))), true);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.b.x), 246f));
    var var_1 = !global2.e;
    var_1 = all(!select(vec4<bool>(global3.e, func_3(vec4<f32>(389f, -1004f, arg_1.b.a, global0.a.c.a)), true, arg_0), !select(vec4<bool>(global3.e, false, true, false), vec4<bool>(false, global0.a.b.e, arg_0, false), false), any(!vec4<bool>(global0.a.c.e, false, arg_0, global2.e))));
    let var_2 = !(!(!(!select(vec4<bool>(false, arg_1.b.e, global3.e, global2.e), vec4<bool>(true, global0.a.c.e, global3.e, global3.e), vec4<bool>(true, true, false, true)))));
    global2 = func_1(!(!vec3<bool>(false, true, any(var_2))), func_1(!(!select(vec3<bool>(arg_0, global2.e, var_2.x), vec3<bool>(false, global0.a.d.e, true), true)), Struct_1(2316f, abs(u_input.b) >> (global4[_wgslsmith_index_u32(~95609u, 23u)] % 32u), global2.c, _wgslsmith_mod_vec4_u32(firstTrailingBit(arg_1.b.d), _wgslsmith_div_vec4_u32(vec4<u32>(11967u, arg_1.c.d.x, 1u, global0.a.c.d.x), global3.d)), select(select(false, arg_1.b.e, false), true, var_2.x)), vec2<bool>(false, true)), vec2<bool>(arg_1.b.e, func_1(!select(vec3<bool>(global0.a.c.e, arg_1.b.e, global3.e), vec3<bool>(false, var_2.x, var_2.x), var_2.yyx), global0.a.d, select(select(vec2<bool>(var_2.x, false), vec2<bool>(false, var_2.x), false), !vec2<bool>(true, arg_1.b.e), select(var_2.yz, vec2<bool>(arg_0, arg_0), var_2.xz))).e));
    return Struct_3(_wgslsmith_f_op_f32(-global2.a), !any(vec4<bool>(true, global0.a.d.e, 77764u > arg_2.x, true)), global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.a, _wgslsmith_f_op_f32(-global2.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -974f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.a, -1000f)) + _wgslsmith_f_op_f32(global0.a.c.a * global2.a)))), !(!(!all(vec3<bool>(true, true, true)))), -960f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.a + 246f), global3.a)))));
    var var_2 = func_4(!global2.e, Struct_2(-9395i, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-482f))), global0.d.x, abs(-vec3<i32>(-57543i, 36263i, global3.b)), ~global2.d, var_0.b & (var_0.b | false)), func_1(select(vec3<bool>(false, var_0.b, global2.e), select(vec3<bool>(var_0.b, true, global3.e), vec3<bool>(global2.e, true, global2.e), var_0.b), !var_0.b), Struct_1(_wgslsmith_div_f32(global2.a, 353f), 12665i & u_input.b, vec3<i32>(1i, 1i, 1i), countOneBits(global0.a.d.d), 5464u != global3.d.x), vec2<bool>(true, true)), func_1(!(!vec3<bool>(global3.e, true, true)), func_1(vec3<bool>(global3.e, false, true), Struct_1(-890f, 2147483647i, vec3<i32>(1i, -1i, global3.b), vec4<u32>(0u, global0.a.b.d.x, global4[_wgslsmith_index_u32(global0.a.c.d.x, 23u)], global3.d.x), false), vec2<bool>(global0.a.d.e, true)), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(var_0.b, global0.a.d.e)))), _wgslsmith_add_vec2_u32(max(vec2<u32>(_wgslsmith_dot_vec3_u32(global0.a.b.d.ywx, vec3<u32>(24078u, 4294967295u, 51951u)), max(global4[_wgslsmith_index_u32(global0.a.d.d.x, 23u)], 1u)), (vec2<u32>(global0.a.c.d.x, global4[_wgslsmith_index_u32(4294967295u, 23u)]) ^ vec2<u32>(1u, 0u)) >> (countOneBits(global3.d.xx) % vec2<u32>(32u))), vec2<u32>(global2.d.x, global2.d.x)));
    var var_3 = u_input.a.x;
    global3 = global0.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(reverseBits(max(_wgslsmith_clamp_vec4_i32(global0.d, global0.d, global0.d), global0.d))));
}

