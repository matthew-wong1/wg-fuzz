struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<u32, 6> = array<u32, 6>(4294967295u, 108297u, 24493u, 4294967295u, 4294967295u, 7969u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3, arg_3: i32) -> f32 {
    var var_0 = arg_0;
    var var_1 = Struct_2(false, arg_0.c.x, Struct_1(!arg_0.a, -firstTrailingBit(1i), select(vec4<bool>(true, !arg_1.a.x, arg_1.a.x, var_0.a.x), select(!vec4<bool>(arg_0.c.x, true, arg_0.c.x, true), vec4<bool>(false, arg_0.c.x, false, false), arg_0.a.x == false), false)), vec2<u32>(countOneBits(min(24133u, 1u)) & _wgslsmith_div_u32(u_input.e.x, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(0u, 6u)], global0.x)), ~(_wgslsmith_mod_u32(0u, 33248u) & _wgslsmith_sub_u32(0u, global1[_wgslsmith_index_u32(global0.x, 6u)]))));
    global0 = vec4<u32>(41267u, global0.x ^ max(firstLeadingBit(90959u) >> (global0.x % 32u), u_input.e.x), 1u, 4539u);
    var var_2 = Struct_3(417f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(arg_2.b)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a, arg_2.a, -660f, _wgslsmith_f_op_f32(sign(arg_2.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(678f, 340f, 605f, 419f)))), vec4<bool>(true, false, false, all(vec4<bool>(var_1.b, false, false, arg_0.c.x))))));
    var_1 = Struct_2(all(arg_0.c.ww), any(vec2<bool>(all(select(vec3<bool>(false, true, arg_1.a.x), var_1.c.c.wyz, var_0.c.wzw)), select(31687i != var_1.c.b, arg_1.a.x, any(vec2<bool>(arg_0.a.x, var_0.a.x))))), arg_0, max(u_input.e, select(abs(u_input.e), _wgslsmith_mod_vec2_u32(~u_input.c, vec2<u32>(54047u, 21191u)), true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.b.x)) - -364f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_2.a, arg_2.a)), arg_2.a))));
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_1 {
    var var_0 = -1118f;
    var var_1 = vec2<bool>(arg_1, true);
    var var_2 = Struct_3(216f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(397f + -1092f), 898f, false)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -989f))), 617f, 189f) * vec4<f32>(-1323f, _wgslsmith_f_op_f32(abs(-401f)), _wgslsmith_f_op_f32(select(1281f, _wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(false, arg_1, arg_1, true), arg_0, vec4<bool>(true, var_1.x, var_1.x, false)), Struct_1(vec4<bool>(true, var_1.x, true, arg_1), arg_0, vec4<bool>(true, true, arg_1, var_1.x)), Struct_3(-255f, vec4<f32>(120f, 848f, -615f, -184f)), 44729i)), all(vec2<bool>(true, arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(366f + -734f)))));
    let var_3 = var_2.a;
    var_1 = select(vec2<bool>(!(~0i >= u_input.a.x), all(vec4<bool>(arg_1, true, true, arg_1))), !vec2<bool>(all(!vec3<bool>(false, false, var_1.x)), true), !arg_1);
    return Struct_1(vec4<bool>(true, (~u_input.a.x << (firstTrailingBit(695u) % 32u)) > (_wgslsmith_dot_vec2_i32(vec2<i32>(6831i, arg_0), vec2<i32>(-28427i, arg_0)) >> (1u % 32u)), any(!select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(true, true, arg_1, false), true)), arg_1), _wgslsmith_div_i32(u_input.a.x, max(0i, arg_0)), vec4<bool>(var_1.x, all(!(!vec4<bool>(arg_1, false, false, arg_1))), !((-1000f > var_2.a) || arg_1), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), true))));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    global0 = ~abs(abs(~(~vec4<u32>(u_input.e.x, u_input.c.x, 0u, global1[_wgslsmith_index_u32(u_input.e.x, 6u)]))));
    var var_0 = Struct_2(select(arg_0, u_input.b.x, any(vec4<bool>(true, false, arg_1.c.x, false)) || arg_1.c.x) == _wgslsmith_clamp_i32(71862i, _wgslsmith_sub_i32(-2147483647i, arg_0) | (u_input.b.x << (global0.x % 32u)), arg_1.b), arg_1.a.x, arg_1, vec2<u32>(0u, global1[_wgslsmith_index_u32(1u, 6u)]));
    var_0 = Struct_2(any(arg_1.a.zzw), true, func_2(~(-63654i), false), reverseBits(~_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(u_input.e.x, 27133u)), vec2<u32>(33213u, var_0.d.x))));
    var var_1 = Struct_1(select(arg_1.c, func_2(-10922i | (0i << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38265u, 6u)], 6u)] % 32u)), true).a, vec4<bool>(var_0.b, any(var_0.c.a.wyx), arg_1.a.x, !(var_0.c.b <= arg_1.b))), abs(2147483647i), select(vec4<bool>(true, -1402f == _wgslsmith_f_op_f32(step(-547f, -954f)), all(var_0.c.a.wy) && any(var_0.c.c.yw), arg_1.c.x), !select(!arg_1.c, vec4<bool>(arg_1.a.x, var_0.a, var_0.c.a.x, arg_1.c.x), !vec4<bool>(var_0.a, true, false, arg_1.a.x)), !(var_0.c.b <= 9835i)));
    var_0 = Struct_2(!(any(arg_1.a.wx) && any(arg_1.c.xzw)) != func_2(abs(var_0.c.b), arg_1.c.x).a.x, arg_1.c.x, func_2(u_input.a.x, var_0.c.b >= -2147483647i), global0.yz);
    return Struct_2(var_0.b, arg_1.a.x, func_2(var_0.c.b, false), vec2<u32>(select(0u >> (global0.x % 32u), ~(~4294967295u), true), _wgslsmith_dot_vec2_u32(select(u_input.c, vec2<u32>(var_0.d.x, global0.x), vec2<bool>(true, var_0.a)), countOneBits(var_0.d))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> vec2<u32> {
    var var_0 = Struct_3(-353f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-500f, arg_2, arg_2, -1614f), vec4<f32>(1090f, arg_2, 972f, arg_2))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, arg_2, 1007f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 979f, arg_2, arg_2)))));
    let var_1 = Struct_2(true, !func_2(abs(33096i), all(func_2(arg_1.c.b, arg_1.b).c)).a.x, arg_0.c, global0.ww);
    global1 = array<u32, 6>();
    var var_2 = func_4(2147483647i >> ((arg_1.d.x ^ arg_1.d.x) % 32u), var_1.c).c;
    let var_3 = arg_0.c;
    return ~(~u_input.c);
}

