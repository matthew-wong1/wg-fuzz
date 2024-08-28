struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(vec4<f32>(591f, -1024f, 197f, 145f), false), Struct_3(vec4<f32>(-804f, -1053f, -1310f, -275f), true), Struct_3(vec4<f32>(-592f, 272f, -1000f, -202f), false), Struct_3(vec4<f32>(-867f, -325f, 1278f, 115f), true), Struct_3(vec4<f32>(2010f, 410f, -1480f, 2528f), true), Struct_3(vec4<f32>(-308f, -738f, -139f, 759f), true), Struct_3(vec4<f32>(198f, 211f, -888f, -1751f), true), Struct_3(vec4<f32>(2234f, -1954f, -672f, -2144f), false), Struct_3(vec4<f32>(183f, -466f, 511f, -1000f), false), Struct_3(vec4<f32>(-531f, 456f, -652f, -1000f), true), Struct_3(vec4<f32>(376f, -123f, 360f, -1000f), false), Struct_3(vec4<f32>(2237f, -881f, 159f, -235f), false), Struct_3(vec4<f32>(-421f, -213f, -1157f, 1182f), true), Struct_3(vec4<f32>(439f, 1208f, 1016f, 326f), true), Struct_3(vec4<f32>(483f, 1861f, -1156f, -157f), true), Struct_3(vec4<f32>(1000f, -116f, -606f, 1685f), false), Struct_3(vec4<f32>(-1231f, 1044f, 1249f, 716f), true), Struct_3(vec4<f32>(601f, 1042f, -1329f, 1000f), false), Struct_3(vec4<f32>(-1114f, -494f, -245f, -2352f), true), Struct_3(vec4<f32>(-1069f, 268f, 499f, 269f), true), Struct_3(vec4<f32>(-1000f, 523f, 967f, 217f), true), Struct_3(vec4<f32>(264f, -855f, -333f, -782f), true), Struct_3(vec4<f32>(-1708f, 1362f, -881f, 1260f), false), Struct_3(vec4<f32>(501f, 1000f, 103f, -217f), true), Struct_3(vec4<f32>(-1175f, -2557f, 1332f, 146f), false), Struct_3(vec4<f32>(-834f, -1077f, 835f, 104f), false), Struct_3(vec4<f32>(-724f, 905f, 322f, 100f), true), Struct_3(vec4<f32>(-499f, 209f, -705f, 1000f), true), Struct_3(vec4<f32>(-714f, -1480f, -289f, 363f), false), Struct_3(vec4<f32>(-1287f, 1539f, -2607f, -1436f), false), Struct_3(vec4<f32>(-1274f, 1353f, -764f, -1521f), true), Struct_3(vec4<f32>(1359f, 597f, 306f, -213f), false));

var<private> global1: bool;

var<private> global2: vec2<i32>;

