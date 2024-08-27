struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<i32>,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(-1i, i32(-2147483648), 2147483647i, 2147483647i));

var<private> global1: array<Struct_3, 32>;

var<private> global2: bool = true;

var<private> global3: u32;

var<private> global4: f32;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> vec3<bool> {
    return vec3<bool>(true, true, true);
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: i32) -> bool {
    let var_0 = false;
    let var_1 = Struct_2(vec4<u32>(countOneBits(~30485u), select(15066u, _wgslsmith_mult_u32(50951u, 0u), true), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(25392u, 0u, 56088u), ~7554u, 0u), 21811u) & (~vec4<u32>(1u, 1u, 1u, 1u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1762f - 209f), 874f, _wgslsmith_f_op_f32(-arg_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1077f, -211f, -1683f))), _wgslsmith_mod_u32(12076u, firstTrailingBit(countOneBits(60280u)))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(473f, arg_0.x, arg_0.x)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(141f, 2339f, 136f), vec3<f32>(arg_0.x, 381f, -1597f)))), vec3<f32>(_wgslsmith_f_op_f32(arg_0.x * 850f), 386f, _wgslsmith_f_op_f32(-arg_0.x))), 8514u), arg_2);
    global0 = array<vec4<i32>, 1>();
    global3 = 26361u;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(400f - arg_0.x)))) - arg_0.x);
    return arg_1;
}

fn func_1() -> Struct_3 {
    let var_0 = vec3<i32>(-(76505i ^ firstTrailingBit(-50423i)), -2605i, u_input.a.x);
    let var_1 = vec4<bool>(!(!any(vec2<bool>(false, true)) | all(vec4<bool>(true, true, true, true))), all(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), false)), !(!any(func_2())), !any(vec3<bool>(false, any(vec3<bool>(false, true, true)), true)));
    global2 = !select(!(all(var_1.wxz) && var_1.x), false, func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1121f, -845f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-147f, -539f))), !var_1.x | any(vec3<bool>(var_1.x, var_1.x, true)), _wgslsmith_clamp_i32(1i, -25861i, 17737i) | 0i));
    var var_2 = Struct_4(firstLeadingBit(select(21213i, ~0i, var_1.x)), vec3<i32>(~(-2147483647i), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, var_0.x, var_0.x, var_0.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_0.x, var_0.x), select(vec4<i32>(u_input.a.x, u_input.a.x, var_0.x, 1i), vec4<i32>(480i, 9118i, 4554i, 1i), var_1.x))), u_input.a.x), _wgslsmith_div_vec4_i32(~countOneBits(vec4<i32>(-2147483647i, -18795i, u_input.a.x, -1i) << (vec4<u32>(47758u, 0u, 0u, 0u) % vec4<u32>(32u))), ~global0[_wgslsmith_index_u32(~(~13770u), 1u)]));
    global1 = array<Struct_3, 32>();
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -473f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1213f, -1000f) - vec2<f32>(-600f, 301f))))), false);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_5) -> u32 {
    global3 = _wgslsmith_clamp_u32(1u | ~abs(_wgslsmith_clamp_u32(57763u, 19497u, 0u)), countOneBits(1u), abs(1u));
    global2 = !arg_0.b != all(!vec3<bool>(true, all(vec2<bool>(arg_0.b, false)), false));
    global2 = arg_0.b;
    var var_0 = min(vec3<i32>(_wgslsmith_clamp_i32((arg_3.b.x << (1u % 32u)) | firstTrailingBit(u_input.a.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a.x, 0i), 139043i), select(u_input.a.x, _wgslsmith_mod_i32(arg_3.a.c.x, arg_3.b.x), false)), _wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, -15693i, 1i), arg_2.xyy), arg_2.x), u_input.a.x), _wgslsmith_div_vec3_i32(vec3<i32>(arg_2.x, -firstLeadingBit(-16094i), arg_1), vec3<i32>(_wgslsmith_mod_i32(22002i, ~arg_2.x), 2147483647i, u_input.a.x)));
    global0 = array<vec4<i32>, 1>();
    return 26938u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(select(~func_4(func_1(), u_input.a.x, global0[_wgslsmith_index_u32(78047u, 1u)], Struct_5(Struct_4(2147483647i, vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), global0[_wgslsmith_index_u32(0u, 1u)]), abs(vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(-730f * 1086f), countOneBits(global0[_wgslsmith_index_u32(1u, 1u)]))), 0u, !func_2().x), 32u)];
    var var_1 = Struct_2(vec4<u32>(reverseBits(~4294967295u), ~8057u, countOneBits(abs(~0u)), abs(abs(1u))), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a.x, var_0.a.x, 568f), vec3<f32>(942f, -329f, var_0.a.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-677f, var_0.a.x, -175f), vec3<f32>(1025f, var_0.a.x, -1498f), vec3<bool>(var_0.b, var_0.b, var_0.b))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.x, -907f, -1864f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, -1151f, var_0.a.x) - vec3<f32>(283f, var_0.a.x, 178f))))), ~(~reverseBits(27033u))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-3200f, var_0.a.x, var_0.a.x))))) - vec3<f32>(767f, var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~70815u, 1u, ~6457u), ~(~vec4<u32>(37900u, 1u, 11936u, 4294967295u)))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(~(15352i >> (1u % 32u)), ~1i), -select(u_input.a.x, 72081i, true)));
    var_0 = global1[_wgslsmith_index_u32(abs(~var_1.b.b) | var_1.b.b, 32u)];
    var var_2 = var_0.b;
    var var_3 = reverseBits(_wgslsmith_add_i32(~(-100i) >> (firstLeadingBit(1u) % 32u), u_input.a.x)) & ~((u_input.a.x ^ -u_input.a.x) & (1i ^ _wgslsmith_add_i32(u_input.a.x, -36330i)));
    global2 = var_0.b;
    let var_4 = select(vec4<bool>(true, true, var_0.b, !var_0.b), vec4<bool>(true, !(!var_0.b), !var_0.b, var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.a.x, -257f)), true, u_input.a.x)));
    var_2 = any(select(select(!var_4, !(!vec4<bool>(var_4.x, true, false, var_0.b)), var_4), vec4<bool>(var_0.b, func_2().x, var_4.x, var_4.x), var_4));
    let var_5 = Struct_2(vec4<u32>(~_wgslsmith_mod_u32(~1u, 76966u), 22620u, ~24755u, var_1.a.x), var_1.c, var_1.c, -(u_input.a.x >> (var_1.c.b % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, max(var_5.d, var_5.d)), select(_wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a.x, 32276i), vec2<i32>(u_input.a.x, u_input.a.x)), ~u_input.a.zx, var_4.zx)), ~(~abs(vec3<u32>(var_1.c.b, var_5.b.b, var_5.b.b))), ~_wgslsmith_sub_i32(_wgslsmith_mult_i32(-36272i, -36296i), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)) | _wgslsmith_div_i32(min(countOneBits(var_5.d), var_5.d << (4294967295u % 32u)), min(-13145i, 1i)), global0[_wgslsmith_index_u32(abs(abs(1u << (firstLeadingBit(36346u) % 32u))), 1u)], ~select(var_5.a.xyz, var_1.a.xww, false));
}

