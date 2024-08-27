struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(i32(-2147483648), 22045i, 2147483647i, i32(-2147483648), 0i, -26104i, 2147483647i, -18065i, -1i);

var<private> global1: vec2<u32>;

var<private> global2: i32 = -10679i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5) -> i32 {
    var var_0 = Struct_3(arg_1.c.b, Struct_2(Struct_1(arg_1.c.b.a.a, arg_0.c.b.a.b), -2835i, max(~u_input.d, _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(arg_1.c.b.c, u_input.d), arg_1.c.b.c)), 1i), arg_1.a.a, arg_0.c.b, vec3<bool>(arg_1.c.b.a.a, (all(vec3<bool>(arg_0.a.a, true, false)) || !arg_0.c.b.a.a) || (~arg_1.c.b.d < _wgslsmith_div_i32(arg_1.c.b.b, -9617i)), all(select(select(vec2<bool>(false, true), vec2<bool>(arg_0.c.b.a.a, true), true), vec2<bool>(true, true), true))));
    global1 = u_input.d.xy;
    global0 = array<i32, 9>();
    let var_1 = var_0.b.c.x >> (~(~(u_input.a & arg_0.c.a.x)) % 32u);
    let var_2 = Struct_4(_wgslsmith_add_vec2_u32(~var_0.d.c.zz, vec2<u32>(36719u, min(u_input.d.x, arg_0.c.a.x))) << (countOneBits(var_0.b.c.xy) % vec2<u32>(32u)), Struct_2(Struct_1(true, _wgslsmith_div_vec2_f32(vec2<f32>(1398f, arg_0.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(730f, 166f) + arg_1.c.b.a.b))), 2147483647i, vec3<u32>(~(~4294967295u), 0u, 0u), max(arg_0.c.b.b, arg_1.c.b.d)), _wgslsmith_f_op_f32(sign(arg_1.a.b.x)));
    return arg_0.c.b.d;
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(Struct_2(Struct_1(false, vec2<f32>(850f, _wgslsmith_f_op_f32(min(-1072f, 1259f)))), func_3(Struct_5(Struct_1(true, vec2<f32>(576f, -224f)), 1000f, Struct_4(u_input.d.xz, Struct_2(Struct_1(false, vec2<f32>(328f, -234f)), u_input.c, u_input.d, 81894i), 1237f)), Struct_5(Struct_1(false, vec2<f32>(672f, -950f)), _wgslsmith_f_op_f32(round(-1081f)), Struct_4(vec2<u32>(global1.x, 57291u), Struct_2(Struct_1(false, vec2<f32>(-329f, 336f)), global0[_wgslsmith_index_u32(90026u, 9u)], vec3<u32>(22792u, 45608u, u_input.b), -13741i), 240f))), ~countOneBits(vec3<u32>(global1.x, 0u, 1349u)) ^ firstLeadingBit(vec3<u32>(4294967295u, u_input.b, global1.x) << (vec3<u32>(global1.x, global1.x, global1.x) % vec3<u32>(32u))), 35703i), Struct_2(Struct_1(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(163f, 2208f), vec2<f32>(-1099f, 1723f)))), max(-u_input.c, 48000i) << (countOneBits(global1.x) % 32u), u_input.d, u_input.c), false, Struct_2(Struct_1(false, vec2<f32>(_wgslsmith_f_op_f32(978f * 907f), 848f)), u_input.c, u_input.d, firstLeadingBit(-85833i)), vec3<bool>(false, !(!all(vec4<bool>(false, false, true, false))), true || ((u_input.c >= -39855i) || all(vec3<bool>(false, false, true)))));
    let var_1 = Struct_4(u_input.d.yz, var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1285f));
    let var_2 = u_input.c;
    global0 = array<i32, 9>();
    global2 = min(_wgslsmith_mult_i32(35418i, 0i << (u_input.b % 32u)), -31932i);
    return Struct_4(vec2<u32>(0u, reverseBits(62087u)), Struct_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(204f, var_0.d.a.b.x) + var_1.b.a.b))), u_input.c, _wgslsmith_mod_vec3_u32(~var_0.b.c ^ (var_0.b.c & vec3<u32>(global1.x, u_input.d.x, 41856u)), reverseBits(~var_1.b.c)), 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.a.b.x), _wgslsmith_f_op_f32(-var_0.d.a.b.x))))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_4) -> vec2<bool> {
    global2 = -_wgslsmith_dot_vec3_i32(vec3<i32>(~(2147483647i >> (1u % 32u)), func_3(Struct_5(arg_3.b.a, arg_1.a.a.b.x, arg_0), Struct_5(arg_3.b.a, arg_3.b.a.b.x, arg_3)) >> (4294967295u % 32u), arg_2.x), vec3<i32>(-27904i, 1i, 0i));
    let var_0 = arg_3.b.a.a | arg_0.b.a.a;
    return vec2<bool>(false, arg_0.b.a.a);
}

