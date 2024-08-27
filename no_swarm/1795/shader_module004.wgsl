struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 19>;

var<private> global2: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(true, Struct_1(true, 2147483647i, true, -126f, vec4<bool>(false, false, true, true)), false, true), Struct_2(true, Struct_1(true, 0i, true, -1029f, vec4<bool>(false, true, false, false)), false, true), Struct_2(true, Struct_1(true, -38726i, true, -1599f, vec4<bool>(true, true, false, false)), false, true), Struct_2(false, Struct_1(true, -69818i, false, -153f, vec4<bool>(false, false, true, false)), false, true), Struct_2(false, Struct_1(false, 6468i, false, -685f, vec4<bool>(false, false, false, true)), true, true), Struct_2(false, Struct_1(true, 0i, true, 298f, vec4<bool>(false, true, true, true)), false, true), Struct_2(false, Struct_1(true, 39735i, true, -702f, vec4<bool>(true, true, false, false)), false, true), Struct_2(true, Struct_1(false, -1i, true, -239f, vec4<bool>(false, false, false, true)), false, false), Struct_2(true, Struct_1(true, i32(-2147483648), true, -930f, vec4<bool>(true, false, false, true)), false, true), Struct_2(true, Struct_1(false, 2147483647i, true, -1000f, vec4<bool>(false, true, false, true)), false, false), Struct_2(false, Struct_1(false, -1i, false, 212f, vec4<bool>(false, true, false, false)), false, false), Struct_2(true, Struct_1(true, 1i, false, -835f, vec4<bool>(false, false, true, true)), true, true), Struct_2(true, Struct_1(true, 48197i, true, 1103f, vec4<bool>(true, false, false, false)), false, true), Struct_2(false, Struct_1(true, 34776i, true, -483f, vec4<bool>(true, true, true, false)), false, true), Struct_2(true, Struct_1(true, -22540i, true, 422f, vec4<bool>(true, true, false, false)), true, false), Struct_2(false, Struct_1(false, 14326i, true, -245f, vec4<bool>(true, true, true, true)), false, true), Struct_2(true, Struct_1(true, 1i, false, -681f, vec4<bool>(true, true, true, false)), false, false));

var<private> global3: bool;

