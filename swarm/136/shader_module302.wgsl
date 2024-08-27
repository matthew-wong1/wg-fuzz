struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(15513i, -38112i), vec4<f32>(350f, 267f, -664f, 1000f), 1045f, false);

var<private> global2: Struct_1 = Struct_1(vec2<i32>(2742i, 59589i), vec4<f32>(1000f, 1217f, -846f, 1431f), -502f, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_2) -> u32 {
    global1 = arg_2.b;
    var var_0 = global1.d || (global0.b.d & global0.b.d);
    global0 = arg_2;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global2.c, global1.c), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.b.b.x, global0.b.b.x), _wgslsmith_f_op_f32(-291f + arg_2.b.c), 0u < u_input.c)))), Struct_1(vec2<i32>(u_input.a.x, arg_1.a.x), vec4<f32>(-806f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-645f))), _wgslsmith_f_op_f32(-global1.b.x), arg_2.a.x), -1222f, all(!select(vec4<bool>(global1.d, global0.b.d, global2.d, global0.b.d), vec4<bool>(false, global0.b.d, arg_2.b.d, arg_2.b.d), vec4<bool>(true, true, true, false)))), u_input.c | reverseBits(33493u));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1647f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.b.x + 1128f), global1.c))), global0.a.x, true)));
    return 4294967295u;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: Struct_3) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b.x, _wgslsmith_f_op_f32(-arg_2.x))))) - _wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.b.x) * _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(351f - arg_2.x) + arg_3.b.b.x)))));
    global0 = arg_3.a;
    var var_1 = arg_3.a;
    var var_2 = arg_3.a;
    return global1.b.wy;
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<i32>) -> Struct_4 {
    global1 = global0.b;
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(func_4(func_3(_wgslsmith_f_op_vec4_f32(select(global1.b, global1.b, vec4<bool>(global2.d, true, global1.d, false))), Struct_4(vec3<i32>(global0.b.a.x, global1.a.x, 1i)), Struct_2(_wgslsmith_f_op_vec2_f32(global2.b.xy + vec2<f32>(global1.c, 169f)), global0.b, firstLeadingBit(u_input.b.x))), Struct_4(~(u_input.a << (u_input.b.yyx % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, global0.b.c))))), Struct_3(Struct_2(_wgslsmith_div_vec2_f32(global1.b.ww, vec2<f32>(global0.a.x, arg_1)), global0.b, ~107036u), global0.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-31131i, u_input.a.x), -arg_2)))), global0.b, _wgslsmith_mult_u32(u_input.c, 1u));
    global1 = global0.b;
    global0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(abs(-527f)), _wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(select(213f, global2.b.x, false))))), global0.b, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, u_input.b), vec4<u32>(1u, ~31813u, _wgslsmith_mult_u32(37009u, 42136u), 1u)), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, 1u), u_input.c), ~_wgslsmith_sub_u32(16792u, 5781u), _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.b.x, global0.c, u_input.c, global0.c), u_input.b), u_input.b), ~(~global0.c))));
    var var_0 = -(~select(countOneBits(global1.a.x), 1i >> (_wgslsmith_mult_u32(0u, arg_0.x) % 32u), true));
    return Struct_4(vec3<i32>(reverseBits(global2.a.x), ~global0.b.a.x, ~1i >> (_wgslsmith_dot_vec2_u32(u_input.b.zx, select(u_input.b.zz, vec2<u32>(10037u, 6701u), vec2<bool>(false, true))) % 32u)));
}

