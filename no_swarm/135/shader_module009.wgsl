struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: f32,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32;

var<private> global2: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(1473f, -1925f, 913f), vec3<f32>(1830f, 1942f, 1013f)))))));
    var var_1 = any(select(select(select(select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, true, false), true), vec3<bool>(false, arg_0, false), all(vec3<bool>(true, arg_0, arg_0))), vec3<bool>(false, true, !arg_0), !any(vec3<bool>(true, true, false))), !vec3<bool>(true, true, all(vec3<bool>(arg_0, arg_0, true))), !(!(!vec3<bool>(arg_0, false, true)))));
    return u_input.c.x;
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: f32) -> f32 {
    let var_0 = Struct_2(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0, 0i, u_input.a.x), -select(u_input.a, vec3<i32>(11806i, u_input.b, -1i), vec3<bool>(false, true, false))) << (60378u % 32u), select(vec3<bool>(true, any(vec4<bool>(true, true, true, true)), select(false, true, true) || true), select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false)), all(vec2<bool>(false, true))), vec3<bool>(!(-170f < arg_2), true, any(vec4<bool>(true, true, true, false)))), _wgslsmith_f_op_f32(-1f), select(vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), true, any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), vec3<bool>(select(any(vec2<bool>(true, true)), true, true), true, _wgslsmith_f_op_f32(exp2(arg_2)) == arg_2), _wgslsmith_mod_i32(u_input.a.x, arg_0) != -22383i), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-941f, arg_2, -874f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_2, -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -1136f, arg_2) - vec3<f32>(arg_2, -248f, arg_2)))), ~vec4<u32>(43075u, arg_1.x | arg_1.x, max(75496u, 24360u), 1863u), _wgslsmith_sub_vec2_u32(arg_1, ~_wgslsmith_clamp_vec2_u32(arg_1, arg_1, u_input.c)), 0u, true));
    global2 = 0i;
    global2 = var_0.a;
    var var_1 = var_0;
    var var_2 = var_1.e;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.a.x))));
}

fn func_2(arg_0: u32) -> u32 {
    global0 = -9533i;
    global2 = u_input.b;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -880f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_i32(-u_input.a.x, 1i), ~u_input.d.yz | ~u_input.d.wy, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-120f, 1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(933f)) - 1664f))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-266f, -233f, 728f)))) - vec3<f32>(_wgslsmith_div_f32(-1450f, -1145f), _wgslsmith_f_op_f32(select(-172f, 1000f, false)), _wgslsmith_f_op_f32(trunc(1266f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(188f)), -1294f, _wgslsmith_f_op_f32(-1766f * 867f)))), u_input.d, _wgslsmith_add_vec2_u32(~(~vec2<u32>(64246u, arg_0)) & _wgslsmith_mod_vec2_u32(max(vec2<u32>(41326u, 4294967295u), u_input.c), ~vec2<u32>(4294967295u, arg_0)), vec2<u32>(3593u, countOneBits(122053u))), 1u, u_input.a.x > u_input.a.x);
    global2 = 4079i;
    return _wgslsmith_div_u32(~var_1.c.x, arg_0);
}

