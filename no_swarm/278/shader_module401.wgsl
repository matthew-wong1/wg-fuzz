struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: f32 = -1024f;

var<private> global2: array<vec4<f32>, 29>;

var<private> global3: array<bool, 13>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> vec3<i32> {
    global2 = array<vec4<f32>, 29>();
    return _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(~(-1654i), 1i, _wgslsmith_div_i32(u_input.b, -11031i))), vec3<i32>(~(-countOneBits(20841i)), 30119i, -abs(u_input.c)));
}

fn func_2() -> vec3<u32> {
    var var_0 = func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -157f)), _wgslsmith_f_op_f32(-1f)));
    let var_1 = _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~63141u, ~(~1696u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(~30730u, ~0u), vec2<u32>(1u, 1u), reverseBits(vec2<u32>(20707u, 1u)))), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(select(~vec2<u32>(1u, 57919u), ~vec2<u32>(1u, 42638u), vec2<bool>(false, global3[_wgslsmith_index_u32(55558u, 13u)])), ~vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u)));
    let var_2 = Struct_3(max(var_1.x, _wgslsmith_clamp_u32(var_1.x, ~107514u ^ ~var_1.x, countOneBits(~8825u))), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(firstTrailingBit(countOneBits(var_1)), var_1), vec2<u32>(var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-850f, _wgslsmith_f_op_f32(min(575f, 1095f)), _wgslsmith_f_op_f32(ceil(918f)))), vec3<f32>(1445f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(631f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1830f)) - 1546f)), vec3<bool>(true, true, false))), Struct_1(any(!vec3<bool>(global3[_wgslsmith_index_u32(0u, 13u)], true, true)), !global3[_wgslsmith_index_u32(var_1.x, 13u)], false));
    var var_3 = -firstLeadingBit(_wgslsmith_dot_vec4_i32(min(min(vec4<i32>(u_input.a.x, 8398i, -56816i, var_0.x), vec4<i32>(u_input.c, u_input.c, -39131i, -8439i)), vec4<i32>(1i, 2147483647i, -44269i, 2147483647i)), -(vec4<i32>(2147483647i, 0i, -2147483647i, u_input.b) ^ vec4<i32>(-1i, 2147483647i, 0i, -16095i))));
    let var_4 = Struct_2(abs(vec3<i32>(0i, -2147483647i, ~(-57340i))), ~firstTrailingBit(abs(reverseBits(vec3<u32>(var_2.a, 4294967295u, var_2.b.x)))), Struct_1(all(!vec3<bool>(false, var_2.d.b, false)) || false, true, any(vec3<bool>(var_2.d.c, false, true))));
    return _wgslsmith_div_vec3_u32(abs(abs(vec3<u32>(~var_4.b.x, var_4.b.x & var_4.b.x, _wgslsmith_clamp_u32(47314u, var_4.b.x, var_4.b.x)))), _wgslsmith_div_vec3_u32(select(vec3<u32>(0u, 43860u, 1u), vec3<u32>(var_1.x, var_1.x, ~50574u), any(vec4<bool>(global3[_wgslsmith_index_u32(var_2.b.x, 13u)], var_2.d.c, var_4.c.c, false))), var_4.b));
}

