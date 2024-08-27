struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: Struct_4,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<f32>(-265f, -505f, -117f), vec3<bool>(false, false, true), vec4<f32>(248f, 1261f, 282f, -1747f), vec2<u32>(4498u, 4294967295u));

var<private> global1: Struct_5 = Struct_5(634f, Struct_1(42944u, 1642f, vec2<i32>(i32(-2147483648), -2747i), 251f), Struct_4(vec3<f32>(-1000f, -1000f, -1000f), vec3<bool>(false, false, false), vec4<f32>(136f, -345f, 558f, 390f), vec2<u32>(4294967295u, 0u)), Struct_4(vec3<f32>(1301f, -2035f, 394f), vec3<bool>(false, true, false), vec4<f32>(570f, 1797f, 2196f, -1557f), vec2<u32>(4294967295u, 36629u)));

var<private> global2: array<bool, 1>;

var<private> global3: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(0i, 1i, 0i), vec3<i32>(43993i, -43662i, -1922i), vec3<i32>(21051i, 1i, 2147483647i), vec3<i32>(0i, 33023i, 0i), vec3<i32>(19225i, -1i, -27842i), vec3<i32>(44756i, i32(-2147483648), -1i), vec3<i32>(110323i, -40088i, -45311i), vec3<i32>(i32(-2147483648), i32(-2147483648), 24880i), vec3<i32>(2147483647i, 0i, -8332i), vec3<i32>(23648i, 6035i, i32(-2147483648)), vec3<i32>(33330i, 0i, -8037i), vec3<i32>(1i, 18380i, 0i), vec3<i32>(-9971i, i32(-2147483648), 12147i), vec3<i32>(14712i, 10316i, 1355i), vec3<i32>(-17490i, -36073i, i32(-2147483648)), vec3<i32>(2147483647i, 8236i, -1i), vec3<i32>(0i, -37722i, 47129i), vec3<i32>(-46655i, -14830i, 0i), vec3<i32>(2147483647i, 1i, -1i), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec3<i32>(-1i, -35124i, -34736i), vec3<i32>(933i, 23764i, i32(-2147483648)), vec3<i32>(-62080i, 2147483647i, 13756i), vec3<i32>(1i, 21650i, 2147483647i), vec3<i32>(2147483647i, i32(-2147483648), 22267i), vec3<i32>(-20175i, 45539i, -1i), vec3<i32>(i32(-2147483648), -45331i, -21876i), vec3<i32>(-17399i, 30811i, -13656i), vec3<i32>(i32(-2147483648), 1i, 25846i));

var<private> global4: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: i32) -> vec3<f32> {
    return global1.d.c.ywx;
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: bool, arg_3: bool) -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_3(u_input.d, Struct_4(vec3<f32>(global0.c.x, global0.a.x, global0.c.x), vec3<bool>(arg_2, global0.b.x, false), _wgslsmith_f_op_vec4_f32(global0.c - global0.c), ~global0.d), global1.b.c.x)))), !select(!select(global1.d.b, global0.b, vec3<bool>(false, true, global2[_wgslsmith_index_u32(9012u, 1u)])), select(vec3<bool>(arg_3, false, global1.d.b.x), global0.b, select(vec3<bool>(arg_0, true, global1.d.b.x), vec3<bool>(false, global0.b.x, arg_0), true)), select(57399u <= global1.b.a, 0u > global1.d.d.x, any(global1.d.b))), global1.d.c, vec2<u32>(~(global0.d.x ^ arg_1.x) & ~1u, 1u));
    var var_1 = Struct_3(!select(global1.d.b.zx, !global1.c.b.xy, all(vec2<bool>(arg_3, arg_2))), -217f, vec3<bool>(arg_3, true, !(all(vec4<bool>(arg_3, global1.c.b.x, global1.d.b.x, false)) != !var_0.b.x)), Struct_2(global1.b, global0.d, global1.b, global1.b, vec4<f32>(-387f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(global3[_wgslsmith_index_u32(19479u, 29u)], var_0, 42255i)).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -821f) * _wgslsmith_f_op_f32(sign(global0.c.x))))));
    let var_2 = vec2<i32>(~(u_input.c << (0u % 32u)), i32(-1i) * -(~1i));
    var var_3 = Struct_3(global0.b.zy, _wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(select(-1090f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b))), false))), !select(vec3<bool>(any(vec3<bool>(false, false, true)), false, false), !vec3<bool>(true, true, global2[_wgslsmith_index_u32(0u, 1u)]), all(select(vec2<bool>(var_1.c.x, arg_0), global0.b.yy, arg_2))), var_1.d);
    var var_4 = Struct_3(select(var_1.c.xx, select(!vec2<bool>(global2[_wgslsmith_index_u32(0u, 1u)], global1.d.b.x), select(select(var_0.b.zy, vec2<bool>(var_1.c.x, global1.c.b.x), arg_0), !global0.b.zx, !vec2<bool>(var_0.b.x, true)), false), global1.c.c.x <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec3_f32(func_3(u_input.d, global1.c, u_input.d.x)).x, -1256f, global0.d.x != 1u))), -122f, global1.c.b, var_3.d);
    return Struct_4(global1.d.c.zzw, select(!(!select(global0.b, var_0.b, false)), !vec3<bool>(true, var_0.b.x | false, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_1, arg_1), 1u)]), true), vec4<f32>(var_4.d.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.d.e.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a.x, global0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(516f, global0.a.x)) + 569f), 255f), ~(~var_4.d.b));
}

