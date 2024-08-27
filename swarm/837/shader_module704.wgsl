struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<i32>, 32>;

var<private> global2: vec4<bool>;

var<private> global3: Struct_1;

var<private> global4: u32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> u32 {
    let var_0 = global0.c;
    var var_1 = firstLeadingBit(vec4<i32>(-36499i << (1u % 32u), ~firstLeadingBit(17014i), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.e, -82162i)), vec2<i32>(u_input.e, u_input.e) | vec2<i32>(u_input.e, 18164i)), -(~u_input.e)) & -vec4<i32>(_wgslsmith_div_i32(-1i, u_input.e), u_input.a | -70564i, 1i, abs(-1i)));
    global1 = array<vec2<i32>, 32>();
    var var_2 = u_input.b;
    return _wgslsmith_add_u32(u_input.c ^ ~abs(~u_input.d), 27107u | abs(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.c), vec2<u32>(4294967295u, 181143u)), 41585u | u_input.c)));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = Struct_2(global0.a, Struct_1(all(!select(vec4<bool>(global3.a, arg_0, true, global0.b.a), vec4<bool>(true, true, false, true), vec4<bool>(false, global2.x, false, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.a, 1485f))), _wgslsmith_f_op_vec2_f32(global0.c * global0.c)), global0.c, select(vec2<bool>(global3.a, false), select(global2.yw, vec2<bool>(false, true), vec2<bool>(true, false)), false != global3.a)))));
    var var_1 = i32(-1i) * -87656i;
    global3 = Struct_1(false);
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-408f)) * _wgslsmith_f_op_f32(-var_0.c.x)), global0.b, vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.c.x)), 406f));
    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(-global0.c.x)))), 1605f), global0.b, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(-global0.a))))));
    return u_input.b;
}

fn func_2(arg_0: f32) -> Struct_4 {
    global4 = _wgslsmith_mod_u32((u_input.d ^ ~func_3(global3.a)) & 52132u, 0u);
    var var_0 = vec2<u32>(reverseBits(reverseBits(~u_input.d)), u_input.c);
    var var_1 = global1[_wgslsmith_index_u32(countOneBits(4294967295u), 32u)] & _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(~u_input.e, _wgslsmith_sub_i32(u_input.a, -2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(18367i, u_input.a), vec2<i32>(1i, u_input.e)) & u_input.e), ~vec2<i32>(-4449i, ~2147483647i));
    var var_2 = Struct_3(global0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(trunc(global0.c.x)), -1102f)), _wgslsmith_sub_u32(var_0.x, 1u));
    let var_3 = any(select(vec2<bool>(true, global2.x), select(global2.xw, vec2<bool>(false || global2.x, global0.b.a), any(global2.zz)), all(global2.xw)));
    return Struct_4(vec2<u32>(1u, var_0.x) | vec2<u32>(25971u, u_input.b), global0.b, 1758u, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(~abs(1u), 32u)], _wgslsmith_clamp_vec2_i32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 51171u), 32u)], _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(var_0.x, 32u)]), abs(vec2<i32>(var_1.x, var_1.x)))), ~(~(-4772i))), false);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_4) -> f32 {
    global2 = !(!vec4<bool>(false, !func_2(arg_2.a).b.a, !arg_2.b.a, !select(arg_1.x, true, global2.x)));
    var var_0 = arg_0.e;
    global3 = func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global0.c.x, 1315f)), 1f)) * arg_2.a), _wgslsmith_f_op_f32(trunc(1739f))))).b;
    var var_1 = select(select(!vec4<bool>(any(vec3<bool>(true, global0.b.a, true)), -39290i < u_input.e, any(global2.ywx), true), select(!vec4<bool>(global2.x, false, false, true), vec4<bool>(global3.a, any(vec3<bool>(false, global0.b.a, arg_0.b.a)), all(global2.xxy), true), true), vec4<bool>(true, _wgslsmith_div_f32(287f, arg_2.c.x) != 1042f, arg_3.d <= -3886i, arg_1.x)), vec4<bool>(!(!(!arg_2.b.a)), any(vec2<bool>(arg_3.b.a, true)), select(true, any(vec2<bool>(true, true)), true), !(!all(vec4<bool>(true, global3.a, arg_3.b.a, false)))), !all(select(select(vec3<bool>(global3.a, global2.x, true), vec3<bool>(true, false, arg_3.b.a), false), vec3<bool>(false, false, arg_3.b.a), select(vec3<bool>(false, global0.b.a, arg_1.x), global2.xxy, true))));
    var var_2 = vec3<bool>(arg_3.e, false, any(vec3<bool>(false, select(arg_2.a != global0.c.x, true, true), any(!var_1.ww))));
    return -1240f;
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: i32) -> Struct_3 {
    var var_0 = func_2(global0.c.x);
    return Struct_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1100f, 275f)))), _wgslsmith_f_op_f32(global0.c.x * 584f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(509f, 1000f, arg_1) + vec3<f32>(global0.c.x, arg_1, arg_1)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-606f, -1754f, global0.a) + vec3<f32>(1f, 1f, 1f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1338f, arg_1, global0.a)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, arg_1, 1000f) * vec3<f32>(arg_1, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) - vec3<f32>(1386f, arg_1, global0.c.x)), global0.b.a)))), ~(~0u));
}

