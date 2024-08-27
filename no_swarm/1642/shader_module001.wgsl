struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 4> = array<f32, 4>(164f, 229f, 2803f, -487f);

var<private> global2: u32 = 42829u;

var<private> global3: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec2<i32>(47648i, 0i)), Struct_2(vec2<i32>(-60111i, 11624i)), Struct_2(vec2<i32>(2147483647i, 2147483647i)), Struct_2(vec2<i32>(-13690i, 12180i)), Struct_2(vec2<i32>(14098i, 50943i)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>) -> vec3<f32> {
    var var_0 = arg_1;
    var_0 = ~vec4<i32>(u_input.a.x, -_wgslsmith_add_i32(var_0.x, u_input.a.x), 1i, -19902i);
    global3 = array<Struct_2, 5>();
    global0 = arg_0;
    global1 = array<f32, 4>();
    return vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(firstTrailingBit(4294967295u) & 1u), 4u)] * -820f), _wgslsmith_f_op_f32(ceil(-206f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~0u, 4u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(4294967295u, 4u)], 1294f)) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 4u)] + -567f)))));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = vec2<i32>(0i, max(u_input.a.x, min(_wgslsmith_sub_i32(1i, u_input.a.x), u_input.a.x) >> (~0u % 32u)));
    var var_1 = select(select(select(select(select(vec2<bool>(global0.a.x, global0.a.x), vec2<bool>(global0.a.x, false), global0.a.xz), select(global0.a.yx, vec2<bool>(global0.a.x, false), true), !global0.a.x), vec2<bool>(true, true), true), vec2<bool>(global0.a.x, select(true, global0.a.x, true)), global0.a.yz), global0.a.zz, !global0.a.x);
    global2 = 4764u;
    global2 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, 1u, 44794u)), vec3<u32>(47566u, 0u, 9301u)), 0u) >> (17714u % 32u), 1u, ~(~11629u));
    let var_2 = max(vec4<u32>(1u, 1u, 1u, 1u) | ~vec4<u32>(40232u >> (0u % 32u), _wgslsmith_clamp_u32(27284u, 89971u, 1u), ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(23152u, 4294967295u, 0u, 1u), vec4<u32>(1u, 4294967295u, 17380u, 10609u))), vec4<u32>(~13262u, 61549u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(70893u, 34391u, 91100u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(30234u, 1u, 7404u), vec3<u32>(1u, 4294967295u, 25208u), vec3<u32>(4294967295u, 36223u, 4294967295u))), ~(~vec3<u32>(4294967295u, 1u, 4294967295u))), _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(84017u, 4294967295u)), _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(0u, 1346u)), vec2<u32>(40404u, 24901u)))));
    return -var_0.x;
}

