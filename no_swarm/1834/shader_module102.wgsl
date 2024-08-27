struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: Struct_1 = Struct_1(vec4<u32>(35990u, 4294967295u, 75019u, 0u), 2147483647i, vec2<u32>(4294967295u, 22886u), 13384i);

var<private> global1: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(1i, 2203i), vec2<i32>(-40141i, 17863i), vec2<i32>(-29203i, 0i), vec2<i32>(2147483647i, 32867i), vec2<i32>(19774i, -1i), vec2<i32>(0i, 0i), vec2<i32>(-1i, 70251i), vec2<i32>(1i, 0i), vec2<i32>(1i, 1i), vec2<i32>(64716i, 34066i), vec2<i32>(2147483647i, 4620i), vec2<i32>(-9594i, 20762i), vec2<i32>(-1i, 0i), vec2<i32>(48265i, -6659i), vec2<i32>(-16758i, 2147483647i), vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, 0i), vec2<i32>(2147483647i, -20793i), vec2<i32>(-1i, 16664i), vec2<i32>(-36529i, 62560i), vec2<i32>(1i, -40887i), vec2<i32>(-30810i, 45194i), vec2<i32>(-62806i, -3389i));

var<private> global2: array<Struct_1, 2>;

var<private> global3: vec3<i32> = vec3<i32>(i32(-2147483648), -15879i, 43147i);

var<private> global4: vec2<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2, 420f, false)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + _wgslsmith_div_f32(412f, _wgslsmith_f_op_f32(ceil(-781f))))));
    let var_1 = vec2<bool>(select(any(vec4<bool>(true, global3.x <= arg_1.x, any(vec2<bool>(true, true)), false)), any(vec3<bool>(true, all(vec2<bool>(false, false)), true)), false), false);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1802f, _wgslsmith_f_op_f32(1000f - arg_2), _wgslsmith_f_op_f32(-arg_2)))) * vec3<f32>(-975f, arg_2, arg_2)));
    var var_3 = global0.a;
    var var_4 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(ceil(890f)), _wgslsmith_f_op_f32(-272f - arg_2), 733f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(762f, arg_2, var_2.x) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1179f, arg_2, var_2.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -643f, var_2.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1020f, arg_2, arg_2), vec3<f32>(arg_2, -1504f, -620f), true))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, 1582f, 354f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-437f, arg_2, -910f))))))));
    return min(~global0.d, 0i);
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> vec4<f32> {
    global3 = vec3<i32>(-abs(global3.x), -20596i, ~func_3(u_input.a, reverseBits(select(vec3<i32>(global0.b, global3.x, -10028i), vec3<i32>(-1i, global3.x, global0.b), arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -469f)), Struct_1(vec4<u32>(11672u, 11607u, 4294967295u, u_input.a), global3.x, arg_1.xx, _wgslsmith_mod_i32(-2147483647i, global0.d))));
    global4 = vec2<u32>(~(~global4.x) >> (1u % 32u), u_input.a) & vec2<u32>(_wgslsmith_mod_u32(~0u, abs(global4.x)), global0.c.x);
    global0 = global2[_wgslsmith_index_u32(4294967295u, 2u)];
    global2 = array<Struct_1, 2>();
    var var_0 = Struct_1(~vec4<u32>(4294967295u, u_input.a >> (23950u % 32u), ~(~u_input.a), ~13511u | ~arg_1.x), global0.d, _wgslsmith_mod_vec2_u32(vec2<u32>(46365u, abs(global0.c.x) << (_wgslsmith_mult_u32(u_input.a, 1u) % 32u)), global0.c), global3.x);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(864f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(321f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-182f, 1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1282f, 1702f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(139f - 1440f)))), _wgslsmith_f_op_f32(max(-1906f, _wgslsmith_f_op_f32(max(-152f, _wgslsmith_f_op_f32(-658f * -539f)))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(547f, -1209f)) * _wgslsmith_div_f32(349f, 901f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(250f + 794f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(980f, -1613f, false))) * _wgslsmith_f_op_f32(1681f + -896f)), -361f, _wgslsmith_f_op_f32(-180f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(463f, -1285f)), _wgslsmith_f_op_f32(f32(-1f) * -456f))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec4<f32>) -> vec4<f32> {
    global1 = array<vec2<i32>, 23>();
    global3 = abs(vec3<i32>(-arg_2.b, 1i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(global3.x, 2147483647i), vec2<i32>(global0.d, global0.b) & global3.yz), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global0.d, 54789i), vec2<i32>(arg_2.b, global3.x)), reverseBits(vec2<i32>(global3.x, global0.b))))));
    global0 = Struct_1(_wgslsmith_sub_vec4_u32(arg_0.a, _wgslsmith_add_vec4_u32(arg_2.a, arg_0.a)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_2.b, 6617i, -2147483647i, -50492i)), -vec4<i32>(24982i, -2147483647i, 27921i, 2147483647i)) & -_wgslsmith_add_i32(global0.b, 2147483647i), ~global0.c, global3.x);
    global2 = array<Struct_1, 2>();
    let var_0 = vec4<i32>(select(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global3.x, -1i, arg_0.b) & vec3<i32>(0i, arg_0.d, arg_0.b), -vec3<i32>(43143i, -6932i, 68875i)), -_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.b, -6034i, arg_2.b), vec3<i32>(global0.b, global0.b, arg_2.b))), 0i, select(true, false, _wgslsmith_add_i32(arg_0.d, -6308i) <= arg_2.b)), global3.x, ~abs(15799i), 1i);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(arg_3.x + arg_3.x)), arg_3.x, _wgslsmith_f_op_f32(select(arg_3.x, _wgslsmith_f_op_f32(-arg_3.x), true)), _wgslsmith_f_op_f32(ceil(arg_3.x)))) - _wgslsmith_f_op_vec4_f32(func_2(false, firstLeadingBit(vec3<u32>(firstLeadingBit(1u), arg_1.x, _wgslsmith_clamp_u32(arg_1.x, arg_0.c.x, 1u))))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(Struct_1(vec4<u32>(1u, _wgslsmith_div_u32(33628u, min(1u, 1u)), _wgslsmith_mod_u32(abs(39067u), ~u_input.a), global0.c.x), -18896i << (0u % 32u), vec2<u32>(_wgslsmith_div_u32(~global4.x, u_input.a), ~reverseBits(42564u)), global0.b), ~countOneBits(firstLeadingBit(abs(global0.c))), global2[_wgslsmith_index_u32(select(~(global0.c.x ^ 59587u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(global0.a, vec4<u32>(global0.c.x, global0.a.x, global4.x, u_input.a), global0.a), global0.a), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))))), 2u)], _wgslsmith_f_op_vec4_f32(func_2(true, vec3<u32>(~(~global4.x), 56358u, u_input.a)))));
    global3 = vec3<i32>(reverseBits(global0.d), firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_clamp_i32(global3.x, ~global0.d, abs(global3.x)), firstLeadingBit(-21068i))), _wgslsmith_mod_i32(global0.b, global0.b));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global0.c.x, max(global4.x, ~(~global0.a.x))), 2u)];
    var var_2 = 789f;
    global2 = array<Struct_1, 2>();
    return Struct_1(global0.a, _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(-1i, var_1.b), ~var_1.d), _wgslsmith_div_i32(_wgslsmith_sub_i32(global3.x, firstTrailingBit(2048i)), -65927i << (~u_input.a % 32u))), global0.c, reverseBits(var_1.d));
}

