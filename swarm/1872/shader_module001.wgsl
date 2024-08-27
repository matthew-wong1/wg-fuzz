struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: Struct_5) -> u32 {
    global0 = array<bool, 13>();
    var var_0 = Struct_4(Struct_1(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(381i, -29574i, 22372i), vec3<i32>(1i, 39905i, 43302i), ~vec3<i32>(12341i, 2147483647i, 34132i))), (firstTrailingBit(-50504i) << (1u % 32u)) >> (68511u % 32u), vec4<bool>(all(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(arg_3.a.x, 13u)], true, false)), global0[_wgslsmith_index_u32(arg_1.x, 13u)], select(global0[_wgslsmith_index_u32(arg_3.a.x, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], true) && all(vec3<bool>(true, global0[_wgslsmith_index_u32(8275u, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)])), global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(15186u, 1u))), 13u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_0.x, arg_3.b.x, -1124f)))), Struct_2(Struct_1(vec3<i32>(~(-2147483647i), _wgslsmith_div_i32(-9287i, -66605i), firstTrailingBit(6991i)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 33294i, 2147483647i, 5508i), vec4<i32>(2147483647i, -8016i, -2870i, -41434i)), 1i), !select(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_3.c.x, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], true), vec4<bool>(global0[_wgslsmith_index_u32(33912u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(arg_3.a.x, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), false), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(167f, arg_0.x, arg_0.x, arg_0.x))))), firstTrailingBit(firstLeadingBit(-vec3<i32>(1i, 1i, -2147483647i))), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, u_input.a.x | 51133u), 13u)], true, !all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], false, false)))));
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    let var_1 = Struct_3(Struct_1(vec3<i32>(-2147483647i, -_wgslsmith_mod_i32(var_0.a.b, 0i), var_0.b.b.x), ~min(-49919i, countOneBits(-11710i)), select(vec4<bool>(var_0.b.c.x, false, arg_1.x != arg_1.x, true), vec4<bool>(!global0[_wgslsmith_index_u32(60950u, 13u)], select(true, true, var_0.b.a.c.x), true, var_0.b.c.x), false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1660f, arg_0.x, 2258f, _wgslsmith_f_op_f32(820f * -1205f)))));
    return u_input.a.x;
}

fn func_2(arg_0: Struct_5, arg_1: vec4<i32>) -> u32 {
    global0 = array<bool, 13>();
    return ~_wgslsmith_clamp_u32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(121f, arg_0.b.x) * arg_0.b), max(u_input.a, u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1409f, arg_0.b.x)), Struct_5(vec2<u32>(1u, 0u), arg_0.b, arg_0.a)), _wgslsmith_div_u32(arg_0.a.x, 37657u), 4294967295u) >> (4294967295u % 32u);
}

