struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: f32 = 1167f;

var<private> global2: array<f32, 30> = array<f32, 30>(-300f, 474f, 371f, -776f, -545f, -433f, -367f, 942f, 1249f, -557f, 1212f, 889f, -393f, 1583f, 2093f, -658f, -117f, 2249f, 1000f, -1000f, 2857f, -618f, -1000f, 1000f, -349f, -2319f, 1000f, -1000f, 303f, 379f);

var<private> global3: array<vec2<u32>, 8>;

var<private> global4: u32 = 29307u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> bool {
    return !global0.x;
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>) -> vec2<bool> {
    let var_0 = Struct_3(arg_0.b.e.a, Struct_2(_wgslsmith_dot_vec2_i32(-(~arg_0.b.d.c), vec2<i32>(u_input.c.x, _wgslsmith_add_i32(arg_0.b.e.c.x, -1i))), firstTrailingBit(-1i), arg_0.b.e.b.x, arg_0.b.e, arg_0.b.e));
    let var_1 = vec4<bool>(any(!select(!vec4<bool>(true, true, true, arg_0.b.e.a), vec4<bool>(var_0.a, false, arg_0.a, true), !vec4<bool>(var_0.a, true, false, var_0.a))), !(0i != u_input.a.x), false, !(u_input.a.x != _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.e.c.x, 1i), arg_0.b.d.c), ~u_input.b.x, -2147483647i)));
    var var_2 = arg_0.b.d.b.x;
    var var_3 = ~(~_wgslsmith_sub_u32(max(var_0.b.d.b.x, 87917u), 51945u)) != _wgslsmith_mult_u32(9129u, var_0.b.d.b.x);
    global3 = array<vec2<u32>, 8>();
    return var_1.wz;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_1 {
    global0 = vec2<bool>(func_2(), global0.x);
    global0 = select(select(!(!vec2<bool>(arg_1.e.a, arg_1.d.a)), func_3(Struct_3(true, arg_1), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.d, 30u)], -306f, arg_2.x)) + vec3<f32>(global2[_wgslsmith_index_u32(16419u, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(u_input.d, 30u)]))), !(!func_3(Struct_3(true, Struct_2(-2147483647i, -2147483647i, arg_1.c, arg_1.e, Struct_1(global0.x, arg_1.d.b, vec2<i32>(u_input.b.x, 2147483647i)))), vec3<f32>(global2[_wgslsmith_index_u32(arg_0, 30u)], 1000f, global2[_wgslsmith_index_u32(0u, 30u)])))), select(select(!func_3(Struct_3(global0.x, arg_1), vec3<f32>(-1203f, arg_2.x, arg_2.x)), select(vec2<bool>(true, true), select(vec2<bool>(global0.x, arg_1.e.a), vec2<bool>(true, global0.x), true), false | global0.x), vec2<bool>(arg_1.e.a, arg_1.e.b.x <= arg_0)), !(!select(vec2<bool>(global0.x, arg_1.e.a), vec2<bool>(true, false), arg_1.d.a)), !func_3(Struct_3(true, Struct_2(25657i, u_input.a.x, arg_0, arg_1.e, Struct_1(false, vec2<u32>(arg_0, 0u), u_input.a))), arg_2)), vec2<bool>(!(u_input.a.x == _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.d.c.x, arg_1.d.c.x, -3218i, u_input.b.x), vec4<i32>(0i, -1i, -38487i, -27531i))), !(any(vec3<bool>(arg_1.e.a, false, global0.x)) && true)));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(arg_1.d.b.x, 30u)], -174f, global2[_wgslsmith_index_u32(41725u, 30u)], 442f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(u_input.d, 30u)], -218f, arg_2.x, global2[_wgslsmith_index_u32(u_input.d, 30u)]))), vec4<f32>(1411f, 225f, 315f, -1267f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -226f, arg_2.x, arg_2.x) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(arg_0, 30u)], arg_2.x, global2[_wgslsmith_index_u32(u_input.d, 30u)], -1213f), vec4<f32>(-305f, -514f, -529f, arg_2.x), arg_1.e.a))), any(!vec4<bool>(false, true, false, arg_1.d.a)))), arg_1.d.a)));
    global0 = vec2<bool>(func_2(), false);
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(253f, 290f, arg_2.x, -790f) - vec4<f32>(-1375f, -1537f, arg_2.x, -520f))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 30u)]), _wgslsmith_f_op_f32(round(-1375f))), -703f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(1u, 30u)], arg_2.x)), -947f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.x)))))));
    return arg_1.e;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = !arg_1.zx;
    var var_1 = arg_0.b;
    let var_2 = Struct_2(u_input.b.x, -9935i, countOneBits(1u), func_1(max(0u, min(arg_3.d.b.x | arg_3.d.b.x, arg_3.d.b.x)), Struct_2(arg_0.d.c.x, 14230i, arg_3.e.b.x, Struct_1(any(vec3<bool>(var_0.x, arg_0.d.a, arg_0.e.a)), ~arg_0.d.b, _wgslsmith_mod_vec2_i32(vec2<i32>(arg_3.e.c.x, -2147483647i), vec2<i32>(arg_0.d.c.x, -72332i))), Struct_1(global0.x, arg_3.e.b, min(arg_3.d.c, vec2<i32>(arg_0.e.c.x, -2147483647i)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-587f, global2[_wgslsmith_index_u32(arg_3.c, 30u)], -1793f) + vec3<f32>(global2[_wgslsmith_index_u32(6318u, 30u)], 1584f, global2[_wgslsmith_index_u32(1u, 30u)])) - vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(38139u, 30u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 30u)], -1000f, global2[_wgslsmith_index_u32(4294967295u, 30u)])))))), func_1(select(~abs(4294967295u), countOneBits(_wgslsmith_mod_u32(u_input.d, 0u)), arg_0.e.a), arg_3, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(243f, _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(arg_0.c, 30u)], global2[_wgslsmith_index_u32(14342u, 30u)])), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 30u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1949f, 208f, 567f), vec3<f32>(global2[_wgslsmith_index_u32(2752u, 30u)], global2[_wgslsmith_index_u32(arg_0.e.b.x, 30u)], global2[_wgslsmith_index_u32(57157u, 30u)]), arg_3.d.a)))))));
    var var_3 = arg_0.a;
    let var_4 = func_1(select(arg_3.d.b.x, 17271u, false), var_2, vec3<f32>(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(~reverseBits(4294967295u), 30u)])), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(24726u, 1u), (var_2.c | arg_0.e.b.x) >> (~var_2.d.b.x % 32u)), 30u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_3.e.b.x, 30u)]))))));
    return Struct_2(var_2.a, 0i, ~func_1(0u, Struct_2(_wgslsmith_mult_i32(31220i, var_4.c.x), -1i, ~1u, var_2.e, func_1(arg_3.c, arg_0, vec3<f32>(455f, -1497f, 500f))), vec3<f32>(_wgslsmith_f_op_f32(-1515f * global2[_wgslsmith_index_u32(var_2.c, 30u)]), -557f, _wgslsmith_f_op_f32(round(1157f)))).b.x, arg_3.d, var_2.d);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: vec4<f32>) -> vec3<i32> {
    global2 = array<f32, 30>();
    let var_0 = arg_0;
    let var_1 = ~(~(-vec4<i32>(reverseBits(u_input.a.x), -20281i, reverseBits(4609i), 30749i)));
    var var_2 = arg_0.d;
    global4 = 1u;
    return vec3<i32>(arg_1.c.x, ~(-7317i), var_0.a) | _wgslsmith_div_vec3_i32(countOneBits(var_1.yyy), ~vec3<i32>(reverseBits(var_2.c.x), abs(0i), var_2.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(24273u, 30u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d, 30u)] - global2[_wgslsmith_index_u32(1u, 30u)]))), _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(u_input.d, 30u)]))), func_5(func_4(Struct_2(u_input.b.x, 1i, u_input.d, func_1(u_input.d, Struct_2(-4073i, u_input.c.x, 19411u, Struct_1(true, global3[_wgslsmith_index_u32(u_input.d, 8u)], vec2<i32>(u_input.a.x, -2147483647i)), Struct_1(true, global3[_wgslsmith_index_u32(u_input.d, 8u)], u_input.a)), vec3<f32>(543f, 1280f, global2[_wgslsmith_index_u32(1u, 30u)])), func_1(u_input.d, Struct_2(-63526i, 5436i, u_input.d, Struct_1(global0.x, vec2<u32>(19087u, u_input.d), u_input.a), Struct_1(true, vec2<u32>(u_input.d, u_input.d), vec2<i32>(u_input.c.x, u_input.c.x))), vec3<f32>(global2[_wgslsmith_index_u32(u_input.d, 30u)], global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)]))), select(vec3<bool>(global0.x, true, true), select(vec3<bool>(false, false, false), vec3<bool>(global0.x, true, false), global0.x), false), ~u_input.b, Struct_2(1i, -49037i, ~4294967295u, func_1(14669u, Struct_2(3537i, 14437i, u_input.d, Struct_1(false, global3[_wgslsmith_index_u32(u_input.d, 8u)], u_input.b.yz), Struct_1(false, global3[_wgslsmith_index_u32(u_input.d, 8u)], vec2<i32>(u_input.b.x, 0i))), vec3<f32>(global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(u_input.d, 30u)])), func_1(u_input.d, Struct_2(-3057i, u_input.a.x, 0u, Struct_1(global0.x, vec2<u32>(1u, u_input.d), u_input.b.zz), Struct_1(true, global3[_wgslsmith_index_u32(u_input.d, 8u)], vec2<i32>(15695i, 0i))), vec3<f32>(global2[_wgslsmith_index_u32(u_input.d, 30u)], global2[_wgslsmith_index_u32(u_input.d, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)])))), Struct_1(!global0.x, abs(global3[_wgslsmith_index_u32(u_input.d, 8u)]) & vec2<u32>(u_input.d, u_input.d), vec2<i32>(u_input.c.x, min(19696i, 38073i))), _wgslsmith_dot_vec2_u32(~global3[_wgslsmith_index_u32(0u, 8u)], vec2<u32>(23895u, ~39229u)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-712f * global2[_wgslsmith_index_u32(u_input.d, 30u)]), 199f, global2[_wgslsmith_index_u32(func_4(Struct_2(26798i, -49261i, 61256u, Struct_1(global0.x, vec2<u32>(0u, 1u), u_input.a), Struct_1(false, global3[_wgslsmith_index_u32(1u, 8u)], u_input.c)), vec3<bool>(global0.x, false, global0.x), u_input.b, Struct_2(u_input.c.x, 2147483647i, u_input.d, Struct_1(true, global3[_wgslsmith_index_u32(u_input.d, 8u)], vec2<i32>(u_input.b.x, u_input.c.x)), Struct_1(global0.x, vec2<u32>(u_input.d, u_input.d), u_input.a))).e.b.x, 30u)], -336f)))));
}

