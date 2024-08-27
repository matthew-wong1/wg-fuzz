struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_3,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_4 = Struct_4(vec2<bool>(false, true), 33127i, vec2<bool>(false, false), vec2<f32>(343f, 500f));

var<private> global2: array<vec2<bool>, 18>;

var<private> global3: array<u32, 18> = array<u32, 18>(47422u, 21085u, 119240u, 3594u, 2904u, 4294967295u, 45835u, 42613u, 4294967295u, 4294967295u, 0u, 4294967295u, 30068u, 1u, 73594u, 33596u, 13645u, 0u);

var<private> global4: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: i32) -> u32 {
    var var_0 = (~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 18u)], 18u)], global0.x, 4294967295u), vec3<u32>(1u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 18u)], 18u)]))) & global0.x) << (1u % 32u);
    let var_1 = ~51887u;
    global1 = Struct_4(vec2<bool>(global1.c.x, arg_0.c.x), 0i, select(vec2<bool>(all(vec4<bool>(false, true, true, true)), false), vec2<bool>(!arg_0.c.x, true), any(vec4<bool>(true, global1.c.x, true, all(global2[_wgslsmith_index_u32(global0.x, 18u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1868f, arg_1)) - arg_0.d) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), -1372f)));
    global2 = array<vec2<bool>, 18>();
    global2 = array<vec2<bool>, 18>();
    return ~1u;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec2<f32>) -> i32 {
    var var_0 = global1.a.x;
    var_0 = !(arg_0 <= 2147483647i);
    var var_1 = _wgslsmith_div_f32(728f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(step(arg_2.x, 135f)), global1.c.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_2 = Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(16094u, ~global3[_wgslsmith_index_u32(func_3(Struct_4(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19994u, 18u)], 18u)], arg_1, vec2<bool>(false, global1.c.x), arg_2), _wgslsmith_f_op_f32(-530f - arg_2.x), arg_0 >> (global0.x % 32u)), 18u)]), 18u)], arg_0, global1.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(2061f * arg_2.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_2.x)))), -1000f))));
    let var_3 = ~global3[_wgslsmith_index_u32(func_3(Struct_4(var_2.c, ~firstTrailingBit(-17866i), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~(~2214u), 18u)], 18u)], _wgslsmith_f_op_vec2_f32(-global1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.d.x)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.x * global1.d.x), arg_2.x, global1.b < -37232i))), ~_wgslsmith_dot_vec3_i32(u_input.b >> (vec3<u32>(global0.x, global3[_wgslsmith_index_u32(2599u, 18u)], 0u) % vec3<u32>(32u)), vec3<i32>(15032i, var_2.b, var_2.b))), 18u)];
    return -9404i;
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: i32, arg_3: i32) -> vec2<u32> {
    var var_0 = !(!arg_1);
    let var_1 = Struct_1(vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(0u, 18u)], 29498u), ~countOneBits(vec2<u32>(15324u, 0u)))), all(vec4<bool>(arg_1.x, any(select(vec4<bool>(true, arg_1.x, false, true), arg_1, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, arg_2, arg_2, arg_3), vec4<i32>(21796i, -2147483647i, 0i, 1i)) >= _wgslsmith_add_i32(arg_3, 2147483647i), true)), ~41196u);
    global2 = array<vec2<bool>, 18>();
    let var_2 = _wgslsmith_div_vec3_i32(u_input.d >> (firstLeadingBit(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 18u)], 18u)], 41487u, global0.x) & vec3<u32>(0u, 11068u, global0.x)) % vec3<u32>(32u)), vec3<i32>(34765i, max(~(i32(-1i) * -2147483647i), arg_3), max(0i | arg_3, global1.b)));
    var var_3 = arg_3;
    return vec2<u32>(~_wgslsmith_clamp_u32(var_1.a.x, global0.x, global3[_wgslsmith_index_u32(~0u, 18u)]), 2508u);
}

