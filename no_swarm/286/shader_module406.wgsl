struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(22537u, 1u, 0u, 1u, 0u);

var<private> global1: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec2<u32> {
    var var_0 = -1019f;
    let var_1 = select(!any(vec3<bool>(false, all(global1[_wgslsmith_index_u32(u_input.a, 28u)]), any(vec4<bool>(false, false, true, true)))), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-804f)) * -1012f) != _wgslsmith_f_op_f32(-225f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), false);
    let var_2 = Struct_1(_wgslsmith_dot_vec4_i32(select(-vec4<i32>(2147483647i, -2147483647i, -2147483647i, 33355i), abs(reverseBits(vec4<i32>(-1i, -4227i, u_input.b, u_input.b))), vec4<bool>(!var_1, true, var_1, any(vec4<bool>(true, true, var_1, false)))), ~(~_wgslsmith_mod_vec4_i32(vec4<i32>(30175i, u_input.b, 2147483647i, 5323i), vec4<i32>(u_input.b, u_input.b, 285i, u_input.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -341f, 177f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-650f, 681f, -407f) * vec3<f32>(-2173f, 638f, -583f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(776f, 1294f, -155f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-196f, -1479f, 1095f) * vec3<f32>(173f, 2076f, 414f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-746f, 980f, 1631f))), vec3<f32>(-2192f, 318f, 1467f), vec3<bool>(var_1, true, var_1))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2088f), _wgslsmith_f_op_f32(step(469f, -1485f)))), -208f))));
    global0 = array<u32, 5>();
    var_0 = -513f;
    return _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(~(~(~vec2<u32>(48135u, 0u))), vec2<u32>(u_input.a << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 5u)])) % 32u), global0[_wgslsmith_index_u32(abs(u_input.a), 5u)])), vec2<u32>(global0[_wgslsmith_index_u32(~u_input.a & 88706u, 5u)], ~32516u << (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(3522u, u_input.a, 35560u), vec3<u32>(u_input.a, 1u, 1u))) % 32u)), vec2<u32>(~abs(select(43046u, 1u, var_1)), _wgslsmith_div_u32(81418u, 1u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: bool, arg_3: vec4<f32>) -> vec3<bool> {
    let var_0 = -2147483647i;
    var var_1 = -_wgslsmith_div_vec3_i32(-(-arg_0 ^ select(vec3<i32>(var_0, -1i, 0i), vec3<i32>(arg_1.a.a.a, arg_1.a.d.a, var_0), false)), firstTrailingBit(-arg_0));
    global1 = array<vec2<bool>, 28>();
    let var_2 = Struct_4(func_3());
    var var_3 = Struct_1(u_input.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a.b), arg_1.a.a.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_3.x - -283f), -533f)));
    return vec3<bool>(arg_1.b.x, true, !arg_1.a.c.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: u32) -> u32 {
    var var_0 = Struct_5(Struct_2(Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-836f, 1000f, 254f), vec3<f32>(1000f, 195f, -1217f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1831f, -389f, 190f) + vec3<f32>(1782f, 1792f, -2148f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1195f, 353f)), 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1087f, 1242f, -1487f) * vec3<f32>(-243f, 2348f, -308f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(145f, -1235f, -1006f))))), global1[_wgslsmith_index_u32(3869u, 28u)], Struct_1(min(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 14625i), vec2<i32>(0i, -23495i))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1190f), -377f, _wgslsmith_f_op_f32(select(832f, 763f, true))), -280f)), arg_0.xz, ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32((u_input.a << (global0[_wgslsmith_index_u32(u_input.a, 5u)] % 32u)) >> (~36619u % 32u), 5u)], 1u), 5u)]);
    var_0 = Struct_5(Struct_2(Struct_1(~var_0.a.a.a ^ -2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.a.b) * var_0.a.a.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec3_f32(-var_0.a.d.b), !select(!vec2<bool>(arg_0.x, false), !vec2<bool>(true, var_0.b.x), any(vec2<bool>(var_0.a.c.x, false))), var_0.a.d), !vec2<bool>(true, all(vec2<bool>(var_0.b.x, false))), u_input.a);
    let var_1 = Struct_2(Struct_1(-14471i, vec3<f32>(_wgslsmith_div_f32(-1126f, var_0.a.a.c), -1807f, var_0.a.d.b.x), var_0.a.a.c), vec3<f32>(var_0.a.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-786f)))), -2841f), !(!select(select(vec2<bool>(arg_0.x, true), vec2<bool>(true, arg_0.x), vec2<bool>(var_0.a.c.x, arg_0.x)), vec2<bool>(true, true), !arg_0.x)), Struct_1(_wgslsmith_add_i32(-var_0.a.a.a, _wgslsmith_mod_i32(2147483647i, var_0.a.d.a)) & _wgslsmith_div_i32(0i, i32(-1i) * -1i), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_0.a.d.b))))), var_0.a.a.c));
    var var_2 = select(vec2<bool>(var_0.a.c.x, var_0.a.c.x), select(var_0.a.c, vec2<bool>(arg_0.x, !(!var_0.b.x)), true), any(select(select(vec4<bool>(false, var_1.c.x, true, true), !vec4<bool>(arg_0.x, var_0.b.x, false, var_0.a.c.x), select(var_1.c.x, var_1.c.x, arg_0.x)), vec4<bool>(true, arg_0.x && true, true, true), !any(vec3<bool>(false, var_0.b.x, true)))));
    let var_3 = var_0.a.a.a;
    return 19760u;
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_5) -> i32 {
    var var_0 = ((_wgslsmith_clamp_vec2_i32(vec2<i32>(35292i, arg_2.a.d.a), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-10862i, -1i)), vec2<i32>(19469i, 1i)) << (~select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(global0[_wgslsmith_index_u32(1u, 5u)], u_input.a), arg_0) % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), firstLeadingBit(vec2<i32>(arg_2.a.a.a, u_input.b) << (vec2<u32>(arg_1, 0u) % vec2<u32>(32u))))) >> (~vec2<u32>(func_4(func_2(vec3<i32>(u_input.b, arg_2.a.d.a, arg_2.a.d.a), Struct_5(Struct_2(Struct_1(-19232i, vec3<f32>(1185f, arg_2.a.d.c, -1000f), arg_2.a.d.b.x), arg_2.a.d.b, vec2<bool>(true, arg_2.a.c.x), Struct_1(arg_2.a.a.a, vec3<f32>(arg_2.a.d.c, 212f, 1605f), arg_2.a.d.c)), arg_0, 4294967295u), true, vec4<f32>(-201f, arg_2.a.d.b.x, arg_2.a.d.c, arg_2.a.b.x)), ~u_input.a), firstLeadingBit(~global0[_wgslsmith_index_u32(arg_2.c, 5u)])) % vec2<u32>(32u));
    global0 = array<u32, 5>();
    global1 = array<vec2<bool>, 28>();
    var var_1 = -312f;
    var var_2 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_0.x, 13538i, 8091i), u_input.b), -abs(min(firstTrailingBit(0i), abs(u_input.b))), 0i);
    return -(~max(_wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(u_input.b, -28785i)), vec2<i32>(arg_2.a.a.a, var_0.x) & vec2<i32>(var_0.x, -10665i)), -u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -843f;
    global0 = array<u32, 5>();
    let var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, select(func_1(global1[_wgslsmith_index_u32(0u, 28u)], 88571u, Struct_5(Struct_2(Struct_1(u_input.b, vec3<f32>(var_0, -131f, var_0), var_0), vec3<f32>(var_0, var_0, var_0), global1[_wgslsmith_index_u32(u_input.a, 28u)], Struct_1(u_input.b, vec3<f32>(var_0, 173f, var_0), var_0)), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 5u)], 5u)], 28u)], global0[_wgslsmith_index_u32(u_input.a, 5u)])), u_input.b ^ u_input.b, true), u_input.b ^ 39094i), min(_wgslsmith_sub_vec3_i32(vec3<i32>(-30418i, 1i, u_input.b), vec3<i32>(u_input.b, 2147483647i, -27255i)) << (firstLeadingBit(vec3<u32>(22802u, u_input.a, global0[_wgslsmith_index_u32(0u, 5u)])) % vec3<u32>(32u)), ~(-vec3<i32>(u_input.b, u_input.b, u_input.b)))), abs(~_wgslsmith_mult_vec3_i32(~vec3<i32>(0i, -14084i, 0i), -vec3<i32>(-4453i, u_input.b, 48561i))));
    var var_2 = vec4<bool>(all(!select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), true)), true, func_2(-vec3<i32>(-var_1.x, 72136i, ~u_input.b), Struct_5(Struct_2(Struct_1(1i, vec3<f32>(var_0, -776f, var_0), 189f), vec3<f32>(-2419f, var_0, var_0), vec2<bool>(true, false), Struct_1(u_input.b, vec3<f32>(var_0, var_0, -1000f), -1748f)), vec2<bool>(true, any(vec2<bool>(true, true))), u_input.a), any(vec4<bool>(true, true, true, any(vec3<bool>(true, true, true)))), vec4<f32>(458f, _wgslsmith_f_op_f32(-756f - _wgslsmith_f_op_f32(-var_0)), var_0, 1158f)).x, u_input.a > ~countOneBits(func_3().x));
    var_2 = !(!select(select(vec4<bool>(false, false, true, true), !vec4<bool>(true, false, false, var_2.x), var_2.x), !(!vec4<bool>(true, var_2.x, true, var_2.x)), var_2.x));
    global1 = array<vec2<bool>, 28>();
    let var_3 = Struct_1(~u_input.b, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -692f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1506f + -1598f), 533f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(855f, _wgslsmith_f_op_f32(ceil(872f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-590f - 1000f)));
    let var_4 = all(var_2.xwz);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b, -var_1.x, -var_3.a), -1453f);
}

