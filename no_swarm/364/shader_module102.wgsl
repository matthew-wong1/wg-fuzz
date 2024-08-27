struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: f32,
    d: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(4294967295u, 44487u, 48028u, 1u), vec4<u32>(18530u, 6418u, 3239u, 4294967295u), vec4<u32>(75996u, 15943u, 1210u, 17099u), vec4<u32>(0u, 4294967295u, 13940u, 0u), vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec4<u32>(4294967295u, 0u, 59527u, 1u), vec4<u32>(49253u, 6984u, 0u, 4294967295u), vec4<u32>(42578u, 0u, 0u, 1u));

var<private> global1: vec4<i32> = vec4<i32>(0i, i32(-2147483648), 1i, 31498i);

var<private> global2: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>) -> vec3<bool> {
    global2 = array<vec3<bool>, 21>();
    global2 = array<vec3<bool>, 21>();
    var var_0 = Struct_2(1054i, ~_wgslsmith_mult_vec4_u32(~vec4<u32>(103473u, u_input.a, u_input.c.x, u_input.c.x), abs(~global0[_wgslsmith_index_u32(u_input.c.x, 8u)])), Struct_1(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c.x & u_input.a, ~u_input.d.x), min(~4294967295u, 0u)), vec3<u32>(u_input.d.x, u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(12204u, u_input.a), u_input.d.ww)), ~_wgslsmith_sub_vec2_u32(u_input.d.xz, countOneBits(vec2<u32>(48850u, 0u))), ~_wgslsmith_div_u32(57225u << (u_input.c.x % 32u), _wgslsmith_sub_u32(u_input.a, 4294967295u)), 1i), vec3<u32>(u_input.d.x, reverseBits(0u), ~_wgslsmith_clamp_u32(~u_input.d.x, _wgslsmith_mod_u32(u_input.d.x, 4294967295u), u_input.a)), Struct_1(~min(~1u, ~4294967295u), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(70105u, 90726u, 4294967295u), firstLeadingBit(vec3<u32>(4294967295u, u_input.c.x, 73397u)), u_input.c >> (vec3<u32>(82737u, 7385u, u_input.a) % vec3<u32>(32u))), vec2<u32>(57839u, 4294967295u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, 3469u, 4294967295u, u_input.c.x)), _wgslsmith_clamp_vec4_u32(firstLeadingBit(u_input.d), _wgslsmith_div_vec4_u32(global0[_wgslsmith_index_u32(u_input.a, 8u)], u_input.d), select(global0[_wgslsmith_index_u32(4294967295u, 8u)], u_input.d, false))), _wgslsmith_clamp_i32(global1.x, ~(-1i), firstLeadingBit(_wgslsmith_mult_i32(80227i, u_input.b)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f), 1428f), _wgslsmith_div_f32(arg_0.x, -1570f)), arg_0.x)));
    var_1 = arg_0.xx;
    return vec3<bool>(false, false, true);
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<u32>, 8>();
    let var_0 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true);
    var var_1 = vec4<bool>(true, all(global2[_wgslsmith_index_u32(u_input.c.x, 21u)]) & var_0.x, var_0.x || ((!var_0.x || (var_0.x || false)) && false), var_0.x);
    var_1 = var_0;
    var var_2 = !vec4<bool>(true, false, all(select(vec3<bool>(true, false, var_0.x), func_3(vec4<f32>(1000f, 116f, 991f, 1356f)), !global2[_wgslsmith_index_u32(46588u, 21u)])), var_0.x);
    return Struct_1(1u, u_input.c, u_input.d.zz, ~(~1u), i32(-1i) * -6224i);
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = -360f;
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-443f * _wgslsmith_f_op_f32(abs(-490f))), _wgslsmith_f_op_f32(exp2(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(step(680f, -1808f)), -348f);
    var var_2 = func_2();
    let var_3 = _wgslsmith_f_op_f32(-615f * var_1.x);
    var var_4 = Struct_2(~(-1i), ~max(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 0u, 14550u), ~u_input.d), vec4<u32>(abs(var_2.d), 514u, var_2.d, 4294967295u)), func_2(), u_input.d.ywx, Struct_1(countOneBits(countOneBits(~u_input.a)), vec3<u32>(~_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.c.x, 60522u, 1u, var_2.b.x)), _wgslsmith_div_u32(var_2.a, ~var_2.c.x), abs(5116u)), firstLeadingBit(firstLeadingBit(vec2<u32>(var_2.c.x, 1u))), 19409u, -_wgslsmith_div_i32(select(var_2.e, u_input.b, arg_0), ~var_2.e)));
    return Struct_2(1i, ~firstLeadingBit(_wgslsmith_mult_vec4_u32(u_input.d, abs(vec4<u32>(27413u, 1u, 15381u, 43342u)))), var_4.c, firstLeadingBit(~var_2.b), Struct_1(~var_2.d, vec3<u32>(~_wgslsmith_add_u32(u_input.a, u_input.c.x), 30488u, 830u), var_4.b.zy, ~(~_wgslsmith_sub_u32(u_input.d.x, var_4.b.x)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_2.e, -9700i), u_input.b)));
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_4 {
    let var_0 = arg_1.b.x;
    var var_1 = vec4<u32>(1u, func_2().c.x, _wgslsmith_mod_u32(0u, 2105u), ~abs(arg_3.a)) ^ vec4<u32>(~0u, 1u, (u_input.a ^ (39205u >> (arg_1.a.d.x % 32u))) | func_1(var_0).e.b.x, firstTrailingBit(_wgslsmith_mod_u32(u_input.a, ~arg_1.a.e.b.x)));
    return Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(684f, 567f, -807f) - vec3<f32>(421f, 116f, arg_2.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(124f, 181f, -336f))))))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(313f, arg_2.x, arg_2.x) + vec3<f32>(769f, -354f, arg_2.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 1049f, arg_2.x))))), -191f, vec3<bool>(!var_0, _wgslsmith_mod_i32(u_input.e.x, max(u_input.e.x, arg_1.a.c.e)) <= ~global1.x, select(all(arg_1.b.yz), !all(vec4<bool>(true, true, false, false)), any(!arg_1.b.xz))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.x;
    global0 = array<vec4<u32>, 8>();
    global2 = array<vec3<bool>, 21>();
    let var_1 = func_4(firstLeadingBit(u_input.a) | 6726u, Struct_5(func_1(false), global2[_wgslsmith_index_u32(~countOneBits(~u_input.c.x), 21u)]), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1671f, 511f) + vec2<f32>(429f, 1169f))), vec2<f32>(_wgslsmith_div_f32(-801f, 1000f), -635f)))), Struct_1(abs(_wgslsmith_mod_u32(~0u, u_input.c.x)), _wgslsmith_div_vec3_u32(vec3<u32>(min(u_input.a, 4294967295u), u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.c.xx, u_input.d.zx)), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 0u, u_input.a), u_input.c)), firstLeadingBit(vec2<u32>(reverseBits(u_input.d.x), _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(11889u, 8u)], u_input.d))), ~u_input.d.x, u_input.e.x));
    global1 = vec4<i32>(_wgslsmith_add_i32(global1.x, u_input.b), -_wgslsmith_add_i32(u_input.b, 0i), global1.x, u_input.b);
    var var_2 = ~((max(vec2<u32>(u_input.c.x, 44u), abs(vec2<u32>(u_input.a, 0u))) | vec2<u32>(~u_input.c.x, countOneBits(u_input.a))) ^ ~abs(_wgslsmith_add_vec2_u32(vec2<u32>(72319u, 33145u), u_input.d.wx)));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.a);
}

