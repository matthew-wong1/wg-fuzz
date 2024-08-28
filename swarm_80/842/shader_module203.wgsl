struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 18>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> vec2<u32> {
    var var_0 = Struct_1(abs(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.c.x, ~arg_0), -1i)), ~u_input.d.x, select(25209i, arg_0, !(-1223f >= _wgslsmith_f_op_f32(round(arg_1.x)))), ~u_input.c.x);
    return u_input.e;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = func_2(firstTrailingBit(u_input.c.x), vec2<f32>(1f, 1f));
    let var_1 = Struct_1(1i, _wgslsmith_div_u32(0u, var_0.x), max(u_input.c.x, firstTrailingBit(1i)), -1i ^ arg_0);
    let var_2 = -402f;
    let var_3 = var_2;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_3, var_2, var_3) + vec4<f32>(819f, -277f, var_3, var_2))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(171f, 1556f, var_3, 171f) * vec4<f32>(var_2, 461f, -864f, 1874f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1781f, 814f, var_3, 157f) - vec4<f32>(var_3, -1428f, 360f, var_2))))));
    return var_1;
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = !vec2<bool>(arg_0.x, arg_0.x);
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(min(-1688f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-924f - 474f)))))))));
    global0 = array<vec3<u32>, 18>();
    var_2 = 644f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-147f)) + -666f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 18>();
    global0 = array<vec3<u32>, 18>();
    let var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(297f - -160f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-636f, 2191f)) + _wgslsmith_f_op_f32(func_3(vec4<bool>(true, false, true, false), u_input.a, func_1(-56770i)))))));
    let var_1 = firstLeadingBit(~(~(~vec4<u32>(u_input.d.x, 103799u, 4294967295u, 93468u))) | countOneBits(~vec4<u32>(40307u, 1u, u_input.b, u_input.a) & ~vec4<u32>(32206u, 4298u, 0u, 4294967295u)));
    let var_2 = select(select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, false)), vec2<bool>(true, true)), vec2<bool>(_wgslsmith_div_i32(u_input.c.x, -48386i) < _wgslsmith_mult_i32(-11414i, u_input.c.x), true), !(_wgslsmith_div_f32(1152f, 762f) == _wgslsmith_f_op_f32(-var_0.x))), !select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), false), false), !vec2<bool>(true, all(vec4<bool>(true, true, false, false))));
    global0 = array<vec3<u32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.x, 1538f, var_0.x)) + vec4<f32>(var_0.x, var_0.x, -2284f, -378f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 1444f)))))));
}

