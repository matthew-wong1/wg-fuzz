struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 9>;

var<private> global1: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(1620f), Struct_4(2098f), Struct_4(206f), Struct_4(272f), Struct_4(-1069f), Struct_4(1324f), Struct_4(-454f), Struct_4(-544f), Struct_4(691f), Struct_4(190f), Struct_4(-2385f), Struct_4(1024f), Struct_4(984f), Struct_4(-423f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global0 = array<Struct_5, 9>();
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -272f), _wgslsmith_f_op_f32(-644f + -1339f)))))));
    var var_1 = min(firstTrailingBit(~(~u_input.b.x >> (~u_input.e % 32u))), u_input.b.x);
    var var_2 = vec3<i32>(i32(-1i) * -1i, abs(_wgslsmith_mod_i32(u_input.d, u_input.a.x) & _wgslsmith_sub_i32(u_input.c & 1i, max(u_input.c, u_input.d))), _wgslsmith_mult_i32(max(countOneBits(-2147483647i), -1i), 1i));
    let var_3 = u_input.b.x;
    return _wgslsmith_f_op_f32(var_0.x - var_0.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_5, arg_3: vec2<f32>) -> f32 {
    var var_0 = 18304i;
    let var_1 = _wgslsmith_f_op_f32(max(-432f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1342f, arg_1.x, true)) - -778f)));
    var var_2 = Struct_5(~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(arg_2.a, u_input.b.x)), countOneBits(arg_2.a))), true, arg_0);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_1))) + arg_1), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_1))), vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x * -401f), _wgslsmith_f_op_f32(f32(-1f) * -565f), 805f)), true)) * vec3<f32>(-691f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1171f - arg_0.a), _wgslsmith_f_op_f32(exp2(arg_3.x))), _wgslsmith_f_op_f32(-arg_3.x)));
    var var_4 = Struct_5(_wgslsmith_clamp_u32(var_2.a, ~u_input.b.x, arg_2.a) >> (arg_2.a % 32u), !any(select(vec2<bool>(var_2.b, false), select(vec2<bool>(true, arg_2.b), vec2<bool>(var_2.b, true), vec2<bool>(arg_2.b, var_2.b)), vec2<bool>(var_2.b, true))), Struct_3(-963f, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_3 + _wgslsmith_f_op_vec2_f32(abs(arg_3))), var_2.c.b))));
    return _wgslsmith_f_op_f32(floor(arg_3.x));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_4) -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-793f, -949f)))))), arg_0.xx);
    global0 = array<Struct_5, 9>();
    global0 = array<Struct_5, 9>();
    let var_1 = select(reverseBits(~vec3<u32>(firstTrailingBit(u_input.b.x), ~0u, ~u_input.e)), min(~_wgslsmith_div_vec3_u32(~vec3<u32>(17086u, u_input.e, u_input.b.x), vec3<u32>(4294967295u, u_input.e, 21594u)), vec3<u32>(min(~4294967295u, ~u_input.b.x), countOneBits(0u), ~(~u_input.b.x))), select(vec3<bool>(true, true, true), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), any(vec4<bool>(true, true, true, true))));
    global0 = array<Struct_5, 9>();
    return !vec4<bool>(any(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), !(!(u_input.c > u_input.a.x)), false, all(!select(vec2<bool>(true, true), vec2<bool>(true, true), false)));
}

