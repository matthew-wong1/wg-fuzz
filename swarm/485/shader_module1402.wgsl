struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    let var_0 = Struct_1(vec3<bool>(all(select(vec3<bool>(arg_0.x, arg_0.x, false), select(vec3<bool>(arg_0.x, false, false), vec3<bool>(false, true, true), true), u_input.b.x == u_input.b.x)), !select(true, false && arg_0.x, false), false), -1630f);
    var var_1 = ~102913u;
    let var_2 = var_0.a;
    var_1 = u_input.b.x;
    let var_3 = Struct_1(vec3<bool>(any(!vec2<bool>(var_2.x, var_2.x)) | arg_0.x, !var_0.a.x, false), var_0.b);
    return 2175f;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.a.xz))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_0.b)), arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + 677f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(round(arg_0.b))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -1620f) + vec3<f32>(-1000f, 697f, arg_1)) + vec3<f32>(1612f, -1382f, arg_0.b)))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1218f, arg_0.b, _wgslsmith_f_op_f32(sign(883f)))))));
    var var_1 = arg_0.a.xx;
    var_1 = !select(arg_0.a.yx, vec2<bool>(all(arg_0.a), !select(false, true, false)), !(!select(arg_0.a.xx, vec2<bool>(var_1.x, false), var_1.x)));
    var_1 = arg_0.a.yx;
    var_1 = select(select(vec2<bool>(arg_0.a.x, any(vec4<bool>(true, true, true, true))), select(vec2<bool>(true, any(vec4<bool>(false, false, false, false))), !arg_0.a.zz, (false | var_1.x) == true), select(vec2<bool>(false, all(vec4<bool>(true, arg_0.a.x, true, false))), !arg_0.a.yz, !vec2<bool>(true, arg_0.a.x))), !(!(!(!arg_0.a.zy))), arg_0.a.zy);
    return arg_0.b;
}

fn func_1() -> f32 {
    let var_0 = (u_input.a != u_input.a) && true;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(758f, -139f))))));
    var var_2 = -_wgslsmith_sub_vec2_i32(min(firstLeadingBit(reverseBits(vec2<i32>(-49522i, 0i))), vec2<i32>(u_input.a, u_input.c >> (0u % 32u))), _wgslsmith_mult_vec2_i32(vec2<i32>(firstTrailingBit(6247i), -29568i), abs(vec2<i32>(-4015i, 0i))));
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + vec2<f32>(851f, var_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 515f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 670f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec3<bool>(var_0, var_0, var_0), var_1.x), _wgslsmith_f_op_f32(-var_1.x)))), var_1.x));
    var var_3 = 0u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(326f * -507f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1()))))), _wgslsmith_f_op_f32(ceil(1114f))));
    var var_1 = !var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(firstTrailingBit(~8555u), _wgslsmith_dot_vec3_u32(vec3<u32>(36037u, 31416u, 3923u), vec3<u32>(u_input.b.x, u_input.b.x, 0u) & vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), _wgslsmith_mult_u32(u_input.b.x, 0u)), _wgslsmith_sub_vec2_u32(~(~vec2<u32>(62574u, 66688u)), _wgslsmith_mult_vec2_u32(u_input.b, (vec2<u32>(0u, u_input.b.x) | u_input.b) & u_input.b)), ~(~vec3<i32>(-1i, _wgslsmith_sub_i32(u_input.a, u_input.c), u_input.a)), _wgslsmith_div_f32(var_0.b, 870f));
}

