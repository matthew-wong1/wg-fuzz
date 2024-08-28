struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: array<vec2<f32>, 30>;

var<private> global2: vec3<u32>;

var<private> global3: array<i32, 26>;

var<private> global4: array<Struct_2, 2>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = 1i;
    global2 = vec3<u32>(_wgslsmith_sub_u32(91572u, 37385u), 0u | ~(~firstTrailingBit(u_input.b)), 1u);
    global2 = vec3<u32>(global2.x, arg_0.b.c ^ ~5516u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(abs(abs(vec3<u32>(1u, global2.x, 0u))), ~vec3<u32>(arg_0.b.c, 11505u, 4294967295u)), 61151u));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-479f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d.d.x) + _wgslsmith_f_op_f32(exp2(arg_2.d.d.x)))))) + -754f);
    var var_2 = Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(!arg_1, true, true), arg_2.d.a), -1i, u_input.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.d.d) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.b.d.x, arg_2.d.d.x, -1376f, 1951f)))) + vec4<f32>(-1378f, -265f, _wgslsmith_f_op_f32(sign(arg_2.d.d.x)), 279f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(231f, arg_0.b.d.x, _wgslsmith_f_op_f32(step(arg_0.b.d.x, arg_2.d.d.x)), _wgslsmith_f_op_f32(-2191f - -394f))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(arg_0.b.d.xxy)), _wgslsmith_div_vec3_f32(arg_0.b.d.wxx, arg_0.b.d.zxw))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> u32 {
    global0 = array<Struct_2, 27>();
    var var_0 = arg_1;
    global1 = array<vec2<f32>, 30>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -3028f)))) >= arg_3;
    global4 = array<Struct_2, 2>();
    return 3330u;
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = max(~arg_2.b, _wgslsmith_mult_vec4_i32(select(arg_2.b, vec4<i32>(0i, abs(global3[_wgslsmith_index_u32(4294967295u, 26u)]), _wgslsmith_clamp_i32(-57215i, u_input.a.x, u_input.c.x), firstLeadingBit(-1i)), func_4(vec3<f32>(-1000f, arg_2.d.d.x, arg_2.d.d.x), Struct_1(arg_2.d.a, 9643i, global2.x, vec4<f32>(462f, 229f, arg_1.x, arg_1.x)), arg_2.d.b, -960f) <= ~global2.x), ~vec4<i32>(-u_input.a.x, u_input.c.x, firstLeadingBit(global3[_wgslsmith_index_u32(0u, 26u)]), -arg_2.d.b)));
    var_0 = arg_2.b;
    let var_1 = select(vec4<bool>(all(arg_2.d.a), (1281f == arg_2.d.d.x) != !(-108434i <= var_0.x), select(arg_2.d.a.x, any(select(vec4<bool>(true, true, arg_2.d.a.x, arg_2.a.x), vec4<bool>(arg_2.d.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x), vec4<bool>(arg_2.d.a.x, arg_2.a.x, arg_2.d.a.x, arg_2.d.a.x))), all(vec3<bool>(false, arg_2.a.x, false))), !all(vec4<bool>(arg_2.a.x, true, arg_2.d.a.x, true)) && false), vec4<bool>(any(vec2<bool>(all(vec2<bool>(arg_2.d.a.x, arg_2.d.a.x)), true)), arg_2.a.x, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(global2.x, 840u)), countOneBits(vec2<u32>(4294967295u, u_input.b))) == ~0u, arg_2.a.x), select(!vec4<bool>(any(arg_2.d.a.zy), true, arg_2.a.x, true), vec4<bool>(any(arg_2.d.a), !all(vec3<bool>(arg_2.d.a.x, false, false)), arg_2.d.a.x, select(arg_1.x >= -836f, true, arg_2.a.x)), select(select(!vec4<bool>(true, true, true, arg_2.a.x), select(vec4<bool>(false, false, arg_2.a.x, arg_2.d.a.x), vec4<bool>(true, arg_2.a.x, true, false), false), vec4<bool>(true, arg_2.d.a.x, arg_2.d.a.x, arg_2.d.a.x)), vec4<bool>(true, global3[_wgslsmith_index_u32(arg_2.d.c, 26u)] > global3[_wgslsmith_index_u32(u_input.b, 26u)], false, !arg_2.d.a.x), all(!vec2<bool>(false, arg_2.a.x)))));
    var var_2 = Struct_3(select(select(var_1, select(select(var_1, vec4<bool>(false, arg_2.a.x, var_1.x, true), arg_2.a.x), vec4<bool>(false, arg_2.a.x, arg_2.d.a.x, arg_2.d.a.x), any(var_1.wy)), !var_1), select(vec4<bool>(arg_2.d.a.x, any(var_1.yyy), var_1.x, true), !var_1, var_1), true), arg_2.d, var_1.x);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-426f, arg_2.d.d.x, arg_2.d.d.x), vec3<f32>(arg_1.x, arg_2.d.d.x, -1000f)) - _wgslsmith_f_op_vec3_f32(-arg_1.zyw)))) + arg_2.d.d.yzw);
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_3) -> u32 {
    let var_0 = abs(71494u);
    global4 = array<Struct_2, 2>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(func_4(_wgslsmith_f_op_vec3_f32(func_3(arg_3, !arg_3.c, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(0u, 1u, 47919u)), 2u)])), Struct_1(vec3<bool>(arg_1, true, arg_3.b.a.x), _wgslsmith_mult_i32(-1i, u_input.a.x), arg_3.b.c << (21818u % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(331f, 280f, 200f, arg_3.b.d.x) * vec4<f32>(547f, arg_3.b.d.x, arg_3.b.d.x, 221f))), abs(global3[_wgslsmith_index_u32(reverseBits(4294967295u), 26u)]), 757f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-585f, -802f, 1247f, _wgslsmith_f_op_f32(-arg_3.b.d.x))), Struct_2(!(!arg_3.a.zw), ~vec4<i32>(1907i, 22150i, -10258i, arg_3.b.b) << ((vec4<u32>(arg_0.x, 24537u, 9649u, arg_3.b.c) << (vec4<u32>(0u, arg_3.b.c, 14333u, arg_2.x) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.a, arg_3.b))) * arg_3.b.d.xyw);
    let var_2 = _wgslsmith_mod_u32(1u, global2.x);
    var var_3 = 325f;
    return 33734u;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_add_i32(0i, 11735i);
    global1 = array<vec2<f32>, 30>();
    let var_1 = Struct_1(vec3<bool>(!any(vec4<bool>(true, true, true, true)), any(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false)), ~4294967295u > (abs(global2.x) ^ func_2(vec2<u32>(u_input.d, global2.x), false, arg_0, Struct_3(vec4<bool>(false, false, true, false), Struct_1(vec3<bool>(false, true, false), global3[_wgslsmith_index_u32(global2.x, 26u)], 1u, vec4<f32>(1957f, 1000f, -2162f, -345f)), false)))), countOneBits(_wgslsmith_dot_vec2_i32(-vec2<i32>(52436i, 12915i), vec2<i32>(arg_1.x, 1i))) ^ -u_input.e, global2.x, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(3189f, 1775f, 190f, 1706f), vec4<f32>(550f, 2059f, -211f, -1000f)))))))));
    let var_2 = vec3<u32>(u_input.b, u_input.b, 1u);
    let var_3 = global3[_wgslsmith_index_u32(u_input.b, 26u)];
    return false;
}

