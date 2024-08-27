struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: i32,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(1u, 4294967295u, 15827u, 0u), vec4<u32>(1u, 0u, 1u, 1u), vec4<u32>(4294967295u, 44741u, 14469u, 0u), vec4<u32>(62616u, 8757u, 48378u, 4294967295u), vec4<u32>(16045u, 4294967295u, 62011u, 80578u), vec4<u32>(19453u, 0u, 75432u, 4294967295u), vec4<u32>(12741u, 4294967295u, 81732u, 1u), vec4<u32>(25560u, 60181u, 0u, 36302u), vec4<u32>(4294967295u, 0u, 3743u, 5373u), vec4<u32>(20393u, 10047u, 50445u, 0u), vec4<u32>(622u, 1u, 4294967295u, 34789u), vec4<u32>(4294967295u, 9354u, 4294967295u, 17134u), vec4<u32>(1u, 12799u, 59288u, 1u), vec4<u32>(356u, 0u, 22278u, 0u), vec4<u32>(1u, 3850u, 1u, 20404u), vec4<u32>(4294967295u, 0u, 11023u, 88877u), vec4<u32>(135854u, 45043u, 48357u, 56336u), vec4<u32>(18233u, 0u, 4294967295u, 0u), vec4<u32>(0u, 1085u, 0u, 17862u), vec4<u32>(4294967295u, 0u, 63906u, 5851u), vec4<u32>(4294967295u, 43549u, 36029u, 4294967295u));

var<private> global2: array<Struct_5, 15>;

var<private> global3: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(8211i, i32(-2147483648), -13501i, -34829i), vec4<i32>(20465i, i32(-2147483648), -26357i, 2147483647i), vec4<i32>(-27923i, -22831i, 68500i, 0i), vec4<i32>(i32(-2147483648), 0i, -1i, 0i), vec4<i32>(23060i, 9563i, -9127i, -21064i), vec4<i32>(0i, 42081i, 10591i, -21924i), vec4<i32>(i32(-2147483648), 1i, 0i, i32(-2147483648)), vec4<i32>(0i, 48898i, -49810i, 2147483647i), vec4<i32>(-3109i, 4353i, i32(-2147483648), -11747i), vec4<i32>(1i, 1i, 2343i, 26460i), vec4<i32>(-1i, 2332i, -4477i, 24717i), vec4<i32>(-41952i, -503i, i32(-2147483648), -21470i), vec4<i32>(1i, i32(-2147483648), -19387i, 31605i), vec4<i32>(i32(-2147483648), -15102i, -12674i, 55498i), vec4<i32>(10829i, -18876i, i32(-2147483648), -36878i), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 1i), vec4<i32>(32728i, 1239i, 2147483647i, -4006i), vec4<i32>(0i, -1i, 2147483647i, 41758i), vec4<i32>(-33209i, 12564i, -23744i, 0i), vec4<i32>(2147483647i, 1i, 0i, -60086i), vec4<i32>(0i, 0i, -29017i, -4046i), vec4<i32>(-27324i, i32(-2147483648), 2147483647i, 1i), vec4<i32>(0i, -1i, 2147483647i, -23435i), vec4<i32>(-55093i, 9956i, 14245i, 20089i), vec4<i32>(13439i, -27586i, -5159i, i32(-2147483648)), vec4<i32>(-18762i, 0i, i32(-2147483648), 19183i), vec4<i32>(-5068i, 0i, i32(-2147483648), 15582i), vec4<i32>(1040i, 2147483647i, 26994i, i32(-2147483648)), vec4<i32>(2147483647i, -1i, -1i, 1i));

var<private> global4: array<vec2<bool>, 12>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
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

