struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
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

var<private> global0: bool = true;

var<private> global1: vec3<i32>;

var<private> global2: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(484f, 1342f, 791f), vec3<f32>(1221f, -338f, -398f), vec3<f32>(814f, -1270f, -2509f), vec3<f32>(-823f, 1806f, -1101f), vec3<f32>(999f, -544f, 271f), vec3<f32>(-445f, -1277f, -161f), vec3<f32>(-1514f, -634f, -118f));

var<private> global3: Struct_2 = Struct_2(Struct_1(vec3<i32>(20835i, 18883i, 1i), -1i, vec4<u32>(28992u, 19011u, 59824u, 16744u), -15714i, vec2<i32>(-14621i, -1i)), 1u);

var<private> global4: Struct_1 = Struct_1(vec3<i32>(0i, i32(-2147483648), -2478i), 2147483647i, vec4<u32>(12872u, 1672u, 16264u, 0u), 43856i, vec2<i32>(i32(-2147483648), 5091i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_add_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, -2147483647i, global1.x, 61208i), _wgslsmith_sub_vec4_i32(vec4<i32>(-32836i, 0i, global3.a.a.x, 0i), vec4<i32>(0i, -60856i, -54444i, -1i))) ^ _wgslsmith_clamp_vec4_i32(u_input.e, u_input.e, vec4<i32>(global4.a.x, global4.a.x, global1.x, u_input.c))), vec4<i32>(u_input.c | max(max(u_input.e.x, u_input.c), _wgslsmith_add_i32(global3.a.d, 38843i)), -global1.x, reverseBits(~(global1.x >> (1u % 32u))), _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(-51972i, -15655i, global3.a.e.x, global4.e.x), select(vec4<i32>(-35293i, global1.x, global4.d, 37741i), u_input.e, arg_0)), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, global4.e.x, global3.a.a.x), _wgslsmith_div_vec4_i32(u_input.e, vec4<i32>(global1.x, global1.x, global4.a.x, global1.x))))));
    var var_1 = firstTrailingBit((((1311u | global3.b) & ~global4.c.x) | u_input.b) ^ global4.c.x);
    let var_2 = select(vec4<bool>(~(~u_input.c) < _wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(u_input.e.zxx, vec3<i32>(280i, global1.x, -86856i))), arg_0.x, any(vec4<bool>(arg_0.x, all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), arg_0.x == false, any(vec2<bool>(arg_0.x, arg_0.x)))), !arg_0.x), !arg_0, select(vec4<bool>(true, 0i <= -global3.a.e.x, arg_0.x, false), vec4<bool>(any(!vec4<bool>(true, arg_0.x, true, true)), !arg_0.x, false && any(arg_0.xzy), arg_0.x), select(arg_0, vec4<bool>(all(vec2<bool>(arg_0.x, false)), arg_0.x | arg_0.x, arg_0.x, arg_0.x), vec4<bool>(-16727i == global4.b, !arg_0.x, false, all(arg_0.xxy)))));
    var var_3 = ~1u;
    let var_4 = global3.a;
    return _wgslsmith_sub_u32(countOneBits(global4.c.x), ~(~_wgslsmith_sub_u32(~global4.c.x, _wgslsmith_div_u32(1u, 1u))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = abs(global4.c);
    let var_1 = false;
    var var_2 = !(!var_1);
    var var_3 = !vec4<bool>(var_1, true, ((var_1 || var_1) || var_1) || var_1, !((global3.a.c.x >> (global4.c.x % 32u)) <= global3.a.c.x));
    global1 = ~global4.a;
    return Struct_2(Struct_1(~(~u_input.e.yyx), global1.x, max(~u_input.d, ~(~global3.a.c)), arg_0.x, _wgslsmith_div_vec2_i32(~vec2<i32>(global3.a.e.x, global3.a.e.x) >> (u_input.d.ww % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(global4.d, global3.a.e.x), _wgslsmith_mod_vec2_i32(vec2<i32>(global4.e.x, -7921i), arg_0)))), func_3(vec4<bool>(any(vec3<bool>(false, true, true)), false, true, false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-508f, -987f)))) | max(1u, 4427u));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_2) -> f32 {
    let var_0 = arg_3.a.c.wyy;
    var var_1 = func_2(vec2<i32>(max(1i, i32(-1i) * -1i), arg_0.x));
    let var_2 = global4.c;
    var var_3 = Struct_3(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(arg_2.wyy)), _wgslsmith_f_op_vec3_f32(min(arg_2.wzw, vec3<f32>(arg_2.x, arg_1, 568f))), vec3<bool>(true, true, true))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -997f), _wgslsmith_f_op_f32(-1119f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * -537f) - arg_1)), _wgslsmith_div_f32(-1643f, 109f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_3.b.x))))));
    return -519f;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>, arg_3: u32) -> Struct_1 {
    var var_0 = func_2(select(max(u_input.e.zz, vec2<i32>(global1.x, global3.a.d) | global3.a.e), vec2<i32>(-1i) * -global1.zx, select(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(all(vec2<bool>(true, true)), true)))).a;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-415f, arg_2.x, arg_2.x, _wgslsmith_f_op_f32(arg_2.x + -1848f)))))) * vec4<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.x, 1000f))), _wgslsmith_div_f32(-1032f, _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)) * _wgslsmith_f_op_f32(floor(-623f)))))));
    let var_2 = -abs(vec2<i32>(i32(-1i) * -arg_0.a.x, arg_0.b));
    let var_3 = Struct_3(true, var_1.xww);
    let var_4 = _wgslsmith_add_i32(-60627i, 45836i);
    return func_2(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global3.a.a.x, ~u_input.c), abs(vec2<i32>(-2147483647i, u_input.c))), vec2<i32>(-2875i, global1.x >> (_wgslsmith_add_u32(1u, 4641u) % 32u)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-772f, 191f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1994f - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-711f - -522f), -854f, var_0.x)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(round(-246f)), _wgslsmith_f_op_f32(f32(-1f) * -299f), 612f, _wgslsmith_f_op_f32(1681f * 1310f)))))));
    var var_2 = Struct_2(func_4(global3.a, global4.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 1261f)) - vec2<f32>(_wgslsmith_f_op_f32(func_1(u_input.e, 1664f, vec4<f32>(1402f, var_1.x, 1934f, var_1.x), Struct_2(global3.a, global4.c.x))), _wgslsmith_f_op_f32(sign(-208f)))), ~global3.a.c.x), 1u);
    var var_3 = !select(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true))), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), false)), vec4<bool>(_wgslsmith_mod_u32(global3.a.c.x, global4.c.x) > u_input.d.x, true, any(vec3<bool>(true, false, false)), (global3.b > global4.c.x) | true));
    let var_4 = _wgslsmith_sub_u32(~var_2.a.c.x, ~38825u << (global4.c.x % 32u));
    let var_5 = 47938u;
    var var_6 = vec2<f32>(-1800f, _wgslsmith_div_f32(var_1.x, 985f));
    let var_7 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(min(880f, var_1.x)))) != var_1.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(var_1.zxz)), _wgslsmith_div_vec3_f32(global2[_wgslsmith_index_u32(select(var_4, 9611u, false), 7u)], _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(var_2.b, 7u)] * var_1.xxy)), vec3<bool>(var_2.a.c.x <= global3.a.c.x, u_input.d.x >= 1u, var_3.x))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global3.a.c.wz, ~vec2<u32>(26819u, 92605u)) & u_input.b, 7u)])));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b);
}