fn func_6(arg_0: f32, arg_1: i32, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_1(vec3<bool>(!all(!vec3<bool>(arg_2.x, arg_2.x, false)), false && arg_2.x, any(arg_2)), ~(-(~abs(-19951i))), countOneBits(u_input.b), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(429f, 909f, _wgslsmith_div_f32(arg_0, 542f), -1532f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 212f, -1722f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(893f, -1039f, 464f, arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 286f, arg_0) * vec4<f32>(arg_0, -1000f, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(101f, -1320f, arg_0, 918f)), select(vec4<bool>(true, true, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, true, true), arg_2.x))))));
    global2 = _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1080u, 1u) | vec3<u32>(global2.x, 43464u, u_input.b), vec3<u32>(u_input.d, global2.x, 1u)), ~(~vec3<u32>(global2.x, 4294967295u, 5557u)), ~(vec3<u32>(5069u, 43788u, global2.x) & vec3<u32>(5450u, 27472u, 58393u))), ~vec3<u32>(4294967295u, reverseBits(0u), _wgslsmith_mod_u32(u_input.d, var_0.c))), max(countOneBits(select(vec3<u32>(global2.x, global2.x, 1u), vec3<u32>(19033u, var_0.c, 0u), var_0.a) & vec3<u32>(global2.x, global2.x, global2.x)), _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, var_0.c, global2.x), vec3<u32>(var_0.c, 0u, u_input.d)) | vec3<u32>(~0u, 29102u, ~1u)));
    global4 = array<Struct_2, 2>();
    let var_1 = 4294967295u;
    let var_2 = (_wgslsmith_clamp_i32(-2655i, 2147483647i, ~u_input.e) | -u_input.a.x) | arg_1;
    return global4[_wgslsmith_index_u32(8629u, 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2169f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(490f, 1000f)))))), ~u_input.e, select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, select(func_1(vec3<u32>(0u, u_input.b, 7762u), u_input.a), true, true)), vec2<bool>(_wgslsmith_dot_vec2_i32(u_input.c, u_input.c) <= -global3[_wgslsmith_index_u32(25129u, 26u)], false)));
    global4 = array<Struct_2, 2>();
    let var_1 = var_0.a;
    global3 = array<i32, 26>();
    var var_2 = vec3<i32>(-firstLeadingBit(var_0.d.b), _wgslsmith_add_i32(select(abs(-1i), 1i, true), u_input.c.x) ^ (u_input.e << (~74359u % 32u)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(firstLeadingBit(u_input.a.xy), vec2<i32>(var_0.c.x, -34579i) ^ vec2<i32>(u_input.a.x, 1585i), max(vec2<i32>(u_input.c.x, u_input.e), vec2<i32>(var_0.d.b, u_input.a.x))), func_6(_wgslsmith_f_op_f32(950f * var_0.d.d.x), var_0.c.x, !var_0.d.a.yx).b.zx), u_input.e << (1u % 32u)));
    var_2 = max(~(-u_input.a), u_input.a);
    let var_3 = Struct_3(!(!(!select(vec4<bool>(false, var_0.d.a.x, var_1.x, var_0.d.a.x), vec4<bool>(false, false, var_0.a.x, false), vec4<bool>(false, var_0.d.a.x, var_1.x, true)))), var_0.d, !(!var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(49426u << (var_3.b.c % 32u), ~(~(~4294967295u))), global2.yx, var_0.d.d.x, vec4<u32>(select(10446u, firstLeadingBit(var_3.b.c >> (0u % 32u)), !all(var_0.d.a)), global2.x, reverseBits(global2.x), 31142u));
}

