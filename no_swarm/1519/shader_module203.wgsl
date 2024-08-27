struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(12573u, 11000u, 124103u), vec3<u32>(0u, 32254u, 4294967295u), vec3<u32>(38468u, 44627u, 4294967295u), vec3<u32>(25132u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 1u), vec3<u32>(26652u, 1u, 0u), vec3<u32>(0u, 31168u, 1u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(4294967295u, 34428u, 7427u), vec3<u32>(10973u, 4294967295u, 76746u), vec3<u32>(1u, 24369u, 4294967295u), vec3<u32>(4294967295u, 0u, 683u), vec3<u32>(4294967295u, 76394u, 4294967295u), vec3<u32>(13869u, 38446u, 0u), vec3<u32>(19915u, 1u, 12918u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 86777u, 25244u), vec3<u32>(0u, 9467u, 58356u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec4<i32>) -> vec2<i32> {
    var var_0 = true;
    let var_1 = Struct_2(~_wgslsmith_mod_i32(-25741i, _wgslsmith_div_i32(~(-718i), select(-6713i, u_input.b.x, false))), global0.d, Struct_1(u_input.b.xx, firstTrailingBit(global0.d.a.x), select(_wgslsmith_sub_vec3_i32(-vec3<i32>(arg_0.x, global0.d.a.x, global0.d.b), vec3<i32>(42264i, u_input.b.x, -28833i)), -(vec3<i32>(-2718i, arg_0.x, 3379i) ^ vec3<i32>(global0.d.c.x, arg_0.x, arg_0.x)), vec3<bool>(global0.b, select(false, false, false), !global0.c)), firstLeadingBit(u_input.c)), _wgslsmith_mult_vec3_i32(u_input.b, select(_wgslsmith_mult_vec3_i32(~vec3<i32>(global0.d.b, arg_0.x, global0.d.b), vec3<i32>(2147483647i, u_input.b.x, -30586i)), -_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -16460i, -2147483647i), arg_0.wzz), all(!vec2<bool>(global0.b, false)))), ~vec4<i32>(u_input.b.x, 1i, global0.d.a.x, global0.d.c.x));
    var var_2 = u_input.a;
    var var_3 = Struct_5(Struct_1(select(_wgslsmith_div_vec2_i32(global0.d.a, vec2<i32>(1i, 0i)) & (vec2<i32>(2147483647i, 32431i) >> (var_1.b.d % vec2<u32>(32u))), vec2<i32>(u_input.b.x, -1474i), select(vec2<bool>(global0.c, false), select(vec2<bool>(true, global0.c), vec2<bool>(global0.c, true), vec2<bool>(true, global0.c)), global0.b | global0.c)), var_1.b.c.x, vec3<i32>(select(global0.d.c.x, -67457i, true), arg_0.x | 1i, ~(global0.d.a.x ^ arg_0.x)), ~select(~var_1.b.d, var_1.c.d, u_input.c.x > 4294967295u)));
    let var_4 = var_1.e;
    return ~abs(var_3.a.c.xz);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> i32 {
    var var_0 = global0.c;
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.a, global0.a, select(select(vec4<bool>(false, false, global0.c, global0.c), vec4<bool>(false, global0.b, global0.b, true), vec4<bool>(global0.c, true, global0.c, true)), vec4<bool>(false, false, global0.c, true), global0.c))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a * vec4<f32>(2137f, -1272f, global0.a.x, -718f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-161f, arg_1.b.x, global0.a.x, 818f) + vec4<f32>(global0.a.x, arg_1.b.x, 575f, arg_1.b.x)) + vec4<f32>(global0.a.x, 609f, -1000f, 1476f)))), false, !(((global0.a.x > global0.a.x) && global0.b) || false), Struct_1(select(_wgslsmith_add_vec2_i32(u_input.b.zx, vec2<i32>(2147483647i, arg_0.c.x)) ^ select(global0.d.a, global0.d.a, vec2<bool>(true, false)), func_2(vec4<i32>(arg_0.a.x, global0.d.a.x, u_input.b.x, 0i)), !(-849f < arg_1.b.x)), -24541i, global0.d.c, _wgslsmith_mod_vec2_u32(countOneBits(global0.d.d), firstTrailingBit(global0.d.d))));
    var var_1 = Struct_5(Struct_1(u_input.b.zx, _wgslsmith_div_i32(_wgslsmith_mult_i32(-13948i, _wgslsmith_div_i32(arg_0.c.x, arg_0.a.x)), 12749i), firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.x, 55487i, 21172i), vec3<i32>(global0.d.a.x, 56179i, 4681i)), arg_1.a, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(96473i, global0.d.c.x, arg_1.a)))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.d.d.x, 2282u, 66820u), max(vec4<u32>(8245u, 54434u, 19428u, 7634u), vec4<u32>(5023u, 74363u, 71326u, u_input.a))), global0.d.d.x)));
    var var_2 = global0.d.b;
    var var_3 = vec2<u32>(1u, 32529u);
    return _wgslsmith_add_i32(global0.d.b, 11677i << (abs(~(~var_3.x)) % 32u));
}

