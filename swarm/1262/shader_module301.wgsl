struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(0i, 1516f, vec2<u32>(0u, 14037u), vec3<f32>(-1195f, 104f, -344f)));

var<private> global1: bool;

var<private> global2: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(592f, -1000f, -885f), vec3<f32>(1000f, 314f, 539f), vec3<f32>(-1658f, 247f, -354f), vec3<f32>(-1525f, 316f, 285f), vec3<f32>(-1704f, 284f, -1383f), vec3<f32>(1054f, 1419f, 950f), vec3<f32>(674f, 708f, 230f), vec3<f32>(-260f, -871f, -345f), vec3<f32>(2361f, 382f, -2229f), vec3<f32>(-1213f, 275f, -518f), vec3<f32>(783f, 795f, -224f), vec3<f32>(-958f, -1514f, -482f), vec3<f32>(2105f, 1564f, -473f), vec3<f32>(-1113f, -395f, -217f));

var<private> global3: array<Struct_4, 20>;

var<private> global4: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(209f, -1598f, -474f, 1253f), vec4<f32>(258f, 168f, 812f, 770f), vec4<f32>(-926f, -118f, 884f, 884f), vec4<f32>(-1000f, 1067f, -404f, 363f), vec4<f32>(785f, 789f, 1478f, -1151f), vec4<f32>(-1000f, 794f, -684f, 772f), vec4<f32>(2240f, -1416f, 662f, 939f), vec4<f32>(-1494f, 688f, 1000f, -618f));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    var var_0 = 29810u >> (1u % 32u);
    var var_1 = select(vec3<bool>(arg_0.b.x, arg_0.b.x, true), vec3<bool>(!arg_0.b.x, true, false), vec3<bool>(true, !arg_0.b.x, arg_0.b.x));
    return u_input.d;
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(global0.a.b)), 187f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.a.d.x, 203f))))), ~max(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(48985u, 4294967295u, u_input.c, global0.a.c.x), vec4<u32>(0u, global0.a.c.x, 50116u, 1u)), ~vec4<u32>(4294967295u, 4294967295u, 1u, global0.a.c.x)), ~(~vec4<u32>(70539u, global0.a.c.x, 36700u, 4294967295u))), Struct_1(max(func_3(global3[_wgslsmith_index_u32(1u, 20u)], vec3<u32>(4294967295u, u_input.c, global0.a.c.x) ^ vec3<u32>(u_input.c, 1u, 1u), Struct_2(global0.a), Struct_2(Struct_1(21928i, global0.a.b, global0.a.c, vec3<f32>(-839f, global0.a.b, global0.a.d.x)))), -55663i), global0.a.d.x, vec2<u32>(40854u, ~u_input.c), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.a.d.x)) + global0.a.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(296f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.d.x * global0.a.b)))), min(~global0.a.a, min(global0.a.a, ~(-68108i))));
    let var_1 = Struct_2(global0.a);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-534f, _wgslsmith_f_op_f32(round(global0.a.d.x))))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_1.a.d.x)), var_0.a.x, !(global0.a.a <= 6479i)))) > -1481f;
    global1 = arg_0.x;
    let var_2 = Struct_3(global0.a.d, vec4<u32>(1562u, _wgslsmith_dot_vec3_u32(var_0.b.wzx, var_0.b.ywz), ~var_1.a.c.x, _wgslsmith_clamp_u32(~countOneBits(var_0.b.x), max(~var_1.a.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(var_0.c.c.x, 39702u))), _wgslsmith_mult_u32(select(1u, global0.a.c.x, arg_0.x), _wgslsmith_mult_u32(global0.a.c.x, 31918u)))), global0.a, _wgslsmith_add_i32(global0.a.a, _wgslsmith_mult_i32(-_wgslsmith_mult_i32(13702i, var_1.a.a), abs(0i))));
    return Struct_2(var_1.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> i32 {
    var var_0 = _wgslsmith_add_vec3_i32(arg_1, ~(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, 1i, arg_0.a.a), vec3<i32>(arg_0.a.a, 46731i, 1i)) | vec3<i32>(global0.a.a, arg_0.a.a, 2147483647i)) & -(~arg_1));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a.b)) + _wgslsmith_div_f32(-725f, -592f)), _wgslsmith_f_op_f32(sign(func_2(vec3<bool>(false, false, true)).a.d.x)), global0.a.b))), firstLeadingBit(vec4<u32>(1u | arg_0.a.c.x, func_2(vec3<bool>(true, false, true)).a.c.x, u_input.c, arg_0.a.c.x)), Struct_1(-arg_0.a.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.b * 554f) + _wgslsmith_f_op_f32(-global0.a.d.x)), -1120f)), ~(~vec2<u32>(32900u, arg_0.a.c.x)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.a.b, _wgslsmith_f_op_f32(max(arg_0.a.d.x, global0.a.b)), 245f)))), _wgslsmith_mod_i32(0i, _wgslsmith_div_i32(_wgslsmith_div_i32(arg_1.x, var_0.x), arg_0.a.a)));
    var var_2 = -1i;
    var var_3 = !select(vec2<bool>(all(vec4<bool>(true, true, true, true)), _wgslsmith_div_f32(var_1.c.d.x, var_1.c.d.x) > _wgslsmith_f_op_f32(-arg_0.a.d.x)), vec2<bool>(any(vec4<bool>(true, true, true, true)), false), all(vec4<bool>(false, false, false, false)));
    var var_4 = var_0.zz;
    return ~abs(1i);
}

