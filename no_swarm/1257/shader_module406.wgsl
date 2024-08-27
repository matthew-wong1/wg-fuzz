struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(2147483647i, -1i, 19043i, 2147483647i, 0i, 5463i, i32(-2147483648), 5094i, 7937i, 1i, 30805i, -28515i, -9256i, -20295i, -1i, 1i, 10255i, 0i, 883i, 9582i, -10880i, -30587i, 0i, 17032i);

var<private> global1: array<vec2<bool>, 15>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec4<u32>) -> u32 {
    let var_0 = Struct_3(true, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(527f, 492f, -742f)))))), vec2<u32>(~max(1u, arg_2.x), arg_2.x) << (arg_2.ww % vec2<u32>(32u)));
    var var_1 = -778f;
    let var_2 = Struct_4(1490f, -16346i, var_0);
    global1 = array<vec2<bool>, 15>();
    var var_3 = var_0.c.x << (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_2, ~firstLeadingBit(vec4<u32>(var_2.c.c.x, 4294967295u, var_0.c.x, arg_2.x))), abs(~arg_2 >> ((arg_2 ^ vec4<u32>(u_input.a, var_0.c.x, arg_2.x, 1u)) % vec4<u32>(32u)))) % 32u);
    return arg_2.x;
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    let var_0 = 22290u;
    global1 = array<vec2<bool>, 15>();
    global1 = array<vec2<bool>, 15>();
    let var_1 = Struct_3(~func_3(_wgslsmith_add_i32(17005i, global0[_wgslsmith_index_u32(0u, 24u)]), _wgslsmith_mod_i32(2147483647i, 38760i), ~vec4<u32>(u_input.a, var_0, arg_0.a.d.x, u_input.a)) < max(var_0, ~4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1022f, arg_0.a.c, -1103f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.c, 514f, 834f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.a.c, 1443f, -573f))))))), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0 ^ 40083u, var_0), ~vec2<u32>(5522u, 68888u) | abs(vec2<u32>(3413u, arg_0.a.a)), abs(_wgslsmith_mult_vec2_u32(arg_0.a.d.ww, vec2<u32>(94910u, u_input.a)))) & arg_0.a.d.xx);
    let var_2 = Struct_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.c + -604f)))), firstLeadingBit(~abs(reverseBits(global0[_wgslsmith_index_u32(20271u, 24u)]))), Struct_3(true, var_1.b, ~_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(arg_0.a.d.xy, var_1.c), var_1.c, vec2<u32>(0u, var_0))));
    return Struct_3(true, _wgslsmith_f_op_vec3_f32(var_1.b - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b), var_1.b)), abs(vec2<u32>(~0u, countOneBits(36456u))));
}

fn func_1() -> f32 {
    var var_0 = func_2(Struct_2(Struct_1(~(~u_input.b), true, 1460f, abs(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)))));
    global1 = array<vec2<bool>, 15>();
    var var_1 = vec2<i32>(global0[_wgslsmith_index_u32(var_0.c.x, 24u)], global0[_wgslsmith_index_u32(0u, 24u)]);
    var var_2 = all(select(!global1[_wgslsmith_index_u32(func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_1.x), vec3<i32>(var_1.x, 0i, global0[_wgslsmith_index_u32(var_0.c.x, 24u)])), -1i, vec4<u32>(var_0.c.x, u_input.a, 55564u, 15683u)), 15u)], !(!global1[_wgslsmith_index_u32(~u_input.a, 15u)]), true));
    let var_3 = -select(vec3<i32>(0i, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(u_input.a), u_input.a), 24u)], 1i), _wgslsmith_div_vec3_i32(max(vec3<i32>(-22048i, var_1.x, 1i), countOneBits(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.a, 24u)], var_1.x))), vec3<i32>(-46447i, -51562i, global0[_wgslsmith_index_u32(26963u, 24u)]) & vec3<i32>(0i, 134i, 2147483647i)), true);
    return _wgslsmith_f_op_f32(round(1577f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    var var_0 = vec4<f32>(-748f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-344f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2100f + 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -541f), _wgslsmith_f_op_f32(abs(-1000f)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -540f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(279f + var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 332f))))));
    let var_2 = var_1.zxw;
    let var_3 = u_input.a;
    let var_4 = vec4<bool>(any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true)))), var_3 > var_3, select(u_input.a <= min(1u, max(15191u, var_3)), false, true), u_input.a >= u_input.b);
    var var_5 = select(select(_wgslsmith_sub_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b, var_3, var_3), vec4<u32>(var_3, var_3, var_3, u_input.a), vec4<u32>(u_input.b, u_input.b, u_input.a, 0u))), vec4<u32>(_wgslsmith_mod_u32(var_3, 1u), firstTrailingBit(75922u), ~u_input.a, var_3)), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, 28526u, 4294967295u, u_input.b), ~vec4<u32>(1u, u_input.b, u_input.b, u_input.b)), false), max(min(firstTrailingBit(max(vec4<u32>(var_3, var_3, var_3, 4294967295u), vec4<u32>(22110u, var_3, 34482u, 0u))), vec4<u32>(0u, func_3(13219i, 0i, vec4<u32>(0u, u_input.b, 47992u, u_input.b)), 14110u & u_input.a, 1u & var_3)), reverseBits(vec4<u32>(select(u_input.a, 0u, var_4.x), 70171u, u_input.b ^ 0u, u_input.b))), vec4<bool>(var_4.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-11095i, global0[_wgslsmith_index_u32(u_input.a, 24u)]), -vec2<i32>(17581i, 0i)) >= 11397i, var_2.x <= -434f, any(select(var_4.zz, vec2<bool>(true, true), vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 24u)], var_2.x);
}

