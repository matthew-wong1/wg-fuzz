struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 19> = array<u32, 19>(38375u, 0u, 4294967295u, 41319u, 1u, 8867u, 4294967295u, 4294967295u, 68513u, 0u, 49995u, 0u, 13695u, 1u, 0u, 32740u, 33185u, 12604u, 0u);

var<private> global2: array<f32, 12> = array<f32, 12>(868f, 714f, 332f, -1399f, -964f, 418f, 1166f, -542f, -1000f, 2752f, -1486f, 626f);

var<private> global3: vec2<f32> = vec2<f32>(-828f, -332f);

var<private> global4: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(Struct_1(vec2<f32>(391f, 320f), vec3<bool>(false, true, true)), Struct_1(vec2<f32>(254f, -1810f), vec3<bool>(true, false, false)), Struct_1(vec2<f32>(602f, 185f), vec3<bool>(false, true, true))), Struct_3(Struct_1(vec2<f32>(2351f, -164f), vec3<bool>(false, true, false)), Struct_1(vec2<f32>(794f, 391f), vec3<bool>(false, false, true)), Struct_1(vec2<f32>(1076f, 258f), vec3<bool>(false, false, false))), Struct_3(Struct_1(vec2<f32>(755f, -1555f), vec3<bool>(false, false, true)), Struct_1(vec2<f32>(-1804f, 821f), vec3<bool>(false, false, false)), Struct_1(vec2<f32>(695f, -895f), vec3<bool>(false, false, false))), Struct_3(Struct_1(vec2<f32>(-1252f, -156f), vec3<bool>(true, false, true)), Struct_1(vec2<f32>(307f, 2466f), vec3<bool>(false, false, false)), Struct_1(vec2<f32>(-288f, -437f), vec3<bool>(true, true, false))), Struct_3(Struct_1(vec2<f32>(655f, 1000f), vec3<bool>(false, false, true)), Struct_1(vec2<f32>(-1395f, -896f), vec3<bool>(false, false, true)), Struct_1(vec2<f32>(-730f, -212f), vec3<bool>(true, false, true))), Struct_3(Struct_1(vec2<f32>(715f, 178f), vec3<bool>(true, true, true)), Struct_1(vec2<f32>(896f, 1815f), vec3<bool>(false, false, false)), Struct_1(vec2<f32>(-2222f, -421f), vec3<bool>(true, false, true))), Struct_3(Struct_1(vec2<f32>(-1062f, 1551f), vec3<bool>(false, true, false)), Struct_1(vec2<f32>(-103f, 177f), vec3<bool>(false, false, false)), Struct_1(vec2<f32>(224f, 1391f), vec3<bool>(true, true, false))), Struct_3(Struct_1(vec2<f32>(-375f, 1044f), vec3<bool>(true, true, true)), Struct_1(vec2<f32>(-1485f, 511f), vec3<bool>(false, false, true)), Struct_1(vec2<f32>(1559f, -682f), vec3<bool>(true, true, true))), Struct_3(Struct_1(vec2<f32>(-143f, 1897f), vec3<bool>(true, false, true)), Struct_1(vec2<f32>(-431f, -1139f), vec3<bool>(true, true, false)), Struct_1(vec2<f32>(1723f, 1159f), vec3<bool>(true, true, false))));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: vec2<bool>) -> f32 {
    var var_0 = select(vec2<bool>(false, any(select(select(vec2<bool>(true, true), arg_2, vec2<bool>(arg_2.x, arg_0.x)), arg_0.yx, all(vec3<bool>(arg_0.x, arg_2.x, false))))), vec2<bool>(true, any(vec3<bool>(arg_2.x, false, false))), ~u_input.b.x != u_input.b.x);
    var var_1 = global4[_wgslsmith_index_u32(~arg_1, 9u)];
    var var_2 = _wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(165f + global2[_wgslsmith_index_u32(firstLeadingBit(min(0u, arg_1)), 12u)]))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-361f, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 49231u, 0u, 40440u), vec4<u32>(51189u, arg_1, u_input.a.x, global1[_wgslsmith_index_u32(19646u, 19u)])), 12u)], true | var_0.x)) + -394f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b.a.x, 167f), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(92183u, 12u)])))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(410f, -890f, var_1.c.a.x, 2729f)))), vec4<f32>(var_1.c.a.x, -1014f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.a.x * var_1.b.a.x), 168f), _wgslsmith_f_op_f32(min(global3.x, -416f))), (false && all(vec2<bool>(arg_2.x, true))) || (arg_1 < arg_1))));
    var var_4 = -1000f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.x)) * _wgslsmith_f_op_f32(-var_3.x)) + -1051f);
}

