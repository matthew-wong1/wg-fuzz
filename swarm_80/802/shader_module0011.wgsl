struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: vec2<bool>,
    e: bool,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(-69146i, -10852i, -1i, 36078i, 1i, 15931i, -1i, 0i, 51237i, i32(-2147483648), -20774i, 4453i, 0i, 0i, 1i, 23593i, 2147483647i, -16776i, -5346i, 0i, 0i, -1i, -1945i, 2147483647i, i32(-2147483648), 0i, 14120i, 28165i, 12569i, 2147483647i, -32818i, 35414i);

var<private> global1: array<vec2<i32>, 12>;

var<private> global2: array<Struct_2, 16>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_sub_vec2_i32(u_input.b.wx, vec2<i32>(-firstTrailingBit(min(global0[_wgslsmith_index_u32(1u, 32u)], 1i)), i32(-1i) * -1i));
    global2 = array<Struct_2, 16>();
    let var_1 = u_input.b.xwz;
    var var_2 = Struct_1(-(~vec3<i32>(-32659i, i32(-1i) * -21470i, var_0.x << (u_input.c.x % 32u))), _wgslsmith_sub_vec2_u32(~firstLeadingBit(vec2<u32>(u_input.c.x, u_input.c.x)), arg_0.zx), ~(~reverseBits(91374u)));
    global2 = array<Struct_2, 16>();
    return 1u | firstTrailingBit(4294967295u);
}

