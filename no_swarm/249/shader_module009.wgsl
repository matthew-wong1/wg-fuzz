struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32;

var<private> global2: u32;

var<private> global3: array<u32, 24>;

var<private> global4: array<vec2<i32>, 13>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    global2 = ~_wgslsmith_clamp_u32(4294967295u, ~(~(~29811u)), 1u);
    var var_0 = Struct_2(reverseBits(abs(select(vec4<i32>(0i, 31984i, 0i, -2147483647i), vec4<i32>(0i, -15851i, 2147483647i, 0i), true))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(548f, 1082f, 435f, 1679f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1726f, 465f, 391f, 1618f) * vec4<f32>(-1474f, -779f, -1264f, -274f)))), !(any(vec3<bool>(false, true, false)) & true), _wgslsmith_f_op_f32(f32(-1f) * -344f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(291f - 1317f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(abs(179f)), _wgslsmith_f_op_f32(733f * -885f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -500f)))), _wgslsmith_f_op_f32(f32(-1f) * -1966f));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(min(var_0.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, 1177f, var_0.d, var_0.e) - vec4<f32>(290f, var_0.e, -160f, -100f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.d))) > _wgslsmith_f_op_f32(ceil(var_0.c.x)), var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) - 2160f));
    global4 = array<vec2<i32>, 13>();
    let var_2 = 516f;
    return var_0.b.b;
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: vec3<i32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-853f, -1404f))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(828f * 1725f) - _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(sign(267f)))) - _wgslsmith_f_op_f32(f32(-1f) * -598f));
    let var_0 = true;
    let var_1 = any(vec2<bool>(all(vec3<bool>(select(false, false, var_0), arg_0, true)), !arg_0));
    global1 = -1004f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-863f - -1970f))), 746f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -109f))))));
}

fn func_2() -> bool {
    global3 = array<u32, 24>();
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -107f);
    let var_0 = Struct_4(firstLeadingBit(countOneBits(vec3<i32>(-1i) * -vec3<i32>(-56575i, 1i, -2147483647i))), Struct_2(_wgslsmith_mult_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), -select(vec4<i32>(-1i, 2147483647i, -4283i, -34618i), vec4<i32>(16051i, -2380i, 0i, -1i), true)), Struct_1(vec4<f32>(1f, 1f, 1f, 1f), true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(356f)), -256f)), _wgslsmith_f_op_f32(func_4(func_3(), ~vec2<u32>(u_input.b, u_input.c), ~vec3<u32>(45039u, 1u, 55432u), -vec3<i32>(0i, 18726i, -1i)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1050f) + vec2<f32>(241f, 1000f)))))), -1033f, 289f), Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, 1282f)), -377f, _wgslsmith_f_op_f32(f32(-1f) * -737f), _wgslsmith_f_op_f32(f32(-1f) * -103f)), vec4<f32>(_wgslsmith_f_op_f32(514f + -1215f), _wgslsmith_f_op_f32(541f + -591f), -1000f, _wgslsmith_f_op_f32(-167f + 669f)))), !all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2127f - 1513f)) * 914f), -152f), Struct_3(_wgslsmith_mod_i32(-(~2147483647i), ~_wgslsmith_clamp_i32(-34914i, 0i, -2147483647i)), true, firstTrailingBit(~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 24u)], 24u)], 38300u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 24u)], 24u)]) | (vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 24u)], u_input.a, 17362u) >> (vec3<u32>(0u, u_input.c, 27662u) % vec3<u32>(32u))))), -1i);
    global3 = array<u32, 24>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -478f) * 1245f);
    return all(select(vec3<bool>(true, var_0.d.b, any(!vec3<bool>(true, false, var_0.c.b))), vec3<bool>(select(var_0.e == var_0.e, var_0.c.b && var_0.b.b.b, false && var_0.d.b), any(vec4<bool>(var_0.c.b, var_0.d.b, false, var_0.d.b)), var_0.c.b), !(!select(vec3<bool>(var_0.c.b, true, false), vec3<bool>(var_0.d.b, false, var_0.b.b.b), var_0.c.b))));
}

fn func_1() -> StorageBuffer {
    global0 = -777f;
    let var_0 = select(vec2<bool>(any(vec2<bool>(true, true)), true), vec2<bool>(true, true), select(true, true, !func_2()));
    var var_1 = u_input.c;
    var var_2 = Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(~firstLeadingBit(-44404i), min(reverseBits(-39817i), i32(-1i) * -2147483647i), 2147483647i, _wgslsmith_clamp_i32(~5737i, _wgslsmith_sub_i32(1i, -1i), firstLeadingBit(-9798i))), vec4<i32>(abs(-48411i), ~1i, 1i, 1i) ^ (-vec4<i32>(-18980i, 1i, -1i, 0i) >> (vec4<u32>(u_input.b, u_input.c, 2158u, 1u) % vec4<u32>(32u)))), false, ~vec3<u32>(~_wgslsmith_sub_u32(33435u, u_input.a), u_input.c, 18290u));
    var_1 = _wgslsmith_div_u32(u_input.b, select(_wgslsmith_mod_u32(_wgslsmith_add_u32(var_2.c.x, firstTrailingBit(u_input.b)), var_2.c.x), 4294967295u, var_0.x && ((var_2.a <= 1i) | var_2.b)));
    return StorageBuffer(1u, _wgslsmith_dot_vec2_i32(vec2<i32>((var_2.a & 2147483647i) >> (36787u % 32u), -1i), global4[_wgslsmith_index_u32(reverseBits(var_2.c.x), 13u)]), global3[_wgslsmith_index_u32(select(1u, global3[_wgslsmith_index_u32(~min(16618u, var_2.c.x) >> (~1u % 32u), 24u)], var_0.x), 24u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-644f * -307f) - 1750f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-402f + 429f), -1412f)) * -413f)), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-456f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(2081f)), _wgslsmith_f_op_f32(226f - -140f)))), _wgslsmith_f_op_f32(floor(1376f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -79461i;
    global3 = array<u32, 24>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -932f);
    let var_2 = min(firstTrailingBit(-select(min(vec4<i32>(2147483647i, var_0, var_0, var_0), vec4<i32>(-11002i, var_0, var_0, var_0)), ~vec4<i32>(-44523i, var_0, 1i, 0i), true)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, _wgslsmith_sub_i32(-var_0, _wgslsmith_mod_i32(1i, 1i)), 2147483647i, min(var_0, var_0)), _wgslsmith_mult_vec4_i32((vec4<i32>(80523i, -2147483647i, -76475i, -41182i) >> (vec4<u32>(u_input.c, 1u, 4294967295u, 4294967295u) % vec4<u32>(32u))) | ~vec4<i32>(var_0, 2147483647i, 2147483647i, var_0), vec4<i32>(-2147483647i, -2147483647i, ~3891i, -7145i))));
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1 + 626f)));
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1)));
    let x = u_input.a;
    s_output = func_1();
}

