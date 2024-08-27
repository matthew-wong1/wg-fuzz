struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 20>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(46119i, 2147483647i), vec2<i32>(-47647i, 2147483647i), vec2<i32>(5547i, 1i), vec2<i32>(0i, 2147483647i), vec2<i32>(1i, 0i), vec2<i32>(-33409i, 31550i), vec2<i32>(0i, -1i), vec2<i32>(-1i, -7509i), vec2<i32>(2147483647i, 1237i), vec2<i32>(i32(-2147483648), -27085i), vec2<i32>(1i, -61388i), vec2<i32>(35366i, -13442i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = -(~(-u_input.a.x));
    let var_1 = firstTrailingBit(_wgslsmith_mult_i32(0i, _wgslsmith_sub_i32(-3960i, ~u_input.a.x))) << (4294967295u % 32u);
    global0 = array<vec2<i32>, 20>();
    var var_2 = vec4<u32>(_wgslsmith_sub_u32(u_input.b, ~(~(~global1.a))), firstTrailingBit(~1u), _wgslsmith_sub_u32(global1.a | ~33915u, 1u), ~(global1.c.x >> (~_wgslsmith_clamp_u32(global1.c.x, 102775u, 52540u) % 32u)));
    global0 = array<vec2<i32>, 20>();
    return _wgslsmith_dot_vec2_u32(~var_2.wx, max(global1.c, select(~max(var_2.wy, vec2<u32>(global1.c.x, 4294967295u)), global1.c, !select(vec2<bool>(global1.d, global1.d), vec2<bool>(true, global1.d), vec2<bool>(false, true)))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    global0 = array<vec2<i32>, 20>();
    let var_0 = func_3() < 1u;
    var var_1 = Struct_1(43691u, global1.b, global1.c, true);
    var_1 = Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(exp2(global1.b)), vec2<u32>(_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(u_input.b, 1u, 0u)), ~(vec3<u32>(u_input.b, 58679u, var_1.a) << (vec3<u32>(1u, 76528u, 19632u) % vec3<u32>(32u)))), ~global1.a), !any(vec2<bool>(true, var_0)));
    var var_2 = Struct_1(4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.b.x, -247f, global1.b.x)))))), vec2<u32>(~global1.a, 4294967295u), all(!select(select(vec3<bool>(var_1.d, var_1.d, true), vec3<bool>(false, var_1.d, global1.d), false), vec3<bool>(var_1.d, false, false), false)));
    return Struct_1(_wgslsmith_mult_u32(0u, var_2.c.x), vec3<f32>(502f, -1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * var_1.b.x))), 329f))), _wgslsmith_clamp_vec2_u32(firstLeadingBit(firstTrailingBit(var_1.c) ^ vec2<u32>(36124u, 1u)), ~countOneBits(select(vec2<u32>(var_1.c.x, 57478u), vec2<u32>(u_input.b, 0u), vec2<bool>(var_2.d, false))), ~global1.c), any(vec2<bool>(global1.d, var_0 | (-1000f > var_2.b.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = u_input.a.x >> (~4294967295u % 32u);
    var var_2 = func_2(countOneBits(min(max(firstLeadingBit(vec2<i32>(-2147483647i, u_input.a.x)), select(vec2<i32>(1i, 2147483647i), global0[_wgslsmith_index_u32(83317u, 20u)], false)), vec2<i32>(min(2147483647i, -57633i), -2147483647i))));
    var var_3 = Struct_1(~_wgslsmith_mult_u32(~_wgslsmith_add_u32(global1.a, 84666u), 0u), var_2.b, vec2<u32>(~abs(9334u << (1u % 32u)), reverseBits(func_3() ^ arg_2.x)), ~(-1i) == ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(29498i, var_1, var_1, var_1), vec4<i32>(1i, u_input.a.x, u_input.a.x, 40568i))));
    var var_4 = arg_0;
    return Struct_1(10013u, arg_0.b, select(_wgslsmith_add_vec2_u32(global1.c & vec2<u32>(var_3.c.x, 2619u), ~global1.c), _wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(var_3.c, vec2<u32>(39915u, 32975u)), vec2<u32>(_wgslsmith_sub_u32(0u, var_4.a), 13562u)), vec2<bool>(true, arg_0.d)), any(vec2<bool>(true, !select(false, var_4.d, var_2.d))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> vec2<u32> {
    let var_0 = min(-(~arg_0) | reverseBits(~(vec3<i32>(u_input.a.x, 2147483647i, 42177i) & arg_0)), arg_0);
    var var_1 = 1i;
    var_1 = -9988i;
    let var_2 = vec3<u32>(0u >> (0u % 32u), global1.a >> (u_input.b % 32u), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(7324u, u_input.b, arg_1.a)), _wgslsmith_add_vec3_u32(~vec3<u32>(1u, 4294967295u, 21277u), ~vec3<u32>(arg_1.c.x, u_input.b, 0u))) ^ 0u);
    global1 = Struct_1(min(0u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 8696u, arg_1.c.x, var_2.x)), ~firstTrailingBit(vec4<u32>(10334u, global1.c.x, u_input.b, 16105u)))), global1.b, abs(~vec2<u32>(global1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(5545u, 0u, arg_1.c.x, 14753u), vec4<u32>(var_2.x, 1u, 0u, 0u)))), arg_2);
    return ~_wgslsmith_div_vec2_u32(global1.c, ~(~global1.c)) & arg_1.c;
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = -37386i;
    global0 = array<vec2<i32>, 20>();
    global1 = Struct_1(26410u, arg_0.b, func_5(abs(-abs(vec3<i32>(1i, u_input.a.x, var_0))), func_4(func_2(vec2<i32>(1i, 1i)), ~_wgslsmith_div_vec4_u32(vec4<u32>(28195u, 63204u, 14220u, u_input.b), vec4<u32>(29700u, global1.c.x, 4294967295u, u_input.b)), countOneBits(_wgslsmith_div_vec2_u32(global1.c, vec2<u32>(arg_0.c.x, 26477u)))), false, select(select(!vec2<bool>(arg_0.d, global1.d), select(vec2<bool>(false, true), vec2<bool>(global1.d, true), global1.d), arg_0.b.x < global1.b.x), !vec2<bool>(global1.d, false), !select(vec2<bool>(false, arg_0.d), vec2<bool>(global1.d, global1.d), false))), true);
    var var_1 = vec2<u32>(~_wgslsmith_sub_u32(~arg_0.a, 66603u), global1.c.x ^ _wgslsmith_clamp_u32(1u, arg_0.c.x, global1.c.x));
    let var_2 = -1i;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1708f - 1371f))), -905f);
}

