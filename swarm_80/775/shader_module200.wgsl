struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(15058u), Struct_2(48939u), Struct_2(47019u), Struct_2(41371u), Struct_2(4294967295u), Struct_2(72934u), Struct_2(8813u), Struct_2(0u), Struct_2(111200u), Struct_2(38489u), Struct_2(15674u));

var<private> global1: array<vec3<bool>, 29>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    global0 = array<Struct_2, 11>();
    var var_0 = Struct_1(-4894i, reverseBits(arg_0.a), !(any(vec2<bool>(true, false)) | !select(true, false, true)));
    global1 = array<vec3<bool>, 29>();
    let var_1 = Struct_1(~var_0.a, 23701u, any(vec2<bool>(var_0.c, true)));
    var_0 = var_1;
    return _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2190f - 288f), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(ceil(-1000f))))), 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(516f, -1085f))), -222f)));
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = ~24004u;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_2(~(~u_input.b)))));
    var var_2 = u_input.d;
    var var_3 = Struct_1(_wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, var_2.x, 1i) | vec3<i32>(-1i, 19820i, u_input.d.x), select(vec3<i32>(u_input.a, 17316i, 23189i), vec3<i32>(1i, var_2.x, -27720i), vec3<bool>(false, true, false)))), reverseBits(-vec3<i32>(arg_0, 48721i, var_2.x)) | vec3<i32>(2147483647i, arg_0, -22708i)), _wgslsmith_mod_u32(_wgslsmith_div_u32(20700u, _wgslsmith_dot_vec2_u32(vec2<u32>(22452u, u_input.b), abs(vec2<u32>(u_input.c, 0u)))), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(17181u, var_0, var_0)), _wgslsmith_mod_vec3_u32(vec3<u32>(12080u, u_input.c, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 37970u, u_input.c), vec3<u32>(4294967295u, 89039u, 22406u))))), !(any(vec3<bool>(true, true, true)) & false));
    global0 = array<Struct_2, 11>();
    return any(select(!select(vec2<bool>(var_3.c, true), vec2<bool>(var_3.c, var_3.c), all(vec4<bool>(var_3.c, var_3.c, true, true))), vec2<bool>(0i < ~arg_0, select(false, var_3.c, !var_3.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(926f, var_1.x) + _wgslsmith_f_op_f32(-var_1.x)) <= 1701f));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<bool>) -> f32 {
    global1 = array<vec3<bool>, 29>();
    var var_0 = global0[_wgslsmith_index_u32(~u_input.c, 11u)];
    let var_1 = Struct_2(countOneBits(6105u));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(990f * arg_0.x), _wgslsmith_f_op_f32(sign(arg_0.x)), func_2(15473i))), arg_0.x, _wgslsmith_f_op_f32(abs(-1000f))) + vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(492f - _wgslsmith_div_f32(692f, -1119f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(global0[_wgslsmith_index_u32(1u, 11u)])).x)), arg_0.x))));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.x, -721f))), var_2.x) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -430f), _wgslsmith_div_f32(-1000f, var_2.x), arg_0.x, -1438f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(step(1000f, -367f)), -1212f, var_2.x)), _wgslsmith_f_op_vec4_f32(-arg_0)));
    return _wgslsmith_div_f32(arg_0.x, -1484f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1685f + -263f) - -1500f), _wgslsmith_f_op_f32(max(-1475f, _wgslsmith_f_op_f32(1000f * 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(544f * -1735f) + -1000f), _wgslsmith_f_op_f32(func_1(vec4<f32>(1031f, 2420f, 383f, 101f), 0i, vec2<bool>(true, true)))))));
    let var_1 = u_input.b;
    let var_2 = -firstLeadingBit(select(vec2<i32>(_wgslsmith_sub_i32(u_input.d.x, u_input.d.x), ~u_input.d.x), _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(u_input.d.x, u_input.a)), select(u_input.d, vec2<i32>(-6439i, -35194i), vec2<bool>(false, false))), true));
    let var_3 = global0[_wgslsmith_index_u32(0u, 11u)];
    let var_4 = Struct_1(-2147483647i, 1u, true);
    var var_5 = 1u;
    let var_6 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + _wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(var_0.x, -1189f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-127f, _wgslsmith_f_op_vec2_f32(func_3(Struct_2(var_1))).x)), 1057f)));
    global1 = array<vec3<bool>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0, firstTrailingBit(~(70656u | var_3.a) | ~_wgslsmith_mult_u32(var_4.b, var_4.b)), min(23452u, countOneBits(106628u)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1533f + var_6.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_6.x))))));
}

