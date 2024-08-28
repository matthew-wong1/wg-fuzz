struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(78510u, 19284u, 0u, 22377u));

var<private> global1: i32 = 3213i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: f32) -> bool {
    var var_0 = Struct_1(abs(u_input.a));
    var var_1 = _wgslsmith_f_op_f32(-arg_1);
    var var_2 = true;
    let var_3 = ~(~global0.a.zy);
    let var_4 = !(!select(vec4<bool>(true, true, var_0.a.x >= global0.a.x, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec3<bool>(true, true, false)), true, u_input.b < u_input.b, true)));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: bool) -> Struct_1 {
    var var_0 = func_3(arg_0.a.x, -321f);
    global1 = 0i;
    var var_1 = 2336f;
    let var_2 = ~select(~min(_wgslsmith_mod_vec4_u32(arg_1.a, u_input.a), vec4<u32>(34169u, 0u, 1u, 26240u)), u_input.a, !(!(!vec4<bool>(true, true, arg_2.x, true))));
    var var_3 = _wgslsmith_mult_u32(~(~(~arg_0.a.x)), _wgslsmith_mult_u32(~_wgslsmith_add_u32(4294967295u, min(67928u, arg_1.a.x)), ~(~countOneBits(global0.a.x))));
    return Struct_1(~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(11201u, 0u, u_input.a.x, global0.a.x), u_input.a), arg_0.a));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = vec4<bool>(select(false, arg_0, !(arg_0 || !arg_0)), arg_0, func_3(abs(arg_1.a.x), 1000f), true);
    let var_1 = firstLeadingBit(vec3<i32>(-firstLeadingBit(u_input.b), ~_wgslsmith_add_i32(-u_input.b, firstTrailingBit(-17154i)), -36940i));
    let var_2 = func_2(func_2(Struct_1(arg_1.a), arg_1, select(!(!var_0), !select(vec4<bool>(true, arg_0, var_0.x, var_0.x), var_0, var_0), func_3(arg_1.a.x, _wgslsmith_f_op_f32(1053f + 1000f))), !all(vec3<bool>(arg_0, true, false))), Struct_1(vec4<u32>(84928u, firstTrailingBit(abs(337u)), (0u >> (0u % 32u)) & firstTrailingBit(4294967295u), ~_wgslsmith_sub_u32(1u, global0.a.x))), !select(!(!vec4<bool>(var_0.x, false, var_0.x, arg_0)), select(select(var_0, vec4<bool>(arg_0, arg_0, false, true), false), select(vec4<bool>(var_0.x, false, true, arg_0), var_0, arg_0), false), vec4<bool>(arg_0, var_1.x == var_1.x, true, any(vec4<bool>(false, var_0.x, arg_0, false)))), false);
    global1 = u_input.b;
    let var_3 = Struct_1(global0.a);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(787f - 1029f), _wgslsmith_f_op_f32(f32(-1f) * -100f), 1260f)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: u32) -> vec4<u32> {
    let var_0 = arg_1.x;
    global0 = func_2(func_2(Struct_1(vec4<u32>(56651u, abs(u_input.a.x), 0u, 91166u)), func_2(func_2(Struct_1(vec4<u32>(71722u, 48128u, 1u, global0.a.x)), Struct_1(u_input.a), vec4<bool>(true, true, true, true), true), Struct_1(global0.a), vec4<bool>(true, true, any(vec3<bool>(true, true, true)), false), true), select(vec4<bool>(arg_0.x < arg_0.x, true, all(vec3<bool>(true, true, true)), 93130u >= global0.a.x), vec4<bool>(true, false, false, true), true), select(false, true, !(arg_1.x != var_0))), func_2(Struct_1(vec4<u32>(firstTrailingBit(1u), global0.a.x, global0.a.x, global0.a.x << (1u % 32u))), Struct_1((vec4<u32>(global0.a.x, global0.a.x, 0u, u_input.a.x) ^ vec4<u32>(8492u, u_input.a.x, global0.a.x, 0u)) & ~u_input.a), !vec4<bool>(true, any(vec2<bool>(true, true)), true, 52795u < arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) != _wgslsmith_f_op_f32(f32(-1f) * -2267f)), vec4<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), arg_1.x <= arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x) < var_0, _wgslsmith_f_op_f32(arg_1.x - arg_0.x) <= 338f), !func_3(arg_2, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, var_0) * 519f)));
    global1 = -2147483647i;
    var var_1 = Struct_1(~vec4<u32>(1u, u_input.a.x, ~firstLeadingBit(u_input.a.x), u_input.a.x));
    var var_2 = vec3<bool>((false | (u_input.b == (-2147483647i ^ u_input.b))) & true, false, true);
    return vec4<u32>(~18453u, 63726u, 38628u, 1u);
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = u_input.a | ~func_5(_wgslsmith_f_op_vec3_f32(func_4(true, func_2(Struct_1(vec4<u32>(0u, u_input.a.x, u_input.a.x, 30631u)), Struct_1(vec4<u32>(49311u, 114382u, u_input.a.x, u_input.a.x)), vec4<bool>(true, false, true, false), false))), vec4<f32>(_wgslsmith_f_op_f32(748f * 1453f), arg_0.x, arg_0.x, arg_0.x), reverseBits(~global0.a.x));
    global0 = Struct_1(vec4<u32>(u_input.a.x, var_0.x, ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global0.a.zwz, global0.a.yzy), global0.a.wzz), ~68856u));
    var_0 = abs(firstTrailingBit(global0.a) ^ (~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global0.a.x, var_0.x, u_input.a.x), u_input.a) & _wgslsmith_add_vec4_u32(~global0.a, _wgslsmith_clamp_vec4_u32(global0.a, vec4<u32>(var_0.x, u_input.a.x, 30699u, 39614u), global0.a))));
    var var_1 = func_2(func_2(func_2(func_2(Struct_1(global0.a), Struct_1(vec4<u32>(global0.a.x, global0.a.x, 1u, var_0.x)), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, true))), Struct_1(vec4<u32>(global0.a.x, 6697u, 4294967295u, global0.a.x) << (vec4<u32>(global0.a.x, 14471u, u_input.a.x, 31604u) % vec4<u32>(32u))), vec4<bool>(false, arg_0.x != 1000f, true, true), false), Struct_1(vec4<u32>(~u_input.a.x, var_0.x, _wgslsmith_mod_u32(u_input.a.x, 0u), ~global0.a.x)), !vec4<bool>(-50082i < u_input.b, true, true, true), func_3(7009u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, -1085f))))), func_2(Struct_1(~_wgslsmith_div_vec4_u32(vec4<u32>(36063u, 31605u, u_input.a.x, 0u), vec4<u32>(22727u, 4294967295u, var_0.x, 30412u))), Struct_1(select(vec4<u32>(33881u, global0.a.x, u_input.a.x, global0.a.x), global0.a, vec4<bool>(true, true, true, true))), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true))), false), vec4<bool>(false & all(vec4<bool>(false, false, false, true)), any(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(false, false))), u_input.b < (i32(-1i) * -u_input.b), ~u_input.b <= u_input.b), ~u_input.b <= (-13017i & u_input.b));
    let var_2 = Struct_1((_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 1u, 0u, var_0.x), vec4<u32>(global0.a.x, 1u, var_0.x, global0.a.x)) << (u_input.a % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 19537u, 1u, var_1.a.x), vec4<u32>(13998u, 4640u, var_1.a.x, var_1.a.x)), ~(~vec4<u32>(1314u, global0.a.x, u_input.a.x, 25585u))) % vec4<u32>(32u)));
    return var_2;
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global1 = ~(~_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-632i, 10724i), vec2<i32>(-2147483647i, u_input.b)), select(vec2<i32>(arg_0, -1092i), vec2<i32>(0i, u_input.b), false)), -(vec2<i32>(u_input.b, 1i) << (arg_3.a.yz % vec2<u32>(32u)))));
    var var_0 = all(vec4<bool>(true, true, true, true));
    let var_1 = global0.a.x;
    var_0 = false;
    var var_2 = arg_0;
    return func_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(174f, -202f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_4(true, func_1(vec2<f32>(796f, 321f)))).zz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-385f, 212f)))))));
}

