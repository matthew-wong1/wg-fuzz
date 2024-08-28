struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32 = 1u;

var<private> global2: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1657f - arg_0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -328f) - _wgslsmith_f_op_f32(-445f * arg_0)))));
    let var_0 = reverseBits(~(~select(~vec4<u32>(1u, global2.c, 33646u, 2387u), ~vec4<u32>(0u, global2.c, global2.c, global2.c), select(vec4<bool>(false, arg_1.x, global2.a, true), vec4<bool>(false, arg_1.x, true, false), arg_1.x))));
    var var_1 = ~u_input.a;
    var var_2 = Struct_2(Struct_1(!any(!arg_1), arg_1.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(select(var_0.zxw, vec3<u32>(var_0.x, var_0.x, 4294967295u), arg_1), vec3<u32>(18629u, 1u, global2.c) >> (u_input.d % vec3<u32>(32u))), ~abs(24992u))), Struct_1(true, any(select(select(vec4<bool>(arg_1.x, arg_1.x, global2.a, global2.a), vec4<bool>(true, true, global2.a, arg_1.x), vec4<bool>(arg_1.x, true, true, global2.b)), !vec4<bool>(arg_1.x, global2.a, global2.a, arg_1.x), !vec4<bool>(global2.b, arg_1.x, global2.b, global2.b))), _wgslsmith_div_u32(_wgslsmith_sub_u32(12433u | var_0.x, 17350u), 4294967295u >> (~var_0.x % 32u))), vec4<bool>(true, arg_1.x, true, !arg_1.x), Struct_1(global2.b, true, abs(11128u)), Struct_1(true, all(arg_1.yx), ~4294967295u));
    var var_3 = u_input.c.x;
    return Struct_1(arg_1.x || var_2.c.x, !var_2.c.x, ~(~var_0.x));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = 0i;
    var_0 = -35411i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var_0 = 1i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-146f + 463f));
    return func_2(857f, vec3<bool>(global2.b, !(u_input.a.x > _wgslsmith_mod_i32(u_input.a.x, u_input.c.x)), true)).b;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: bool) -> vec4<bool> {
    global0 = arg_0.x;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-959f * arg_0.x), _wgslsmith_f_op_f32(-362f - arg_0.x)))), 274f);
    var var_0 = firstLeadingBit(abs(abs(arg_1.c)));
    var_0 = _wgslsmith_mult_u32(1u, global2.c);
    var var_1 = vec2<bool>(global2.a, arg_2.x);
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_2(func_2(_wgslsmith_f_op_f32(ceil(-931f)), vec3<bool>(global2.b, true, true)), func_2(_wgslsmith_f_op_f32(-151f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -126f), _wgslsmith_f_op_f32(-338f - -1215f)))), vec3<bool>(false & func_2(-469f, vec3<bool>(global2.b, global2.b, false)).a, !(global2.a != false), !arg_0.b)), func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(255f, 182f, 866f, -378f), vec4<f32>(403f, -590f, 402f, 260f)))))), Struct_1(global2.a, global2.b, ~_wgslsmith_dot_vec3_u32(u_input.d, u_input.d)), vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(global2.b, global2.a), vec2<bool>(false, arg_0.b))), func_3(arg_0), (true && global2.b) && arg_0.a, true), global2.a), Struct_1(false, arg_0.a, 1u), func_2(_wgslsmith_f_op_f32(sign(1250f)), select(!(!vec3<bool>(arg_0.a, arg_0.b, true)), !select(vec3<bool>(true, false, arg_0.b), vec3<bool>(global2.b, arg_0.b, true), vec3<bool>(arg_0.a, global2.b, true)), func_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -632f, -275f, -264f), vec4<f32>(1615f, -948f, 1140f, 278f))), arg_0, !vec4<bool>(false, false, global2.b, true), all(vec3<bool>(arg_0.b, false, false))).wwz)));
    global0 = _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(366f * -923f)) + _wgslsmith_f_op_f32(f32(-1f) * -1158f)), true));
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-104f, 996f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1392f)) - _wgslsmith_f_op_f32(abs(736f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(409f, -645f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -421f) - _wgslsmith_f_op_f32(sign(-1759f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-707f, -1139f), _wgslsmith_f_op_f32(-1892f - -164f), _wgslsmith_f_op_f32(floor(-1338f)), _wgslsmith_f_op_f32(abs(-2127f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1597f, -2237f, 346f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1979f, 589f, -338f, 1000f))))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(197f)))), select(var_0.c.wxz, select(vec3<bool>(false, arg_0.a, global2.a), func_4(vec4<f32>(-1188f, 641f, 233f, 1983f), Struct_1(arg_0.b, true, arg_1), vec4<bool>(arg_0.a, false, true, arg_0.b), true).xzw, !global2.b), true)), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-612f, -1000f, 963f, 324f))))), func_2(-3059f, vec3<bool>(true, func_2(267f, var_0.c.xwy).a, false)), vec4<bool>(true, true, any(select(var_0.c, vec4<bool>(true, arg_0.a, var_0.c.x, var_0.c.x), true)), true), any(func_4(vec4<f32>(-172f, 1000f, -109f, 999f), func_2(1071f, var_0.c.ywx), select(var_0.c, var_0.c, true), var_0.d.b || global2.a).wyw)), !var_0.b.b);
    let var_2 = ~(~(~u_input.d));
    var var_3 = 0u;
    return Struct_1(!global2.a, _wgslsmith_dot_vec2_u32(~var_2.xz, select(~u_input.d.zz, select(u_input.d.xy, var_2.zx, var_0.c.zx), true)) <= abs(~(~var_2.x)), 4294967295u);
}

