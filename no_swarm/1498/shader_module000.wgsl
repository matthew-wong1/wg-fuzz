struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -27724i;

var<private> global1: array<u32, 21> = array<u32, 21>(0u, 7586u, 4294967295u, 56537u, 50570u, 46836u, 57910u, 90234u, 1u, 0u, 4294967295u, 1u, 8061u, 0u, 1u, 4294967295u, 32337u, 64317u, 22574u, 4294967295u, 30363u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: Struct_4) -> i32 {
    let var_0 = max(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.d, 22847u, ~arg_0.d), firstTrailingBit(vec3<u32>(23705u, 4294967295u, arg_0.d) & vec3<u32>(1u, 1u, 1u))), ~(~(~vec3<u32>(arg_0.d, arg_0.d, arg_0.d)))) >> (max(_wgslsmith_sub_vec3_u32(select(vec3<u32>(global1[_wgslsmith_index_u32(arg_0.d, 21u)], 0u, arg_0.d), vec3<u32>(arg_0.d, global1[_wgslsmith_index_u32(4294967295u, 21u)], 4294967295u), true), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.d, 62907u, arg_0.d), vec3<u32>(72581u, arg_0.d, 19040u)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(56711u, global1[_wgslsmith_index_u32(1u, 21u)], arg_0.d), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.d, 21u)], 21u)], 21598u, 30126u))), reverseBits(~vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(1u, 21u)], 1u)) & vec3<u32>(arg_0.d, 99054u >> (1u % 32u), _wgslsmith_sub_u32(arg_0.d, global1[_wgslsmith_index_u32(84723u, 21u)]))) % vec3<u32>(32u));
    global0 = 39781i >> (arg_0.d % 32u);
    var var_1 = Struct_2(false);
    let var_2 = -_wgslsmith_mod_vec2_i32(arg_0.a.yz, firstTrailingBit(vec2<i32>(firstLeadingBit(17184i), u_input.a)));
    var var_3 = arg_0.c;
    return firstTrailingBit(_wgslsmith_clamp_i32(var_2.x, -arg_0.a.x, _wgslsmith_div_i32(~arg_0.a.x, -1i) ^ arg_0.a.x));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    return -302f;
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = false;
    global0 = func_2(Struct_4(vec4<i32>(-18720i, ~u_input.a ^ u_input.a, i32(-1i) * -u_input.a, select(~u_input.a, 1i, true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1497f, -450f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-568f, 566f), vec2<f32>(579f, 1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(739f, -2216f)))), !vec4<bool>(false, true, global1[_wgslsmith_index_u32(18061u, 21u)] > global1[_wgslsmith_index_u32(0u, 21u)], true), global1[_wgslsmith_index_u32(firstTrailingBit(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(4294967295u, 21u)]), 21u)], 21u)]), 21u)]));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-266f, _wgslsmith_f_op_f32(883f * -751f), -1169f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-862f, -941f, true)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1424f * -268f), _wgslsmith_f_op_f32(-1161f + -187f), 510f, _wgslsmith_f_op_f32(func_3(vec3<f32>(1221f, -1304f, -352f), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28264u, 21u)], 21u)], 21u)], global1[_wgslsmith_index_u32(65968u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)]), Struct_1(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)])))))), true));
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(var_1.xxy));
    global1 = array<u32, 21>();
    return (~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(33890u, 21u)], 4294967295u, 0u), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1276u, 21u)], 21u)], 50902u, global1[_wgslsmith_index_u32(39424u, 21u)]))) >> (0u % 32u)) >> (25555u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.a, _wgslsmith_clamp_i32(u_input.a, u_input.a, -2147483647i), ~u_input.a, u_input.a), ~(vec4<i32>(u_input.a, 4711i, -24876i, -1i) & vec4<i32>(20990i, u_input.a, u_input.a, -7754i))), min(abs(u_input.a) >> (~global1[_wgslsmith_index_u32(func_1(false), 21u)] % 32u), -_wgslsmith_mult_i32(u_input.a, u_input.a) >> (func_1(any(vec4<bool>(true, false, false, false))) % 32u)));
    let var_0 = Struct_4(vec4<i32>(select(~10930i, -min(15612i, u_input.a), true), u_input.a, ~_wgslsmith_add_i32(u_input.a, 46858i), 1i), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(412f, -939f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(886f, -893f), vec2<f32>(1000f, 790f), false)), true)))))), select(!vec4<bool>(any(vec3<bool>(true, false, true)), false, true, true), vec4<bool>(!all(vec2<bool>(false, false)), true, true, all(vec4<bool>(false, false, true, true)) && true), select(all(vec4<bool>(false, false, false, false)), true, false)), 4294967295u);
    let var_1 = Struct_2(all(select(vec4<bool>(true, var_0.c.x, true, true), var_0.c, var_0.c)) || !any(select(vec3<bool>(false, var_0.c.x, var_0.c.x), var_0.c.yzx, false)));
    let var_2 = Struct_1(-4089i, ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 1u), vec2<u32>(20935u, global1[_wgslsmith_index_u32(var_0.d, 21u)]), true) << (abs(vec2<u32>(13116u, 63144u)) % vec2<u32>(32u)), abs(countOneBits(vec2<u32>(global1[_wgslsmith_index_u32(0u, 21u)], var_0.d)))), var_0.a << (_wgslsmith_div_vec4_u32(~(~vec4<u32>(var_0.d, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(81446u, 21u)], 21u)], global1[_wgslsmith_index_u32(0u, 21u)], 10315u)), max(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(var_0.d, 21u)], 4294967295u, 76009u), reverseBits(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(16592u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], 0u)))) % vec4<u32>(32u)), firstLeadingBit(4294967295u));
    var var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(~vec3<u32>(global1[_wgslsmith_index_u32(12551u, 21u)], 1u, global1[_wgslsmith_index_u32(11415u, 21u)]))), i32(-1i) * -2044i, firstLeadingBit(~(~vec2<u32>(4294967295u, 22526u))));
}

