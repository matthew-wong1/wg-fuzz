struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: Struct_4,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(291f, 2022f, -2529f), vec3<f32>(-1829f, -467f, 1000f), vec3<f32>(-911f, -911f, 2140f), vec3<f32>(-1772f, 1657f, 142f), vec3<f32>(739f, -814f, -1000f), vec3<f32>(764f, 2256f, 452f), vec3<f32>(-678f, 1902f, -1159f), vec3<f32>(2307f, 651f, -401f), vec3<f32>(1263f, -1155f, -683f), vec3<f32>(-309f, 332f, -680f), vec3<f32>(-646f, 762f, 869f), vec3<f32>(-1336f, -1000f, 2132f), vec3<f32>(243f, 1000f, 1295f), vec3<f32>(-1554f, -1247f, 597f), vec3<f32>(1540f, -249f, -938f), vec3<f32>(643f, -305f, 635f), vec3<f32>(1271f, -144f, -625f), vec3<f32>(235f, 1457f, 420f));

var<private> global1: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(-691f, vec3<bool>(false, true, false)), Struct_3(805f, vec3<bool>(false, true, true)), Struct_3(-1299f, vec3<bool>(false, true, true)), Struct_3(416f, vec3<bool>(false, true, false)), Struct_3(833f, vec3<bool>(false, false, false)), Struct_3(-1013f, vec3<bool>(true, false, false)), Struct_3(-203f, vec3<bool>(false, true, true)), Struct_3(-3040f, vec3<bool>(true, false, true)), Struct_3(-146f, vec3<bool>(true, true, true)), Struct_3(441f, vec3<bool>(false, true, true)), Struct_3(-2294f, vec3<bool>(true, false, false)), Struct_3(514f, vec3<bool>(false, true, true)), Struct_3(1178f, vec3<bool>(false, false, false)), Struct_3(-755f, vec3<bool>(false, true, false)), Struct_3(1000f, vec3<bool>(true, true, false)), Struct_3(-272f, vec3<bool>(false, false, true)));

var<private> global2: i32;

var<private> global3: u32 = 1u;

var<private> global4: Struct_1 = Struct_1(vec2<f32>(1529f, 727f), -864f, 81264u, vec4<f32>(911f, 963f, 626f, 755f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: vec2<bool>, arg_3: f32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1726f, arg_1.c.e.a, 291f, -999f), global4.d) + global4.d), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_1.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_3, arg_1.c.c.a.a.x, global4.d.x))), !vec4<bool>(false, false, false, arg_1.c.e.b.x))) + global4.d));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.x >> (~28865u % 32u), ~global4.c), 16u)];
    global2 = _wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c.d, u_input.a), vec2<i32>(-46737i, -2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(9332i, arg_1.c.d), vec2<i32>(1i, u_input.b))), ~_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, arg_1.c.d), vec2<i32>(0i, 25902i), vec2<i32>(arg_1.c.d, -2381i)), abs(vec2<i32>(-2147483647i, u_input.a)), vec2<i32>(arg_1.c.d, 4810i))) | max(u_input.a, 1i & min(u_input.a, firstTrailingBit(-1i)));
    let var_2 = !select(select(!select(vec4<bool>(true, true, arg_2.x, true), vec4<bool>(true, false, false, true), vec4<bool>(arg_1.c.a.b.x, true, true, var_1.b.x)), vec4<bool>(global4.c > 11614u, arg_2.x, true, !arg_1.c.a.b.x), !(!vec4<bool>(arg_1.c.a.b.x, true, arg_2.x, false))), !vec4<bool>(true, !var_1.b.x, !arg_1.c.a.b.x, true), !all(vec3<bool>(true, arg_2.x, var_1.b.x)));
    var var_3 = false;
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.x * global4.d.x), _wgslsmith_f_op_f32(sign(-563f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_0.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.xw, _wgslsmith_f_op_vec2_f32(arg_1.d.zy * global4.a))) + _wgslsmith_f_op_vec2_f32(-var_0.zw)))));
}

