struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: bool,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: bool;

var<private> global2: array<Struct_3, 6>;

var<private> global3: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(1540f, -169f, 1819f, -181f), vec4<f32>(-1180f, 1000f, -405f, 218f), vec4<f32>(-1013f, -376f, 1348f, -1000f), vec4<f32>(534f, 186f, -2006f, 829f), vec4<f32>(-1104f, -272f, -1000f, 1216f), vec4<f32>(284f, -638f, 959f, 194f), vec4<f32>(1451f, 650f, 197f, 632f), vec4<f32>(292f, -845f, 395f, -640f), vec4<f32>(-1224f, -742f, -1000f, -424f), vec4<f32>(1000f, 556f, -917f, 993f), vec4<f32>(-549f, -734f, 1852f, -1070f), vec4<f32>(1085f, 173f, 969f, -1550f), vec4<f32>(359f, -182f, -1655f, 1398f), vec4<f32>(1227f, -1000f, -1378f, -282f), vec4<f32>(1650f, 437f, 796f, 1636f), vec4<f32>(-2207f, -327f, 675f, -781f), vec4<f32>(-299f, 271f, 534f, -1000f), vec4<f32>(-1000f, -489f, -893f, 1113f), vec4<f32>(890f, 894f, 1022f, -785f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> bool {
    var var_0 = global0.x;
    var var_1 = Struct_1(-1620f, !vec3<bool>(!(!global0.x), select(true, !global0.x, true), !(arg_3 != -1112i)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(926f * var_1.a), -1070f);
    let var_3 = global2[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(18723u, ~reverseBits(1u), u_input.c ^ ~u_input.c) ^ _wgslsmith_sub_u32(~u_input.c & ~arg_1, 1u)), 6u)];
    let var_4 = ~(~(u_input.b.yyw >> (~(vec3<u32>(8348u, var_3.a, u_input.c) & vec3<u32>(51958u, 21363u, 35266u)) % vec3<u32>(32u))));
    return any(select(select(!var_1.b.zx, !var_1.b.xx, var_1.b.zx), select(select(var_3.e.b.xx, vec2<bool>(global0.x, global0.x), var_3.c), vec2<bool>(select(var_3.c, false, var_1.b.x), true), var_3.e.b.xz), 336f == var_2.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: u32) -> i32 {
    global3 = array<vec4<f32>, 19>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(939f * _wgslsmith_f_op_f32(sign(-1308f))) + _wgslsmith_f_op_f32(539f - _wgslsmith_f_op_f32(-388f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), !vec3<bool>(func_3(select(vec2<u32>(u_input.c, u_input.c), arg_0, vec2<bool>(global0.x, global0.x)), 34659u >> (u_input.c % 32u), arg_1, _wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.b.zy)), false, all(!vec2<bool>(global0.x, true))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_0.a)))));
    var var_2 = Struct_4(var_0.a);
    let var_3 = -max(_wgslsmith_sub_i32(min(_wgslsmith_dot_vec2_i32(arg_1.a.xy, arg_1.a.yy), _wgslsmith_sub_i32(-14457i, 64428i)), arg_1.a.x), ~1i);
    return arg_1.a.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-1f), select(vec3<bool>(!global0.x, true, arg_0.x), vec3<bool>(any(vec4<bool>(true, arg_0.x, global0.x, arg_0.x)), true, arg_0.x), true));
    global2 = array<Struct_3, 6>();
    var var_1 = vec2<u32>(u_input.c, u_input.c);
    var var_2 = global2[_wgslsmith_index_u32(4294967295u, 6u)];
    var var_3 = Struct_1(-606f, var_0.b);
    return Struct_1(var_0.a, !vec3<bool>(true, var_2.e.b.x == true, arg_0.x));
}

fn func_1() -> vec3<bool> {
    var var_0 = func_4(!select(vec2<bool>(all(vec2<bool>(true, global0.x)), true), !select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x)), select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), global0.x), vec2<bool>(false, true), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), false))), ~func_2(vec2<u32>(43816u, firstTrailingBit(0u)), Struct_2(max(u_input.b.xzx, u_input.b.xwy)), _wgslsmith_sub_u32(u_input.c, 4294967295u)));
    var var_1 = abs(vec3<i32>(u_input.a, _wgslsmith_clamp_i32(22738i & (1729i << (u_input.c % 32u)), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b >> (vec4<u32>(u_input.c, 33207u, 0u, 46908u) % vec4<u32>(32u))), -_wgslsmith_sub_i32(u_input.d.x, u_input.a)), 29764i));
    let var_2 = Struct_3((countOneBits(~8747u) >> (_wgslsmith_mod_u32(u_input.c, _wgslsmith_mod_u32(1373u, 581u)) % 32u)) >> (_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, 4294967295u) >> (vec2<u32>(u_input.c, 1u) % vec2<u32>(32u))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.c, u_input.c))) % 32u), var_0.a, func_3(firstTrailingBit(vec2<u32>(u_input.c, 54893u)), _wgslsmith_div_u32(u_input.c | 0u, u_input.c), Struct_2(max(u_input.b.zzx, vec3<i32>(40026i, -1i, var_1.x))), 0i), ((~vec2<u32>(u_input.c, 1638u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(26842u, u_input.c), vec2<u32>(15052u, u_input.c), vec2<u32>(u_input.c, 9760u)) % vec2<u32>(32u))) >> (~(~vec2<u32>(0u, 1u)) % vec2<u32>(32u))) << (~_wgslsmith_sub_vec2_u32(vec2<u32>(13282u, u_input.c), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 9062u), vec2<u32>(1u, u_input.c))) % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(var_0.a + var_0.a), vec3<bool>(true, true, true)));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(635f, 1756f)));
    let var_4 = Struct_3(abs(select(18579u, var_2.d.x, any(var_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.x, -1813f)))) - var_2.e.a), true, _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, ~4294967295u), var_2.d), var_2.d), Struct_1(var_0.a, var_0.b));
    return !(!vec3<bool>(!any(vec2<bool>(global0.x, true)), var_0.b.x && true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-1214f, !select(!select(vec3<bool>(true, true, true), vec3<bool>(global0.x, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, select(global0.x, true, global0.x)), select(func_1(), func_4(vec2<bool>(global0.x, global0.x), u_input.d.x).b, func_1())));
    var var_1 = Struct_2(_wgslsmith_mod_vec3_i32(u_input.b.zzz, reverseBits(vec3<i32>(2147483647i, 2147483647i, abs(2147483647i)))));
    global0 = func_1().xy;
    var var_2 = _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(sign(-1596f)));
    var var_3 = var_0.a;
    let var_4 = _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(996f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + 118f) - _wgslsmith_f_op_f32(floor(1611f))))), var_0.a);
    var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1038f)));
    var_0 = Struct_1(var_4, func_4(func_4(!(!vec2<bool>(var_0.b.x, true)), _wgslsmith_mult_i32(var_1.a.x, 7388i)).b.yy, ~(-var_1.a.x << (u_input.c % 32u))).b);
    let var_5 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(u_input.c, ~8075u), u_input.c));
}

