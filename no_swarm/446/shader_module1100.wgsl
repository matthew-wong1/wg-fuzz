struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 32>;

var<private> global1: array<vec3<bool>, 20>;

var<private> global2: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(1547f, -1051f, -305f), vec3<f32>(956f, 2004f, 892f), vec3<f32>(1524f, -125f, 636f), vec3<f32>(481f, 196f, 1010f), vec3<f32>(-311f, 638f, -1400f), vec3<f32>(629f, 377f, -1347f), vec3<f32>(144f, 517f, -854f), vec3<f32>(795f, 240f, 1000f), vec3<f32>(699f, 2735f, -571f), vec3<f32>(589f, -707f, -1330f), vec3<f32>(-1220f, 949f, 635f), vec3<f32>(567f, -1699f, -206f), vec3<f32>(-501f, -667f, -223f), vec3<f32>(845f, -1080f, 231f), vec3<f32>(150f, 187f, -1094f), vec3<f32>(1267f, -494f, -1971f), vec3<f32>(-1826f, -1095f, -526f), vec3<f32>(1000f, 758f, 1739f), vec3<f32>(-460f, 1000f, -225f), vec3<f32>(-1480f, 389f, -128f), vec3<f32>(486f, -648f, 940f), vec3<f32>(-1124f, 1371f, 2413f));

var<private> global3: array<vec2<i32>, 13>;

var<private> global4: array<vec4<u32>, 23>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_5) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1193f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1538f)) + _wgslsmith_f_op_f32(abs(-520f))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -1425f)), 2109f);
    global4 = array<vec4<u32>, 23>();
    var var_1 = Struct_3(vec4<bool>(!select(var_0.x > var_0.x, all(global1[_wgslsmith_index_u32(12043u, 20u)]), true), -1000f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1048f, var_0.x))), true, false));
    global0 = array<vec3<f32>, 32>();
    return vec2<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(ceil(236f))))))));
}

fn func_2(arg_0: i32) -> vec4<i32> {
    let var_0 = vec4<bool>(false, true, 63480u > ~(~_wgslsmith_mod_u32(u_input.b.x, 50489u)), any(vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true))), all(vec4<bool>(false, true, false, true)))));
    let var_1 = -1i;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1223f, _wgslsmith_div_f32(-1000f, 2872f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1496f, -1269f)) * _wgslsmith_div_vec2_f32(vec2<f32>(1008f, -279f), vec2<f32>(588f, -138f)))), _wgslsmith_div_vec2_f32(vec2<f32>(-105f, 1000f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_3(Struct_5(0i))))))));
    global1 = array<vec3<bool>, 20>();
    var var_3 = Struct_5(arg_0);
    return vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-(-28963i ^ var_1), ~(var_1 | var_3.a), arg_0), _wgslsmith_add_vec3_i32(firstLeadingBit(abs(vec3<i32>(-1i, -64620i, 1i))), reverseBits(vec3<i32>(var_3.a, var_1, 27212i)) & firstLeadingBit(vec3<i32>(var_1, var_3.a, arg_0)))), ~var_1, _wgslsmith_sub_i32(-34604i, ~1i), 2147483647i);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: bool) -> Struct_2 {
    global1 = array<vec3<bool>, 20>();
    var var_0 = false && (1i > (_wgslsmith_mod_i32(21133i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, -33616i, 8569i), vec3<i32>(arg_0.x, arg_0.x, arg_0.x))) << (~4294967295u % 32u)));
    global3 = array<vec2<i32>, 13>();
    let var_1 = firstLeadingBit(vec4<i32>(-arg_0.x, _wgslsmith_clamp_i32(~(-23862i >> (u_input.a % 32u)), arg_0.x, -arg_0.x >> (~u_input.b.x % 32u)), min(arg_0.x, 1i << (1u % 32u)), _wgslsmith_add_i32(-(arg_0.x >> (u_input.a % 32u)), ~arg_0.x)));
    global0 = array<vec3<f32>, 32>();
    return Struct_2(vec3<u32>(62917u, 112181u, u_input.a), arg_2, vec2<i32>(arg_0.x, _wgslsmith_dot_vec4_i32(var_1, func_2(_wgslsmith_mod_i32(var_1.x, var_1.x)))), arg_1);
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_2, arg_3: vec4<i32>) -> u32 {
    global1 = array<vec3<bool>, 20>();
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -185f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(798f - arg_2.b.x)), arg_1)), arg_2.d.b.x) + arg_2.b.zz);
    var var_1 = arg_2.a.x;
    global1 = array<vec3<bool>, 20>();
    var var_2 = -325f;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(-2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(func_4(-953f, true, func_1(global3[_wgslsmith_index_u32(4294967295u, 13u)], Struct_1(true, vec2<f32>(-1587f, -1504f), vec2<bool>(true, true)), vec4<f32>(-579f, 128f, -650f, 176f), true), _wgslsmith_div_vec4_i32(vec4<i32>(32696i, 1286i, var_0.a, var_0.a), vec4<i32>(var_0.a, var_0.a, 0i, -2147483647i))), _wgslsmith_mult_u32(~4294967295u, _wgslsmith_div_u32(29629u, u_input.a)), ~(~0u), u_input.a), global4[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(1u, 34109u), ~0u), 23u)]), _wgslsmith_dot_vec2_u32(reverseBits(countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.b.x)))), ~(u_input.b.wy | vec2<u32>(u_input.a, 1u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-341f, -1602f, 260f, 1000f) * vec4<f32>(-897f, -794f, 599f, -1286f)), vec4<f32>(-1243f, 131f, 280f, 806f), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(486f, 1622f, 456f, 272f) + vec4<f32>(-1643f, 405f, -1249f, 1149f)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(510f, 1529f, -573f, 271f))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(200f, 1437f, 676f, 307f))))))), _wgslsmith_f_op_vec4_f32(ceil(func_1(-vec2<i32>(-2147483647i, var_0.a) ^ _wgslsmith_div_vec2_i32(global3[_wgslsmith_index_u32(39831u, 13u)], global3[_wgslsmith_index_u32(u_input.a, 13u)]), Struct_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1073f, 1110f)), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), vec4<f32>(_wgslsmith_div_f32(-170f, 711f), _wgslsmith_f_op_f32(round(1117f)), _wgslsmith_f_op_f32(601f + 2451f), _wgslsmith_f_op_f32(trunc(-546f))), true).b)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -(~vec3<i32>(var_0.a, 47616i, 47520i)), func_2(var_0.a | -32311i).wwy, abs(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a, 1i, var_0.a), vec3<i32>(var_0.a, 2147483647i, var_0.a)) & ~vec3<i32>(var_0.a, var_0.a, var_0.a))));
}