fn func_5(arg_0: vec2<bool>) -> i32 {
    global1 = u_input.d.zy;
    global1 = vec2<u32>(u_input.d.x, _wgslsmith_add_u32(_wgslsmith_div_u32(global1.x, global1.x), 1u << (u_input.a % 32u)));
    let var_0 = Struct_4(~u_input.d.zx, Struct_2(func_2().b.a, i32(-1i) * -(u_input.c | global0[_wgslsmith_index_u32(1u, 9u)]), u_input.d, ~global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(global1.x, 69545u)), 9u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-476f))));
    return _wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(min(u_input.c, 1i), ~u_input.c), vec2<i32>(var_0.b.b, -15139i)), -1i);
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global0 = array<i32, 9>();
    global2 = func_5(func_4(func_2(), Struct_3(func_2().b, func_2().b, arg_0.a, Struct_2(func_2().b.a, -27650i, ~u_input.d, 1i), vec3<bool>(false, !arg_0.a, arg_0.a)), abs(select(~vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a, 9u)]), -vec2<i32>(-57829i, global0[_wgslsmith_index_u32(0u, 9u)]), !arg_0.a)), Struct_4(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.x, 12387u), vec2<u32>(u_input.a, global1.x), u_input.d.xx), u_input.d.xz, !arg_0.a), Struct_2(func_2().b.a, select(7398i, -846i, arg_0.a), ~u_input.d, global0[_wgslsmith_index_u32(78839u, 9u)]), _wgslsmith_f_op_f32(f32(-1f) * -347f))));
    var var_0 = func_2().a.x;
    var var_1 = u_input.d;
    global0 = array<i32, 9>();
    return arg_0;
}

fn func_6(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_5, arg_3: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(949f)), func_2().c)), _wgslsmith_f_op_f32(-1541f * 176f), -855f));
    var var_1 = !arg_2.a.a;
    let var_2 = _wgslsmith_f_op_f32(-758f - 596f);
    var var_3 = _wgslsmith_f_op_f32(arg_2.b - _wgslsmith_f_op_f32(-arg_0));
    var var_4 = !(!select(select(select(vec3<bool>(true, false, arg_2.a.a), vec3<bool>(true, false, true), true), !vec3<bool>(true, arg_2.a.a, true), arg_2.a.a), !vec3<bool>(arg_2.a.a, false, arg_2.a.a), false));
    return var_4.xy;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.d.zx;
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2474f, -1646f, 1000f, -305f), vec4<f32>(-152f, -218f, 763f, 669f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(874f))), 1592f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(143f * 341f), -294f)), -459f)))));
    let var_1 = select(select(func_6(731f, reverseBits(select(vec4<i32>(17119i, global0[_wgslsmith_index_u32(106931u, 9u)], -12668i, -71883i), vec4<i32>(-1i, global0[_wgslsmith_index_u32(u_input.b, 9u)], u_input.c, u_input.c), false)), Struct_5(func_1(Struct_1(true, var_0.xw), u_input.b), -1994f, func_2()), u_input.c), vec2<bool>(true, false), true && any(vec3<bool>(true, true, true))), vec2<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), var_0.x)) >= _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -531f)) > -2120f), !(false == func_1(func_2().b.a, max(u_input.a, global1.x)).a));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -253f);
    var var_3 = !select(!(!select(vec4<bool>(var_1.x, false, true, false), vec4<bool>(var_1.x, false, var_1.x, true), true)), vec4<bool>(false, var_1.x, any(vec3<bool>(var_1.x, var_1.x, false)), !(!var_1.x)), vec4<bool>(var_1.x, true, var_1.x, func_2().b.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(239f, 1201f) - var_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1462f, _wgslsmith_f_op_f32(f32(-1f) * -831f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -185f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, var_2)))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(global1.x, ~global1.x), _wgslsmith_div_u32(global1.x, ~0u)), ~select(u_input.d.x, ~7497u, true), u_input.b << (_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(7812u, u_input.d.x, 16425u, 68059u), vec4<u32>(0u, global1.x, u_input.d.x, u_input.b)), u_input.b) % 32u)), 9u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -408f), _wgslsmith_f_op_f32(-var_2), 1000f)));
}