var<private> global3: f32 = -572f;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: u32) -> i32 {
    let var_0 = abs(_wgslsmith_dot_vec3_u32(u_input.d.zxw, vec3<u32>(u_input.d.x, _wgslsmith_div_u32(abs(arg_0), 4294967295u), ~(~arg_2))));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-164f - 407f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2450f * 1648f) + -649f), -746f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-470f - 1003f) * 1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -653f))))));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(882f, _wgslsmith_f_op_f32(466f + 645f))))));
    return ~(~max(1i, 32944i));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    global1 = !(22870u == arg_0.x);
    let var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, true)) == true, true, func_3(u_input.d.x, Struct_4(true, u_input.c), 40214u) > global2.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    var var_1 = !(!(!vec4<bool>(false, false, !var_0.x, !var_0.x)));
    var var_2 = select(!select(select(vec4<bool>(false, false, true, false), select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x), true), false), select(select(vec4<bool>(var_0.x, var_1.x, var_0.x, var_1.x), vec4<bool>(false, var_1.x, var_0.x, var_1.x), var_1.x), !vec4<bool>(false, var_1.x, false, true), vec4<bool>(false, true, var_1.x, false)), ~global2.x > _wgslsmith_add_i32(u_input.b, global2.x)), select(select(vec4<bool>(true, true, var_0.x, -22446i <= u_input.b), select(select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(var_1.x, true, false, var_0.x), var_0.x), vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(true, var_0.x, var_1.x, false)), var_0.x), vec4<bool>(var_0.x, var_1.x, any(var_0), abs(u_input.c.x) <= u_input.c.x), !var_0.x), var_1.x);
    var var_3 = vec4<f32>(1f, 1f, 1f, 1f);
    return _wgslsmith_f_op_f32(-910f - _wgslsmith_f_op_f32(step(var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -823f))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1888f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.d.wx))), 723f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1006f - -821f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(896f, _wgslsmith_f_op_f32(f32(-1f) * -794f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(219f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-369f + 800f)) + _wgslsmith_f_op_f32(1096f * _wgslsmith_f_op_f32(f32(-1f) * -992f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(472f * _wgslsmith_f_op_f32(f32(-1f) * -301f)))));
    global0 = array<Struct_3, 32>();
    global1 = any(vec4<bool>(true, any(vec4<bool>(!arg_1.x, true, arg_1.x, all(arg_1.xx))), global2.x < u_input.c.x, true));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), _wgslsmith_f_op_f32(var_0.x * var_0.x)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1430f), -1595f))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(211f, var_0.x)))))));
    let var_2 = arg_0.x;
    return Struct_4(4294967295u >= arg_0.x, ~(~(-vec4<i32>(u_input.c.x, u_input.c.x, global2.x, u_input.c.x))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_5, arg_3: Struct_4) -> vec4<u32> {
    let var_0 = !arg_1.a;
    global3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1216f - _wgslsmith_f_op_f32(-arg_2.a.a.x)), _wgslsmith_f_op_f32(-130f + _wgslsmith_div_f32(arg_2.a.a.x, arg_2.a.a.x))) - 203f);
    let var_1 = 27196i;
    var var_2 = min(arg_2.b, 1u);
    var var_3 = reverseBits(arg_2.d.x);
    return vec4<u32>(1u, ~1u, 4294967295u, 121249u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.d.x, 32u)];
    var var_1 = abs(vec3<u32>(4294967295u, abs(u_input.d.x), abs(u_input.d.x)));
    let var_2 = var_0.b || any(select(select(vec4<bool>(var_0.b, true, false, var_0.b), vec4<bool>(true, false, var_0.b, var_0.b), !vec4<bool>(false, true, var_0.b, false)), !(!vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b)), var_0.b));
    var var_3 = ~select(func_4(u_input.a ^ vec4<i32>(2147483647i, global2.x, -53880i, u_input.b), func_1(vec2<u32>(u_input.d.x, 8539u), vec3<bool>(false, var_2, true)), Struct_5(Struct_3(var_0.a, true), u_input.d.x, false, u_input.d.zxy), func_1(vec2<u32>(80897u, var_1.x), vec3<bool>(true, true, true))) << (~u_input.d % vec4<u32>(32u)), max(_wgslsmith_sub_vec4_u32(~u_input.d, u_input.d), (u_input.d >> (vec4<u32>(31886u, 36539u, 1u, var_1.x) % vec4<u32>(32u))) >> (vec4<u32>(u_input.d.x, var_1.x, var_1.x, 0u) % vec4<u32>(32u))), !(_wgslsmith_f_op_f32(f32(-1f) * -155f) <= _wgslsmith_div_f32(-488f, var_0.a.x)));
    let var_4 = func_1(reverseBits(vec2<u32>(var_1.x << (var_3.x % 32u), min(4294967295u, var_1.x) ^ 0u)), vec3<bool>(false, true, !func_1(vec2<u32>(u_input.d.x, var_3.x), !vec3<bool>(var_0.b, var_0.b, var_0.b)).a));
    var var_5 = u_input.b << (var_3.x % 32u);
    var var_6 = Struct_1(~_wgslsmith_dot_vec2_i32(vec2<i32>(abs(1i), u_input.c.x), vec2<i32>(countOneBits(25150i), max(0i, u_input.c.x))), select(vec4<bool>(true & var_4.a, 1u <= var_3.x, select(var_0.b, !var_4.a, true), !select(true, var_4.a, var_0.b)), !(!select(vec4<bool>(var_0.b, var_4.a, false, var_4.a), vec4<bool>(var_0.b, true, true, false), vec4<bool>(var_2, var_2, true, var_4.a))), !vec4<bool>(!var_2, true, true, var_2)), !select(!(!vec4<bool>(true, true, true, var_4.a)), !select(vec4<bool>(false, false, var_0.b, var_0.b), vec4<bool>(false, true, var_0.b, true), false), true | (var_1.x != var_3.x)), var_1.x);
    var_3 = u_input.d;
    var var_7 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -201f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1709f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1265f, var_0.a.x))))), min(_wgslsmith_add_vec4_u32(~vec4<u32>(var_6.d, 4294967295u, 63686u, 46397u), vec4<u32>(u_input.d.x, ~var_6.d, func_4(u_input.a, var_4, Struct_5(Struct_3(vec4<f32>(-340f, -745f, -1235f, var_0.a.x), var_2), 1u, var_0.b, u_input.d.wzw), var_4).x, reverseBits(199476u))), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, 4294967295u, var_1.x, 0u), min(vec4<u32>(64266u, var_6.d, 6117u, var_6.d), vec4<u32>(94399u, u_input.d.x, 64412u, 1u))), _wgslsmith_div_vec4_u32(vec4<u32>(var_3.x, var_6.d, var_3.x, u_input.d.x), u_input.d) & min(u_input.d, u_input.d))), _wgslsmith_f_op_f32(var_0.a.x * 520f), max(25863i, -abs(_wgslsmith_clamp_i32(var_4.b.x, 1949i, -32078i))), var_1.yy >> (firstLeadingBit(_wgslsmith_div_vec2_u32(~u_input.d.yy, countOneBits(var_1.zy))) % vec2<u32>(32u)));
}

