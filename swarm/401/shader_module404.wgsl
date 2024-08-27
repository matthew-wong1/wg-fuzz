struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_3, 25>;

var<private> global2: array<u32, 9> = array<u32, 9>(0u, 0u, 4646u, 44472u, 23847u, 4294967295u, 53031u, 30605u, 46149u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_3, arg_3: i32) -> i32 {
    global0 = abs(-vec3<i32>(~1i, -6053i, _wgslsmith_dot_vec3_i32(arg_2.d.a.a.wxz ^ arg_2.c.a.a.zzx, ~vec3<i32>(-27753i, -11131i, arg_3))));
    var var_0 = Struct_3(Struct_1(-vec4<i32>(arg_0, max(arg_2.d.a.d, arg_3), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, 1i), u_input.a), -1i), !arg_2.d.a.b, arg_2.d.a.c, arg_0), arg_2.c.a.b.x, Struct_2(arg_2.c.a), arg_2.c, -(_wgslsmith_mod_i32(arg_2.d.a.a.x, -2147483647i) & global0.x) & -36734i);
    global2 = array<u32, 9>();
    var var_1 = Struct_3(var_0.c.a, all(select(vec3<bool>(arg_2.b, arg_2.b || true, true), select(vec3<bool>(arg_2.c.a.b.x, var_0.a.b.x, true), select(vec3<bool>(var_0.c.a.b.x, true, var_0.a.b.x), vec3<bool>(false, var_0.c.a.b.x, arg_1), vec3<bool>(true, arg_1, false)), vec3<bool>(false, true, arg_1)), !select(vec3<bool>(false, arg_1, var_0.b), vec3<bool>(true, arg_1, arg_2.b), true))), var_0.c, arg_2.d, -2147483647i);
    var var_2 = countOneBits(_wgslsmith_mod_u32(abs(~1u) << (0u % 32u), 1u));
    return u_input.d;
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<i32>(u_input.a.x, 1i, 0i);
    var var_1 = (i32(-1i) * -5666i) ^ abs(-2147483647i | ~(-1i & global0.x));
    var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(37572i, global0.x, global0.x)) & ~_wgslsmith_mult_vec3_i32(vec3<i32>(1i, global0.x, var_0.x), vec3<i32>(53890i, u_input.a.x, 0i)), vec3<i32>(abs(2147483647i) & firstTrailingBit(9521i), func_3(_wgslsmith_mod_i32(var_0.x, u_input.d), true, Struct_3(Struct_1(vec4<i32>(-2147483647i, 1i, var_0.x, global0.x), vec2<bool>(false, false), vec2<f32>(880f, 346f), -2147483647i), false, Struct_2(Struct_1(vec4<i32>(u_input.a.x, global0.x, u_input.d, 32094i), vec2<bool>(false, false), vec2<f32>(-871f, 1074f), u_input.d)), Struct_2(Struct_1(vec4<i32>(0i, var_0.x, 0i, -33815i), vec2<bool>(false, false), vec2<f32>(-1719f, -2384f), 13050i)), global0.x), min(18578i, var_0.x)), var_0.x)), i32(-1i) * -(~abs(u_input.a.x)), _wgslsmith_sub_i32(max(29589i, _wgslsmith_mult_i32(~global0.x, _wgslsmith_sub_i32(u_input.d, 11599i))), ~_wgslsmith_clamp_i32(-1i, global0.x, _wgslsmith_mod_i32(var_0.x, var_0.x))));
    let var_2 = u_input.c.zyy;
    global1 = array<Struct_3, 25>();
    return Struct_2(Struct_1(~(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, u_input.d, var_0.x, var_0.x), vec4<i32>(2147483647i, -9763i, global0.x, -1i)) ^ vec4<i32>(-1141i, 1i, -67648i, 2147483647i)), select(vec2<bool>(select(false, true, true), true), vec2<bool>(true, true), u_input.d > _wgslsmith_sub_i32(13745i, u_input.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-525f, 1000f), vec2<f32>(381f, -1137f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(264f, 757f))))), u_input.d));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> vec3<i32> {
    var var_0 = ~firstLeadingBit(u_input.c.x);
    var var_1 = select(54146u, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 9u)], 9u)], max(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.c.x, 9u)], 9u)], u_input.c.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(7937u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)], 6440u), u_input.c)), !arg_1.a.b.x);
    var var_2 = abs(u_input.c) << (~max(vec4<u32>(_wgslsmith_sub_u32(71291u, 57189u), 2997u, reverseBits(4294967295u), global2[_wgslsmith_index_u32(13782u, 9u)]), _wgslsmith_mod_vec4_u32(u_input.c, _wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 1u, 4294967295u)))) % vec4<u32>(32u));
    var var_3 = ~vec2<u32>(firstTrailingBit(100962u), firstTrailingBit(~var_2.x) << (96261u % 32u));
    let var_4 = Struct_3(func_2().a, true, arg_1, arg_1, ~_wgslsmith_sub_i32(-2147483647i, arg_0 >> (~1u % 32u)));
    return min(_wgslsmith_mult_vec3_i32(var_4.a.a.wzy, select(countOneBits(arg_1.a.a.xxw), arg_1.a.a.zwx, true)), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(34685i, var_4.e, var_4.a.a.x >> (0u % 32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.a.d, arg_0, 1i), reverseBits(var_4.c.a.a.zyx))), ~arg_1.a.a.xzw));
}