fn func_4(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-487f, -1252f, _wgslsmith_f_op_f32(abs(-543f)), _wgslsmith_f_op_f32(sign(-536f)))) - global2[_wgslsmith_index_u32(abs(arg_0.b.x), 29u)]));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 719f)), 193f, _wgslsmith_f_op_f32(var_0.x * 523f), 957f))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(arg_0.b.x, 29u)]) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(arg_0.b.x, 29u)] * global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.b.x & arg_0.b.x, 70840u), 29u)]), global2[_wgslsmith_index_u32(0u, 29u)])));
    let var_1 = select(vec3<bool>(2147483647i < func_3(var_0.x).x, !all(vec3<bool>(global3[_wgslsmith_index_u32(36981u, 13u)], false, true)), !any(!vec2<bool>(arg_0.c.c, false))), select(!(!select(vec3<bool>(global3[_wgslsmith_index_u32(arg_0.b.x, 13u)], arg_0.c.c, arg_0.c.b), vec3<bool>(true, false, true), true)), select(!(!vec3<bool>(arg_0.c.a, global3[_wgslsmith_index_u32(arg_0.b.x, 13u)], arg_0.c.a)), select(vec3<bool>(true, arg_0.c.c, true), vec3<bool>(false, true, global3[_wgslsmith_index_u32(1u, 13u)]), !vec3<bool>(global3[_wgslsmith_index_u32(arg_0.b.x, 13u)], global3[_wgslsmith_index_u32(arg_0.b.x, 13u)], global3[_wgslsmith_index_u32(91837u, 13u)])), true), global3[_wgslsmith_index_u32(countOneBits(firstLeadingBit(0u)), 13u)]), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, arg_0.c.b, global3[_wgslsmith_index_u32(arg_0.b.x, 13u)]), !vec3<bool>(false, arg_0.c.c, arg_0.c.a)), !vec3<bool>(false, false, arg_0.c.a), vec3<bool>(!arg_0.c.a, true, select(false, false, global3[_wgslsmith_index_u32(arg_0.b.x, 13u)]))), vec3<bool>(all(!vec4<bool>(true, true, true, arg_0.c.c)), !any(vec4<bool>(true, global3[_wgslsmith_index_u32(arg_0.b.x, 13u)], global3[_wgslsmith_index_u32(0u, 13u)], arg_0.c.c)), true), var_0.x >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -441f), _wgslsmith_f_op_f32(sign(-2065f)), false))));
    var var_2 = firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(-1i), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a.x, u_input.b, arg_0.a.x, 4345i), vec4<i32>(u_input.c, -1i, -52261i, arg_0.a.x)), vec4<i32>(u_input.b, u_input.a.x, u_input.c, 27363i) ^ vec4<i32>(49396i, arg_0.a.x, 1i, u_input.b))), -((i32(-1i) * -2147483647i) & arg_0.a.x), ~2147483647i << (arg_0.b.x % 32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(sign(-1199f))), _wgslsmith_f_op_f32(var_0.x - var_0.x))) + var_0.x) * _wgslsmith_div_f32(1000f, 1854f));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 1000f) * -300f))), _wgslsmith_f_op_f32(func_4(Struct_2(select(max(vec3<i32>(arg_0, u_input.b, -62097i), vec3<i32>(arg_0, u_input.a.x, arg_0)), arg_2.a, vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 13u)], arg_2.c.a, arg_2.c.b)), ~func_2(), arg_2.c))), !(!(!global3[_wgslsmith_index_u32(arg_2.b.x, 13u)] == !arg_1))));
    global0 = abs(arg_2.a.x);
    let var_0 = Struct_1(true, any(select(select(!vec2<bool>(global3[_wgslsmith_index_u32(0u, 13u)], arg_1), select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, global3[_wgslsmith_index_u32(arg_2.b.x, 13u)]), true), false == global3[_wgslsmith_index_u32(arg_2.b.x, 13u)]), vec2<bool>(!arg_2.c.b, true), all(vec2<bool>(false, arg_1)))), any(vec3<bool>(_wgslsmith_f_op_f32(ceil(-118f)) >= -1904f, arg_2.c.c, arg_1)));
    var var_1 = _wgslsmith_div_u32(~arg_2.b.x, 86899u);
    let var_2 = 54969u;
    return Struct_1(!(!(_wgslsmith_f_op_f32(step(-568f, -1188f)) != _wgslsmith_f_op_f32(-862f * -984f))), arg_1, false);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_2) -> u32 {
    var var_0 = 1458u;
    let var_1 = arg_0;
    let var_2 = Struct_1(false, all(select(vec4<bool>(arg_1.b, select(arg_1.c, arg_1.c, global3[_wgslsmith_index_u32(arg_3.b.x, 13u)]), any(vec4<bool>(arg_1.b, arg_0.b, false, false)), func_1(arg_3.a.x, arg_1.b, Struct_2(vec3<i32>(arg_2.x, u_input.b, arg_2.x), arg_3.b, arg_0)).c), select(vec4<bool>(false, var_1.c, true, arg_1.c), select(vec4<bool>(arg_3.c.c, arg_3.c.b, arg_1.b, false), vec4<bool>(global3[_wgslsmith_index_u32(arg_3.b.x, 13u)], var_1.c, var_1.b, arg_3.c.b), vec4<bool>(true, false, false, false)), true), vec4<bool>(true, arg_3.c.a, arg_3.c.b, true))), true);
    global3 = array<bool, 13>();
    let var_3 = abs(58799u) << (~(~(~33599u ^ arg_3.b.x)) % 32u);
    return abs(firstLeadingBit(1u)) << (var_3 % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 29>();
    global3 = array<bool, 13>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-310f, 712f, false)))))));
    global3 = array<bool, 13>();
    global2 = array<vec4<f32>, 29>();
    let var_0 = _wgslsmith_add_u32(~countOneBits(11461u), _wgslsmith_mult_u32(abs(4294967295u), 0u));
    global2 = array<vec4<f32>, 29>();
    global0 = u_input.c >> (~func_5(func_1(43702i, false, Struct_2(vec3<i32>(2147483647i, 1i, u_input.b), vec3<u32>(24340u, 52599u, 1u), Struct_1(false, false, global3[_wgslsmith_index_u32(77921u, 13u)]))), func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.b, -2147483647i), vec4<i32>(u_input.c, -43831i, u_input.c, 5393i)), true, Struct_2(vec3<i32>(u_input.b, -1i, u_input.c), vec3<u32>(1u, var_0, var_0), Struct_1(global3[_wgslsmith_index_u32(4982u, 13u)], global3[_wgslsmith_index_u32(22851u, 13u)], global3[_wgslsmith_index_u32(15356u, 13u)]))), vec2<i32>(-1i, -1i) ^ firstLeadingBit(u_input.a), Struct_2(vec3<i32>(48195i, -1i, 19060i) | vec3<i32>(u_input.b, u_input.b, u_input.c), vec3<u32>(4294967295u, var_0, var_0), Struct_1(false, true, global3[_wgslsmith_index_u32(var_0, 13u)]))) % 32u);
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(min(var_0, 1u) ^ 0u, var_0) >> (~(~_wgslsmith_div_vec2_u32(vec2<u32>(var_0, 34179u), vec2<u32>(var_0, var_0))) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(~_wgslsmith_clamp_vec2_u32(select(vec2<u32>(1u, var_0), vec2<u32>(0u, 4294967295u), vec2<bool>(global3[_wgslsmith_index_u32(var_0, 13u)], false)), abs(vec2<u32>(var_0, 64012u)), vec2<u32>(0u, 73699u)), abs(vec2<u32>(countOneBits(var_0), _wgslsmith_clamp_u32(var_0, 11464u, 55605u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2362f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -411f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(409f - 1347f) * _wgslsmith_div_f32(-3597f, -217f)) - _wgslsmith_f_op_f32(-697f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(678f * 658f) + -1481f))), vec3<u32>(var_1.x, _wgslsmith_mult_u32(var_0, 102937u), abs(var_1.x)));
}

