struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1300f;

var<private> global1: u32 = 1u;

var<private> global2: array<Struct_1, 24>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> f32 {
    global1 = _wgslsmith_add_u32(~firstTrailingBit(~u_input.b), abs(u_input.b));
    global1 = 1u;
    var var_0 = arg_0.xw;
    let var_1 = u_input.a.xxz;
    global1 = (~(~1u) >> (_wgslsmith_mult_u32(~u_input.b, u_input.b) % 32u)) | ~38103u;
    return _wgslsmith_f_op_f32(1213f * _wgslsmith_f_op_f32(sign(340f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: bool, arg_3: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(arg_3.zx));
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1200f, -573f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1092f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.xx), arg_3.yz) * arg_3.yx), arg_2));
    global2 = array<Struct_1, 24>();
    var var_1 = Struct_1(2147483647i <= _wgslsmith_add_i32(~(-u_input.a.x), u_input.a.x), u_input.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_3.x), var_0.x, var_0.x) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_3 * arg_3)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x - -526f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(true, arg_2, false, true), arg_2))), -737f)), _wgslsmith_div_f32(arg_1, var_0.x), 1u);
    global0 = arg_1;
    return _wgslsmith_f_op_f32(select(485f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -477f))), arg_2));
}

fn func_1() -> f32 {
    let var_0 = !(!vec4<bool>(all(vec2<bool>(true, true)), true, true, true));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(828f, 1010f, 1219f) + vec3<f32>(936f, -218f, 244f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(func_2(vec4<bool>(true, var_0.x, false, true), var_0.x)), -154f, _wgslsmith_f_op_f32(f32(-1f) * -444f)))), true)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-450f + -630f), _wgslsmith_div_f32(-817f, _wgslsmith_f_op_f32(min(1914f, 1001f))), _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(1u, 38649u, 4294967295u)), -143f, any(vec4<bool>(false, false, false, true)), vec3<f32>(-1179f, -507f, -1704f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    global0 = var_1.x;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -483f))));
    global2 = array<Struct_1, 24>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(-1828f, 579f))) * var_1.x) + _wgslsmith_f_op_f32(func_2(!var_0, var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global2 = array<Struct_1, 24>();
    var var_1 = vec4<f32>(-100f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(143f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1872f)))), _wgslsmith_f_op_f32(select(-1000f, -330f, false))), _wgslsmith_f_op_f32(f32(-1f) * -865f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * -367f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-320f)) + _wgslsmith_f_op_f32(-1028f + -151f)))));
    let var_2 = ~0i;
    var var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_1.zz), ~vec3<u32>(u_input.b, 1u, u_input.b), countOneBits(var_2), _wgslsmith_add_i32(countOneBits(var_2), _wgslsmith_add_i32(-var_2, firstLeadingBit(27026i) & (2147483647i << (u_input.b % 32u)))), select(vec4<u32>((u_input.b << (u_input.b % 32u)) & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 11772u, u_input.b), vec3<u32>(51000u, 11361u, u_input.b)), ~_wgslsmith_mult_u32(9542u, 82410u), ~0u, u_input.b), firstTrailingBit(~(~vec4<u32>(4294967295u, u_input.b, 0u, u_input.b))), vec4<bool>(true, var_0 | true, false, abs(var_2) <= ~70681i)));
}

