struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(vec3<i32>(43117i, -13574i, -1i), vec2<i32>(5770i, -14309i), -440f, 20245i)), Struct_2(Struct_1(vec3<i32>(1i, i32(-2147483648), 0i), vec2<i32>(13597i, -1i), -1525f, 19181i)), Struct_2(Struct_1(vec3<i32>(0i, 0i, -31741i), vec2<i32>(1i, 4461i), -1213f, 18615i)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 36242i, 2147483647i), vec2<i32>(-6020i, -31528i), -442f, -1i)), Struct_2(Struct_1(vec3<i32>(28450i, -24034i, 21448i), vec2<i32>(15444i, -37677i), 1398f, i32(-2147483648))), Struct_2(Struct_1(vec3<i32>(0i, 71014i, -23531i), vec2<i32>(-37450i, -1i), 346f, -43204i)), Struct_2(Struct_1(vec3<i32>(635i, i32(-2147483648), -20809i), vec2<i32>(12878i, -1i), -2529f, 26198i)), Struct_2(Struct_1(vec3<i32>(2147483647i, 1i, -63896i), vec2<i32>(2147483647i, 2147483647i), 378f, -1i)), Struct_2(Struct_1(vec3<i32>(-5575i, 1i, 15320i), vec2<i32>(-42963i, -39971i), 1195f, -32694i)), Struct_2(Struct_1(vec3<i32>(-1i, -34448i, 2147483647i), vec2<i32>(36433i, 1i), -645f, 25517i)), Struct_2(Struct_1(vec3<i32>(-5293i, 2147483647i, -1i), vec2<i32>(1i, 2147483647i), 544f, i32(-2147483648))), Struct_2(Struct_1(vec3<i32>(49082i, 34008i, 68766i), vec2<i32>(-1i, 11678i), 1152f, 0i)), Struct_2(Struct_1(vec3<i32>(0i, -13401i, 2147483647i), vec2<i32>(30632i, 29309i), -827f, 1i)));

var<private> global1: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(i32(-2147483648), 59575i, i32(-2147483648), -19894i), vec4<i32>(3340i, 43949i, 1i, -16840i), vec4<i32>(0i, 51754i, 45762i, -23505i), vec4<i32>(-31144i, 19878i, 0i, 29035i), vec4<i32>(-90602i, 2147483647i, 1i, -18560i), vec4<i32>(23634i, 13511i, -28011i, -26958i), vec4<i32>(46147i, 18189i, -34266i, -102732i), vec4<i32>(-18954i, -69742i, -3339i, i32(-2147483648)), vec4<i32>(-8743i, -3178i, 1i, 1i), vec4<i32>(-15891i, -1i, -4198i, -1i), vec4<i32>(-20324i, 1i, 11202i, -1i), vec4<i32>(0i, i32(-2147483648), 1891i, i32(-2147483648)), vec4<i32>(-21372i, 36719i, 3822i, -12852i), vec4<i32>(20676i, 46657i, 0i, -6405i), vec4<i32>(33148i, 25478i, -10239i, -1i), vec4<i32>(0i, -1i, 17282i, -7011i), vec4<i32>(2147483647i, -20145i, -1i, 1i), vec4<i32>(3745i, -1355i, -1i, 15153i), vec4<i32>(23122i, i32(-2147483648), 12465i, 0i), vec4<i32>(-34384i, i32(-2147483648), 0i, 2147483647i), vec4<i32>(2147483647i, -45949i, 20977i, -13321i));

