struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13>;

var<private> global1: u32;

var<private> global2: array<bool, 28> = array<bool, 28>(false, false, false, false, false, true, false, true, true, false, true, false, true, false, false, false, true, true, true, true, false, true, true, true, false, true, false, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<f32> {
    var var_0 = min(_wgslsmith_mult_vec4_i32(vec4<i32>(1i << (u_input.b.x % 32u), u_input.d.x, _wgslsmith_clamp_i32(-11496i, max(u_input.d.x, 2147483647i), ~u_input.c.x), _wgslsmith_div_i32(u_input.c.x, u_input.d.x)), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(25173i, -2598i), -20942i, u_input.d.x, -2147483647i), vec4<i32>(i32(-1i) * -1i, u_input.c.x, 0i, u_input.d.x))), vec4<i32>(-u_input.d.x, u_input.c.x, -23016i, u_input.c.x));
    global0 = array<Struct_4, 13>();
    var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(-var_0.x, _wgslsmith_mod_i32(firstLeadingBit(67946i), -3287i), firstTrailingBit(-31827i), u_input.d.x), select(vec4<i32>(~(~var_0.x), 6115i, select(_wgslsmith_mult_i32(0i, u_input.c.x), abs(-27382i), any(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 28u)]))), ~(i32(-1i) * -2147483647i)), min(-(vec4<i32>(0i, var_0.x, 0i, var_0.x) ^ vec4<i32>(var_0.x, u_input.d.x, 36811i, 21137i)), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.d.x, -47495i, 14213i, -18982i)), vec4<i32>(-21555i, 0i, -41818i, 8370i) ^ vec4<i32>(u_input.d.x, var_0.x, 2147483647i, 29002i))), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(120506u, u_input.b.x), ~vec2<u32>(u_input.b.x, 8994u)), 28u)]));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2447f * -361f), _wgslsmith_f_op_f32(1230f + -252f)))) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-176f)), -451f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -601f))), var_0.zxw | ~(-var_0.ywx));
    let var_2 = vec3<i32>(var_1.b.x, -2147483647i, 39845i);
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1422f - _wgslsmith_f_op_f32(185f - -1489f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-751f * _wgslsmith_f_op_f32(f32(-1f) * -742f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(996f)), 122f)))), _wgslsmith_f_op_f32(964f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1702f - 546f) * _wgslsmith_f_op_f32(-762f - -140f))))), _wgslsmith_div_f32(-256f, _wgslsmith_f_op_f32(-871f - -1181f)), _wgslsmith_f_op_f32(max(-911f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-630f - 172f), -1000f, 22628i > var_0.x)) * _wgslsmith_f_op_f32(abs(-1555f))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>) -> f32 {
    var var_0 = !vec4<bool>(true, true, !any(arg_2), global2[_wgslsmith_index_u32(u_input.a.x, 28u)]);
    var var_1 = Struct_2(arg_0.a.zyw, vec4<i32>(u_input.c.x, u_input.d.x, _wgslsmith_clamp_i32(~u_input.c.x, -2147483647i, ~_wgslsmith_div_i32(u_input.c.x, -26661i)), i32(-1i) * -15644i), -1367f);
    var var_2 = Struct_4(Struct_3(any(!select(vec4<bool>(arg_2.x, false, false, arg_2.x), vec4<bool>(false, arg_2.x, true, global2[_wgslsmith_index_u32(0u, 28u)]), vec4<bool>(arg_2.x, true, false, var_0.x))), vec3<i32>(u_input.d.x, min(var_1.b.x, _wgslsmith_add_i32(u_input.c.x, 0i)), var_1.b.x)));
    let var_3 = var_0.x & var_0.x;
    let var_4 = u_input.c.x;
    return arg_1;
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 13u)];
    let var_1 = var_0.a;
    global1 = ~0u;
    let var_2 = ~vec3<i32>(var_1.b.x, 32463i, u_input.c.x);
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1551f, -1036f, 1369f))), 856f, vec2<bool>(var_0.a.a, true))))));
    return var_0.a;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec4<u32> {
    global0 = array<Struct_4, 13>();
    global1 = 10115u;
    let var_0 = Struct_4(func_2(~max(reverseBits(u_input.c.x), u_input.c.x & 18286i)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a.wxz * _wgslsmith_f_op_vec3_f32(select(arg_1.b, arg_1.b, var_0.a.a))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(abs(arg_1.a.x)), 1000f)) - vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-402f + -346f))), -849f, 219f)), ~(vec4<i32>(-1i) * -vec4<i32>(-30483i, 47636i, -14928i, u_input.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -506f));
    global0 = array<Struct_4, 13>();
    return abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, ~_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), abs(22570u), u_input.a.x), ~firstLeadingBit(vec4<u32>(u_input.b.x, 1u, 88254u, u_input.b.x))));
}

