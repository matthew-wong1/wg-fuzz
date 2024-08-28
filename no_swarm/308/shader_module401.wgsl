struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_4,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: f32;

var<private> global2: array<Struct_2, 25>;

var<private> global3: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(-1298f, 719f, 1116f), vec3<f32>(-248f, 1240f, 925f), vec3<f32>(1047f, -2323f, 1000f), vec3<f32>(-536f, -1443f, -1108f), vec3<f32>(152f, -303f, 505f), vec3<f32>(-1839f, 518f, 431f), vec3<f32>(988f, -410f, -1010f), vec3<f32>(895f, 845f, 319f), vec3<f32>(1000f, 1610f, 1125f), vec3<f32>(176f, 1060f, 974f), vec3<f32>(635f, -701f, -551f));

var<private> global4: i32 = -1i;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    var var_0 = vec4<i32>(1i, ~u_input.d.x, 5961i, u_input.b.x ^ u_input.d.x);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(u_input.c, u_input.c, !(!all(vec4<bool>(false, false, true, false)))), u_input.c), 10u)];
    global0 = array<Struct_1, 10>();
    let var_2 = Struct_2(991f, 7337i, ~firstTrailingBit(u_input.c) >> (select(1u, _wgslsmith_clamp_u32(17693u, u_input.c, 50418u) << (57574u % 32u), var_1.a.x) % 32u), Struct_1(vec2<bool>(var_1.a.x, all(select(vec3<bool>(var_1.a.x, true, false), vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(var_1.a.x, false, var_1.a.x)))), 27968i), -abs(~_wgslsmith_clamp_i32(-1114i, u_input.b.x, u_input.b.x)));
    let var_3 = Struct_5(select(vec2<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c, 2664u, var_2.c)), vec3<u32>(10069u, 5212u, var_2.c)), u_input.c), vec2<u32>(u_input.c, u_input.c) << (~(vec2<u32>(0u, 1u) | vec2<u32>(u_input.c, 0u)) % vec2<u32>(32u)), !select(vec2<bool>(false, var_2.d.a.x), vec2<bool>(true, var_1.a.x), false || var_1.a.x)), Struct_4(Struct_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1271f), _wgslsmith_dot_vec2_i32(var_0.xw, vec2<i32>(-1i, -1196i)), ~var_2.c, var_2.d, select(-6061i, -7315i, true)), global2[_wgslsmith_index_u32(~42494u, 25u)], global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, u_input.c, var_2.c) >> (~u_input.c % 32u), 25u)], var_2.d.a)), -25384i, vec4<u32>(19026u, 4294967295u, ~4294967295u, 37108u));
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>) -> f32 {
    let var_0 = ~(-(((u_input.d.x | 33219i) >> (0u % 32u)) >> (arg_1.x % 32u)));
    global1 = arg_0.a;
    let var_1 = !select(!vec4<bool>(!arg_0.d.a.x, !arg_0.d.a.x, any(vec3<bool>(false, arg_0.d.a.x, true)), arg_0.d.a.x), vec4<bool>(arg_0.d.a.x, arg_1.x < _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_1.x), vec2<u32>(4294967295u, arg_0.c)), arg_0.d.a.x, all(!vec4<bool>(arg_0.d.a.x, false, arg_0.d.a.x, arg_0.d.a.x))), func_3());
    let var_2 = Struct_3(Struct_2(arg_0.a, 28135i, abs(countOneBits(5808u)), global0[_wgslsmith_index_u32(abs(~15924u), 10u)], ~_wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.d.x, -38819i, var_0), vec3<i32>(u_input.a, arg_0.d.b, arg_0.d.b)), vec3<i32>(0i, var_0, arg_0.e) ^ vec3<i32>(-23637i, u_input.d.x, -1i))), global2[_wgslsmith_index_u32(abs(~(_wgslsmith_div_u32(arg_1.x, 1u) & 1u)), 25u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.x, ~1u >> (~arg_0.c % 32u)) << (arg_0.c % 32u), 25u)], arg_0.d.a);
    global3 = array<vec3<f32>, 11>();
    return _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1237f), _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.a.a)) - _wgslsmith_f_op_f32(select(arg_0.a, var_2.c.a, var_1.x))))))));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec4<f32>) -> i32 {
    let var_0 = Struct_4(Struct_3(Struct_2(_wgslsmith_f_op_f32(-arg_2.x), -22731i, 34919u, global0[_wgslsmith_index_u32(~reverseBits(u_input.c), 10u)], -1203i & u_input.a), global2[_wgslsmith_index_u32(abs(u_input.c), 25u)], Struct_2(2654f, i32(-1i) * -u_input.a, u_input.c, Struct_1(vec2<bool>(arg_0, false), reverseBits(u_input.b.x)), firstTrailingBit(i32(-1i) * -24047i)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), 0i >= u_input.b.x), !select(vec2<bool>(false, false), vec2<bool>(true, false), true), func_3())));
    let var_1 = arg_2.xyy;
    global0 = array<Struct_1, 10>();
    global3 = array<vec3<f32>, 11>();
    let var_2 = -firstTrailingBit(_wgslsmith_div_i32(15446i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.a.a.e, u_input.a, u_input.d.x), vec4<i32>(var_0.a.a.b, 0i, var_0.a.a.b, u_input.a))));
    return var_2;
}