fn func_1() -> f32 {
    let var_0 = Struct_1(firstLeadingBit(func_4(_wgslsmith_f_op_f32(global1.d.x * _wgslsmith_div_f32(463f, global1.d.x)), !(!vec4<bool>(false, true, global1.a.x, true)), func_2(u_input.c, ~0i, global1.d), -2147483647i)), (_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, global0.x, 12676u, global3[_wgslsmith_index_u32(global0.x, 18u)]), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 1250u), vec4<u32>(global3[_wgslsmith_index_u32(global0.x, 18u)], global0.x, global3[_wgslsmith_index_u32(11431u, 18u)], 8596u), vec4<u32>(0u, 63966u, global0.x, global0.x))) == ~1u) || select(!global1.a.x | true, false, global1.a.x), ~min(global0.x, _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(9668u, 18u)], _wgslsmith_sub_u32(11194u, 1u))));
    let var_1 = global1.d.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.d.x, global1.d.x, 1398f, global1.d.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(631f, -1268f, 356f, global1.d.x) - vec4<f32>(588f, global1.d.x, -1000f, -215f))))))));
    global2 = array<vec2<bool>, 18>();
    var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2525f, 523f, 146f, -182f) * vec4<f32>(1234f, -970f, 1086f, var_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1182f, 819f, global1.d.x, -774f) + vec4<f32>(1457f, global1.d.x, -1161f, 1000f)) * _wgslsmith_div_vec4_f32(vec4<f32>(310f, 562f, -879f, var_2.x), vec4<f32>(912f, var_2.x, -1000f, 382f))), !(!vec4<bool>(var_0.b, global1.c.x, var_0.b, false)))), vec4<f32>(_wgslsmith_f_op_f32(1941f - global1.d.x), global1.d.x, var_2.x, -1473f), vec4<bool>(!global1.c.x || global1.a.x, true, any(global1.a), global1.a.x | var_0.b))), vec4<f32>(-449f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -779f) - _wgslsmith_f_op_f32(-global1.d.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(849f)), _wgslsmith_f_op_f32(var_2.x + -483f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) + _wgslsmith_div_f32(global1.d.x, global1.d.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1387f)))));
    return _wgslsmith_f_op_f32(min(var_2.x, 984f));
}

fn func_5(arg_0: vec3<f32>, arg_1: bool, arg_2: i32) -> Struct_2 {
    global3 = array<u32, 18>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1139f)) - -730f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)))));
    var_1 = var_0;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))) * _wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_f32(ceil(-488f)));
    return Struct_2((vec3<i32>(-global1.b, max(u_input.c, -2147483647i), 2147483647i) & ~(~vec3<i32>(-27114i, -76359i, arg_2))) >> (vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(59164u, global0.x, 25805u, 66858u), vec4<u32>(global0.x, 1u, 28022u, 7284u)), 18u)], 4294967295u), 18u)], 18u)], global0.x, ~_wgslsmith_sub_u32(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 18u)], 18u)])) % vec3<u32>(32u)), Struct_1(vec2<u32>(min(global3[_wgslsmith_index_u32(33142u, 18u)], 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(18782u, 18u)], 24096u, 105806u, global0.x), vec4<u32>(17322u, global0.x, global0.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 18u)], 18u)]))) & abs(vec2<u32>(1u, 1u)), global1.c.x, _wgslsmith_sub_u32(select(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(29997u & global3[_wgslsmith_index_u32(7104u, 18u)], 18u)], 18u)], 4294967295u, true), ~min(global0.x, 59231u))), u_input.b & vec3<i32>(global1.b, firstTrailingBit(global1.b), u_input.d.x), Struct_1(vec2<u32>(global0.x | 20642u, ~global0.x), arg_1, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b;
    var var_1 = func_5(vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(trunc(-894f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(929f, global1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1145f), any(vec3<bool>(true, global1.c.x, global1.c.x)))) + _wgslsmith_f_op_f32(-531f * global1.d.x))), global1.c.x, ~17152i);
    var_1 = Struct_2(abs(var_1.a), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.d.x, -559f, -564f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1067f, 1820f, global1.d.x))), true)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.x, global1.d.x, global1.d.x) - vec3<f32>(global1.d.x, 748f, 547f))))), ((global0.x << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1.d.a.x, 18u)], 18u)], 18u)] % 32u)) << (~0u % 32u)) > 45845u, -2147483647i).b, vec3<i32>(~_wgslsmith_clamp_i32(firstLeadingBit(0i), ~u_input.a.x, var_1.a.x), u_input.b.x ^ 31505i, i32(-1i) * -2147483647i), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(118f, global1.d.x, global1.d.x))), false, ~global1.b).d);
    var var_2 = func_5(vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1495f - _wgslsmith_f_op_f32(-global1.d.x)) + _wgslsmith_div_f32(-236f, -578f)), _wgslsmith_f_op_f32(global1.d.x - -716f)), any(!vec3<bool>(global1.c.x, !global1.c.x, true)), -14369i);
    global3 = array<u32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(-(vec2<i32>(abs(var_1.a.x), _wgslsmith_mult_i32(u_input.b.x, var_2.a.x)) | (-var_1.c.xy & _wgslsmith_add_vec2_i32(var_1.a.yx, vec2<i32>(-23859i, 22546i)))), vec2<u32>(~1u, global0.x), var_2.a.yx);
}