fn func_5(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = global2.a;
    global2 = arg_2.d;
    let var_1 = arg_1;
    var var_2 = u_input.a.x & ~24140i;
    var var_3 = arg_2;
    return Struct_1(false, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1279f, -1197f, var_1, arg_1)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, var_1, var_1, var_1), vec4<f32>(608f, arg_1, -106f, -724f))))), Struct_1(true, _wgslsmith_f_op_f32(min(var_1, 1187f)) > 800f, firstTrailingBit(9828u)), var_3.c, global2.b).x, global2.c);
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> f32 {
    var var_0 = func_2(-294f, vec3<bool>(false, !global2.a, func_5(u_input.d, _wgslsmith_f_op_f32(f32(-1f) * -585f), Struct_2(Struct_1(global2.b, arg_0.a, u_input.e), arg_2, func_4(vec4<f32>(-386f, 1000f, 828f, -2478f), Struct_1(global2.a, false, 0u), vec4<bool>(arg_0.b, arg_2.a, false, true), global2.b), func_1(Struct_1(arg_2.a, true, arg_2.c), arg_2.c), arg_2), vec3<u32>(_wgslsmith_div_u32(65018u, arg_2.c), ~u_input.d.x, countOneBits(global2.c))).b));
    var_0 = Struct_1(-5460i != _wgslsmith_mult_i32(-arg_1.x, u_input.c.x), true, _wgslsmith_add_u32(global2.c & _wgslsmith_mod_u32(1u, 11085u), var_0.c));
    let var_1 = Struct_2(func_1(func_2(_wgslsmith_f_op_f32(f32(-1f) * -722f), vec3<bool>(false, all(vec4<bool>(true, arg_0.b, true, true)), any(vec2<bool>(true, arg_0.a)))), var_0.c), Struct_1(all(!vec2<bool>(arg_0.a, arg_0.b)), arg_0.b, var_0.c), vec4<bool>(true, func_5(~vec3<u32>(4294967295u, arg_0.c, arg_2.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-660f, -790f))), Struct_2(func_2(-1120f, vec3<bool>(false, var_0.a, false)), Struct_1(true, true, arg_0.c), vec4<bool>(true, false, arg_2.b, global2.b), Struct_1(global2.b, arg_2.a, var_0.c), Struct_1(var_0.b, true, 0u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.c, 0u, var_0.c), vec3<u32>(59787u, 0u, arg_2.c), vec3<u32>(92073u, 44269u, arg_0.c) ^ vec3<u32>(4294967295u, arg_0.c, 4294967295u))).a, 2405f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(179f, 157f, global2.b))), 0i > (~arg_1.x & -1i)), Struct_1(true, all(func_4(_wgslsmith_div_vec4_f32(vec4<f32>(-184f, 846f, -321f, -1324f), vec4<f32>(1156f, -1670f, 1898f, 508f)), func_5(vec3<u32>(arg_0.c, var_0.c, u_input.d.x), 707f, Struct_2(Struct_1(var_0.a, true, 81795u), arg_2, vec4<bool>(false, true, var_0.b, var_0.b), Struct_1(true, global2.a, var_0.c), Struct_1(arg_0.a, true, arg_2.c)), vec3<u32>(1u, 4294967295u, global2.c)), vec4<bool>(true, false, true, var_0.b), any(vec4<bool>(arg_2.a, var_0.a, false, arg_2.a))).zw), global2.c), func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-306f)) * _wgslsmith_f_op_f32(-707f - 732f)), _wgslsmith_div_f32(-951f, _wgslsmith_div_f32(855f, -1095f)))), !func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1630f, 234f, 112f, 104f)), Struct_1(var_0.b, arg_2.b, arg_0.c), select(vec4<bool>(true, false, global2.b, global2.a), vec4<bool>(false, arg_2.a, var_0.b, global2.a), vec4<bool>(arg_2.a, true, arg_0.a, global2.b)), global2.a).xyy));
    var var_2 = var_1.c.x;
    var var_3 = var_1;
    return 1003f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~60211u;
    global0 = _wgslsmith_f_op_f32(func_6(Struct_1(!global2.a, all(!select(vec2<bool>(global2.a, global2.b), vec2<bool>(false, true), vec2<bool>(global2.b, global2.a))), _wgslsmith_add_u32(~global2.c << (~1u % 32u), 38362u)), -(vec4<i32>(u_input.c.x, -2147483647i, _wgslsmith_mod_i32(u_input.c.x, u_input.a.x), u_input.a.x) << (max(vec4<u32>(global2.c, 19264u, 1u, 4619u), vec4<u32>(u_input.b, u_input.e, global2.c, 1u)) % vec4<u32>(32u))), func_5(_wgslsmith_div_vec3_u32(~u_input.d, vec3<u32>(global2.c, global2.c, 1u)) << (_wgslsmith_add_vec3_u32(~u_input.d, vec3<u32>(global2.c, 1u, 105455u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1339f)))), Struct_2(func_1(Struct_1(true, global2.a, global2.c), ~global2.c), Struct_1(true, global2.c > global2.c, func_2(-256f, vec3<bool>(global2.a, false, true)).c), vec4<bool>(global2.a | global2.a, false, global2.b, select(global2.a, global2.b, false)), func_2(_wgslsmith_div_f32(1000f, -1583f), func_4(vec4<f32>(2916f, 1000f, -1467f, -680f), Struct_1(global2.a, false, 4294967295u), vec4<bool>(false, global2.a, global2.a, false), false).wyx), Struct_1(!global2.a, func_1(Struct_1(global2.a, false, u_input.d.x), global2.c).b, 0u)), _wgslsmith_clamp_vec3_u32(countOneBits(select(u_input.d, vec3<u32>(81787u, 29741u, global2.c), vec3<bool>(true, false, global2.a))), u_input.d, _wgslsmith_mult_vec3_u32(u_input.d, vec3<u32>(global2.c, u_input.d.x, global2.c))))));
    let var_0 = firstLeadingBit(-u_input.a >> (~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, 39468u, global2.c), vec4<u32>(56335u, 50182u, 12270u, 4294967295u))) % vec4<u32>(32u)));
    global2 = func_1(Struct_1(-(24705i | u_input.a.x) == -(~20925i), -_wgslsmith_sub_i32(u_input.a.x, -49999i) >= _wgslsmith_mod_i32(min(0i, var_0.x), var_0.x), _wgslsmith_mult_u32(global2.c, ~(~34573u))), u_input.e);
    var var_1 = Struct_2(func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(170f)) * -428f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-2202f)), -2009f)), global2.a)), !select(!vec3<bool>(global2.a, false, false), func_4(vec4<f32>(-385f, 2079f, -242f, -1479f), Struct_1(false, false, u_input.e), vec4<bool>(global2.b, global2.b, true, true), true).zyw, any(vec3<bool>(false, global2.a, true)))), func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1093f, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(127f)) * 1f), false)), vec3<bool>(global2.b, global2.a & !global2.a, global2.a)), !func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-457f, -761f, -1000f, 287f), vec4<f32>(284f, 1000f, -1000f, -1175f), global2.a)))), Struct_1(true, global2.a, 4294967295u), func_4(vec4<f32>(1777f, -134f, 2106f, 811f), func_1(Struct_1(true, false, global2.c), global2.c), vec4<bool>(global2.b, global2.a, global2.b, false), select(global2.b, global2.b, false)), true), func_5(_wgslsmith_div_vec3_u32(u_input.d, abs(vec3<u32>(0u, 9462u, global2.c)) << (max(vec3<u32>(0u, 40969u, 2418u), vec3<u32>(global2.c, global2.c, 53487u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(func_6(func_2(-566f, vec3<bool>(true, true, false)), ~u_input.a, Struct_1(global2.a, true, func_5(vec3<u32>(0u, u_input.d.x, global2.c), 477f, Struct_2(Struct_1(global2.a, global2.b, global2.c), Struct_1(true, false, 71484u), vec4<bool>(true, global2.b, global2.a, global2.b), Struct_1(global2.b, global2.b, 38172u), Struct_1(global2.a, true, u_input.b)), vec3<u32>(0u, global2.c, 13061u)).c))), Struct_2(func_2(_wgslsmith_f_op_f32(f32(-1f) * -390f), vec3<bool>(global2.b, global2.b, global2.a)), Struct_1(any(vec2<bool>(global2.b, false)), global2.a, u_input.d.x), vec4<bool>(global2.a | global2.a, global2.a && false, !global2.a, true && global2.a), func_2(747f, vec3<bool>(global2.a, true, false)), Struct_1(true, true, 22389u | u_input.e)), _wgslsmith_sub_vec3_u32(u_input.d, u_input.d)), Struct_1(global2.b, true, 20711u));
    let x = u_input.a;
    s_output = StorageBuffer(561f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1285f, 2254f)) + _wgslsmith_f_op_f32(round(-1187f))), -2732f), 753f)));
}