fn func_2() -> u32 {
    global2 = array<Struct_2, 16>();
    global1 = array<vec2<i32>, 12>();
    var var_0 = Struct_2(firstLeadingBit(_wgslsmith_mult_u32(34938u, 1u)), (~(-vec3<i32>(-11389i, u_input.a, -42072i)) ^ u_input.b.zyw) ^ abs(u_input.b.yzz), -1211f);
    return func_3(reverseBits(~(~_wgslsmith_div_vec4_u32(vec4<u32>(89629u, var_0.a, 1u, u_input.c.x), vec4<u32>(6294u, u_input.c.x, 74741u, var_0.a)))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(1u, 16u)];
    let var_1 = var_0.a;
    global2 = array<Struct_2, 16>();
    var var_2 = Struct_4(4830u, firstTrailingBit(var_0.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, var_0.c, arg_0.x, arg_0.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1772f, var_0.c, 1421f, arg_0.x), vec4<f32>(-1371f, arg_0.x, 2790f, -412f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(394f, var_0.c, arg_0.x, -2005f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(633f, -1727f, 447f, arg_0.x) * vec4<f32>(201f, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-999f, arg_0.x, 1948f, -367f), vec4<f32>(-160f, -1300f, -630f, 467f)), true)))));
    var var_3 = 1u & _wgslsmith_div_u32(~(~func_2()), 1u);
    return Struct_1(vec3<i32>(reverseBits(2147483647i) >> (~_wgslsmith_clamp_u32(var_2.a, 41502u, u_input.c.x) % 32u), _wgslsmith_mult_i32(1i, var_0.b.x & -var_0.b.x), ~(~33309i)), ~u_input.c, ~(~firstLeadingBit(var_0.a >> (48695u % 32u))));
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = 2147483647i;
    var var_1 = any(vec4<bool>(-1i >= ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b.x), u_input.b.yw), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-431f, -738f)))) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -360f), -1453f, true)), true, any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), any(vec2<bool>(false, true))))));
    global1 = array<vec2<i32>, 12>();
    var var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(~(arg_0.b.x ^ 1u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, u_input.c.x, arg_0.c, 48845u), vec4<u32>(30739u, 44840u, 88246u, arg_0.c), true), abs(vec4<u32>(57557u, 0u, 4927u, arg_0.c))), _wgslsmith_mult_u32(14376u | arg_0.b.x, arg_0.c | 54925u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.c.x, arg_0.c, arg_0.c), firstTrailingBit(vec4<u32>(arg_0.b.x, arg_0.c, 1u, u_input.c.x)))) | _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(arg_0.c, arg_0.c), 9999u, 1u, u_input.c.x ^ 28351u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(64573u, 4294967295u, 62490u, arg_0.b.x), vec4<u32>(arg_0.c, arg_0.c, u_input.c.x, u_input.c.x))), firstLeadingBit(vec4<u32>(~3583u, func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-160f, 917f) - vec2<f32>(-181f, 1000f))).b.x, ~arg_0.b.x, func_3(vec4<u32>(arg_0.c, 1u, u_input.c.x, 124578u)))));
    let var_3 = ~u_input.b;
    return -1818f;
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: i32, arg_3: Struct_3) -> vec3<u32> {
    global2 = array<Struct_2, 16>();
    let var_0 = _wgslsmith_f_op_f32(arg_3.a * 131f);
    let var_1 = abs(vec3<i32>(-29641i, arg_3.b.b.x, _wgslsmith_mult_i32(~(-35097i), u_input.b.x)));
    global0 = array<i32, 32>();
    let var_2 = 1u;
    return vec3<u32>(u_input.c.x, 0u, _wgslsmith_sub_u32(reverseBits(arg_1), ~0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -418f, 1409f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(902f, -838f, 570f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-340f, 1382f, 556f))))), ~u_input.c.x, -1i, Struct_3(_wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-252f, 698f), vec2<f32>(-1006f, 2036f)))))), Struct_2(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1275f, -1106f) + vec2<f32>(-241f, 740f))).b.x, vec3<i32>(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)]), 1i, global0[_wgslsmith_index_u32(u_input.c.x & u_input.c.x, 32u)]), _wgslsmith_f_op_f32(ceil(-2151f))), Struct_2(~func_2(), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 2147483647i), u_input.b.yxx, vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(u_input.c.x, 32u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-221f + -913f))), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), true));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-1660f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1485f, -430f)) - -1313f), 902f)), Struct_2(var_0.x, -countOneBits(-u_input.b.xyz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1364f, _wgslsmith_f_op_f32(819f * 1088f), false)))), Struct_2(_wgslsmith_mult_u32(1u, ~var_0.x), u_input.b.wxw, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1278f + -1222f)), -571f)), select(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 32u)] <= 9458i, false), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), true))), vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(!any(vec2<bool>(true, false)), true)), _wgslsmith_div_i32(~u_input.a << (_wgslsmith_sub_u32(4294967295u, var_0.x) % 32u), 1i) < select(u_input.b.x, 15946i, true));
    var var_2 = select(countOneBits(u_input.c.x), ~(~_wgslsmith_sub_u32(var_0.x, var_0.x)), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_1.d.x, true, false, false), vec4<bool>(true, var_1.d.x, true, false), vec4<bool>(var_1.e, var_1.e, var_1.e, var_1.d.x)), any(vec4<bool>(false, false, true, false))))) >> (4294967295u % 32u);
    global2 = array<Struct_2, 16>();
    var_1 = Struct_3(var_1.b.c, Struct_2(4294967295u, vec3<i32>(-15060i, _wgslsmith_sub_i32(-global0[_wgslsmith_index_u32(var_1.c.a, 32u)], ~u_input.b.x), ~global0[_wgslsmith_index_u32(0u, 32u)]), var_1.a), Struct_2(0u, vec3<i32>(0i, global0[_wgslsmith_index_u32(var_0.x, 32u)], 39400i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1191f, 605f)) + _wgslsmith_f_op_f32(f32(-1f) * -2334f))))), select(var_1.d, vec2<bool>(_wgslsmith_div_f32(var_1.c.c, var_1.c.c) != var_1.a, select(false, true, any(var_1.d))), !vec2<bool>(true, var_1.d.x)), true);
    var var_3 = vec3<bool>(!var_1.e, var_1.e, any(select(!vec3<bool>(true, true, var_1.e), !select(vec3<bool>(var_1.d.x, var_1.e, var_1.d.x), vec3<bool>(var_1.e, var_1.d.x, var_1.e), vec3<bool>(var_1.d.x, true, true)), vec3<bool>(var_1.e, var_1.c.a > 17925u, var_1.e))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * -2512f));
    let var_5 = global2[_wgslsmith_index_u32(1u | u_input.c.x, 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, var_1.b.b, _wgslsmith_div_vec2_u32(reverseBits(u_input.c) >> (_wgslsmith_mult_vec2_u32(max(u_input.c, u_input.c), firstTrailingBit(var_0.yy)) % vec2<u32>(32u)), vec2<u32>(4294967295u, ~(var_0.x >> (u_input.c.x % 32u)))), vec2<f32>(var_4, 205f));
}

