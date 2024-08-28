struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
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

var<private> global0: array<bool, 8>;

var<private> global1: u32;

var<private> global2: array<Struct_2, 28>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = abs(-_wgslsmith_add_i32(-arg_1.c.x, min(-2147483647i, 2147483647i))) & -10539i;
    global1 = ~(~min(0u, arg_2.d.x)) << (_wgslsmith_sub_u32(_wgslsmith_sub_u32((arg_0 << (52891u % 32u)) << (~1u % 32u), abs(34179u) << (_wgslsmith_sub_u32(arg_1.d.x, u_input.d.x) % 32u)), abs(firstLeadingBit(arg_2.d.x))) % 32u);
    let var_1 = Struct_3(23211u, vec2<u32>(_wgslsmith_add_u32(26007u, arg_2.d.x), arg_2.d.x), Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.e - arg_1.e), _wgslsmith_f_op_f32(min(arg_2.e, -1223f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.e), _wgslsmith_f_op_f32(f32(-1f) * -1579f)))), arg_2.b.xy, Struct_1(var_0, !arg_1.b, arg_2.c, ~u_input.d.yyz << (vec3<u32>(0u, arg_1.d.x, u_input.d.x) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.e + arg_2.e) * _wgslsmith_f_op_f32(-arg_2.e))), !vec4<bool>(arg_2.d.x < 0u, false, true, all(vec3<bool>(true, arg_1.b.x, false))), arg_2), Struct_1(_wgslsmith_add_i32(countOneBits(abs(2147483647i)), min(-1i, -u_input.b)), select(vec4<bool>(arg_2.b.x & arg_1.b.x, select(false, false, false), !global0[_wgslsmith_index_u32(4294967295u, 8u)], any(arg_2.b)), select(vec4<bool>(arg_2.b.x, true, false, false), select(vec4<bool>(false, arg_2.b.x, false, true), arg_1.b, arg_2.b.x), select(arg_2.b, arg_1.b, arg_1.b)), _wgslsmith_f_op_f32(arg_1.e + arg_2.e) != 615f), _wgslsmith_sub_vec4_i32(-vec4<i32>(var_0, 27064i, -2147483647i, u_input.c.x), -vec4<i32>(arg_2.a, var_0, 56046i, arg_2.c.x)) | vec4<i32>(countOneBits(arg_2.a), abs(4841i), i32(-1i) * -26834i, var_0), vec3<u32>(1815u, ~(~u_input.e), u_input.d.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1459f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(1066f, arg_2.e, -2197f), vec3<f32>(437f, 812f, 1000f)))))) * vec3<f32>(851f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.e)))), arg_1.e));
    var var_3 = arg_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.e.e));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4) -> i32 {
    global1 = _wgslsmith_div_u32(_wgslsmith_mod_u32(~19457u, max(u_input.e, 51963u)), _wgslsmith_sub_u32(arg_1.d.x, ~arg_1.d.x));
    let var_0 = -select(firstLeadingBit(countOneBits(vec4<i32>(-1i, u_input.c.x, 2147483647i, arg_1.c))), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.c, arg_1.c), vec2<i32>(u_input.c.x, u_input.b)), u_input.c.xy), _wgslsmith_div_i32(-arg_1.c, _wgslsmith_div_i32(-21295i, -2147483647i)), countOneBits(4805i), _wgslsmith_clamp_i32(-u_input.b, arg_1.c, -40168i)), false);
    return ~(-var_0.x);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(~func_4(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)] & global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(abs(u_input.a.x), 8u)]), Struct_4(_wgslsmith_f_op_f32(-1000f + -295f), vec2<f32>(430f, 915f), abs(u_input.c.x), ~u_input.d.zy, _wgslsmith_f_op_f32(func_3(u_input.d.x, Struct_1(-1i, vec4<bool>(global0[_wgslsmith_index_u32(7093u, 8u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], true), vec4<i32>(u_input.c.x, 214i, 2147483647i, -7961i), u_input.d.zww, 1000f), Struct_1(u_input.c.x, vec4<bool>(true, true, false, false), vec4<i32>(-1i, u_input.b, 2147483647i, u_input.b), vec3<u32>(u_input.d.x, 0u, 4294967295u), -913f))))), !vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~36648u, firstLeadingBit(u_input.a.x)), 8u)], !global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(16637u, 0u), 8u)] & true, global0[_wgslsmith_index_u32(firstTrailingBit(1u), 8u)]), firstLeadingBit(min(-(~vec4<i32>(u_input.c.x, 35980i, u_input.b, u_input.c.x)), select(vec4<i32>(u_input.b, u_input.c.x, u_input.b, 48488i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-40866i, 0i, u_input.c.x, u_input.c.x), vec4<i32>(53899i, 10128i, u_input.b, u_input.c.x), vec4<i32>(6388i, u_input.b, 17042i, 7815i)), !global0[_wgslsmith_index_u32(u_input.a.x, 8u)]))), vec3<u32>(u_input.d.x, _wgslsmith_mult_u32(~u_input.e, 25301u) << (u_input.d.x % 32u), u_input.e), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-264f + -1464f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global0 = array<bool, 8>();
    global1 = var_0.d.x << (u_input.e % 32u);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.e, var_0.e, 1427f))) * vec3<f32>(-243f, _wgslsmith_f_op_f32(abs(1211f)), -912f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e, var_0.e, -320f) - vec3<f32>(var_0.e, var_0.e, -991f)))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-368f, -1424f, -1356f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(669f, var_0.e, -860f)), !vec3<bool>(global0[_wgslsmith_index_u32(27429u, 8u)], var_0.b.x, global0[_wgslsmith_index_u32(44523u, 8u)]))), vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.e)), _wgslsmith_f_op_f32(492f * var_0.e), 441f))));
    global2 = array<Struct_2, 28>();
    return Struct_3(_wgslsmith_div_u32(var_0.d.x, ~(~u_input.a.x)), u_input.a, Struct_2(_wgslsmith_f_op_f32(sign(var_0.e)), !var_0.b.wz, Struct_1(-(i32(-1i) * -2147483647i), vec4<bool>(global0[_wgslsmith_index_u32(~u_input.d.x, 8u)], true, true, !var_0.b.x), var_0.c, ~vec3<u32>(0u, u_input.e, u_input.d.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1095f, 1000f) + 1f)), vec4<bool>(global0[_wgslsmith_index_u32(~var_0.d.x, 8u)] || (false | var_0.b.x), true, true, all(select(var_0.b, var_0.b, false))), var_0), Struct_1(13958i, !select(vec4<bool>(true, var_0.b.x, true, global0[_wgslsmith_index_u32(22934u, 8u)]), select(var_0.b, var_0.b, false), select(global0[_wgslsmith_index_u32(4294967295u, 8u)], false, global0[_wgslsmith_index_u32(4294967295u, 8u)])), ~_wgslsmith_add_vec4_i32(firstTrailingBit(var_0.c), select(var_0.c, vec4<i32>(var_0.c.x, 9204i, 0i, u_input.b), true)), var_0.d, -682f));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(~arg_2.x, i32(-1i) * -7399i), select(-1i, -u_input.c.x, all(arg_1.d.wwz))), ~_wgslsmith_mod_i32(arg_0, 2147483647i), arg_2.x | -u_input.b, firstLeadingBit(arg_1.e.a)), vec4<i32>(_wgslsmith_clamp_i32(arg_2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(20304i, -27493i), arg_1.e.c.yz), -_wgslsmith_add_i32(arg_1.e.a, arg_2.x)), min(~arg_0, arg_2.x), 31261i, countOneBits(u_input.c.x)));
    var var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.c.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.e.e)))))));
    var var_3 = arg_1.c.a < 5309i;
    let var_4 = arg_1;
    return _wgslsmith_f_op_f32(2703f - 901f);
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    global0 = array<bool, 8>();
    let var_0 = !select(select(arg_0.e.b, vec4<bool>(false, true, arg_0.b.x, all(vec4<bool>(arg_0.c.b.x, false, false, arg_0.c.b.x))), arg_0.d), !vec4<bool>(arg_0.d.x, false, true, arg_0.b.x), arg_0.d.x == arg_0.b.x);
    global0 = array<bool, 8>();
    global1 = ~u_input.e;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2179f) + -856f);
    return arg_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(837f, 516f, global0[_wgslsmith_index_u32(u_input.d.x, 8u)]))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1020f, -1712f) * _wgslsmith_f_op_f32(func_1(u_input.c.x, global2[_wgslsmith_index_u32(u_input.a.x, 28u)], vec2<i32>(1586i, u_input.b))))), vec2<bool>(!global0[_wgslsmith_index_u32(63210u, 8u)], true), func_2().d, vec4<bool>(true, firstTrailingBit(-2147483647i) == _wgslsmith_clamp_i32(-21635i, u_input.c.x, 0i), global0[_wgslsmith_index_u32(u_input.d.x, 8u)], all(select(vec2<bool>(false, true), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 8u)]), global0[_wgslsmith_index_u32(u_input.a.x, 8u)]))), func_2().c.e), ~func_2().b.x);
    global0 = array<bool, 8>();
    var var_1 = func_2();
    let var_2 = func_2().c;
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2287f, var_1.c.a, var_1.d.e, var_1.c.c.e), vec4<f32>(-1000f, var_2.c.e, var_0.e, var_1.d.e))), vec4<f32>(-1000f, var_0.e, var_0.e, var_0.e)))))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.e), -1672f, var_1.d.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(var_1.a, Struct_1(var_2.e.c.x, vec4<bool>(var_1.c.e.b.x, false, false, false), var_0.c, var_1.c.e.d, 316f), var_1.c.e)), -600f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(203f * -585f)))))));
    var var_4 = _wgslsmith_add_vec2_u32(~vec2<u32>(~70818u & (34303u ^ var_0.d.x), var_0.d.x << (~var_0.d.x % 32u)), var_1.b);
    var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1500f), _wgslsmith_f_op_f32(550f + var_2.c.e)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.e.e + var_3.x))) + var_2.a));
}