fn func_1(arg_0: vec2<i32>) -> bool {
    global1 = _wgslsmith_f_op_f32(-1411f - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-830f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(850f, -342f))))), -599f));
    global4 = func_4(any(select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, true)), true, true), false)), all(vec4<bool>(true, true, true, true)), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-646f * _wgslsmith_f_op_f32(abs(-461f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2050f + -428f), -522f)), firstTrailingBit(u_input.c) == (u_input.c ^ 0u))), -556f, _wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(~(~u_input.c), 25u)], vec3<u32>(6178u, reverseBits(u_input.c), 32910u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-654f, -171f) - _wgslsmith_f_op_f32(-132f * -1365f))));
    var var_0 = Struct_3(global2[_wgslsmith_index_u32(u_input.c, 25u)], global2[_wgslsmith_index_u32(0u, 25u)], Struct_2(-1000f, 2147483647i, _wgslsmith_mod_u32(8085u, u_input.c), Struct_1(vec2<bool>(any(vec4<bool>(true, false, true, true)), any(vec3<bool>(false, false, false))), min(min(u_input.d.x, u_input.d.x), -u_input.b.x)), -8512i), vec2<bool>(true, true));
    var var_1 = all(!vec4<bool>(var_0.c.d.a.x, (var_0.a.d.b ^ 0i) >= ~27009i, true, false));
    let var_2 = 1u;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(!vec2<bool>(func_1(u_input.b), true), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), true), true), vec2<bool>(false, 2147483647i <= firstTrailingBit(0i))));
    var var_1 = Struct_5(select(reverseBits(firstLeadingBit(~vec2<u32>(u_input.c, 1u))), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(11769u, 4294967295u))), var_0), Struct_4(Struct_3(Struct_2(-263f, _wgslsmith_mult_i32(1i, u_input.a), select(u_input.c, 1u, true), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, 33253u), 10u)], u_input.b.x), global2[_wgslsmith_index_u32(22235u, 25u)], global2[_wgslsmith_index_u32(~89892u, 25u)], vec2<bool>(true, true))), u_input.d.x, _wgslsmith_add_vec4_u32(max(~vec4<u32>(u_input.c, 5633u, u_input.c, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(14362u, u_input.c, u_input.c, u_input.c), vec4<u32>(0u, 1u, u_input.c, u_input.c))) >> ((min(vec4<u32>(u_input.c, u_input.c, 1u, 12604u), vec4<u32>(u_input.c, u_input.c, u_input.c, 1u)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(19175u, 0u, u_input.c, u_input.c), vec4<u32>(u_input.c, 1u, u_input.c, u_input.c)) % vec4<u32>(32u))) % vec4<u32>(32u)), select(vec4<u32>(u_input.c, reverseBits(4294967295u), u_input.c, 1u), vec4<u32>(1u, abs(u_input.c), _wgslsmith_div_u32(u_input.c, u_input.c), ~0u), u_input.d.x == ~u_input.a)));
    global0 = array<Struct_1, 10>();
    var var_2 = 1i;
    var var_3 = func_1(vec2<i32>(reverseBits(2147483647i), 3180i)) & any(select(select(vec2<bool>(false, var_1.b.a.c.d.a.x), var_1.b.a.a.d.a, vec2<bool>(true, true)), vec2<bool>(all(vec4<bool>(var_1.b.a.b.d.a.x, true, var_0, false)), var_0), var_1.b.a.c.d.a));
    var var_4 = var_1.d.yzx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b.a.c.a))), _wgslsmith_mult_vec2_i32(~(_wgslsmith_mult_vec2_i32(vec2<i32>(-17343i, u_input.a), vec2<i32>(var_1.c, -14399i)) ^ -u_input.d), -_wgslsmith_clamp_vec2_i32(~u_input.b, vec2<i32>(-6693i, -125i), vec2<i32>(2147483647i, var_1.b.a.b.d.b))), vec2<i32>(~min(~var_1.b.a.c.b, ~var_1.b.a.a.d.b), u_input.d.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.b.a.b.a, var_1.b.a.c.a), vec2<f32>(-1795f, 488f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1756f, 1450f)))))));
}

