struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: bool;

var<private> global2: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(1083f), Struct_1(-1651f), vec4<u32>(1u, 1u, 63514u, 0u)), Struct_2(Struct_1(1992f), Struct_1(159f), vec4<u32>(76567u, 0u, 0u, 0u)), Struct_2(Struct_1(1000f), Struct_1(-404f), vec4<u32>(67435u, 1u, 1u, 1u)), Struct_2(Struct_1(-455f), Struct_1(-893f), vec4<u32>(20341u, 0u, 0u, 45099u)), Struct_2(Struct_1(-383f), Struct_1(-523f), vec4<u32>(4294967295u, 0u, 28083u, 4294967295u)), Struct_2(Struct_1(249f), Struct_1(-1649f), vec4<u32>(23842u, 34653u, 45611u, 11893u)), Struct_2(Struct_1(992f), Struct_1(1000f), vec4<u32>(72089u, 4294967295u, 125812u, 4294967295u)), Struct_2(Struct_1(-1043f), Struct_1(582f), vec4<u32>(0u, 63503u, 69821u, 0u)), Struct_2(Struct_1(-379f), Struct_1(1621f), vec4<u32>(99648u, 6706u, 16872u, 38285u)), Struct_2(Struct_1(-702f), Struct_1(-1198f), vec4<u32>(20403u, 0u, 21681u, 0u)), Struct_2(Struct_1(1922f), Struct_1(1207f), vec4<u32>(1u, 15254u, 4294967295u, 22440u)), Struct_2(Struct_1(-716f), Struct_1(1052f), vec4<u32>(4294967295u, 65782u, 0u, 16447u)), Struct_2(Struct_1(1353f), Struct_1(-272f), vec4<u32>(1u, 4294967295u, 55875u, 27629u)), Struct_2(Struct_1(277f), Struct_1(-765f), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u)), Struct_2(Struct_1(1000f), Struct_1(459f), vec4<u32>(4294967295u, 1u, 6243u, 28230u)), Struct_2(Struct_1(2306f), Struct_1(152f), vec4<u32>(24245u, 10200u, 48572u, 4294967295u)), Struct_2(Struct_1(212f), Struct_1(882f), vec4<u32>(43128u, 4294967295u, 1u, 37134u)), Struct_2(Struct_1(-377f), Struct_1(-534f), vec4<u32>(61357u, 23871u, 4294967295u, 82066u)), Struct_2(Struct_1(-643f), Struct_1(-1000f), vec4<u32>(0u, 62149u, 1u, 4294967295u)), Struct_2(Struct_1(-1000f), Struct_1(-550f), vec4<u32>(11978u, 0u, 4294967295u, 83730u)), Struct_2(Struct_1(-591f), Struct_1(700f), vec4<u32>(0u, 0u, 37615u, 0u)), Struct_2(Struct_1(-1184f), Struct_1(-286f), vec4<u32>(75139u, 4294967295u, 4294967295u, 4294967295u)), Struct_2(Struct_1(-652f), Struct_1(983f), vec4<u32>(584u, 4294967295u, 71514u, 4294967295u)), Struct_2(Struct_1(-245f), Struct_1(-1861f), vec4<u32>(0u, 0u, 18141u, 29972u)), Struct_2(Struct_1(-928f), Struct_1(-457f), vec4<u32>(7997u, 4294967295u, 46865u, 42360u)), Struct_2(Struct_1(935f), Struct_1(712f), vec4<u32>(4294967295u, 64615u, 7416u, 32319u)), Struct_2(Struct_1(-585f), Struct_1(369f), vec4<u32>(34482u, 1u, 22772u, 24644u)), Struct_2(Struct_1(2013f), Struct_1(-371f), vec4<u32>(4294967295u, 1u, 1u, 0u)), Struct_2(Struct_1(1042f), Struct_1(1168f), vec4<u32>(1u, 55606u, 1u, 0u)), Struct_2(Struct_1(-1328f), Struct_1(-705f), vec4<u32>(0u, 1u, 4294967295u, 27895u)), Struct_2(Struct_1(-333f), Struct_1(846f), vec4<u32>(1u, 11665u, 12575u, 4294967295u)), Struct_2(Struct_1(918f), Struct_1(843f), vec4<u32>(4294967295u, 68480u, 4294967295u, 5042u)));