fn func_4(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_2(-1i, vec3<bool>(all(vec3<bool>(true, true, true)) || true, true, abs(arg_0) < arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-193f + _wgslsmith_f_op_f32(ceil(225f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))), vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-384f, 2737f, 900f), vec3<f32>(1127f, 790f, 504f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1350f, 1000f, 1983f))))), ~vec4<u32>(~4807u, ~18469u, 1u, ~u_input.c.x), vec2<u32>(66076u, countOneBits(func_2(u_input.c.x))), ~4294967295u, false));
    global2 = abs(44516i);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.e.a + var_0.e.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.a.x, var_0.c, -558f))) + _wgslsmith_f_op_vec3_f32(exp2(var_0.e.a))), vec3<f32>(-698f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -411f) - -109f), var_0.e.a.x), !select(select(vec3<bool>(var_0.e.e, false, var_0.d.x), vec3<bool>(var_0.e.e, var_0.b.x, var_0.d.x), vec3<bool>(false, var_0.e.e, true)), select(var_0.d, var_0.d, vec3<bool>(false, var_0.b.x, true)), var_0.b.x))), var_0.e.b, (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, 0u) ^ vec2<u32>(0u, 4294967295u), var_0.e.c) >> (vec2<u32>(abs(arg_0), _wgslsmith_dot_vec4_u32(vec4<u32>(80639u, 1u, 13891u, u_input.c.x), vec4<u32>(0u, var_0.e.d, 56988u, u_input.d.x))) % vec2<u32>(32u))) >> (vec2<u32>(~(~50274u), var_0.e.d) % vec2<u32>(32u)), var_0.e.c.x, any(select(!vec4<bool>(true, var_0.d.x, true, var_0.e.e), vec4<bool>(false, true, true, false), !vec4<bool>(var_0.b.x, false, var_0.d.x, var_0.e.e))) && all(select(!var_0.b.yy, vec2<bool>(true, true), select(var_0.d.xy, vec2<bool>(false, var_0.e.e), false))));
    var var_2 = vec4<u32>(~1u & ~_wgslsmith_add_u32(var_0.e.d, u_input.d.x), 25014u, abs(59098u ^ (var_1.d & ~39172u)), var_1.c.x);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, -389f, 208f)))))), abs(var_0.e.b), ~max(reverseBits(vec2<u32>(var_0.e.c.x, 0u)), ~(var_1.b.xx << (var_1.b.zw % vec2<u32>(32u)))), ~(~func_2(var_2.x) ^ abs(var_1.b.x)), all(vec2<bool>(~var_1.c.x < 4294967295u, true)));
    return var_0.e;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = !(!arg_1.b.yy);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1920f), -1598f, _wgslsmith_f_op_f32(f32(-1f) * -496f), arg_1.c);
    let var_2 = Struct_2(-2147483647i, arg_3.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(i32(-1i) * -30154i, _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.e.b.x, arg_3.e.b.x), arg_3.e.b.yx), arg_1.e.a.x))), _wgslsmith_f_op_f32(arg_1.e.a.x - _wgslsmith_f_op_f32(-1344f - 138f))), select(arg_1.b, select(vec3<bool>(455f > arg_0.a.x, arg_3.e.e, -8866i > arg_3.a), vec3<bool>(func_4(arg_1.e.d).e, true, arg_3.b.x), any(vec2<bool>(arg_3.b.x, arg_3.e.e))), select(!select(arg_1.d, arg_1.b, arg_1.d), !arg_3.b, firstLeadingBit(u_input.a.x) != ~arg_1.a)), func_4(func_2(~(~4294967295u))));
    var_0 = !arg_3.d.xz;
    global2 = arg_3.a;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = reverseBits(-2147483647i);
    var var_0 = func_5(Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-311f, _wgslsmith_f_op_f32(1424f * 782f), _wgslsmith_f_op_f32(step(-1070f, 385f))), _wgslsmith_div_vec3_f32(vec3<f32>(1355f, 1532f, -140f), vec3<f32>(-1474f, -1392f, -620f)))), _wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.c.x, 4294967295u, 43652u, 21362u), u_input.d, false), ~u_input.d) & vec4<u32>(u_input.c.x, ~1u, u_input.d.x >> (u_input.d.x % 32u), u_input.d.x), u_input.c, func_1(-15782i < ~u_input.a.x, u_input.a.yy), u_input.b == -1i), Struct_2(~(_wgslsmith_sub_i32(0i, 0i) >> (u_input.c.x % 32u)), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -110f)), vec3<bool>(true, true, true), func_4(func_2(~113021u))), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(~(-vec2<i32>(u_input.a.x, -2147483647i)), u_input.a.zy), ~countOneBits(max(vec2<i32>(u_input.a.x, -16358i), u_input.a.zz))), Struct_2(-max(u_input.a.x, countOneBits(u_input.b)), select(vec3<bool>(true, true, true), vec3<bool>(u_input.d.x < 1u, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(trunc(-673f)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), all(vec2<bool>(true, false))), vec3<bool>(true, any(vec4<bool>(false, false, true, false)), false)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(937f, -497f, -528f))), u_input.d, _wgslsmith_add_vec2_u32(~vec2<u32>(12957u, 46484u), ~u_input.d.wy), 16814u, true)));
    global1 = _wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_sub_vec3_i32(abs(vec3<i32>(1i, u_input.b, u_input.a.x) ^ u_input.a), (u_input.a | u_input.a) >> (firstLeadingBit(vec3<u32>(u_input.d.x, 50251u, 4294967295u)) % vec3<u32>(32u)))) ^ firstTrailingBit(countOneBits(-1i));
    global1 = abs(_wgslsmith_mult_i32(-2147483647i, func_5(Struct_1(var_0.e.a, vec4<u32>(12167u, u_input.c.x, u_input.d.x, 100471u), u_input.c, u_input.c.x, var_0.b.x), Struct_2(var_0.a, var_0.b, var_0.e.a.x, var_0.b, var_0.e), ~vec2<i32>(var_0.a, 9649i), func_5(Struct_1(var_0.e.a, vec4<u32>(16639u, 4294967295u, 24415u, u_input.d.x), u_input.d.yy, u_input.c.x, var_0.d.x), Struct_2(var_0.a, vec3<bool>(var_0.b.x, var_0.d.x, false), -1133f, var_0.b, Struct_1(vec3<f32>(-873f, -1328f, var_0.e.a.x), vec4<u32>(var_0.e.b.x, var_0.e.c.x, 4294967295u, u_input.d.x), var_0.e.c, 45113u, var_0.b.x)), vec2<i32>(-18636i, var_0.a), Struct_2(u_input.a.x, var_0.b, var_0.e.a.x, vec3<bool>(var_0.e.e, false, false), Struct_1(var_0.e.a, vec4<u32>(84639u, 49222u, u_input.d.x, 22000u), vec2<u32>(65227u, 12231u), 0u, true)))).a) >> (abs(_wgslsmith_sub_u32(u_input.d.x | 10273u, u_input.d.x >> (u_input.d.x % 32u))) % 32u));
    let var_1 = ~120137u;
    var var_2 = -(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, ~u_input.a.x), vec2<i32>(var_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(34781i, var_0.a), vec2<i32>(-15700i, var_0.a)))) & vec2<i32>(i32(-1i) * -29578i, -(~17577i)));
    global0 = -(u_input.b & ~var_2.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-855f, -921f, var_0.c, var_0.e.a.x) + vec4<f32>(var_0.e.a.x, -475f, 680f, var_0.e.a.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_mod_vec3_u32(abs(vec3<u32>(var_1, 71718u, var_0.e.c.x)), u_input.d.xyx), max(var_0.e.b.yzw, ~func_5(var_0.e, Struct_2(13048i, var_0.b, -328f, vec3<bool>(var_0.b.x, var_0.b.x, var_0.d.x), var_0.e), vec2<i32>(u_input.b, var_2.x), Struct_2(var_0.a, vec3<bool>(var_0.b.x, false, var_0.e.e), var_0.e.a.x, vec3<bool>(true, var_0.d.x, false), Struct_1(vec3<f32>(var_0.c, -735f, var_3.x), var_0.e.b, vec2<u32>(24933u, 4294967295u), 1u, var_0.b.x))).e.b.zzy), !var_0.b.x), _wgslsmith_f_op_f32(1438f * 1f), vec4<u32>(~(~func_5(var_0.e, Struct_2(2147483647i, vec3<bool>(var_0.e.e, false, true), 127f, vec3<bool>(true, var_0.e.e, false), var_0.e), vec2<i32>(var_2.x, 1i), Struct_2(var_0.a, var_0.b, var_0.c, vec3<bool>(var_0.d.x, var_0.b.x, var_0.e.e), var_0.e)).e.b.x), u_input.d.x, 0u, var_0.e.c.x));
}

