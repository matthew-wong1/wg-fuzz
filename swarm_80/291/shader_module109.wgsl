struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32 = -521f;

var<private> global2: array<i32, 2> = array<i32, 2>(i32(-2147483648), 41074i);

var<private> global3: array<Struct_2, 31>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global3 = array<Struct_2, 31>();
    var var_0 = !(!all(vec3<bool>(true, arg_0.b.b, false))) || arg_0.d.x;
    var var_1 = 6243u;
    global2 = array<i32, 2>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.e.x, arg_0.e.x)) - _wgslsmith_f_op_f32(485f + -293f)), arg_0.b.a))) - _wgslsmith_f_op_f32(select(arg_0.e.x, arg_0.b.a, !arg_0.d.x || true)));
    return u_input.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_div_f32(arg_2, 771f), arg_0.b)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -231f), _wgslsmith_f_op_f32(sign(arg_2)))), arg_0.a) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, -1226f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2, -1000f))), vec2<f32>(arg_2, 185f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1171f, arg_2) + vec2<f32>(arg_2, -636f))))));
    var var_1 = 33842u;
    var_1 = countOneBits(21610u ^ func_3(Struct_2(arg_0, arg_0, u_input.a.x, !vec4<bool>(false, true, true, arg_0.c), vec3<f32>(849f, 725f, var_0.x))));
    var_1 = reverseBits(u_input.a.x);
    global3 = array<Struct_2, 31>();
    return countOneBits(_wgslsmith_sub_i32(countOneBits(global2[_wgslsmith_index_u32(u_input.a.x, 2u)]), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, arg_1), countOneBits(vec2<i32>(-58195i, -2147483647i))), vec2<i32>(select(1i, -8351i, false), countOneBits(global2[_wgslsmith_index_u32(u_input.a.x, 2u)])))));
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = ~(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 15206u), vec2<u32>(u_input.a.x, 7446u)))) | ~vec2<u32>(_wgslsmith_div_u32(51471u, _wgslsmith_add_u32(u_input.a.x, 81963u)), 52838u);
    var var_1 = select(-(~(~countOneBits(vec3<i32>(-2147483647i, 107i, global2[_wgslsmith_index_u32(49493u, 2u)])))), firstLeadingBit(vec3<i32>(global2[_wgslsmith_index_u32(var_0.x, 2u)], func_2(Struct_1(arg_0.e.x, arg_0.a.c, false), 47572i, 902f), reverseBits(1i)) ^ (_wgslsmith_sub_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(37942u, 2u)], global2[_wgslsmith_index_u32(u_input.a.x, 2u)], -2147483647i), vec3<i32>(global2[_wgslsmith_index_u32(var_0.x, 2u)], -55313i, global2[_wgslsmith_index_u32(4294967295u, 2u)])) | select(vec3<i32>(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(0u, 2u)], -65896i), vec3<i32>(global2[_wgslsmith_index_u32(0u, 2u)], 0i, global2[_wgslsmith_index_u32(13274u, 2u)]), arg_0.d.x))), !(!(!vec3<bool>(true, arg_0.d.x, true))));
    var var_2 = Struct_2(arg_0.a, Struct_1(476f, any(vec2<bool>(arg_0.b.c, u_input.a.x >= var_0.x)), true), ~arg_0.c, arg_0.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(arg_0.e, arg_0.e)), vec3<f32>(641f, 583f, arg_0.a.a))), arg_0.e, select(vec3<bool>(arg_0.a.b, false, arg_0.d.x), select(arg_0.d.xzy, arg_0.d.xwz, arg_0.a.c), !arg_0.d.x))) - arg_0.e));
    var var_3 = vec4<f32>(var_2.b.a, 1000f, _wgslsmith_f_op_f32(-arg_0.e.x), -177f);
    var var_4 = Struct_2(var_2.a, Struct_1(_wgslsmith_div_f32(-1659f, var_2.a.a), !any(arg_0.d), arg_0.b.c), arg_0.c, select(var_2.d, !select(select(var_2.d, vec4<bool>(true, true, false, arg_0.d.x), vec4<bool>(arg_0.d.x, false, arg_0.b.b, var_2.a.b)), select(vec4<bool>(arg_0.d.x, arg_0.b.c, true, false), vec4<bool>(var_2.a.b, var_2.a.c, true, false), var_2.a.c), var_2.d), false), var_3.xzz);
    return var_2.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(-567f, false, false), Struct_1(157f, false, false), u_input.a.x, vec4<bool>(false, true, false, true), vec3<f32>(299f, 390f, -258f)))))))));
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1185f, -1635f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(437f, 487f) + vec2<f32>(-1487f, 1904f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1408f - -1301f), _wgslsmith_f_op_f32(f32(-1f) * -1046f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-234f + 1172f) + -1587f), -969f)));
    let var_1 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1055f * -412f))))), u_input.a.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2951f, var_0.x, var_0.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-497f, 354f, var_0.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(221f, var_0.x, -1352f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(573f, var_0.x, 722f) + vec3<f32>(var_0.x, var_0.x, 1842f))))))));
}