var<private> global3: array<i32, 26> = array<i32, 26>(0i, 2147483647i, 2793i, -17050i, 1i, 0i, -1i, 2147483647i, -1i, -6708i, -80895i, 2147483647i, -17150i, 1i, 2147483647i, -1i, i32(-2147483648), -30895i, -19209i, 22156i, 0i, i32(-2147483648), 2147483647i, -1i, -12318i, 6641i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    global1 = any(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec4<bool>(true, false, false, false))), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))));
    global3 = array<i32, 26>();
    var var_0 = Struct_2(arg_0.b, arg_0.b, ~vec4<u32>(arg_0.c.x << (global0.x % 32u), firstTrailingBit(~43500u), 2430u, firstTrailingBit(_wgslsmith_dot_vec2_u32(arg_0.c.zw, arg_0.c.wy))));
    var var_1 = Struct_1(-214f);
    var var_2 = vec4<u32>(abs(arg_0.c.x), 4294967295u, 19799u, global0.x);
    return ~_wgslsmith_div_vec3_u32(min(_wgslsmith_add_vec3_u32(~vec3<u32>(5864u, 41854u, 34713u), reverseBits(arg_0.c.zwz)), _wgslsmith_clamp_vec3_u32(var_0.c.wzy, vec3<u32>(arg_0.c.x, 29415u, 49902u) ^ vec3<u32>(var_0.c.x, 89098u, global0.x), firstLeadingBit(vec3<u32>(63347u, 0u, var_2.x)))), vec3<u32>(arg_0.c.x, global0.x, arg_0.c.x ^ reverseBits(0u)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(~(~(~146912u) | _wgslsmith_dot_vec3_u32(arg_2.c.ywx, ~func_3(arg_2))), 32u)];
    let var_1 = global2[_wgslsmith_index_u32(~4294967295u, 32u)];
    global0 = vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(4294967295u, 1u), ~arg_2.c.x), var_0.c.yw), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_1.c.x, ~38308u)), ~(~(~arg_0.c.yy))));
    var var_2 = Struct_2(arg_2.b, arg_0.b, vec4<u32>(0u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 5413u), firstLeadingBit(global0.x)), min(global0.x, var_0.c.x), firstTrailingBit(10164u >> ((var_0.c.x & arg_2.c.x) % 32u))));
    let var_3 = arg_0;
    return var_0.a;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: u32) -> vec3<u32> {
    global2 = array<Struct_2, 32>();
    let var_0 = func_2(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-136f, arg_2.a.a)))), Struct_1(163f), ~arg_2.c), vec3<i32>(~(~(-23400i)), 2147483647i, -1i), Struct_2(Struct_1(arg_0.x), Struct_1(_wgslsmith_f_op_f32(exp2(arg_2.b.a))), arg_2.c >> (arg_2.c % vec4<u32>(32u))));
    var var_1 = _wgslsmith_mod_u32(min(~global0.x, 0u), func_3(Struct_2(func_2(Struct_2(var_0, var_0, vec4<u32>(arg_3, arg_2.c.x, arg_2.c.x, global0.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(arg_3, 26u)], 0i), vec3<i32>(41586i, 1i, global3[_wgslsmith_index_u32(global0.x, 26u)])), Struct_2(var_0, var_0, vec4<u32>(arg_2.c.x, 4621u, global0.x, 892u))), func_2(Struct_2(Struct_1(arg_0.x), arg_2.a, arg_2.c), vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(arg_1.x, 26u)], global3[_wgslsmith_index_u32(global0.x, 26u)]), Struct_2(var_0, Struct_1(arg_0.x), arg_2.c)), ~(arg_2.c << (vec4<u32>(global0.x, arg_3, arg_3, 1u) % vec4<u32>(32u))))).x);
    let var_2 = vec4<bool>(select(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a))) != _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1492f, -246f))), _wgslsmith_mult_i32(1i, u_input.a) <= _wgslsmith_dot_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(arg_1.x, 26u)], u_input.a), vec2<i32>(u_input.a, u_input.a))), !(_wgslsmith_f_op_f32(-1034f * arg_0.x) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-var_0.a))), all(vec3<bool>(true, select(false, false, true) || all(vec2<bool>(false, false)), u_input.a < -global3[_wgslsmith_index_u32(arg_3, 26u)])), false);
    global0 = ~arg_1.zy;
    return vec3<u32>(1u, max(~17608u, firstLeadingBit(arg_2.c.x)), arg_2.c.x);
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-858f + -844f) - _wgslsmith_div_f32(-861f, 846f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1690f, 1000f, false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1902f - 899f)))))))));
    let var_2 = ~1u;
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-234f, -2563f), vec2<f32>(889f, 468f))) * vec2<f32>(-570f, 583f)), ~vec3<u32>(global0.x, 24857u, arg_0) | (vec3<u32>(arg_0, var_2, 52211u) >> (vec3<u32>(37269u, 0u, 0u) % vec3<u32>(32u))), Struct_2(func_2(global2[_wgslsmith_index_u32(18128u, 32u)], vec3<i32>(-33225i, 14397i, u_input.a), global2[_wgslsmith_index_u32(101688u, 32u)]), func_2(global2[_wgslsmith_index_u32(arg_0, 32u)], vec3<i32>(u_input.a, 1i, -55227i), global2[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<u32>(arg_0, 17981u, arg_0, var_2) >> (vec4<u32>(24018u, 0u, global0.x, 4294967295u) % vec4<u32>(32u))), global0.x), vec3<u32>(abs(34379u & arg_0), 1u, ~(~arg_0))), ~(~vec3<u32>(arg_0, var_2, 1u))), 32u)];
    let var_4 = var_3.b;
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-540f, _wgslsmith_f_op_f32(-var_3.a.a))))));
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = arg_1.c.x;
    let var_1 = arg_1.c.x;
    let var_2 = Struct_2(arg_1.a, arg_1.b, arg_1.c);
    let var_3 = select(!select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, false), 4294967295u < var_2.c.x), !select(vec2<bool>(true, false), vec2<bool>(true, false), true), !any(vec4<bool>(true, true, true, true))), !select(vec2<bool>(true, false), vec2<bool>(true, true), !select(false, true, false)), !all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, false))));
    let var_4 = arg_1.a;
    return vec4<u32>(1u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1, 65521u, var_1, 1u), vec4<u32>(~12583u, var_2.c.x, 4294967295u | var_2.c.x, var_2.c.x)), 4294967295u, (58030u << (~_wgslsmith_mult_u32(global0.x, 1u) % 32u)) >> (max(abs(~1u), var_1) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~global3[_wgslsmith_index_u32(global0.x, 26u)], Struct_2(func_1(global0.x), Struct_1(221f), (~vec4<u32>(32873u, 2787u, 0u, global0.x) ^ ~vec4<u32>(global0.x, 80801u, global0.x, 4294967295u)) & ~(~vec4<u32>(global0.x, 1u, global0.x, 1u))));
    var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(_wgslsmith_clamp_u32(94276u, var_0.x, 68086u), global0.x, _wgslsmith_dot_vec3_u32(var_0.ywy, vec3<u32>(0u, 42533u, 1u)), 35326u >> (var_0.x % 32u)), ~select(vec4<u32>(4294967295u, 36647u, 0u, var_0.x), vec4<u32>(global0.x, global0.x, var_0.x, global0.x), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true)), vec4<u32>(~_wgslsmith_clamp_u32(var_0.x, 40237u, var_0.x), 12233u, ~1u, var_0.x)), vec4<u32>(var_0.x & 10260u, _wgslsmith_mult_u32(global0.x, 64057u | var_0.x), ~4294967295u, ~var_0.x) >> (max(abs(vec4<u32>(var_0.x, 36848u, global0.x, 0u)), reverseBits(vec4<u32>(var_0.x, var_0.x, global0.x, 4294967295u) ^ vec4<u32>(4294967295u, 29434u, global0.x, 0u))) % vec4<u32>(32u)));
    global2 = array<Struct_2, 32>();
    var var_1 = func_2(global2[_wgslsmith_index_u32(4642u, 32u)], vec3<i32>(-_wgslsmith_dot_vec4_i32(-vec4<i32>(global3[_wgslsmith_index_u32(global0.x, 26u)], -13378i, global3[_wgslsmith_index_u32(20052u, 26u)], 34908i), ~vec4<i32>(-425i, 4728i, u_input.a, -30944i)), ~_wgslsmith_div_i32(global3[_wgslsmith_index_u32(58074u, 26u)], ~4251i), u_input.a), Struct_2(func_2(global2[_wgslsmith_index_u32(select(global0.x, global0.x, all(vec3<bool>(false, true, false))), 32u)], reverseBits(vec3<i32>(u_input.a, global3[_wgslsmith_index_u32(global0.x, 26u)], 2147483647i) << (var_0.wzy % vec3<u32>(32u))), Struct_2(func_2(global2[_wgslsmith_index_u32(4294967295u, 32u)], vec3<i32>(u_input.a, u_input.a, global3[_wgslsmith_index_u32(var_0.x, 26u)]), global2[_wgslsmith_index_u32(global0.x, 32u)]), func_1(49098u), vec4<u32>(91258u, 0u, 0u, 0u) | vec4<u32>(4294967295u, 4294967295u, 4294967295u, var_0.x))), Struct_1(-509f), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, global0.x, 4294967295u, var_0.x), vec4<u32>(39383u, var_0.x, var_0.x, var_0.x)))));
    global3 = array<i32, 26>();
    var_0 = func_5(-1i, global2[_wgslsmith_index_u32(~1u, 32u)]);
    let var_2 = func_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(16514u, global0.x, var_0.x)), _wgslsmith_add_vec3_u32(var_0.yxx, _wgslsmith_div_vec3_u32(vec3<u32>(41574u, global0.x, var_0.x) & vec3<u32>(0u, var_0.x, 0u), ~var_0.yww))), 32u)], min(vec3<i32>(-u_input.a, u_input.a, min(u_input.a, _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(global0.x, 26u)], global3[_wgslsmith_index_u32(0u, 26u)]))), abs(~abs(vec3<i32>(u_input.a, global3[_wgslsmith_index_u32(global0.x, 26u)], -1i)))), global2[_wgslsmith_index_u32(30290u, 32u)]);
    let var_3 = -359f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(~var_0.xwy, vec3<u32>(56445u, var_0.x, ~global0.x) | ~vec3<u32>(3801u, global0.x, 21555u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_2.a, var_2.a) - vec3<f32>(var_3, 1240f, var_2.a)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-308f, 1296f, var_3)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, var_1.a, var_1.a)), vec3<f32>(var_1.a, var_1.a, 926f), vec3<bool>(true, true, false))), vec3<bool>(true, true, any(vec3<bool>(true, false, true))))), vec3<f32>(var_3, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-814f, var_2.a)), var_3), -321f), vec3<bool>(true, true, true))));
}

