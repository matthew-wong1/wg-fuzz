struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: array<u32, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> vec2<bool> {
    global0 = array<i32, 11>();
    global1 = array<u32, 16>();
    return vec2<bool>(!all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 16u)], 11u)] == 2147483647i)), false);
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<u32>, arg_3: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f) + 297f), -1170f, -516f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(499f + 230f))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(min(var_0.x, var_0.x)), -1008f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(627f, var_0.x, 2185f) * vec3<f32>(var_0.x, -640f, -1000f))))))));
    var var_1 = !all(vec4<bool>(!(var_0.x < 873f), func_1(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], countOneBits(arg_2)).x, ~global1[_wgslsmith_index_u32(arg_2.x, 16u)] >= abs(u_input.a), arg_3.x == 21457i));
    global0 = array<i32, 11>();
    var var_2 = Struct_1(true, vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(876f - var_0.x), -324f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-1568f, var_0.x, -632f, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, -378f)))))));
    return ~74611u;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: u32) -> vec2<bool> {
    let var_0 = vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec4_i32(min(vec4<i32>(-2147483647i, 1244i, 24453i, -5973i), vec4<i32>(global0[_wgslsmith_index_u32(95387u, 11u)], 6053i, global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(arg_2, 11u)])), vec4<i32>(-21410i, ~global0[_wgslsmith_index_u32(37050u, 11u)], 0i, -2147483647i)), _wgslsmith_add_i32(1i, _wgslsmith_mod_i32(24566i, ~2147483647i))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.x, global1[_wgslsmith_index_u32(arg_1.x, 16u)]), 11u)]);
    let var_1 = abs(vec3<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)], 11u)], var_0.x) | vec3<i32>(global0[_wgslsmith_index_u32(16734u, 11u)], -1i, 26623i)), _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(var_0.x, global0[_wgslsmith_index_u32(u_input.a, 11u)], 0i)), vec3<i32>(global0[_wgslsmith_index_u32(55586u, 11u)], -1i, var_0.x) << (vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], arg_1.x) % vec3<u32>(32u)))), _wgslsmith_mod_i32(abs(-28320i | global0[_wgslsmith_index_u32(0u, 11u)]), -1i), global0[_wgslsmith_index_u32(firstLeadingBit(~firstTrailingBit(arg_2)), 11u)]));
    global0 = array<i32, 11>();
    var var_2 = 30763u;
    var var_3 = Struct_2(~(arg_2 >> (global1[_wgslsmith_index_u32(func_3(~vec4<i32>(global0[_wgslsmith_index_u32(arg_2, 11u)], var_1.x, var_1.x, 3944i), 1u, vec4<u32>(1u, 4294967295u, 0u, arg_2), var_0), 16u)] % 32u)));
    return !(!func_1(arg_1.x, min(vec4<u32>(global1[_wgslsmith_index_u32(0u, 16u)], arg_2, u_input.a, 0u), abs(vec4<u32>(arg_1.x, 25727u, global1[_wgslsmith_index_u32(42669u, 16u)], 51935u)))));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> Struct_4 {
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1034f, -1219f) - -884f) + 304f)), -abs(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4342u, 16u)], 11u)], 0i, -2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(arg_2.a, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(arg_2.a, 11u)])), vec3<i32>(global0[_wgslsmith_index_u32(3456u, 11u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3, 16u)], 16u)], 11u)], 10346i))), Struct_3(arg_2), Struct_3(Struct_2(47493u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -9955i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1542f, -1095f) - _wgslsmith_f_op_f32(f32(-1f) * -256f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1706f + 1944f)), _wgslsmith_f_op_f32(-554f - _wgslsmith_f_op_f32(736f * 833f)), _wgslsmith_f_op_f32(-151f + _wgslsmith_f_op_f32(-659f - -1753f))))));
    let var_2 = func_4(true & any(select(func_1(56686u, vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 16u)], 15725u, 4294967295u)), vec2<bool>(false, false), func_2(vec2<u32>(u_input.a, u_input.a), vec2<u32>(97599u, 22409u), 17698u))), true, Struct_2(_wgslsmith_mult_u32(max(~0u, ~u_input.a), 48334u)), ~1u);
    global0 = array<i32, 11>();
    global1 = array<u32, 16>();
    let var_3 = func_4(all(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, true, false), true)), true, Struct_2(var_2.c.a.a | 1u), func_3(vec4<i32>(~var_2.b.x, 1i, -var_2.b.x, reverseBits(-2147483647i)), ~10800u, vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(var_2.c.a.a, 16u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.d.a.a, 16u)], 16u)]), vec3<u32>(8804u, u_input.a, global1[_wgslsmith_index_u32(9548u, 16u)])), 24641u, ~(4294967295u & global1[_wgslsmith_index_u32(58535u, 16u)]), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~0u, 16u)], min(40431u, 6963u))), var_2.b.xy)).d;
    let var_4 = ~vec4<u32>(abs(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], var_2.c.a.a), 16u)] ^ _wgslsmith_sub_u32(47856u, 22641u)), _wgslsmith_mult_u32(~1u << ((var_3.a.a & var_2.d.a.a) % 32u), 54818u), 38698u, 1224u);
    let var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-710f))) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1422f)), _wgslsmith_f_op_f32(min(-252f, var_2.a)))))), var_1.zz, _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1949f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_2.a, -1603f, 1000f) - vec4<f32>(var_1.x, var_1.x, var_2.a, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, var_2.a, 1035f, var_1.x) * vec4<f32>(var_1.x, -390f, var_2.a, 1342f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, 1145f, var_2.a, -671f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(var_5.c.xy)), vec2<f32>(-1024f, 346f), vec2<bool>(all(vec4<bool>(var_5.a, false, var_5.a, var_5.a)) && true, -288f >= var_1.x))), firstLeadingBit(select(abs(_wgslsmith_div_vec2_u32(var_4.xw, var_4.wx)), vec2<u32>(~4294967295u, 4294967295u), select(vec2<bool>(var_5.a, false), vec2<bool>(false, true), false))));
}