fn func_2() -> i32 {
    var var_0 = abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(-2147483647i, 0i, 1i, 35518i)), ~vec4<i32>(-13533i, u_input.c, u_input.a.x, u_input.c)) | reverseBits(vec4<i32>(u_input.c, 0i, u_input.a.x, u_input.c)), abs(min(vec4<i32>(-994i, 1i, 7112i, u_input.a.x), vec4<i32>(u_input.c, -25230i, -2147483647i, 75562i) >> (vec4<u32>(u_input.e, u_input.e, 0u, 4294967295u) % vec4<u32>(32u)))), -min(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, -1i), vec4<i32>(u_input.d, -1i, 42665i, u_input.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 9089i, 4454i, 21616i), vec4<i32>(u_input.a.x, -13989i, 2147483647i, 0i)))));
    var var_1 = func_5(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(648f + 1184f)), 781f), _wgslsmith_f_op_f32(func_4(Struct_3(-1598f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-459f, -2175f))), vec3<f32>(_wgslsmith_f_op_f32(step(1000f, 1000f)), _wgslsmith_f_op_f32(326f * -1223f), _wgslsmith_f_op_f32(func_3())), Struct_5(u_input.b.x, true, Struct_3(-659f, vec2<f32>(-1000f, -1000f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1136f), _wgslsmith_f_op_f32(ceil(126f))))), _wgslsmith_f_op_f32(901f * _wgslsmith_f_op_f32(1115f + _wgslsmith_f_op_f32(ceil(803f)))), _wgslsmith_f_op_f32(f32(-1f) * -1634f)), global1[_wgslsmith_index_u32(35844u, 14u)], Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + 122f)))))));
    var var_2 = Struct_3(1f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1231f, 256f))))));
    var_0 = -reverseBits(vec4<i32>(~min(var_0.x, u_input.d), -2147483647i, _wgslsmith_div_i32(-70150i, abs(-2147483647i)), var_0.x));
    var var_3 = global1[_wgslsmith_index_u32(0u | _wgslsmith_sub_u32(countOneBits(firstTrailingBit(~u_input.e)), u_input.b.x), 14u)];
    return ~var_0.x;
}

fn func_1(arg_0: vec3<u32>) -> Struct_3 {
    global0 = array<Struct_5, 9>();
    var var_0 = -12573i;
    var_0 = u_input.a.x & (i32(-1i) * -(func_2() >> (~arg_0.x % 32u)));
    var var_1 = ~(u_input.c >> (_wgslsmith_clamp_u32(54719u, _wgslsmith_mod_u32(0u, arg_0.x), countOneBits(40977u)) % 32u));
    var_1 = ~max(reverseBits(u_input.d & 1i) << (0u % 32u), ~u_input.d);
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-785f - 192f))))), -1632f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_3(1157f, vec2<f32>(-2372f, 1396f)), _wgslsmith_div_vec3_f32(vec3<f32>(-532f, 737f, 1590f), vec3<f32>(533f, -594f, 608f)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1803u, u_input.b.x), 9u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(1543f, 538f)))), 2028f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-863f, 630f), vec2<f32>(-1502f, -1838f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1220f, -171f)))))));
}

fn func_6(arg_0: Struct_5, arg_1: u32) -> Struct_3 {
    let var_0 = 2147483647i >> (arg_1 % 32u);
    var var_1 = arg_0.c;
    var var_2 = Struct_4(1f);
    let var_3 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(var_2.a - var_1.b.x), _wgslsmith_f_op_f32(func_4(Struct_3(arg_0.c.b.x, vec2<f32>(arg_0.c.b.x, 1175f)), vec3<f32>(271f, 2184f, 1416f), Struct_5(4294967295u, arg_0.b, Struct_3(-722f, arg_0.c.b)), arg_0.c.b)), _wgslsmith_div_f32(arg_0.c.b.x, -897f), 286f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.c.a, 795f, arg_0.c.a, -1598f)))))), Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_2.a, -1470f)))))), Struct_4(_wgslsmith_f_op_f32(func_3())));
    var var_4 = global1[_wgslsmith_index_u32(select(max(_wgslsmith_mod_u32(select(arg_0.a, ~arg_0.a, 2147483647i > var_0), u_input.b.x), arg_0.a), arg_0.a, false), 14u)];
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 9>();
    let var_0 = func_6(Struct_5(max(22502u, u_input.e), any(vec4<bool>(true, true, true, true)), func_1(vec3<u32>(~0u, ~u_input.e, ~19601u))), firstLeadingBit(_wgslsmith_add_u32(18074u, ~u_input.e)));
    global1 = array<Struct_4, 14>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1089f + -1000f))), var_0.b.x));
    let var_2 = 21678i <= u_input.a.x;
    var var_3 = Struct_4(func_6(Struct_5(~13650u, true, Struct_3(1743f, _wgslsmith_div_vec2_f32(var_1, var_1))), u_input.b.x).b.x);
    let var_4 = 47276u;
    let var_5 = (-(~(-u_input.c)) << (u_input.b.x % 32u)) << (53032u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(-946f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_0.a, -869f)))), var_1.x)));
}

