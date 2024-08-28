struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<f32, 2> = array<f32, 2>(-709f, -640f);

var<private> global2: array<u32, 12>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(arg_3.a, _wgslsmith_add_u32(_wgslsmith_add_u32(87069u, global2[_wgslsmith_index_u32(1u, 12u)] >> (28389u % 32u)), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(~36033u), 12u)], 12u)]) > ~(~firstTrailingBit(global2[_wgslsmith_index_u32(1u, 12u)])));
    var var_1 = arg_2;
    var_1 = (~(arg_1 >> (min(1u, 0u) % 32u)) ^ u_input.a) ^ -1i;
    var_0 = arg_3;
    var_1 = _wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-59800i, arg_1), _wgslsmith_div_vec2_i32(vec2<i32>(1i, 0i), select(vec2<i32>(arg_2, u_input.a), vec2<i32>(-40710i, 1i), true))), 1i);
    return ~u_input.a;
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = abs(vec3<i32>(-(1i ^ u_input.a), -(~(-2147483647i)) >> (~_wgslsmith_add_u32(global2[_wgslsmith_index_u32(11591u, 12u)], global2[_wgslsmith_index_u32(1u, 12u)]) % 32u), _wgslsmith_div_i32(func_2(-681f, ~(-61131i), -u_input.a, Struct_1(vec4<u32>(24142u, 3656u, 112626u, global2[_wgslsmith_index_u32(arg_0, 12u)]), true)), 1i)));
    var var_1 = global2[_wgslsmith_index_u32(arg_0, 12u)];
    var var_2 = !(var_0.x != _wgslsmith_mod_i32(~var_0.x, firstLeadingBit(0i >> (global2[_wgslsmith_index_u32(1u, 12u)] % 32u))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(arg_0, 2u)], global1[_wgslsmith_index_u32(arg_0, 2u)], -1131f)))))) - vec3<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-915f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 2u)])), global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(1u, 12u)], 2u)])));
    var var_4 = select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true | all(vec2<bool>(true, true)), global1[_wgslsmith_index_u32(arg_0, 2u)] > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(38962u, 2u)])))), true, true), select(select(vec4<bool>(false, true, true, any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), select(true, all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true)), true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1058f));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_2) -> u32 {
    var var_0 = arg_3;
    global2 = array<u32, 12>();
    global1 = array<f32, 2>();
    global0 = global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global2[_wgslsmith_index_u32(~144368u, 12u)], 1u, abs(global2[_wgslsmith_index_u32(~0u, 12u)]))), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(reverseBits(0u), 12u)], global2[_wgslsmith_index_u32(min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(42184u, 12u)], 12u)], global2[_wgslsmith_index_u32(44054u, 12u)]), 12u)]), global2[_wgslsmith_index_u32(~abs(66153u), 12u)]), firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(0u, 12u)], 1u, 1u), select(vec3<u32>(global2[_wgslsmith_index_u32(50846u, 12u)], global2[_wgslsmith_index_u32(37603u, 12u)], 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15003u, 12u)], 12u)], 0u), false))), 0u ^ _wgslsmith_div_u32(firstLeadingBit(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(44803u, 12u)], 12u)], 12u)], 14356u, global2[_wgslsmith_index_u32(21452u, 12u)]), vec3<u32>(26530u, 4294967295u, 32789u))))), 12u)], 12u)], 12u)], 12u)];
    let var_1 = ~abs(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)] | 7990u, 36710u, global2[_wgslsmith_index_u32(~122325u, 12u)], global2[_wgslsmith_index_u32(countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)], 12u)], 12u)]), 12u)]));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-979f + 498f), global1[_wgslsmith_index_u32(4294967295u, 2u)], _wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 12u)] & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 12u)])))));
    global0 = _wgslsmith_mod_u32(~29936u, ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43516u, 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], 12u)]), vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(53047u, 12u)], 12u)], 12u)], 12u)], 12u)], global2[_wgslsmith_index_u32(1u, 12u)])), vec3<u32>(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], 110625u), func_3(vec4<f32>(-399f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 2u)], 360f, global1[_wgslsmith_index_u32(1u, 2u)]), vec4<i32>(u_input.a, u_input.a, 1i, 2147483647i), -7314i, Struct_2(var_0.a)))));
    var var_1 = Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(3112u, 12u)], global2[_wgslsmith_index_u32(21594u, 12u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(92468u, 12u)], 12u)])), 2u)] + global1[_wgslsmith_index_u32(~38365u, 2u)]), _wgslsmith_f_op_f32(-var_0.a.x), global1[_wgslsmith_index_u32(~21042u, 2u)]), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-178f, var_0.a.x, 329f) - var_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -2425f, 1000f))))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a.x, -753f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46516u, 12u)], 12u)], 2u)] + 420f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(632f, var_1.a.x, var_0.a.x) - vec3<f32>(171f, var_1.a.x, -857f)), vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(1550f - var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_3 = Struct_1(firstTrailingBit(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, global2[_wgslsmith_index_u32(127281u, 12u)], 4294967295u, global2[_wgslsmith_index_u32(24258u, 12u)]) >> (vec4<u32>(68205u, global2[_wgslsmith_index_u32(38020u, 12u)], global2[_wgslsmith_index_u32(0u, 12u)], 10319u) % vec4<u32>(32u)), vec4<u32>(global2[_wgslsmith_index_u32(0u, 12u)], 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12525u, 12u)], 12u)], global2[_wgslsmith_index_u32(20262u, 12u)])), _wgslsmith_sub_vec4_u32(min(vec4<u32>(global2[_wgslsmith_index_u32(7592u, 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)], global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 12u)], 12u)], 12u)]), vec4<u32>(global2[_wgslsmith_index_u32(172662u, 12u)], 0u, 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 12u)])), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], 12u)], 12u)], 0u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], 12u)], 12u)])))), !any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))));
    global1 = array<f32, 2>();
    var_0 = Struct_2(var_0.a);
    global1 = array<f32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(1i, 1i), u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, 9241i))), vec3<i32>(_wgslsmith_div_i32(u_input.a, 41534i), 0i, 1i)), -32668i), -((_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(-2147483647i, u_input.a)) | min(vec2<i32>(0i, -12318i), vec2<i32>(0i, 1i))) << (var_3.a.xx % vec2<u32>(32u))), u_input.a);
}