fn func_5(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(max(global3.yz, global1[_wgslsmith_index_u32(4294967295u, 23u)]) >> (~arg_0.c % vec2<u32>(32u)), vec2<i32>(-2147483647i, 2147483647i) & (global1[_wgslsmith_index_u32(4267u, 23u)] << (vec2<u32>(4294967295u, arg_0.c.x) % vec2<u32>(32u)))), 2147483647i), firstLeadingBit(vec3<i32>(countOneBits(i32(-1i) * -5204i), arg_0.d, global3.x)));
    let var_1 = _wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(abs(global0.a), vec4<u32>(~0u, ~1u, global0.c.x, u_input.a)), global0.a);
    var var_2 = ~(~(~(~0u)));
    let var_3 = _wgslsmith_mult_vec3_u32(select(var_1.yyz ^ global0.a.www, _wgslsmith_sub_vec3_u32(max(arg_0.a.ywy, vec3<u32>(0u, var_1.x, 13470u) >> (var_1.wyx % vec3<u32>(32u))), vec3<u32>(global0.a.x << (var_1.x % 32u), 70234u, 0u)), vec3<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true))), true, true)), vec3<u32>(arg_0.c.x, ~_wgslsmith_div_u32(60502u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global4.x), arg_0.a.xw)), 98474u));
    var var_4 = arg_0;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-925f - _wgslsmith_f_op_f32(f32(-1f) * -170f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -616f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(37268u, _wgslsmith_sub_u32(u_input.a, global0.a.x), ~28721u);
    global4 = var_0.xy;
    var var_1 = global2[_wgslsmith_index_u32(~(~1u), 2u)];
    let var_2 = vec3<f32>(2371f, _wgslsmith_f_op_f32(func_5(func_1())), _wgslsmith_f_op_f32(219f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-794f * 1536f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(608f, -195f)) + _wgslsmith_f_op_f32(abs(686f))))));
    var var_3 = var_1.a;
    var_3 = vec4<u32>(~(~(~25931u) & _wgslsmith_add_u32(~var_0.x, global4.x)), _wgslsmith_add_u32(0u, 0u), _wgslsmith_mult_u32(var_3.x, 0u), 4294967295u);
    var_1 = Struct_1(firstTrailingBit(vec4<u32>(260u, ~abs(var_1.c.x), ~(~1u), 1u)), abs(~(-1i)), abs(~var_3.yz), global3.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

