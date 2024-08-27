struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(39305u, 0u);

var<private> global1: array<Struct_1, 20>;

var<private> global2: f32;

var<private> global3: i32;

var<private> global4: array<u32, 31> = array<u32, 31>(0u, 3028u, 0u, 21081u, 0u, 1u, 16876u, 4294967295u, 14061u, 4294967295u, 4294967295u, 3380u, 48730u, 21326u, 17763u, 20934u, 1713u, 17064u, 0u, 71791u, 30421u, 4294967295u, 99732u, 4294967295u, 0u, 1170u, 40759u, 13394u, 0u, 0u, 0u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec2<bool>) -> vec4<f32> {
    let var_0 = Struct_3(Struct_2(vec4<bool>(arg_1.x, true, any(vec4<bool>(true, arg_2.x, false, true)), select(any(vec3<bool>(arg_0.x, false, arg_1.x)), select(false, true, false), arg_2.x && false)), select(vec3<u32>(_wgslsmith_mult_u32(21717u, global4[_wgslsmith_index_u32(1u, 31u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(global0.x, 31u)], 4294967295u, 1u, global4[_wgslsmith_index_u32(global0.x, 31u)]), vec4<u32>(0u, global0.x, 14117u, 1u)), ~global0.x), ~vec3<u32>(global4[_wgslsmith_index_u32(9138u, 31u)], 0u, global4[_wgslsmith_index_u32(33154u, 31u)]) | ~vec3<u32>(0u, 4294967295u, 0u), !select(vec3<bool>(arg_1.x, false, false), vec3<bool>(arg_0.x, false, arg_0.x), false)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(904f)), _wgslsmith_f_op_f32(2695f + 1000f)), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(sign(-927f)), _wgslsmith_f_op_f32(-748f - 1482f)), !(!(!vec3<bool>(arg_1.x, arg_1.x, arg_2.x)))), select(select(vec2<i32>(29272i, u_input.b), min(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-10618i, -16098i)), false), ~vec2<i32>(-65008i, u_input.b), arg_0) ^ vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, 1i, u_input.b), vec4<i32>(6119i, u_input.b, -15211i, 18492i)), 1i));
    let var_1 = global1[_wgslsmith_index_u32(~var_0.a.b.x, 20u)];
    let var_2 = !(!(((var_1.b.x == -1i) || true) & false));
    var var_3 = select(~countOneBits(~(~var_1.d)), ~(~(~vec4<u32>(4294967295u, global0.x, 12738u, 1350u))), true);
    var var_4 = u_input.b;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2021f, -559f, var_0.a.c.x, 1175f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1333f, -666f, var_0.a.c.x, 128f) * vec4<f32>(var_0.a.c.x, var_0.a.c.x, var_0.a.c.x, var_0.a.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_0.a.c)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(533f, 1000f, var_0.a.c.x, -1770f)))), !select(vec4<bool>(arg_0.x, arg_0.x, var_2, true), vec4<bool>(arg_1.x, true, arg_1.x, false), true)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: Struct_1) -> i32 {
    var var_0 = arg_0.x;
    let var_1 = global1[_wgslsmith_index_u32(global0.x, 20u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(120f, 306f, 790f, -1670f) - vec4<f32>(-1051f, 220f, -720f, 991f)) * _wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1115f, 939f, 953f, 205f) * vec4<f32>(-2627f, -121f, 1000f, 441f)), vec4<f32>(-380f, -1549f, 180f, -1000f)))), !any(vec3<bool>(true, true, true)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), 9562i >= u_input.b), vec2<bool>(true, true))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(656f)), -937f)), _wgslsmith_f_op_f32(396f * -182f), -1167f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1036f) + _wgslsmith_f_op_f32(f32(-1f) * -1723f)))));
    let var_3 = Struct_3(Struct_2(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), false)), ~(vec3<u32>(0u, global0.x, u_input.a) & _wgslsmith_mult_vec3_u32(arg_2.d.ywy, vec3<u32>(79097u, u_input.a, global4[_wgslsmith_index_u32(var_1.d.x, 31u)]))), vec4<f32>(var_2.x, var_2.x, 1f, 1000f), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, false), var_2.x != -175f), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), true)), ~var_1.b);
    var_0 = _wgslsmith_mod_i32(abs(arg_1.x) >> (arg_2.d.x % 32u), _wgslsmith_div_i32(-7980i, -83238i));
    return ~var_1.b.x;
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b, _wgslsmith_div_i32(~u_input.b, u_input.b)), _wgslsmith_sub_i32(abs(~_wgslsmith_mult_i32(-1833i, u_input.b)), -func_2(~vec2<i32>(u_input.b, u_input.b), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.b), vec3<i32>(1i, -36966i, u_input.b)), Struct_1(-24230i, vec2<i32>(u_input.b, 0i), vec3<u32>(global4[_wgslsmith_index_u32(u_input.a, 31u)], global0.x, 45192u), vec4<u32>(8787u, global0.x, global0.x, 4294967295u)))));
    let var_1 = !select(vec3<bool>(false, true, true), !vec3<bool>(false, true, any(vec4<bool>(false, true, false, false))), true);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-361f + 829f) - _wgslsmith_f_op_f32(floor(-541f))) - _wgslsmith_f_op_vec4_f32(func_3(select(vec2<bool>(false, var_1.x), vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, true)), var_1.xx, var_1.xz)).x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(392f * -760f)), -142f, -421f)));
    let var_3 = ~(-vec2<i32>((u_input.b >> (24955u % 32u)) & ~u_input.b, -u_input.b));
    return abs(vec2<u32>(u_input.a, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(_wgslsmith_clamp_vec2_u32(func_1(), ~firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(31042u, global4[_wgslsmith_index_u32(22863u, 31u)]))), vec2<u32>(firstTrailingBit(global4[_wgslsmith_index_u32(global0.x, 31u)]), 13386u)));
    var var_0 = Struct_4(Struct_3(Struct_2(vec4<bool>(true, true, select(true, false, false), global0.x != global4[_wgslsmith_index_u32(11638u, 31u)]), vec3<u32>(0u, 0u, ~1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-757f, -1000f, 1418f, -693f)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), true)), _wgslsmith_mult_vec2_i32(select(_wgslsmith_mod_vec2_i32(vec2<i32>(-55311i, 36302i), vec2<i32>(1i, u_input.b)), vec2<i32>(1i, u_input.b), vec2<bool>(true, true)), reverseBits(vec2<i32>(-1i, 6119i)))), abs(~(41539u << (global4[_wgslsmith_index_u32(4294967295u, 31u)] % 32u)) ^ ~1u), Struct_1(0i, vec2<i32>(u_input.b, _wgslsmith_add_i32(23763i, u_input.b) << (_wgslsmith_add_u32(global0.x, global0.x) % 32u)), _wgslsmith_add_vec3_u32(~(~vec3<u32>(global4[_wgslsmith_index_u32(u_input.a, 31u)], global0.x, 19130u)), (vec3<u32>(26049u, global4[_wgslsmith_index_u32(88376u, 31u)], 4294967295u) & vec3<u32>(21888u, 16020u, global0.x)) >> ((vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(35479u, 31u)], 31u)], global4[_wgslsmith_index_u32(global0.x, 31u)], 48001u) >> (vec3<u32>(u_input.a, 21023u, 72155u) % vec3<u32>(32u))) % vec3<u32>(32u))), select(~vec4<u32>(47025u, 38540u, u_input.a, u_input.a), vec4<u32>(1u, 1515u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(0u, global0.x)), min(global0.x, global0.x)), true)), Struct_3(Struct_2(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, u_input.a, global0.x), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 31u)], 31u)], 1u, u_input.a))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-204f, -2094f, -791f, -2141f) * vec4<f32>(1463f, -874f, 192f, 258f)))), vec3<bool>(true, true, true)), _wgslsmith_clamp_vec2_i32(~(-vec2<i32>(u_input.b, -59666i)), vec2<i32>(u_input.b ^ -48133i, u_input.b), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.b), ~vec2<i32>(u_input.b, -2036i)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(1u, var_0.b, global0.x, u_input.a), vec4<u32>(3403u, 4294967295u, 4294967295u, 4294967295u), vec4<bool>(false, var_0.d.a.a.x, true || var_0.d.a.a.x, var_0.a.a.a.x)), var_0.d.a.b.zy, 60722u);
}