fn func_1() -> Struct_3 {
    let var_0 = -(i32(-1i) * -16825i);
    let var_1 = vec2<i32>(max(func_4(func_2(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), ~(-vec3<i32>(6726i, global0.a.a, 1i))), global0.a.a), 1i);
    var var_2 = global0.a;
    let var_3 = ~_wgslsmith_dot_vec3_i32(select(abs(vec3<i32>(-1i, var_1.x, global0.a.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, -1i, var_1.x), _wgslsmith_div_vec3_i32(vec3<i32>(5057i, -2147483647i, 1i), vec3<i32>(u_input.a, -45238i, var_2.a)), -vec3<i32>(u_input.d, var_0, var_2.a)), true), vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(14177i, 2147483647i, var_2.a), vec3<i32>(46973i, 6068i, -12868i)));
    var var_4 = func_2(vec3<bool>(true, any(vec3<bool>(true, true, true)), select(true, true, !(var_2.c.x == global0.a.c.x)))).a;
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.d.x + _wgslsmith_div_f32(var_4.b, var_2.d.x))), _wgslsmith_f_op_f32(-var_4.d.x), var_4.b), vec4<u32>(~1u, ~var_2.c.x, _wgslsmith_mod_u32(~var_2.c.x, _wgslsmith_mult_u32(1u, 39119u)), ~global0.a.c.x & ~1323u), Struct_1(-820i, _wgslsmith_f_op_f32(abs(-383f)), select(vec2<u32>(_wgslsmith_mod_u32(18333u, var_4.c.x), 0u), ~(~var_4.c), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.c.x, var_4.c.x, u_input.c, u_input.c), vec4<u32>(4294967295u, global0.a.c.x, 0u, 34521u)) > ~4294967295u), vec3<f32>(1872f, var_4.b, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-255f, 523f), _wgslsmith_f_op_f32(-675f - var_2.d.x))))), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = var_0;
    let var_2 = var_0;
    var var_3 = func_3(global3[_wgslsmith_index_u32(abs(var_0.b.x), 20u)], ~select(var_2.b.wzy | ~vec3<u32>(var_2.b.x, var_0.b.x, 0u), vec3<u32>(~4294967295u, ~59273u, 27560u), all(vec3<bool>(false, true, false))), func_2(vec3<bool>(true, true, _wgslsmith_f_op_f32(-var_1.c.b) != func_1().c.d.x)), func_2(vec3<bool>(!any(vec3<bool>(true, true, true)), !all(vec3<bool>(false, false, false)), false)));
    var var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.d.x, global0.a.b, var_2.a.x), global0.a.d))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(864f, -759f, 1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-504f, -521f, var_2.a.x))), ~select(var_1.b, var_2.b, vec4<bool>(true, true, true, false)), Struct_1(func_3(global3[_wgslsmith_index_u32(func_1().c.c.x & 44760u, 20u)], var_2.b.zyz, func_2(vec3<bool>(true, true, true)), func_2(vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1357f * var_1.a.x) * 653f)), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(var_2.c.c, vec2<u32>(0u, 83285u)), min(vec2<u32>(var_0.c.c.x, 2501u), vec2<u32>(var_0.c.c.x, global0.a.c.x))), ~(~vec2<u32>(1u, 22499u))), vec3<f32>(_wgslsmith_f_op_f32(step(255f, var_2.a.x)), global0.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.d.x)))), -17676i);
    var var_5 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d | u_input.d, -21082i, func_1().d) << (abs(~vec3<u32>(var_2.b.x, global0.a.c.x, 74857u)) % vec3<u32>(32u)), select(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 13378i, 24978i), min(vec3<i32>(var_1.d, u_input.d, -9141i), vec3<i32>(-1i, -2147483647i, -16395i))), vec3<i32>(0i ^ global0.a.a, var_0.c.a & u_input.b, var_2.c.a ^ var_0.c.a), true)), _wgslsmith_f_op_f32(f32(-1f) * -893f), var_0.b.xx >> (_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~var_1.c.c, var_0.b.ww | var_2.c.c), func_2(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)).a.c) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.b, 104f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1524f, global0.a.d.x, false))))));
    global2 = array<vec3<f32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_5.b, var_2.a.x), _wgslsmith_f_op_vec2_f32(select(global0.a.d.yz, vec2<f32>(568f, -1079f), vec2<bool>(true, false)))) * vec2<f32>(1626f, 2487f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -321f))), 4480u, var_2.c.c);
}

