struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = 1365f;
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    let var_1 = Struct_1(select(!select(vec2<bool>(false, arg_0), !vec2<bool>(arg_0, arg_0), false != arg_0), vec2<bool>(arg_0, arg_0), any(!select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, true, arg_0), arg_0))), -301f);
    global0 = array<u32, 16>();
    return Struct_2(var_1.a);
}

fn func_3(arg_0: Struct_2) -> u32 {
    global0 = array<u32, 16>();
    let var_0 = arg_0;
    var var_1 = vec4<u32>(~_wgslsmith_mult_u32(0u, abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)])), _wgslsmith_add_u32(1u, 1u), _wgslsmith_dot_vec3_u32(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 35582u), vec3<u32>(43738u, 38206u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64182u, 16u)], 16u)]))), ~select(vec3<u32>(0u, global0[_wgslsmith_index_u32(60983u, 16u)], 1u), vec3<u32>(24967u, global0[_wgslsmith_index_u32(1u, 16u)], 29882u), vec3<bool>(var_0.a.x, var_0.a.x, true))), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(50569u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(81116u, 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<u32>(4294967295u, 6053u, 1u, 28466u)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52231u, 16u)], 16u)], 16u)])), vec4<u32>(global0[_wgslsmith_index_u32(37001u, 16u)], 12502u, 11549u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)])))) ^ vec4<u32>(global0[_wgslsmith_index_u32(27897u, 16u)], _wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(33248u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58682u, 16u)], 16u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14988u, 16u)], 16u)], 16u)], 16u)])), ~global0[_wgslsmith_index_u32(0u, 16u)], 4294967295u), 0u), global0[_wgslsmith_index_u32(9212u, 16u)], ~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]), ~vec3<u32>(18292u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50872u, 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 16u)], 16u)])));
    var var_2 = Struct_3(_wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(max(u_input.a, -36184i), -45438i), 1i), firstLeadingBit(u_input.d)), Struct_1(arg_0.a, 139f), func_2(var_0.a.x));
    var var_3 = select(0i, u_input.b, var_2.c.a.x);
    return _wgslsmith_dot_vec3_u32(~(~var_1.yzx), (vec3<u32>(var_1.x, firstLeadingBit(9079u), countOneBits(0u)) & ~(~vec3<u32>(var_1.x, 6929u, var_1.x))) & (vec3<u32>(var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 18940u), vec2<u32>(61652u, global0[_wgslsmith_index_u32(0u, 16u)])), 11582u) | ~(var_1.yyx ^ var_1.wxz)));
}

fn func_1(arg_0: Struct_1) -> bool {
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    let var_0 = 4294967295u;
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    return (~func_3(func_2(true)) | ~select(var_0, 0u | var_0, true)) <= countOneBits(_wgslsmith_div_u32(4294967295u, var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec2<bool>(true, true), vec2<bool>(!all(vec3<bool>(false, false, false)), true), vec2<bool>(select(any(vec4<bool>(false, true, true, true)), false, true), any(vec2<bool>(true, false)))), select(select(vec2<bool>(true, true), vec2<bool>(true, select(false, true, false)), true & any(vec4<bool>(true, false, true, false))), vec2<bool>(~14130u <= _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 5666u, 0u), true), all(!select(vec2<bool>(true, false), vec2<bool>(false, false), true))), any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false), true)));
    var var_1 = true;
    var var_2 = _wgslsmith_add_vec4_u32(select(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(44851u, global0[_wgslsmith_index_u32(1u, 16u)], 53055u, 3303u), vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12060u, 16u)], 16u)], 0u) >> (vec4<u32>(18415u, 7138u, global0[_wgslsmith_index_u32(43652u, 16u)], 52362u) % vec4<u32>(32u)), ~vec4<u32>(14308u, 73275u, global0[_wgslsmith_index_u32(41198u, 16u)], 4294967295u)), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 16u)], 1u, global0[_wgslsmith_index_u32(18888u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)]) & (vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56173u, 16u)], 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(51030u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)]) ^ vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22143u, 16u)], 16u)], 16u)], 1u, 4294967295u, 24117u))), vec4<u32>(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(75725u, 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)]), 16u)], 0u, 27164u, firstTrailingBit(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33305u, 16u)], 16u)], 16u)])), vec4<bool>(false, true, !func_1(Struct_1(vec2<bool>(false, false), -508f)), var_0.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(25656u, 16u)], 65460u, 14683u, 1u), vec4<u32>(~global0[_wgslsmith_index_u32(0u, 16u)], _wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)]), global0[_wgslsmith_index_u32(4294967295u, 16u)] & 82120u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21341u, 16u)], 16u)], 16u)] & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)])), vec4<u32>(43390u, 12056u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(12597u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)]), vec4<u32>(global0[_wgslsmith_index_u32(0u, 16u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8707u, 16u)], 16u)], 38389u)), 2074u), abs(~44093u))));
    var var_3 = Struct_1(!select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, var_0.x), true), select(vec2<bool>(var_0.x, true), vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x)), func_1(Struct_1(vec2<bool>(false, true), -1566f))), var_2.x >= var_2.x), 1266f);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3.b, 455f, 135f), vec3<f32>(161f, 1767f, 392f)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-218f, var_3.b, -228f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b, var_3.b, -1107f) * vec3<f32>(var_3.b, var_3.b, -960f))))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b, _wgslsmith_f_op_f32(f32(-1f) * -911f), _wgslsmith_f_op_f32(max(var_3.b, 1028f))) + vec3<f32>(var_3.b, var_3.b, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_3.b, var_3.b), -332f)))));
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-802f * var_3.b), _wgslsmith_f_op_f32(round(var_4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -753f)), _wgslsmith_div_f32(var_4.x, var_3.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_4.x)), _wgslsmith_f_op_f32(sign(-1000f))))))));
    var_4 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-213f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1379f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(182f)) + var_4.x)), var_5.yyz);
    var_2 = vec4<u32>(firstTrailingBit(global0[_wgslsmith_index_u32(1u, 16u)]), _wgslsmith_clamp_u32(37659u, ~global0[_wgslsmith_index_u32(~4294967295u, 16u)], _wgslsmith_dot_vec4_u32(~vec4<u32>(28865u, global0[_wgslsmith_index_u32(var_2.x, 16u)], 67593u, var_2.x), vec4<u32>(4294967295u, reverseBits(47198u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], var_2.x), vec4<u32>(global0[_wgslsmith_index_u32(0u, 16u)], var_2.x, var_2.x, 19278u)), var_2.x))), ~116410u, firstTrailingBit(0u) << (var_2.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b ^ u_input.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1884f, 305f), var_4.x, var_0.x)) * _wgslsmith_f_op_f32(abs(446f))), (select(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(var_2.x, 16u)], var_0.x) <= ~var_2.x) | var_3.a.x)), _wgslsmith_f_op_vec4_f32(-var_5));
}

