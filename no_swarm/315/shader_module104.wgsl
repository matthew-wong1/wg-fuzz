struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: i32 = 2147483647i;

var<private> global2: f32 = 516f;

var<private> global3: array<vec3<f32>, 6>;

var<private> global4: array<bool, 15>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: Struct_5) -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-247f)) + -607f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(2037f, 859f)))) * 704f)), -1046f, -255f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(100f * -490f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2062f), _wgslsmith_f_op_f32(-1919f - 152f)))));
    global2 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_0.x)))))))));
    var var_1 = Struct_5(arg_0.a);
    var var_2 = _wgslsmith_sub_vec4_i32(-vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(arg_1, arg_1), arg_1), arg_1, _wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_1, 0i, arg_1), arg_1), -2147483647i), abs(reverseBits(min(vec4<i32>(4970i, 45618i, arg_1, arg_1) ^ vec4<i32>(-1i, arg_1, arg_1, -1i), ~vec4<i32>(1i, arg_1, -116i, -26308i)))));
    var var_3 = -_wgslsmith_div_i32(select(var_2.x << (44059u % 32u), select(_wgslsmith_mult_i32(-243i, -29242i), 0i, any(vec3<bool>(global4[_wgslsmith_index_u32(87831u, 15u)], true, true))), !global4[_wgslsmith_index_u32(~4294967295u, 15u)]), arg_1);
    return arg_2.a.a;
}

fn func_2() -> Struct_1 {
    global4 = array<bool, 15>();
    let var_0 = Struct_5(Struct_2(true));
    var var_1 = _wgslsmith_f_op_f32(max(-624f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-2800f)), 337f))));
    let var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(~(-1i)), 24432i, _wgslsmith_mult_i32(-2147483647i, -1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(40548i, 0i, i32(-1i) * -2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -2147483647i, 21709i), -vec3<i32>(0i, -2147483647i, 0i), max(vec3<i32>(68724i, -5936i, 0i), vec3<i32>(2147483647i, -36494i, 2147483647i))))), _wgslsmith_sub_i32(-2147483647i, min(-1i, firstTrailingBit(75156i)) ^ 12280i), (_wgslsmith_dot_vec2_i32(vec2<i32>(23451i, -1i), vec2<i32>(1i, 1i)) & _wgslsmith_mult_i32(1i, ~2147483647i)) << (~(4294967295u >> (abs(1u) % 32u)) % 32u));
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-201f, _wgslsmith_f_op_f32(sign(704f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-216f, 221f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1087f, 985f))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-191f, -327f), vec2<f32>(-212f, -635f))))))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-718f + var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1525f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * -1031f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_f_op_f32(floor(var_3.x)), true)) - var_3.x)), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.a.a, false, true), vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.a.x, 15u)], var_0.a.a), vec3<bool>(false, global4[_wgslsmith_index_u32(71975u, 15u)], global4[_wgslsmith_index_u32(u_input.a.x, 15u)])), !vec3<bool>(false, var_0.a.a, true)), vec3<bool>(!global4[_wgslsmith_index_u32(17889u, 15u)], var_3.x > -875f, all(vec2<bool>(true, var_0.a.a))), vec3<bool>(var_0.a.a, true, any(vec4<bool>(true, var_0.a.a, true, global4[_wgslsmith_index_u32(u_input.a.x, 15u)])))), select(select(!vec3<bool>(var_0.a.a, false, global4[_wgslsmith_index_u32(62104u, 15u)]), !vec3<bool>(global4[_wgslsmith_index_u32(13069u, 15u)], var_0.a.a, global4[_wgslsmith_index_u32(0u, 15u)]), all(vec2<bool>(var_0.a.a, true))), vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.a.x << (u_input.a.x % 32u), 15u)], func_3(Struct_5(Struct_2(false)), var_2.x, var_0)), !vec3<bool>(global4[_wgslsmith_index_u32(35089u, 15u)], false, true)), vec3<bool>(var_0.a.a, -776f < _wgslsmith_f_op_f32(max(var_3.x, var_3.x)), 1u <= ~u_input.a.x)), !(!vec2<bool>(false, global4[_wgslsmith_index_u32(30166u, 15u)])));
}

fn func_1() -> Struct_1 {
    var var_0 = 1u;
    var var_1 = global4[_wgslsmith_index_u32(~1u, 15u)];
    return func_2();
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32) -> StorageBuffer {
    global4 = array<bool, 15>();
    let var_0 = ~1266u;
    global1 = ~1i;
    var var_1 = -10838i;
    var var_2 = Struct_3(var_0, arg_2, 7344u, select(!vec2<bool>(false, all(arg_1.c.zz)), select(vec2<bool>(false, true), arg_1.c.xz, !(!vec2<bool>(true, arg_1.c.x))), !vec2<bool>(false, !arg_1.c.x)));
    return StorageBuffer(min(-vec2<i32>(1i, -arg_2), vec2<i32>(81220i, abs(var_2.b))), -(~vec2<i32>(var_2.b, -5506i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 75369u;
    let var_1 = _wgslsmith_clamp_i32(-1i, -1i, firstLeadingBit(-_wgslsmith_mult_i32(~0i, reverseBits(32461i))));
    global0 = 35799i;
    global0 = _wgslsmith_add_i32(63299i, -2147483647i);
    global2 = _wgslsmith_f_op_f32(max(-871f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1102f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2459f)))));
    global0 = _wgslsmith_mult_i32(-(~var_1), _wgslsmith_sub_i32(0i, max(var_1, min(1i, 0i)) ^ -39417i));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_div_vec2_u32(vec2<u32>(var_0, u_input.a.x), vec2<u32>(~u_input.a.x, var_0 | 0u) | (_wgslsmith_mult_vec2_u32(u_input.a.xz, u_input.a.yz) ^ _wgslsmith_clamp_vec2_u32(u_input.a.xz, u_input.a.zz, u_input.a.yz))), func_1(), ~0i);
}

