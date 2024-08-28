struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> i32 {
    let var_0 = max(vec4<i32>(-35163i, u_input.c & _wgslsmith_mult_i32(u_input.c ^ u_input.c, ~(-1i)), -30991i, (firstLeadingBit(u_input.c) & _wgslsmith_mult_i32(u_input.c, 2147483647i)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-16434i, u_input.c), vec2<i32>(u_input.c, 2631i) >> (vec2<u32>(0u, 39903u) % vec2<u32>(32u)))), -(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 1i, u_input.c, -3277i), vec4<i32>(2147483647i, 2147483647i, 0i, -20419i)), -18950i, -14662i, u_input.c) & -(vec4<i32>(u_input.c, 30869i, u_input.c, 2147483647i) ^ vec4<i32>(u_input.c, 2147483647i, u_input.c, 11858i))));
    global0 = ~2147483647i;
    var var_1 = arg_1;
    var_1 = Struct_2(arg_1.a, Struct_1(arg_0 & arg_0), Struct_1(arg_0));
    var var_2 = vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x), -438f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1342f * -924f)) - var_1.a.x)), -1430f, var_1.a.x);
    return _wgslsmith_sub_i32((~_wgslsmith_add_i32(2147483647i, var_0.x) ^ (u_input.c ^ _wgslsmith_mod_i32(u_input.c, 44380i))) >> (77927u % 32u), u_input.c);
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(trunc(arg_0)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 162f) - -159f);
    global0 = ~select(i32(-1i) * -2147483647i, ~(-20872i >> (u_input.a.x % 32u)), false) | _wgslsmith_sub_i32(func_3(!var_0, Struct_2(vec2<f32>(arg_0, arg_0), global1[_wgslsmith_index_u32(~1u, 24u)], Struct_1(true))), _wgslsmith_clamp_i32(u_input.c, -1i, _wgslsmith_sub_i32(0i, reverseBits(u_input.c))));
    global1 = array<Struct_1, 24>();
    global1 = array<Struct_1, 24>();
    let var_1 = Struct_1(var_0);
    return Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(-1159f, arg_0)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1389f, arg_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2485f, arg_0), vec2<f32>(arg_0, 435f), true)) * vec2<f32>(arg_0, 1000f)))))), var_1, Struct_1(true));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> bool {
    let var_0 = !vec4<bool>(false, false, any(arg_2.yz), !all(!vec3<bool>(arg_2.x, true, false)));
    var var_1 = func_2(arg_1);
    global1 = array<Struct_1, 24>();
    global1 = array<Struct_1, 24>();
    var var_2 = !var_0.x;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~(~14734u));
    let var_1 = !select(vec2<bool>(false, !func_1(u_input.a, -1000f, vec4<bool>(false, true, true, true), Struct_1(true))), select(vec2<bool>(false, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), !select(vec2<bool>(false, false), vec2<bool>(true, false), false)), false);
    global0 = _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, -31676i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 35969i, 2147483647i), vec3<i32>(u_input.c, u_input.c, u_input.c)), ~u_input.c))) | _wgslsmith_sub_i32(~2147483647i, _wgslsmith_dot_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -36729i), vec2<i32>(-1i, -1i))), firstTrailingBit(firstLeadingBit(vec2<i32>(u_input.c, u_input.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(120f)), _wgslsmith_f_op_f32(2411f * -462f), -359f, _wgslsmith_f_op_f32(-196f - -212f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-336f, -617f, -634f, 1057f), vec4<f32>(358f, -645f, -461f, -1157f), vec4<bool>(var_1.x, false, true, false)))))));
}

