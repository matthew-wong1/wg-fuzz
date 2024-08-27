struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(1u, 88890u, 1u), vec3<u32>(17965u, 20641u, 4837u), vec3<u32>(0u, 1u, 14298u), vec3<u32>(1u, 4294967295u, 8486u), vec3<u32>(1u, 24938u, 41479u), vec3<u32>(15854u, 1974u, 5872u), vec3<u32>(1u, 4294967295u, 53173u), vec3<u32>(30422u, 48112u, 0u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(77248u, 0u, 46390u), vec3<u32>(12254u, 12156u, 14617u), vec3<u32>(1u, 73314u, 4294967295u), vec3<u32>(26940u, 1u, 1u), vec3<u32>(4294967295u, 58766u, 1u), vec3<u32>(176u, 3523u, 13561u), vec3<u32>(4294967295u, 53676u, 20055u));

var<private> global1: array<i32, 5>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec4<u32> {
    return firstLeadingBit(min(vec4<u32>(1189u, u_input.a.x, u_input.b.x, max(21193u, u_input.b.x)), ~vec4<u32>(u_input.a.x, u_input.b.x, 4294967295u, 51008u) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, 34705u, 82140u), vec4<u32>(u_input.a.x, 4843u, 1u, 27585u)) % vec4<u32>(32u))) >> (~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, 4294967295u), reverseBits(vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x))) % vec4<u32>(32u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = arg_2;
    let var_1 = 2074f;
    var var_2 = func_3();
    global0 = array<vec3<u32>, 16>();
    let var_3 = min(vec4<u32>(_wgslsmith_sub_u32(countOneBits(_wgslsmith_add_u32(83863u, arg_2.e)), ~u_input.a.x), select(~4294967295u, max(var_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, u_input.b.x), vec2<u32>(var_2.x, 15893u))), all(vec2<bool>(true, true))), ~u_input.b.x, ~min(15856u, 31716u)), firstLeadingBit(vec4<u32>(arg_1.x, ~arg_1.x, 1u, ~firstTrailingBit(arg_1.x))));
    return select(select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true), all(vec4<bool>(false, false, false, true)))), vec4<bool>(true, (var_3.x ^ 3936u) > ~u_input.a.x, all(vec4<bool>(false, false, true, true)) & true, !any(vec3<bool>(true, false, true))), vec4<bool>(any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))), true, select(var_3.x == var_3.x, true, true), true)), select(vec4<bool>(true, true, !select(true, false, false), !all(vec4<bool>(false, true, true, false))), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), false), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true), false), ~(~global1[_wgslsmith_index_u32(var_3.x, 5u)]) <= -_wgslsmith_add_i32(arg_2.c.x, -23167i)), true);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_4(vec2<i32>(-min(-13506i, -2147483647i) >> ((abs(u_input.b.x) & 4294967295u) % 32u), ~(-5249i)), 0u);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1312f, 399f, -652f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-407f, -2251f, -136f), vec3<f32>(1042f, -1222f, 682f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 808f, -682f) - vec3<f32>(-1319f, 1561f, -693f)) - vec3<f32>(-628f, 256f, 171f)))), _wgslsmith_f_op_f32(f32(-1f) * -505f), vec3<i32>(u_input.c, u_input.c, firstTrailingBit(0i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1366f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -696f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(405f - -1335f)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-224f, 721f, -1467f, 1155f), vec4<f32>(1518f, 884f, 1011f, 2164f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2500f, 797f, -327f, 461f) + vec4<f32>(1100f, -404f, -834f, -1853f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 347f, 463f, -1455f)), arg_2))))), firstTrailingBit(51971u));
    global1 = array<i32, 5>();
    let var_2 = select(func_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.c.x, _wgslsmith_mod_i32(77938i, 65379i)), vec2<i32>(1i, ~13307i), vec2<i32>(-2046i, i32(-1i) * -1i)), firstLeadingBit(reverseBits(vec2<u32>(27586u, var_0.b))), var_1).xw, !(!func_2(vec2<i32>(global1[_wgslsmith_index_u32(83949u, 5u)], u_input.c) | var_1.c.zz, ~u_input.a, var_1).wx), arg_2.x);
    var var_3 = Struct_3(arg_0, countOneBits(var_1.c) | ~_wgslsmith_sub_vec3_i32(~vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(1u, 5u)]), -vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 5u)], 6265i, var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1288f) - 912f), vec3<f32>(-1181f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -351f) * var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.d.x, 2154f)) + _wgslsmith_f_op_f32(abs(var_1.d.x))))));
    return arg_0;
}