fn func_5(arg_0: u32, arg_1: Struct_5) -> Struct_4 {
    let var_0 = global2.c;
    var var_1 = Struct_4(_wgslsmith_clamp_vec3_i32(max(max(vec3<i32>(3858i, 56998i, 1i), arg_1.a.a) ^ vec3<i32>(2147483647i, 1i, 1i), -(~vec3<i32>(28258i, u_input.a.x, global0.b.a.x))), _wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(-60418i, -u_input.a.x, -20340i | global2.a.x)), func_2(vec2<u32>(~1u, 1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x - 986f), _wgslsmith_f_op_f32(-136f - global1.b.x)), vec2<i32>(2147483647i, arg_1.a.a.x) << (u_input.b.wz % vec2<u32>(32u))).a));
    var_1 = arg_1.a;
    var var_2 = countOneBits(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-53244i, ~(17585i >> (1u % 32u))), ~(~(~(-2147483647i))), -2147483647i));
    let var_3 = true;
    return func_2(countOneBits(~_wgslsmith_mod_vec2_u32(vec2<u32>(38358u, arg_0), abs(u_input.b.zw))), 683f, abs(~vec2<i32>(~47799i, -global1.a.x)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    var var_0 = Struct_5(func_5(_wgslsmith_div_u32(55728u, arg_0.x), Struct_5(func_2(u_input.b.wz, _wgslsmith_f_op_f32(-global1.b.x), vec2<i32>(global1.a.x, 2147483647i)))));
    var var_1 = select(~countOneBits(_wgslsmith_add_vec4_u32(~u_input.b, _wgslsmith_sub_vec4_u32(u_input.b, u_input.b))), reverseBits(vec4<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), arg_0.x, _wgslsmith_div_u32(~u_input.b.x, 60353u), ~53135u)), !(!global0.b.d));
    let var_2 = select(select(vec2<bool>(true, true), select(!vec2<bool>(true, global1.d), select(select(vec2<bool>(global2.d, global2.d), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), global2.d), select(select(vec2<bool>(true, global2.d), vec2<bool>(true, global1.d), vec2<bool>(global1.d, true)), vec2<bool>(true, true), !global2.d)), !select(select(vec2<bool>(global2.d, false), vec2<bool>(global1.d, global2.d), global2.d), select(vec2<bool>(global0.b.d, global2.d), vec2<bool>(true, global2.d), vec2<bool>(true, global1.d)), true)), select(vec2<bool>(!global1.d, firstTrailingBit(global0.c) > _wgslsmith_mod_u32(u_input.c, u_input.b.x)), select(select(!vec2<bool>(global1.d, true), select(vec2<bool>(true, global2.d), vec2<bool>(global2.d, global1.d), true), vec2<bool>(global1.d, global1.d)), vec2<bool>(global1.d, global2.c < -103f), !(!global0.b.d)), select(select(vec2<bool>(global0.b.d, true), !vec2<bool>(true, global1.d), false), select(vec2<bool>(global0.b.d, false), select(vec2<bool>(global0.b.d, global1.d), vec2<bool>(global1.d, true), false), false), true)), select(vec2<bool>(!(!global2.d), false), vec2<bool>(global0.b.d, any(vec4<bool>(true, false, global0.b.d, true))), vec2<bool>(!(global2.d | true), global1.d)));
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.xw) * global2.b.zz)), Struct_1(reverseBits(global0.b.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, global1.c, global2.c, global2.b.x) + _wgslsmith_div_vec4_f32(global1.b, global0.b.b)) * _wgslsmith_f_op_vec4_f32(-global0.b.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(532f, global1.c, var_2.x)) - _wgslsmith_f_op_f32(-global2.c)))), false), _wgslsmith_add_u32(~72011u, 0u) >> (arg_0.x % 32u));
    let var_3 = Struct_4(u_input.a & vec3<i32>(u_input.a.x, 2147483647i, global0.b.a.x));
    return Struct_3(Struct_2(vec2<f32>(global1.b.x, global2.b.x), global0.b, global0.c), global0.b, global0.b.a.x);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3) -> Struct_2 {
    global1 = arg_1.b;
    let var_0 = -_wgslsmith_add_i32(arg_1.b.a.x, _wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(global2.a.x, u_input.a.x, u_input.a.x, 0i), vec4<i32>(u_input.a.x, u_input.a.x, -16994i, 2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 29539i, -6408i, 22076i) << (vec4<u32>(0u, arg_0.a.c, arg_0.a.c, 11462u) % vec4<u32>(32u)), select(vec4<i32>(global1.a.x, arg_0.a.b.a.x, 5681i, -2147483647i), vec4<i32>(-1i, global1.a.x, u_input.a.x, 0i), true), _wgslsmith_clamp_vec4_i32(vec4<i32>(global2.a.x, arg_1.a.b.a.x, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, global1.a.x, global0.b.a.x, 12702i), vec4<i32>(arg_0.c, -2147483647i, -8024i, 0i)))));
    global0 = func_1(u_input.b.zx).a;
    return func_1(~vec2<u32>(~0u, func_3(global1.b, Struct_4(u_input.a), Struct_2(vec2<f32>(arg_0.a.a.x, global0.b.b.x), Struct_1(vec2<i32>(global0.b.a.x, -15869i), vec4<f32>(global1.b.x, 251f, -1278f, -2495f), arg_0.b.b.x, false), global0.c)) >> (4294967295u % 32u))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_6(func_1(~(~u_input.b.wz)), func_1(u_input.b.yx & ~vec2<u32>(4294967295u, 31615u))), func_1(vec2<u32>(global0.c, global0.c)).a.b, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(30987i, func_1(u_input.b.yy).b.a.x, _wgslsmith_div_i32(u_input.a.x, global1.a.x), -3119i), vec4<i32>(global0.b.a.x, global1.a.x, u_input.a.x, global2.a.x) >> (vec4<u32>(26306u, u_input.c, u_input.c, u_input.b.x) % vec4<u32>(32u))), u_input.a.x));
    var var_1 = func_5(22153u, Struct_5(Struct_4(~u_input.a << (u_input.b.yzw % vec3<u32>(32u)))));
    let var_2 = Struct_5(Struct_4(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.b.a.x, -759i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.x, var_1.a.x, var_1.a.x, 0i), vec4<i32>(global1.a.x, 17442i, -18691i, 24101i))), u_input.a)));
    var var_3 = _wgslsmith_sub_vec3_i32(select(~(u_input.a << (u_input.b.xwx % vec3<u32>(32u))) ^ min(vec3<i32>(-16245i, -444i, 1i), vec3<i32>(u_input.a.x, global0.b.a.x, 2147483647i)), -(~vec3<i32>(5096i, -1i, global2.a.x)) << (vec3<u32>(func_3(var_0.a.b.b, Struct_4(vec3<i32>(u_input.a.x, u_input.a.x, -6274i)), var_0.a), 1u, var_0.a.c & 13635u) % vec3<u32>(32u)), !vec3<bool>(!global2.d, global1.d, var_0.b.b.x != var_0.a.a.x)), -firstTrailingBit(func_2(vec2<u32>(1u, 4294967295u), -1000f, vec2<i32>(var_2.a.a.x, 8679i)).a));
    let var_4 = firstLeadingBit(_wgslsmith_sub_i32(u_input.a.x, global2.a.x)) >> (func_6(var_0, var_0).c % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1113f)) - _wgslsmith_f_op_f32(f32(-1f) * -414f)), _wgslsmith_f_op_f32(select(1121f, _wgslsmith_f_op_f32(global0.b.b.x - _wgslsmith_f_op_f32(160f + global0.a.x)), global0.c > 1u))), _wgslsmith_mult_u32(var_0.a.c, _wgslsmith_sub_u32(~4294967295u, var_0.a.c)), -abs(~(~vec4<i32>(10343i, var_0.b.a.x, u_input.a.x, var_4))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.c + _wgslsmith_f_op_f32(f32(-1f) * -140f)), _wgslsmith_f_op_f32(global2.c * _wgslsmith_f_op_f32(f32(-1f) * -621f))))), global0.b.a.x);
}

