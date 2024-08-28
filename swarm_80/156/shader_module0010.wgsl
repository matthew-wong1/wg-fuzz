struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(489f, -1000f, -2016f, 457f, 1016f, -991f, -1297f, -1670f, 1175f, 899f, 370f, -1894f, -989f, -662f, 1013f, 267f, 579f, 619f, 1885f, 496f, -604f, 1775f);

var<private> global1: Struct_1 = Struct_1(759f, 0u);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32, arg_1: u32) -> bool {
    global0 = array<f32, 22>();
    global1 = Struct_1(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(5053u, 22u)])), reverseBits(_wgslsmith_dot_vec2_u32(min(u_input.a, u_input.a >> (u_input.a % vec2<u32>(32u))), countOneBits(u_input.a))));
    global0 = array<f32, 22>();
    var var_0 = any(!vec4<bool>(true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), true, (8161u & u_input.a.x) != ~15832u));
    global1 = Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a)), 22u)] - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 22u)] - -519f) + _wgslsmith_f_op_f32(min(-413f, -1201f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))))), ~(~global1.b));
    return _wgslsmith_f_op_f32(-1598f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.a * 126f)))))) > _wgslsmith_f_op_f32(global1.a * -1055f);
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    var var_0 = select(vec2<bool>(func_3(-2147483647i, ~arg_0.x) || true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), vec2<bool>(true, true), true), vec2<bool>(any(vec2<bool>(true, true)), func_3(25031i, firstTrailingBit(84850u))));
    var var_1 = Struct_1(global1.a, select(_wgslsmith_sub_u32(20825u, global1.b | ~30558u), 4294967295u, true));
    var var_2 = vec2<bool>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(abs(33404i), 1i), _wgslsmith_clamp_i32(1i, -7811i, -68158i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 86101u, global1.b, arg_0.x), vec4<u32>(0u, var_1.b, global1.b, u_input.a.x)) % 32u)) < 1i, select(true, func_3(1i, ~48290u) | var_0.x, true));
    let var_3 = 281f;
    global1 = Struct_1(-1402f, global1.b);
    return var_1.b;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(479f - 824f)), func_2(reverseBits(~vec3<u32>(arg_0, arg_0, 25489u) | abs(vec3<u32>(11220u, arg_0, 25970u)))));
    var var_1 = arg_2;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(-1182f)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~arg_2, reverseBits(41078u), 4294967295u), max(vec3<u32>(arg_0, 6109u, 4294967295u), vec3<u32>(global1.b, 64900u, 37341u) << (vec3<u32>(u_input.a.x, var_0.b, 69090u) % vec3<u32>(32u)))), _wgslsmith_mult_u32(arg_0, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, arg_0, 0u), vec3<u32>(1u, 51978u, arg_2)))));
    var var_3 = _wgslsmith_f_op_f32(abs(var_2.a));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0, 22u)]))))));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global1 = arg_1;
    var var_0 = Struct_2(select(select(vec3<bool>(true, all(vec4<bool>(false, false, false, false)), true), vec3<bool>(true, true, 1111f < global0[_wgslsmith_index_u32(u_input.a.x, 22u)]), all(vec2<bool>(true, true))), vec3<bool>(select(true, true, 0u == arg_0.b), select(true, any(vec3<bool>(false, false, false)), any(vec4<bool>(false, false, false, false))), true), all(vec4<bool>(false, false, false, true)) || !func_3(102415i, global1.b)));
    var var_1 = Struct_2(vec3<bool>(select(any(var_0.a), var_0.a.x, true), all(vec2<bool>(true, true)), var_0.a.x));
    global1 = arg_1;
    let var_2 = 290f;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.a))), ~25773u);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global0 = array<f32, 22>();
    var var_0 = firstTrailingBit(firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(abs(vec3<i32>(0i, 1i, -20535i)), min(vec3<i32>(1i, -15009i, 18048i), vec3<i32>(-2147483647i, -15193i, -2147483647i))), -(~vec3<i32>(1i, -1i, 33064i)))));
    var var_1 = Struct_2(vec3<bool>(true, true, func_3(countOneBits(_wgslsmith_div_i32(1i, 1020i)), (arg_2 << (10774u % 32u)) | 4294967295u)));
    global0 = array<f32, 22>();
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(global1.a, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.a, -536f))) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a, global1.a), vec2<f32>(-150f, global0[_wgslsmith_index_u32(u_input.a.x, 22u)]))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-910f, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], arg_1.a))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-853f, -458f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_1.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1330f, -505f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0[_wgslsmith_index_u32(61926u, 22u)], -1096f), vec2<f32>(665f, 395f)))), true)), true))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(_wgslsmith_f_op_f32(f32(-1f) * -1000f), func_4(func_1(0u, ~16189i, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global1.b, 4294967295u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, global1.b)), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 1u))), func_1(u_input.a.x, -1i, 49962u), 1u), func_2(vec3<u32>(~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(global1.b, u_input.a.x)), abs(4294967295u), global1.b)));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(356f, global1.a, global0[_wgslsmith_index_u32(global1.b, 22u)])))))));
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-842f, -538f, -1132f) + vec3<f32>(var_0.x, global0[_wgslsmith_index_u32(4294967295u, 22u)], 1351f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 22u)], -452f) - vec3<f32>(-357f, -1926f, -282f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 281f, 177f))) + vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 18754u), 22u)], _wgslsmith_f_op_f32(-423f - global0[_wgslsmith_index_u32(0u, 22u)]), -746f)))));
    var var_1 = Struct_2(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true)), vec3<bool>(false, true, true), !select(false, true, false)));
    var var_2 = global0[_wgslsmith_index_u32(1u, 22u)];
    var var_3 = ~50374u & u_input.a.x;
    var var_4 = i32(-1i) * -_wgslsmith_div_i32(10750i, min(_wgslsmith_dot_vec2_i32(vec2<i32>(48573i, 0i), vec2<i32>(-5389i, -804i)), -23911i));
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1512f)), 1029f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1459f)));
    var var_5 = 173f;
    let x = u_input.a;
    s_output = StorageBuffer(~select(~u_input.a, _wgslsmith_mod_vec2_u32(u_input.a, _wgslsmith_sub_vec2_u32(u_input.a, u_input.a)), false));
}