fn func_6(arg_0: vec2<bool>, arg_1: f32) -> vec2<i32> {
    let var_0 = func_4(Struct_1(0u, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-353f, global1.b.x, arg_1) * global1.b), vec3<f32>(783f, 512f, -1441f)))), global1.c, _wgslsmith_f_op_f32(abs(global1.b.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-547f - global1.b.x))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(84939u, 85360u, 4294967295u), vec3<u32>(global1.c.x, firstTrailingBit(21731u), ~0u)), firstTrailingBit(u_input.b), global1.a, u_input.b), func_2(vec2<i32>(1i, _wgslsmith_mod_i32(0i, u_input.a.x >> (u_input.b % 32u)))).c);
    var var_1 = vec4<u32>(~(~(~u_input.b ^ _wgslsmith_clamp_u32(0u, 19913u, var_0.a))), ~(_wgslsmith_sub_u32(func_2(global2[_wgslsmith_index_u32(var_0.a, 12u)]).a, 72697u) ^ ~22016u), 56029u, firstTrailingBit(~0u));
    global0 = array<vec2<i32>, 20>();
    global2 = array<vec2<i32>, 12>();
    global0 = array<vec2<i32>, 20>();
    return _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(min(global2[_wgslsmith_index_u32(var_1.x, 12u)] << (var_0.c % vec2<u32>(32u)), max(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x))), u_input.a), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 26880i), min(vec3<i32>(u_input.a.x, 0i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), vec3<i32>(i32(-1i) * -1i, u_input.a.x, firstTrailingBit(u_input.a.x)))), -global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(max(var_1.zz, var_1.xx), ~vec2<u32>(1u, var_0.a)), u_input.b), 20u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -func_6(select(vec2<bool>(false, any(vec2<bool>(true, false))), vec2<bool>(true, global1.d), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(u_input.b, vec3<f32>(876f, global1.b.x, global1.b.x), vec2<u32>(global1.a, 0u), true)))));
    var var_1 = Struct_1(select(1u, countOneBits(global1.a), !func_4(Struct_1(4294967295u, global1.b, global1.c, true), max(vec4<u32>(72937u, u_input.b, 0u, 4294967295u), vec4<u32>(u_input.b, u_input.b, global1.c.x, 1u)), global1.c).d), vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(func_2(abs(var_0)).b.x - global1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) + _wgslsmith_f_op_f32(f32(-1f) * -1676f))), global1.c, global1.d);
    global0 = array<vec2<i32>, 20>();
    var var_2 = !(!vec3<bool>(false, true, abs(var_1.c.x) != 0u));
    var_2 = select(select(select(select(select(vec3<bool>(true, var_1.d, global1.d), vec3<bool>(global1.d, var_1.d, global1.d), vec3<bool>(true, true, false)), vec3<bool>(var_2.x, global1.d, true), global1.b.x >= -667f), vec3<bool>(var_1.d, all(var_2.yy), all(vec3<bool>(global1.d, var_1.d, true))), false), vec3<bool>(all(vec4<bool>(true, false, global1.d, var_1.d)) == all(var_2.xx), true, var_2.x | false), true && any(select(vec4<bool>(false, global1.d, var_1.d, global1.d), vec4<bool>(var_2.x, var_1.d, true, true), vec4<bool>(true, true, true, global1.d)))), vec3<bool>(all(!vec3<bool>(var_1.d, false, var_2.x)) || true, true, -16760i > firstTrailingBit(i32(-1i) * -2147483647i)), select(!vec3<bool>(true, any(vec4<bool>(global1.d, global1.d, false, true)), true), !(!vec3<bool>(false, var_1.d, false)), false));
    let var_3 = vec4<bool>(global1.d, true, false, global1.d);
    var var_4 = func_4(func_4(func_4(Struct_1(u_input.b & 63878u, _wgslsmith_f_op_vec3_f32(var_1.b + global1.b), ~var_1.c, var_1.c.x > u_input.b), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.a, global1.a, global1.a, global1.c.x), abs(vec4<u32>(global1.a, 118682u, 29284u, 57824u))), var_1.c), ~vec4<u32>(u_input.b, global1.a, 44678u << (global1.a % 32u), _wgslsmith_mod_u32(var_1.a, 4294967295u)), ~reverseBits(global1.c)), ~(~(vec4<u32>(global1.a, 7355u, 19419u, 12727u) ^ select(vec4<u32>(var_1.a, global1.c.x, global1.c.x, 42974u), vec4<u32>(4294967295u, u_input.b, global1.c.x, var_1.a), var_1.d))), vec2<u32>(_wgslsmith_dot_vec2_u32(var_1.c, ~max(vec2<u32>(global1.c.x, 20894u), global1.c)), func_4(Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.b.x, global1.b.x, global1.b.x))), _wgslsmith_div_vec2_u32(var_1.c, global1.c), var_1.b.x == 580f), select(vec4<u32>(var_1.c.x, 64358u, 0u, 27714u), vec4<u32>(36314u, 53608u, global1.c.x, 4294967295u), select(var_3, vec4<bool>(true, global1.d, false, true), var_3)), select(vec2<u32>(2056u, u_input.b), vec2<u32>(615u, 1u), var_3.xw)).c.x));
    var_1 = func_2(abs(u_input.a));
    var var_5 = firstLeadingBit(-29556i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(global1.b.yx, var_1.b.xy, select(var_3.xz, vec2<bool>(-284f > var_1.b.x, u_input.a.x < var_0.x), var_3.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -349f), _wgslsmith_f_op_f32(global1.b.x * -2079f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.b.x, var_1.b.x) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, var_4.b.x) - vec2<f32>(-701f, var_1.b.x))))), !select(vec2<bool>(var_1.d, var_4.d), var_3.yy, select(vec2<bool>(var_1.d, true), vec2<bool>(var_1.d, true), vec2<bool>(true, var_3.x))))), _wgslsmith_add_i32(~(-var_0.x), _wgslsmith_add_i32(u_input.a.x, ~2147483647i)) ^ -2147483647i, select(global1.a, ~81925u, true), _wgslsmith_f_op_f32(abs(-195f)));
}

