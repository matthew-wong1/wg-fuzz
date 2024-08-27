struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32) -> i32 {
    let var_0 = Struct_1(arg_1.a, ~u_input.b.x, !(!arg_1.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.d * arg_1.a.xzy))));
    let var_1 = false;
    var var_2 = 2363f;
    var_2 = arg_2;
    let var_3 = -arg_0.x;
    return var_3;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_2(u_input.a, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1207f)), -640f)) * _wgslsmith_f_op_f32(-339f * _wgslsmith_f_op_f32(-arg_0.d.x))) + arg_0.d.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(arg_0.a));
    let var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a.x, -u_input.a.x), ~u_input.a.x), u_input.a.x, -24661i), abs(select(_wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, var_0, 2147483647i, var_0), ~vec4<i32>(u_input.a.x, 1i, u_input.a.x, 2147483647i)), -vec4<i32>(1i, 2147483647i, 9468i, var_0) | ~vec4<i32>(var_0, var_0, var_0, 26711i), false)));
    var var_3 = arg_0;
    let var_4 = select(arg_0.c.yx, var_3.c.xx, !vec2<bool>(all(var_3.c.yz) && any(arg_0.c), arg_0.c.x));
    return Struct_1(_wgslsmith_div_vec4_f32(var_3.a, arg_0.a), 1u, vec3<bool>(var_4.x, false, false), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(var_3.a.wzx, vec3<f32>(_wgslsmith_f_op_f32(round(var_3.a.x)), _wgslsmith_f_op_f32(-var_3.d.x), _wgslsmith_f_op_f32(-var_3.a.x))), var_1.wxw)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(34241i, -8509i, firstLeadingBit(-18289i)), vec3<i32>(15964i, 48791i, 1i));
    var_0 = u_input.a;
    let var_1 = -(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1382i) & max(vec4<i32>(u_input.a.x, var_0.x, -66215i, 0i), vec4<i32>(44005i, var_0.x, u_input.a.x, u_input.a.x)), vec4<i32>(2147483647i, 1i, var_0.x, 1i), firstTrailingBit(vec4<i32>(u_input.a.x, -1i, -75479i, 1i)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(-83324i, -1i, -575i, 26921i), vec4<i32>(0i, u_input.a.x, var_0.x, var_0.x))) | ~reverseBits(select(vec4<i32>(-2880i, u_input.a.x, u_input.a.x, 1344i), vec4<i32>(-1i, u_input.a.x, 25108i, -2147483647i), vec4<bool>(arg_0.c.x, arg_2.c.x, arg_0.c.x, arg_0.c.x))));
    var var_2 = arg_2;
    return func_1(arg_2);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_3(Struct_1(_wgslsmith_f_op_vec4_f32(sign(arg_3.a)), 1u, func_1(arg_3).c, vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<f32>(-1081f, 375f, arg_0.d.x, -202f), 0u, vec3<bool>(true, arg_0.c.x, false), vec3<f32>(arg_0.d.x, -800f, 570f))).d.x + 701f), 169f, 517f)), func_1(Struct_1(_wgslsmith_f_op_vec4_f32(select(arg_0.a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-518f, 395f, 1549f, -453f))), vec4<bool>(arg_0.c.x, true, false, arg_3.c.x))), 4294967295u, arg_3.c, arg_0.a.yyw)), func_3(arg_3, arg_0, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a.x, 844f, arg_3.d.x, arg_1) + vec4<f32>(arg_3.a.x, arg_0.a.x, arg_0.d.x, 830f))), min(u_input.b.x << (arg_2 % 32u), arg_0.b), vec3<bool>(select(arg_0.c.x, arg_3.c.x, arg_3.c.x), arg_0.c.x && true, arg_3.c.x), arg_3.d)));
    let var_1 = arg_0;
    var_0 = Struct_1(arg_0.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_sub_u32(var_1.b, arg_3.b), arg_2 >> (var_0.b % 32u)), abs(u_input.b)), arg_3.c, vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1)), -340f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1908f, 779f) * 365f), arg_1))));
    var_0 = func_3(func_1(arg_0), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(func_3(Struct_1(arg_3.a, arg_0.b, vec3<bool>(false, arg_3.c.x, arg_3.c.x), var_1.a.zwx), Struct_1(arg_3.a, arg_3.b, arg_0.c, vec3<f32>(arg_3.d.x, 1000f, 1000f)), arg_0).a)), var_1.a), u_input.b.x, !func_1(func_3(Struct_1(arg_3.a, 4294967295u, vec3<bool>(true, arg_3.c.x, false), vec3<f32>(arg_3.a.x, 453f, 119f)), arg_3, arg_0)).c, vec3<f32>(_wgslsmith_div_f32(-1097f, arg_3.d.x), arg_3.d.x, _wgslsmith_f_op_f32(-arg_0.d.x))), func_1(arg_3));
    let var_2 = arg_0;
    return Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -552f), arg_3.a.x, arg_1, var_2.d.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1655f + var_0.d.x), var_2.a.x, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(1759f - arg_3.a.x)) * var_1.a))), _wgslsmith_add_u32(countOneBits(4033u >> ((90300u & arg_2) % 32u)), arg_2), func_1(var_1).c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -474f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.d.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1293f, -242f)), _wgslsmith_f_op_f32(-arg_3.d.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_3(func_1(Struct_1(vec4<f32>(1000f, 1509f, 406f, -357f), ~u_input.b.x, select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-333f, 600f, 1240f))))), func_1(func_1(Struct_1(vec4<f32>(470f, 287f, -597f, -345f), 88656u, vec3<bool>(false, false, false), vec3<f32>(124f, -922f, 545f)))), func_1(func_1(Struct_1(vec4<f32>(-388f, -214f, 213f, -834f), 4294967295u, vec3<bool>(true, true, true), vec3<f32>(286f, 909f, 1478f))))), -354f, ~57194u, func_3(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(613f, 475f, 594f, 160f)), vec4<f32>(214f, -1840f, -857f, 1000f))), _wgslsmith_clamp_u32(4294967295u, 0u, func_3(Struct_1(vec4<f32>(1763f, 1131f, 703f, -1151f), 0u, vec3<bool>(false, true, false), vec3<f32>(1474f, -754f, -272f)), Struct_1(vec4<f32>(-1196f, -113f, -135f, -613f), 3233u, vec3<bool>(true, true, true), vec3<f32>(-823f, 343f, 640f)), Struct_1(vec4<f32>(-657f, 362f, 1116f, -1816f), u_input.b.x, vec3<bool>(true, true, true), vec3<f32>(481f, 3401f, -1000f))).b), vec3<bool>(true, any(vec2<bool>(false, true)), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1348f, -1781f, 1789f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(897f, -3200f, -663f) + vec3<f32>(421f, 1397f, -592f)))), func_1(func_1(func_1(Struct_1(vec4<f32>(-271f, -1334f, -465f, -612f), 37336u, vec3<bool>(false, false, true), vec3<f32>(461f, -719f, -1831f))))), func_1(func_3(Struct_1(vec4<f32>(1288f, -599f, 227f, 434f), u_input.b.x, vec3<bool>(true, true, true), vec3<f32>(-248f, -654f, 1190f)), Struct_1(vec4<f32>(809f, -1080f, -1000f, -130f), u_input.b.x, vec3<bool>(true, false, false), vec3<f32>(682f, 2077f, -592f)), Struct_1(vec4<f32>(-712f, 436f, 785f, 691f), 4294967295u, vec3<bool>(false, false, true), vec3<f32>(905f, -1608f, 893f))))));
    var_0 = Struct_1(func_4(func_4(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.x, 937f, -638f, var_0.d.x), var_0.a), 4327u, select(var_0.c, vec3<bool>(var_0.c.x, true, true), vec3<bool>(false, true, var_0.c.x)), _wgslsmith_f_op_vec3_f32(var_0.d + var_0.a.yyx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x) * _wgslsmith_f_op_f32(var_0.d.x * var_0.a.x)), 4294967295u, Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(var_0.a.x, 954f, -2268f, var_0.a.x)), ~u_input.b.x, select(var_0.c, vec3<bool>(true, true, var_0.c.x), var_0.c), _wgslsmith_f_op_vec3_f32(var_0.d * var_0.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-734f)) * -2636f)), ~(~u_input.b.x), Struct_1(var_0.a, _wgslsmith_mod_u32(abs(u_input.b.x), 1u), func_4(func_4(Struct_1(var_0.a, 42982u, vec3<bool>(var_0.c.x, false, var_0.c.x), vec3<f32>(var_0.a.x, -538f, 1021f)), 628f, u_input.b.x, Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, -588f, 1680f), 1u, var_0.c, vec3<f32>(var_0.a.x, var_0.a.x, var_0.d.x))), _wgslsmith_f_op_f32(var_0.d.x * var_0.a.x), abs(0u), Struct_1(vec4<f32>(var_0.a.x, -2333f, var_0.d.x, 1614f), var_0.b, vec3<bool>(true, true, true), vec3<f32>(842f, 900f, var_0.a.x))).c, var_0.a.zyy)).a, u_input.b.x, func_1(func_1(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, -1131f, var_0.a.x, 1109f) + var_0.a), ~var_0.b, !vec3<bool>(var_0.c.x, true, false), var_0.d))).c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(165f, var_0.d.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - var_0.a.x), _wgslsmith_f_op_f32(trunc(-676f)))))));
    var var_1 = !(!(!vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x)));
    var_1 = var_0.c;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-335f, var_0.d.x, 1225f, var_0.d.x)))) * vec4<f32>(func_3(func_1(Struct_1(var_0.a, var_0.b, var_0.c, var_0.d)), func_1(Struct_1(var_0.a, 4294967295u, vec3<bool>(true, var_1.x, var_0.c.x), var_0.d)), Struct_1(var_0.a, u_input.b.x, vec3<bool>(var_1.x, true, false), var_0.a.xzz)).d.x, 398f, _wgslsmith_f_op_f32(f32(-1f) * -663f), var_0.d.x)), var_0.b, vec3<bool>(~firstTrailingBit(var_0.b) < var_0.b, all(!func_1(Struct_1(vec4<f32>(-318f, var_0.a.x, 768f, -424f), var_0.b, var_0.c, vec3<f32>(319f, 1078f, var_0.a.x))).c.yx), u_input.a.x > _wgslsmith_mod_i32(57000i << (1u % 32u), -26126i)), var_0.d);
    let var_3 = -(vec4<i32>(1i | u_input.a.x, u_input.a.x & -71472i, _wgslsmith_dot_vec2_i32(u_input.a.xy & u_input.a.xy, vec2<i32>(20993i, u_input.a.x)), 0i) ^ _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2927i, 0i, 54578i, -2147483647i), vec4<i32>(-3359i, u_input.a.x, -27732i, u_input.a.x)) >> (min(vec4<u32>(48407u, 4294967295u, u_input.b.x, var_2.b), vec4<u32>(var_0.b, 10890u, var_0.b, 48342u)) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, 4450i | u_input.a.x, _wgslsmith_div_i32(u_input.a.x, -45037i), 0i)));
    let var_4 = _wgslsmith_f_op_vec2_f32(var_2.a.zx * vec2<f32>(_wgslsmith_f_op_f32(-var_2.d.x), 472f));
    var_0 = func_4(var_2, var_2.a.x, 1u, Struct_1(var_0.a, func_1(var_2).b, vec3<bool>(true, var_1.x, (i32(-1i) * -1i) != var_3.x), _wgslsmith_f_op_vec3_f32(var_2.d * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_0.a.xyz))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(select(337f, var_2.a.x, true))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(var_2).d.x))), func_3(Struct_1(var_2.a, 1u, !vec3<bool>(var_2.c.x, var_1.x, var_2.c.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.d)), _wgslsmith_f_op_vec3_f32(-var_2.a.xyw))), func_3(var_2, Struct_1(var_0.a, 28056u, vec3<bool>(true, true, var_0.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d.x, -1000f, 734f))), func_4(Struct_1(var_0.a, 39938u, var_0.c, vec3<f32>(1352f, 1033f, var_2.d.x)), _wgslsmith_f_op_f32(735f - 721f), _wgslsmith_clamp_u32(24679u, var_2.b, 15323u), Struct_1(var_2.a, var_2.b, vec3<bool>(var_2.c.x, false, true), vec3<f32>(var_2.d.x, -400f, var_2.a.x)))), func_3(var_2, var_2, var_2)).a.x, u_input.a.x, (~countOneBits(vec4<u32>(var_2.b, u_input.b.x, 4294967295u, var_2.b)) ^ _wgslsmith_add_vec4_u32(~vec4<u32>(var_0.b, var_0.b, 4294967295u, var_2.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.b, 44012u, 0u, 35274u), vec4<u32>(58136u, var_2.b, u_input.b.x, var_0.b), vec4<u32>(29797u, u_input.b.x, var_0.b, var_0.b)))) >> (select(vec4<u32>(var_2.b, 0u, max(var_0.b, var_0.b), var_0.b), firstLeadingBit(vec4<u32>(u_input.b.x, 31070u, var_2.b, 1409u)), vec4<bool>(true, true, false, any(vec4<bool>(var_1.x, var_2.c.x, false, var_2.c.x)))) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(var_3, _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 1i, -28313i, countOneBits(u_input.a.x)), abs(select(var_3, vec4<i32>(39888i, -1i, -17847i, var_3.x), vec4<bool>(var_0.c.x, var_1.x, var_0.c.x, true))))));
}

