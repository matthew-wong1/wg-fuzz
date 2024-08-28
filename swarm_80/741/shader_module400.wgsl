struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2 = Struct_2(vec3<u32>(8580u, 0u, 19324u), Struct_1(false, true, false, vec4<i32>(-45048i, 8274i, 1i, -57946i)), 37514u, Struct_1(true, true, false, vec4<i32>(1i, -48622i, -26535i, i32(-2147483648))), Struct_1(true, true, true, vec4<i32>(-26250i, 2147483647i, 1i, 0i)));

var<private> global2: f32;

var<private> global3: array<Struct_3, 4>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: u32, arg_3: bool) -> bool {
    let var_0 = !(4294967295u < ~_wgslsmith_div_u32(min(u_input.a.x, arg_2), _wgslsmith_clamp_u32(global0.b.c, 59435u, global1.c)));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1000f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(328f + _wgslsmith_f_op_f32(f32(-1f) * -1748f)))));
    var var_1 = select(select(vec3<bool>(var_0, false, !(global1.a.x > 1u)), select(!(!vec3<bool>(arg_3, global0.b.b.c, false)), vec3<bool>(true, all(vec3<bool>(true, false, true)), var_0), global0.a.x < _wgslsmith_f_op_f32(-global0.a.x)), !select(select(vec3<bool>(false, global1.e.a, var_0), vec3<bool>(true, global1.e.b, false), false), vec3<bool>(true, global0.b.d.a, true), !vec3<bool>(true, var_0, global0.b.b.b))), !(!vec3<bool>(global0.b.d.a, any(vec2<bool>(var_0, true)), false)), vec3<bool>(arg_3, arg_3 & all(vec3<bool>(true, false, true)), true));
    global3 = array<Struct_3, 4>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(global0.a.x, 1270f))), global0.a.x) + global0.a.x);
    return true;
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_2 {
    let var_0 = !select(vec4<bool>(arg_1, arg_1, !(global1.c != u_input.a.x), false & (arg_1 | global0.b.b.b)), !(!select(vec4<bool>(global0.b.b.a, global0.b.d.b, true, global0.b.e.b), vec4<bool>(false, global0.b.b.c, false, arg_1), global1.b.b)), !arg_1);
    var var_1 = Struct_1(true, true, true, vec4<i32>(_wgslsmith_clamp_i32(-abs(global0.b.d.d.x), 0i, 1i), -4747i, -40182i >> (_wgslsmith_mod_u32(6685u, u_input.a.x << (66770u % 32u)) % 32u), _wgslsmith_clamp_i32(1i, i32(-1i) * -2147483647i, 0i)));
    let var_2 = !select(select(select(var_0.zx, !var_0.wx, select(var_0.yy, var_0.yz, var_1.b)), vec2<bool>(false & var_1.a, true), vec2<bool>(true, true)), vec2<bool>(func_3(_wgslsmith_mod_u32(0u, global0.b.a.x), 0i, ~43193u, true), arg_1), !var_1.a);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1303f * _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-global0.a.x))));
    global3 = array<Struct_3, 4>();
    return global0.b;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> vec4<i32> {
    var var_0 = global0.b.a;
    let var_1 = firstLeadingBit(u_input.b);
    var_0 = arg_1.a;
    global1 = func_2(arg_0.x, global1.e.b);
    var var_2 = global0.a.x;
    return firstTrailingBit(global0.b.d.d);
}

fn func_4(arg_0: bool, arg_1: vec4<i32>) -> vec3<bool> {
    global1 = func_2(-1390f, all(select(vec2<bool>(all(vec4<bool>(global1.b.b, global1.b.a, false, true)), true), select(vec2<bool>(global0.b.d.b, global1.e.a), select(vec2<bool>(global1.e.a, true), vec2<bool>(arg_0, true), vec2<bool>(false, arg_0)), false), !any(vec3<bool>(true, false, false)))));
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a.x * 1153f))) * _wgslsmith_f_op_f32(round(global0.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-909f - 684f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * global0.a.x))))), _wgslsmith_f_op_vec2_f32(exp2(global0.a)));
    let var_1 = func_2(408f, func_2(_wgslsmith_f_op_f32(-global0.a.x), global1.b.c).c == 0u);
    var var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.yw, ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_1.c), max(global1.a.xx, global0.b.a.xy))), max(global1.a.yy, ~vec2<u32>(4294967295u, global1.a.x & global1.c)));
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-global0.a.x)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1423f, _wgslsmith_f_op_f32(-183f + 1000f)) + var_0)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global0.a.x, -1000f), _wgslsmith_f_op_f32(-191f + -206f))), func_2(_wgslsmith_f_op_f32(-1f), false).b.b));
    return vec3<bool>(func_3(global0.b.a.x, 0i, max(_wgslsmith_mod_u32(var_2.x, 4294967295u) << (_wgslsmith_dot_vec2_u32(global1.a.xx, var_3.b.a.zz) % 32u), _wgslsmith_mod_u32(35075u, var_1.c) >> (abs(var_3.b.a.x) % 32u)), false), true, any(select(vec2<bool>(false, func_2(global0.a.x, global1.b.c).b.c), !select(vec2<bool>(true, arg_0), vec2<bool>(global1.e.b, true), true), true)));
}

