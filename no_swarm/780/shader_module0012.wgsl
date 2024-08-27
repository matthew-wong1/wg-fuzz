struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_2,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<i32>(-19348i, -9754i, -1i, 57606i));

var<private> global1: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(vec4<i32>(1i, 0i, -1i, 55435i)), Struct_4(vec4<i32>(2238i, -29724i, -20545i, -1i)), Struct_4(vec4<i32>(0i, 2147483647i, -13684i, 4490i)), Struct_4(vec4<i32>(1i, 0i, 12362i, -6426i)), Struct_4(vec4<i32>(-4849i, 12910i, -36103i, 2147483647i)), Struct_4(vec4<i32>(-1i, -320i, 1i, -8349i)), Struct_4(vec4<i32>(2147483647i, 10134i, 2147483647i, 29248i)), Struct_4(vec4<i32>(2147483647i, 1i, -1492i, -3261i)), Struct_4(vec4<i32>(17774i, -46630i, -1i, 24372i)), Struct_4(vec4<i32>(-55858i, 0i, 39527i, -14958i)), Struct_4(vec4<i32>(i32(-2147483648), -31165i, -1i, 0i)), Struct_4(vec4<i32>(2147483647i, 1i, 0i, -40465i)), Struct_4(vec4<i32>(0i, 27526i, 1i, -68418i)), Struct_4(vec4<i32>(-25223i, i32(-2147483648), 0i, 14121i)), Struct_4(vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 18817i)), Struct_4(vec4<i32>(-13806i, 23577i, -37538i, -21213i)), Struct_4(vec4<i32>(i32(-2147483648), 706i, -8867i, -24455i)), Struct_4(vec4<i32>(11847i, 2147483647i, 27193i, i32(-2147483648))), Struct_4(vec4<i32>(-39267i, 2147483647i, -1i, i32(-2147483648))), Struct_4(vec4<i32>(-72869i, 39087i, 2147483647i, 17367i)), Struct_4(vec4<i32>(-1265i, 2147483647i, 7697i, 24569i)), Struct_4(vec4<i32>(-3861i, i32(-2147483648), 16446i, 0i)), Struct_4(vec4<i32>(-1i, 1i, 2147483647i, -6929i)), Struct_4(vec4<i32>(38880i, 43348i, 20570i, -45161i)));

var<private> global2: vec3<u32>;

var<private> global3: array<f32, 8>;

