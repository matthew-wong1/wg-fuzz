struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 11> = array<bool, 11>(false, false, true, false, true, true, false, true, true, true, true);

var<private> global2: array<i32, 6>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = arg_0.c.e;
    global2 = array<i32, 6>();
    global1 = array<bool, 11>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1446f)) - var_0);
    global2 = array<i32, 6>();
    return ~109010u;
}

fn func_2() -> vec3<i32> {
    var var_0 = !global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(60667u, func_3(Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, true), vec2<f32>(-486f, 1089f), vec2<f32>(246f, 561f), 519f), vec3<u32>(u_input.a.x, u_input.a.x, 0u), Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, true), vec2<f32>(-1698f, 226f), vec2<f32>(-364f, 1102f), 947f))) & u_input.a.x), 11u)];
    var_0 = !all(select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(67625u, 11u)], global1[_wgslsmith_index_u32(27111u, 11u)], global1[_wgslsmith_index_u32(u_input.a.x, 11u)]), select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 11u)], false, false), vec4<bool>(true, false, global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)]), global1[_wgslsmith_index_u32(1u, 11u)]), true)) || global1[_wgslsmith_index_u32(4294967295u, 11u)];
    var var_1 = Struct_2(Struct_1(vec3<bool>(!all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], true, global1[_wgslsmith_index_u32(1u, 11u)])), false, false), !vec2<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 11u)], false, global1[_wgslsmith_index_u32(1u, 11u)], false)), !global1[_wgslsmith_index_u32(39189u, 11u)]), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-745f, 1274f), vec2<f32>(825f, 373f))), vec2<f32>(-2083f, -836f))))), _wgslsmith_div_vec2_f32(vec2<f32>(1258f, -397f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 300f)))), -817f), max(select(vec3<u32>(1u, 18467u, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 1u, 1u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(746u, 11u)])) | ~(~vec3<u32>(4294967295u, u_input.a.x, 4294967295u)), ~vec3<u32>(16019u, max(4294967295u, 8997u), u_input.a.x)), Struct_1(select(select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(79927u, 11u)], false), !vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 11u)], false), vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a.x, 11u)])), select(!vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(1u, 11u)]), vec3<bool>(select(global1[_wgslsmith_index_u32(4294967295u, 11u)], global1[_wgslsmith_index_u32(52254u, 11u)], false), global1[_wgslsmith_index_u32(reverseBits(u_input.a.x), 11u)], true)), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-771f, -1178f), vec2<f32>(833f, 987f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(987f, 1000f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-802f, -1000f), vec2<f32>(624f, -280f))))), _wgslsmith_div_vec2_f32(vec2<f32>(-489f, -368f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2038f, 385f))))), -1373f));
    let var_2 = _wgslsmith_div_u32(0u, abs(4294967295u));
    global0 = global2[_wgslsmith_index_u32(4294967295u, 6u)];
    return firstLeadingBit(-_wgslsmith_div_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], 2147483647i, global2[_wgslsmith_index_u32(var_2, 6u)]), ~vec3<i32>(global2[_wgslsmith_index_u32(1u, 6u)], -1i, -9689i)) & vec3<i32>(2147483647i, -1i, -(~global2[_wgslsmith_index_u32(var_1.b.x, 6u)])));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = false;
    global0 = -(~_wgslsmith_div_i32(2682i, global2[_wgslsmith_index_u32(u_input.a.x, 6u)]));
    let var_1 = 4294967295u;
    let var_2 = max(max(_wgslsmith_mult_i32(select(global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(var_1, 6u)], global1[_wgslsmith_index_u32(var_1, 11u)]), ~global2[_wgslsmith_index_u32(u_input.a.x, 6u)]), 2147483647i), ~(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 10100i), vec2<i32>(6835i, 0i)) << (7134u % 32u))) >= _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(func_2(), vec3<i32>(26604i, global2[_wgslsmith_index_u32(1u, 6u)], 1i), ~vec3<i32>(-33397i, global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(u_input.a.x, 6u)])) ^ vec3<i32>(abs(global2[_wgslsmith_index_u32(var_1, 6u)]), global2[_wgslsmith_index_u32(~4294967295u, 6u)], global2[_wgslsmith_index_u32(1u, 6u)] >> (24244u % 32u)), select(-vec3<i32>(-56839i, 1i, global2[_wgslsmith_index_u32(u_input.a.x, 6u)]), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-30671i, global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec3<i32>(global2[_wgslsmith_index_u32(var_1, 6u)], global2[_wgslsmith_index_u32(var_1, 6u)], global2[_wgslsmith_index_u32(1u, 6u)])), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], false, global1[_wgslsmith_index_u32(var_1, 11u)])));
    var var_3 = Struct_1(select(select(vec3<bool>(true, true, true), !vec3<bool>(global1[_wgslsmith_index_u32(var_1, 11u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(37677u, 11u)] && var_0, global1[_wgslsmith_index_u32(u_input.a.x, 11u)] | global1[_wgslsmith_index_u32(29580u, 11u)], true)), select(select(!vec3<bool>(var_2, global1[_wgslsmith_index_u32(var_1, 11u)], false), !vec3<bool>(var_0, true, global1[_wgslsmith_index_u32(u_input.a.x, 11u)]), !var_0), select(vec3<bool>(var_2, false, true), select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 11u)], var_2), vec3<bool>(var_2, false, false), var_0), var_2), vec3<bool>(true, true, true)), select(vec3<bool>(21270i < global2[_wgslsmith_index_u32(u_input.a.x, 6u)], select(true, false, var_0), global1[_wgslsmith_index_u32(var_1 >> (var_1 % 32u), 11u)]), select(!vec3<bool>(var_2, var_0, true), !vec3<bool>(true, var_2, global1[_wgslsmith_index_u32(9036u, 11u)]), true), true && all(vec4<bool>(var_0, false, false, true)))), vec2<bool>(true, false), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(703f - -282f), _wgslsmith_f_op_f32(f32(-1f) * -411f)) * vec2<f32>(-1133f, _wgslsmith_f_op_f32(max(410f, -1569f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-130f, 1347f) + vec2<f32>(1215f, 814f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - vec2<f32>(arg_0, arg_0)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, arg_0))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(arg_0, arg_0)) + vec2<f32>(416f, arg_0))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(633f, arg_0)))))), 1657f);
    return 54978u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1136f))), func_1(_wgslsmith_f_op_f32(ceil(1f))), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_mod_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(1u, 1u)), u_input.a.x ^ u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<u32>(10686u, u_input.a.x & u_input.a.x, ~u_input.a.x, abs(4294967295u))));
}

