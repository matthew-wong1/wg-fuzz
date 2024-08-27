struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9>;

var<private> global1: array<Struct_3, 28>;

var<private> global2: array<vec3<i32>, 6> = array<vec3<i32>, 6>(vec3<i32>(-12564i, -1i, 70944i), vec3<i32>(4839i, i32(-2147483648), i32(-2147483648)), vec3<i32>(8524i, i32(-2147483648), -1i), vec3<i32>(-31936i, -1i, -6762i), vec3<i32>(1i, i32(-2147483648), -14080i), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> f32 {
    let var_0 = Struct_3(Struct_1((u_input.a >> ((u_input.b & arg_0.b.a) % vec3<u32>(32u))) << (u_input.b % vec3<u32>(32u)), arg_0.b.b, select(countOneBits(vec4<i32>(arg_0.a, arg_0.a, arg_0.a, -16629i)), arg_0.b.c, select(!vec4<bool>(arg_0.b.b.x, arg_0.b.b.x, true, true), !vec4<bool>(true, arg_0.b.b.x, false, true), select(true, false, arg_0.b.b.x)))), arg_0.b, arg_0.c.yy, vec3<u32>(countOneBits(u_input.a.x), arg_0.b.a.x | u_input.a.x, 4294967295u));
    let var_1 = all(select(vec4<bool>(true, all(var_0.a.b.yz) && (u_input.c.x < u_input.a.x), false, !(arg_0.b.b.x & true)), vec4<bool>(arg_0.b.b.x, true, true, !(!arg_0.b.b.x)), !vec4<bool>(var_0.b.a.x <= var_0.d.x, var_0.b.b.x | false, arg_0.b.b.x, -136f == arg_1)));
    var var_2 = var_0.a.c.x;
    global1 = array<Struct_3, 28>();
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~u_input.a.x), 28u)];
    return _wgslsmith_f_op_f32(f32(-1f) * -3250f);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_3, arg_3: Struct_3) -> vec3<bool> {
    global2 = array<vec3<i32>, 6>();
    var var_0 = Struct_3(Struct_1(firstLeadingBit(arg_3.d), !arg_2.b.b, max(arg_2.b.c, vec4<i32>(-1i) * -arg_2.a.c)), arg_2.b, select(vec2<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-18654i, arg_3.a.c.x, arg_3.b.c.x)), vec3<i32>(45036i, -23806i, 29275i)), arg_3.b.c.x), _wgslsmith_div_vec2_i32(vec2<i32>(arg_3.c.x, 29666i) ^ -arg_3.c, max(reverseBits(arg_2.c), arg_2.c)), select(vec2<bool>(true, false), !select(arg_2.b.b.zz, vec2<bool>(arg_2.b.b.x, arg_3.a.b.x), arg_3.b.b.x), all(vec2<bool>(true, false)))), vec3<u32>(~arg_0, 32577u, arg_3.d.x));
    let var_1 = max(arg_2.a.c.xxz, arg_3.b.c.wxw);
    let var_2 = 23331i;
    global1 = array<Struct_3, 28>();
    return vec3<bool>(true, all(select(select(var_0.a.b, arg_3.b.b, select(vec3<bool>(true, true, false), arg_2.a.b, var_0.a.b)), !(!arg_2.a.b), select(arg_1 < arg_1, arg_3.a.b.x, false))), arg_1 >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1521f))));
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> f32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~u_input.a, vec3<u32>(arg_0.d.x, 1u, 2885u) ^ arg_0.b.a), ~vec3<u32>(arg_0.d.x, arg_0.b.a.x, u_input.a.x), vec3<u32>(0u, _wgslsmith_clamp_u32(1u, 43040u, 1u), u_input.b.x)), vec3<bool>(true, all(select(arg_0.a.b, vec3<bool>(false, arg_1, true), true)), arg_1), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(arg_0.b.c, arg_0.b.c), vec4<i32>(-1i, -16500i, -36186i, arg_0.b.c.x)), abs(countOneBits(arg_0.a.c)), vec4<i32>(-24545i, 13567i, arg_0.c.x, arg_0.b.c.x) | (arg_0.b.c >> (vec4<u32>(0u, 4294967295u, u_input.a.x, 79877u) % vec4<u32>(32u))))), arg_0.b, select(arg_0.a.c.wx, abs(vec2<i32>(-1i, -51622i) ^ vec2<i32>(arg_0.b.c.x, -1i)) | countOneBits(-arg_0.b.c.zx), !(!vec2<bool>(arg_1, false))), _wgslsmith_div_vec3_u32(u_input.a, (_wgslsmith_sub_vec3_u32(vec3<u32>(33541u, 24555u, arg_0.d.x), vec3<u32>(39174u, 4294967295u, 4294967295u)) | firstLeadingBit(arg_0.a.a)) ^ vec3<u32>(~43799u, u_input.b.x | u_input.b.x, min(arg_0.a.a.x, 4294967295u))));
    let var_1 = Struct_3(arg_0.a, arg_0.b, arg_0.c, arg_0.b.a);
    let var_2 = func_4(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, 1u), _wgslsmith_mult_vec2_u32(var_0.b.a.xx, ~var_1.d.zx)), _wgslsmith_div_f32(1769f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(227f, _wgslsmith_f_op_f32(func_3(Struct_2(16080i, Struct_1(arg_0.d, vec3<bool>(true, true, true), vec4<i32>(0i, -47124i, var_0.b.c.x, var_0.b.c.x)), vec3<i32>(-1i, 27974i, -14197i), 6245i), -666f)))))), Struct_3(var_1.b, Struct_1(countOneBits(vec3<u32>(1u, var_0.d.x, u_input.b.x)), select(!vec3<bool>(var_1.b.b.x, var_0.b.b.x, var_0.a.b.x), var_1.a.b, arg_0.a.b), var_0.b.c), -vec2<i32>(arg_0.b.c.x, -1i), select(u_input.a, firstLeadingBit(arg_0.a.a) ^ ~vec3<u32>(arg_0.b.a.x, arg_0.d.x, var_0.b.a.x), !vec3<bool>(false, arg_1, var_1.b.b.x))), var_1);
    let var_3 = Struct_2(2147483647i, Struct_1(_wgslsmith_add_vec3_u32(~var_0.d << (~var_1.a.a % vec3<u32>(32u)), ~(~vec3<u32>(0u, 1u, 4294967295u))), !(!func_4(55805u, -1251f, Struct_3(Struct_1(u_input.b, vec3<bool>(var_1.b.b.x, arg_0.a.b.x, true), vec4<i32>(59613i, arg_0.a.c.x, 2147483647i, 1i)), var_0.a, var_0.a.c.yx, u_input.a), global1[_wgslsmith_index_u32(var_1.d.x, 28u)])), -firstLeadingBit(vec4<i32>(var_0.a.c.x, 3770i, var_1.c.x, var_1.b.c.x))), var_1.b.c.xww, -9754i);
    global1 = array<Struct_3, 28>();
    return 1f;
}

