struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18>;

var<private> global1: array<vec4<u32>, 22>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: f32, arg_3: bool) -> vec2<f32> {
    global0 = array<vec2<f32>, 18>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(max(4294967295u, ~34474u), 18u)] * vec2<f32>(-642f, arg_2))), arg_0.x);
    var var_1 = Struct_1(var_0.a, true);
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, u_input.b, 1u), ~reverseBits(_wgslsmith_div_u32(1u, 10095u)));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.x)), _wgslsmith_f_op_f32(-var_1.a.x)))), !(35971u != u_input.a.x));
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(u_input.b, 18u)] - global0[_wgslsmith_index_u32(17939u, 18u)])))))));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~50849u, 17490u, ~(~u_input.a.x)), ~u_input.a.x), 18u)], true);
    var var_1 = firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(~(~(-19828i)), abs(0i), 1i, -_wgslsmith_mult_i32(0i, -22956i)), vec4<i32>(-(i32(-1i) * -24464i), -abs(-4444i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 25706i), vec2<i32>(28128i, 34292i))), ~min(-1i, -39622i))));
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(~u_input.b, 18u)], select(var_1.x, var_1.x, var_0.b) < countOneBits(var_1.x));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -635f)), _wgslsmith_f_op_vec2_f32(max(global0[_wgslsmith_index_u32(~0u, 18u)], var_0.a)), all(select(vec2<bool>(arg_0, true), vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, var_2.b))))) + _wgslsmith_f_op_vec2_f32(-var_2.a)), !var_2.b);
    var var_4 = !(!vec4<bool>(!select(true, var_2.b, true), u_input.b <= u_input.b, any(!vec4<bool>(true, var_3.b, true, true)), !(u_input.a.x <= 0u)));
    return _wgslsmith_dot_vec2_i32(max(vec2<i32>(0i, var_1.x), vec2<i32>(-81148i, -16231i)), var_1.yw);
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> i32 {
    var var_0 = vec2<bool>(true, arg_1 | (70070i <= -func_3(false)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, 106f)) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(~u_input.a.x, 18u)])))), arg_2.b);
    let var_2 = arg_2;
    var_0 = select(vec2<bool>(all(!vec2<bool>(var_0.x, false)), var_0.x), vec2<bool>(arg_1, var_0.x), select(vec2<bool>((arg_0 & arg_0) <= countOneBits(arg_0), false), vec2<bool>(false, arg_2.b), !(!(!vec2<bool>(var_0.x, false)))));
    let var_3 = min(vec4<i32>(arg_0 & _wgslsmith_clamp_i32(-arg_0, ~arg_0, ~(-2147483647i)), arg_0, -arg_0, -arg_0), vec4<i32>(reverseBits(i32(-1i) * -2147483647i), arg_0, _wgslsmith_add_i32(arg_0, arg_0), arg_0));
    return -(~(-31847i));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = -14736i;
    var var_1 = true;
    global0 = array<vec2<f32>, 18>();
    let var_2 = -2147483647i;
    var var_3 = arg_0;
    return Struct_1(_wgslsmith_div_vec2_f32(var_3.a, vec2<f32>(_wgslsmith_f_op_f32(-236f + var_3.a.x), _wgslsmith_f_op_f32(f32(-1f) * -798f))), all(!vec4<bool>(any(vec4<bool>(true, arg_0.b, false, var_3.b)), var_3.b, any(vec3<bool>(var_3.b, true, false)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1000f;
    var var_1 = func_4(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec3<bool>(false, false, false), true, _wgslsmith_f_op_f32(-var_0), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(u_input.b, 18u)]))), 1i != ~func_2(-2147483647i, false, Struct_1(vec2<f32>(var_0, 836f), false))));
    let var_2 = Struct_1(var_1.a, var_1.b);
    global1 = array<vec4<u32>, 22>();
    var var_3 = u_input.b;
    let var_4 = select(max(_wgslsmith_sub_vec2_u32(u_input.a.xy, (u_input.a.yx ^ vec2<u32>(u_input.b, u_input.a.x)) | reverseBits(u_input.a.xx)), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.b), vec2<u32>(0u, 1u)), max(0u, u_input.a.x)), abs(0u))), _wgslsmith_div_vec2_u32(~u_input.a.xx, countOneBits(_wgslsmith_clamp_vec2_u32(min(u_input.a.yx, vec2<u32>(4294967295u, 4294967295u)), ~vec2<u32>(u_input.a.x, u_input.b), vec2<u32>(41524u, 0u)))), vec2<bool>(min(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(u_input.b, 22u)], vec4<u32>(u_input.b, u_input.a.x, 59358u, u_input.b)), _wgslsmith_clamp_u32(u_input.b, u_input.a.x, 45933u)) >= u_input.b, u_input.b != firstTrailingBit(u_input.a.x)));
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1566f, _wgslsmith_f_op_f32(select(-649f, -896f, !var_2.b)), var_1.a.x, _wgslsmith_f_op_f32(1176f - -325f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1485f, 474f, -567f, -359f), vec4<f32>(var_2.a.x, -344f, var_0, -749f), vec4<bool>(var_1.b, var_2.b, var_2.b, var_1.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, -2237f, -705f, -640f)), !vec4<bool>(var_2.b, false, true, var_2.b)))), vec4<bool>(!any(vec2<bool>(true, false)), false, !(var_4.x > u_input.a.x), !var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_vec2_f32(func_1(select(vec3<bool>(true, true, true), !vec3<bool>(true, var_1.b, false), !vec3<bool>(var_2.b, var_1.b, var_2.b)), var_1.b, _wgslsmith_f_op_f32(510f - _wgslsmith_f_op_f32(-var_1.a.x)), true)).x, _wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_f_op_f32(-var_5.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.x, -350f) + 429f))), var_0), u_input.a);
}

