struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 7>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(~u_input.a.x, u_input.a.x) | ~1u, u_input.a.x), 7u)], vec2<u32>(u_input.a.x, select(13138u | u_input.a.x, u_input.a.x, global0.x)));
    global0 = vec3<bool>(all(select(!global0.xx, !vec2<bool>(global0.x, global0.x), global0.xz)) || true, true, !any(vec3<bool>(true, global0.x, any(vec3<bool>(global0.x, global0.x, global0.x)))));
    var var_1 = any(select(!vec4<bool>(!global0.x, u_input.b.x == u_input.b.x, all(vec2<bool>(true, false)), any(vec4<bool>(true, global0.x, global0.x, global0.x))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(global0.x, global0.x, true, global0.x), select(vec4<bool>(false, true, global0.x, false), vec4<bool>(global0.x, false, true, true), true)), select(select(vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(true, false, false, global0.x), global0.x), select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), global0.x), !vec4<bool>(global0.x, true, global0.x, global0.x)), !(!vec4<bool>(false, global0.x, false, true))), false));
    var var_2 = global1[_wgslsmith_index_u32(~u_input.a.x, 7u)];
    var var_3 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a * -524f) - _wgslsmith_f_op_f32(trunc(289f))) - var_0.a.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a + var_0.a.a)))), !(true & !global0.x))));
    return vec3<bool>(true, true, global0.x);
}

fn func_2() -> vec3<bool> {
    let var_0 = -(~reverseBits(abs(~vec2<i32>(u_input.b.x, -1i))));
    global0 = select(select(!(!select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x), true)), !select(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, true), global0.x), !vec3<bool>(false, global0.x, false), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, true), true)), false), !select(vec3<bool>(true, global0.x, false), func_3(), true), func_3());
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1101f, -679f, -1000f)))) * vec3<f32>(_wgslsmith_f_op_f32(round(809f)), 1f, -780f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-574f, 2039f, -219f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(939f, 133f, -622f))))));
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 567f, _wgslsmith_f_op_f32(step(425f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1221f + var_1.x) + 220f)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -258f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1384f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(167f, var_1.x)))));
    return select(!select(vec3<bool>(true, true, var_2), !(!vec3<bool>(global0.x, false, global0.x)), (u_input.a.x & u_input.a.x) == reverseBits(u_input.a.x)), vec3<bool>(all(!select(vec4<bool>(false, global0.x, var_2, true), vec4<bool>(global0.x, false, var_2, true), vec4<bool>(false, false, var_2, var_2))), true, _wgslsmith_f_op_f32(exp2(var_3.x)) >= var_1.x), all(vec4<bool>(select(false, true, global0.x) && false, -597f > var_1.x, any(select(vec4<bool>(true, global0.x, var_2, var_2), vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(var_2, false, true, global0.x))), true)));
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    global0 = func_2();
    var var_0 = min(_wgslsmith_mod_u32(max(55221u, 1u), u_input.a.x), arg_0.x);
    var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(648f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1702f)) - _wgslsmith_f_op_f32(ceil(1000f))));
    global0 = !select(select(select(vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, global0.x, global0.x), true), func_2(), 1u >= ~arg_0.x), vec3<bool>(true, true, global0.x || global0.x), all(!global0.yz) || false);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(379f)), _wgslsmith_f_op_f32(-887f + -1469f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(346f + 1373f) - 1015f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(293f), u_input.a.xy);
    global0 = !vec3<bool>(global0.x, true, all(!select(global0.yy, vec2<bool>(global0.x, global0.x), true)));
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_0.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<u32>(var_0.b.x, u_input.a.x | var_0.b.x, u_input.a.x, var_0.b.x))) * var_0.a.a)));
    let var_2 = select(var_0.b.x, ~(_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.a.x, 52238u, 52563u), vec3<u32>(15164u, var_0.b.x, u_input.a.x)), vec3<u32>(425u, u_input.a.x, var_0.b.x)) | u_input.a.x), min(~u_input.a.x, 0u) > u_input.a.x);
    let var_3 = select(u_input.b, _wgslsmith_mult_vec3_i32(~(-vec3<i32>(1i, -1i, -62280i) << (vec3<u32>(817u, var_2, u_input.a.x) % vec3<u32>(32u))), u_input.b), true);
    global1 = array<Struct_1, 7>();
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-822f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.a.a + _wgslsmith_f_op_f32(-2106f + var_0.a.a)), ~var_0.b, var_0.b);
}

