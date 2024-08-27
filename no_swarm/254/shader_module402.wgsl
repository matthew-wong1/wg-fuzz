struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: Struct_3,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1() -> u32 {
    var var_0 = ~firstTrailingBit(~u_input.a.x);
    return 46620u;
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> i32 {
    var var_0 = arg_1.a.a;
    var_0 = select(vec3<bool>(select(var_0.x, all(select(vec3<bool>(false, arg_1.a.a.x, arg_1.a.a.x), arg_1.a.a, true)), !any(arg_1.a.a.zz)), 1u == (arg_0 | (4294967295u & arg_0)), true), vec3<bool>(true, true, arg_1.a.d.x > arg_1.a.d.x), any(!(!vec4<bool>(false, var_0.x, var_0.x, arg_1.b.x))));
    var_0 = select(arg_1.a.a, !arg_1.a.a, !arg_1.a.a);
    var var_1 = Struct_1(!(!arg_1.a.a), ~_wgslsmith_div_vec4_i32(~vec4<i32>(-2147483647i, -2863i, -2147483647i, -2147483647i) ^ select(arg_1.a.b, arg_1.a.b, vec4<bool>(false, true, var_0.x, true)), arg_1.a.b), vec2<i32>(arg_1.a.c.x, 0i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.a.d.x, 1443f, -1083f, arg_1.a.d.x), vec4<f32>(arg_1.a.d.x, arg_1.a.d.x, 471f, arg_1.a.d.x))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1525f, -2097f, -1365f, -1577f), vec4<f32>(-1850f, arg_1.a.d.x, arg_1.a.d.x, arg_1.a.d.x)))) * vec4<f32>(848f, _wgslsmith_f_op_f32(ceil(-448f)), arg_1.a.d.x, _wgslsmith_div_f32(231f, 1000f))) - vec4<f32>(_wgslsmith_f_op_f32(min(147f, _wgslsmith_f_op_f32(arg_1.a.d.x * arg_1.a.d.x))), _wgslsmith_f_op_f32(step(arg_1.a.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(arg_1.a.d.x + _wgslsmith_div_f32(1136f, arg_1.a.d.x)), arg_1.a.d.x)), _wgslsmith_clamp_i32(-46524i, _wgslsmith_add_i32(min(u_input.b, u_input.b) | (21674i << (0u % 32u)), _wgslsmith_dot_vec2_i32(max(arg_1.a.b.zw, vec2<i32>(-1004i, u_input.d.x)), arg_1.a.c)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.e, firstLeadingBit(-49329i), _wgslsmith_dot_vec3_i32(arg_1.a.b.zyy, arg_1.a.b.wwz), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_1.a.e), u_input.d.yz)), vec4<i32>(max(arg_1.a.b.x, -8996i), ~2147483647i, 10344i, u_input.b))));
    let var_2 = _wgslsmith_add_u32(0u, ~arg_0);
    return select(~14457i, -var_1.b.x, var_1.a.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec3<bool>(select(true, true, true), true, (arg_0.x | -34198i) < func_3(arg_1.x, Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<i32>(-12700i, u_input.b, u_input.c, u_input.b), vec2<i32>(arg_0.x, -15484i), vec4<f32>(831f, -759f, -1062f, -106f), 1i), vec2<bool>(false, true)))), -vec4<i32>(2147483647i, u_input.b, 39078i, 9426i), arg_0.yy, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -184f), _wgslsmith_div_f32(-276f, 1224f), -1873f, -616f) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -596f), 204f, -2099f, _wgslsmith_div_f32(-1483f, -1148f))), arg_0.x), select(vec2<bool>(true, true), vec2<bool>(!any(vec3<bool>(true, true, true)), !select(true, false, true)), !any(vec2<bool>(true, true))));
    var var_1 = select(u_input.a, u_input.a, !vec3<bool>(var_0.a.a.x, true, true));
    var var_2 = Struct_3(Struct_2(Struct_1(select(!vec3<bool>(var_0.a.a.x, var_0.b.x, var_0.a.a.x), var_0.a.a, any(var_0.a.a)), ~var_0.a.b, _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.d.x), var_0.a.b.wz), firstTrailingBit(var_0.a.b.xw)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a.d) * _wgslsmith_f_op_vec4_f32(vec4<f32>(837f, var_0.a.d.x, var_0.a.d.x, var_0.a.d.x) * vec4<f32>(var_0.a.d.x, -494f, 2385f, var_0.a.d.x))), (11361i << (var_1.x % 32u)) ^ func_3(54244u, Struct_2(Struct_1(var_0.a.a, var_0.a.b, arg_0.zx, vec4<f32>(1065f, var_0.a.d.x, var_0.a.d.x, -1013f), var_0.a.e), var_0.a.a.xy))), !select(var_0.b, var_0.b, true)), Struct_2(Struct_1(select(var_0.a.a, vec3<bool>(true, true, true), vec3<bool>(true, var_0.a.a.x, var_0.a.a.x)), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(-50889i, var_0.a.e, -5723i, -25820i), vec4<i32>(-1i, var_0.a.b.x, arg_0.x, arg_0.x), vec4<bool>(false, var_0.b.x, true, false)), -vec4<i32>(u_input.c, 25260i, 1i, 40424i), -vec4<i32>(arg_0.x, 13702i, arg_0.x, 2147483647i)), firstTrailingBit(arg_0.xx & arg_0.yz), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1567f), -1535f, 649f, _wgslsmith_f_op_f32(-var_0.a.d.x)), select(var_0.a.e, -2147483647i, 53389u > u_input.a.x)), select(!vec2<bool>(var_0.b.x, var_0.b.x), vec2<bool>(var_0.b.x, !var_0.b.x), var_0.b)));
    var_2 = Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), abs(var_2.b.a.b ^ vec4<i32>(-31469i, 1i, u_input.d.x, 38656i)), select(vec2<i32>(0i, 20390i), vec2<i32>(-2147483647i, 23560i), !vec2<bool>(var_0.b.x, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(211f, 1154f, 2011f, var_0.a.d.x)))), select(var_2.b.a.c.x, _wgslsmith_clamp_i32(var_0.a.c.x, -8769i, var_0.a.e), var_0.b.x)), !select(vec2<bool>(var_2.a.a.a.x, true), var_0.b, vec2<bool>(var_0.a.a.x, var_2.b.b.x))), var_2.a);
    var var_3 = _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(max(select(var_0.a.b, vec4<i32>(-1i, 0i, 805i, -2147483647i), vec4<bool>(var_2.a.b.x, true, true, false)) << (vec4<u32>(4294967295u, arg_1.x, 22946u, arg_1.x) % vec4<u32>(32u)), vec4<i32>(var_0.a.b.x, arg_0.x, var_0.a.b.x, -1i) << ((vec4<u32>(arg_1.x, 52732u, 0u, arg_1.x) >> (vec4<u32>(var_1.x, u_input.a.x, u_input.a.x, 12317u) % vec4<u32>(32u))) % vec4<u32>(32u))), var_0.a.b, ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, -1i, -2147483647i) << (vec4<u32>(0u, var_1.x, u_input.a.x, var_1.x) % vec4<u32>(32u)), var_2.b.a.b)), vec4<i32>(1i, var_2.b.a.c.x, _wgslsmith_mult_i32(-2147483647i & -u_input.d.x, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(func_3(arg_1.x, Struct_2(Struct_1(var_2.b.a.a, vec4<i32>(2i, 2147483647i, u_input.d.x, 0i), vec2<i32>(-63873i, 43897i), vec4<f32>(var_2.a.a.d.x, -1712f, 789f, -1040f), u_input.b), vec2<bool>(var_2.a.a.a.x, var_2.a.a.a.x))), -14448i, arg_0.x), var_2.b.a.b.wxy | -vec3<i32>(var_0.a.b.x, -2147483647i, u_input.c))));
    return Struct_1(!vec3<bool>(select(all(var_0.a.a), true, true), select(false, false, true), all(!vec4<bool>(var_2.b.b.x, var_2.a.b.x, false, false))), vec4<i32>(-1i) * -var_2.a.a.b, -(~(-vec2<i32>(u_input.d.x, var_0.a.e))), var_0.a.d, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = _wgslsmith_sub_u32(33397u, _wgslsmith_add_u32(9990u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(countOneBits(u_input.a.x), 0u), min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 9954u, u_input.a.x), vec4<u32>(u_input.a.x, 9059u, 1u, 0u)), 7228u))));
    var_0 = ~(~u_input.a.x);
    var var_1 = 39921u;
    let var_2 = Struct_2(func_2(u_input.d, countOneBits(u_input.a.yy)), vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~var_2.a.e, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -989f), var_2.a.d.x, var_2.a.d.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_2.a.d.x))))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, max(88602u, 1u) << (u_input.a.x % 32u), 1u, 20581u), vec4<u32>(u_input.a.x, 74202u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x) ^ u_input.a.x, 24011u)));
}

