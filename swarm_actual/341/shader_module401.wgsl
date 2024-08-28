struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
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

var<private> global0: array<bool, 16>;

var<private> global1: u32 = 1u;

var<private> global2: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(-872f, 205f, -790f, -1136f), vec4<f32>(1196f, -483f, 555f, 1010f), vec4<f32>(-1294f, 908f, -469f, 1231f), vec4<f32>(1000f, 640f, -474f, -1501f), vec4<f32>(124f, 841f, 1224f, 1000f), vec4<f32>(695f, -1195f, 888f, 605f), vec4<f32>(1198f, -1000f, -369f, 688f), vec4<f32>(457f, -1171f, -779f, -406f), vec4<f32>(2205f, 342f, 906f, -411f), vec4<f32>(1000f, 1000f, -352f, 1249f), vec4<f32>(-966f, 1126f, -1000f, 355f), vec4<f32>(228f, 391f, -2181f, -1000f), vec4<f32>(-1307f, -1394f, 1014f, -988f), vec4<f32>(1077f, 238f, 1000f, -941f), vec4<f32>(282f, -1867f, 201f, -1005f), vec4<f32>(-2013f, 859f, -106f, -1183f), vec4<f32>(-1843f, 1000f, -646f, 989f), vec4<f32>(555f, -196f, 1109f, -1841f), vec4<f32>(137f, -1123f, 2551f, -585f), vec4<f32>(1407f, -879f, 1612f, -1143f), vec4<f32>(-488f, -802f, 1703f, -372f), vec4<f32>(288f, 1615f, -1499f, 761f), vec4<f32>(2051f, -537f, -1645f, 622f), vec4<f32>(-1020f, 594f, 1550f, 515f), vec4<f32>(-1417f, -219f, 1000f, 161f), vec4<f32>(1632f, -1464f, 2157f, -251f));

var<private> global3: vec2<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> vec2<f32> {
    global0 = array<bool, 16>();
    let var_0 = vec2<f32>(-1719f, _wgslsmith_f_op_f32(-1805f * -612f));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-483f, 1068f, var_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1423f, 324f, 1774f) - vec3<f32>(458f, -239f, -334f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(104f, var_0.x, 1073f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1732f, 960f, var_0.x) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, -1314f, var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(244f, 764f, var_0.x) + vec3<f32>(var_0.x, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(207f, -1008f, var_0.x)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, -383f))));
    var var_2 = abs(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~1u, u_input.b.x, ~(1u << (0u % 32u))), select(0u, select(30671u, arg_1, arg_0.x), global3.x & true), u_input.b.x));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(786f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(263f * -322f), var_1.x)), _wgslsmith_f_op_f32(var_1.x - -119f)));
    return vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1399f)))), _wgslsmith_f_op_f32(var_0.x * 247f));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: i32) -> bool {
    global3 = select(!(!vec2<bool>(select(global3.x, global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(41953u, 16u)]), any(vec2<bool>(false, global3.x)))), vec2<bool>(true, ~(1i & arg_2) > abs(-2147483647i)), true);
    var var_0 = arg_0;
    global2 = array<vec4<f32>, 26>();
    global0 = array<bool, 16>();
    global3 = vec2<bool>(all(!vec3<bool>(all(vec2<bool>(false, false)), global0[_wgslsmith_index_u32(u_input.c, 16u)], global3.x)), all(vec2<bool>(select(!global3.x, true, !global0[_wgslsmith_index_u32(u_input.c, 16u)]), all(vec3<bool>(global3.x, true, global3.x)) == global3.x)));
    return false || all(vec3<bool>(all(vec4<bool>(global3.x, true, false, true)) | true, global0[_wgslsmith_index_u32(u_input.c, 16u)], true));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-624f, 1871f, -404f, -104f)), u_input.a), func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(203f, 385f) * _wgslsmith_f_op_vec2_f32(func_3(vec2<bool>(global3.x, false), 4294967295u))), 2147483647i, _wgslsmith_clamp_i32(16857i, min(arg_1.x, 0i), 26859i)), countOneBits(_wgslsmith_clamp_vec3_u32(u_input.b.ywy, select(u_input.b.wzy, vec3<u32>(u_input.c, 52452u, 1u), vec3<bool>(arg_0, true, global0[_wgslsmith_index_u32(u_input.b.x, 16u)])), ~u_input.b.ywy)), Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 56455u), vec2<u32>(u_input.c, u_input.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1539f, 140f, -1943f, 1105f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-788f, -1055f, 491f, 864f) * global2[_wgslsmith_index_u32(44357u, 26u)])), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 12192i, 0i), vec4<i32>(-31260i, 2147483647i, -2147483647i, -17276i))), Struct_1(reverseBits(~u_input.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(1028f, -1412f, -1062f, 187f) * vec4<f32>(1f, 1f, 1f, 1f)), vec4<i32>(~(-2788i), -7517i, -u_input.a.x, -arg_1.x))), Struct_1(min(~_wgslsmith_mod_u32(1u, 19889u), u_input.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-406f, 286f), _wgslsmith_f_op_f32(-229f - -364f), -668f, -565f)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i << (u_input.c % 32u), u_input.a.x, arg_1.x, u_input.a.x), u_input.a)), u_input.a);
    global0 = array<bool, 16>();
    global0 = array<bool, 16>();
    var var_1 = vec2<u32>(~(~(~(~var_0.a.d.a))), ~u_input.b.x);
    let var_2 = !vec3<bool>(u_input.a.x >= 2147483647i, true, global3.x || select(false, func_4(vec2<f32>(-815f, var_0.a.a.b.x), -2147483647i, arg_1.x), true));
    return var_0.a;
}

fn func_1(arg_0: f32, arg_1: u32) -> u32 {
    var var_0 = func_2(any(!(!select(vec3<bool>(global3.x, false, global3.x), vec3<bool>(true, false, global3.x), global3.x))), min(-u_input.a.xxy, vec3<i32>(u_input.a.x, 2147483647i, ~(-2147483647i))));
    var var_1 = Struct_1(abs(u_input.c), vec4<f32>(var_0.e.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -578f)), _wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(1335f * _wgslsmith_f_op_f32(376f + _wgslsmith_f_op_f32(f32(-1f) * -431f)))), countOneBits(var_0.d.c));
    let var_2 = -(u_input.a.x | 1i);
    global3 = vec2<bool>(var_0.b, !any(vec2<bool>(var_0.b, true)));
    let var_3 = -106f;
    return _wgslsmith_mult_u32(~(~var_0.a.a), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(countOneBits(vec3<u32>(1u, u_input.b.x, func_1(1044f, u_input.b.x))), ~vec3<u32>(~17295u, _wgslsmith_mod_u32(u_input.b.x, 0u), u_input.b.x)) & u_input.b.yxy;
    var var_1 = _wgslsmith_dot_vec3_i32(u_input.a.yxw, -firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(54943i, -1i, 2147483647i), -vec3<i32>(-1i, u_input.a.x, u_input.a.x))));
    var var_2 = vec2<u32>(_wgslsmith_mult_u32(~(~0u), 4294967295u), ~1u);
    var var_3 = !vec3<bool>(global3.x, false, all(!vec4<bool>(true, global3.x, global0[_wgslsmith_index_u32(var_2.x, 16u)], true)));
    global0 = array<bool, 16>();
    var var_4 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_0.x));
}