var<private> global2: array<Struct_1, 14>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> Struct_2 {
    return global0[_wgslsmith_index_u32(40075u, 13u)];
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_2 {
    global1 = array<vec4<i32>, 21>();
    var var_0 = !arg_2.x;
    var var_1 = _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(1u, abs(u_input.d) >> (_wgslsmith_div_u32(u_input.d, 11573u) % 32u), ~(u_input.d | u_input.d), u_input.d)), vec4<u32>(_wgslsmith_mod_u32(0u, 2988u), 1u, ~(~(0u >> (u_input.d % 32u))), u_input.d));
    let var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-_wgslsmith_add_i32(max(u_input.b.x, -1i), arg_1.a.x ^ 1i), _wgslsmith_add_i32(func_2(func_2(global0[_wgslsmith_index_u32(u_input.d, 13u)], arg_1.c, arg_1.c), _wgslsmith_f_op_f32(646f - -486f), _wgslsmith_f_op_f32(-arg_1.c)).a.a.x, ~min(arg_0.x, 1i))), abs(-vec2<i32>(44470i, 1i) & (arg_1.b & ~arg_1.a.yy)), vec2<i32>(-2147483647i, u_input.b.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-171f, 751f, -138f, -2037f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, 155f, 289f, arg_1.c)))), vec4<f32>(1000f, _wgslsmith_f_op_f32(-153f + arg_1.c), arg_1.c, _wgslsmith_div_f32(arg_1.c, arg_1.c)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, _wgslsmith_f_op_f32(ceil(1400f)), _wgslsmith_f_op_f32(-arg_1.c), -1000f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(195f)), _wgslsmith_f_op_f32(-277f + arg_1.c), arg_1.c, _wgslsmith_f_op_f32(f32(-1f) * -625f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1298f, -193f, arg_1.c, arg_1.c) + _wgslsmith_f_op_vec4_f32(vec4<f32>(720f, -1000f, arg_1.c, -154f) * vec4<f32>(arg_1.c, arg_1.c, arg_1.c, 412f))), !arg_2.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(924f, arg_1.c, 810f, arg_1.c) - vec4<f32>(1000f, arg_1.c, -281f, arg_1.c)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.c, -313f, 1533f, -1096f))), arg_2.x)) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2523f, -472f, 931f, -552f), vec4<f32>(499f, 558f, -1449f, 2020f), vec4<bool>(false, true, true, false))), vec4<f32>(764f, arg_1.c, arg_1.c, arg_1.c))))));
    return global0[_wgslsmith_index_u32(17018u, 13u)];
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = func_2(Struct_2(global2[_wgslsmith_index_u32(~(~4294967295u), 14u)]), 1627f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -368f)), 154f) * _wgslsmith_f_op_f32(1029f * 755f)));
    let var_1 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c)) + _wgslsmith_f_op_f32(-277f * _wgslsmith_f_op_f32(var_0.a.c + -396f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) || false;
    var var_2 = Struct_3(func_3(arg_0, var_0.a, !vec3<bool>(any(vec3<bool>(var_1, false, var_1)), !var_1, true)), firstLeadingBit(4294967295u));
    var var_3 = vec2<i32>(var_0.a.d, -var_0.a.a.x);
    var var_4 = vec3<i32>(-_wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.a.a.x, var_0.a.d, -14126i) & ~vec3<i32>(arg_0.x, -2147483647i, 5898i), func_2(global0[_wgslsmith_index_u32(u_input.d, 13u)], -1888f, -563f).a.a << (~vec3<u32>(var_2.b, u_input.d, var_2.b) % vec3<u32>(32u))), firstTrailingBit(_wgslsmith_dot_vec2_i32(abs(var_2.a.a.b), _wgslsmith_mult_vec2_i32(var_0.a.b, var_2.a.a.b))) >> (4427u % 32u), -(~(~(~(-58081i)))));
    return Struct_2(Struct_1((func_3(vec4<i32>(25450i, -67879i, -1i, -2147483647i), var_0.a, vec3<bool>(true, false, var_1)).a.a & var_2.a.a.a) ^ var_2.a.a.a, var_4.yy, 136f, var_3.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = !(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(735f != arg_0.x, 1364f <= arg_0.x, true)));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(33935u, 653u), 21u)];
    global1 = array<vec4<i32>, 21>();
    var var_2 = arg_2;
    var var_3 = arg_2;
    return Struct_3(Struct_2(func_3(select(global1[_wgslsmith_index_u32(1u, 21u)], vec4<i32>(arg_2.a.d, var_1.x, 1i, var_3.a.b.x), vec4<bool>(true, true, true, true)), Struct_1(-vec3<i32>(var_1.x, 2147483647i, arg_2.a.a.x), ~vec2<i32>(0i, arg_2.a.d), func_3(vec4<i32>(59534i, -17606i, -2147483647i, -2147483647i), Struct_1(var_3.a.a, var_1.wz, -504f, u_input.b.x), vec3<bool>(false, var_0.x, true)).a.c, 1i), !select(vec3<bool>(false, true, var_0.x), vec3<bool>(false, false, var_0.x), false)).a), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1098f;
    let var_1 = _wgslsmith_f_op_f32(var_0 + 792f);
    var var_2 = u_input.c.x;
    let var_3 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, _wgslsmith_f_op_f32(f32(-1f) * -632f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), var_1) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1162f, var_0, var_1, 1110f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -651f, var_1, var_1) * vec4<f32>(829f, -1359f, var_1, var_1))))), vec2<u32>(_wgslsmith_mod_u32(69184u, u_input.d), ~4294967295u), func_1(vec4<i32>(u_input.b.x, u_input.a, ~u_input.a, -5875i)));
    let var_4 = abs(countOneBits(vec3<u32>(var_3.b & 58272u, 0u, _wgslsmith_div_u32(40891u, 5089u)))) | _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(var_3.b, 20523u, var_3.b)) << (~_wgslsmith_mod_vec3_u32(vec3<u32>(38158u, var_3.b, var_3.b), vec3<u32>(1u, 4294967295u, 4433u)) % vec3<u32>(32u)), countOneBits(~vec3<u32>(u_input.d, u_input.d, 4294967295u)), firstTrailingBit(select(~vec3<u32>(0u, u_input.d, 38770u), ~vec3<u32>(u_input.d, var_3.b, u_input.d), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true))));
    let var_5 = _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, _wgslsmith_dot_vec2_i32(var_3.a.a.a.xy, var_3.a.a.a.xz), -1i, ~(~12820i)), global1[_wgslsmith_index_u32(13559u, 21u)]);
    let var_6 = var_4;
    global1 = array<vec4<i32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(abs(_wgslsmith_sub_i32(u_input.a, -6789i)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-7791i, -2147483647i), var_5.wy), vec2<i32>(2147483647i, u_input.c.x)), firstLeadingBit(abs(var_3.a.a.b.x)), abs(_wgslsmith_div_i32(var_5.x, 1i))), -select(-2147483647i, 21902i, false) & -44713i, countOneBits(~(~(~vec4<u32>(var_6.x, var_4.x, 137474u, 4294967295u)))), 144f);
}