fn func_2(arg_0: i32, arg_1: bool) -> f32 {
    global2 = array<f32, 12>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, global3.x))), vec2<f32>(_wgslsmith_f_op_f32(1407f + global3.x), _wgslsmith_f_op_f32(func_3(vec4<bool>(true, arg_1, false, true), global1[_wgslsmith_index_u32(u_input.a.x, 19u)], vec2<bool>(true, true)))), vec2<bool>(all(vec3<bool>(arg_1, false, false)), arg_1))))), vec3<bool>(~(~6874u) > abs(~u_input.a.x), !(~global1[_wgslsmith_index_u32(u_input.a.x, 19u)] != ~0u), arg_1));
    let var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~abs(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 15429i)), vec4<i32>(0i, ~(~2147483647i), _wgslsmith_clamp_i32(1i, min(0i, arg_0), 9611i & arg_0), u_input.b.x)), firstTrailingBit(~(min(vec4<i32>(-21002i, arg_0, u_input.b.x, arg_0), vec4<i32>(arg_0, u_input.b.x, arg_0, -1i)) | ~vec4<i32>(2147483647i, u_input.b.x, 62890i, -16168i))));
    global0 = var_0.b.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_0.a);
    return _wgslsmith_f_op_f32(min(var_2.x, var_2.x));
}

fn func_1() -> Struct_2 {
    global2 = array<f32, 12>();
    global1 = array<u32, 19>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global3.x) * vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], -1307f))) * vec2<f32>(-102f, _wgslsmith_f_op_f32(func_2(1i, false))))) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, false, false, true), 36294u, vec2<bool>(false, true))), -1613f), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.x, 1092f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global2[_wgslsmith_index_u32(38606u, 12u)])))))));
    let var_1 = _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(f32(-1f) * -2053f));
    var var_2 = !(u_input.b.x >= reverseBits(firstTrailingBit(2147483647i)));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(804f, -256f))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1457f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22097u, 19u)], 12u)])))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1, var_1), vec2<f32>(var_1, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1470f, var_0.x))))), select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(false, true, false)), true), vec3<bool>(true, true, true))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(475f + -943f), arg_0.c.a.x, 982f));
    var var_1 = u_input.b.x;
    var var_2 = _wgslsmith_div_f32(-699f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1().a.a.x * 1108f))))));
    let var_3 = Struct_3(func_1().a, func_1().a, arg_0.c);
    var var_4 = arg_1.a;
    return arg_0;
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    var var_0 = u_input.a.x;
    global0 = arg_0.b.b.x | !arg_0.b.b.x;
    var var_1 = func_4(Struct_3(Struct_1(arg_0.a.a, !arg_0.b.b), func_1().a, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.a.x, 1661f) - vec2<f32>(522f, global3.x)), !(!arg_0.b.b))), func_1(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-961f - -620f)))) + -669f)).c.b;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~(u_input.a.x | ~32733u)), ~(~(~firstTrailingBit(1u)))), 19u)];
    let var_3 = Struct_3(func_1().a, Struct_1(arg_0.a.a, vec3<bool>(true, var_1.x, arg_0.a.b.x)), arg_0.c);
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], _wgslsmith_clamp_u32(48153u, global1[_wgslsmith_index_u32(~max(abs(4294967295u), max(4294967295u, global1[_wgslsmith_index_u32(22802u, 19u)])), 19u)], u_input.a.x));
    let var_1 = func_5(func_4(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11194u, 19u)], 19u)]), u_input.a.x), 9u)], func_1(), global3.x));
    global4 = array<Struct_3, 9>();
    var var_2 = vec4<f32>(func_1().a.a.x, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32((_wgslsmith_sub_u32(u_input.a.x, var_0) | _wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(24991u, 1u))) ^ u_input.a.x, 12u)]), 1000f, -706f);
    global2 = array<f32, 12>();
    var var_3 = var_1.b.x | var_1.b.x;
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -138f)), _wgslsmith_f_op_f32(710f - _wgslsmith_f_op_f32(-var_2.x))) + vec2<f32>(var_2.x, -296f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(abs(1065f)))), var_1.a.x)));
    var_3 = var_1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(1000f, var_0, var_1.a.x, -(reverseBits(vec3<i32>(-1i, u_input.b.x, -2147483647i)) >> (select(~vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(var_0, 19u)], 0u), vec3<u32>(0u, u_input.a.x, u_input.a.x) & vec3<u32>(global1[_wgslsmith_index_u32(0u, 19u)], var_0, u_input.a.x), true) % vec3<u32>(32u))));
}

