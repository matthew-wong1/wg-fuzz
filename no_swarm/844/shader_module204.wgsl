struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(2147483647i, -29702i), vec2<i32>(33875i, -36048i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-69i, 18111i), vec2<i32>(55404i, i32(-2147483648)), vec2<i32>(1i, 15840i), vec2<i32>(1i, 43836i), vec2<i32>(0i, -1i), vec2<i32>(-1i, -31781i), vec2<i32>(-38145i, 0i), vec2<i32>(-345i, i32(-2147483648)), vec2<i32>(-11217i, -1576i), vec2<i32>(i32(-2147483648), 24209i), vec2<i32>(13547i, -48595i), vec2<i32>(-7582i, 36987i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(2147483647i, 33336i), vec2<i32>(-7712i, -1986i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(33807i, -1i), vec2<i32>(-1i, -3037i), vec2<i32>(-6527i, 0i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, 2147483647i));

var<private> global1: Struct_2;

var<private> global2: array<u32, 3>;

var<private> global3: array<i32, 31>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec4<u32>) -> f32 {
    global3 = array<i32, 31>();
    let var_0 = Struct_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))) * arg_0))), Struct_2(~_wgslsmith_sub_vec4_u32(global1.a, vec4<u32>(4294967295u, arg_2.x, global2[_wgslsmith_index_u32(u_input.b.x, 3u)], u_input.b.x)), Struct_1(reverseBits(u_input.a) & abs(global1.a), global1.b.b, global1.b.c, countOneBits(global1.b.d >> (global1.b.d % vec4<u32>(32u))), vec4<bool>(any(vec3<bool>(false, false, true)), global1.b.b, any(global1.b.e), arg_1.x)), global1.c), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.b.c.x, arg_0, arg_0, -339f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1376f, arg_0, arg_0, arg_0) + vec4<f32>(422f, global1.b.c.x, arg_0, 1881f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -295f, arg_0, 461f))))));
    global1 = Struct_2(_wgslsmith_div_vec4_u32(var_0.b.a, ~(~global1.b.d) ^ firstLeadingBit(~vec4<u32>(23545u, 0u, 0u, 0u))), Struct_1(select(vec4<u32>(115551u, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(var_0.b.a.x, 3u)], u_input.b.x), ~16026u, _wgslsmith_div_u32(1u, global2[_wgslsmith_index_u32(37616u, 3u)])), ~_wgslsmith_mod_vec4_u32(global1.a, global1.a), !(-400f > arg_0)), false, vec2<f32>(arg_0, arg_0), u_input.a, vec4<bool>(var_0.b.b.b, true, true, any(global1.b.e.yxx))), _wgslsmith_sub_vec3_i32(reverseBits(var_0.b.c), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(global1.c, global1.c), -reverseBits(global1.c))));
    let var_1 = Struct_2(arg_2, Struct_1(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(global1.a.x, 71604u, global1.b.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 3u)])), var_0.b.a), true, var_0.c.wx, ~vec4<u32>(50381u << (var_0.b.b.d.x % 32u), 0u & global1.a.x, reverseBits(global1.a.x), ~4294967295u), var_0.b.b.e), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(var_0.b.a.x, 31u)], -1i, -1i), var_0.b.c ^ global1.c) | var_0.b.c, _wgslsmith_sub_vec3_i32(~(vec3<i32>(global1.c.x, 26513i, global3[_wgslsmith_index_u32(arg_2.x, 31u)]) << (arg_2.zyx % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(global1.c, vec3<i32>(0i, var_0.b.c.x, global3[_wgslsmith_index_u32(var_0.b.a.x, 31u)])))));
    global0 = array<vec2<i32>, 25>();
    return _wgslsmith_f_op_f32(-607f + var_0.b.b.c.x);
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global1.b.c.x, _wgslsmith_f_op_f32(func_3(global1.b.c.x, vec2<bool>(false, false), u_input.b))), _wgslsmith_f_op_f32(-664f - _wgslsmith_f_op_f32(round(global1.b.c.x))), -282f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2142f, global1.b.c.x, arg_0) + vec3<f32>(arg_0, arg_0, 840f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(960f, global1.b.c.x, arg_0)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1383f, arg_0, arg_0))))), select(vec3<bool>(true, true, true), vec3<bool>(all(global1.b.e.yz), !arg_1.a.x, global1.b.b), arg_1.a.x))));
    global3 = array<i32, 31>();
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0 * _wgslsmith_f_op_vec3_f32(-var_0))));
    var var_2 = 0i;
    var var_3 = reverseBits(u_input.b.xw);
    return Struct_4(vec3<f32>(699f, _wgslsmith_f_op_f32(floor(338f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1010f + var_0.x)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = 9863u;
    global3 = array<i32, 31>();
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-231f, -927f, -2029f)))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1597f, -1405f, global1.b.c.x)))))));
    let var_2 = global1.b;
    var var_3 = func_2(1000f, Struct_3(vec4<bool>(var_2.e.x, true, !(!global1.b.e.x), all(!global1.b.e.xw))));
    return Struct_2(arg_2, Struct_1(~(~var_2.d), !(!all(vec3<bool>(true, false, var_2.e.x))), var_1.a.yz, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.a.x, global2[_wgslsmith_index_u32(4294967295u, 3u)], arg_2.x, var_0) >> (vec4<u32>(var_0, 0u, global2[_wgslsmith_index_u32(4294967295u, 3u)], 61506u) % vec4<u32>(32u)), vec4<u32>(17067u, 4294967295u, 39011u, u_input.a.x), max(u_input.b, arg_2)), global1.b.e), -global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global1.b.e;
    var var_1 = reverseBits(5030i);
    var var_2 = global1.b;
    let var_3 = 56551u & global2[_wgslsmith_index_u32(countOneBits(0u), 3u)];
    var_2 = global1.b;
    global1 = func_1(_wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, global1.a.x, 0u), global1.b.a.wzx), u_input.b.xyw), !(!(!(!vec3<bool>(global1.b.b, false, true)))), u_input.b, vec3<bool>(true, any(!select(global1.b.e, var_2.e, false)), !all(!vec4<bool>(false, true, false, global1.b.e.x))));
    let var_4 = Struct_1(vec4<u32>(abs(~(~var_3)), global1.b.a.x, var_2.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, ~54375u, min(global1.b.a.x, global2[_wgslsmith_index_u32(var_2.d.x, 3u)])), vec4<u32>(4294967295u, 1u, 12986u, 56920u))), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.c)), u_input.b, !select(vec4<bool>(true, true, global1.b.e.x, false), !select(var_2.e, vec4<bool>(var_0.x, true, global1.b.b, true), vec4<bool>(var_0.x, var_0.x, var_0.x, true)), any(var_2.e.ww)));
    var var_5 = !global1.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(global1.b.c.x, var_2.c.x)));
}