fn func_1() -> vec4<bool> {
    global0 = Struct_3(select(global0.a, global0.a, !global0.a.x));
    var var_0 = _wgslsmith_f_op_vec3_f32(func_2(Struct_3(!global0.a), vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)) & (reverseBits(-2147483647i) ^ u_input.a.x), ~u_input.a.x, 1i)));
    var var_1 = global0.a.wy;
    var var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a.x, func_3(-1000f), ~0i), vec3<i32>(-2052i, u_input.a.x, _wgslsmith_add_i32(u_input.a.x, u_input.a.x))), abs(u_input.a.x) | (u_input.a.x << (1u % 32u)), 34582i, -1i) >> (vec4<u32>(_wgslsmith_clamp_u32(0u, 65196u, 0u) & (_wgslsmith_dot_vec2_u32(vec2<u32>(53933u, 18839u), vec2<u32>(4294967295u, 27461u)) >> (~0u % 32u)), 1u, countOneBits(~(~26031u)), 7368u) % vec4<u32>(32u));
    var var_3 = Struct_3(!vec4<bool>(!(-483f != var_0.x), true, !global0.a.x, all(global0.a)));
    return !(!var_3.a);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: Struct_4) -> Struct_3 {
    return Struct_3(select(arg_3.a.a, vec4<bool>(!global0.a.x, func_1().x, arg_3.b.a > _wgslsmith_dot_vec4_u32(vec4<u32>(25599u, arg_3.b.c, arg_1.x, 7209u), vec4<u32>(arg_3.b.a, arg_3.b.c, arg_3.b.a, 60074u)), true), select(select(!global0.a, select(arg_2, vec4<bool>(global0.a.x, false, true, false), arg_3.a.a), global0.a.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(global0.a.x, arg_2.x, false, false), vec4<bool>(arg_3.a.a.x, arg_2.x, true, global0.a.x)), false), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = countOneBits(~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, var_0, 7731u, 4294967295u) >> (vec4<u32>(var_0, var_0, 52135u, 1u) % vec4<u32>(32u)), countOneBits(vec4<u32>(3169u, var_0, 37977u, 4294967295u)), ~vec4<u32>(var_0, var_0, var_0, 55302u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0, var_0, var_0, 4294967295u) & vec4<u32>(var_0, var_0, var_0, var_0), firstTrailingBit(vec4<u32>(var_0, 35146u, 12062u, var_0))), vec4<u32>(4294967295u, 28570u, _wgslsmith_sub_u32(var_0, var_0), var_0)));
    global0 = func_4(~(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -1i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 11805i)), u_input.a.x | 23826i, -3930i)), vec3<u32>(var_0, ~abs(22380u | var_1.x), 0u), func_1(), Struct_4(Struct_3(vec4<bool>(true, true, true, global0.a.x)), Struct_1(max(0u, _wgslsmith_clamp_u32(12168u, 1u, var_0)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, 67488i), u_input.a.zx), vec2<i32>(u_input.a.x, u_input.a.x)), (1u | var_1.x) << (42027u % 32u))));
    global1 = array<f32, 4>();
    var var_2 = Struct_1(abs(var_1.x), -1i, _wgslsmith_dot_vec4_u32(var_1, vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_1.x, var_1.x, 4294967295u), var_1), _wgslsmith_add_u32(22471u, var_1.x), reverseBits(~75684u), var_1.x)));
    let var_3 = func_4(_wgslsmith_clamp_vec3_i32(min(u_input.a, firstLeadingBit(select(vec3<i32>(u_input.a.x, var_2.b, -2147483647i), vec3<i32>(-1i, var_2.b, 0i), vec3<bool>(global0.a.x, global0.a.x, global0.a.x)))), -(~(-u_input.a)), (vec3<i32>(-1i) * -u_input.a) ^ select(-vec3<i32>(-1i, var_2.b, -2147483647i), u_input.a & vec3<i32>(-13398i, 19442i, 83910i), any(global0.a.yww))), firstTrailingBit(vec3<u32>(4294967295u, var_1.x, 4294967295u)), vec4<bool>(1978u >= abs(_wgslsmith_clamp_u32(var_0, 10067u, var_0)), global0.a.x, global0.a.x, func_1().x), Struct_4(func_4(u_input.a, vec3<u32>(0u | var_2.a, abs(var_2.c), firstLeadingBit(var_2.a)), select(!global0.a, !global0.a, select(vec4<bool>(true, true, true, false), global0.a, vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x))), Struct_4(func_4(u_input.a, vec3<u32>(48951u, var_1.x, 0u), vec4<bool>(global0.a.x, global0.a.x, true, global0.a.x), Struct_4(Struct_3(vec4<bool>(false, global0.a.x, global0.a.x, global0.a.x)), Struct_1(4294967295u, u_input.a.x, var_2.c))), Struct_1(var_1.x, var_2.b, var_2.c))), Struct_1(_wgslsmith_clamp_u32(var_0, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.x, 1u, 11004u), vec4<u32>(4294967295u, 0u, 51650u, 47124u)), _wgslsmith_clamp_u32(var_2.c, 0u, 0u)), 52176i ^ countOneBits(u_input.a.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_1.yz, vec2<u32>(var_0, var_2.c)), var_1.x))));
    global1 = array<f32, 4>();
    var var_4 = Struct_4(Struct_3(!vec4<bool>(global0.a.x, var_3.a.x || global0.a.x, global0.a.x, true)), Struct_1(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0 & var_2.c, 26833u), var_1.x), -8840i, var_0));
    global0 = Struct_3(var_4.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, ~16368i, global1[_wgslsmith_index_u32(var_0, 4u)], 927f);
}