fn func_1() -> vec4<bool> {
    let var_0 = -global0.zz;
    global0 = vec3<i32>(-2147483647i, 1i, -_wgslsmith_add_i32(1197i, _wgslsmith_dot_vec4_i32(vec4<i32>(59066i, global0.x, var_0.x, 2147483647i), vec4<i32>(-57130i, u_input.a.x, -49712i, u_input.d)))) | func_4(firstTrailingBit(0i >> (u_input.c.x % 32u)), func_2(), 1i);
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b.x, abs(_wgslsmith_dot_vec2_u32(u_input.c.xx, u_input.c.wz))), 67383u), 25u)];
    let var_2 = 49436u;
    global2 = array<u32, 9>();
    return !vec4<bool>(var_2 != ~(~var_2), func_2().a.b.x, false, var_1.a.b.x);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_1 {
    global0 = func_4(_wgslsmith_div_i32(-2147483647i, global0.x), arg_1, -11253i);
    global0 = arg_1.a.a.wyw;
    let var_0 = arg_1;
    let var_1 = vec3<u32>(u_input.b.x, ~116906u, u_input.c.x);
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(~42055u, firstTrailingBit(19506u));
    global1 = array<Struct_3, 25>();
    var var_1 = func_5(select(func_1(), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false), func_1(), vec4<bool>(true, true, true, true)), true), Struct_2(Struct_1(countOneBits(max(vec4<i32>(2147483647i, -1i, global0.x, u_input.d), vec4<i32>(-15749i, 6840i, global0.x, global0.x))), vec2<bool>(true, true), vec2<f32>(-677f, _wgslsmith_f_op_f32(max(-623f, -266f))), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, u_input.a.x, -1i, global0.x) ^ vec4<i32>(1i, global0.x, -1i, u_input.a.x), firstLeadingBit(vec4<i32>(42540i, -36502i, -18790i, global0.x))))));
    let var_2 = 0u;
    let var_3 = _wgslsmith_mod_vec2_i32(func_2().a.a.zx, global0.zz);
    global1 = array<Struct_3, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(select(select(max(vec2<u32>(105359u, var_2), ~vec2<u32>(55880u, global2[_wgslsmith_index_u32(1u, 9u)])), firstLeadingBit(abs(u_input.b)), all(!vec2<bool>(false, var_1.b.x))), firstLeadingBit(abs(~u_input.b)), func_5(!vec4<bool>(false, true, var_1.b.x, true), Struct_2(Struct_1(vec4<i32>(global0.x, -30111i, var_3.x, var_3.x), var_1.b, var_1.c, 1i))).b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, 391f, 471f, var_1.c.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(298f, -839f, -930f, var_1.c.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, var_1.c.x, -443f, var_1.c.x) - vec4<f32>(1348f, var_1.c.x, var_1.c.x, 1067f))), vec4<bool>(func_5(vec4<bool>(true, var_1.b.x, var_1.b.x, false), Struct_2(Struct_1(vec4<i32>(30552i, var_1.a.x, 4784i, var_1.d), var_1.b, var_1.c, var_1.a.x))).b.x, false, any(var_1.b), 1u < u_input.c.x))));
}

