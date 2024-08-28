struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: bool,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(34447i, -14991i, i32(-2147483648), 12310i), vec4<i32>(i32(-2147483648), 2147483647i, -55920i, i32(-2147483648)), vec4<i32>(-24859i, 23071i, -9134i, 14074i));

var<private> global2: f32 = 1350f;

var<private> global3: array<bool, 2>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    global3 = array<bool, 2>();
    var_0 = vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) * -185f))));
    var var_1 = 0i;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.x))));
    return arg_0;
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    var var_0 = arg_0.x;
    var var_1 = Struct_4(arg_0, arg_0.x, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~41450u, _wgslsmith_dot_vec4_u32(vec4<u32>(func_3(u_input.a), 0u, 4294967295u, ~u_input.a), vec4<u32>(0u, u_input.a, ~u_input.a, 12848u | u_input.a))), 2u)], Struct_3(countOneBits(0i), Struct_2(abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a), vec4<u32>(1u, 0u, 11432u, 30879u))), countOneBits(66893u)), vec4<bool>(true, ~u_input.a <= select(u_input.a, u_input.a, global3[_wgslsmith_index_u32(u_input.a, 2u)]), !(!global3[_wgslsmith_index_u32(u_input.a, 2u)]), global3[_wgslsmith_index_u32(~(u_input.a & 15723u), 2u)]), Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(50504u, 12777u, u_input.a, 16818u), ~vec4<u32>(u_input.a, 65135u, u_input.a, u_input.a)), ~(~u_input.a)), Struct_2(firstLeadingBit(~vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 40571u, 35031u), vec4<u32>(10988u, 0u, 4294967295u, 1u) << (vec4<u32>(u_input.a, 42354u, 13003u, u_input.a) % vec4<u32>(32u))))), Struct_2(select(vec4<u32>(~u_input.a, select(u_input.a, 1u, false), 26354u << (u_input.a % 32u), 1u), ~vec4<u32>(u_input.a, u_input.a, 4294967295u, 57141u), select(select(vec4<bool>(false, false, global3[_wgslsmith_index_u32(u_input.a, 2u)], global3[_wgslsmith_index_u32(u_input.a, 2u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 2u)], false, true), true), !vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 2u)], false, global3[_wgslsmith_index_u32(u_input.a, 2u)], global3[_wgslsmith_index_u32(0u, 2u)]), false)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a, 20190u), u_input.a), u_input.a, 1u)));
    var var_2 = ~_wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-1i, var_1.d.a, var_1.d.a), abs(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.d.a, var_1.d.a, 23906i), vec3<i32>(0i, var_1.d.a, var_1.d.a), vec3<i32>(25691i, var_1.d.a, var_1.d.a)), vec3<i32>(var_1.d.a, var_1.d.a, var_1.d.a))));
    var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a.x, var_1.a.x, var_1.b)))))))), _wgslsmith_f_op_f32(f32(-1f) * -666f), select(false, false, var_1.c) && var_1.d.c.x, var_1.d, var_1.d.b);
    let var_3 = vec3<bool>(!any(vec4<bool>(true, false && var_1.c, true, true)), var_1.d.c.x, !var_1.c);
    return var_1.d.e.b;
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: f32, arg_3: vec3<f32>) -> Struct_4 {
    let var_0 = !(!vec4<bool>(any(arg_1), true, false, true));
    global3 = array<bool, 2>();
    var var_1 = arg_3.zx;
    let var_2 = Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_div_u32(arg_0 | arg_0, u_input.a), arg_0, ~arg_0), vec4<u32>(func_2(vec3<f32>(arg_3.x, var_1.x, var_1.x)), reverseBits(abs(u_input.a)), ~(u_input.a | u_input.a), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-656f, arg_3.x, var_1.x))))), _wgslsmith_add_u32(~(1u >> (arg_0 % 32u)), ~(arg_0 ^ 39635u)) & 0u);
    global2 = _wgslsmith_f_op_f32(step(-1211f, arg_2));
    return Struct_4(arg_3, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.x))), true, Struct_3(_wgslsmith_sub_i32(~(-28249i), ~0i), Struct_2(abs(abs(var_2.a)), var_2.a.x), var_0, var_2, Struct_2(select(abs(vec4<u32>(1u, var_2.a.x, 1u, u_input.a)), var_2.a, select(vec4<bool>(var_0.x, arg_1.x, var_0.x, arg_1.x), var_0, arg_1.x)), 1u)), Struct_2(vec4<u32>(_wgslsmith_dot_vec3_u32(var_2.a.yxw, firstTrailingBit(var_2.a.yxx)), 42415u, max(4294967295u, ~38571u), firstLeadingBit(firstLeadingBit(4294967295u))), arg_0));
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> u32 {
    var var_0 = Struct_4(vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-433f, arg_1.a.x), -1281f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.b), -396f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(523f - _wgslsmith_f_op_f32(abs(-541f))) * _wgslsmith_f_op_f32(-arg_1.a.x)) - _wgslsmith_f_op_f32(min(-250f, _wgslsmith_f_op_f32(step(655f, _wgslsmith_f_op_f32(trunc(-1008f))))))), (1000f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))) | arg_1.c, arg_1.d, arg_1.e);
    var var_1 = arg_1;
    var var_2 = Struct_1(2147483647i, abs(_wgslsmith_mod_vec2_i32(abs(countOneBits(vec2<i32>(-2234i, -2147483647i))), ~vec2<i32>(-2147483647i, arg_1.d.a) | (vec2<i32>(0i, -38312i) >> (var_1.e.a.wy % vec2<u32>(32u))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(127f)) * arg_1.a.x)), -1710f, var_0.b), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, var_1.a.x, -937f, arg_1.b)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_1.b, var_1.a.x, -422f) - vec4<f32>(arg_1.a.x, var_0.b, var_0.a.x, var_1.b)))), var_0.d.c)))));
    global3 = array<bool, 2>();
    let var_3 = func_1(4294967295u, var_1.d.c.wyy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_1(~(0u << (var_0.e.b % 32u)), vec3<bool>(!(var_1.d.a > var_1.d.a), func_1(4294967295u, vec3<bool>(arg_1.d.c.x, false, true), var_2.c.x, var_2.d.wwz).b == var_0.a.x, any(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 2u)], arg_1.d.c.x, true))), var_2.c.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(arg_1.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b, 430f, 1585f), vec3<f32>(var_0.a.x, arg_1.a.x, var_1.b), vec3<bool>(arg_1.c, true, false)))))))).a).d.c.zww;
    return arg_1.d.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 3>();
    global0 = ~(~_wgslsmith_mult_u32(func_4(~1u, func_1(4294967295u, vec3<bool>(global3[_wgslsmith_index_u32(31758u, 2u)], false, false), 441f, vec3<f32>(1401f, 1007f, -1442f))), ~(~73138u)));
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1621f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1156f) - -471f), _wgslsmith_f_op_f32(-2615f + _wgslsmith_div_f32(457f, 642f)), _wgslsmith_div_f32(-288f, 672f) > func_1(u_input.a, vec3<bool>(true, global3[_wgslsmith_index_u32(1454u, 2u)], false), 136f, vec3<f32>(1325f, 108f, -2422f)).b)) - -381f)));
    var var_1 = _wgslsmith_add_vec2_i32(select(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(22381i, 24214i))) | vec2<i32>(1i, 1i), -vec2<i32>(1i, 1i), !vec2<bool>(true, !global3[_wgslsmith_index_u32(u_input.a, 2u)])), vec2<i32>(11644i, 0i));
    global1 = array<vec4<i32>, 3>();
    var var_2 = Struct_1(~(~var_1.x) >> (abs(~u_input.a ^ 26743u) % 32u), vec2<i32>(_wgslsmith_mult_i32(firstTrailingBit(1i), -40965i), func_1(23352u, vec3<bool>(true, true, all(vec4<bool>(global3[_wgslsmith_index_u32(56230u, 2u)], true, global3[_wgslsmith_index_u32(u_input.a, 2u)], true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(966f - 534f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-609f, 1537f, -1026f) * vec3<f32>(951f, 163f, -1000f)))).d.a), _wgslsmith_f_op_vec3_f32(-func_1(_wgslsmith_add_u32(u_input.a, 19616u), vec3<bool>(!global3[_wgslsmith_index_u32(23937u, 2u)], true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1519f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1154f, 1528f, 353f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(486f, -308f, 339f)), any(vec4<bool>(true, false, global3[_wgslsmith_index_u32(u_input.a, 2u)], global3[_wgslsmith_index_u32(u_input.a, 2u)]))))).a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(881f, 1821f, _wgslsmith_f_op_f32(step(-626f, _wgslsmith_f_op_f32(533f - 1242f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1119f, abs(var_2.b));
}

