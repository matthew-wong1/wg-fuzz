struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(true, false, false, true, false, false);

var<private> global1: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-1089f, -624f, 936f), vec3<f32>(-845f, 1377f, 756f), vec3<f32>(1888f, 1030f, -994f), vec3<f32>(279f, 2301f, -1014f), vec3<f32>(1000f, -2097f, -273f), vec3<f32>(2201f, -632f, 419f), vec3<f32>(-134f, -691f, 1338f), vec3<f32>(-529f, -271f, 1065f), vec3<f32>(1000f, 980f, 296f), vec3<f32>(-546f, 508f, -1144f), vec3<f32>(894f, 1009f, -361f), vec3<f32>(454f, -1363f, 972f), vec3<f32>(-1000f, -659f, 249f), vec3<f32>(347f, 1716f, -2630f), vec3<f32>(-1266f, 133f, 1000f), vec3<f32>(-851f, -1129f, 1183f), vec3<f32>(534f, -1769f, -1000f), vec3<f32>(872f, -889f, -418f), vec3<f32>(-805f, 130f, -226f), vec3<f32>(170f, 1000f, -1000f), vec3<f32>(-608f, 399f, -1957f));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = ~u_input.c.wzz;
    let var_1 = !vec3<bool>(true && (-944f >= arg_0), !global0[_wgslsmith_index_u32(30021u, 6u)], !all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 6u)], true)) && !(var_0.x != u_input.c.x));
    let var_2 = 0u;
    var var_3 = u_input.b;
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1268f, -535f, arg_0, -1037f) + _wgslsmith_div_vec4_f32(vec4<f32>(-472f, 1000f, arg_0, arg_0), vec4<f32>(1606f, arg_0, -811f, -1184f))))))));
    return Struct_2(var_1.x, vec2<u32>(~(~_wgslsmith_add_u32(41942u, 55930u)), u_input.c.x), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(1139f)), _wgslsmith_f_op_f32(-arg_0), -897f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1932f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_4.a)))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = vec2<bool>(false, arg_2.a);
    var var_1 = arg_0.x;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_2.c.a.x)))) - -943f))) > arg_2.c.a.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.c.a.xy) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c.a.x, 1000f))) * _wgslsmith_div_vec2_f32(arg_2.c.a.zz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-932f, 774f)))), vec2<f32>(arg_2.c.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.d.x * 1695f)))))));
    return vec4<bool>(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.d.x, var_3.x, global0[_wgslsmith_index_u32(49468u, 6u)])) - _wgslsmith_f_op_f32(-501f - -974f)) + _wgslsmith_f_op_f32(1035f - _wgslsmith_f_op_f32(-1994f * -1247f)))).a, false, true, any(vec4<bool>(abs(-17778i) >= u_input.a, !all(var_0), true, any(!vec3<bool>(false, global0[_wgslsmith_index_u32(arg_2.b.x, 6u)], false)))));
}

fn func_1() -> u32 {
    let var_0 = func_2(1403f);
    let var_1 = var_0.a;
    var var_2 = !vec2<bool>(all(select(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 6u)], var_1, true), func_3(vec3<i32>(u_input.b.x, u_input.a, u_input.a), vec4<u32>(55780u, 1u, var_0.b.x, 0u), Struct_2(global0[_wgslsmith_index_u32(u_input.d.x, 6u)], vec2<u32>(u_input.c.x, 1u), Struct_1(vec4<f32>(var_0.c.a.x, -226f, 819f, var_0.c.a.x)), vec4<f32>(352f, var_0.c.a.x, var_0.c.a.x, var_0.c.a.x))), select(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 6u)], var_0.a, var_1), vec4<bool>(var_1, global0[_wgslsmith_index_u32(var_0.b.x, 6u)], var_1, true), var_1))), true);
    let var_3 = func_2(var_0.d.x);
    let var_4 = var_0.d.x >= _wgslsmith_f_op_f32(ceil(-327f));
    return var_0.b.x;
}

fn func_4(arg_0: vec3<bool>) -> StorageBuffer {
    let var_0 = select(!(!(!(!arg_0))), arg_0, vec3<bool>(!(any(vec4<bool>(false, true, true, true)) | true), true, arg_0.x));
    let var_1 = !(u_input.d.x == _wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.c), ~vec4<u32>(15850u, u_input.d.x, u_input.c.x, 519u)));
    global0 = array<bool, 6>();
    let var_2 = Struct_2(arg_0.x, _wgslsmith_div_vec2_u32((func_2(2564f).b | vec2<u32>(1u, 1u)) >> (vec2<u32>(u_input.c.x & 22115u, _wgslsmith_mod_u32(u_input.c.x, u_input.c.x)) % vec2<u32>(32u)), ~abs(vec2<u32>(50968u, u_input.d.x) << (vec2<u32>(13749u, 4294967295u) % vec2<u32>(32u)))), Struct_1(vec4<f32>(-847f, _wgslsmith_f_op_f32(sign(705f)), -791f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2531f - 188f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(671f, 479f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -228f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(173f - 320f)), -163f) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-510f, 1333f, 465f, -340f) * _wgslsmith_div_vec4_f32(vec4<f32>(202f, -2106f, 157f, 1820f), vec4<f32>(262f, -1716f, -113f, 851f)))))));
    var var_3 = vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b, _wgslsmith_mod_vec2_i32(~u_input.b, _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.a), u_input.b))), ~_wgslsmith_mod_vec2_i32(abs(u_input.b), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -779i), u_input.b))), -2147483647i);
    return StorageBuffer(var_2.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-466f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(916f + 219f)))) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-895f, -297f))));
    global1 = array<vec3<f32>, 21>();
    let var_1 = global0[_wgslsmith_index_u32(0u, 6u)];
    var var_2 = -1327f;
    var var_3 = false;
    let x = u_input.a;
    s_output = func_4(vec3<bool>(!global0[_wgslsmith_index_u32(func_1(), 6u)], func_3(~firstTrailingBit(vec3<i32>(-6048i, u_input.b.x, 0i)), u_input.c, Struct_2(select(true, true, global0[_wgslsmith_index_u32(4294967295u, 6u)]), ~vec2<u32>(1454u, 11215u), Struct_1(vec4<f32>(var_0, var_0, 247f, var_0)), vec4<f32>(var_0, 1722f, var_0, 409f))).x, func_2(var_0).a));
}