fn func_1() -> Struct_2 {
    global0 = array<vec3<u32>, 16>();
    let var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 5u)];
    global0 = array<vec3<u32>, 16>();
    var var_1 = true;
    var var_2 = func_4(Struct_2(all(select(func_2(vec2<i32>(u_input.c, global1[_wgslsmith_index_u32(88616u, 5u)]), u_input.a, Struct_1(vec3<f32>(222f, -1022f, 416f), 165f, vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 5u)], global1[_wgslsmith_index_u32(12399u, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)]), vec4<f32>(-1382f, -297f, -471f, 261f), 4294967295u)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)))), func_2(~_wgslsmith_mod_vec2_i32(select(vec2<i32>(u_input.c, global1[_wgslsmith_index_u32(0u, 5u)]), vec2<i32>(-30457i, u_input.c), vec2<bool>(false, true)), -vec2<i32>(25029i, 1i)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x | 60940u, u_input.a.x), ~(~vec2<u32>(1u, 0u))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1981f, -763f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1187f, -1541f, -520f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_mult_vec3_i32(~vec3<i32>(1i, global1[_wgslsmith_index_u32(u_input.a.x, 5u)], -30375i), vec3<i32>(26819i, 0i, -8784i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1032f, -217f, -711f, 184f), vec4<f32>(699f, 1358f, -1000f, 835f))), ~u_input.b.x)).xz, select(vec4<bool>(false, any(vec3<bool>(true, false, false)), true, true), !func_2(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, 1i), vec2<i32>(9210i, -9201i)), firstTrailingBit(vec2<u32>(26546u, u_input.a.x)), Struct_1(vec3<f32>(-257f, -1001f, -1017f), 1000f, vec3<i32>(28662i, 0i, -29542i), vec4<f32>(360f, -250f, -217f, -228f), 54195u)), func_2(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 5u)] >> (u_input.b.x % 32u), -1i), vec2<u32>(_wgslsmith_div_u32(u_input.a.x, 10280u), 18575u), Struct_1(vec3<f32>(-297f, -135f, 439f), -1310f, vec3<i32>(u_input.c, global1[_wgslsmith_index_u32(0u, 5u)], -52639i), vec4<f32>(799f, -1507f, 2270f, 184f), 43874u))));
    return Struct_2(true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(true);
    var_0 = func_1();
    let var_1 = var_0.a;
    var var_2 = !(!select(!select(vec4<bool>(true, var_0.a, true, false), vec4<bool>(true, var_0.a, false, true), vec4<bool>(false, var_0.a, false, true)), func_2(abs(vec2<i32>(-17792i, -10529i)), min(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a), Struct_1(vec3<f32>(758f, 1328f, 303f), -581f, vec3<i32>(0i, 12609i, global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec4<f32>(-164f, 2175f, 458f, -1737f), 33751u)), !select(vec4<bool>(var_0.a, false, var_0.a, var_0.a), vec4<bool>(true, true, true, var_0.a), true)));
    let var_3 = ~_wgslsmith_mult_vec3_u32(abs(_wgslsmith_mult_vec3_u32(u_input.b, ~vec3<u32>(1u, u_input.b.x, u_input.b.x))), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, 0u), global0[_wgslsmith_index_u32(4294967295u, 16u)]) << (vec3<u32>(u_input.b.x, u_input.a.x | 2969u, u_input.b.x) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(min(u_input.b.zz, _wgslsmith_mult_vec2_u32(vec2<u32>(var_3.x, u_input.a.x), ~vec2<u32>(4294967295u, var_3.x)))), u_input.a.x, min(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a.x) & vec2<u32>(138795u, u_input.b.x), vec2<u32>(1u, 4294967295u)), select(~vec2<u32>(134232u, u_input.b.x), u_input.b.xx, true)), _wgslsmith_mult_u32(abs(select(var_3.x, u_input.a.x, true)), var_3.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-598f + _wgslsmith_f_op_f32(max(-1117f, _wgslsmith_f_op_f32(-242f - -1225f)))))));
}

