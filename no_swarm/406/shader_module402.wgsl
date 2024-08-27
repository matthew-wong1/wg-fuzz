struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(2010f, -149f), vec2<f32>(509f, 940f), vec2<f32>(1674f, -910f), vec2<f32>(-466f, 343f), vec2<f32>(1018f, -1000f), vec2<f32>(1385f, -234f), vec2<f32>(704f, 153f), vec2<f32>(-979f, -1846f), vec2<f32>(-567f, -1310f), vec2<f32>(-835f, 1096f), vec2<f32>(1613f, -874f), vec2<f32>(-1272f, 849f), vec2<f32>(-205f, -594f), vec2<f32>(-123f, -288f), vec2<f32>(1364f, -530f), vec2<f32>(1241f, -1538f), vec2<f32>(106f, 1149f), vec2<f32>(-1107f, -1089f));

var<private> global1: array<vec3<f32>, 32>;

var<private> global2: f32 = 2298f;

var<private> global3: array<u32, 16>;

var<private> global4: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-244f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1446f)) * _wgslsmith_f_op_f32(max(-979f, 904f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(735f * 379f))))));
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> f32 {
    global0 = array<vec2<f32>, 18>();
    var var_0 = Struct_4(!select(vec2<bool>(true, arg_0.c), vec2<bool>(any(vec2<bool>(arg_0.c, true)), true), !arg_0.c || arg_0.c), !(true | (_wgslsmith_f_op_f32(-arg_0.b.x) < _wgslsmith_div_f32(arg_0.b.x, -130f))), vec3<bool>(any(!select(vec4<bool>(true, arg_0.c, arg_0.c, false), vec4<bool>(arg_0.c, true, true, arg_0.c), false)), true, true), _wgslsmith_f_op_f32(-arg_0.b.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1268f - -392f) * -432f), 1583f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.d, _wgslsmith_f_op_f32(floor(1805f)), !var_0.a.x))), 1660f)));
    var_1 = arg_0.b;
    let var_2 = Struct_4(select(!vec2<bool>(true, arg_0.c), !var_0.c.yy, select(!select(var_0.c.yy, vec2<bool>(true, false), arg_0.c), vec2<bool>(false, var_0.b), any(vec3<bool>(true, var_0.a.x, true)))), true || any(!(!vec4<bool>(arg_0.c, true, true, arg_0.c))), select(!vec3<bool>(823u == arg_1, true, !var_0.c.x), select(select(vec3<bool>(true, true, true), !vec3<bool>(false, true, var_0.a.x), !var_0.c), var_0.c, var_0.c), vec3<bool>(true, any(select(var_0.c.yx, vec2<bool>(true, arg_0.c), false)), true)), _wgslsmith_f_op_f32(1104f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(var_0.d - -609f))))));
    return _wgslsmith_f_op_f32(func_3());
}

fn func_2(arg_0: f32, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-230f + _wgslsmith_f_op_f32(func_4(Struct_3(select(countOneBits(vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x)), vec4<i32>(-18451i, 0i, u_input.b.x, -1i), u_input.b.x <= -1i), vec4<f32>(259f, arg_0, 1101f, _wgslsmith_f_op_f32(func_3())), all(vec3<bool>(arg_1, true, true))), 49457u)));
    global1 = array<vec3<f32>, 32>();
    let var_1 = !(!(true | !arg_1));
    let var_2 = -295f;
    var var_3 = vec3<u32>(firstTrailingBit(global3[_wgslsmith_index_u32(5830u, 16u)]), 9807u, max(u_input.a.x & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 16u)], 16u)], countOneBits(select(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), ~4294967295u, var_1))));
    return 1566f;
}

fn func_1() -> vec4<i32> {
    var var_0 = true;
    global4 = all(!vec2<bool>(true, any(vec3<bool>(true, true, true))));
    global4 = false;
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1091f, 1118f, -394f, -1000f)), vec4<f32>(-987f, 1019f, 1404f, -1178f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1395f, 941f, -846f, -754f)), vec4<f32>(-1000f, 2173f, -1893f, 726f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(614f, -1290f, -540f, 124f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2219f, 806f, 1000f, -585f), vec4<f32>(-703f, 1589f, 1446f, -531f)))))))), !(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), true)));
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_f32(494f, 338f), any(vec2<bool>(false, var_1.b.x)))), var_1.a.x))));
    return vec4<i32>(u_input.b.x, -2147483647i, _wgslsmith_add_i32(~1i, ~u_input.b.x), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(-(func_1() & (vec4<i32>(-2463i, u_input.b.x, 1i, u_input.b.x) | ~vec4<i32>(1i, u_input.b.x, -21640i, u_input.b.x))), select(-select(vec4<i32>(13112i, u_input.b.x, -1i, u_input.b.x), func_1(), true), (~vec4<i32>(-1i, -1i, 0i, 0i) | -vec4<i32>(u_input.b.x, -32322i, -2147483647i, u_input.b.x)) | vec4<i32>(~u_input.b.x, u_input.b.x, 18444i, u_input.b.x >> (u_input.c.x % 32u)), vec4<bool>(true, true, false, true)), true && (~_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 16u)], 16u)], 53168u) != u_input.c.x));
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-646f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -360f), _wgslsmith_f_op_f32(-1289f - 1310f)))), -257f, -1665f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-882f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -744f))))), vec4<bool>(true, true, true, true));
    let var_2 = abs(_wgslsmith_sub_u32(countOneBits(~u_input.c.x) & _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(48407u, u_input.c.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)]), 16u)], u_input.c.x), _wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(u_input.c.x, 1u))));
    global0 = array<vec2<f32>, 18>();
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.a), !vec4<bool>(true, any(!var_1.b.yw), true, var_1.b.x));
    let var_4 = var_0.yxz;
    let var_5 = countOneBits(45173u) >> (~var_2 % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(Struct_3(~vec4<i32>(var_0.x, 49604i, u_input.b.x, var_0.x), _wgslsmith_f_op_vec4_f32(var_1.a - vec4<f32>(944f, var_1.a.x, 789f, var_3.a.x)), true), _wgslsmith_add_u32(47719u, _wgslsmith_mult_u32(94446u, var_5)))))), -35641i);
}