fn func_2() -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(0u, 16u)];
    let var_1 = Struct_4(Struct_3(var_0.a, !var_0.b), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec3<u32>(global4.c, global4.c, 11633u), Struct_5(vec2<u32>(global4.c, global4.c), vec3<f32>(656f, global4.a.x, 1000f), Struct_4(Struct_3(623f, vec3<bool>(var_0.b.x, var_0.b.x, true)), Struct_2(Struct_1(vec2<f32>(121f, 1053f), global4.a.x, 1u, vec4<f32>(var_0.a, global4.b, var_0.a, global4.d.x))), Struct_2(Struct_1(global4.d.xx, -384f, global4.c, vec4<f32>(-1000f, 2066f, var_0.a, 1000f))), 1i, global1[_wgslsmith_index_u32(17114u, 16u)]), vec4<f32>(-375f, 1594f, var_0.a, 278f), vec4<f32>(-1936f, -340f, global4.d.x, -1000f)), vec2<bool>(false, false), var_0.a))), 183f, abs(_wgslsmith_mult_u32(global4.c, global4.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global4.d, vec4<f32>(961f, global4.d.x, global4.d.x, 538f)))))), Struct_2(Struct_1(global4.d.yy, _wgslsmith_f_op_f32(1f * -724f), ~(~global4.c), vec4<f32>(_wgslsmith_div_f32(global4.a.x, -1000f), _wgslsmith_f_op_f32(var_0.a - global4.b), global4.b, _wgslsmith_f_op_f32(var_0.a + var_0.a)))), u_input.a & max(-81664i, abs(countOneBits(-37058i))), global1[_wgslsmith_index_u32(firstTrailingBit(0u), 16u)]);
    var var_2 = var_1;
    var_2 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-var_2.e.a), !var_1.e.b), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(351f, var_1.b.a.a.x), vec2<f32>(-954f, var_2.b.a.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(133f * 177f), -1687f), abs(~var_1.c.a.c), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.e.a, global4.d.x, var_1.b.a.d.x, -466f))))), var_2.c, ~var_1.d, var_1.e);
    let var_3 = var_2.c.a;
    return var_1.b.a.c;
}

fn func_1(arg_0: u32) -> vec2<f32> {
    global3 = global4.c;
    var var_0 = ~(~func_2());
    var var_1 = ~arg_0;
    var var_2 = ~94372u;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(global4.a)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.b, -359f)))), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-242f, 1619f, true)))), 1136f)), 4294967295u, global4.d));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(var_3.a.a, vec2<f32>(960f, 1321f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(149f, global4.b)))))))));
}

fn func_4(arg_0: Struct_2) -> Struct_5 {
    global0 = array<vec3<f32>, 18>();
    var var_0 = arg_0.a.d;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(4294967295u)).x)), !vec3<bool>(any(vec2<bool>(true, true)), true, true));
    let var_2 = _wgslsmith_div_f32(arg_0.a.a.x, _wgslsmith_f_op_f32(-global4.b));
    var var_3 = firstLeadingBit(firstLeadingBit(min(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(arg_0.a.c, arg_0.a.c)), vec2<u32>(global4.c, 30238u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.a.c, 26410u), vec2<u32>(0u, 47891u)) & ~vec2<u32>(14828u, 69348u))));
    return Struct_5(_wgslsmith_sub_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, var_3.x), vec2<u32>(arg_0.a.c, 1u)), _wgslsmith_sub_u32(23852u, arg_0.a.c | 4294967295u)), vec2<u32>(_wgslsmith_mult_u32(firstLeadingBit(var_3.x), ~global4.c), var_3.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -1857f, -949f)))), Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4.c, 0u), 16u)], arg_0, Struct_2(arg_0.a), u_input.a, Struct_3(_wgslsmith_f_op_f32(select(-1322f, 1f, true)), vec3<bool>(!var_1.b.x, all(vec3<bool>(false, var_1.b.x, true)), 403f <= global4.a.x))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2 * arg_0.a.a.x), 1174f, true)))), _wgslsmith_f_op_f32(ceil(var_2)), global4.a.x, var_1.a), arg_0.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(func_1(reverseBits(global4.c))), 295f, global4.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global4.d)))));
    global3 = var_0.c.b.a.c;
    global2 = func_4(func_4(func_4(var_0.c.b).c.c).c.b).c.d;
    var_0 = Struct_5(_wgslsmith_sub_vec2_u32(~var_0.a | ~var_0.a, _wgslsmith_sub_vec2_u32(vec2<u32>(12011u, var_0.a.x) | vec2<u32>(58230u, global4.c), ~vec2<u32>(global4.c, 45986u) << (_wgslsmith_sub_vec2_u32(vec2<u32>(global4.c, global4.c), var_0.a) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-var_0.d.zxx), func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a.x, -476f)), var_0.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, var_0.c.b.a.c), vec4<u32>(var_0.a.x, 4585u, var_0.c.b.a.c, 0u)), vec4<f32>(var_0.c.e.a, global4.b, -465f, var_0.e.x)))).c, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.c.b.a.d, var_0.c.b.a.d) + var_0.d) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.d * global4.d) * vec4<f32>(global4.b, -640f, 1023f, -315f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.e)))), var_0.e);
    let var_1 = vec2<u32>(~var_0.a.x, _wgslsmith_div_u32(0u, global4.c));
    global2 = ~(~u_input.b);
    global0 = array<vec3<f32>, 18>();
    global1 = array<Struct_3, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~0u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_1.x, 0u), abs(47867u ^ global4.c))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.d.x, _wgslsmith_f_op_vec2_f32(func_1(4294967295u)).x) * _wgslsmith_f_op_vec2_f32(var_0.d.yy * vec2<f32>(_wgslsmith_f_op_f32(global4.a.x * var_0.c.b.a.b), var_0.c.b.a.b))));
}

