struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: i32,
}

struct Struct_5 {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(vec4<u32>(45592u, 0u, 1u, 0u), 4294967295u, vec2<bool>(true, true)), Struct_3(1000f, false), -1i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: i32) -> vec3<u32> {
    var var_0 = select(global0.a.a.x & u_input.a.x, ~1u, false);
    var var_1 = true;
    var_1 = true;
    var_0 = 30691u;
    var_1 = !all(select(select(select(vec4<bool>(global0.a.c.x, arg_0, arg_0, true), vec4<bool>(true, global0.a.c.x, arg_0, global0.b.b), true), select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(global0.b.b, false, arg_0, global0.a.c.x), vec4<bool>(true, true, true, false)), true), vec4<bool>(false, true, global0.a.c.x, global0.a.c.x || true), false));
    return _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a, global0.a.a.xzw, _wgslsmith_mult_vec3_u32(~u_input.a, global0.a.a.yzx)), ~min(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a, global0.a.a.wyy), vec3<u32>(0u, 1u, 0u)), firstTrailingBit(global0.a.a.wxz) << (global0.a.a.zzz % vec3<u32>(32u))));
}

fn func_2(arg_0: Struct_3) -> bool {
    global0 = Struct_4(Struct_1(min(global0.a.a, abs(global0.a.a)), u_input.a.x | u_input.a.x, select(select(global0.a.c, !vec2<bool>(global0.b.b, global0.a.c.x), global0.a.c), !global0.a.c, vec2<bool>(true, true))), global0.b, -1i);
    global0 = Struct_4(Struct_1(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.a), func_3(true, vec4<i32>(u_input.b, -31917i, -27156i, u_input.b), global0.c)), ~_wgslsmith_dot_vec2_u32(u_input.a.yy, global0.a.a.wx), 9745u), _wgslsmith_dot_vec2_u32(u_input.a.zz, _wgslsmith_clamp_vec2_u32(func_3(arg_0.b, vec4<i32>(-29885i, u_input.b, global0.c, -3505i), -6739i).xx, abs(u_input.a.zx), global0.a.a.ww)), global0.a.c), arg_0, ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(global0.c, 29096i), vec2<i32>(1i, 1i))));
    global0 = Struct_4(Struct_1(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global0.a.a.x, u_input.a.x, 0u, global0.a.b), ~global0.a.a | vec4<u32>(44065u, u_input.a.x, 0u, 1u), firstTrailingBit(global0.a.a) & ~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 4294967295u)), 0u, select(global0.a.c, vec2<bool>(any(vec4<bool>(arg_0.b, global0.a.c.x, arg_0.b, true)), all(vec4<bool>(global0.a.c.x, true, false, global0.b.b))), true)), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global0.b.a, arg_0.a, arg_0.b))))), true), _wgslsmith_sub_i32(~u_input.b ^ _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, global0.c, u_input.b, u_input.b), vec4<i32>(-2147483647i, u_input.b, 40523i, -1i), vec4<i32>(global0.c, 11924i, 0i, global0.c)), vec4<i32>(2147483647i, 1i, 69140i, global0.c) | vec4<i32>(u_input.b, u_input.b, -2147483647i, -25155i)), global0.c));
    global0 = Struct_4(global0.a, arg_0, abs(firstLeadingBit(global0.c)));
    return !(_wgslsmith_div_u32(_wgslsmith_clamp_u32(firstTrailingBit(global0.a.a.x), 4294967295u, u_input.a.x >> (39166u % 32u)), global0.a.b) < 21451u);
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = (_wgslsmith_div_u32(16830u | _wgslsmith_sub_u32(48587u, arg_3.b), _wgslsmith_mod_u32(~u_input.a.x, 27101u)) >> (u_input.a.x % 32u)) >> (42493u % 32u);
    var var_1 = Struct_2(~firstTrailingBit(vec3<i32>(u_input.b, min(global0.c, -19403i), u_input.b | global0.c)), Struct_1(arg_3.a, _wgslsmith_dot_vec2_u32(global0.a.a.zy, ~global0.a.a.zy), vec2<bool>(all(select(vec4<bool>(arg_1, true, true, arg_3.c.x), vec4<bool>(arg_3.c.x, arg_1, false, false), vec4<bool>(true, true, true, global0.a.c.x))), _wgslsmith_f_op_f32(ceil(-1599f)) <= _wgslsmith_f_op_f32(global0.b.a - -1000f))), arg_3, global0.a, _wgslsmith_f_op_vec3_f32(arg_2.zwx + vec3<f32>(arg_0, arg_2.x, 340f)));
    global0 = Struct_4(var_1.d, global0.b, -21146i);
    let var_2 = !(select(~_wgslsmith_clamp_i32(26393i, global0.c, u_input.b), countOneBits(-1i), _wgslsmith_f_op_f32(step(global0.b.a, 541f)) < var_1.e.x) <= -_wgslsmith_mod_i32(0i, u_input.b & u_input.b));
    let var_3 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(33636u, u_input.a.x, 6232u, global0.a.b) ^ vec4<u32>(0u, var_1.b.a.x, arg_3.b, var_1.d.a.x), var_1.d.a), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, 47995u), arg_3.a.x));
    return Struct_1(vec4<u32>(42894u | ~var_0, ~var_0, 1u, var_3.x), ~func_3(!all(vec3<bool>(var_2, global0.a.c.x, true)), -max(vec4<i32>(2147483647i, 11548i, 19275i, global0.c), vec4<i32>(u_input.b, u_input.b, global0.c, var_1.a.x)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(global0.c, global0.c, var_1.a.x, u_input.b), vec4<i32>(global0.c, 2147483647i, global0.c, 2147483647i), false), firstLeadingBit(vec4<i32>(1i, -2147483647i, -3992i, 0i)))).x, vec2<bool>(arg_3.c.x, any(select(select(vec3<bool>(global0.b.b, var_1.b.c.x, var_2), vec3<bool>(false, global0.a.c.x, true), true), select(vec3<bool>(arg_3.c.x, false, false), vec3<bool>(arg_3.c.x, true, false), true), select(vec3<bool>(global0.b.b, arg_3.c.x, false), vec3<bool>(true, global0.b.b, true), true)))));
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_3(1551f, !global0.a.c.x);
    var var_1 = false;
    global0 = Struct_4(func_4(var_0.a, func_2(Struct_3(_wgslsmith_f_op_f32(-global0.b.a), select(var_0.b, true, true))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(426f, 146f, -2535f, var_0.a), vec4<f32>(global0.b.a, -1364f, var_0.a, 277f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a, var_0.a, var_0.a, global0.b.a), vec4<f32>(var_0.a, var_0.a, -1737f, -867f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.a, global0.b.a, -560f, var_0.a) - vec4<f32>(global0.b.a, var_0.a, var_0.a, var_0.a)), vec4<f32>(var_0.a, 1364f, -328f, var_0.a), var_0.a <= global0.b.a)))), global0.a), Struct_3(_wgslsmith_div_f32(1199f, 1000f), all(func_4(_wgslsmith_f_op_f32(-var_0.a), true, _wgslsmith_div_vec4_f32(vec4<f32>(-259f, global0.b.a, 1583f, var_0.a), vec4<f32>(global0.b.a, global0.b.a, global0.b.a, var_0.a)), func_4(var_0.a, global0.a.c.x, vec4<f32>(1187f, -1000f, global0.b.a, 493f), global0.a)).c)), _wgslsmith_dot_vec2_i32(countOneBits(~(~vec2<i32>(u_input.b, u_input.b))), vec2<i32>(u_input.b << (_wgslsmith_mult_u32(1u, u_input.a.x) % 32u), _wgslsmith_clamp_i32(global0.c, firstTrailingBit(u_input.b), -36588i >> (u_input.a.x % 32u)))));
    global0 = Struct_4(Struct_1(global0.a.a, 6889u, vec2<bool>(var_0.b, any(vec3<bool>(false, false, global0.b.b)))), var_0, -4207i);
    global0 = Struct_4(Struct_1(~vec4<u32>(abs(global0.a.a.x), 3259u, 111936u, ~41287u), _wgslsmith_mult_u32(4715u, global0.a.b) | func_4(1000f, !var_0.b, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.b.a, 733f, var_0.a, var_0.a), vec4<f32>(335f, global0.b.a, global0.b.a, var_0.a))), Struct_1(global0.a.a, 0u, global0.a.c)).b, select(vec2<bool>(true, true), vec2<bool>(var_0.b, u_input.b <= global0.c), true)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1225f)))) - global0.b.a), true), -global0.c);
    return Struct_4(func_4(2068f, any(vec4<bool>(var_0.b, u_input.b < global0.c, all(vec2<bool>(var_0.b, var_0.b)), var_0.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a, -467f, global0.b.a, var_0.a), vec4<f32>(global0.b.a, -629f, 1523f, global0.b.a))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.b.a, var_0.a, var_0.a, 473f)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.b.a, var_0.a, -1789f, var_0.a))), true)), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-917f - -1122f)), false, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -2493f, -1980f, -1000f) + vec4<f32>(-2585f, 1081f, global0.b.a, -701f)), func_4(_wgslsmith_div_f32(165f, global0.b.a), true, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.b.a, global0.b.a, -1563f, -1245f), vec4<f32>(var_0.a, -1497f, global0.b.a, -612f))), global0.a))), var_0, -40691i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = func_1();
    var var_0 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.a, 33704i);
}

