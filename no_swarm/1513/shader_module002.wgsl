struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(585f, true, vec2<bool>(false, true)), Struct_1(-395f, true, vec2<bool>(false, true)), Struct_1(917f, true, vec2<bool>(true, false)), Struct_1(836f, false, vec2<bool>(true, false)));

var<private> global3: i32;

var<private> global4: array<Struct_1, 3>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1505f, 188f, 1686f)))))));
    let var_1 = !select(vec3<bool>(_wgslsmith_f_op_f32(1000f + var_0.x) < -444f, !global0.b, select(false, false, false) || true), !(!vec3<bool>(global0.c.x, true, false)), global0.c.x);
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~firstTrailingBit(abs(~vec4<i32>(7164i, -28828i, -1i, -16347i))));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)))), _wgslsmith_div_f32(905f, -1000f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_0 - vec3<f32>(-2343f, global0.a, arg_0)))))));
    global3 = ~_wgslsmith_add_i32(-6753i, var_2.x);
    return ~(~(vec3<i32>(max(2147483647i, 2140i), var_2.x, -2147483647i) ^ vec3<i32>(max(var_2.x, var_2.x), _wgslsmith_add_i32(0i, -42475i), var_2.x)));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: vec3<i32>) -> vec4<u32> {
    global4 = array<Struct_1, 3>();
    var var_0 = vec3<i32>(-1i, i32(-1i) * -(i32(-1i) * -arg_3.x), -2147483647i);
    return vec4<u32>(_wgslsmith_div_u32(62459u, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1, u_input.b), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(arg_1, 5059u))) << (15027u % 32u)), ~(~(arg_1 >> (~4294967295u % 32u))), _wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_1, 41397u, 0u), ~vec4<u32>(u_input.a, 4024u, u_input.a, 57168u))), vec4<u32>(29847u & u_input.a, ~28962u, 10675u, _wgslsmith_clamp_u32(1u, arg_1, 1u)) << (~max(vec4<u32>(u_input.b, 105058u, 33366u, 72753u), vec4<u32>(4294967295u, u_input.a, arg_1, 1u)) % vec4<u32>(32u))), ~countOneBits(_wgslsmith_mod_u32(1u, ~u_input.a)));
}

fn func_2() -> vec2<bool> {
    var var_0 = _wgslsmith_div_vec4_u32(min(firstLeadingBit(vec4<u32>(~27894u, ~0u, u_input.a, u_input.a)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)), ~(~vec4<u32>(u_input.a, 28949u, u_input.b, 39735u)))), ~func_4(min(-2147483647i, i32(-1i) * -2147483647i), abs(firstTrailingBit(1u)), Struct_1(1000f, global0.b, vec2<bool>(global0.b, global0.b)), _wgslsmith_mod_vec3_i32(func_3(-754f, 64598u), vec3<i32>(34574i, 2147483647i, 1i))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a))), true, global0.c);
    var var_2 = 1u;
    global3 = -29704i;
    let var_3 = 1i;
    return select(var_1.c, vec2<bool>(false, ~var_3 < var_3), !global0.c.x);
}

fn func_1() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + -238f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1736f, 549f)) - _wgslsmith_f_op_f32(trunc(global0.a))))), false == (_wgslsmith_mod_u32(abs(u_input.b), 56957u) == ~(~4294967295u)), select(func_2(), select(select(global0.c, global0.c, select(global0.c.x, true, global0.b)), vec2<bool>(!global0.c.x, !global0.c.x), func_2()), vec2<bool>(true, global0.c.x)));
    global0 = global1[_wgslsmith_index_u32(1u, 27u)];
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global0.a, 624f)), _wgslsmith_f_op_f32(exp2(global0.a)))))), global0.a), true, vec2<bool>(var_0.b, true));
    global0 = global1[_wgslsmith_index_u32(~u_input.a, 27u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1118f, 680f, var_0.a, var_0.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, 2178f, var_0.a) * vec4<f32>(global0.a, -1525f, 307f, global0.a)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, 1742f, var_0.a, global0.a), vec4<f32>(var_0.a, 707f, -108f, 111f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 1220f, var_0.a, var_0.a))));
    return ~(~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(21070i, -1i) ^ (-15749i << (u_input.b % 32u)), 1i, _wgslsmith_mult_i32(1i, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, 1u), countOneBits(u_input.a)) & ~(~4294967295u)), 3u)];
    let var_1 = abs(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, func_1()), ~firstLeadingBit(-29237i)), firstTrailingBit(reverseBits(countOneBits(1i))), ~select(27511i, 1i, true), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-21642i, countOneBits(-2147483647i), 2147483647i), 1i)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-338f - global0.a), _wgslsmith_f_op_f32(max(-443f, 173f))), _wgslsmith_f_op_f32(1193f * var_0.a)))));
    let var_3 = Struct_1(-439f, true, var_0.c);
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(var_1.x, i32(-1i) * -1i), vec2<i32>(var_1.x, 1i), ~((vec2<i32>(var_1.x, var_1.x) & var_1.yz) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a), ~vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u))), max(~(~(~vec4<u32>(u_input.a, u_input.a, 26336u, 4294967295u))), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 109788u, _wgslsmith_add_u32(4721u, 51823u), 14730u), vec4<u32>(firstTrailingBit(0u), _wgslsmith_mult_u32(1u, u_input.b), u_input.b, _wgslsmith_div_u32(4294967295u, u_input.b)))), reverseBits(max(vec4<u32>(0u, u_input.a, u_input.a, u_input.b), vec4<u32>(37434u, u_input.a, u_input.a, 24924u) ^ vec4<u32>(40277u, u_input.a, u_input.b, 5954u))) >> (vec4<u32>(~37410u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 37530u, u_input.a), vec3<u32>(u_input.a, 12420u, u_input.b) << (vec3<u32>(u_input.a, u_input.a, 128709u) % vec3<u32>(32u))), func_4(_wgslsmith_add_i32(13577i, 50711i), ~u_input.b, global4[_wgslsmith_index_u32(abs(u_input.b), 3u)], firstLeadingBit(vec3<i32>(-33929i, 10621i, -2147483647i))).x, ~(1u ^ u_input.b)) % vec4<u32>(32u)));
}

