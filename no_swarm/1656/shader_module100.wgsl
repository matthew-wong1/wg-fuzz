struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(-309f, 393f), -1483f), vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), -1999f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-270f - 546f), _wgslsmith_f_op_f32(round(1674f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(638f, -646f)), _wgslsmith_div_vec2_f32(vec2<f32>(-100f, -1028f), vec2<f32>(223f, -1274f)))))));
    global0 = array<Struct_1, 2>();
    var var_1 = global0[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(arg_1.x, ~57860u ^ max(arg_1.x, arg_1.x))), 2u)];
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(1349f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -185f), _wgslsmith_f_op_f32(var_0.x - var_0.x), true))))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec4<bool>(arg_0.a, all(vec3<bool>(!arg_0.a, true, arg_0.a)), !(!arg_0.b.x), !(-485f != _wgslsmith_f_op_f32(func_3(vec2<u32>(1u, 1u), ~vec3<u32>(45602u, 10925u, 4294967295u)))));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-493f, -1178f) * vec2<f32>(2679f, -1211f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-351f, 2006f) + vec2<f32>(-629f, -1216f)))))));
    let var_3 = select(!any(select(arg_0.b, !vec2<bool>(arg_0.a, false), arg_0.a)), !var_1.a, !(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.x))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<u32>(1u, 41392u), vec3<u32>(0u, 31501u, 0u))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(756f, var_2.x, 442f) * vec3<f32>(1729f, 241f, -576f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_2.x))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1245f, 1309f, 1000f) - vec3<f32>(541f, var_2.x, 303f)))))));
    return Struct_1(all(var_0), vec2<bool>(!any(!vec3<bool>(var_0.x, true, var_1.b.x)), !arg_0.b.x), var_1.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> i32 {
    let var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.b, ~u_input.b ^ select(32569u, u_input.b, true)), countOneBits(4294967295u)), ~vec2<u32>(u_input.b, 4294967295u));
    let var_1 = _wgslsmith_sub_vec3_u32(~max(firstLeadingBit(vec3<u32>(0u, var_0.x, 0u)), ~vec3<u32>(4294967295u, 83455u, var_0.x)), vec3<u32>(0u, u_input.b, _wgslsmith_div_u32(var_0.x >> (~u_input.b % 32u), u_input.b)));
    global0 = array<Struct_1, 2>();
    var var_2 = vec3<bool>(all(vec4<bool>(false, true, true, arg_1.a)), func_2(arg_1).a, !select(select(false, false, true), !arg_1.a, true) | (4294967295u < _wgslsmith_div_u32(var_1.x, firstTrailingBit(u_input.b))));
    global0 = array<Struct_1, 2>();
    return 2147483647i;
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<bool>(true | ((30189i & abs(u_input.a.x)) >= -36344i), _wgslsmith_div_i32(abs(-2147483647i), func_4(func_2(Struct_1(false, vec2<bool>(true, false), vec3<i32>(1i, u_input.a.x, u_input.a.x))), func_2(global0[_wgslsmith_index_u32(u_input.b, 2u)]), _wgslsmith_f_op_f32(abs(-813f)))) > u_input.a.x, select(!select(true, true, all(vec4<bool>(false, true, true, false))), _wgslsmith_f_op_f32(step(-238f, 1407f)) <= _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(342f))), true));
    var_0 = !(!(!(!select(vec3<bool>(true, true, var_0.x), vec3<bool>(true, var_0.x, true), var_0.x))));
    var var_1 = global0[_wgslsmith_index_u32(~29967u, 2u)];
    let var_2 = global0[_wgslsmith_index_u32(16776u, 2u)];
    var var_3 = u_input.b;
    return global0[_wgslsmith_index_u32(u_input.b, 2u)];
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = all(!vec2<bool>(arg_2.b.x, ~u_input.b > ~arg_1.x));
    let var_1 = func_1();
    global0 = array<Struct_1, 2>();
    var_0 = all(vec4<bool>(true, true, arg_2.a, arg_3.b.x));
    var var_2 = _wgslsmith_f_op_f32(-1708f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-431f - -1290f) * _wgslsmith_f_op_f32(round(1299f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1763f), -1332f))));
    return func_2(var_1);
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(319f, -765f) + vec2<f32>(1271f, -857f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1774f, 216f), vec2<f32>(830f, 1000f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(584f, -885f), vec2<f32>(574f, -1218f), true))))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1292f, -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<u32>(1u, u_input.b), vec3<u32>(21194u, 22220u, 14592u))) - _wgslsmith_f_op_f32(-1330f * 1452f)))) + vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(119f, _wgslsmith_f_op_f32(step(278f, -266f)))))), -880f));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x)))) - var_0.x);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 26810u, 33534u, u_input.b), vec4<u32>(4294967295u, u_input.b, 0u, u_input.b), vec4<u32>(u_input.b, 4294967295u, 1u, u_input.b)) | vec4<u32>(51306u, u_input.b, 1u, 50673u))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1831f * 211f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-159f + 1000f) - _wgslsmith_f_op_f32(f32(-1f) * -263f)), -674f)))));
    var var_2 = reverseBits(u_input.b);
    var var_3 = func_6(func_5(max(abs(-vec4<i32>(-1i, -2147483647i, -1i, 34541i)), vec4<i32>(u_input.a.x, u_input.a.x, 54092i, u_input.a.x) >> (~vec4<u32>(var_0.x, 0u, 47084u, var_0.x) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_mult_u32(var_0.x, 1u), u_input.b, 4294967295u, _wgslsmith_clamp_u32(u_input.b, _wgslsmith_div_u32(var_0.x, 0u), 1u)), Struct_1(true, select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, false)), vec3<i32>(-1i, ~u_input.a.x, -13525i)), func_1()));
    let var_4 = _wgslsmith_f_op_f32(sign(-466f));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, vec3<i32>(u_input.a.x, ~(~2147483647i >> (0u % 32u)), -21207i), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(var_0, var_0) & select(7337u, 1u, var_3.b.x), var_0.x, ~(1u & u_input.b)), abs(select(var_0.zww, ~vec3<u32>(var_0.x, var_0.x, u_input.b), select(vec3<bool>(false, var_3.a, var_3.a), vec3<bool>(true, false, false), false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2285f, var_4, var_4) + vec3<f32>(-1000f, 1888f, var_4)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_4, var_4, var_4))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(1278f, var_4, true)), _wgslsmith_div_f32(var_4, 1106f), var_4) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_4, var_4, 252f)))))));
}