fn func_5(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_3, arg_3: u32) -> Struct_4 {
    var var_0 = -658f;
    global0 = array<Struct_4, 13>();
    let var_1 = vec3<bool>(true, (_wgslsmith_sub_u32(21436u, 43159u >> (u_input.a.x % 32u)) ^ _wgslsmith_mult_u32(arg_3, u_input.a.x)) != _wgslsmith_dot_vec3_u32(u_input.b, u_input.b), func_2(arg_2.b.x).a);
    global1 = 55377u >> (_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.x, _wgslsmith_mult_u32(~24925u, _wgslsmith_dot_vec2_u32(arg_0.wy, u_input.a))), _wgslsmith_div_u32(~arg_3, ~1u) | (9057u >> (_wgslsmith_sub_u32(4294967295u, arg_0.x) % 32u))) % 32u);
    return global0[_wgslsmith_index_u32(~arg_0.x, 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(true, Struct_1(vec4<f32>(376f, 174f, 1129f, -1472f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(2126f, 1271f, 346f), vec3<f32>(-588f, -2925f, -714f))))) ^ vec4<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, 106191u, 15439u), vec4<u32>(4294967295u, u_input.a.x, 0u, 17809u)), ~vec4<u32>(21865u, u_input.a.x, u_input.b.x, 57293u)), 1u, ~2278u), !global2[_wgslsmith_index_u32(u_input.b.x, 28u)], Struct_3(global2[_wgslsmith_index_u32(3009u, 28u)], vec3<i32>(_wgslsmith_mod_i32(u_input.d.x, u_input.d.x << (1u % 32u)), ~u_input.c.x, -_wgslsmith_mult_i32(0i, 0i))), ~min(~u_input.b.x | ~2320u, _wgslsmith_dot_vec2_u32(min(u_input.b.zx, u_input.a), vec2<u32>(44596u, 1u))));
    let var_1 = vec2<u32>(_wgslsmith_div_u32(u_input.a.x, 39849u | u_input.a.x) ^ 13948u, u_input.b.x) | _wgslsmith_div_vec2_u32(vec2<u32>(64620u, firstTrailingBit(~u_input.a.x)), ~u_input.a);
    var var_2 = abs(_wgslsmith_div_u32(~47582u, firstTrailingBit(4294967295u))) | var_1.x;
    global1 = _wgslsmith_div_u32(u_input.b.x, ~abs(select(u_input.a.x & 0u, var_1.x | 4294967295u, var_0.a.a)));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, reverseBits(vec3<u32>(select(var_1.x, u_input.b.x, global2[_wgslsmith_index_u32(0u, 28u)]), var_1.x, _wgslsmith_mod_u32(countOneBits(18758u), ~var_1.x)))), 13u)];
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(-116f, _wgslsmith_f_op_f32(round(-674f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_3()).x, -237f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -814f), _wgslsmith_f_op_f32(select(-2217f, _wgslsmith_f_op_f32(step(483f, -256f)), any(vec3<bool>(true, true, false)))))), _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2430f, -554f, -1155f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1682f, 759f, 1030f))), -1045f, vec2<bool>(true, true)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(vec4<f32>(415f, 895f, 733f, 917f), vec3<f32>(1498f, -418f, 1203f)), -1731f, vec2<bool>(false, global2[_wgslsmith_index_u32(var_1.x, 28u)]))), _wgslsmith_f_op_f32(f32(-1f) * -136f), _wgslsmith_div_f32(-818f, 1124f))), vec3<f32>(_wgslsmith_f_op_f32(step(-2135f, -449f)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(sign(815f))), _wgslsmith_f_op_f32(sign(1663f))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(~_wgslsmith_div_i32(var_0.a.b.x, u_input.d.x))), u_input.b.x, _wgslsmith_add_vec4_u32(vec4<u32>(~u_input.b.x, u_input.a.x, var_1.x, u_input.a.x) | _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 0u, var_1.x, var_1.x), max(vec4<u32>(71050u, 44679u, 0u, var_1.x), vec4<u32>(u_input.a.x, 20230u, 22648u, 24678u)), select(vec4<u32>(var_1.x, 13934u, var_1.x, 50193u), vec4<u32>(0u, 0u, 104871u, var_1.x), false)), vec4<u32>(1u, _wgslsmith_div_u32(var_1.x, u_input.b.x), var_1.x | 4294967295u, ~var_1.x) ^ _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(31312u, 1u, 0u, 3127u), vec4<u32>(31064u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 1u, var_1.x, 20500u)), firstTrailingBit(vec4<u32>(var_1.x, 35036u, var_1.x, 1u)), min(vec4<u32>(u_input.a.x, var_1.x, 9446u, 19950u), vec4<u32>(var_1.x, var_1.x, u_input.b.x, 62277u)))));
}

