struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    global0 = _wgslsmith_mod_i32(2147483647i, -25406i);
    var var_0 = -u_input.e.zx;
    global0 = firstTrailingBit(1i);
    let var_1 = Struct_1(1u);
    let var_2 = _wgslsmith_mod_i32(47328i, var_0.x);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + -2192f)))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-556f))))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-146f, -325f, 2737f, -2452f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(431f, 179f, 471f, -1390f))))), _wgslsmith_f_op_f32(min(1194f, 915f)), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 965f, -550f, -1172f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(814f, -762f, -404f, -455f), vec4<f32>(1511f, 318f, 131f, -1537f), true)))))));
    var var_1 = u_input.d;
    global0 = 1i;
    let var_2 = var_0.x;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, 144f)) * _wgslsmith_div_f32(-1000f, 1298f)), _wgslsmith_f_op_f32(f32(-1f) * -953f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) + _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -464f, var_0.x) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(3103f, 157f, 1000f, -932f)))))), !any(vec2<bool>(true, false)))));
    return Struct_2(vec3<bool>(any(vec2<bool>(false, false)), true, select(!(100f <= var_0.x), true, all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)))), firstTrailingBit(u_input.d));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: u32) -> Struct_2 {
    let var_0 = ~(~(~firstTrailingBit(~vec2<u32>(arg_2, 4294967295u))));
    var var_1 = func_2();
    var_1 = func_2();
    let var_2 = func_2().a.x;
    let var_3 = vec3<i32>(-_wgslsmith_mult_i32(u_input.c, u_input.b), select(254i, -1i, ~arg_2 != var_0.x), firstTrailingBit(reverseBits(~u_input.c))) & vec3<i32>(21010i, _wgslsmith_mult_i32(29498i, u_input.a), _wgslsmith_mod_i32((2147483647i << (u_input.d % 32u)) | (-30121i << (var_1.b % 32u)), u_input.b));
    return Struct_2(vec3<bool>(select(false, arg_0.x, _wgslsmith_f_op_f32(trunc(973f)) >= 1000f), true, arg_0.x), ~18749u);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1269f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(428f + 192f), _wgslsmith_f_op_f32(min(-1000f, -120f)), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2724f))))));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1987f + var_0.x)), -472f, -321f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1104f, var_0.x, var_0.x, -733f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(775f, 383f, -128f, 1000f) * vec4<f32>(-271f, -1853f, -826f, -114f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1265f, var_0.x, var_0.x) + vec4<f32>(1129f, var_0.x, var_0.x, -905f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), 1101f, _wgslsmith_f_op_f32(-765f - var_0.x), _wgslsmith_f_op_f32(var_0.x * var_0.x)) * vec4<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(step(1199f, var_0.x)), var_0.x))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-139f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * 396f) * var_0.x), _wgslsmith_f_op_f32(trunc(208f))));
    let var_2 = 0i;
    var var_3 = var_1.x;
    return Struct_1(func_2().b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false))), vec4<bool>(true, true, any(vec4<bool>(false, true, true, true)), true), vec4<bool>(all(vec4<bool>(true, false, true, true)), true, any(vec2<bool>(false, true)), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-424f, 406f)), 53844u));
    var var_1 = false;
    let var_2 = Struct_2(vec3<bool>(~(~2270u) <= _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, 1u, 4294967295u), vec3<u32>(4294967295u, 32972u, 17473u)), true, func_1(vec4<bool>(true, any(vec2<bool>(true, false)), true, u_input.d < u_input.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-204f, -1000f) + vec2<f32>(-192f, -881f))), 1u).a.x), u_input.d);
    global0 = -u_input.e.x;
    let var_3 = var_0;
    var var_4 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_2.b, 53273u), ~_wgslsmith_add_u32(0u, var_3.a)));
    var_4 = func_4(Struct_2(!vec3<bool>(true, var_2.a.x, true), var_2.b));
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, ~(~(~func_2().b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-526f, 1863f), vec2<f32>(-469f, 625f)), vec2<f32>(1091f, -1097f), var_5.a.xx))) * vec2<f32>(-397f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-182f)))))));
}

