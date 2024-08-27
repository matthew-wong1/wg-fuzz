struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(630f, -1009f, 776f);

var<private> global1: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec4<f32>(-1000f, -222f, -821f, 534f), Struct_2(vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec2<bool>(true, false)), Struct_3(vec4<f32>(185f, -698f, -302f, -136f), Struct_2(vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec2<bool>(true, true)), Struct_3(vec4<f32>(-1890f, 1944f, -1226f, 1393f), Struct_2(vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec2<bool>(true, false)), Struct_3(vec4<f32>(694f, -160f, -1305f, 1365f), Struct_2(vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec2<bool>(true, true)), Struct_3(vec4<f32>(288f, -302f, 702f, 906f), Struct_2(vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec2<bool>(true, false)), Struct_3(vec4<f32>(642f, -439f, 143f, 177f), Struct_2(vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec2<bool>(true, false)), Struct_3(vec4<f32>(1837f, -2021f, 449f, -399f), Struct_2(vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec2<bool>(false, false)), Struct_3(vec4<f32>(279f, 599f, -1390f, -999f), Struct_2(vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec2<bool>(true, false)), Struct_3(vec4<f32>(1151f, -214f, -2422f, 1000f), Struct_2(vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec2<bool>(false, true)), Struct_3(vec4<f32>(-428f, 1000f, 983f, -388f), Struct_2(vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec2<bool>(false, false)), Struct_3(vec4<f32>(-255f, -684f, 1014f, -525f), Struct_2(vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec2<bool>(true, true)), Struct_3(vec4<f32>(-1153f, 266f, -706f, 1408f), Struct_2(vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec2<bool>(true, true)), Struct_3(vec4<f32>(210f, -1072f, -129f, -578f), Struct_2(vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec2<bool>(false, false)), Struct_3(vec4<f32>(-1000f, 991f, 306f, 691f), Struct_2(vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec2<bool>(true, true)), Struct_3(vec4<f32>(-259f, -305f, -1000f, -773f), Struct_2(vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec2<bool>(true, true)), Struct_3(vec4<f32>(201f, -825f, 2386f, 641f), Struct_2(vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec2<bool>(true, true)), Struct_3(vec4<f32>(177f, -345f, 456f, -934f), Struct_2(vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec2<bool>(false, true)), Struct_3(vec4<f32>(1349f, -575f, -1045f, -1881f), Struct_2(vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec2<bool>(true, false)), Struct_3(vec4<f32>(-790f, -780f, 2073f, -330f), Struct_2(vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec2<bool>(true, true)), Struct_3(vec4<f32>(315f, 115f, -650f, -132f), Struct_2(vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec2<bool>(true, true)), Struct_3(vec4<f32>(1118f, 1632f, 1000f, 303f), Struct_2(vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec2<bool>(false, true)), Struct_3(vec4<f32>(-966f, 2218f, -125f, -905f), Struct_2(vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec2<bool>(false, true)), Struct_3(vec4<f32>(-1810f, -1966f, -520f, -1168f), Struct_2(vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec2<bool>(false, false)), Struct_3(vec4<f32>(100f, 758f, 695f, -1935f), Struct_2(vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec2<bool>(false, true)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -2577f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(128f, global0.x)))))) - arg_0.a.zyx);
    let var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a.x))), _wgslsmith_f_op_f32(floor(arg_0.a.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -800f)), Struct_2(!arg_0.b.a, select(arg_0.b.b, select(select(arg_0.b.a, arg_0.b.b, vec3<bool>(arg_0.c.x, arg_0.b.a.x, arg_0.b.b.x)), vec3<bool>(false, true, arg_0.b.b.x), !vec3<bool>(arg_0.c.x, arg_0.b.b.x, false)), arg_0.c.x)), arg_0.c);
    let var_1 = Struct_2(var_0.b.a, arg_0.b.b);
    let var_2 = var_1.b.x;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a.x)), var_0.a.x, global0.x);
    return var_0.b.a;
}

fn func_2() -> bool {
    var var_0 = Struct_2(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), func_3(Struct_3(vec4<f32>(-1000f, 326f, global0.x, -1000f), Struct_2(vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec2<bool>(true, false))), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)), select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), vec3<bool>(false, false, false))));
    var var_1 = var_0.a.x;
    let var_2 = u_input.c.yy;
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-357f, 704f, global0.x, global0.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1000f, global0.x, global0.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-782f + -637f), 1491f, _wgslsmith_f_op_f32(526f * global0.x), _wgslsmith_f_op_f32(sign(392f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1097f, 323f, 205f, -1798f), vec4<f32>(-741f, 601f, global0.x, global0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1113f, -1575f, -332f, 1543f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 2540f, -1095f, global0.x) - vec4<f32>(global0.x, global0.x, global0.x, 1255f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 468f, global0.x, global0.x) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, -185f, 1293f, global0.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1518f, 1383f, 1371f, -603f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -408f, -209f, -220f))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_3.yzz)));
    return true;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = arg_1;
    var var_1 = u_input.b.xx;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.yz - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1096f, -843f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-278f, -1112f)))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, var_0.a, global0.x), vec3<f32>(arg_1.a, arg_1.a, global0.x)))))), vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1894f, 1034f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2023f), 2956f, !arg_0))), vec3<bool>(func_2(), 160f < _wgslsmith_f_op_f32(global0.x * -725f), !select(true, arg_0, false)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.x, -1000f, var_2.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(277f, 423f, var_2.x)), arg_0))))));
    var var_3 = arg_2;
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(select(204f, arg_1.a, arg_2.a.x)))))), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -407f) + 635f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(false, Struct_1(global0.x, vec2<bool>(true, false), u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)), Struct_2(vec3<bool>(false, true, false), vec3<bool>(false, true, false)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1045f, global0.x, global0.x) - vec3<f32>(global0.x, 2208f, global0.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-753f, 2146f, -1032f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 757f, 203f)))), _wgslsmith_dot_vec2_i32(select(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.c.x), u_input.c.yx), abs(u_input.c.zz), vec2<bool>(true, true)), ~vec2<i32>(u_input.a.x, -19230i)) != u_input.c.x));
    var var_0 = abs(_wgslsmith_clamp_vec4_u32(~reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) | vec4<u32>(u_input.b.x, select(u_input.b.x, 4274u, false), _wgslsmith_mult_u32(u_input.b.x, 1315u), 62892u), _wgslsmith_clamp_vec4_u32(vec4<u32>(max(19169u, u_input.b.x), 1u, countOneBits(1u), 0u), (vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x) >> (vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x) % vec4<u32>(32u))) ^ reverseBits(vec4<u32>(1u, 42740u, u_input.b.x, u_input.b.x)), countOneBits(~vec4<u32>(26106u, 1u, u_input.b.x, 22277u))), select(~vec4<u32>(4294967295u, 0u, u_input.b.x, 0u), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 7200u), vec4<u32>(u_input.b.x, u_input.b.x, 52194u, 29586u)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), all(vec2<bool>(false, false))))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, -152f))), global0.x, global0.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1383f, global0.x, global0.x, global0.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1827f, global0.x, _wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_vec3_f32(func_1(false, Struct_1(global0.x, vec2<bool>(true, false), u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), Struct_2(vec3<bool>(true, false, false), vec3<bool>(true, false, false)))).x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(371f, global0.x, 2149f, global0.x), vec4<f32>(-299f, global0.x, global0.x, global0.x))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, global0.x, -875f, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-598f, global0.x, global0.x, 107f), vec4<f32>(global0.x, -1123f, global0.x, 308f)))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1265f, 624f, 530f))) + vec3<f32>(-1284f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(sign(-264f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(644f, -2190f, -706f) - var_1.xww), _wgslsmith_f_op_vec3_f32(-vec3<f32>(579f, var_1.x, 1000f)))))));
    var_0 = vec4<u32>(~_wgslsmith_mult_u32(0u, (u_input.b.x << (1u % 32u)) & _wgslsmith_div_u32(4294967295u, u_input.b.x)), reverseBits(75086u), u_input.b.x, 1u);
    let var_2 = select(select(select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))), select(vec3<bool>(true, true, any(vec2<bool>(false, false))), vec3<bool>(true, true, any(vec4<bool>(true, true, true, false))), vec3<bool>(true, true, true)), func_3(global1[_wgslsmith_index_u32(u_input.b.x, 24u)])), func_3(global1[_wgslsmith_index_u32(u_input.b.x, 24u)]), select(func_3(Struct_3(vec4<f32>(-1342f, 1258f, var_1.x, var_1.x), Struct_2(vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec2<bool>(true, true))), vec3<bool>(true, true, true), select(func_3(Struct_3(vec4<f32>(global0.x, -168f, var_1.x, var_1.x), Struct_2(vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec2<bool>(true, false))), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))));
    var var_3 = ~(~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(min(u_input.b.xy, vec2<u32>(4294967295u, 1u)), vec2<u32>(13465u, var_0.x)), min(~u_input.b.yz, u_input.b.yz)));
    let var_4 = select(select(16686i, ~29522i, false), ~abs(u_input.a.x), !(15304i <= -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 43210i, u_input.a.x, -241i), vec4<i32>(20361i, u_input.a.x, 45900i, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, var_4, _wgslsmith_div_i32(abs(-max(-29419i, u_input.a.x)), _wgslsmith_dot_vec3_i32(-u_input.c, ~(~vec3<i32>(var_4, var_4, u_input.c.x)))));
}

