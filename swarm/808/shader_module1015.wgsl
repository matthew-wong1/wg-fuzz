struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: f32,
    e: vec3<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_3,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global0 = Struct_2(u_input.c, _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(global0.b, global0.b), global0.b), Struct_1(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, -40582i, -3541i) | vec4<i32>(global0.c.a, u_input.b.x, global0.a, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(global0.a, 0i, global0.c.a, -41534i), vec4<i32>(global0.a, -1i, global0.c.a, global0.a))), global0.c.a, _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a, global0.c.a), reverseBits(global0.a)))));
    global0 = Struct_2(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(u_input.b.yy, vec2<i32>(global0.a, global0.c.a), vec2<i32>(40344i, 1i))), reverseBits(vec2<i32>(global0.c.a, u_input.a))), u_input.b.xz), global0.b ^ ~global0.b, global0.c);
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1188f, 1145f, -1000f, -714f))))), vec4<f32>(1f, 1f, _wgslsmith_f_op_f32(ceil(1958f)), _wgslsmith_f_op_f32(2464f * 1341f)))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -498f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1619f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)))), _wgslsmith_f_op_f32(-505f * 1f), -625f));
    global0 = Struct_2(_wgslsmith_div_i32(abs(-37567i), 2147483647i), vec2<u32>(_wgslsmith_mult_u32(1551u, 0u), ~1u), Struct_1(-43855i));
    global0 = Struct_2(-34510i, firstLeadingBit(global0.b), global0.c);
    return 1i;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: Struct_4, arg_3: vec3<f32>) -> vec2<f32> {
    let var_0 = -u_input.b.yz;
    let var_1 = Struct_3(Struct_2(2126i, ~select(~vec2<u32>(0u, arg_2.e.x), ~vec2<u32>(9105u, global0.b.x), true && arg_2.b), global0.c), Struct_1(func_3()));
    let var_2 = var_1;
    var var_3 = var_1.b.a;
    var var_4 = max(max(vec4<u32>(~global0.b.x, 1u, ~(~4294967295u), 38502u), _wgslsmith_clamp_vec4_u32(select(~vec4<u32>(0u, 2636u, arg_2.e.x, 21493u), vec4<u32>(var_2.a.b.x, var_2.a.b.x, var_1.a.b.x, 1u) ^ vec4<u32>(arg_1, 1u, var_2.a.b.x, 4294967295u), true), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_2.a.b.x, arg_1), vec3<u32>(31141u, global0.b.x, arg_2.e.x)), ~global0.b.x, abs(global0.b.x), abs(85156u)), abs(vec4<u32>(var_2.a.b.x, 33067u, 88208u, var_2.a.b.x)) & (vec4<u32>(19475u, var_2.a.b.x, var_2.a.b.x, var_2.a.b.x) ^ vec4<u32>(11116u, var_2.a.b.x, 4294967295u, global0.b.x)))), vec4<u32>(~0u, ~(~11796u), var_1.a.b.x, 3519u));
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -137f), arg_3.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d, arg_3.x))))))));
}

