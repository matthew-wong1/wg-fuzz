struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(-1391f, 439f, 381f, -1687f, -404f, 2776f, -315f, 258f, -1125f, -1154f, -1744f, 347f, -689f, 579f, 723f, 807f, -1114f, -528f, -1763f, 1067f, 1118f, -354f, -876f, -1000f, -724f, 175f, -1415f, 1389f, -620f);

var<private> global1: Struct_2 = Struct_2(vec4<f32>(-1569f, 1672f, -438f, 173f), Struct_1(0u, 23475i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_3 {
    let var_0 = global1.b;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1047f, global1.a.x)));
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global1.a)))), Struct_1(~1u, -66096i));
    let var_2 = arg_0;
    var var_3 = -9269i;
    return Struct_3(abs(55098u) < var_2.a);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_1 {
    global0 = array<f32, 29>();
    var var_0 = global1.b;
    var var_1 = Struct_3(!arg_0.a);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(64130u, 29u)] + -827f)));
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(arg_1)), global1.b);
    return Struct_1(~54807u, _wgslsmith_dot_vec4_i32(~(-select(u_input.b, u_input.b, vec4<bool>(true, false, arg_2.a, true))), vec4<i32>(0i, _wgslsmith_dot_vec4_i32(~u_input.b, u_input.b & u_input.b), _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.b.yxx), _wgslsmith_add_vec3_i32(u_input.b.yyx, u_input.b.zxy)), global1.b.b)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_2 {
    global0 = array<f32, 29>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-arg_3.a.wxw);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-678f - var_0.x), var_0.x, -814f, _wgslsmith_div_f32(591f, global1.a.x)))), func_3(arg_2, vec4<f32>(-1486f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1736f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, var_0.x))), _wgslsmith_f_op_f32(985f - _wgslsmith_f_op_f32(arg_3.a.x * arg_3.a.x))), arg_0));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.a.x, 29u)]), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-226f * 438f))))), arg_0.a));
    var var_3 = Struct_1(35896u, ~select(_wgslsmith_sub_i32(countOneBits(u_input.c), -67359i), _wgslsmith_dot_vec4_i32(-u_input.b, select(vec4<i32>(34164i, 2147483647i, var_1.b.b, 0i), u_input.b, vec4<bool>(arg_2.a, arg_0.a, arg_0.a, false))), func_2(Struct_1(u_input.a.x, arg_3.b.b), vec4<bool>(arg_2.a, arg_2.a, arg_2.a, true)).a));
    return var_1;
}

fn func_1() -> Struct_3 {
    global1 = func_4(Struct_3(true), _wgslsmith_clamp_vec4_i32(u_input.b, _wgslsmith_add_vec4_i32(u_input.b, ~vec4<i32>(global1.b.b, u_input.c, u_input.b.x, 1i)), vec4<i32>(-55049i, global1.b.b, firstLeadingBit(0i), ~_wgslsmith_sub_i32(-2147483647i, -33537i))), Struct_3((u_input.a.x >= ~u_input.a.x) || true), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(476f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 29u)] * global0[_wgslsmith_index_u32(global1.b.a, 29u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.a.x, 29u)]))), -1270f), func_3(func_2(global1.b, vec4<bool>(true, false, false, true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-185f, global1.a.x, -2311f, global1.a.x)), global1.a), Struct_3(false))));
    return Struct_3(true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = func_4(Struct_3(all(!select(vec2<bool>(false, false), vec2<bool>(var_0.a, var_0.a), true))), abs(~u_input.b), func_1(), Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1753f, global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global0[_wgslsmith_index_u32(44590u, 29u)])) + global1.a))), Struct_1((u_input.a.x & global1.b.a) | 1u, 36719i)));
    let var_2 = ~6840u;
    var_0 = func_1();
    var var_3 = 1i;
    let var_4 = _wgslsmith_sub_vec3_i32(select(u_input.b.zwy, _wgslsmith_div_vec3_i32(-u_input.b.yyy, -u_input.b.wyw), vec3<bool>(true, true != (global1.a.x != global1.a.x), true)), ~u_input.b.wyy);
    var var_5 = -1905f;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(var_1.b.a, 29u)], global0[_wgslsmith_index_u32((~(~var_2) & 4294967295u) | countOneBits(_wgslsmith_div_u32(global1.b.a, 59544u)), 29u)]);
}