fn func_1() -> Struct_2 {
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = countOneBits(_wgslsmith_mod_i32(firstTrailingBit(1i >> (~u_input.c.x % 32u)), max(~global0.d.c.x, global0.d.b)));
    var var_2 = Struct_4(func_3(Struct_1(func_2(vec4<i32>(global0.d.b, u_input.b.x, 0i, 1i)) >> (firstLeadingBit(global0.d.d) % vec2<u32>(32u)), -1i, vec3<i32>(1i >> (u_input.a % 32u), 61i, ~u_input.b.x), global0.d.d), Struct_4(i32(-1i) * -u_input.b.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global0.a.zyz), _wgslsmith_div_vec3_f32(global0.a.zzz, global0.a.xyx))))), global0.a.xzx);
    return Struct_2(global0.d.a.x, Struct_1(-func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1, -2147483647i, -1i, -2147483647i), vec4<i32>(var_2.a, u_input.b.x, -2147483647i, -50971i))), reverseBits(-1i), firstTrailingBit(abs(-vec3<i32>(2147483647i, u_input.b.x, u_input.b.x))), vec2<u32>(_wgslsmith_clamp_u32(~4995u, max(25053u, 40344u), global0.d.d.x & u_input.a), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(1045u, 42345u)), vec2<u32>(15115u, 0u)))), global0.d, max(_wgslsmith_mod_vec3_i32(reverseBits(min(global0.d.c, u_input.b)), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, var_1, global0.d.a.x), -vec3<i32>(global0.d.a.x, 0i, -1i))), -u_input.b ^ global0.d.c), abs(~select(~vec4<i32>(var_2.a, var_2.a, global0.d.c.x, var_1), vec4<i32>(-1i, 31243i, -2147483647i, -1i), !global0.b)));
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: Struct_2) -> u32 {
    var var_0 = Struct_4(-2147483647i << ((global0.d.d.x & (_wgslsmith_clamp_u32(0u, arg_1.a.d.x, 0u) ^ _wgslsmith_sub_u32(u_input.c.x, arg_2.c.d.x))) % 32u), global0.a.wwx);
    let var_1 = func_1();
    global1 = array<vec3<u32>, 21>();
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -108f, -1188f, -868f)))), global0.c, false, func_1().b);
    let var_2 = var_0.b.x;
    return reverseBits(~u_input.c.x);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_5 {
    global1 = array<vec3<u32>, 21>();
    global1 = array<vec3<u32>, 21>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(floor(1437f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-347f)) - 166f), _wgslsmith_f_op_f32(f32(-1f) * -1131f))), arg_0.x != 4294967295u, true, func_1().b);
    let var_1 = (i32(-1i) * -(u_input.b.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, global0.d.a.x, -1i, -15970i), arg_1.e))) ^ ~_wgslsmith_mod_i32(var_0.d.b, -(~(-2147483647i)));
    global1 = array<vec3<u32>, 21>();
    return Struct_5(func_1().b);
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: u32) -> Struct_4 {
    let var_0 = global1[_wgslsmith_index_u32(62166u, 21u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x)));
    global1 = array<vec3<u32>, 21>();
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.a.x)), arg_0.x)), global0.a.x));
    let var_2 = func_5(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(~(~vec3<u32>(37616u, 0u, var_0.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2, 0u, 55317u), ~vec3<u32>(1u, arg_1.a.d.x, 18679u))), ~max(global1[_wgslsmith_index_u32(~4294967295u, 21u)], vec3<u32>(48108u, arg_2, arg_1.a.d.x))), Struct_2(~((i32(-1i) * -1i) & abs(arg_1.a.a.x)), func_1().b, arg_1.a, global0.d.c, vec4<i32>(-(~(-2147483647i)), u_input.b.x, global0.d.b, global0.d.b)));
    return Struct_4(global0.d.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-883f, -340f, global0.a.x)) * vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global0.a + global0.a))), global0.a))), func_5(vec3<u32>(func_4(!global0.b, Struct_5(global0.d), func_1()), u_input.a, _wgslsmith_div_u32(global0.d.d.x, 1u)), Struct_2(global0.d.a.x, Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(48551i, global0.d.b), vec2<i32>(0i, -42643i)), global0.d.b ^ u_input.b.x, u_input.b, global0.d.d), global0.d, -(vec3<i32>(u_input.b.x, global0.d.c.x, -11077i) | global0.d.c), -_wgslsmith_sub_vec4_i32(vec4<i32>(-1829i, -2147483647i, global0.d.b, global0.d.c.x), vec4<i32>(u_input.b.x, 46993i, 14958i, u_input.b.x)))), ~25384u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_6(vec4<f32>(-786f, _wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x, -1156f), func_5(countOneBits(vec3<u32>(u_input.c.x, u_input.c.x, global0.d.d.x)), func_1()), func_4(!global0.b, func_5(vec3<u32>(0u, 4294967295u, 24307u), Struct_2(var_0.a, global0.d, global0.d, vec3<i32>(global0.d.b, 1i, -1i), vec4<i32>(global0.d.c.x, 0i, global0.d.a.x, -1i))), Struct_2(16569i, global0.d, global0.d, vec3<i32>(1i, u_input.b.x, u_input.b.x), vec4<i32>(6575i, var_0.a, -5354i, 0i)))).b.x, _wgslsmith_f_op_f32(-var_0.b.x), -1000f, _wgslsmith_f_op_f32(floor(var_0.b.x))));
    global1 = array<vec3<u32>, 21>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-618f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1000f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -745f))));
    var var_3 = global0.d.c.x;
    var var_4 = _wgslsmith_sub_vec4_u32(countOneBits(_wgslsmith_sub_vec4_u32(~(vec4<u32>(58043u, 4294967295u, global0.d.d.x, global0.d.d.x) & vec4<u32>(u_input.c.x, 59983u, u_input.c.x, u_input.a)), ~vec4<u32>(global0.d.d.x, u_input.c.x, 0u, 8336u))), vec4<u32>(~(~26862u), ~(42000u >> (u_input.c.x % 32u)), 4294967295u, ~select(82160u, 1503u, false)) | vec4<u32>(0u, 165686u, global0.d.d.x, ~(~u_input.c.x)));
    var_4 = vec4<u32>(43199u, var_4.x, func_1().b.d.x, 98023u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, vec2<u32>(1u, u_input.c.x), -u_input.b);
}