fn func_1() -> vec2<u32> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(select(~u_input.a.x, _wgslsmith_div_u32(func_2(Struct_5(vec2<u32>(0u, 36745u), vec2<f32>(-203f, 705f), vec2<u32>(u_input.a.x, u_input.a.x)), vec4<i32>(-22620i, -36420i, -14052i, -21315i)), _wgslsmith_mult_u32(3282u, u_input.a.x)), global0[_wgslsmith_index_u32(u_input.a.x, 13u)]) >> (u_input.a.x % 32u), 85048u), 13u)];
    var var_1 = select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], (true || !global0[_wgslsmith_index_u32(u_input.a.x, 13u)]) | true, (~u_input.a.x >> (_wgslsmith_sub_u32(u_input.a.x, 0u) % 32u)) == 1u, true), !(!select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(27462u, 13u)], global0[_wgslsmith_index_u32(29962u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)]), vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(18593u, 13u)]), false), !vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], false), false)), select(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.zx), 13u)], true, select(global0[_wgslsmith_index_u32(select(48397u, 4294967295u, true), 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)], any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(40608u, 13u)], global0[_wgslsmith_index_u32(36168u, 13u)]))), any(vec4<bool>(true, false, global0[_wgslsmith_index_u32(34680u, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)]))), !select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 13u)], true, false), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], false, false, false), vec4<bool>(global0[_wgslsmith_index_u32(19914u, 13u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(0u, 13u)]), global0[_wgslsmith_index_u32(27053u, 13u)]), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], false, false, true)), all(select(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 13u)], true, true), select(vec4<bool>(true, global0[_wgslsmith_index_u32(105706u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], false, true, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], false, false, global0[_wgslsmith_index_u32(1u, 13u)])), vec4<bool>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(59151u, 13u)], false, false)))));
    global0 = array<bool, 13>();
    var var_2 = true;
    var_0 = any(select(select(select(select(var_1.zxy, vec3<bool>(global0[_wgslsmith_index_u32(0u, 13u)], true, false), global0[_wgslsmith_index_u32(35224u, 13u)]), var_1.yxw, true), select(var_1.zwz, vec3<bool>(true, true, false), var_1.zyz), select(var_1.zxz, !var_1.yyw, vec3<bool>(var_1.x, var_1.x, var_1.x))), vec3<bool>(var_1.x, any(select(vec2<bool>(false, true), var_1.xw, var_1.wx)), !var_1.x), global0[_wgslsmith_index_u32(u_input.a.x, 13u)]));
    return ~(vec2<u32>(_wgslsmith_mod_u32(max(47305u, u_input.a.x), ~51439u), abs(~4294967295u)) >> (select(~(u_input.a.zx & vec2<u32>(1u, u_input.a.x)), vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), var_1.x) % vec2<u32>(32u)));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = -max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-20619i, 1i, -36227i, -11816i), vec4<i32>(2147483647i, -1i, 0i, -13522i), vec4<i32>(-25277i, -10917i, -40912i, 39346i)) ^ vec4<i32>(9626i, -1i, 1i, -52181i), vec4<i32>(_wgslsmith_add_i32(5929i, 30118i), _wgslsmith_clamp_i32(-1i, -195i, 12329i), _wgslsmith_sub_i32(2147483647i, 2147483647i), -1i)) << (~arg_2 % vec4<u32>(32u));
    var var_1 = Struct_5(~_wgslsmith_mod_vec2_u32(arg_2.xz, arg_2.zz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-401f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-409f, -1413f)) - _wgslsmith_f_op_f32(-197f + -204f)))), vec2<u32>(arg_0 | func_2(Struct_5(arg_2.yy, vec2<f32>(1000f, 1227f), vec2<u32>(arg_0, 53044u)), vec4<i32>(-2147483647i, -1i, 1i, var_0.x)), u_input.a.x));
    var var_2 = Struct_5(~u_input.a.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.b), _wgslsmith_f_op_vec2_f32(var_1.b + vec2<f32>(-995f, var_1.b.x)), u_input.a.x < 1u)))), var_1.a ^ arg_2.xy);
    var var_3 = Struct_4(Struct_1(-min(vec3<i32>(2147483647i, var_0.x, -2147483647i), vec3<i32>(2147483647i, 41259i, var_0.x)), i32(-1i) * -(~var_0.x), vec4<bool>(false, false, _wgslsmith_f_op_f32(ceil(-265f)) < _wgslsmith_f_op_f32(var_2.b.x * -1228f), true), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1077f)), var_2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.b.x)) * _wgslsmith_f_op_f32(var_2.b.x * -1857f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(266f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_1.b.x)), _wgslsmith_f_op_f32(-612f * var_2.b.x), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(64446u, 1u), 13u)])))), Struct_2(Struct_1(var_0.xyz, i32(-1i) * -var_0.x, vec4<bool>(all(vec3<bool>(true, false, global0[_wgslsmith_index_u32(arg_2.x, 13u)])), false, global0[_wgslsmith_index_u32(u_input.a.x, 13u)], !global0[_wgslsmith_index_u32(arg_2.x, 13u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-396f, var_2.b.x, -134f, var_1.b.x) * vec4<f32>(var_2.b.x, 393f, var_2.b.x, -1869f)))), vec3<i32>(~_wgslsmith_add_i32(1i, var_0.x), 2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 36983i, 0i, var_0.x), vec4<i32>(var_0.x, var_0.x, 1i, 55416i), vec4<i32>(var_0.x, -12115i, 1i, 1i)), ~vec4<i32>(var_0.x, 0i, var_0.x, -1i))), !vec3<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(var_2.a.x, 13u)], global0[_wgslsmith_index_u32(arg_1, 13u)], false)), global0[_wgslsmith_index_u32(u_input.a.x, 13u)], all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 13u)], false, false, true)))));
    var_3 = Struct_4(Struct_1(var_0.zwy, 2980i, var_3.a.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, 2144f, -1000f, var_3.a.d.x) - vec4<f32>(var_3.a.d.x, 1000f, var_1.b.x, var_2.b.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.b.a.d), var_3.b.a.d), any(select(var_3.b.c.zz, var_3.a.c.xz, var_3.b.a.c.wx))))), var_3.b);
    return Struct_3(Struct_1(var_3.b.a.a, -((37382i | var_0.x) >> (_wgslsmith_clamp_u32(43502u, arg_0, 27370u) % 32u)), select(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], false, false, global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), var_3.b.a.c, true), var_3.a.c, select(var_3.a.c, vec4<bool>(global0[_wgslsmith_index_u32(0u, 13u)], true, var_3.b.a.c.x, var_3.a.c.x), global0[_wgslsmith_index_u32(var_2.a.x, 13u)])), var_3.b.a.d));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_2) -> Struct_5 {
    let var_0 = arg_0.a.a.x;
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    return Struct_5(min(~reverseBits(~arg_1.xy), u_input.a.zx), arg_0.a.d.xy, vec2<u32>(1u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 13>();
    let var_0 = func_5(func_4(~(~(~u_input.a.x)), _wgslsmith_dot_vec2_u32(~(~u_input.a.xz), func_1()), abs(~(~vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.a.x)))), select(~countOneBits(firstLeadingBit(u_input.a)), u_input.a, true), -707f, Struct_2(Struct_1(vec3<i32>(-63778i, _wgslsmith_dot_vec2_i32(vec2<i32>(-74006i, 1i), vec2<i32>(46165i, 44210i)), 1i), ~(~1i), func_4(~u_input.a.x, u_input.a.x, countOneBits(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x))).a.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(804f, 1142f, 255f, -1016f) - vec4<f32>(1000f, 1948f, 608f, 280f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1073f, 685f, -1000f, -655f)))), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -32016i, 21752i), func_4(43878u, 67092u, vec4<u32>(4294967295u, 1090u, u_input.a.x, 52816u)).a.a), vec3<i32>(~54826i, max(2147483647i, 2147483647i), 6696i)), select(!select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(1u, 13u)]), vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(106157u, 13u)]), !select(vec3<bool>(false, false, true), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec3<bool>(true, true, false)), select(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], false, false), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(48833u, 13u)], true), true))));
    let var_1 = Struct_4(func_4(reverseBits(abs(1u)), 12614u, ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.x, 29874u, 1u, 21078u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, var_0.c.x)))).a, Struct_2(Struct_1(-vec3<i32>(51601i, 2147483647i, -7758i), _wgslsmith_mod_i32(-1517i, -40943i) | _wgslsmith_dot_vec2_i32(vec2<i32>(29691i, -2147483647i), vec2<i32>(-48181i, 55795i)), !(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], false, false, global0[_wgslsmith_index_u32(u_input.a.x, 13u)])), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-440f, var_0.b.x, var_0.b.x, var_0.b.x)))), ~vec3<i32>(max(5540i, -1i), min(0i, 33003i), 1i), !vec3<bool>(global0[_wgslsmith_index_u32(countOneBits(61972u), 13u)], all(vec3<bool>(false, true, true)), true & global0[_wgslsmith_index_u32(u_input.a.x, 13u)])));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-786f, var_1.b.a.d.x))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(867f * var_0.b.x), 1245f) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(163f, 352f) + var_0.b), vec2<f32>(267f, var_1.b.a.d.x))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.d.zz))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1138f, var_1.a.d.x), _wgslsmith_f_op_vec2_f32(var_1.a.d.wy + vec2<f32>(434f, var_0.b.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.a.d.zy))))));
    var var_3 = select(func_4(~abs(firstLeadingBit(28934u)), _wgslsmith_mult_u32(56754u, var_0.a.x) | 72944u, ((vec4<u32>(u_input.a.x, 1u, u_input.a.x, var_0.c.x) >> (vec4<u32>(1u, 4294967295u, var_0.a.x, 4294967295u) % vec4<u32>(32u))) | (vec4<u32>(var_0.c.x, var_0.c.x, 36501u, u_input.a.x) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))) | ((vec4<u32>(34850u, 1u, 81896u, u_input.a.x) >> (vec4<u32>(1u, var_0.a.x, 91893u, var_0.a.x) % vec4<u32>(32u))) & _wgslsmith_add_vec4_u32(vec4<u32>(13457u, u_input.a.x, var_0.c.x, 45874u), vec4<u32>(4294967295u, 65099u, 16522u, u_input.a.x)))).a.c.wy, vec2<bool>(true, func_4(25647u, 4294967295u, ~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_0.a.x))).a.c.x), var_1.a.c.xy);
    var var_4 = vec3<u32>(342u, _wgslsmith_mod_u32((4294967295u >> (var_0.c.x % 32u)) << (0u % 32u), 22528u), ~var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, -184f);
}

