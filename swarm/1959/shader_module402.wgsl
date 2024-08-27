struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15>;

var<private> global1: array<i32, 26> = array<i32, 26>(-61864i, 2284i, -73305i, 0i, 1i, -42092i, 30748i, 39005i, 2147483647i, -32238i, 0i, -1i, -1i, 2147483647i, 1i, -1i, 0i, 1i, 24543i, 0i, 2147483647i, 0i, 8079i, 1591i, -1i, -1i);

var<private> global2: array<vec4<i32>, 2>;

var<private> global3: array<bool, 6> = array<bool, 6>(true, true, false, true, false, false);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: i32) -> u32 {
    var var_0 = ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, 23334u & u_input.c.x, 0u), _wgslsmith_mod_vec3_u32(~(u_input.c.wxw ^ vec3<u32>(20351u, 0u, arg_0)), u_input.c.xyz << (~u_input.c.xzy % vec3<u32>(32u))));
    var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec2_u32(~var_0.yy, var_0.xy), arg_0, 1u), select(u_input.c.zzz, vec3<u32>(34709u, ~38285u, _wgslsmith_add_u32(0u, 1u)) | ~vec3<u32>(var_0.x, 1u, 4683u), vec3<bool>(any(vec3<bool>(false, false, global3[_wgslsmith_index_u32(53295u, 6u)])) || true, select(global3[_wgslsmith_index_u32(3698u, 6u)], u_input.b <= 0u, true), !global3[_wgslsmith_index_u32(firstTrailingBit(42227u), 6u)])), min(~u_input.c.ywz, u_input.c.www));
    let var_1 = Struct_1(min(~u_input.c.ywz, vec3<u32>(103115u >> (arg_0 % 32u), ~u_input.c.x, 1u | arg_0)) >> (vec3<u32>(_wgslsmith_clamp_u32(u_input.c.x, 63734u, ~4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, arg_0, 62232u) ^ vec4<u32>(u_input.d.x, var_0.x, 28626u, 0u), reverseBits(u_input.c)), firstLeadingBit(arg_0) >> (~u_input.c.x % 32u)) % vec3<u32>(32u)), false, _wgslsmith_f_op_f32(-1f), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1556f, _wgslsmith_f_op_f32(sign(-312f)), _wgslsmith_f_op_f32(ceil(892f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1312f, 522f)) - _wgslsmith_f_op_f32(f32(-1f) * -303f)))));
    var var_2 = (_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(firstLeadingBit(global2[_wgslsmith_index_u32(12080u, 2u)]), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, arg_0), 2u)], ~vec4<i32>(arg_1, u_input.a, -2147483647i, -16406i)), vec4<i32>(-64346i, u_input.a, -global1[_wgslsmith_index_u32(1u, 26u)], ~(-2147483647i))) > u_input.a) | (-(global1[_wgslsmith_index_u32(u_input.c.x, 26u)] << (_wgslsmith_mod_u32(arg_0, arg_0) % 32u)) >= 1i);
    let var_3 = firstTrailingBit(global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 2u)]);
    return 1u;
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1331f, arg_2.x) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1371f), arg_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * 338f), -426f)))));
    var var_1 = Struct_2(select(select(vec2<bool>(true && global3[_wgslsmith_index_u32(u_input.b, 6u)], all(vec4<bool>(global3[_wgslsmith_index_u32(1u, 6u)], true, arg_1, arg_1))), vec2<bool>(!global3[_wgslsmith_index_u32(29697u, 6u)], !global3[_wgslsmith_index_u32(29205u, 6u)]), vec2<bool>(true, false)), select(select(vec2<bool>(true, true), vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.d.x, 6u)]), arg_2.x <= arg_0.x), vec2<bool>(any(vec3<bool>(global3[_wgslsmith_index_u32(18052u, 6u)], true, arg_1)), all(vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.c.x, 6u)], false, global3[_wgslsmith_index_u32(4294967295u, 6u)]))), all(vec4<bool>(global3[_wgslsmith_index_u32(46984u, 6u)], false, false, global3[_wgslsmith_index_u32(u_input.c.x, 6u)]))), arg_1), ~vec2<u32>(func_3(4294967295u, 1i), firstLeadingBit(_wgslsmith_sub_u32(4294967295u, 24864u))), !vec4<bool>(true, true, any(vec2<bool>(arg_1, true)), false), ~countOneBits(select(u_input.d, u_input.d, global3[_wgslsmith_index_u32(u_input.d.x, 6u)])) | _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 1u)) | countOneBits(vec2<u32>(u_input.b, u_input.b)), u_input.d, vec2<u32>(firstTrailingBit(u_input.c.x), func_3(1u, 0i))), firstLeadingBit(vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(12265u, 26u)])));
    var_1 = Struct_2(var_1.c.wx, select(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(1113u, 18980u), vec2<u32>(var_1.d.x, 21312u))), var_1.d, !var_1.a.x), var_1.c, _wgslsmith_div_vec2_u32(vec2<u32>(0u, firstTrailingBit(19911u)), ~_wgslsmith_div_vec2_u32(u_input.d, vec2<u32>(var_1.d.x, u_input.c.x))) >> (~_wgslsmith_mult_vec2_u32(~var_1.d, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, 75081u), vec2<u32>(u_input.d.x, 52819u))) % vec2<u32>(32u)), abs(min(-(~vec2<i32>(13149i, -23738i)), global0[_wgslsmith_index_u32(1u, 15u)])));
    var var_2 = _wgslsmith_f_op_f32(arg_0.x * 1000f);
    global0 = array<vec2<i32>, 15>();
    return Struct_1(reverseBits(firstLeadingBit(vec3<u32>(u_input.d.x, _wgslsmith_div_u32(u_input.d.x, var_1.d.x), _wgslsmith_add_u32(1u, u_input.d.x)))), !select(all(var_1.c.zz), !(u_input.c.x == u_input.d.x), all(var_1.a)), -1480f, true, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -846f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), -269f, 1375f, arg_0.x));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>) -> i32 {
    global3 = array<bool, 6>();
    global3 = array<bool, 6>();
    var var_0 = global0[_wgslsmith_index_u32(29741u >> (~max(4294967295u, arg_1.a.x) % 32u), 15u)];
    var var_1 = Struct_2(select(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(arg_1.d, true)), !vec2<bool>(arg_1.d, arg_1.b), any(vec3<bool>(false, true, false))), select(!vec2<bool>(arg_1.b, global3[_wgslsmith_index_u32(arg_2.x, 6u)]), !vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 6u)], global3[_wgslsmith_index_u32(arg_1.a.x, 6u)]), _wgslsmith_f_op_f32(arg_1.c * 202f) == _wgslsmith_div_f32(915f, 344f)), any(vec2<bool>(false, false))), ~vec2<u32>(arg_1.a.x, select(arg_1.a.x, u_input.c.x, !arg_1.b)), select(vec4<bool>(arg_1.d, (arg_1.a.x | arg_1.a.x) == countOneBits(0u), !(arg_1.e.x > 1814f), false), !(!select(vec4<bool>(arg_1.b, global3[_wgslsmith_index_u32(31838u, 6u)], false, false), vec4<bool>(true, false, false, true), arg_1.b)), !(!(!vec4<bool>(false, arg_1.d, global3[_wgslsmith_index_u32(arg_1.a.x, 6u)], global3[_wgslsmith_index_u32(4294967295u, 6u)])))), vec2<u32>(~arg_2.x, arg_1.a.x), ~abs(-vec2<i32>(u_input.a, var_0.x)));
    var var_2 = arg_1;
    return var_0.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -151f), 546f), func_2(arg_2.e.yx, select(all(select(arg_0.yz, arg_0.xz, true)), false, false), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_2.e.x, -1446f, true)))), arg_2.c, -1000f)), vec4<u32>(u_input.c.x, countOneBits(arg_1.x), select(1u & _wgslsmith_sub_u32(arg_1.x, 19157u), arg_1.x, _wgslsmith_sub_u32(arg_3.a.x, arg_1.x) <= _wgslsmith_sub_u32(1u, arg_1.x)), ~_wgslsmith_mod_u32(u_input.c.x, ~arg_2.a.x)));
    var var_1 = 1f;
    var var_2 = Struct_2(vec2<bool>(any(select(select(vec4<bool>(true, false, true, arg_2.d), vec4<bool>(true, false, global3[_wgslsmith_index_u32(12423u, 6u)], false), vec4<bool>(true, true, true, arg_3.d)), vec4<bool>(true, arg_2.d, global3[_wgslsmith_index_u32(u_input.b, 6u)], true), vec4<bool>(false, true, global3[_wgslsmith_index_u32(arg_2.a.x, 6u)], arg_0.x))), false), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(min(arg_2.a.zx, vec2<u32>(arg_3.a.x, arg_1.x)), ~arg_3.a.zy), ~u_input.c.xx), select(vec4<bool>(true, !global3[_wgslsmith_index_u32(u_input.d.x, 6u)], func_2(_wgslsmith_f_op_vec2_f32(-arg_2.e.xx), all(vec4<bool>(global3[_wgslsmith_index_u32(arg_3.a.x, 6u)], false, true, arg_3.b)), vec3<f32>(arg_2.e.x, arg_3.c, -1000f)).d, global3[_wgslsmith_index_u32(12915u << (arg_2.a.x % 32u), 6u)] | !global3[_wgslsmith_index_u32(4294967295u, 6u)]), select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, arg_0.x, arg_0.x), arg_3.b), !vec4<bool>(false, false, arg_2.d, true), global3[_wgslsmith_index_u32(u_input.b, 6u)] | arg_0.x), select(vec4<bool>(global3[_wgslsmith_index_u32(arg_2.a.x, 6u)], false, arg_3.d, false), !vec4<bool>(false, false, arg_0.x, true), select(vec4<bool>(true, false, arg_2.b, false), vec4<bool>(true, true, arg_0.x, arg_2.d), vec4<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 6u)], arg_0.x, global3[_wgslsmith_index_u32(92857u, 6u)], false))), !(!vec4<bool>(true, arg_2.b, false, false))), !(!(!vec4<bool>(arg_3.b, true, arg_0.x, arg_2.d)))), ~arg_2.a.zy, _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -1i), vec3<i32>(global1[_wgslsmith_index_u32(arg_3.a.x, 26u)], 14958i, u_input.a)), global1[_wgslsmith_index_u32(0u & arg_3.a.x, 26u)]) & (vec2<i32>(65188i, u_input.a) >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, arg_1.x), u_input.d) % vec2<u32>(32u))), vec2<i32>(i32(-1i) * -10062i, -(~u_input.a))));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -957f);
    let var_3 = firstTrailingBit(29525u);
    return !var_2.c;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: f32) -> Struct_2 {
    let var_0 = arg_1;
    global1 = array<i32, 26>();
    let var_1 = ~arg_1.a.x & _wgslsmith_dot_vec3_u32(max(u_input.c.xwy, vec3<u32>(arg_1.a.x, 0u, _wgslsmith_div_u32(arg_1.a.x, 32961u))), u_input.c.zyz);
    global1 = array<i32, 26>();
    global0 = array<vec2<i32>, 15>();
    return Struct_2(!(!(!select(arg_0.c.zy, vec2<bool>(arg_0.a.x, false), vec2<bool>(true, false)))), _wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 55084u, 4294967295u, var_1), u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, arg_0.d.x), max(vec3<u32>(arg_2.x, 4294967295u, var_0.a.x), vec3<u32>(1u, var_1, 0u)))), ~vec2<u32>(countOneBits(0u), 1u)), !vec4<bool>(true, arg_1.d, global3[_wgslsmith_index_u32(arg_0.d.x, 6u)], false), var_0.a.yy >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(10584u, 17203u) << (vec2<u32>(1u, 0u) % vec2<u32>(32u)), ~arg_0.b) % vec2<u32>(32u)), arg_0.e << (vec2<u32>(var_1, arg_1.a.x) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 15>();
    global0 = array<vec2<i32>, 15>();
    var var_0 = func_5(Struct_2(!(!(!vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 6u)]))), vec2<u32>(~min(0u, u_input.d.x), firstTrailingBit(u_input.c.x ^ u_input.b)), !(!func_1(vec3<bool>(true, false, global3[_wgslsmith_index_u32(4294967295u, 6u)]), u_input.c, Struct_1(vec3<u32>(1u, u_input.c.x, u_input.b), false, -1587f, true, vec4<f32>(444f, 1463f, -413f, -1000f)), Struct_1(vec3<u32>(4294967295u, u_input.b, 83815u), global3[_wgslsmith_index_u32(0u, 6u)], -1064f, false, vec4<f32>(-742f, -463f, -478f, -1507f)))), vec2<u32>(abs(u_input.d.x), ~(~u_input.d.x)), vec2<i32>(1i, 2147483647i) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, 81326u), ~u_input.c.zw, abs(vec2<u32>(40396u, 4294967295u))) % vec2<u32>(32u))), Struct_1(~u_input.c.xyw, func_1(select(vec3<bool>(global3[_wgslsmith_index_u32(97867u, 6u)], global3[_wgslsmith_index_u32(1u, 6u)], global3[_wgslsmith_index_u32(31225u, 6u)]), vec3<bool>(true, true, true), !vec3<bool>(global3[_wgslsmith_index_u32(1569u, 6u)], global3[_wgslsmith_index_u32(1u, 6u)], global3[_wgslsmith_index_u32(u_input.c.x, 6u)])), u_input.c, Struct_1(~u_input.c.zwx, true, 973f, false, _wgslsmith_f_op_vec4_f32(vec4<f32>(-333f, -1000f, 465f, -889f) * vec4<f32>(-427f, -301f, -115f, 119f))), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1113f, 282f) + vec2<f32>(261f, 531f)), global3[_wgslsmith_index_u32(1u, 6u)], _wgslsmith_div_vec3_f32(vec3<f32>(-533f, 1054f, -731f), vec3<f32>(153f, -323f, -623f)))).x, _wgslsmith_f_op_f32(f32(-1f) * -695f), any(select(vec2<bool>(false, global3[_wgslsmith_index_u32(0u, 6u)]), vec2<bool>(true, true), vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.d.x, 6u)]))) & (_wgslsmith_div_u32(u_input.b, u_input.c.x) == ~u_input.b), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -496f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -752f), _wgslsmith_f_op_f32(trunc(507f))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1484f) * _wgslsmith_f_op_f32(-960f + 804f)))), vec3<u32>(u_input.d.x, u_input.c.x, 4294967295u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-186f - 626f)) * _wgslsmith_f_op_f32(abs(-206f))))));
    global2 = array<vec4<i32>, 2>();
    var var_1 = u_input.c.x;
    global2 = array<vec4<i32>, 2>();
    let var_2 = Struct_2(vec2<bool>((true | var_0.c.x) && true, any(vec3<bool>(false, true, all(var_0.c.xzy)))), u_input.c.xz, var_0.c, _wgslsmith_clamp_vec2_u32(var_0.b << (vec2<u32>(u_input.c.x ^ u_input.c.x, 1u) % vec2<u32>(32u)), ~_wgslsmith_mult_vec2_u32(u_input.c.zw, max(u_input.d, vec2<u32>(var_0.d.x, u_input.b))), u_input.c.wx), var_0.e);
    global3 = array<bool, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~(-reverseBits(global2[_wgslsmith_index_u32(u_input.b, 2u)])), firstTrailingBit(vec4<i32>(global1[_wgslsmith_index_u32(var_2.b.x, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)], u_input.a, 65197i) << (vec4<u32>(u_input.d.x, var_2.b.x, 1u, 1u) % vec4<u32>(32u))) & abs(global2[_wgslsmith_index_u32(28632u, 2u)]), (global1[_wgslsmith_index_u32(~u_input.d.x, 26u)] >= (var_0.e.x << (u_input.d.x % 32u))) | func_1(var_2.c.xyy, ~vec4<u32>(var_2.b.x, var_0.d.x, 0u, var_0.b.x), func_2(vec2<f32>(864f, -445f), true, vec3<f32>(913f, -253f, -549f)), Struct_1(u_input.c.wwy, false, -153f, false, vec4<f32>(-630f, -1175f, -552f, 519f))).x));
}

