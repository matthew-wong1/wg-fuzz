struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 3> = array<Struct_5, 3>(Struct_5(Struct_4(Struct_2(-512f), 208f, 24727u), -1034f, Struct_3(Struct_2(919f), Struct_1(15284u, vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), -25063i)), Struct_1(558u, vec4<i32>(-1i, 1i, 21698i, 15498i)), vec4<i32>(-50793i, -14749i, 48777i, -28743i), true)), Struct_5(Struct_4(Struct_2(1000f), -737f, 79601u), 1411f, Struct_3(Struct_2(674f), Struct_1(53939u, vec4<i32>(22202i, 29865i, 44361i, 2147483647i)), Struct_1(52003u, vec4<i32>(0i, 36589i, 0i, 0i)), vec4<i32>(13791i, i32(-2147483648), -1i, -28320i), true)), Struct_5(Struct_4(Struct_2(999f), -1864f, 64621u), -822f, Struct_3(Struct_2(937f), Struct_1(28201u, vec4<i32>(-3981i, -44006i, 3879i, 15750i)), Struct_1(39979u, vec4<i32>(5888i, 1i, -58896i, 0i)), vec4<i32>(-1i, 19097i, 2460i, 69061i), true)));

var<private> global1: vec4<f32> = vec4<f32>(-572f, 2683f, 877f, 560f);

var<private> global2: vec2<i32> = vec2<i32>(8344i, 92862i);

var<private> global3: u32 = 0u;

var<private> global4: array<u32, 11> = array<u32, 11>(0u, 1u, 319u, 0u, 16256u, 7804u, 1u, 1u, 1u, 25246u, 0u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: Struct_5) -> u32 {
    var var_0 = global1.x;
    let var_1 = !select(vec3<bool>(all(!vec4<bool>(arg_2.c.e, true, arg_2.c.e, arg_2.c.e)), _wgslsmith_mult_i32(u_input.c.x, arg_2.c.d.x) < u_input.a.x, true), select(vec3<bool>(arg_1.x > global2.x, arg_2.c.e, any(vec2<bool>(false, arg_2.c.e))), !select(vec3<bool>(arg_2.c.e, false, arg_2.c.e), vec3<bool>(arg_2.c.e, true, false), vec3<bool>(arg_2.c.e, arg_2.c.e, true)), vec3<bool>(arg_2.a.c >= arg_2.c.b.a, !arg_2.c.e, false)), !(!all(vec2<bool>(true, arg_2.c.e))));
    var var_2 = !(arg_2.b == _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-941f, _wgslsmith_f_op_f32(arg_2.a.b * arg_2.b)), 504f)));
    let var_3 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(~min(vec2<u32>(u_input.d, 67185u), vec2<u32>(arg_2.a.c, u_input.d)), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.d, global4[_wgslsmith_index_u32(u_input.d, 11u)])), vec2<u32>(84019u, global4[_wgslsmith_index_u32(arg_2.c.c.a, 11u)]))), u_input.d);
    let var_4 = global2.x;
    return 26190u;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = global2.x;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(global1.x + global1.x))), _wgslsmith_f_op_f32(ceil(global1.x)), global1.x);
    var var_2 = global2.x;
    global3 = _wgslsmith_div_u32(~(func_3(vec4<f32>(global1.x, var_1.x, -1374f, global1.x), vec3<i32>(arg_1.b.x, 618i, -1i), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global4[_wgslsmith_index_u32(361u, 11u)], global4[_wgslsmith_index_u32(125913u, 11u)]), 3u)]) | _wgslsmith_div_u32(85604u, _wgslsmith_mod_u32(global4[_wgslsmith_index_u32(12491u, 11u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(62085u, 11u)], 11u)]))), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~min(~41006u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u)), 13588u), 11u)]);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1135f * 1085f))) * global1.x)));
    return firstTrailingBit(func_3(_wgslsmith_div_vec4_f32(vec4<f32>(-407f, var_1.x, _wgslsmith_f_op_f32(ceil(-1357f)), -778f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 910f, global1.x, -258f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(2626f, 928f, global1.x, 1000f))))), u_input.c.yyz, Struct_5(Struct_4(Struct_2(global1.x), 491f, ~6782u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-435f, 103f)), _wgslsmith_f_op_f32(sign(444f))), Struct_3(Struct_2(3168f), arg_1, arg_1, arg_1.b, true))));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_5, arg_3: vec4<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.a.a), arg_2.a.a.a, _wgslsmith_f_op_f32(sign(arg_2.b)), _wgslsmith_f_op_f32(f32(-1f) * -426f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(441f, global1.x, -1472f, arg_2.c.a.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1632f, arg_2.a.b, -597f, arg_2.a.a.a))))), vec4<f32>(-362f, 553f, -602f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1434f - 463f))), arg_2.c.e)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-103f, 965f, -640f, arg_2.b))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-621f, 826f, 541f, arg_2.b))))));
    var var_1 = arg_0 <= arg_0;
    let var_2 = true;
    var var_3 = arg_2;
    let var_4 = 600f;
    return Struct_4(Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_4 * _wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(abs(var_0.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1037f)))), arg_2.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1340f, arg_2.c.a.a, false)), _wgslsmith_f_op_f32(-367f * var_3.c.a.a))) == -266f)), _wgslsmith_div_u32(func_2(vec3<bool>(true, true, true), Struct_1(_wgslsmith_clamp_u32(arg_2.a.c, global4[_wgslsmith_index_u32(var_3.c.c.a, 11u)], 52341u), min(vec4<i32>(2147483647i, var_3.c.c.b.x, arg_2.c.b.b.x, -46660i), var_3.c.c.b))), 27057u));
}