fn func_3(arg_0: bool, arg_1: Struct_5) -> bool {
    let var_0 = Struct_3(arg_1.d.a, false, arg_1.d.c.x);
    global0 = !vec4<bool>(true, arg_0, 0u != firstTrailingBit(~u_input.b), arg_1.d.a);
    var var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~max(u_input.c.ww, u_input.c.wy), u_input.c.wx), countOneBits((u_input.c.x << (0u % 32u)) | max(u_input.c.x, 0u))), 15u)];
    let var_2 = true;
    let var_3 = all(vec4<bool>(!any(select(global4[_wgslsmith_index_u32(63659u, 12u)], global0.xy, var_0.b)), !var_1.d.a, select(false, any(select(vec4<bool>(var_2, false, var_2, global0.x), vec4<bool>(true, arg_1.d.a, arg_0, arg_0), vec4<bool>(arg_1.d.a, true, true, false))), firstTrailingBit(arg_1.d.b) != -arg_1.e), any(select(!vec4<bool>(var_2, true, true, var_0.b), !vec4<bool>(false, false, var_0.b, var_0.a), var_2))));
    return -328f == _wgslsmith_f_op_f32(round(-2612f));
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    global4 = array<vec2<bool>, 12>();
    let var_0 = !vec4<bool>(!global0.x, true, true, all(select(vec4<bool>(true, false, false, true), vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, true, global0.x, global0.x))) || false);
    global1 = array<vec4<u32>, 21>();
    let var_1 = Struct_1(u_input.c.wx, !(!(0u >= u_input.b)));
    global0 = !(!vec4<bool>(var_0.x, func_3(true, global2[_wgslsmith_index_u32(~16768u, 15u)]), arg_0.x > _wgslsmith_f_op_f32(-1062f * -1458f), !(var_0.x & var_1.b)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-576f - _wgslsmith_f_op_f32(arg_0.x + arg_0.x)))));
}

fn func_1() -> vec3<u32> {
    let var_0 = Struct_3(_wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_mult_i32(u_input.a.x, -2147483647i)), -1i) == -(~(-29691i & u_input.a.x)), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<f32>(-1083f, -1345f))) + _wgslsmith_f_op_f32(sign(-535f))) - _wgslsmith_f_op_f32(-973f + _wgslsmith_f_op_f32(f32(-1f) * -318f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -868f), _wgslsmith_f_op_f32(floor(-310f)), (0u >> (u_input.b % 32u)) >= _wgslsmith_sub_u32(4294967295u, 1u)))));
    global1 = array<vec4<u32>, 21>();
    let var_1 = Struct_1(vec2<u32>(u_input.c.x, u_input.b) ^ _wgslsmith_clamp_vec2_u32(~u_input.c.xw, vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.b, 11775u, 47119u, 4327u)), firstLeadingBit(u_input.c.x)), abs(~u_input.c.yx)), var_0.b);
    let var_2 = Struct_2(u_input.a.x == -abs(u_input.a.x), abs(~firstTrailingBit(firstTrailingBit(u_input.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -1188f), -1689f)));
    var var_3 = global2[_wgslsmith_index_u32(var_1.a.x ^ ~3807u, 15u)];
    return u_input.c.xzx;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<i32>, 29>();
    let var_0 = Struct_1(~(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(u_input.c.x, u_input.b)) ^ _wgslsmith_sub_vec2_u32(u_input.c.zx, vec2<u32>(3691u, u_input.b) ^ u_input.c.xz)), true);
    let var_1 = _wgslsmith_mult_vec3_i32(countOneBits(firstLeadingBit(-vec3<i32>(13650i, -2147483647i, u_input.a.x))) << ((func_1() ^ vec3<u32>(~var_0.a.x, 24531u, reverseBits(var_0.a.x))) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(~min(firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, 6287i)), -vec3<i32>(66413i, u_input.a.x, 2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-29679i, u_input.a.x), vec2<i32>(u_input.a.x, 1i)), u_input.a.x, ~(-45204i)), vec3<i32>(u_input.a.x ^ 2147483647i, -2147483647i & u_input.a.x, u_input.a.x)), countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 2147483647i, u_input.a.x), -vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), max(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 1i, 1i))))));
    global1 = array<vec4<u32>, 21>();
    let var_2 = ~_wgslsmith_mod_vec4_u32(u_input.c, firstTrailingBit(vec4<u32>(~u_input.b, ~u_input.c.x, 1u, min(var_0.a.x, var_0.a.x))));
    global4 = array<vec2<bool>, 12>();
    global3 = array<vec4<i32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a, (_wgslsmith_add_vec4_i32(vec4<i32>(20643i, 18838i, -2147483647i, 25840i) >> (global1[_wgslsmith_index_u32(u_input.b, 21u)] % vec4<u32>(32u)), reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 14199i))) & ~global3[_wgslsmith_index_u32(~var_2.x, 29u)]) | firstTrailingBit(-_wgslsmith_add_vec4_i32(vec4<i32>(0i, 20785i, var_1.x, 0i), vec4<i32>(var_1.x, u_input.a.x, 14022i, 38468i))), 108236u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-510f, 1316f, -223f, 1511f))) + vec4<f32>(-2206f, -288f, _wgslsmith_f_op_f32(f32(-1f) * -1051f), -1198f))));
}