fn func_1(arg_0: f32) -> Struct_1 {
    global1 = array<Struct_3, 28>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -811f) - _wgslsmith_f_op_f32(f32(-1f) * -190f)) + _wgslsmith_f_op_f32(-arg_0)) - -1770f));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -915f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(select(4294967295u, 51475u, false), 28u)], true))) + -225f));
    var var_2 = ~_wgslsmith_add_vec3_u32(u_input.b, u_input.b);
    let var_3 = max(1i, _wgslsmith_add_i32(56449i, 0i));
    return Struct_1(~(~vec3<u32>(u_input.b.x | 90982u, u_input.a.x & u_input.c.x, u_input.a.x)), vec3<bool>(!any(vec3<bool>(true, true, true)), true, false), vec4<i32>(-reverseBits(var_3) & var_3, select(-2147483647i, abs(-var_3), all(vec2<bool>(true, true)) | true), -var_3, var_3));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec2<bool>(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x) < u_input.b.x, all(vec2<bool>(true, false)) || true));
    var var_1 = Struct_3(func_1(656f), Struct_1(u_input.b, select(vec3<bool>(var_0.x & false, true, select(var_0.x, true, false)), !select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, false, true)), select(select(vec3<bool>(false, true, false), vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x)), func_4(0u, -372f, Struct_3(Struct_1(u_input.b, vec3<bool>(true, true, false), vec4<i32>(1i, 47699i, -1i, 2147483647i)), Struct_1(vec3<u32>(u_input.b.x, 36422u, u_input.b.x), vec3<bool>(var_0.x, var_0.x, false), vec4<i32>(-2147483647i, -11704i, 64528i, 40314i)), vec2<i32>(-53219i, -15532i), vec3<u32>(23114u, 41860u, u_input.a.x)), global0[_wgslsmith_index_u32(u_input.c.x, 9u)]), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, false, var_0.x)))), countOneBits(~vec4<i32>(-2147483647i, 1i, 1i, 804i)) << (((vec4<u32>(0u, u_input.c.x, u_input.c.x, 17653u) & vec4<u32>(u_input.c.x, u_input.b.x, u_input.a.x, 0u)) | _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.c.x, 22734u, 32690u), vec4<u32>(47777u, u_input.c.x, u_input.b.x, 8296u))) % vec4<u32>(32u))), vec2<i32>(1i, 1i), vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -785f))), 393f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-817f + -122f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1000f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-282f, _wgslsmith_f_op_f32(-236f + -1098f), any(vec3<bool>(var_1.a.b.x, var_1.a.b.x, false)))), -572f)))));
    global2 = array<vec3<i32>, 6>();
    var var_3 = _wgslsmith_mod_i32(var_1.a.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, ~(~7151i), 0i, var_1.a.c.x), (~var_1.a.c | -vec4<i32>(var_1.c.x, 23751i, 15525i, 1i)) & vec4<i32>(-33290i, 0i, -var_1.b.c.x, 0i)));
    let var_4 = vec2<i32>(_wgslsmith_add_i32(-7040i, var_1.b.c.x), 1i);
    var var_5 = var_1.d.zx;
    var_0 = vec2<bool>(var_5.x < (var_1.b.a.x | firstTrailingBit(abs(u_input.a.x))), var_2.x == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x + -1042f))))));
    let var_6 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(var_1.a.c, _wgslsmith_clamp_vec4_i32(~vec4<i32>(var_1.a.c.x, -1i, 19682i, 2147483647i), _wgslsmith_clamp_vec4_i32(var_1.b.c, vec4<i32>(var_1.b.c.x, -77518i, var_4.x, 0i), vec4<i32>(var_4.x, var_4.x, 0i, -2186i)), max(vec4<i32>(-2147483647i, 2147483647i, var_4.x, -1i), var_1.b.c))), ~2147483647i, var_1.a.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -818f))), ~(~(-2232i & var_1.c.x)), _wgslsmith_mod_vec3_i32(firstTrailingBit(select(vec3<i32>(9114i, var_4.x, var_4.x), vec3<i32>(var_1.b.c.x, -23570i, 56974i), var_1.a.b) | max(var_1.a.c.yzy, var_1.a.c.yxx)), ~(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-18586i, var_1.a.c.x, var_1.b.c.x), var_1.a.c.yyx, var_1.a.c.xxz))));
}

