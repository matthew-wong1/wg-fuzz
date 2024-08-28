struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = true;
    var var_1 = arg_1.d;
    var var_2 = ~(~_wgslsmith_sub_u32(countOneBits(~27989u), u_input.b.x));
    var_2 = 0u;
    let var_3 = vec2<u32>(u_input.b.x, firstTrailingBit(~(~_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, 38910u))));
    return vec3<f32>(arg_0.x, -130f, arg_0.x);
}

fn func_2() -> vec3<f32> {
    var var_0 = ~72234u;
    return _wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -294f))), -1049f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(465f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -561f))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(155f, -314f, 572f) * vec3<f32>(-174f, 534f, -691f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-205f, 647f, 1019f))), ~_wgslsmith_mod_u32(4294967295u, u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1085f) * _wgslsmith_f_op_f32(f32(-1f) * -578f)), -1i), select(~u_input.a, u_input.a >> (21582u % 32u), -1000f != _wgslsmith_f_op_f32(sign(-1047f))), max(u_input.a, -u_input.a), !vec2<bool>(true, 7634u > u_input.b.x))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_4(vec4<i32>(-2147483647i, u_input.a, 22019i, i32(-1i) * -3427i), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1581f, -1079f, -668f) + vec3<f32>(-2605f, 639f, 1044f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(965f, 1000f, 520f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(258f, 853f, -605f))) + _wgslsmith_f_op_vec3_f32(func_2()))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1859f)), -2101f, _wgslsmith_f_op_f32(-1087f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, 262f))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, -836f, 268f, -1455f), vec4<f32>(var_0.b.x, var_0.b.x, -828f, var_0.b.x))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x) - vec4<f32>(-897f, var_0.b.x, 638f, var_0.b.x))))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b.x - 148f), var_0.b.x)), -412f, _wgslsmith_f_op_f32(f32(-1f) * -1062f), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b.x, -1035f, var_0.b.x, var_0.b.x))), Struct_2(Struct_1(var_0.b, u_input.b.x, var_0.b.x, -2147483647i), -1i, u_input.a, vec2<bool>(false, false)))).x), true)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.b), u_input.b.x, var_0.b.x, var_0.a.x), -59740i, u_input.a, vec2<bool>(true, true)))).x;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(var_0.b - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b.x, -854f, var_0.b.x))))) + var_0.b)));
    var_1 = var_0.b.x;
    return Struct_1(var_2, u_input.b.x, 1357f, var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(), 1450i, firstLeadingBit(~2147483647i), !select(vec2<bool>(true, false), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), true));
    var_0 = Struct_2(func_1(), -_wgslsmith_div_i32(~(~41632i), 0i & select(-78364i, var_0.b, var_0.d.x)), 1i, vec2<bool>(any(!(!vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x))), var_0.d.x));
    var var_1 = Struct_2(func_1(), _wgslsmith_sub_i32(var_0.b, 35329i), -35849i, select(var_0.d, var_0.d, var_0.d.x));
    var var_2 = var_1.a.a.xz;
    var var_3 = vec4<bool>(false, var_1.d.x, var_0.d.x, all(var_1.d));
    var_0 = Struct_2(func_1(), i32(-1i) * -2147483647i, countOneBits(u_input.a), select(!var_1.d, var_1.d, false));
    var var_4 = vec4<bool>(any(!select(vec2<bool>(var_1.d.x, true), !var_3.xx, !var_3.x)), false, !(any(var_3.wx) != true), (i32(-1i) * -func_1().d) <= -1i);
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a.a), var_1.a.b & _wgslsmith_clamp_u32(~81949u, _wgslsmith_sub_u32(17945u, 1u), ~0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -357f))) - 1566f), func_1().d), i32(-1i) * -_wgslsmith_div_i32(1i, u_input.a), 25274i, var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c) + _wgslsmith_f_op_f32(round(func_1().a.x))), 545f), (u_input.a ^ min(_wgslsmith_add_i32(0i, 1i), countOneBits(2147483647i))) >> (6022u % 32u), func_1().b, ~u_input.b.xyx);
}