var<private> global4: array<vec4<bool>, 18>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2() -> i32 {
    global3 = array<f32, 8>();
    var var_0 = -207f;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(461f))) * -305f)), -2237f);
    var var_2 = Struct_2(true, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * 446f) - _wgslsmith_f_op_f32(step(-174f, var_1.x))), vec2<bool>(true, true)), global3[_wgslsmith_index_u32(global2.x, 8u)], Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, -869f, true))), _wgslsmith_f_op_f32(f32(-1f) * -505f)), vec2<bool>(true, true)));
    var var_3 = _wgslsmith_f_op_f32(-var_2.c);
    return u_input.a.x;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_3, arg_3: f32) -> vec2<bool> {
    let var_0 = Struct_3(countOneBits(global0.a.ww), Struct_2(false, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3, -777f, true))), arg_2.c.b.b), _wgslsmith_f_op_f32(step(arg_3, _wgslsmith_f_op_f32(-arg_2.c.b.a))), arg_2.b.b), arg_2.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_2.d), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.c.d.a, global3[_wgslsmith_index_u32(global2.x, 8u)], 774f, 1295f), _wgslsmith_f_op_vec4_f32(abs(arg_2.d)))))) * vec4<f32>(global3[_wgslsmith_index_u32(arg_1, 8u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 8u)] - _wgslsmith_f_op_f32(abs(161f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + -909f), -851f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_1 >> (arg_1 % 32u), 8u)] + _wgslsmith_f_op_f32(select(448f, arg_2.b.d.a, arg_0))))), global2.yy);
    global3 = array<f32, 8>();
    let var_1 = var_0.b;
    let var_2 = var_0.c;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1046f)) + _wgslsmith_f_op_f32(min(1328f, 536f)));
    return vec2<bool>(!select(arg_2.a.x != -global0.a.x, any(vec2<bool>(var_2.a, var_1.a)), -1441f >= var_0.c.d.a), all(vec3<bool>(true, true, true)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(min(-1000f, global3[_wgslsmith_index_u32(global2.x, 8u)])), -762f)))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~abs(~global2.x)), _wgslsmith_mod_u32(global2.x, 42729u | _wgslsmith_div_u32(1u, ~global2.x))), 24u)];
    var_1 = Struct_4(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a.x, global0.a.x), 1805i), _wgslsmith_clamp_i32(0i, i32(-1i) * -1i, func_2()), var_1.a.x, global0.a.x ^ select(-37766i, u_input.a.x, false)), ~max(min(u_input.a, u_input.a), vec4<i32>(global0.a.x, 16074i, global0.a.x, var_1.a.x))));
    var var_2 = vec2<bool>(true, false);
    let var_3 = ~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(global2.x, ~global2.x), firstLeadingBit(1u), 4294967295u), vec3<u32>(67697u, reverseBits(~global2.x), 65300u));
    return Struct_1(var_0.x, select(select(select(func_3(false, var_3.x, Struct_3(var_1.a.yx, Struct_2(var_2.x, Struct_1(global3[_wgslsmith_index_u32(4294967295u, 8u)], vec2<bool>(true, var_2.x)), global3[_wgslsmith_index_u32(0u, 8u)], Struct_1(arg_0, vec2<bool>(var_2.x, false))), Struct_2(true, Struct_1(global3[_wgslsmith_index_u32(4294967295u, 8u)], vec2<bool>(true, true)), 1100f, Struct_1(-192f, vec2<bool>(var_2.x, false))), vec4<f32>(451f, arg_0, -434f, -1000f), vec2<u32>(global2.x, var_3.x)), -1445f), !vec2<bool>(var_2.x, false), func_3(false, global2.x, Struct_3(vec2<i32>(global0.a.x, var_1.a.x), Struct_2(var_2.x, Struct_1(var_0.x, vec2<bool>(var_2.x, false)), global3[_wgslsmith_index_u32(4294967295u, 8u)], Struct_1(-1682f, vec2<bool>(var_2.x, true))), Struct_2(var_2.x, Struct_1(-1175f, vec2<bool>(false, false)), 1810f, Struct_1(602f, vec2<bool>(true, false))), vec4<f32>(global3[_wgslsmith_index_u32(global2.x, 8u)], -1000f, arg_0, -1000f), global2.yx), -261f)), select(vec2<bool>(false, true), !vec2<bool>(var_2.x, true), func_3(true, 285u, Struct_3(vec2<i32>(-17055i, 2147483647i), Struct_2(false, Struct_1(-126f, vec2<bool>(var_2.x, true)), 2122f, Struct_1(arg_0, vec2<bool>(false, var_2.x))), Struct_2(var_2.x, Struct_1(global3[_wgslsmith_index_u32(var_3.x, 8u)], vec2<bool>(true, false)), var_0.x, Struct_1(var_0.x, vec2<bool>(false, false))), vec4<f32>(arg_0, -548f, arg_0, arg_0), vec2<u32>(1956u, var_3.x)), 1000f)), func_3(!var_2.x, 29451u, Struct_3(var_1.a.xx, Struct_2(true, Struct_1(arg_0, vec2<bool>(true, var_2.x)), arg_0, Struct_1(var_0.x, vec2<bool>(var_2.x, true))), Struct_2(true, Struct_1(129f, vec2<bool>(true, false)), 1000f, Struct_1(610f, vec2<bool>(var_2.x, var_2.x))), vec4<f32>(var_0.x, -221f, var_0.x, 434f), global2.zz), global3[_wgslsmith_index_u32(13399u << (var_3.x % 32u), 8u)])), vec2<bool>(true, true), vec2<bool>(true, true)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global3 = array<f32, 8>();
    let var_0 = func_1(1000f);
    let var_1 = Struct_4(-(~u_input.a) << (~firstLeadingBit(abs(vec4<u32>(global2.x, 20500u, 4294967295u, global2.x))) % vec4<u32>(32u)));
    let var_2 = vec4<bool>(all(select(global4[_wgslsmith_index_u32(reverseBits(global2.x), 18u)], vec4<bool>(func_3(false, global2.x, Struct_3(global0.a.ww, Struct_2(true, arg_0, global3[_wgslsmith_index_u32(global2.x, 8u)], var_0), Struct_2(true, var_0, global3[_wgslsmith_index_u32(39573u, 8u)], arg_0), vec4<f32>(-1249f, -533f, var_0.a, global3[_wgslsmith_index_u32(global2.x, 8u)]), global2.xz), var_0.a).x, any(vec3<bool>(arg_0.b.x, false, var_0.b.x)), true, var_0.b.x), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.x, 34300u, global2.x) << (~global2.x % 32u), 18u)])), !(var_0.b.x || arg_0.b.x), arg_0.b.x, !(true & var_0.b.x));
    let var_3 = ~(~global0.a.wxy);
    return Struct_1(1f, !var_2.zw);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2, arg_3: i32) -> Struct_3 {
    global4 = array<vec4<bool>, 18>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.d.a)))), _wgslsmith_f_op_f32(-arg_0.c))));
    let var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1220f, 664f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.a, -944f) + vec2<f32>(-807f, global3[_wgslsmith_index_u32(13141u, 8u)])) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, 485f), vec2<f32>(var_0, 1470f), vec2<bool>(true, arg_0.d.b.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-359f, -921f)))))));
    let var_3 = func_4(Struct_1(-217f, arg_2.b.b));
    return Struct_3(_wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -7312i, -7717i) >> (~vec2<u32>(var_1, var_1) % vec2<u32>(32u)), select(global0.a.yz, _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-23951i, -17440i), vec2<i32>(u_input.a.x, arg_1.a.x)), global0.a.xw), var_3.b)), Struct_2(true, Struct_1(func_1(var_0).a, arg_0.d.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-766f + var_0)), Struct_1(arg_0.d.a, var_3.b)), Struct_2(arg_0.d.b.x, arg_2.b, var_0, arg_0.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, arg_2.c, _wgslsmith_div_f32(1000f, global3[_wgslsmith_index_u32(4294967295u, 8u)]), _wgslsmith_f_op_f32(476f - 1169f))))), _wgslsmith_sub_vec2_u32(global2.xy, _wgslsmith_clamp_vec2_u32(global2.zx >> (global2.xz % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(30806u, global2.x), firstTrailingBit(vec2<u32>(1u, var_1))), ~global2.xy)));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> Struct_2 {
    let var_0 = ~global0.a.wyx << (vec3<u32>(0u, 31612u, (~1u & ~global2.x) ^ 1u) % vec3<u32>(32u));
    global4 = array<vec4<bool>, 18>();
    let var_1 = Struct_4(-u_input.a);
    var var_2 = arg_0.b;
    global0 = var_1;
    return Struct_2(!arg_0.b.x, Struct_1(541f, !arg_2.b.d.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1504f, 749f)), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a))), arg_2.c.b.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 24>();
    let var_0 = func_6(Struct_1(global3[_wgslsmith_index_u32(0u, 8u)], vec2<bool>(true, true)), global0.a.x, func_5(Struct_2(true, func_4(func_1(global3[_wgslsmith_index_u32(global2.x, 8u)])), _wgslsmith_f_op_f32(floor(1f)), func_4(Struct_1(global3[_wgslsmith_index_u32(5952u, 8u)], vec2<bool>(true, true)))), global1[_wgslsmith_index_u32(4294967295u, 24u)], Struct_2(any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), Struct_1(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(global2.x, 8u)], -1000f)), func_3(false, 85949u, Struct_3(vec2<i32>(global0.a.x, u_input.a.x), Struct_2(true, Struct_1(global3[_wgslsmith_index_u32(4294967295u, 8u)], vec2<bool>(true, true)), -876f, Struct_1(-1000f, vec2<bool>(true, false))), Struct_2(true, Struct_1(-1161f, vec2<bool>(true, true)), global3[_wgslsmith_index_u32(9970u, 8u)], Struct_1(-1943f, vec2<bool>(false, false))), vec4<f32>(2009f, global3[_wgslsmith_index_u32(global2.x, 8u)], 474f, -1422f), global2.zy), 722f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1027f - global3[_wgslsmith_index_u32(33272u, 8u)])), Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(18469u, global2.x), 8u)], select(vec2<bool>(true, false), vec2<bool>(true, true), true))), abs(u_input.a.x) >> (~(~global2.x) % 32u)), ~global0.a.x);
    global2 = _wgslsmith_sub_vec3_u32(~(~vec3<u32>(~global2.x, 1u, ~53773u)), ~_wgslsmith_mod_vec3_u32(~select(vec3<u32>(global2.x, global2.x, global2.x), vec3<u32>(0u, 36810u, 4294967295u), var_0.b.b.x), ~vec3<u32>(1u, 1u, global2.x) >> (~vec3<u32>(global2.x, 39302u, global2.x) % vec3<u32>(32u))));
    var var_1 = var_0.b;
    let var_2 = Struct_1(233f, var_1.b);
    let var_3 = global1[_wgslsmith_index_u32(~(~1u), 24u)];
    global1 = array<Struct_4, 24>();
    let var_4 = ~(-var_3.a.x);
    var var_5 = func_4(func_1(_wgslsmith_f_op_f32(min(-953f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a + var_2.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(69016u) << (firstTrailingBit(global2.x) % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 18901u), global2.yy), _wgslsmith_div_u32(global2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(12989u, global2.x, 1u), vec3<u32>(global2.x, 84054u, 79769u)))), abs(vec3<u32>(max(1u, global2.x), 4294967295u, ~global2.x))), ~_wgslsmith_sub_u32(global2.x, 41135u), abs(select(firstLeadingBit(global0.a.zzw), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, var_4, 40877i), global0.a.wwy), true)) & max(~vec3<i32>(var_3.a.x, var_3.a.x, var_3.a.x), vec3<i32>(func_5(Struct_2(var_5.b.x, var_2, var_0.b.a, var_0.d), global1[_wgslsmith_index_u32(0u, 24u)], Struct_2(false, Struct_1(global3[_wgslsmith_index_u32(34215u, 8u)], vec2<bool>(true, var_0.b.b.x)), -823f, Struct_1(2184f, vec2<bool>(true, var_1.b.x))), 37387i).a.x, 2147483647i, -1414i)), var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -922f) * var_2.a));
}