fn func_1() -> Struct_3 {
    global1 = array<u32, 6>();
    var var_0 = Struct_1(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec3<bool>(true, false, false)), true, true, true), true), select(vec4<bool>(true, true, any(vec2<bool>(true, false)), true), vec4<bool>(false, true, true, false), true), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, all(vec2<bool>(false, true)), true), vec4<bool>(true, true, true, true))), u_input.d, vec4<bool>(true, true, false, any(vec2<bool>(true, true))));
    let var_1 = func_5(func_4(~0i, func_2(_wgslsmith_mod_i32(~2147483647i, -895i), true)), Struct_2(true, true, Struct_1(!var_0.c, var_0.b, var_0.c), select(vec2<u32>(abs(global1[_wgslsmith_index_u32(1u, 6u)]), firstTrailingBit(17887u)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 22945u), global0.zx) ^ vec2<u32>(global0.x, u_input.c.x), true)), 252f);
    var_0 = Struct_1(var_0.c, 2147483647i, var_0.a);
    let var_2 = 985f;
    return Struct_3(_wgslsmith_div_f32(1187f, _wgslsmith_f_op_f32(318f - var_2)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(var_0.a.x, var_0.c.x, true, true), 2147483647i, vec4<bool>(var_0.c.x, true, true, false)), Struct_1(vec4<bool>(var_0.a.x, var_0.c.x, var_0.c.x, true), -2147483647i, var_0.a), Struct_3(-1617f, vec4<f32>(386f, 133f, var_2, 1000f)), u_input.a.x)), _wgslsmith_f_op_f32(step(var_2, -1621f)), -897f, _wgslsmith_f_op_f32(step(var_2, var_2))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-130f, var_2, -1000f, -1082f) - vec4<f32>(var_2, var_2, var_2, var_2)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1312f, var_2, 432f, var_2) - vec4<f32>(-1000f, 132f, 281f, 464f)))) - vec4<f32>(-938f, var_2, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(floor(var_2)), func_4(u_input.a.x, Struct_1(vec4<bool>(var_0.a.x, false, true, true), u_input.b.x, vec4<bool>(var_0.c.x, var_0.c.x, var_0.a.x, false))).c.c.x)), _wgslsmith_f_op_f32(-var_2))));
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_2 {
    global1 = array<u32, 6>();
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(426f - arg_2.b.x))))) < _wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(-arg_2.a));
    global1 = array<u32, 6>();
    var_1 = false;
    return Struct_2(false, arg_3.a.x, arg_3, global0.ww);
}

