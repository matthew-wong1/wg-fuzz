struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(4294967295u, 4294967295u, 18114u, 20204u, 4294967295u, 1u, 1u, 1u, 4294967295u, 45458u, 0u, 0u, 0u, 0u, 0u, 18146u, 30530u, 1u, 19569u, 6846u, 45740u, 1u, 0u, 13535u, 12150u, 1u, 4294967295u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec3<bool>) -> bool {
    let var_0 = -1i;
    let var_1 = -(i32(-1i) * -1i);
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(0u, _wgslsmith_div_u32(~(~1u), abs(max(arg_0.x, arg_0.x))), 1u), ~select(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21956u, 27u)], 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<u32>(arg_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 27u)], 27u)], arg_0.x)), abs(vec3<u32>(global0[_wgslsmith_index_u32(15571u, 27u)], arg_0.x, 1u)), abs(vec3<u32>(39516u, arg_0.x, arg_0.x))), _wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_0.x, global0[_wgslsmith_index_u32(arg_0.x, 27u)]), ~vec3<u32>(0u, 28055u, 0u)), vec3<bool>(false, arg_1.x >= 659f, true)));
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    return ~_wgslsmith_mult_u32(_wgslsmith_div_u32(firstLeadingBit(38829u), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(arg_0.x, 27u)], arg_0.x)), ~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 1u)) <= _wgslsmith_div_u32(abs(~(arg_0.x ^ 1u)), var_2.x);
}

fn func_2() -> u32 {
    let var_0 = Struct_2(firstLeadingBit(min(47205i, i32(-1i) * -u_input.a.x)), Struct_1(!vec3<bool>(any(vec2<bool>(false, false)), true, false), func_3(~countOneBits(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3747u, 27u)], 27u)], 27u)], 4294967295u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-393f, 330f, -516f, 575f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1277f, -183f, 145f, 636f) * vec4<f32>(2229f, 546f, -2066f, 1100f))), vec3<bool>(all(vec4<bool>(true, false, false, false)), true, true))), any(!vec4<bool>(select(true, false, false), all(vec2<bool>(false, true)), true, true)), select(vec3<bool>(-u_input.a.x < (u_input.a.x ^ u_input.a.x), true, false), vec3<bool>(true, true, true), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(1000f, 1000f)), 1066f) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(248f, 314f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(336f, _wgslsmith_f_op_f32(min(1988f, 802f))))));
    global0 = array<u32, 27>();
    let var_1 = -542f;
    var var_2 = vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(44041u, 27u)], 1334u), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(4294967295u | global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)]), select(vec4<u32>(28982u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)], 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21367u, 27u)], 27u)], 27u)], 27u)], 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(116864u, 27u)], 27u)]) << (vec4<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(1u, 27u)], 1u) % vec4<u32>(32u)), vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(83556u, 27u)], 27u)], 27u)], 27u)], 34476u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37049u, 27u)], 27u)], 27u)]) | vec4<u32>(global0[_wgslsmith_index_u32(64629u, 27u)], 0u, 4294967295u, global0[_wgslsmith_index_u32(0u, 27u)]), vec4<bool>(true, false, false, var_0.d.x)))), ~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29464u, 27u)], 27u)])), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(97819u, 27u)], 27u)], 27u)], 27u)]), vec2<u32>(global0[_wgslsmith_index_u32(53627u, 27u)], 29477u)), ~0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(66220u, 27u)], 27u)], 27u)] | global0[_wgslsmith_index_u32(4294967295u, 27u)])));
    let var_3 = var_0;
    return 1u;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> bool {
    let var_0 = select(_wgslsmith_mult_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)], global0[_wgslsmith_index_u32(80237u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)], 27u)], 27u)], 27u)]), _wgslsmith_mult_vec4_u32(vec4<u32>(54569u, global0[_wgslsmith_index_u32(1u, 27u)], 4294967295u, 6299u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18313u, 27u)], 27u)], 27u)], 27u)], 12820u, 0u, 54098u))), vec4<u32>(global0[_wgslsmith_index_u32(37720u, 27u)], ~global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(func_2(), 27u)], 9002u) & _wgslsmith_clamp_vec4_u32(~vec4<u32>(34101u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55377u, 27u)], 27u)], global0[_wgslsmith_index_u32(45215u, 27u)], global0[_wgslsmith_index_u32(70318u, 27u)]), abs(vec4<u32>(global0[_wgslsmith_index_u32(6201u, 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)], 27u)], global0[_wgslsmith_index_u32(37285u, 27u)], global0[_wgslsmith_index_u32(45258u, 27u)])), abs(vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(13367u, 27u)], 4294967295u))), vec4<bool>(true, !(true | arg_0.a.x), any(!vec4<bool>(false, arg_1, false, arg_1)), !arg_0.b)) | ~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 27u)], 48008u, global0[_wgslsmith_index_u32(1u, 27u)], 26781u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22448u, 27u)], 27u)], 27u)], 27u)], global0[_wgslsmith_index_u32(91605u, 27u)], 15401u, global0[_wgslsmith_index_u32(4294967295u, 27u)])), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(42689u, 30987u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 59515u)), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)], 27u)], 27u)], 52299u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)]) >> (vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(23536u, 27u)], 75120u, 0u) % vec4<u32>(32u))));
    global0 = array<u32, 27>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-413f, 1092f, -1543f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 149f, -711f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) - vec3<f32>(-621f, 1291f, var_1.x))))))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(205f, -1000f), _wgslsmith_f_op_f32(-229f * -238f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - -296f))), var_1.x))), var_1.x);
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 27>();
    let var_0 = -_wgslsmith_div_i32(_wgslsmith_div_i32(abs(-u_input.a.x), u_input.a.x), ~u_input.a.x);
    var var_1 = !(!func_1(Struct_1(vec3<bool>(true, true, true), true), true));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~firstLeadingBit(abs(1u)), ((36570u & global0[_wgslsmith_index_u32(27336u, 27u)]) >> (~4294967295u % 32u)) << (4294967295u % 32u)), 27u)], 27u)], _wgslsmith_mod_u32(global0[_wgslsmith_index_u32((countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)]) << (1u % 32u)) ^ global0[_wgslsmith_index_u32(1u, 27u)], 27u)], _wgslsmith_dot_vec3_u32(vec3<u32>(35751u, ~41061u, 48202u), _wgslsmith_div_vec3_u32(vec3<u32>(24354u, 122904u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9043u, 27u)], 27u)], 4294967295u) ^ vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5308u, 27u)], 27u)], 0u, 4294967295u))))), 27u)];
    let var_3 = Struct_2(~_wgslsmith_dot_vec4_i32(max(max(vec4<i32>(8199i, 30985i, var_0, -2147483647i), vec4<i32>(35983i, var_0, var_0, u_input.a.x)), ~vec4<i32>(-1i, 1i, -1i, 17599i)), -vec4<i32>(-1i, -33147i, u_input.a.x, var_0)), Struct_1(!select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), true), true), !all(vec3<bool>(true, true, false)), !vec3<bool>(false, any(vec4<bool>(true, false, false, true)), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1903f), 1073f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~firstLeadingBit((vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)]) & vec2<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 27u)])) >> (abs(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6143u, 27u)], 27u)], 1u)) % vec2<u32>(32u))), vec3<i32>(-17574i, -_wgslsmith_mod_i32(u_input.a.x, -18833i), var_3.a));
}

