struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31>;

var<private> global1: array<vec4<bool>, 22>;

var<private> global2: bool;

var<private> global3: i32 = -1i;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    var var_0 = true;
    global1 = array<vec4<bool>, 22>();
    var var_1 = -2175i;
    var var_2 = abs(u_input.c) >> ((1u & _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(19165u, u_input.a, 64732u)), _wgslsmith_mod_vec3_u32(min(vec3<u32>(u_input.a, u_input.b, 7061u), vec3<u32>(4294967295u, u_input.a, u_input.c)), max(vec3<u32>(21429u, 0u, 64070u), vec3<u32>(11790u, 1u, 12194u))))) % 32u);
    global1 = array<vec4<bool>, 22>();
    return Struct_2(_wgslsmith_add_u32(~1u, u_input.a));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>) -> Struct_3 {
    global3 = firstTrailingBit(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i))) | ~1i;
    global2 = arg_1.x;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -419f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(744f))))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 891f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-452f - _wgslsmith_f_op_f32(max(1367f, -132f))), -1255f)))));
    var var_1 = -1286i;
    var var_2 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, -168f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0 * 357f), _wgslsmith_div_f32(-361f, 830f)) + vec2<f32>(1096f, _wgslsmith_f_op_f32(f32(-1f) * -1252f)))), func_2(), func_2());
    return Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_div_f32(-2670f, var_0)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_2.a)) + vec2<f32>(575f, var_2.a.x))))), var_2.b, Struct_2(~abs(reverseBits(4294967295u))));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    var var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(min(534f, -676f)), -521f), Struct_2(16629u), Struct_2(~select(~0u, ~u_input.b, true)));
    global2 = all(vec3<bool>(all(vec4<bool>(true, false, true, true)), (firstTrailingBit(u_input.c) | var_0.b.a) != (40045u ^ u_input.c), true));
    global2 = select(select(false, ((arg_0.x << (4294967295u % 32u)) < _wgslsmith_div_i32(-30540i, 1i)) || select(true, u_input.b <= u_input.c, false), all(select(select(vec4<bool>(true, false, true, false), global1[_wgslsmith_index_u32(66135u, 22u)], vec4<bool>(false, false, false, false)), vec4<bool>(false, false, true, false), true))), true, -369f >= var_0.a.x);
    let var_1 = -(~global0[_wgslsmith_index_u32(~var_0.b.a | abs(~var_0.c.a), 31u)]);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -1390f, var_0.a.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1357f, 1331f, var_0.a.x) + vec3<f32>(var_0.a.x, -1368f, -947f))) - vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x * 1000f), _wgslsmith_f_op_f32(-var_0.a.x)))));
    return var_2.x;
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec4<i32>, arg_3: vec2<i32>) -> vec2<u32> {
    global2 = false;
    global0 = array<vec3<i32>, 31>();
    global0 = array<vec3<i32>, 31>();
    let var_0 = ~vec3<i32>(_wgslsmith_dot_vec2_i32(arg_3, -vec2<i32>(0i, 0i) >> (select(u_input.d, vec2<u32>(arg_0.b.a, arg_0.c.a), vec2<bool>(true, true)) % vec2<u32>(32u))), -_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_2.x, arg_2.x, arg_2.x, -49058i), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, 6751i, arg_3.x, arg_2.x), vec4<i32>(arg_3.x, arg_2.x, arg_2.x, 0i))), _wgslsmith_add_i32(arg_3.x, arg_2.x));
    global1 = array<vec4<bool>, 22>();
    return select(select(reverseBits(u_input.d) | u_input.d, vec2<u32>(u_input.b, arg_0.c.a), vec2<bool>(30838u <= arg_0.b.a, true)) | firstTrailingBit(u_input.d), ~_wgslsmith_sub_vec2_u32(u_input.d, vec2<u32>(81509u, arg_0.b.a) ^ u_input.d) & vec2<u32>(u_input.a, ~arg_0.c.a), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, -38610i >= _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(15206i, 47232i), vec2<i32>(13695i, 6204i)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(-9852i, 1i))), _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(1u, 31u)], vec3<i32>(523i, 2147483647i, 0i)) << (0u % 32u), 14072i), true);
    let var_1 = func_1(1u, !select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), global1[_wgslsmith_index_u32(1u << (0u % 32u), 22u)], select(global1[_wgslsmith_index_u32(u_input.d.x, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], vec4<bool>(var_0.x, false, var_0.x, true))), vec4<bool>(true, true, var_0.x, any(vec2<bool>(var_0.x, var_0.x))), true));
    global1 = array<vec4<bool>, 22>();
    var var_2 = func_4(var_1, _wgslsmith_f_op_f32(-167f * _wgslsmith_f_op_f32(func_3(select(vec2<i32>(1i, 1i), -vec2<i32>(244i, 7346i), var_0.x)))), -(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(53212i, 38235i, 0i, -24339i), vec4<i32>(70460i, -2147483647i, 1i, 1i), vec4<i32>(0i, -6836i, -1i, 27606i)), -vec4<i32>(-78637i, -11443i, 0i, 1i)) | ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-37545i, -43330i, -97250i, -54472i), vec4<i32>(-24021i, 0i, -1i, 0i), vec4<i32>(2147483647i, -37268i, -2601i, 0i))), countOneBits(min(~max(vec2<i32>(-42703i, 1i), vec2<i32>(-2147483647i, 2147483647i)), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(8196i, -2147483647i), vec2<i32>(91124i, 27426i), true), -vec2<i32>(-13012i, 28213i), vec2<i32>(-2147483647i, -1i)))));
    global0 = array<vec3<i32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(34494u, 42158u, u_input.c, 4294967295u)), vec4<u32>(var_1.b.a, 0u, 0u, 74815u)), 0u, var_2.x, u_input.a & func_4(var_1, var_1.a.x, vec4<i32>(1i, -2147483647i, -21614i, -39242i), vec2<i32>(22670i, 2464i)).x), ~vec4<u32>(~u_input.c, 4294967295u, var_1.c.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, var_1.b.a, 0u, var_1.c.a), vec4<u32>(var_1.c.a, 24567u, 28363u, 17119u))), true), -2527f, ~select(~vec4<u32>(22040u, u_input.c, 4294967295u, 8402u), reverseBits(vec4<u32>(var_1.c.a, 38836u, var_1.c.a, var_1.b.a)), !global1[_wgslsmith_index_u32(0u, 22u)]) & _wgslsmith_div_vec4_u32(vec4<u32>(1u, ~43544u, u_input.a, 1u), ~vec4<u32>(var_1.b.a, var_1.b.a, u_input.b, var_2.x)), ~(~16673i));
}