fn func_5(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global0.a), global0.a)), Struct_2(global1.a, Struct_1(!(global0.b.a.x > u_input.a.x), !(!arg_0.x), global1.b.c, func_2(global0.a.x, u_input.a.x != 0u).e.d), 0u, Struct_1(!global1.e.b, global0.b.e.b, true, vec4<i32>(-1i) * -global1.d.d), func_2(-3311f, true).b));
    let var_1 = vec2<bool>(true, true);
    var var_2 = -435f;
    global0 = global3[_wgslsmith_index_u32(var_0.b.c, 4u)];
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, global0.a.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 401f)))))), func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * global0.a.x)))), !(!all(var_1))));
    return Struct_2(~global0.b.a, func_2(-508f, !func_2(var_0.a.x, true).e.b).d, ~1u, global0.b.d, Struct_1(true, select(true, abs(-28992i) == (u_input.b ^ global0.b.d.d.x), global0.b.b.a), var_1.x, vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, var_0.b.b.d.x, var_0.b.b.d.x, -2147483647i), _wgslsmith_add_vec4_i32(global0.b.b.d, var_0.b.b.d)), _wgslsmith_mult_i32(func_1(vec4<f32>(433f, var_0.a.x, global0.a.x, global0.a.x), Struct_2(global0.b.a, Struct_1(arg_0.x, var_0.b.b.b, arg_0.x, global1.b.d), var_0.b.a.x, Struct_1(global1.e.c, var_1.x, global0.b.d.c, global1.d.d), global1.b), -74i, 23419i).x, -1i), _wgslsmith_sub_i32(-1i, global0.b.b.d.x), -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(func_4(!(global0.b.d.c | !global0.b.b.a), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a.x, -824f, -1884f, global0.a.x), vec4<f32>(-1647f, global0.a.x, global0.a.x, global0.a.x)))), Struct_2(_wgslsmith_add_vec3_u32(global0.b.a, vec3<u32>(4294967295u, 4294967295u, global0.b.a.x)), Struct_1(false, global0.b.e.b, global0.b.b.b, global1.d.d), 1u, global0.b.b, global1.d), i32(-1i) * -u_input.b, global1.d.d.x)), _wgslsmith_sub_u32(4294967295u & ~global1.c, 0u), countOneBits(vec2<u32>(global1.a.x, _wgslsmith_sub_u32(4294967295u, global1.a.x))));
    var var_0 = global0.b.b.d.x;
    var_0 = global0.b.e.d.x;
    global0 = Struct_3(global0.a, func_5(vec3<bool>(true, true, true), func_5(select(func_4(global0.b.b.b, vec4<i32>(u_input.b, global1.d.d.x, -28793i, 34385i)), !vec3<bool>(global1.b.b, global1.b.a, true), global0.b.e.c), u_input.a.x, _wgslsmith_add_vec2_u32(vec2<u32>(18697u, 23194u), u_input.a.zx)).c, u_input.a.xy));
    global1 = Struct_2(~func_5(vec3<bool>(true, true, all(vec2<bool>(global0.b.d.a, global1.e.a))), global0.b.a.x, _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(global0.b.c, global1.c)), vec2<u32>(0u, 1u), ~vec2<u32>(global1.c, u_input.a.x))).a, func_5(!func_4(global0.b.d.d.x >= -33681i, global1.d.d), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(29738u, ~1u, abs(0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(0u, u_input.a.x)) | ~u_input.a.x), global0.b.a.zz).b, ~(~(1u >> (0u % 32u))), Struct_1(true, !global0.b.d.b, func_3(_wgslsmith_clamp_u32(global0.b.a.x, 1u, u_input.a.x) | ~0u, firstLeadingBit(1i), select(10813u, 74666u | global0.b.c, false), global1.e.b), global1.b.d), Struct_1((_wgslsmith_dot_vec2_u32(global1.a.xz, u_input.a.zx) & u_input.a.x) == ~4294967295u, select(u_input.a.x < u_input.a.x, func_3(22499u, global0.b.e.d.x, global0.b.c, !global1.e.c), true), !(!(false & global1.b.b)), -(~(~vec4<i32>(0i, global0.b.d.d.x, global0.b.e.d.x, 0i)))));
    var var_1 = vec3<bool>(u_input.b == (_wgslsmith_add_i32(~22398i, ~(-1i)) ^ ~global1.e.d.x), true, true);
    global3 = array<Struct_3, 4>();
    global2 = global0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, func_5(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, global1.b.c), vec3<bool>(true, global0.b.d.c, false), vec3<bool>(global0.b.d.a, false, global0.b.b.b)), vec3<bool>(all(vec4<bool>(global1.e.b, global0.b.b.c, global1.e.a, false)), all(vec4<bool>(false, global1.b.a, global1.d.b, global1.b.c)), -1756f > global0.a.x)), _wgslsmith_clamp_u32(firstTrailingBit(40870u), 1u, 3414u << (global1.c % 32u)) << (_wgslsmith_mult_u32(global1.c, ~global1.c) % 32u), u_input.a.zz).d.d.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-451f, global0.a.x, 1284f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.a.x, global0.a.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, 644f) + vec3<f32>(-704f, 872f, 738f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -1000f, -848f))))), global0.a.x, u_input.a);
}

