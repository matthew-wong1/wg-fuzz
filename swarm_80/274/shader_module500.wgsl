struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(-1000f), Struct_1(980f), Struct_1(-1866f), Struct_1(-204f), Struct_1(-1084f), Struct_1(-807f), Struct_1(453f), Struct_1(-1602f), Struct_1(1027f), Struct_1(1000f), Struct_1(139f), Struct_1(1000f), Struct_1(1347f), Struct_1(-189f), Struct_1(-157f), Struct_1(-270f), Struct_1(-688f), Struct_1(186f), Struct_1(397f), Struct_1(-285f), Struct_1(-150f), Struct_1(831f), Struct_1(2469f), Struct_1(1117f), Struct_1(271f), Struct_1(-2211f), Struct_1(-397f));

var<private> global2: array<Struct_1, 21>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    global2 = array<Struct_1, 21>();
    global2 = array<Struct_1, 21>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(989f, -197f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1446f)) + -1355f));
    var var_1 = u_input.b.x;
    var var_2 = 2147483647i;
    return true;
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> f32 {
    global2 = array<Struct_1, 21>();
    var var_0 = u_input.a.x;
    let var_1 = !vec3<bool>(select(arg_1, !func_3(), arg_1), true, any(vec4<bool>(true, u_input.b.x > 44514u, true, 51249u <= u_input.a.x)));
    let var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2278f * arg_2.a)))), arg_0.x, -108f, -709f), !vec4<bool>(true, select(arg_1, any(var_1), var_1.x), _wgslsmith_mod_i32(arg_3, arg_3) >= -2147483647i, var_1.x), vec4<u32>(reverseBits(1u), 0u, 6047u, 33477u));
    let var_3 = (abs(1u) & u_input.a.x) & u_input.a.x;
    return _wgslsmith_f_op_f32(-var_2.a.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_2, arg_3: vec3<u32>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_2.a.yy, true, Struct_1(arg_2.a.x), select(4636i, -arg_1, arg_0.x != 305f))) + arg_0.x)));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.zx - arg_0.yz) - _wgslsmith_f_op_vec2_f32(-arg_0.zy)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-404f * -544f), arg_2.a.x, arg_0.x, arg_2.a.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_2.a + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.a.x, arg_2.a.x, arg_0.x, -954f)))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1003f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -334f))))), -(~vec4<i32>(arg_1, abs(-2147483647i), arg_1, -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-396f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1029f, -831f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1895f - -1205f))))), -reverseBits(_wgslsmith_sub_i32(reverseBits(32643i), _wgslsmith_mod_i32(-9280i, -7856i))), Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(363f, 1205f, 557f, 283f) * vec4<f32>(-729f, 1452f, -1600f, 929f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 384f, -720f, 736f) * vec4<f32>(838f, -1475f, -648f, 821f)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)))))), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), false)), ~_wgslsmith_mult_vec4_u32(select(vec4<u32>(0u, u_input.a.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.a.x, 1539u, 4294967295u, 4294967295u), false), vec4<u32>(5008u, 74814u, 0u, u_input.b.x))), u_input.b);
}