fn func_4(arg_0: vec2<f32>) -> bool {
    let var_0 = 1086f;
    let var_1 = Struct_2(u_input.c, countOneBits(abs(global0.b)), Struct_1(-_wgslsmith_add_i32(_wgslsmith_add_i32(-34076i, -5192i), _wgslsmith_dot_vec2_i32(u_input.b.yz, u_input.b.yy))));
    var var_2 = 1020f;
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_0.x))))));
    var var_4 = select(var_1.b.x, ~var_1.b.x, true);
    return all(vec2<bool>(any(vec3<bool>(true, true, any(vec4<bool>(true, false, true, true)))), true));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec3<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(arg_1.a, arg_1.a)), vec3<i32>(min(reverseBits(global0.a), 1i), ~_wgslsmith_mod_i32(arg_2.x, global0.c.a), ~_wgslsmith_mod_i32(-2192i, u_input.a))), vec3<i32>(-18341i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_1.a.yy & arg_1.a.zx, max(vec2<i32>(arg_1.a.x, arg_2.x), arg_1.a.yx)), arg_1.a.xy), arg_1.a.x ^ (-u_input.a | _wgslsmith_dot_vec3_i32(arg_1.a, arg_2))));
    var var_1 = Struct_3(Struct_2(-1i << (abs(~global0.b.x) % 32u), vec2<u32>(_wgslsmith_mult_u32(~arg_1.e.x, ~arg_0.x), ~firstTrailingBit(0u)), Struct_1(arg_2.x)), Struct_1(_wgslsmith_sub_i32(u_input.a, arg_2.x)));
    var var_2 = vec2<i32>(var_0, ~(-var_1.b.a));
    var_1 = Struct_3(var_1.a, Struct_1(-2147483647i));
    let var_3 = Struct_3(Struct_2(_wgslsmith_dot_vec3_i32(countOneBits(firstLeadingBit(u_input.b)), vec3<i32>(arg_1.a.x, abs(arg_1.a.x), 1i)), _wgslsmith_sub_vec2_u32(~(~arg_0.yx), vec2<u32>(1u << (global0.b.x % 32u), 0u & arg_1.e.x)), Struct_1(arg_2.x)), Struct_1(arg_1.a.x));
    return Struct_4(reverseBits(-vec3<i32>(2147483647i, u_input.c, -1i) << (arg_0 % vec3<u32>(32u))), select(true, false, !arg_1.c || true), false, arg_1.d, reverseBits(abs(~arg_0)));
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_2(-3736i, abs(global0.b), Struct_1(_wgslsmith_clamp_i32(u_input.c, 27921i, global0.a)));
    var var_1 = func_5(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(~global0.b.x, global0.b.x, ~0u)) & _wgslsmith_div_vec3_u32(vec3<u32>(~6728u, _wgslsmith_sub_u32(4294967295u, 50213u), global0.b.x), ~(~vec3<u32>(global0.b.x, 15104u, var_0.b.x))), Struct_4(u_input.b, true, func_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_2(var_0.a, 59066u, Struct_4(vec3<i32>(2147483647i, global0.a, -2147483647i), true, true, -1557f, vec3<u32>(var_0.b.x, 4294967295u, 0u)), vec3<f32>(535f, 1816f, 1907f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-878f, 888f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-192f - _wgslsmith_f_op_f32(max(233f, -247f))), _wgslsmith_f_op_f32(-1101f - _wgslsmith_f_op_f32(980f - 233f))), firstTrailingBit(vec3<u32>(69834u, _wgslsmith_clamp_u32(var_0.b.x, global0.b.x, 1212u), _wgslsmith_clamp_u32(1u, 1u, global0.b.x)))), u_input.b);
    let var_2 = !(!any(!(!vec3<bool>(true, false, var_1.b))));
    var var_3 = Struct_4(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, 104876i), var_1.a.zz), global0.c.a)), var_1.a), any(vec3<bool>(var_1.b, false, all(vec4<bool>(var_1.c, false, true, true)))) != (~(~global0.b.x) < var_1.e.x), any(vec2<bool>(!select(var_1.b, false, true), var_2)), _wgslsmith_f_op_f32(-1577f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) - _wgslsmith_f_op_f32(floor(1195f)))))), var_1.e);
    var var_4 = 27919i;
    return Struct_3(Struct_2(_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, global0.a, var_1.a.x, u_input.b.x), ~_wgslsmith_div_vec4_i32(vec4<i32>(var_1.a.x, 456i, var_1.a.x, global0.c.a), vec4<i32>(-10862i, 29551i, 1i, -36490i))), max(var_1.e.zz, vec2<u32>(var_1.e.x, var_0.b.x)), var_0.c), global0.c);
}

