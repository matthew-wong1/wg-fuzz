struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: u32,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 7>;

var<private> global1: f32 = 132f;

var<private> global2: vec4<i32>;

var<private> global3: array<u32, 1> = array<u32, 1>(83979u);

var<private> global4: Struct_1 = Struct_1(vec3<bool>(true, true, false), 46045i, 76103u, vec3<bool>(true, false, false), -507f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(global4.a, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(global2.x, global2.x, global2.x), u_input.c, false), select(u_input.c, vec3<i32>(0i, 22947i, global2.x), vec3<bool>(true, global4.a.x, global4.a.x))), abs(global2.wwy)) & u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.e.wyz, vec3<u32>(u_input.d | _wgslsmith_add_u32(47172u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 1u)], 1u)]), 6067u, 44638u)), !global4.d, global4.e);
    global3 = array<u32, 1>();
    let var_1 = vec2<f32>(-1241f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1068f, -375f)), 1000f))));
    global3 = array<u32, 1>();
    global0 = array<vec2<u32>, 7>();
    return select(firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_div_u32(global4.c, u_input.b), _wgslsmith_dot_vec2_u32(u_input.e.zz, vec2<u32>(0u, global4.c)))) & ~firstTrailingBit(1u), 13747u, (!all(vec4<bool>(false, false, false, global4.a.x)) | var_0.d.x) && true);
}