fn func_7(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 53052u, global0.x >> (1u % 32u), ~14393u), ~max(vec4<u32>(arg_1.d.x, 25219u, u_input.e.x, global1[_wgslsmith_index_u32(arg_1.d.x, 6u)]), vec4<u32>(13951u, 41588u, 0u, 26557u))), _wgslsmith_add_vec4_u32(vec4<u32>(~global0.x, ~4294967295u, 1u, arg_1.d.x), firstTrailingBit(vec4<u32>(arg_1.d.x, 52441u, u_input.c.x, 1u))));
    let var_1 = arg_1;
    global1 = array<u32, 6>();
    let var_2 = Struct_3(273f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-182f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-223f - -3520f) - _wgslsmith_f_op_f32(-144f - -1363f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-442f, -1376f)), _wgslsmith_f_op_f32(select(-1000f, 430f, arg_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -734f)))));
    global0 = ~(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, 35641u, global1[_wgslsmith_index_u32(4294967295u, 6u)], 23516u), _wgslsmith_mod_vec4_u32(vec4<u32>(74874u, global1[_wgslsmith_index_u32(var_1.d.x, 6u)], 17124u, var_1.d.x), vec4<u32>(var_1.d.x, 4294967295u, arg_1.d.x, var_0.x)))) & ((vec4<u32>(878u, 67057u, var_0.x, 4294967295u) | abs(vec4<u32>(var_1.d.x, 83479u, arg_1.d.x, global0.x))) << (~vec4<u32>(var_0.x, 4294967295u, 2273u, 4294967295u) % vec4<u32>(32u))));
    return Struct_1(!var_1.c.c, -_wgslsmith_add_i32(_wgslsmith_sub_i32(var_1.c.b, -2147483647i), 0i), func_6(Struct_3(_wgslsmith_f_op_f32(-1601f - _wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_2.b, var_2.b)))), _wgslsmith_mult_i32(arg_1.c.b, _wgslsmith_dot_vec3_i32(u_input.b, max(u_input.a.yyw, u_input.b))), func_1(), Struct_1(arg_1.c.c, arg_1.c.b, select(!vec4<bool>(true, true, var_1.c.a.x, var_1.b), var_1.c.c, !var_1.c.c))).c.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.a.x > -_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, -12159i, u_input.a.x, u_input.b.x), vec4<i32>(u_input.d, u_input.d, -2147483647i, 2147483647i)), false || !all(vec3<bool>(true, true, true)), func_7(1i, func_6(func_1(), u_input.a.x, func_1(), Struct_1(vec4<bool>(false, false, true, false), -40597i, vec4<bool>(true, false, true, false)))), select(~global0.xz, global0.zz, func_2(u_input.a.x, !any(vec2<bool>(false, true))).c.x));
    let var_1 = func_4(-(countOneBits(var_0.c.b) << (abs(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(7871u, 6u)], var_0.d.x)) % 32u)), func_2(i32(-1i) * -2147483647i, true)).c;
    global0 = ~vec4<u32>(min(~4294967295u, 4294967295u), 35227u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.c.x), global0.x, 0u, ~4294967295u), ~(~vec4<u32>(global1[_wgslsmith_index_u32(0u, 6u)], 2847u, 0u, u_input.e.x))), 6u)], var_0.d.x);
    global0 = vec4<u32>(global0.x, firstLeadingBit(29696u), ~firstLeadingBit(countOneBits(4294967295u)) >> (0u % 32u), 0u);
    global1 = array<u32, 6>();
    var var_2 = func_4(~(-(~1i)), func_2(2147483647i, true));
    let var_3 = Struct_1(func_7(select(~(i32(-1i) * -2147483647i), var_0.c.b, all(!vec2<bool>(false, var_0.c.c.x))), var_0).a, ~(-48150i), vec4<bool>(var_2.b, false, var_2.b | (-540f != _wgslsmith_f_op_f32(floor(1668f))), _wgslsmith_dot_vec2_i32(vec2<i32>(22254i, var_0.c.b), vec2<i32>(u_input.b.x, -29441i)) == _wgslsmith_add_i32(firstLeadingBit(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(7974i, var_0.c.b), u_input.b.yx))));
    let var_4 = func_7(_wgslsmith_mod_i32(u_input.b.x, var_2.c.b), func_6(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1197f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1774f, 1608f, 1836f, -276f) + vec4<f32>(1770f, -1144f, -1449f, -1393f)))), u_input.b.x, Struct_3(func_1().b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-667f, 1000f, 778f, -748f) + vec4<f32>(785f, 366f, 1111f, 839f)))), func_2(var_0.c.b, false))).c.zx;
    let x = u_input.a;
    s_output = StorageBuffer(max((vec4<u32>(11800u, var_2.d.x, 12029u, global0.x) & vec4<u32>(var_2.d.x, global1[_wgslsmith_index_u32(0u, 6u)], var_0.d.x, var_2.d.x)) | firstTrailingBit(vec4<u32>(u_input.e.x, 4294967295u, global1[_wgslsmith_index_u32(u_input.c.x, 6u)], 5973u)), select(vec4<u32>(83069u, var_2.d.x, 12904u, global1[_wgslsmith_index_u32(4294967295u, 6u)]) | vec4<u32>(var_0.d.x, 4294967295u, 0u, 37601u), ~vec4<u32>(4294967295u, 53010u, global0.x, var_2.d.x), var_0.c.a.x && var_2.b) << (~(~vec4<u32>(u_input.c.x, 36388u, global0.x, var_2.d.x)) % vec4<u32>(32u))));
}

