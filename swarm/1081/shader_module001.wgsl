struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(94709u, 16019u), vec2<i32>(2869i, 6079i), vec2<f32>(-2684f, 568f), true, 0i);

var<private> global2: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: u32) -> i32 {
    global0 = array<Struct_1, 1>();
    var var_0 = _wgslsmith_div_i32(~((u_input.d.x >> (u_input.c.x % 32u)) >> (94471u % 32u)), u_input.d.x);
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(global1.c)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, global1.c.x))))), global1.d);
    var var_2 = select(!(!(!(!vec3<bool>(false, true, arg_2)))), select(vec3<bool>(true, !(!arg_2), all(select(vec3<bool>(var_1.b, global1.d, false), vec3<bool>(arg_2, true, true), vec3<bool>(arg_2, false, arg_2)))), vec3<bool>(!all(vec2<bool>(var_1.b, false)), !all(global2[_wgslsmith_index_u32(1u, 13u)]), true), true), select(vec3<bool>(arg_2, !var_1.b, false), select(select(!vec3<bool>(var_1.b, global1.d, false), vec3<bool>(global1.d, arg_2, global1.d), vec3<bool>(false, var_1.b, false)), vec3<bool>(true, true, true), arg_2), select(!vec3<bool>(true, global1.d, false), vec3<bool>(true, false, var_1.b | global1.d), !select(vec3<bool>(false, global1.d, true), vec3<bool>(false, arg_2, global1.d), global1.d))));
    global0 = array<Struct_1, 1>();
    return -2258i;
}

