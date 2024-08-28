struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32, arg_3: bool) -> vec3<bool> {
    global0 = true;
    let var_0 = Struct_3(abs(max(vec3<i32>(u_input.c.x, u_input.a.x, u_input.c.x) & u_input.a.yxy, u_input.a.xww) << (vec3<u32>(_wgslsmith_add_u32(u_input.d, arg_2), u_input.d, firstTrailingBit(3732u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), arg_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -601f))), _wgslsmith_f_op_vec3_f32(ceil(arg_0.e)))));
    global0 = false;
    let var_1 = true;
    global0 = all(vec4<bool>(true, true, arg_3, all(!select(vec4<bool>(arg_3, false, false, true), vec4<bool>(arg_0.d.x, arg_0.d.x, var_1, false), vec4<bool>(true, arg_0.d.x, false, true)))));
    return !select(vec3<bool>(true, all(vec4<bool>(false, arg_3, false, true)) || all(arg_0.d), any(!vec3<bool>(false, arg_3, arg_3))), vec3<bool>(arg_3 || (true || arg_0.d.x), arg_0.d.x, all(vec3<bool>(var_1, true, var_1))), true);
}

fn func_1() -> vec3<bool> {
    let var_0 = false;
    global0 = all(!vec3<bool>(all(vec2<bool>(true, var_0)) || true, var_0, true));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(640f, 294f, 1402f, 174f)))), vec4<f32>(_wgslsmith_f_op_f32(round(836f)), -986f, -1182f, _wgslsmith_f_op_f32(-412f + -1193f)))))));
    var var_2 = ~_wgslsmith_add_u32(u_input.d | u_input.d, countOneBits(65518u));
    let var_3 = ~u_input.a.yxw;
    return select(vec3<bool>(true, true, true), func_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(-297f, var_1.x, true)), var_1.x, var_1.x, _wgslsmith_div_f32(var_1.x, var_1.x)), -1000f, vec4<f32>(var_1.x, 1000f, _wgslsmith_f_op_f32(2759f - 1413f), _wgslsmith_f_op_f32(-var_1.x)), select(!vec2<bool>(var_0, false), !vec2<bool>(false, var_0), true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.wzw), vec3<f32>(var_1.x, 350f, var_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.zy + vec2<f32>(var_1.x, var_1.x)) * var_1.wx)), 4294967295u, !var_0), vec3<bool>(var_0, var_0, 1u > u_input.d));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_3(u_input.b, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(374f, 1250f, -871f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-342f, -526f, -182f))), vec3<f32>(_wgslsmith_f_op_f32(-424f * 476f), _wgslsmith_f_op_f32(1000f + 212f), 870f)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_0.b.xy)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-551f, var_0.b.x)), vec2<f32>(1577f, var_0.b.x), true))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(158f, var_0.b.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, 223f)))));
    global0 = false;
    var_0 = Struct_3(_wgslsmith_sub_vec3_i32(var_0.a, firstTrailingBit(firstLeadingBit(vec3<i32>(20041i, 19796i, -1i)))) ^ countOneBits(-(u_input.b << (vec3<u32>(0u, u_input.d, 0u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(select(var_0.b, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.b.x, -845f))), _wgslsmith_f_op_f32(-var_0.b.x), -255f), select(vec3<bool>(true, true, true), vec3<bool>(false, all(vec4<bool>(true, true, true, false)), true), false))));
    let var_2 = func_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x), 159f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -661f))), 560f, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -980f, var_1.x, var_0.b.x) + vec4<f32>(-1513f, var_1.x, -1268f, -1000f)))))), !(!func_1().yy), vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(893f)) - _wgslsmith_f_op_f32(trunc(var_0.b.x))), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(var_0.b.yy)))))))), 58904u, 6504i < countOneBits(_wgslsmith_sub_i32(u_input.c.x, 2147483647i << (u_input.d % 32u)))).x;
    return ~(reverseBits(~vec4<u32>(44635u, 55037u, 42899u, u_input.d)) >> (reverseBits(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d)) % vec4<u32>(32u))) & firstTrailingBit(vec4<u32>(1u, ~9161u, ~(4294967295u >> (u_input.d % 32u)), ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = any(select(func_1(), !func_2(Struct_1(vec4<f32>(1103f, -1600f, -1029f, -422f), 153f, vec4<f32>(-495f, -158f, -544f, -1655f), vec2<bool>(false, false), vec3<f32>(-1654f, 1233f, 1431f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-211f, 1089f)), select(1u, u_input.d, true), true), any(vec2<bool>(true, true))));
    global0 = any(vec4<bool>(all(vec3<bool>(true, true, true)), any(vec2<bool>(true, false)) && true, true, true | any(vec3<bool>(false, false, false))));
    var var_0 = (~vec4<u32>(1u, ~u_input.d, 4294967295u, firstTrailingBit(1u)) & func_3()) | reverseBits(vec4<u32>(4294967295u, ~(~209u), u_input.d, ~_wgslsmith_add_u32(u_input.d, 45903u)));
    var var_1 = _wgslsmith_div_i32(u_input.b.x, ~(-61530i));
    let var_2 = 4294967295u;
    let var_3 = u_input.b.yx;
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<i32>(u_input.c.x, ~(~var_3.x)), vec2<i32>(var_3.x >> (var_2 % 32u), min(var_3.x, -2147483647i)) | abs(var_3)), func_3());
}