fn func_1(arg_0: vec3<f32>) -> vec4<f32> {
    var var_0 = func_4(~(~global4[_wgslsmith_index_u32(func_2(vec3<bool>(false, true, true), Struct_1(47021u, vec4<i32>(-12131i, -1i, 25038i, u_input.b))), 11u)]), ~(-global2.x & 21720i) <= min(~_wgslsmith_sub_i32(global2.x, -58655i), -1i), Struct_5(Struct_4(Struct_2(-1000f), -896f, ~118871u), arg_0.x, Struct_3(Struct_2(arg_0.x), Struct_1(u_input.d, u_input.c), Struct_1(countOneBits(u_input.d), ~u_input.c), ~_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(-31937i, u_input.a.x, -2147483647i, u_input.a.x)), true)), select(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)), true), vec4<bool>(true && all(vec4<bool>(false, true, false, false)), true, all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true))), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))), vec4<bool>(1u <= _wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(u_input.d, 11u)], u_input.d, u_input.d), vec3<u32>(39871u, global4[_wgslsmith_index_u32(4294967295u, 11u)], global4[_wgslsmith_index_u32(5477u, 11u)])), !(710f <= arg_0.x), !(7693u > global4[_wgslsmith_index_u32(u_input.d, 11u)]), false)));
    global2 = u_input.a;
    var var_1 = vec2<bool>(!select(true, -1i > _wgslsmith_div_i32(global2.x, u_input.b), true), true);
    var_1 = vec2<bool>(true, any(vec3<bool>(var_1.x, true, var_1.x)));
    global0 = array<Struct_5, 3>();
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.a, arg_0.x, var_0.b, arg_0.x))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.a, global1.x, global1.x, 1515f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.x, arg_0.x, -1000f, arg_0.x), vec4<f32>(-560f, -859f, 922f, var_0.a.a))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 13844u;
    var var_1 = ~(~(~firstTrailingBit(0u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec3_f32(global1.yyz + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(320f, -512f, global1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1937f, global1.x, global1.x)) * global1.zww), vec3<bool>(true, true, true))))));
    var_0 = _wgslsmith_div_u32(1u, _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.d | u_input.d, 4294967295u << (u_input.d % 32u)), ~27226u) >> (_wgslsmith_sub_u32(17038u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(8415u, 11u)], 11u)]) % 32u));
    var var_3 = select(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, false))), !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), false)), vec2<bool>(false, true));
    var var_4 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -733f), _wgslsmith_f_op_f32(-1f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_div_vec3_f32(var_2.www, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1672f, -357f, global1.x) * var_2.zzw)))))).wxz);
}

