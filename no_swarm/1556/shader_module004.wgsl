struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 29>;

var<private> global2: array<f32, 24>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    global0 = Struct_1(vec3<bool>(false, !any(vec4<bool>(false, arg_2.a.x, arg_2.a.x, arg_2.a.x)), global0.a.x));
    global0 = arg_2;
    return 35906u;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: Struct_1) -> vec3<f32> {
    global0 = Struct_1(select(!vec3<bool>(false, true, !arg_2.a.x), arg_2.a, select(global0.a, !select(vec3<bool>(arg_2.a.x, global0.a.x, arg_2.a.x), vec3<bool>(false, true, false), vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.d, 29u)])), true)));
    global1 = array<bool, 29>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + arg_1.x) + _wgslsmith_f_op_f32(arg_1.x + global2[_wgslsmith_index_u32(func_3(select(u_input.d, 4294967295u, true) ^ ~1u, min(select(vec3<i32>(u_input.a.x, u_input.a.x, 976i), u_input.a.zxy, arg_2.a), vec3<i32>(0i, 16939i, 23421i)), arg_2), 24u)]));
    global2 = array<f32, 24>();
    var var_1 = u_input.a.x;
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.wxz - arg_0.xyz) + vec3<f32>(-1956f, 1003f, 1000f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(arg_1.wxw, arg_1.ywx, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1678f, global2[_wgslsmith_index_u32(1u, 24u)], -1433f) + arg_0.zyw))))))), _wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(1u, 24u)], 1993f, 156f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 24u)], -475f, -850f)) * arg_0.yzw))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: vec3<f32>) -> vec3<bool> {
    var var_0 = arg_3;
    global0 = arg_0;
    let var_1 = Struct_1(arg_0.a);
    var var_2 = var_1;
    let var_3 = 2147483647i;
    return vec3<bool>(any(!arg_0.a), countOneBits(var_3) >= reverseBits(-firstTrailingBit(11739i)), true);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = u_input.c.yy;
    var var_1 = ~u_input.a.x;
    var var_2 = vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, ~select(18795u, 0u, true) | ~_wgslsmith_mult_u32(0u, 0u)), 24u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.d, 24u)])), global2[_wgslsmith_index_u32(0u, 24u)])), global2[_wgslsmith_index_u32(u_input.d, 24u)])), 457f);
    var var_3 = -478f;
    var var_4 = Struct_1(func_4(Struct_1(vec3<bool>(false, all(arg_0.a.xx), arg_0.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(var_0.x << (1u % 32u), 24u)], _wgslsmith_f_op_f32(max(271f, global2[_wgslsmith_index_u32(7344u, 24u)])))))), any(global0.a.xx), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec4<f32>(500f, var_2.x, var_2.x, var_2.x), vec4<f32>(var_2.x, var_2.x, 111f, global2[_wgslsmith_index_u32(3751u, 24u)]), arg_0)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, global2[_wgslsmith_index_u32(38210u, 24u)]))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -282f), -598f, _wgslsmith_f_op_f32(ceil(1849f)))))));
    return Struct_1(!var_4.a);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = arg_1;
    global1 = array<bool, 29>();
    var var_2 = arg_0;
    global0 = func_1(var_1, abs(~(u_input.a.xw >> (vec2<u32>(u_input.e, 7180u) % vec2<u32>(32u)))) | vec2<i32>(_wgslsmith_mult_i32(~59780i, abs(var_0.x)), -6213i));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_1(Struct_1(global0.a), vec2<i32>(u_input.a.x, min(-u_input.a.x, -7950i))), Struct_1(func_4(Struct_1(func_1(Struct_1(vec3<bool>(global0.a.x, global0.a.x, false)), vec2<i32>(78433i, u_input.a.x)).a), global2[_wgslsmith_index_u32(u_input.b, 24u)], true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.e, 24u)], global2[_wgslsmith_index_u32(0u, 24u)], -1756f)), vec3<f32>(-875f, global2[_wgslsmith_index_u32(82938u, 24u)], global2[_wgslsmith_index_u32(u_input.e, 24u)]), func_1(Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(54488u, 29u)], global0.a.x)), vec2<i32>(u_input.a.x, 1i)).a)))));
    let var_0 = -1814f;
    let var_1 = u_input.b != u_input.d;
    var var_2 = vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(60075u | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 5184u, u_input.c.x, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(94977u, u_input.b, u_input.d, u_input.d), vec4<u32>(u_input.b, u_input.d, 0u, 0u))), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.e, 4294967295u), u_input.c.zx, vec2<bool>(false, true)), ~vec2<u32>(0u, 1u) | _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, u_input.b), u_input.c.yx))), 29u)], func_1(Struct_1(!func_1(Struct_1(global0.a), vec2<i32>(u_input.a.x, u_input.a.x)).a), ~_wgslsmith_mod_vec2_i32(abs(u_input.a.zw), u_input.a.yx)).a.x, global1[_wgslsmith_index_u32(min(16097u, ~(~_wgslsmith_div_u32(71088u, u_input.d))), 29u)], func_1(Struct_1(global0.a), -max(vec2<i32>(-1i, u_input.a.x), u_input.a.yx) << (~abs(u_input.c.xx) % vec2<u32>(32u))).a.x);
    global2 = array<f32, 24>();
    let var_3 = ~u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(max(vec2<u32>(~var_3.x, 42206u & u_input.b), min(var_3.yx, ~var_3.yy)), select(u_input.c.yx, countOneBits(var_3.xy), func_5(Struct_1(vec3<bool>(false, false, global1[_wgslsmith_index_u32(var_3.x, 29u)])), Struct_1(var_2.xzy)).a.x) & _wgslsmith_mod_vec2_u32(~var_3.xy, reverseBits(var_3.zy))), _wgslsmith_sub_i32(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -53095i), u_input.a.wy)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -1264i) >> (~vec2<u32>(1u, var_3.x) % vec2<u32>(32u)), vec2<i32>(0i, -12173i) | -u_input.a.xw)));
}

