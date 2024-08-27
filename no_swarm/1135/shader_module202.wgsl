struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 9>;

var<private> global1: Struct_5;

var<private> global2: vec2<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2() -> bool {
    return false;
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: vec3<bool>, arg_3: bool) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_0.d.a + vec4<f32>(-1107f, 1704f, 946f, 565f)))))), arg_1, !(arg_0.b.x >= 12029u), (~u_input.a.xy & select(abs(u_input.a.xw), vec2<i32>(1i, global1.b.a.x), true)) << (_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(25823u, u_input.d.x)), firstTrailingBit(countOneBits(arg_0.b.yy))) % vec2<u32>(32u)), arg_2);
    let var_1 = Struct_4(true, vec3<u32>(arg_0.b.x, select(_wgslsmith_add_u32(1u, 59945u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u) >> (vec2<u32>(u_input.b.x, 48126u) % vec2<u32>(32u)), u_input.b.xz), true), _wgslsmith_add_u32(arg_0.b.x, _wgslsmith_mod_u32(u_input.c, 1u))), global1.b.a.x, Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_0.d.a, vec4<f32>(var_0.a.x, global1.a.x, arg_0.d.a.x, -1000f))) - vec4<f32>(2041f, -1092f, arg_0.d.a.x, global1.a.x))))));
    var_0 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(1075f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.a.x - global1.c.b.x)), var_1.d.a.x, _wgslsmith_f_op_f32(-966f - 1010f)), vec4<f32>(827f, _wgslsmith_f_op_f32(-var_1.d.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-116f)) + _wgslsmith_f_op_f32(-var_0.a.x)), -476f)), var_0.c, !select(true, true, !any(arg_2.yy)), u_input.a.zx, var_0.e);
    let var_2 = arg_0.d.a.x;
    return !select(select(!(!vec4<bool>(true, false, false, arg_3)), vec4<bool>(any(arg_2.zz), select(var_1.a, true, true), all(arg_2.zy), any(vec2<bool>(arg_1, true))), select(select(vec4<bool>(true, arg_1, true, true), vec4<bool>(true, arg_0.a, arg_3, arg_2.x), vec4<bool>(true, var_0.b, arg_3, arg_3)), vec4<bool>(true, true, false, true), vec4<bool>(false, arg_3, arg_1, arg_0.a))), vec4<bool>(false, all(select(vec4<bool>(arg_2.x, false, true, var_0.b), vec4<bool>(true, var_1.a, var_1.a, arg_2.x), vec4<bool>(true, arg_0.a, arg_2.x, true))), ~7037u >= var_1.b.x, arg_0.d.a.x < _wgslsmith_div_f32(var_2, var_1.d.a.x)), select(select(select(vec4<bool>(var_0.b, true, true, var_1.a), vec4<bool>(arg_3, false, arg_0.a, false), vec4<bool>(arg_2.x, arg_3, arg_0.a, var_1.a)), !vec4<bool>(true, true, true, arg_1), !vec4<bool>(false, false, arg_2.x, false)), !vec4<bool>(true, false, false, arg_2.x), false));
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.b.x, _wgslsmith_f_op_f32(f32(-1f) * -946f), _wgslsmith_f_op_f32(-arg_3)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, 659f, global1.b.b.x) + global1.b.b) - _wgslsmith_div_vec3_f32(arg_2.a.zyw, arg_2.a.zzw))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1060f, 266f, global1.a.x)))))));
    var var_1 = select(~(~vec3<i32>(1i & u_input.a.x, ~(-1i), -1i)), ((vec3<i32>(1i, 0i, global1.b.a.x) >> (u_input.d.xzx % vec3<u32>(32u))) ^ abs(_wgslsmith_clamp_vec3_i32(global1.c.a.yyx, u_input.a.wxz, vec3<i32>(u_input.a.x, global1.b.a.x, arg_0)))) | ~vec3<i32>(-19471i, 54341i, ~global2.x), select(func_3(Struct_4(arg_1.x && true, u_input.b.wxx, min(-14745i, 0i), arg_2), false && (-1288f >= arg_2.a.x), vec3<bool>(true, all(vec3<bool>(true, true, arg_1.x)), true), _wgslsmith_f_op_f32(select(858f, arg_2.a.x, arg_1.x)) <= _wgslsmith_f_op_f32(sign(1536f))).wxz, !vec3<bool>(arg_1.x, false, true), all(select(arg_1.xw, arg_1.xx, arg_1.x)) != true));
    global2 = firstTrailingBit(vec2<i32>(~(select(global2.x, global1.c.a.x, arg_1.x) << (0u % 32u)), global2.x));
    return (_wgslsmith_add_i32(50363i, 6332i) == (-_wgslsmith_sub_i32(arg_0, arg_0) << (u_input.b.x % 32u))) || arg_1.x;
}

fn func_1() -> vec4<i32> {
    let var_0 = !(!(false | all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true))));
    global2 = -(~(~vec2<i32>(-global1.b.a.x, global1.c.a.x)));
    var var_1 = select(func_2(), all(vec2<bool>(!func_2(), true)), false);
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-global1.a), Struct_3(_wgslsmith_clamp_vec4_i32(u_input.a, min(~u_input.a, _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 2147483647i, 0i, 2147483647i), vec4<i32>(0i, 2147483647i, u_input.a.x, 33167i))), _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(6504i, global2.x, 28601i, 6047i)), u_input.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(-global1.c.b.x), _wgslsmith_f_op_f32(global1.c.b.x - global1.c.b.x)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global1.a.wzw))))), global1.c);
    let var_3 = Struct_4(!func_4(firstTrailingBit(_wgslsmith_mod_i32(-1i, u_input.a.x)), select(select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(true, var_0, var_0, true)), func_3(Struct_4(var_0, u_input.d.zwx, 20303i, Struct_2(vec4<f32>(-245f, global1.b.b.x, global1.b.b.x, 1570f))), false, vec3<bool>(false, var_0, false), var_0), false), Struct_2(vec4<f32>(var_2.b.b.x, 2007f, var_2.b.b.x, -1000f)), _wgslsmith_f_op_f32(-1f)), countOneBits(u_input.d.xxx), ~(-1i), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2551f, var_2.c.b.x, global1.b.b.x, var_2.c.b.x)))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 9>();
    let var_0 = false;
    var var_1 = _wgslsmith_mod_i32(firstTrailingBit(-u_input.a.x | global1.c.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-global1.b.a, u_input.a), _wgslsmith_mod_vec4_i32(u_input.a, -u_input.a)) ^ global1.b.a.x);
    var_1 = _wgslsmith_div_i32(abs(-25165i), -(global2.x | _wgslsmith_dot_vec4_i32(func_1(), abs(global1.b.a))));
    let var_2 = global1.c.b;
    let var_3 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(-countOneBits(1554i), 2147483647i, -84596i) << (1u % 32u), _wgslsmith_add_i32(global2.x | -18304i, 1i));
    var var_4 = ~u_input.d.x ^ 1u;
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.b, ~select(vec4<u32>(27831u, u_input.b.x, u_input.d.x, u_input.c), vec4<u32>(10285u, u_input.b.x, u_input.d.x, u_input.b.x), vec4<bool>(var_0, false, false, var_0)) << (u_input.b % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1914f, var_2.x, _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(min(var_2.x, -1251f))))), 22420i);
}