fn func_6(arg_0: u32, arg_1: Struct_3) -> Struct_2 {
    global0 = Struct_2(countOneBits(~(~arg_1.a.a) >> (arg_1.a.b.x % 32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(global0.b.x, ~firstLeadingBit(33051u)), arg_1.a.b), Struct_1(-2147483647i >> ((arg_0 | func_1().a.b.x) % 32u)));
    let var_0 = !(!vec4<bool>(false, _wgslsmith_f_op_f32(f32(-1f) * -166f) <= _wgslsmith_f_op_f32(sign(-568f)), true, func_5(~vec3<u32>(global0.b.x, 0u, arg_0), Struct_4(vec3<i32>(u_input.c, arg_1.a.c.a, arg_1.a.a), false, false, 2920f, vec3<u32>(arg_0, 4294967295u, arg_0)), u_input.b).c));
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b.x, -1i), u_input.b));
    var var_2 = Struct_1(firstLeadingBit(min(890i, _wgslsmith_mod_i32(~u_input.a, _wgslsmith_add_i32(2147483647i, global0.c.a)))));
    var_1 = Struct_1((~max(2147483647i, global0.a) >> (0u % 32u)) | var_1.a);
    return Struct_2(-22805i, arg_1.a.b, func_1().a.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(~select(~74620u, countOneBits(0u), global0.b.x <= 1u), func_1());
    var_0 = func_6(var_0.b.x, Struct_3(func_6(_wgslsmith_mod_u32(4294967295u, ~33454u), Struct_3(func_1().a, var_0.c)), func_6(~1u, func_1()).c));
    let var_1 = vec2<bool>(true, true);
    let var_2 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -1433f)), -1031f, -1133f), Struct_2(_wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(49198i, var_0.a << (var_0.b.x % 32u))), ~(min(vec2<u32>(global0.b.x, 4294967295u), vec2<u32>(global0.b.x, 64759u)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(global0.b.x, var_0.b.x), vec2<u32>(4294967295u, var_0.b.x)) % vec2<u32>(32u))), Struct_1(-_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(var_0.c.a, 1i, 2147483647i)))), var_0.c, func_1(), vec4<bool>(!any(!vec4<bool>(false, true, var_1.x, var_1.x)), false, 16272i != u_input.a, true));
    var_0 = func_6(func_5(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(3116u, 80545u, 1u), ~vec3<u32>(var_2.b.b.x, var_2.b.b.x, global0.b.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.b.b.x, 4294967295u, 4294967295u), vec3<u32>(38874u, var_0.b.x, var_0.b.x), vec3<u32>(18320u, global0.b.x, 1u))), Struct_4(vec3<i32>(-12355i, u_input.a, var_0.a ^ 1i), true, (true | var_2.e.x) | true, -1849f, firstLeadingBit(vec3<u32>(var_0.b.x, 0u, 2836u) >> (vec3<u32>(global0.b.x, var_0.b.x, var_2.d.a.b.x) % vec3<u32>(32u)))), ~select(-u_input.b, vec3<i32>(2147483647i, var_0.a, global0.c.a), 88880u == var_2.b.b.x)).e.x, Struct_3(var_2.b, Struct_1(reverseBits(_wgslsmith_add_i32(-1i, -2674i)))));
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a.x)));
    var var_5 = Struct_4(countOneBits(reverseBits(vec3<i32>(var_0.c.a >> (1u % 32u), var_0.c.a, var_2.c.a))), false, !(!(_wgslsmith_f_op_f32(abs(var_2.a.x)) <= _wgslsmith_f_op_f32(sign(var_2.a.x)))), -987f, vec3<u32>(~reverseBits(_wgslsmith_mod_u32(29286u, 2775u)), ~(4294967295u & var_2.b.b.x), countOneBits(~40822u)));
    let var_6 = _wgslsmith_add_i32(select(_wgslsmith_add_i32(2147483647i, -609i), 1i, any(select(vec2<bool>(var_1.x, var_2.e.x), vec2<bool>(true, var_1.x), all(vec3<bool>(var_2.e.x, var_5.c, false))))), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, var_2.d.a.b.x, ~(~(~(~var_5.e.x))), ~(~(~(~4294967295u))), _wgslsmith_f_op_f32(f32(-1f) * -157f));
}

