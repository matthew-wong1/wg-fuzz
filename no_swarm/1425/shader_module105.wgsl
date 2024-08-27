struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<bool>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_3(Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(509f, -1238f, 1691f, -1000f)))), _wgslsmith_sub_vec3_u32(vec3<u32>(min(1u, 23324u), 0u, u_input.b | 1u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 1u, 4294967295u), select(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(1u, u_input.b, 25690u), vec3<bool>(false, false, true)))), vec2<bool>(true, true)), vec2<bool>(true, (i32(-1i) * -u_input.a.x) == u_input.a.x), select(vec4<bool>(true, true, true, true), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), true), all(vec3<bool>(true, true, true))), 28699i, any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), any(vec3<bool>(false, false, false)))));
    let var_1 = vec4<bool>(true, false, true, !var_0.c.x);
    let var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.b.x), _wgslsmith_div_f32(592f, 1186f)), var_0.a.b.x);
    let var_3 = Struct_2(!(select(2147483647i << (var_0.a.c.x % 32u), 2147483647i, false) >= var_0.d));
    var var_4 = var_3;
    return var_0.c;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: bool, arg_3: vec2<f32>) -> bool {
    let var_0 = select(vec4<u32>(~93844u, 37118u ^ abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, 4294967295u), vec4<u32>(1u, u_input.b, u_input.b, 1u))), ~u_input.b, 1u), vec4<u32>(~u_input.b, _wgslsmith_mult_u32(u_input.b, ~58282u), 4294967295u, u_input.b), vec4<bool>(arg_2, true, !arg_1.x, arg_1.x));
    let var_1 = u_input.a;
    var var_2 = Struct_3(Struct_1(arg_1.zy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(456f, 992f, arg_0.x, 147f) * vec4<f32>(arg_0.x, 819f, 1000f, 576f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3.x, 405f, -421f, arg_0.x))))), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, var_0.x, u_input.b), var_0.xxx), !vec2<bool>(true, arg_2)), select(select(!vec2<bool>(true, arg_2), vec2<bool>(arg_1.x || arg_1.x, true), arg_1.xz), vec2<bool>(arg_0.x < 2298f, all(arg_1.xx) & true), true), select(select(func_3(), vec4<bool>(true, arg_1.x, arg_2, any(vec4<bool>(arg_1.x, false, arg_1.x, false))), select(vec4<bool>(arg_2, false, arg_2, true), !vec4<bool>(arg_1.x, arg_1.x, arg_2, false), true)), select(select(select(vec4<bool>(true, arg_2, true, arg_2), vec4<bool>(false, false, arg_1.x, arg_1.x), vec4<bool>(false, arg_1.x, arg_2, true)), select(vec4<bool>(false, arg_2, arg_1.x, true), vec4<bool>(true, true, arg_1.x, arg_2), vec4<bool>(arg_2, arg_2, true, arg_2)), arg_1.x), func_3(), true), select(!vec4<bool>(true, arg_1.x, false, arg_2), !vec4<bool>(arg_1.x, arg_1.x, true, false), true)), ~u_input.a.x, all(!select(vec2<bool>(true, true), arg_1.zy, vec2<bool>(arg_2, arg_1.x))));
    let var_3 = _wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.a.b.x), -180f))));
    var_2 = Struct_3(var_2.a, vec2<bool>(arg_1.x && any(select(vec2<bool>(true, var_2.c.x), var_2.b, false)), arg_1.x), vec4<bool>(var_2.c.x, any(!var_2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3))) <= -885f, arg_2), firstTrailingBit(i32(-1i) * -1i) ^ firstLeadingBit(i32(-1i) * -30147i), any(select(!select(arg_1.zx, var_2.c.xy, false), var_2.c.yy, arg_1.zz)));
    return all(!(!vec2<bool>(arg_1.x, false)));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: bool) -> vec3<f32> {
    var var_0 = Struct_3(Struct_1(select(vec2<bool>(arg_2, !arg_2), vec2<bool>(func_2(vec3<f32>(-1206f, -481f, 478f), vec3<bool>(false, false, true), false, vec2<f32>(892f, -781f)), true), arg_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1129f, 2020f, -1340f, -2778f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(516f, -182f, -1093f, -384f)))), arg_1, vec2<bool>(true, true)), vec2<bool>(arg_2, all(!(!vec4<bool>(false, arg_0, true, false)))), vec4<bool>(func_3().x, true, arg_2, !(14779u == ~u_input.b)), 0i, !((firstTrailingBit(arg_1.x) > firstLeadingBit(1u)) && arg_2));
    var_0 = Struct_3(Struct_1(vec2<bool>(!(!arg_2), !(arg_2 & true)), var_0.a.b, vec3<u32>(1u, 18819u, ~1u), vec2<bool>(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(515f, -105f, var_0.a.b.x)), vec3<bool>(true, arg_0, arg_0), any(var_0.c.zww), vec2<f32>(-2691f, var_0.a.b.x)), false)), vec2<bool>(var_0.a.b.x < _wgslsmith_f_op_f32(f32(-1f) * -1897f), func_3().x), !(!vec4<bool>(var_0.a.a.x, arg_2, false, arg_0)), u_input.c.x, arg_2);
    var var_1 = vec4<u32>(arg_1.x, reverseBits(0u), 1u, arg_1.x);
    var_0 = Struct_3(var_0.a, !var_0.b, var_0.c, _wgslsmith_clamp_i32(firstLeadingBit(2147483647i), -3067i, -6281i), func_3().x);
    let var_2 = Struct_2(!select(true, arg_2, true) | any(!select(vec4<bool>(arg_2, var_0.a.d.x, false, false), vec4<bool>(arg_0, var_0.e, arg_2, true), vec4<bool>(arg_2, true, false, arg_2))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.b.wwz) + var_0.a.b.xyy))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(true, ~vec3<u32>(0u, 0u, u_input.b), true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(774f, 1979f, 315f), vec3<f32>(-2407f, -314f, 649f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 121f) - vec3<f32>(1000f, -357f, _wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1016f, var_0.x, var_0.x) * vec3<f32>(105f, 533f, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1474f) * vec3<f32>(var_0.x, 3233f, var_0.x))))))));
    let var_1 = Struct_2(all(func_3().yxz));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(656f, -792f, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(18607u, u_input.b, u_input.b), vec3<u32>(u_input.b, 1u, u_input.b)), vec3<u32>(u_input.b, u_input.b, 1u) >> (firstTrailingBit(vec3<u32>(12638u, 0u, u_input.b)) % vec3<u32>(32u))), vec3<u32>(max(_wgslsmith_div_u32(u_input.b, u_input.b), u_input.b), firstLeadingBit(45742u), ~4294967295u), vec3<bool>(var_1.a, var_1.a, any(select(vec3<bool>(false, false, true), vec3<bool>(var_1.a, var_1.a, var_1.a), var_1.a)))), ~abs(u_input.b) | select(_wgslsmith_mult_u32(3385u, 16223u), ~u_input.b, false));
}

