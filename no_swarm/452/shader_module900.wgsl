struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: Struct_3,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 19019u, 93560u, 0u), vec4<u32>(0u, 34488u, 0u, 4294967295u), vec4<u32>(13223u, 1u, 0u, 6283u), vec4<u32>(44102u, 32330u, 7183u, 50263u), vec4<u32>(4294967295u, 980u, 14594u, 6509u), vec4<u32>(23603u, 4294967295u, 45353u, 35077u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b.wwz, min(abs(u_input.b.wzx), vec3<u32>(u_input.b.x, ~11117u, u_input.c))), ~u_input.a);
    var var_1 = Struct_1(firstTrailingBit(~countOneBits(-1i)), 85177u);
    let var_2 = Struct_1(-1i, ~4294967295u);
    let var_3 = u_input.b.x;
    global0 = array<vec4<u32>, 7>();
    return _wgslsmith_dot_vec2_u32(min(~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_2.b, 9992u), vec2<u32>(var_0.x, var_1.b)), u_input.a.xx | vec2<u32>(4294967295u, u_input.b.x)), _wgslsmith_mod_vec2_u32(u_input.a.xx, _wgslsmith_clamp_vec2_u32(vec2<u32>(51191u, var_2.b) ^ vec2<u32>(var_0.x, 6479u), select(vec2<u32>(43240u, 20022u), vec2<u32>(4294967295u, var_0.x), true), var_0.zy))), ~(~vec2<u32>(abs(12430u), _wgslsmith_sub_u32(var_0.x, 0u))));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> f32 {
    global0 = array<vec4<u32>, 7>();
    let var_0 = Struct_1(-49410i, ~firstTrailingBit((u_input.a.x & 1u) << (func_3() % 32u)));
    global0 = array<vec4<u32>, 7>();
    var var_1 = !select(!arg_0.b, vec2<bool>(true, true), arg_0.b);
    global0 = array<vec4<u32>, 7>();
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_3(Struct_2(vec3<i32>(2147483647i, -22414i, arg_0.a), arg_0, -1641f, arg_0), vec2<bool>(false, false), vec4<f32>(873f, 133f, -250f, -471f), vec2<f32>(1454f, -1316f), arg_0.a), 469f)), _wgslsmith_f_op_f32(ceil(-692f)), _wgslsmith_f_op_f32(ceil(1272f)), _wgslsmith_f_op_f32(max(-1102f, 695f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1863f, 318f, 508f, -1582f)))))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(498f, 420f, 1000f, 1000f)))))))));
    var var_1 = vec3<bool>(true, !any(vec2<bool>(any(vec4<bool>(true, false, false, true)), true)), ~(~_wgslsmith_dot_vec3_u32(u_input.b.wzx, u_input.a)) > firstTrailingBit(18802u));
    var var_2 = -514f;
    let var_3 = Struct_1(min(2147483647i, abs(arg_0.a >> (97480u % 32u)) | arg_0.a), _wgslsmith_add_u32((_wgslsmith_add_u32(4294967295u, u_input.c) >> ((u_input.c >> (6825u % 32u)) % 32u)) ^ 0u, _wgslsmith_add_u32(arg_1, countOneBits(1u))));
    let var_4 = ~4294967295u;
    return Struct_4(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(max(var_0.x, var_0.x)))))), all(select(!select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(false, false, false), vec3<bool>(false, false, var_1.x)), select(!vec3<bool>(true, var_1.x, false), vec3<bool>(false, var_1.x, var_1.x), select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, false, true), vec3<bool>(false, false, var_1.x))), !select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x)))), Struct_3(Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(0i, arg_0.a, var_3.a), firstTrailingBit(vec3<i32>(25839i, var_3.a, arg_0.a))), arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-505f)))), Struct_1(-19983i, 90155u)), vec2<bool>(!var_1.x & var_1.x, var_1.x), vec4<f32>(_wgslsmith_div_f32(-489f, var_0.x), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(select(var_0.x, -1865f, false)), -1302f), _wgslsmith_f_op_vec2_f32(-var_0.zy), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(2147483647i, var_3.a, var_3.a), reverseBits(vec3<i32>(var_3.a, -6612i, 2147483647i))), _wgslsmith_mod_vec3_i32(vec3<i32>(var_3.a, var_3.a, -27729i), vec3<i32>(16839i, arg_0.a, var_3.a)) ^ vec3<i32>(var_3.a, 65288i, arg_0.a))), !vec2<bool>(false, true & any(var_1.yz)));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(152f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a.x))) - arg_1.c.a.c)));
    var var_1 = Struct_3(func_1(func_1(func_1(func_1(Struct_1(arg_1.c.a.b.a, arg_2.b), 55397u).c.a.d, 0u).c.a.b, ~_wgslsmith_mult_u32(39649u, arg_1.c.a.d.b)).c.a.d, 1u | _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_2.b), vec2<u32>(53934u, arg_1.c.a.d.b)), u_input.a.xy & vec2<u32>(4294967295u, 52131u))).c.a, vec2<bool>(any(select(select(vec4<bool>(arg_1.d.x, false, false, arg_1.d.x), vec4<bool>(false, true, arg_1.c.b.x, true), arg_1.c.b.x), vec4<bool>(true, true, arg_1.b, false), false)), arg_1.d.x), _wgslsmith_f_op_vec4_f32(-arg_1.c.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.c.c.xz - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-387f, var_0))))), 0i);
    global0 = array<vec4<u32>, 7>();
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_2.a, _wgslsmith_mult_i32(arg_1.c.a.a.x, ~9738i)), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.c.e, func_1(arg_2, u_input.a.x).c.a.b.a), vec2<i32>(52388i, arg_2.a) << (vec2<u32>(0u, u_input.b.x) % vec2<u32>(32u)))), var_1.a.a.yy);
    var var_3 = max(u_input.a, vec3<u32>(_wgslsmith_div_u32(~(~1u), 38056u), ~(~(~4294967295u)), abs(var_1.a.d.b)));
    return false;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<i32>) -> StorageBuffer {
    var var_0 = true;
    global0 = array<vec4<u32>, 7>();
    var_0 = any(select(select(!select(arg_0, arg_0, arg_0.x), arg_0, arg_0.x && true), vec3<bool>(func_4(284f, Struct_4(vec2<f32>(-185f, 323f), arg_0.x, Struct_3(Struct_2(vec3<i32>(9019i, -1i, 2147483647i), Struct_1(-41452i, u_input.b.x), -412f, Struct_1(arg_1.x, u_input.a.x)), vec2<bool>(true, arg_0.x), vec4<f32>(-393f, 385f, -295f, 1374f), vec2<f32>(-304f, 1150f), 1i), arg_0.xy), Struct_1(arg_1.x, 19125u)), false, false), select(!select(arg_0, vec3<bool>(true, false, arg_0.x), arg_0.x), arg_0, true)));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(trunc(175f))) + -1204f))));
    global0 = array<vec4<u32>, 7>();
    return StorageBuffer(vec4<f32>(var_1, _wgslsmith_f_op_f32(-1168f - -1119f), _wgslsmith_f_op_f32(869f - var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_1)))))), vec3<f32>(_wgslsmith_f_op_f32(-735f - var_1), var_1, _wgslsmith_div_f32(1879f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1006f, 414f))))), _wgslsmith_f_op_f32(ceil(var_1)), _wgslsmith_mod_u32(u_input.b.x, select(max(1u, _wgslsmith_add_u32(u_input.b.x, u_input.c)), _wgslsmith_add_u32(min(u_input.b.x, u_input.c), ~u_input.a.x), _wgslsmith_f_op_f32(-var_1) <= _wgslsmith_div_f32(var_1, 1959f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 7>();
    global0 = array<vec4<u32>, 7>();
    global0 = array<vec4<u32>, 7>();
    global0 = array<vec4<u32>, 7>();
    global0 = array<vec4<u32>, 7>();
    global0 = array<vec4<u32>, 7>();
    global0 = array<vec4<u32>, 7>();
    let x = u_input.a;
    s_output = func_5(!vec3<bool>(true, true, func_4(_wgslsmith_div_f32(-389f, 887f), func_1(Struct_1(-13906i, u_input.a.x), 0u), func_1(Struct_1(1i, 0u), u_input.b.x).c.a.b)), -(~(-vec2<i32>(2147483647i, 0i))));
}