fn func_2(arg_0: vec2<f32>) -> vec2<i32> {
    var var_0 = vec4<u32>(reverseBits(1u), 12310u, 0u, ~4294967295u >> (firstTrailingBit(~(~1u)) % 32u));
    var var_1 = func_3(min(~u_input.c.x, ~select(42606u, 1143u, true)) >> (~22389u % 32u), global1.e, false, ~_wgslsmith_sub_u32(~var_0.x, ~1u));
    var var_2 = firstTrailingBit(reverseBits(select(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(3971i, global1.b.x, u_input.d.x, global1.e), vec4<i32>(global1.e, 36305i, 8044i, u_input.b)), u_input.d.x & -24482i, -u_input.d.x, u_input.a), vec4<i32>(-60986i, u_input.b, 1i, u_input.d.x) & -vec4<i32>(27761i, 35477i, global1.e, global1.b.x), !(!vec4<bool>(global1.d, global1.d, global1.d, true)))));
    let var_3 = u_input.d;
    var_2 = ~vec4<i32>(min(-2147483647i, global1.e), ~_wgslsmith_add_i32(global1.e, 29052i), ~(-1017i), var_3.x) << ((u_input.c | ~countOneBits(vec4<u32>(8122u, global1.a.x, 4294967295u, 4294967295u))) % vec4<u32>(32u));
    return (vec2<i32>(~(-2147483647i), -2147483647i & u_input.b) << ((vec2<u32>(abs(0u), u_input.c.x) ^ vec2<u32>(0u, ~5416u)) % vec2<u32>(32u))) >> (var_0.yz % vec2<u32>(32u));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_1) -> Struct_3 {
    let var_0 = ~_wgslsmith_mult_i32(_wgslsmith_add_i32(2147483647i ^ arg_2, select(26183i >> (arg_3.a.x % 32u), global1.e, false)), max(1327i, select(-2147483647i, firstTrailingBit(-70352i), arg_1.x)));
    let var_1 = 24726u;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(436f, 1359f, -235f), vec3<f32>(1641f, 539f, arg_3.c.x), vec3<bool>(arg_1.x, true, arg_3.d))), _wgslsmith_div_vec3_f32(vec3<f32>(-591f, -1979f, arg_3.c.x), vec3<f32>(global1.c.x, arg_3.c.x, global1.c.x))))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-624f)) - _wgslsmith_f_op_f32(-arg_3.c.x)), _wgslsmith_f_op_f32(-arg_3.c.x))));
    global2 = array<vec2<bool>, 13>();
    var_2 = vec3<f32>(-2879f, _wgslsmith_f_op_f32(427f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.c.x, _wgslsmith_f_op_f32(select(-245f, global1.c.x, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.c.x, 379f))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-721f, 1882f), var_2.zy)))), arg_1.x);
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_div_u32(global1.a.x, 20030u);
    var var_1 = ~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(arg_2.x, global1.a.x, global1.a.x), arg_2, global1.d), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, global1.a.x), vec3<u32>(17147u, 47751u, 3090u)) & vec3<u32>(arg_2.x, u_input.c.x, 32221u)), vec3<u32>(u_input.c.x, 0u, _wgslsmith_mult_u32(1u, ~global1.a.x)));
    let var_2 = func_4(vec3<i32>(-firstLeadingBit(-24126i), _wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.d.x, global1.e, global1.b.x) >> (arg_2 % vec3<u32>(32u))), select(-u_input.d, ~u_input.d, all(vec2<bool>(false, false)))), ~abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3, 0i, 30177i, -2147483647i), vec4<i32>(arg_1.b.x, -15295i, 1i, 47187i)))), !(!vec4<bool>(global1.d, arg_0 == 620f, global1.d || global1.d, global1.d)), ~arg_3, Struct_1(var_1.yy, func_2(global1.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.c.x), -251f) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(916f, arg_0) - vec2<f32>(827f, arg_0))))), !(!any(vec4<bool>(global1.d, true, global1.d, global1.d))), -abs(10168i >> (global1.a.x % 32u))));
    let var_3 = 2147483647i;
    let var_4 = arg_1;
    return firstLeadingBit(1u);
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(109268u, 1u)];
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(31256u, global1.a.x), 1u)];
    var var_1 = func_4(u_input.d, vec4<bool>(true, var_0.b.x <= func_3(abs(4294967295u), global1.b.x, 1u > global1.a.x, arg_0), arg_1.d, true), abs(min(var_0.e, -1i)), Struct_1(vec2<u32>(arg_1.a.x, 46255u >> (u_input.c.x % 32u)), ~vec2<i32>(22491i, var_0.e), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.c.x, 1390f))), all(vec4<bool>(true, global1.d, global1.d, global1.d)) & all(select(vec3<bool>(false, global1.d, false), vec3<bool>(arg_1.d, true, true), vec3<bool>(global1.d, true, global1.d))), abs(global1.b.x ^ ~16046i)));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~abs(max(arg_1.a.x | 1u, min(22877u, arg_0))), 98722u), 1u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.c.x, -232f, _wgslsmith_f_op_f32(444f + -299f))));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 1>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global1.c))))) - vec2<f32>(-429f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.c.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.c.x))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-856f, var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.x, 202f))))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(168f)), 816f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))) * 1721f)));
    global2 = array<vec2<bool>, 13>();
    var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.x, global1.c.x)), _wgslsmith_f_op_f32(func_5(func_1(global1.c.x, Struct_2(1i, vec3<i32>(-20437i, u_input.a, u_input.d.x)), u_input.c.xyy, 0i), global0[_wgslsmith_index_u32(u_input.c.x, 1u)])), -1762f) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.x)), var_1.x, global1.c.x))))));
    var var_2 = vec3<u32>(countOneBits(min(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), firstLeadingBit(28847u)) >> (func_1(_wgslsmith_f_op_f32(step(var_1.x, -1000f)), Struct_2(u_input.a, u_input.d), u_input.c.zzw | vec3<u32>(0u, u_input.c.x, u_input.c.x), _wgslsmith_div_i32(global1.e, -1i)) % 32u)), countOneBits(~func_1(_wgslsmith_f_op_f32(1703f + 108f), Struct_2(u_input.a, u_input.d), ~vec3<u32>(u_input.c.x, global1.a.x, 0u), global1.b.x)), 9997u);
    var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(global1.c.x, -668f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1599f + -1424f), -798f)));
    global1 = Struct_1(~countOneBits(~firstLeadingBit(var_2.zx)), global1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, 382f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-172f, 741f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(408f, global1.c.x)))))), true, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(vec4<i32>(max(countOneBits(0i), 1i), -global1.b.x, global1.b.x, func_2(vec2<f32>(-1041f, -865f)).x), (abs(vec4<i32>(-39855i, u_input.a, -13713i, 46811i)) << (_wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(global1.a.x, 0u, u_input.c.x, 1u)) % vec4<u32>(32u))) ^ ~(vec4<i32>(40947i, global1.b.x, 0i, -2147483647i) ^ vec4<i32>(0i, -17660i, u_input.a, u_input.a)), vec4<i32>(global1.e, -2147483647i, ~global1.b.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(global1.b.x, 0i), 24856i, min(2147483647i, 2147483647i)))), _wgslsmith_f_op_f32(-global1.c.x));
}

