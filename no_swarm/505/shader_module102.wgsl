struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(-1007f, -889f, -1417f), vec3<f32>(1422f, 2631f, 1000f), vec3<f32>(-2783f, -1180f, -362f), vec3<f32>(-1670f, -356f, -1573f), vec3<f32>(-2240f, -855f, -482f), vec3<f32>(-1156f, 131f, -177f), vec3<f32>(-434f, 1183f, -869f), vec3<f32>(288f, -236f, -2380f), vec3<f32>(696f, -252f, 939f), vec3<f32>(366f, 1019f, -1466f), vec3<f32>(-2122f, -500f, -429f), vec3<f32>(1177f, -2328f, 1000f), vec3<f32>(431f, -773f, 1961f));

var<private> global1: vec2<f32> = vec2<f32>(-649f, 1143f);

var<private> global2: array<f32, 1>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(15180u, 1u)] + -1890f), -2565f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.x, -1468f)))))));
    var var_1 = arg_0.c;
    let var_2 = arg_0.c;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(815f, _wgslsmith_f_op_f32(select(-1370f, _wgslsmith_f_op_f32(165f * global1.x), var_1.b))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-515f, 1175f, false)), _wgslsmith_f_op_f32(-var_1.c.x)))));
    var var_3 = Struct_2(arg_0.c.b, (i32(-1i) * -u_input.c) << (~countOneBits(1u) % 32u), Struct_1(vec2<i32>(-1i) * -vec2<i32>(var_1.a.x, 26492i), !var_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_2.c))))), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1162f)) + _wgslsmith_f_op_f32(round(var_1.c.x))))));
    return 1u;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = 72034u >> (u_input.d.x % 32u);
    global1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1747f - global2[_wgslsmith_index_u32(var_0, 1u)]) * -1266f)), _wgslsmith_f_op_f32(-global1.x))));
    let var_1 = Struct_2(all(vec4<bool>(any(arg_0.xz), arg_0.x, arg_0.x, all(arg_0.yzx))) | false, arg_1.a.x ^ (i32(-1i) * -31753i), arg_1, _wgslsmith_f_op_f32(-global1.x));
    let var_2 = false | (!any(!vec3<bool>(false, true, arg_1.b)) || true);
    let var_3 = ~(vec4<u32>(func_3(var_1), u_input.d.x, abs(57736u), 1u) ^ (vec4<u32>(~u_input.d.x, var_0, ~23405u, u_input.d.x) << (~(vec4<u32>(2952u, var_0, 0u, 14194u) ^ vec4<u32>(var_0, 0u, u_input.d.x, 29845u)) % vec4<u32>(32u))));
    return var_1.c.a;
}

fn func_1(arg_0: vec3<f32>) -> vec2<f32> {
    global2 = array<f32, 1>();
    let var_0 = u_input.c;
    var var_1 = reverseBits(-func_2(vec4<bool>(true, true, false, any(vec2<bool>(false, true))), Struct_1(select(u_input.b.xx, u_input.b.xz, true), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, arg_0.x, global2[_wgslsmith_index_u32(4294967295u, 1u)], 437f)))));
    var var_2 = true;
    global1 = arg_0.zy;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.d.x, 1u)], global2[_wgslsmith_index_u32(u_input.d.x, 1u)]))), _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_vec2_f32(arg_0.xz + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(222f, -357f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(217f, global1.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(45961u, 1u)], global1.x) * vec2<f32>(global1.x, global1.x))) + vec2<f32>(228f, global2[_wgslsmith_index_u32(u_input.d.x, 1u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-938f, -890f, global1.x) - vec3<f32>(global2[_wgslsmith_index_u32(7255u, 1u)], global1.x, global2[_wgslsmith_index_u32(u_input.d.x, 1u)])))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(659f, global1.x), vec2<f32>(global1.x, global1.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), vec2<bool>(true, true)))), all(vec4<bool>(true, true, true, true)))));
    global2 = array<f32, 1>();
    global2 = array<f32, 1>();
    let var_1 = vec4<u32>(u_input.d.x, ~(~1u), ~u_input.d.x, func_3(Struct_2(false, u_input.b.x, Struct_1(u_input.b.yz, true, vec4<f32>(global1.x, -614f, global1.x, global1.x)), _wgslsmith_f_op_f32(-1000f + -1037f)))) << (vec4<u32>(u_input.d.x ^ 0u, u_input.d.x, _wgslsmith_mod_u32(u_input.d.x, u_input.d.x), 26367u) % vec4<u32>(32u));
    let var_2 = Struct_1(~_wgslsmith_sub_vec2_i32(u_input.a.wz, u_input.a.wx), !(!all(vec3<bool>(true, true, true))), vec4<f32>(1797f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-539f, global1.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(9668u, 1u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.x, 1u)]) - var_0.x)));
    let var_3 = ~54846u;
    global0 = array<vec3<f32>, 13>();
    global0 = array<vec3<f32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.yzy, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, -1299i), func_2(vec4<bool>(false, var_2.b & var_2.b, true, true), Struct_1(u_input.b.zw, var_2.b, var_2.c))), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(var_1, var_1), ~4294967295u, var_3), reverseBits(vec3<u32>(u_input.d.x, var_3, u_input.d.x) >> (vec3<u32>(u_input.d.x, u_input.d.x, 58941u) % vec3<u32>(32u))) ^ var_1.wwz, ~vec3<u32>(4294967295u, u_input.d.x, ~var_1.x)), 201i);
}

