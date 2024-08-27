struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: u32;

var<private> global2: array<Struct_1, 6>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, countOneBits(min(78558u, 1u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1212u, 6205u), vec2<u32>(9182u, 23819u)), min(1u, 22629u))) | (_wgslsmith_div_vec4_u32(select(vec4<u32>(1u, 4294967295u, 1u, 40863u), ~vec4<u32>(0u, 1u, 14153u, 30185u), true), vec4<u32>(reverseBits(4294967295u), 10574u, 4294967295u >> (0u % 32u), ~37440u)) & _wgslsmith_div_vec4_u32(~(~vec4<u32>(54509u, 70092u, 30215u, 1u)), ~vec4<u32>(1u, 1u, 1u, 1u)));
    var_0 = ~(~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 11094u, 18798u, 0u), vec4<u32>(var_0.x, 4294967295u, 20737u, 4601u)))));
    let var_1 = Struct_1(538f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-739f, -1228f) - vec2<f32>(1185f, -1384f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(316f, 1000f)), select(vec2<bool>(true, true), vec2<bool>(false, arg_0), vec2<bool>(arg_0, false))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-507f, 1003f) + vec2<f32>(1649f, 2327f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1091f, -592f), vec2<f32>(509f, 1000f))))), vec2<bool>(true, true))), 2147483647i, ~firstTrailingBit(var_0.x << (4294967295u % 32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1183f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(abs(1047f)))))));
    let var_2 = ~(firstTrailingBit(-8933i) & -((u_input.a << (var_0.x % 32u)) | 22548i));
    var var_3 = ~(-10755i);
    return _wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 11260u, var_0.x, 13132u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(max(var_1.d, 1u), _wgslsmith_mod_u32(62536u, var_0.x), _wgslsmith_dot_vec2_u32(var_0.yy, var_0.wy), ~var_0.x), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.d, 1u, var_0.x, var_1.d), vec4<u32>(var_1.d, var_0.x, 1u, var_1.d)), abs(vec4<u32>(46918u, var_1.d, var_1.d, 4294967295u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_1.d, var_1.d, var_0.x), vec4<u32>(var_0.x, var_1.d, var_0.x, var_1.d), ~vec4<u32>(var_1.d, var_1.d, var_1.d, 33465u)))) & ~0u;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: u32) -> i32 {
    var var_0 = 0u;
    global1 = (max(90885u, ~1u) << (firstLeadingBit(~func_3(false)) % 32u)) << (~arg_2 % 32u);
    var var_1 = 1u;
    var_1 = select(~arg_2, 29161u, any(!arg_1.wzw)) | ~arg_2;
    var var_2 = _wgslsmith_f_op_f32(-2079f + _wgslsmith_f_op_f32(f32(-1f) * -365f));
    return u_input.a;
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<u32>(1u, 1u, 1u);
    let var_1 = ~_wgslsmith_mod_i32(func_2(!any(vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), _wgslsmith_mod_u32(40326u, 23823u)), u_input.b.x);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(543f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2086f), -1648f)), global2[_wgslsmith_index_u32(firstLeadingBit(~max(~var_0.x, var_0.x)), 6u)], global0[_wgslsmith_index_u32(var_0.x, 19u)]);
    var_0 = vec3<u32>(firstLeadingBit(~min(_wgslsmith_div_u32(4534u, 32196u), _wgslsmith_sub_u32(0u, var_0.x))), _wgslsmith_mult_u32(1u, select(_wgslsmith_dot_vec4_u32(~vec4<u32>(280u, 2037u, var_0.x, 44425u), min(vec4<u32>(var_0.x, var_0.x, 31864u, var_2.c.d), vec4<u32>(var_2.c.d, var_2.c.d, var_2.c.d, var_0.x))), var_0.x, true)), ~(~reverseBits(35988u)));
    var_0 = ~vec3<u32>(4294967295u, select(firstTrailingBit(var_2.b.d), 64336u, any(vec3<bool>(true, true, true))) >> (0u % 32u), ~var_2.c.d);
    return global0[_wgslsmith_index_u32(~4294967295u, 19u)];
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = -(_wgslsmith_add_i32(i32(-1i) * -2147483647i, -17414i) & abs(u_input.b.x));
    global0 = array<Struct_1, 19>();
    global2 = array<Struct_1, 6>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.b.x, arg_2, arg_1.b.e, _wgslsmith_div_f32(arg_1.a, arg_2)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(806f, arg_1.b.e, arg_1.c.e, arg_2))))));
    var var_2 = arg_1;
    return Struct_1(1314f, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), func_1().b.x), firstLeadingBit(u_input.a), select(min(_wgslsmith_add_u32(_wgslsmith_clamp_u32(var_2.c.d, arg_1.c.d, arg_0), var_2.b.d), ~(~arg_1.b.d)), 35181u, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(751f)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_1.b.e, -484f, all(vec4<bool>(false, true, true, false)))), arg_1.c.a, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(423f, -1074f, true));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1006f)))), func_4(27143u, Struct_2(-908f, func_1(), global2[_wgslsmith_index_u32(1u, 6u)]), 312f, max(-_wgslsmith_clamp_vec2_i32(vec2<i32>(-29897i, 0i), vec2<i32>(u_input.b.x, u_input.a), u_input.b.zz), _wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.b.x, 8725i)), vec2<i32>(u_input.a, -2147483647i)))), global0[_wgslsmith_index_u32(reverseBits(36432u), 19u)]);
    var var_2 = Struct_4(vec3<f32>(666f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(498f))), 1558f), false);
    var var_3 = 0i;
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    global2 = array<Struct_1, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(-1i, ~(~select(u_input.b.xz & u_input.b.xx, vec2<i32>(var_1.c.c, -1i), vec2<bool>(var_2.b, false))), _wgslsmith_f_op_f32(var_2.a.x + 170f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -578f)), vec2<f32>(var_1.c.a, _wgslsmith_f_op_f32(-171f * -1324f))) - var_2.a.zz));
}

