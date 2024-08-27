struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: u32) -> vec2<i32> {
    let var_0 = -firstTrailingBit(i32(-1i) * -_wgslsmith_mult_i32(-34011i, 1i));
    var var_1 = Struct_2(-54270i ^ _wgslsmith_mult_i32(firstTrailingBit(-1i), -(~arg_0)), Struct_1(~u_input.e, true, !select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, false), true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(trunc(-1043f)))));
    global0 = -(~var_1.a);
    var_1 = Struct_2(_wgslsmith_add_i32(u_input.d, abs(i32(-1i) * -1i)), var_1.b, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-876f, var_1.c))));
    global0 = var_1.a;
    return -_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.b.x, ~18854i), -7460i), u_input.b.zx, u_input.b.xx);
}

fn func_2() -> Struct_2 {
    global0 = 1i;
    global0 = _wgslsmith_div_i32(-1i, u_input.d);
    var var_0 = func_3(u_input.b.x, -12671i, u_input.a) & vec2<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.b.x, 2147483647i) | vec4<i32>(u_input.b.x, u_input.b.x, u_input.d, u_input.d), ~(-vec4<i32>(u_input.b.x, 0i, u_input.b.x, 1i))));
    var var_1 = _wgslsmith_div_u32(select(u_input.a, 40005u, true) | u_input.e, ~u_input.a);
    let var_2 = Struct_2(-firstTrailingBit(1i), Struct_1(~reverseBits(u_input.e & 4294967295u), _wgslsmith_f_op_f32(round(1602f)) < -273f, select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, false, true)), false)), _wgslsmith_f_op_f32(-661f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(850f + 2232f), 1f)));
    return Struct_2(-_wgslsmith_add_i32(countOneBits(var_0.x), _wgslsmith_mod_i32(-6982i, countOneBits(var_2.a))), Struct_1(~reverseBits(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c)), (var_2.c <= -655f) && (true && var_2.b.c.x), !var_2.b.c), 1000f);
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = any(!arg_1);
    global0 = ~(-2147483647i);
    var var_1 = Struct_3(func_2());
    global0 = 9246i;
    let var_2 = _wgslsmith_f_op_vec2_f32(-arg_2.zz);
    return Struct_1(min(4294967295u, firstTrailingBit(~_wgslsmith_div_u32(u_input.c.x, u_input.c.x))), true, vec2<bool>(99470u < _wgslsmith_sub_u32(u_input.e, _wgslsmith_mult_u32(5870u, var_1.a.b.a)), var_1.a.b.b));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_4) -> Struct_3 {
    global0 = 1i;
    var var_0 = arg_2;
    let var_1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.a.x), var_0.a.x, any(!vec2<bool>(arg_0.b.b, true)))), -839f));
    var var_2 = ~(~(~abs(vec4<u32>(arg_1.x, 0u, u_input.c.x, 18700u)))) ^ ~min(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, arg_0.b.a, arg_0.b.a, 0u), vec4<u32>(96089u, 50475u, arg_0.b.a, arg_0.b.a)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, arg_1.x, 4294967295u, arg_1.x) >> (vec4<u32>(4294967295u, arg_0.b.a, arg_0.b.a, u_input.a) % vec4<u32>(32u)), ~vec4<u32>(u_input.e, 95961u, 4294967295u, 53858u)));
    var var_3 = -1693f;
    return Struct_3(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1302f - 445f), -523f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2050f - -706f))))));
    global0 = 2578i;
    var_0 = 1u;
    var var_2 = func_4(Struct_2(_wgslsmith_dot_vec2_i32(-max(vec2<i32>(13527i, u_input.b.x), u_input.b.xy), abs(~vec2<i32>(u_input.d, 5530i))), func_1(all(vec3<bool>(false, false, true)), !select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec3<f32>(_wgslsmith_f_op_f32(step(var_1, var_1)), -391f, _wgslsmith_f_op_f32(-var_1))), var_1), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c.x | u_input.c.x, u_input.a, u_input.c.x)), vec3<u32>(~u_input.e, u_input.c.x, u_input.a & 0u) >> ((vec3<u32>(u_input.a, u_input.c.x, u_input.a) | ~vec3<u32>(36230u, 0u, u_input.a)) % vec3<u32>(32u))), Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_1, var_1), _wgslsmith_f_op_f32(round(1968f)), _wgslsmith_f_op_f32(f32(-1f) * -1290f)))));
    let var_3 = var_2.a.b.c.x;
    let var_4 = 1340f;
    let var_5 = select(countOneBits(abs(~vec4<u32>(var_2.a.b.a, var_2.a.b.a, 16512u, 11762u))), _wgslsmith_sub_vec4_u32(reverseBits(firstLeadingBit(vec4<u32>(1u, 151423u, var_2.a.b.a, var_2.a.b.a))), vec4<u32>(countOneBits(19694u), 0u, var_2.a.b.a, ~firstLeadingBit(52766u))), var_2.a.b.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.b.a, -u_input.b.xz << (_wgslsmith_mod_vec2_u32(~(~vec2<u32>(0u, 1u)), ~vec2<u32>(var_2.a.b.a, var_5.x)) % vec2<u32>(32u)), _wgslsmith_mod_u32(min(~(~4140u), 28460u), _wgslsmith_dot_vec3_u32(var_5.yyw, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, u_input.a, 0u), vec3<u32>(1u, var_2.a.b.a, var_5.x)))), 22264u, abs(select(_wgslsmith_sub_vec2_u32(var_5.wz, vec2<u32>(0u, 71268u)), firstLeadingBit(u_input.c), vec2<bool>(var_2.a.b.b, false)) ^ ~select(vec2<u32>(u_input.a, var_2.a.b.a), var_5.xz, var_2.a.b.b)));
}