fn func_6(arg_0: Struct_3) -> vec4<u32> {
    var var_0 = global0.b.a;
    let var_1 = reverseBits(1u);
    let var_2 = vec3<i32>(-1i) * -(vec3<i32>(_wgslsmith_clamp_i32(13967i, u_input.e, -2147483647i), ~2147483647i, _wgslsmith_add_i32(2147483647i, u_input.e)) & (vec3<i32>(u_input.a, 2147483647i, u_input.e) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.c, 61153u, 45622u), vec3<u32>(0u, 0u, 64583u), vec3<u32>(1u, arg_0.c, u_input.b)) % vec3<u32>(32u))));
    var var_3 = select(~(~(u_input.a >> (arg_0.c % 32u))) & ~((u_input.e << (var_1 % 32u)) | ~u_input.e), -(~(u_input.a ^ var_2.x)) & _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, -1i, var_2.x), vec3<i32>(-538i, -54404i, u_input.e)) | _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, u_input.a, 28681i, u_input.a), vec4<i32>(u_input.a, var_2.x, var_2.x, 15990i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_2.x, u_input.e, u_input.a) >> (vec4<u32>(arg_0.c, u_input.d, u_input.d, arg_0.c) % vec4<u32>(32u)), abs(vec4<i32>(u_input.a, 0i, u_input.e, -1i)))), func_2(global0.c.x).b.a);
    var var_4 = Struct_2(_wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1716f))), !vec2<bool>(-2147483647i > u_input.a, true), Struct_2(1000f, Struct_1(global0.b.a), _wgslsmith_div_vec2_f32(global0.c, arg_0.a)), func_2(_wgslsmith_f_op_f32(floor(245f))))), func_2(-203f).b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -782f), _wgslsmith_f_op_f32(f32(-1f) * -407f))), global0.c.x)));
    return ~(_wgslsmith_mult_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.c, arg_0.c, 0u, 30275u), vec4<u32>(62452u, 4294967295u, var_1, arg_0.c), vec4<u32>(arg_0.c, 25511u, arg_0.c, var_1))), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c, var_1, var_1, arg_0.c) | vec4<u32>(1u, 0u, 4294967295u, 44937u), vec4<u32>(var_1, 4294967295u, arg_0.c, 33868u) << (vec4<u32>(0u, var_1, 20870u, arg_0.c) % vec4<u32>(32u)))) & vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(37289u, arg_0.c, var_1, 46168u), vec4<u32>(arg_0.c, arg_0.c, 0u, 14203u)), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.c, 0u), vec3<u32>(63310u, 4021u, var_1)) << (countOneBits(28260u) % 32u), 5761u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_vec2_u32(~(~vec2<u32>(0u, u_input.b)) & vec2<u32>(reverseBits(u_input.c), u_input.c), vec2<u32>(~(55833u >> (u_input.c % 32u)), abs(u_input.b)));
    let var_1 = -133f;
    let var_2 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, ~u_input.d), vec2<u32>(4294967295u, ~u_input.c));
    var_0 = var_2;
    let var_3 = global0.b;
    var var_4 = _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, 125066u), reverseBits(vec2<u32>(96170u, _wgslsmith_mod_u32(u_input.c | u_input.d, 1u))), vec2<u32>(func_1(), var_2.x));
    let var_5 = global0.b;
    let var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(func_6(func_5(-u_input.a, _wgslsmith_f_op_f32(func_4(func_2(284f), select(global2.xy, global2.xz, false), Struct_2(var_1, Struct_1(false), vec2<f32>(var_1, 693f)), Struct_4(vec2<u32>(75795u, var_2.x), Struct_1(global0.b.a), u_input.c, -2147483647i, global0.b.a))), ~_wgslsmith_sub_i32(-1i, 1i))), ~var_2.x, max(-(~(-17620i) >> (_wgslsmith_sub_u32(var_4.x, var_4.x) % 32u)), ~u_input.e));
}