fn func_7(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    global0 = func_2(Struct_1(vec4<u32>(arg_1.a.x, ~_wgslsmith_div_u32(43376u, u_input.a.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4u, arg_1.a.x, u_input.a.x, arg_1.a.x), vec4<u32>(u_input.a.x, 4294967295u, 0u, u_input.a.x)), _wgslsmith_add_u32(global0.a.x, u_input.a.x))), arg_2, vec4<bool>(all(vec2<bool>(true, 168f >= arg_0)), true, false, any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true)) & (abs(u_input.b) != u_input.b)), !all(vec4<bool>(true, true, true, true)));
    global0 = Struct_1(vec4<u32>(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-880f, arg_0)))).a.x, abs(~arg_2.a.x), ~(~(~29283u)), arg_1.a.x));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(false, var_0)).x)))));
    let var_2 = true;
    return Struct_1(_wgslsmith_sub_vec4_u32(arg_2.a, global0.a) << (vec4<u32>(countOneBits(var_0.a.x | 0u), 43285u, func_2(arg_2, Struct_1(var_0.a), select(vec4<bool>(var_2, var_2, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, var_2, false)), !var_2).a.x, var_0.a.x) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -661f) - -303f))), func_6(-32592i, func_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-219f, 244f), vec2<f32>(-546f, -592f), select(vec2<bool>(true, false), vec2<bool>(true, false), true)))), Struct_1(select(vec4<u32>(global0.a.x, 89661u, 46239u, u_input.a.x), vec4<u32>(0u, 27019u, u_input.a.x, 0u), false) ^ (u_input.a | global0.a)), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-525f, 627f))))), func_2(Struct_1(_wgslsmith_sub_vec4_u32(global0.a, vec4<u32>(global0.a.x, u_input.a.x, u_input.a.x, 1u)) ^ (vec4<u32>(u_input.a.x, 1u, 13708u, global0.a.x) ^ u_input.a)), func_1(vec2<f32>(_wgslsmith_f_op_f32(162f + 999f), -1070f)), !vec4<bool>(any(vec2<bool>(false, false)), true, any(vec4<bool>(true, true, true, false)), true), !(~u_input.b != u_input.b)));
    var var_0 = any(vec4<bool>(true, true, false, any(vec3<bool>(true, true, true)) & !(u_input.b == 0i)));
    let var_1 = func_6(firstTrailingBit(u_input.b), Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(global0.a.wy, vec2<u32>(global0.a.x, global0.a.x)), select(4294967295u, u_input.a.x, true), 30539u, u_input.a.x)), Struct_1(~min(vec4<u32>(global0.a.x, 0u, u_input.a.x, u_input.a.x), vec4<u32>(21859u, global0.a.x, 15709u, global0.a.x))), Struct_1(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 2708u, 85866u, u_input.a.x)))).a.x < 4294967295u;
    var var_2 = -_wgslsmith_sub_i32(firstTrailingBit(~max(u_input.b, 30498i)), i32(-1i) * -_wgslsmith_sub_i32(8125i, u_input.b));
    var var_3 = !((_wgslsmith_f_op_vec3_f32(func_4(true, Struct_1(global0.a))).x >= _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-427f * -207f)))) && all(!(!vec2<bool>(var_1, var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-253f, -406f, -566f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 839f, -169f) - vec3<f32>(882f, 265f, -293f))))), abs((_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)) ^ _wgslsmith_mod_i32(-8004i, u_input.b)) | min(-1i, firstTrailingBit(u_input.b))), 16267u, 1i, u_input.b);
}

