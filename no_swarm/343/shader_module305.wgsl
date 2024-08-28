struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-1i, -341f, vec2<f32>(-407f, 1000f), false), vec2<f32>(-778f, 1157f));

var<private> global1: array<Struct_2, 18>;

var<private> global2: Struct_1 = Struct_1(i32(-2147483648), -138f, vec2<f32>(867f, 2236f), true);

var<private> global3: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(-119f, -1000f, 124f, 539f), vec4<f32>(-126f, 569f, 651f, -531f), vec4<f32>(-945f, 1016f, 1088f, 299f), vec4<f32>(-346f, -1126f, 865f, 1002f), vec4<f32>(-550f, 337f, 1452f, -763f), vec4<f32>(767f, -673f, -674f, 822f), vec4<f32>(407f, 1000f, -1000f, 339f), vec4<f32>(-275f, 697f, 1209f, 503f), vec4<f32>(-712f, 1425f, 378f, -1445f), vec4<f32>(1065f, 205f, 1573f, 1000f), vec4<f32>(1000f, 149f, -778f, 1235f), vec4<f32>(673f, -966f, 410f, -687f), vec4<f32>(-1722f, 417f, 1848f, -2305f), vec4<f32>(-677f, -1000f, 363f, 720f), vec4<f32>(1000f, -506f, 965f, -513f), vec4<f32>(1883f, 844f, 721f, -1482f), vec4<f32>(859f, -983f, -740f, 862f), vec4<f32>(-1373f, 114f, 855f, 643f), vec4<f32>(183f, 1045f, -1027f, 715f), vec4<f32>(343f, -113f, -1000f, 1000f), vec4<f32>(-273f, -1438f, -1339f, 513f), vec4<f32>(-1037f, -304f, -194f, -1381f), vec4<f32>(-150f, -1000f, -829f, 1000f), vec4<f32>(-520f, 241f, 1473f, 123f), vec4<f32>(158f, 3060f, -422f, 1000f), vec4<f32>(-415f, -1889f, -260f, -366f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(reverseBits(_wgslsmith_sub_i32(global0.a.a, _wgslsmith_add_i32(global0.a.a, -2147483647i))), -807f, _wgslsmith_f_op_vec2_f32(select(global0.a.c, global2.c, !vec2<bool>(!global0.a.d, global0.a.d))), global2.d);
    global3 = array<vec4<f32>, 26>();
    let var_1 = -(vec3<i32>(~u_input.a, ~u_input.a | _wgslsmith_add_i32(global0.a.a, -1i), _wgslsmith_mult_i32(global2.a, 1i) & -global0.a.a) & (select(~vec3<i32>(global2.a, 38063i, var_0.a), u_input.b.yzz, !vec3<bool>(global2.d, global2.d, global0.a.d)) & -(~u_input.b.yxz)));
    let var_2 = var_0.c.x;
    let var_3 = _wgslsmith_div_vec2_f32(global0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c * var_0.c)));
    return Struct_1(0i & -(~(1i & global0.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(var_3.x + global2.b))))), vec2<f32>(1919f, _wgslsmith_f_op_f32(sign(1036f))), var_0.d);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>) -> vec4<bool> {
    var var_0 = ~min(-vec4<i32>(i32(-1i) * -2147483647i, arg_1.a.a >> (u_input.c.x % 32u), _wgslsmith_mult_i32(arg_0.a, -29926i), -2147483647i), vec4<i32>(18828i, 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(9744i, 1i, u_input.b.x), vec3<i32>(global0.a.a, -1i, global0.a.a)), -22983i & arg_1.a.a) | vec4<i32>(0i, countOneBits(arg_1.a.a), abs(arg_0.a), ~arg_1.a.a));
    let var_1 = ((-20572i << ((u_input.d | u_input.d) % 32u)) == 1i) | ((_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.b, u_input.b), vec4<i32>(arg_0.a, global0.a.a, global2.a, global0.a.a)) >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(29281u, 63772u, 52212u, 76703u), vec4<u32>(1u, u_input.d, 1u, u_input.d)), _wgslsmith_sub_u32(u_input.d, u_input.c.x)) % 32u)) >= arg_1.a.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(-global2.c);
    var_0 = vec4<i32>(1i, i32(-1i) * -_wgslsmith_div_i32(countOneBits(arg_1.a.a), max(var_0.x, 2147483647i)), 1i, _wgslsmith_sub_i32(-_wgslsmith_dot_vec3_i32(var_0.zyx << (vec3<u32>(u_input.c.x, 6062u, 0u) % vec3<u32>(32u)), var_0.zyy), ~global0.a.a));
    var_0 = _wgslsmith_mult_vec4_i32(min(abs(select(u_input.b, u_input.b, var_1)), vec4<i32>(0i >> (_wgslsmith_dot_vec2_u32(u_input.c.yz, vec2<u32>(23801u, u_input.c.x)) % 32u), -1i, -var_0.x, func_2().a)), vec4<i32>(8485i, firstTrailingBit(1i), -2147483647i, i32(-1i) * -27737i));
    return select(!(!select(!vec4<bool>(arg_0.d, true, false, true), !vec4<bool>(false, global0.a.d, false, false), select(vec4<bool>(false, false, arg_2.x, global0.a.d), vec4<bool>(false, true, global0.a.d, arg_1.a.d), arg_2.x))), select(vec4<bool>(_wgslsmith_f_op_f32(max(1000f, 368f)) <= _wgslsmith_f_op_f32(select(global2.b, -684f, arg_0.d)), false, any(arg_2), select(arg_0.d, u_input.c.x == 102309u, all(vec2<bool>(arg_1.a.d, false)))), vec4<bool>(any(vec4<bool>(global2.d, false, global0.a.d, true)) | !global0.a.d, all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false)), any(vec4<bool>(arg_0.d, false, true, global0.a.d)) & global0.a.d, true), vec4<bool>(true, global2.d, 142f <= _wgslsmith_f_op_f32(max(arg_0.c.x, 1719f)), _wgslsmith_f_op_f32(-global2.b) >= arg_1.a.c.x)), !select(select(select(vec4<bool>(arg_2.x, var_1, false, arg_0.d), vec4<bool>(true, var_1, global0.a.d, false), vec4<bool>(true, arg_0.d, true, arg_2.x)), vec4<bool>(global2.d, arg_2.x, false, true), arg_0.d), vec4<bool>(var_1, any(arg_2), func_2().d, !arg_2.x), global2.d));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec3<bool>) -> bool {
    global0 = Struct_2(func_2(), global0.a.c);
    var var_0 = ~0u;
    var var_1 = vec4<u32>(_wgslsmith_mult_u32(u_input.c.x, 41389u), countOneBits(26685u), u_input.c.x, select(arg_0, _wgslsmith_div_u32(u_input.d, ~_wgslsmith_mult_u32(arg_0, arg_0)), all(vec3<bool>(any(vec3<bool>(global2.d, arg_2.x, arg_2.x)), arg_1 | global2.d, !arg_1))));
    var var_2 = Struct_2(global0.a, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.c)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.c, vec2<f32>(global2.b, -1119f)))))));
    global1 = array<Struct_2, 18>();
    return all(func_3(var_2.a, Struct_2(Struct_1(global0.a.a ^ var_2.a.a, global2.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, global2.b) * global0.b), global0.a.b < -872f), vec2<f32>(_wgslsmith_f_op_f32(max(749f, -1082f)), _wgslsmith_f_op_f32(max(var_2.b.x, global0.b.x)))), arg_2.yx));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = arg_2;
    var_0 = Struct_2(Struct_1(2147483647i, -523f, vec2<f32>(852f, _wgslsmith_f_op_f32(trunc(global0.a.b))), arg_1.x), func_2().c);
    let var_1 = Struct_1(2039i, 361f, _wgslsmith_f_op_vec2_f32(-arg_2.b), all(arg_1.zx));
    global2 = var_0.a;
    let var_2 = min(~(~u_input.d), u_input.c.x);
    return Struct_2(func_2(), var_0.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 18>();
    var var_0 = -230f;
    let var_1 = ~vec2<i32>(_wgslsmith_mult_i32(global2.a, _wgslsmith_mult_i32(countOneBits(0i), -global0.a.a)), firstTrailingBit(i32(-1i) * -u_input.a));
    global3 = array<vec4<f32>, 26>();
    var_0 = _wgslsmith_f_op_f32(global2.c.x - _wgslsmith_f_op_f32(abs(-1614f)));
    var var_2 = global1[_wgslsmith_index_u32(u_input.d, 18u)];
    var var_3 = func_4(vec2<i32>(~u_input.a, 1i), select(vec3<bool>(true, true, global2.d), vec3<bool>(true, func_1(24682u, global0.a.d, vec3<bool>(var_2.a.d, true, global2.d)) & true, true), true), global1[_wgslsmith_index_u32(abs(1u), 18u)]);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, 453f, u_input.c.zxx, var_2.a.a << (u_input.c.x % 32u));
}