var<private> global4: array<f32, 17> = array<f32, 17>(-1518f, -175f, 1788f, 245f, -129f, 1000f, 832f, 1013f, -2034f, 194f, 1468f, -638f, 212f, -1000f, -1760f, -686f, 496f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> vec2<i32> {
    let var_0 = all(select(vec3<bool>(arg_0.x <= ~30214i, true, any(select(vec3<bool>(true, global0.d, true), global0.b.e.yxx, vec3<bool>(true, false, global0.c)))), vec3<bool>(true, true, !global0.b.a), vec3<bool>(true, global0.b.c, all(!global0.b.e.zzy))));
    global1 = array<bool, 19>();
    global4 = array<f32, 17>();
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1230f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.d + global0.b.d) - _wgslsmith_div_f32(1648f, global4[_wgslsmith_index_u32(4294967295u, 17u)]))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.d * global4[_wgslsmith_index_u32(4294967295u, 17u)]), -678f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b.d))))))));
    let var_2 = ~firstLeadingBit(select(-arg_0.yy, u_input.a.yy, vec2<bool>(true, var_0)));
    return var_2;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<i32>) -> bool {
    global1 = array<bool, 19>();
    var var_0 = Struct_3(global0.b, any(select(!select(vec2<bool>(global1[_wgslsmith_index_u32(31127u, 19u)], global0.a), global0.b.e.yx, global0.b.e.yy), !global0.b.e.xy, global0.c)), vec4<i32>(-1i, countOneBits(-385i), min(firstTrailingBit(_wgslsmith_div_i32(-1i, u_input.b)), _wgslsmith_add_i32(-1i, 18906i)), -select(45029i, max(global0.b.b, -39883i), true)), Struct_1(!all(!vec4<bool>(true, global0.a, true, false)), countOneBits(0i), all(global0.b.e), arg_0.x, global0.b.e), vec3<u32>(_wgslsmith_div_u32(1u, _wgslsmith_div_u32(1u, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~1u, 1u, 1u), vec4<u32>(1u, 1u, min(1006u, 61384u), 1708u >> (1u % 32u))), 1u));
    var var_1 = 20559u;
    let var_2 = global0.b;
    var_0 = Struct_3(var_0.a, any(vec4<bool>(true, false, var_2.e.x, false)), -vec4<i32>(global0.b.b, 43528i, func_3(~vec3<i32>(-20608i, 27949i, 2147483647i), var_0.e.x != var_0.e.x).x, -u_input.b), Struct_1(select(var_0.a.a, false, true), var_0.a.b, (var_0.e.x < (var_0.e.x & var_0.e.x)) || (18366u < _wgslsmith_clamp_u32(var_0.e.x, var_0.e.x, 7615u)), arg_0.x, !select(vec4<bool>(global0.d, global1[_wgslsmith_index_u32(var_0.e.x, 19u)], var_0.a.a, true), vec4<bool>(true, true, true, true), all(var_2.e.xz))), var_0.e);
    return 1038f > _wgslsmith_div_f32(global0.b.d, _wgslsmith_f_op_f32(trunc(var_2.d)));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = true;
    var_0 = !func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(2426f, -358f, 1851f) - vec3<f32>(global4[_wgslsmith_index_u32(27396u, 17u)], global0.b.d, global0.b.d)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-174f, global4[_wgslsmith_index_u32(4294967295u, 17u)], global4[_wgslsmith_index_u32(0u, 17u)]) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4[_wgslsmith_index_u32(0u, 17u)], global0.b.d, global0.b.d), vec3<f32>(global0.b.d, 982f, 399f), true)))), func_3(vec3<i32>(0i, -30768i, arg_1.x), true) & select(min(arg_1.yz, arg_1.xw), -arg_1.yy, vec2<bool>(global0.c, global0.d)));
    return Struct_1(global1[_wgslsmith_index_u32(~25129u, 19u)], arg_1.x, firstTrailingBit(~max(1u, 1u)) > ~1u, global0.b.d, vec4<bool>(global1[_wgslsmith_index_u32(~firstTrailingBit(~1u), 19u)], any(select(!vec4<bool>(global0.a, true, true, true), select(global0.b.e, global0.b.e, global0.b.e), select(global0.b.e, vec4<bool>(global0.d, global0.c, global1[_wgslsmith_index_u32(4294967295u, 19u)], global0.d), global0.b.e))), true, !global0.c));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = u_input.a.x;
    let var_1 = u_input.a.x;
    let var_2 = 9165u & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), max(~vec3<u32>(0u, 786u, 37231u), ~vec3<u32>(4294967295u, 31634u, 77797u)) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(63715u, 690u, 1u), vec3<u32>(37035u, 0u, 1u)), select(vec3<u32>(1u, 4294967295u, 22719u), vec3<u32>(4294967295u, 90147u, 23197u), vec3<bool>(false, true, false)), ~vec3<u32>(0u, 1u, 0u)) % vec3<u32>(32u)));
    global3 = !(!(arg_0.d | (true | arg_0.d)));
    var var_3 = global0.b.e.yy;
    return arg_0;
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    global4 = array<f32, 17>();
    global1 = array<bool, 19>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(895f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), false)) * global0.b.d);
    let var_1 = global0.b.e.zz;
    let var_2 = Struct_2(any(global0.b.e.zzy), Struct_1(true, global0.b.b ^ -9232i, false, arg_0.x, global0.b.e), false, false);
    return func_5(Struct_2(true, func_2(-(~(-1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.b.b, var_2.b.b, -67598i, var_2.b.b), ~vec4<i32>(global0.b.b, 23643i, 2147483647i, 14481i))), global1[_wgslsmith_index_u32(23761u, 19u)], all(select(!vec3<bool>(true, true, var_1.x), !global0.b.e.zzy, !vec3<bool>(true, false, var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_vec3_f32(vec3<f32>(116f, _wgslsmith_div_f32(-1934f, global4[_wgslsmith_index_u32(72469u >> (1u % 32u), 17u)]), global0.b.d), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1211f, global0.b.d, global4[_wgslsmith_index_u32(0u, 17u)]) - vec3<f32>(1000f, -503f, global4[_wgslsmith_index_u32(30340u, 17u)])))))));
    global3 = false;
    let var_1 = 1i;
    global0 = func_5(Struct_2(!(firstTrailingBit(26058i) > global0.b.b), var_0.b, var_0.c, true));
    let var_2 = func_5(func_5(Struct_2(true, var_0.b, !any(var_0.b.e), all(var_0.b.e.xx)))).b.e.wzx;
    let var_3 = vec2<bool>(false, !global0.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(~min(24679u, 1u), ~1u));
}