fn func_2(arg_0: bool) -> vec3<bool> {
    var var_0 = vec2<bool>(global4.a.x, !any(select(select(vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(false, global4.d.x, false, false), vec4<bool>(arg_0, false, arg_0, false)), vec4<bool>(true, false, true, true), select(vec4<bool>(global4.a.x, false, arg_0, false), vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(true, global4.d.x, arg_0, arg_0)))));
    global4 = Struct_1(vec3<bool>(_wgslsmith_sub_u32(func_3(), 1u) < _wgslsmith_div_u32(abs(global3[_wgslsmith_index_u32(u_input.d, 1u)]), global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(29485u, 1u)], 1u)]), global2.x <= ~_wgslsmith_div_i32(-2147483647i, u_input.c.x), reverseBits(select(0i, global4.b, false)) >= -firstLeadingBit(0i)), firstLeadingBit(max(~4334i, select(-1i, 9656i, arg_0))) & u_input.a, _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 1u), u_input.e.wzx), 1u)], 22704u), vec3<bool>(var_0.x, var_0.x, (any(global4.d) & false) || all(!vec4<bool>(arg_0, false, global4.d.x, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global4.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global4.e, -414f)) - _wgslsmith_f_op_f32(global4.e + global4.e)))) - -485f));
    return !select(!(!global4.d), !global4.d, any(vec4<bool>(any(vec2<bool>(true, true)), arg_0, false, global4.a.x)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = func_2(false);
    var var_1 = ~(~4294967295u);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1005f, global4.e, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1217f * 1138f)))) + vec3<f32>(global4.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.e * global4.e) * _wgslsmith_f_op_f32(-global4.e)), -570f)));
    let var_3 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-24628i, global4.b), firstLeadingBit(global2.yx)), -(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), global2.wy) & global4.b), i32(-1i) * -52658i);
    var var_4 = _wgslsmith_mod_i32(41687i, _wgslsmith_add_i32(abs(arg_0.b << (10395u % 32u)), 28874i) >> (29943u % 32u));
    return ~(-50485i);
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<i32>) -> vec4<f32> {
    global0 = array<vec2<u32>, 7>();
    var var_0 = Struct_1(vec3<bool>(true, -58987i < _wgslsmith_mod_i32(27494i ^ u_input.c.x, global4.b), global4.a.x || false), global2.x, 59391u, vec3<bool>(false, true, !(select(global4.a.x, false, false) || global4.d.x)), _wgslsmith_f_op_f32(493f - _wgslsmith_f_op_f32(exp2(global4.e))));
    global3 = array<u32, 1>();
    let var_1 = 0u;
    global3 = array<u32, 1>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.e, global4.e, -567f, global4.e) + vec4<f32>(223f, -207f, global4.e, -1126f)), vec4<f32>(-935f, var_0.e, 2130f, global4.e))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-946f, 860f, -280f, -332f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global4.e, -1359f, global4.e) * vec4<f32>(var_0.e, var_0.e, 1000f, var_0.e)), select(vec4<bool>(false, false, global4.d.x, true), vec4<bool>(var_0.a.x, true, global4.d.x, true), vec4<bool>(global4.d.x, global4.a.x, true, false))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.e, var_0.e, var_0.e, var_0.e), vec4<f32>(global4.e, global4.e, global4.e, -189f))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1048f, 608f, global4.e, global4.e), vec4<f32>(-726f, 1000f, var_0.e, global4.e)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-887f, var_0.e, global4.e, -1822f), vec4<f32>(var_0.e, var_0.e, -245f, 870f), global4.d.x)), vec4<f32>(-168f, -1843f, -1679f, var_0.e))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: f32) -> vec4<i32> {
    var var_0 = Struct_1(func_2((global4.d.x || global4.d.x) | all(global4.a)), firstTrailingBit(i32(-1i) * -_wgslsmith_mult_i32(-23783i, u_input.a)), ~(~func_3()) << (_wgslsmith_mult_u32(u_input.d, 4294967295u) % 32u), func_2(false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1225f + -3024f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-633f, arg_2))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))));
    var var_1 = Struct_1(!func_2(!(!var_0.a.x)), ~(~(global4.b ^ -1i)) >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 3988u, var_0.c, 5141u), u_input.e), u_input.e), _wgslsmith_div_u32(7177u, global3[_wgslsmith_index_u32(~51307u, 1u)])) % 32u), var_0.c, !vec3<bool>(all(!global4.d.zx), var_0.a.x, var_0.d.x), _wgslsmith_f_op_f32(step(410f, _wgslsmith_f_op_f32(-1273f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * -1309f), _wgslsmith_f_op_f32(1000f - arg_0.x))))));
    let var_2 = -(_wgslsmith_add_i32(max(global4.b, 1i), select(_wgslsmith_div_i32(global2.x, u_input.c.x), func_1(Struct_1(global4.d, global2.x, 38622u, vec3<bool>(false, true, var_0.a.x), global4.e)), true)) >> (var_0.c % 32u));
    let var_3 = Struct_1(select(vec3<bool>(!(24160u < global3[_wgslsmith_index_u32(var_1.c, 1u)]), all(var_1.a), all(select(var_1.a, var_1.d, var_0.d.x))), !select(vec3<bool>(var_1.d.x, false, false), var_1.a, !var_0.d.x), !var_1.a), -22906i, 105774u, !(!func_2(!global4.d.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.e))))));
    var_0 = var_3;
    return _wgslsmith_clamp_vec4_i32(firstTrailingBit(select(vec4<i32>(-37936i, global4.b, global2.x, var_2), vec4<i32>(2147483647i, var_1.b, -61462i, var_3.b), vec4<bool>(false, true, var_0.a.x, var_0.d.x)) ^ ~vec4<i32>(var_1.b, 33670i, global2.x, arg_1.x)), vec4<i32>(abs(u_input.c.x) | 1i, _wgslsmith_mod_i32(1i, reverseBits(1i)), var_0.b, -3969i), countOneBits(firstTrailingBit(reverseBits(vec4<i32>(19541i, global4.b, -1i, u_input.c.x))))) | ~(-vec4<i32>(firstTrailingBit(global2.x), global4.b >> (global3[_wgslsmith_index_u32(4294967295u, 1u)] % 32u), firstLeadingBit(arg_1.x), max(global4.b, -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global4.e - global4.e), _wgslsmith_f_op_f32(step(global4.e, global4.e)), _wgslsmith_f_op_f32(abs(-1576f)), _wgslsmith_f_op_f32(-global4.e))), _wgslsmith_f_op_vec4_f32(func_4(global2.zw, u_input.c.x, vec2<i32>(func_1(Struct_1(vec3<bool>(global4.d.x, false, global4.d.x), 0i, 4237u, vec3<bool>(global4.d.x, global4.d.x, true), global4.e)), 16033i)))), vec3<i32>(-31242i, -46932i, _wgslsmith_dot_vec2_i32(abs(abs(global2.zy)), _wgslsmith_clamp_vec2_i32(u_input.c.xz, vec2<i32>(global2.x, -1i), global2.zx))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.e + -415f) - _wgslsmith_f_op_f32(f32(-1f) * -1467f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1049f + global4.e) * _wgslsmith_f_op_f32(f32(-1f) * -1747f)), global4.d.x)) - 1213f));
    var var_0 = Struct_1(select(global4.a, vec3<bool>(global4.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global4.b, 0i), global2.yw) != ~global2.x, global4.d.x), func_2(global4.a.x)), ~(-33667i & _wgslsmith_div_i32(u_input.a, _wgslsmith_add_i32(2147483647i, -1i))), 4294967295u & select(_wgslsmith_dot_vec3_u32(u_input.e.wxw, vec3<u32>(4294967295u, 21653u, global3[_wgslsmith_index_u32(global4.c, 1u)])) | firstTrailingBit(u_input.d), 48635u, true), select(global4.a, global4.a, !vec3<bool>(!global4.d.x, global4.a.x == global4.a.x, true)), _wgslsmith_f_op_f32(-1f));
    global2 = select(countOneBits(vec4<i32>(24476i, ~(global2.x & 0i), _wgslsmith_div_i32(-31666i, var_0.b), u_input.c.x)), vec4<i32>(31969i, countOneBits(0i), -20003i, global4.b), false);
    let var_1 = Struct_1(func_2(var_0.d.x), -(~func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(1047f, var_0.e, global4.e, var_0.e) - vec4<f32>(var_0.e, -733f, global4.e, var_0.e)), vec3<i32>(global4.b, 2147483647i, -2147483647i), global4.e).x), ~0u, select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), func_2(func_2(any(vec4<bool>(false, global4.a.x, false, false))).x), var_0.a.x), 1405f);
    global4 = var_1;
    let var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, u_input.c.xz, firstLeadingBit(47450u), vec3<u32>(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(var_0.c, 1u)], 4672u, 23681u), 0u), 13606u, func_3()), ~vec3<u32>(~var_0.c, max(0u, 24635u), 4294967295u));
}

