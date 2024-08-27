struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_3,
    d: vec4<u32>,
}

struct Struct_5 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_4,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<f32>(1000f, 991f, -1018f, -2309f)), Struct_1(vec4<f32>(-1356f, -580f, 2344f, -498f)), Struct_1(vec4<f32>(194f, -969f, -2105f, -1311f)), Struct_1(vec4<f32>(-179f, -2050f, 1272f, 600f)), Struct_1(vec4<f32>(-1211f, 1000f, 1000f, -439f)), Struct_1(vec4<f32>(463f, 128f, 2083f, -1364f)), Struct_1(vec4<f32>(-314f, 621f, 749f, -501f)), Struct_1(vec4<f32>(839f, 701f, 1495f, -666f)), Struct_1(vec4<f32>(209f, -1000f, -1037f, -535f)), Struct_1(vec4<f32>(1684f, 593f, -1036f, 1014f)), Struct_1(vec4<f32>(153f, 1000f, -858f, -534f)), Struct_1(vec4<f32>(149f, 775f, -1000f, -437f)), Struct_1(vec4<f32>(-201f, 592f, -1652f, -861f)), Struct_1(vec4<f32>(-387f, 775f, 1441f, 1572f)), Struct_1(vec4<f32>(-873f, -1290f, -927f, -1012f)), Struct_1(vec4<f32>(-593f, 322f, -2389f, 1000f)), Struct_1(vec4<f32>(-1000f, -147f, -1253f, 996f)), Struct_1(vec4<f32>(-146f, -1035f, 880f, -923f)), Struct_1(vec4<f32>(951f, -1960f, 1048f, 952f)), Struct_1(vec4<f32>(1003f, -1182f, -273f, 452f)), Struct_1(vec4<f32>(666f, -339f, 1009f, -243f)));

var<private> global2: u32 = 0u;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> vec4<f32> {
    let var_0 = all(!select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), any(vec4<bool>(false, true, false, true)))) & !(_wgslsmith_add_u32(u_input.d.x, 61238u) > ~1u);
    let var_1 = global1[_wgslsmith_index_u32(~max(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.d.x, 0u), u_input.d.xxz), u_input.b, 18352u, 0u), ~vec4<u32>(u_input.d.x, 0u, u_input.b, 1u)), ~36951u), 21u)];
    return _wgslsmith_f_op_vec4_f32(select(var_1.a, vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(sign(var_1.a.x)), var_1.a.x, 1f), select(select(vec4<bool>(all(vec3<bool>(false, true, var_0)), true, -350f >= var_1.a.x, true), !select(vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(var_0, var_0, true, false), vec4<bool>(false, false, var_0, var_0)), !(!vec4<bool>(false, var_0, var_0, var_0))), vec4<bool>(var_0, all(select(vec4<bool>(var_0, true, var_0, false), vec4<bool>(false, false, var_0, false), vec4<bool>(true, false, true, var_0))), !var_0, true), var_0)));
}

fn func_2() -> Struct_3 {
    global0 = u_input.a.x;
    let var_0 = _wgslsmith_mult_vec3_i32(~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -14897i) << (u_input.d.wyx % vec3<u32>(32u)), abs(vec3<i32>(u_input.a.x, u_input.c, u_input.a.x)), -vec3<i32>(u_input.c, -2147483647i, u_input.c))), vec3<i32>(~(i32(-1i) * -29293i), _wgslsmith_sub_i32(2187i, 18124i), 1i >> (~4294967295u % 32u)));
    var var_1 = Struct_3(Struct_2(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.d.zy, u_input.d.wz << (vec2<u32>(u_input.d.x, 43467u) % vec2<u32>(32u))), countOneBits(vec2<u32>(u_input.d.x, u_input.b)) ^ ~u_input.d.zx), global1[_wgslsmith_index_u32(min(u_input.b, ~4294967295u), 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], 2314f, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(501f, -830f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-400f, 1125f)), vec2<f32>(-1046f, -669f))))), u_input.d.wzy ^ abs(vec3<u32>(u_input.d.x, u_input.d.x | 1u, 86373u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2178f), -3036f, !(!any(vec2<bool>(false, true))))), ~abs(abs(reverseBits(var_0))));
    let var_2 = vec3<i32>(reverseBits(var_0.x), _wgslsmith_dot_vec3_i32(~((var_0 << (u_input.d.yzz % vec3<u32>(32u))) >> (~vec3<u32>(8887u, u_input.d.x, var_1.b.x) % vec3<u32>(32u))), var_0), var_1.d.x);
    global2 = 12819u;
    return Struct_3(Struct_2(vec2<u32>(~0u & (5728u >> (var_1.a.a.x % 32u)), ~var_1.a.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(var_1.a.b.a - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-432f, -111f, var_1.c, 386f)))), Struct_1(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.d, 217f) * var_1.a.e), 23632i))), 346f, _wgslsmith_f_op_vec2_f32(round(var_1.a.e))), max(_wgslsmith_div_vec3_u32(countOneBits(~vec3<u32>(43703u, u_input.d.x, 46737u)), (var_1.b & u_input.d.zxw) & min(vec3<u32>(10107u, var_1.b.x, 4294967295u), vec3<u32>(var_1.b.x, 23282u, var_1.b.x))), vec3<u32>(_wgslsmith_mult_u32(max(var_1.b.x, u_input.b), var_1.a.a.x), u_input.d.x, ~u_input.d.x << ((u_input.d.x << (61683u % 32u)) % 32u))), var_1.c, var_0);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: i32) -> Struct_2 {
    global2 = u_input.b;
    global2 = ~54257u;
    global1 = array<Struct_1, 21>();
    var var_0 = Struct_2(vec2<u32>(3009u, 4294967295u) | vec2<u32>(~(~u_input.d.x), 27059u), func_2().a.c, Struct_1(vec4<f32>(_wgslsmith_div_f32(-1000f, arg_1.c), _wgslsmith_f_op_f32(trunc(-467f)), -928f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.c * arg_1.a.d))))), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a.e * arg_1.a.b.a.yx)), -35974i)).x, _wgslsmith_f_op_vec2_f32(arg_1.a.b.a.wz + func_2().a.e));
    let var_1 = countOneBits(u_input.c);
    return Struct_2(vec2<u32>(0u, ~115995u), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(671f, -1712f, 1678f, 2275f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1040f, -728f, var_0.d, -424f))))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c.a), arg_1.a.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-654f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(var_0.b.a.yy, -6517i)).x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c), -1255f) - arg_1.a.c.a.xy) - var_0.e));
}