fn func_1(arg_0: Struct_4) -> i32 {
    let var_0 = true;
    var var_1 = func_2(!all(global0.b), ~countOneBits(firstTrailingBit(min(vec4<u32>(global0.d.x, 36110u, 17698u, 41005u), vec4<u32>(94236u, 8672u, 12421u, global1.c.d.x)))), select(global2[_wgslsmith_index_u32(global1.b.a, 1u)], global2[_wgslsmith_index_u32(~(~48702u) >> (((global1.c.d.x >> (arg_0.d.x % 32u)) << (~global0.d.x % 32u)) % 32u), 1u)], all(vec4<bool>(global0.b.x, var_0, global0.b.x, global0.c.x >= 1646f))), _wgslsmith_f_op_f32(arg_0.a.x + global0.a.x) != _wgslsmith_f_op_f32(round(global1.c.a.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-475f, -411f, 425f, -875f), arg_0.c, vec4<bool>(global1.d.b.x, global2[_wgslsmith_index_u32(56953u, 1u)], true, true)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-805f, _wgslsmith_div_f32(-763f, var_1.c.x), -1341f >= var_1.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a))))), global1.c.c.x, func_2(true, _wgslsmith_add_vec4_u32(min(vec4<u32>(0u, global1.b.a, 9797u, var_1.d.x), vec4<u32>(87907u, global1.b.a, 7979u, 1u)), vec4<u32>(arg_0.d.x, 5219u, global0.d.x, global0.d.x) << (vec4<u32>(arg_0.d.x, global1.c.d.x, 1u, global0.d.x) % vec4<u32>(32u))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.d, vec2<u32>(arg_0.d.x, 1u)), 1u)], select(!global2[_wgslsmith_index_u32(arg_0.d.x, 1u)], true, all(global4[_wgslsmith_index_u32(0u, 13u)]))).a.x));
    var var_3 = global1.b;
    var var_4 = global1.c;
    return -(-_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b.c.x, u_input.d.x), abs(vec2<i32>(global1.b.c.x, -2147483647i))) >> (~27134u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 1>();
    let var_0 = -(~_wgslsmith_div_vec2_i32(global1.b.c, ~vec2<i32>(0i, global1.b.c.x)));
    var var_1 = vec4<i32>(1i, 11758i, ~min(0i, func_1(global1.d)), _wgslsmith_mult_i32(-3566i, 1i));
    let var_2 = firstLeadingBit(0u);
    var var_3 = Struct_2(Struct_1(43527u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(floor(global1.c.c.x))), global1.b.d)), select(min(vec2<i32>(-50741i, 2147483647i) | var_0, u_input.a | global1.b.c), vec2<i32>(60989i, 0i), false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(global1.b.c.x, 17068i, var_0.x), Struct_4(vec3<f32>(-909f, global1.d.c.x, global1.c.a.x), vec3<bool>(global1.c.b.x, true, false), global0.c, vec2<u32>(var_2, 3933u)), 2147483647i)).x), _wgslsmith_f_op_f32(-832f * _wgslsmith_div_f32(global1.b.b, global0.c.x)))), ~global0.d, global1.b, global1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global0.c))) - vec4<f32>(-986f, -563f, func_2(true, reverseBits(vec4<u32>(global0.d.x, var_2, 1u, var_2)), global0.b.x, true).c.x, _wgslsmith_f_op_f32(342f * global1.d.c.x))));
    global2 = array<bool, 1>();
    var var_4 = Struct_2(var_3.c, ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_2, 1u), vec2<u32>(global1.d.d.x, 4294967295u) ^ var_3.b)), Struct_1(~select(reverseBits(25904u), 9699u, global0.b.x), -1715f, max(vec2<i32>(_wgslsmith_sub_i32(0i, var_1.x), abs(var_0.x)), max(abs(vec2<i32>(global1.b.c.x, var_0.x)), var_0 | var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(744f)))), var_3.a, global1.c.c);
    let var_5 = true;
    var var_6 = Struct_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-420f, 571f))), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(-2147483647i, u_input.c, var_0.x), func_2(global2[_wgslsmith_index_u32(var_3.a.a, 1u)], vec4<u32>(16492u, global0.d.x, 4294967295u, var_2), false, global1.c.b.x), -11179i)).x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.b.b, var_3.e.x))), var_4.c.d), vec3<bool>(any(global1.c.b) | !global0.b.x, global1.d.b.x, select(true, select(global2[_wgslsmith_index_u32(7590u, 1u)], true, global2[_wgslsmith_index_u32(var_3.a.a, 1u)]), !global2[_wgslsmith_index_u32(69367u, 1u)])))), vec3<bool>(global1.d.b.x, true, false), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c + global1.c.c), _wgslsmith_f_op_vec4_f32(step(global1.c.c, global0.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.d, var_4.e.x, -1245f, -1705f)))), global0.c)), firstLeadingBit(global1.c.d));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_sub_u32(global0.d.x, 1u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + -726f))));
}