fn func_5(arg_0: Struct_3) -> Struct_5 {
    var var_0 = true;
    let var_1 = Struct_4(arg_0, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.a.a.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_0.a.a.x, 64744u), 4294967295u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, u_input.b, 54836u, arg_0.b.x), vec4<u32>(4294967295u, 1u, 4294967295u, u_input.d.x)) % 32u), 62428u)), 21u)], func_2(), vec4<u32>(u_input.b | countOneBits(~59644u), u_input.d.x, 4294967295u, max(7484u, arg_0.b.x)));
    global2 = var_1.d.x;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1078f);
    global1 = array<Struct_1, 21>();
    return Struct_5(min(-1i, -14733i), vec4<i32>(arg_0.d.x, _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_add_i32(-1290i, arg_0.d.x), var_1.c.d.x), arg_0.d.x >> (_wgslsmith_mult_u32(abs(arg_0.b.x), _wgslsmith_mod_u32(var_1.d.x, 0u)) % 32u), select(firstTrailingBit(-6408i), min(u_input.c, -var_1.c.d.x), any(vec3<bool>(false, false, true)))), func_2().a.c, var_1, var_1);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_3 {
    global0 = ~(-(~(-_wgslsmith_sub_i32(arg_0, u_input.a.x))));
    let var_0 = 1i;
    var var_1 = func_5(Struct_3(func_4(all(vec4<bool>(true, true, true, true)), func_2(), 1i ^ select(-2147483647i, 31238i, false)), abs(u_input.d.xyx), arg_1.a.x, _wgslsmith_sub_vec3_i32(vec3<i32>(~u_input.a.x, -1i, countOneBits(arg_0)), -_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -17173i, 23631i), vec3<i32>(var_0, 0i, var_0)))));
    let var_2 = func_5(func_2()).d.c;
    global0 = ~_wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.d.x, arg_0, 2147483647i, arg_0), var_1.b, vec4<i32>(var_0, 14874i, 1i, arg_0)) ^ (var_1.b << ((u_input.d >> (vec4<u32>(var_2.a.a.x, var_1.d.c.b.x, u_input.d.x, var_2.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))), select(_wgslsmith_div_vec4_i32(min(var_1.b, var_1.b), vec4<i32>(u_input.c, arg_0, 2147483647i, -11378i)), var_1.b, vec4<bool>(true, true, true, var_1.e.c.a.e.x >= arg_2.a.x)));
    return Struct_3(func_4(false, func_5(var_2).e.a, firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_2.d, vec3<i32>(-2147483647i, var_0, 6711i)), min(-1i, var_1.e.c.d.x)))), u_input.d.xyz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2651f))), firstTrailingBit(abs(-var_1.b.yzy & max(vec3<i32>(u_input.a.x, 2147483647i, 1i), vec3<i32>(0i, -5847i, arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-13732i, Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(237f, 349f, 1507f, 2205f) - vec4<f32>(773f, 1091f, -1354f, 547f)), vec4<f32>(1f, 1f, 1f, 1f))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-777f, 778f, -928f, 1000f), vec4<f32>(-450f, 893f, 593f, -895f)) * vec4<f32>(1372f, 663f, -349f, 1302f)))));
    let var_1 = false;
    global2 = u_input.b ^ firstLeadingBit(44289u);
    var_0 = func_1(reverseBits(~reverseBits(-1i)), var_0.a.c, func_5(func_2()).e.c.a.c);
    var var_2 = vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.d.x, _wgslsmith_div_i32(u_input.a.x, var_0.d.x), 26876i, u_input.c | var_0.d.x), ~vec4<i32>(u_input.c, u_input.c, var_0.d.x | 13833i, -2147483647i | u_input.a.x)), func_2().d.x >> (~(~u_input.d.x) % 32u), 1i & (8754i | _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, -2147483647i), u_input.a)));
    global2 = var_0.a.a.x;
    let var_3 = 127f;
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.d, ~vec4<u32>(49661u, 23960u, u_input.b, 1u)), _wgslsmith_div_vec4_u32(abs(~vec4<u32>(4294967295u, 9460u, var_0.a.a.x, u_input.b)) ^ (countOneBits(u_input.d) ^ reverseBits(u_input.d)), u_input.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(583f, var_3, func_2().c, func_1(~var_2.x, func_5(Struct_3(Struct_2(u_input.d.xw, Struct_1(var_0.a.c.a), Struct_1(vec4<f32>(818f, var_3, -1281f, var_3)), 503f, var_0.a.b.a.zx), vec3<u32>(u_input.b, 0u, 4294967295u), -874f, vec3<i32>(var_2.x, -1i, 24662i))).d.b, global1[_wgslsmith_index_u32(~u_input.b, 21u)]).c) + var_0.a.b.a), vec2<i32>(~(var_2.x & 13274i), u_input.a.x), var_0.a.b.a.zzy);
}

