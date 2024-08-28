struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> bool {
    global0 = vec4<bool>((~reverseBits(2147483647i) > (arg_0.c.b >> (0u % 32u))) && !arg_0.d.a, arg_0.d.a, true, true);
    let var_0 = Struct_2(!(!select(vec4<bool>(arg_0.a.x, true, true, true), select(arg_0.a, vec4<bool>(false, false, true, global0.x), vec4<bool>(arg_0.c.a, arg_0.d.a, true, arg_0.d.a)), arg_0.a.x)), arg_0.c, arg_0.d, Struct_1(!arg_0.a.x, _wgslsmith_clamp_i32(abs(-u_input.b.x), _wgslsmith_sub_i32(7743i, arg_1 ^ arg_0.b.b), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 0i, arg_1), vec3<i32>(arg_1, arg_0.c.d, -2147483647i)))), abs(abs(~u_input.c)), firstLeadingBit(-6694i), vec2<u32>(abs(_wgslsmith_mult_u32(arg_0.d.c, arg_0.d.c)), ~u_input.c)));
    global0 = vec4<bool>(_wgslsmith_f_op_f32(sign(1f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-671f - 642f)), any(vec2<bool>(any(vec2<bool>(true, var_0.d.a)), true)) | global0.x, global0.x, false);
    global0 = !select(select(var_0.a, !arg_0.a, !(!var_0.c.a)), arg_0.a, !(var_0.d.e.x >= arg_0.d.c) != global0.x);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -657f);
    return false;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>) -> bool {
    global0 = vec4<bool>(true, true | global0.x, any(vec4<bool>(true, func_2(Struct_2(vec4<bool>(false, global0.x, false, global0.x), Struct_1(true, arg_0.x, 26495u, -8648i, vec2<u32>(u_input.c, 0u)), Struct_1(false, arg_0.x, 16097u, -1i, vec2<u32>(u_input.a, u_input.a)), Struct_1(global0.x, 25295i, u_input.c, -2147483647i, vec2<u32>(4294967295u, u_input.a))), arg_0.x << (u_input.a % 32u)), any(vec2<bool>(true, global0.x)) | !global0.x, true)), true);
    let var_0 = Struct_2(vec4<bool>(_wgslsmith_mult_i32(u_input.b.x, ~arg_0.x) < u_input.b.x, !(-arg_0.x != firstTrailingBit(arg_0.x)), all(vec4<bool>(false, true, arg_0.x < u_input.b.x, true)), false), Struct_1(true, -arg_0.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(0u, u_input.a), select(vec2<u32>(u_input.a, u_input.c), vec2<u32>(28527u, 0u), true)), -2147483647i, ~_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, u_input.c), vec2<u32>(26494u, 23741u)), ~vec2<u32>(28713u, 46892u))), Struct_1(!(!(!global0.x)), _wgslsmith_div_i32(max(~(-390i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b.x), vec2<i32>(85150i, 4488i))), 25774i), 67039u | ~(u_input.c & u_input.a), 11350i, ~(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.a), vec2<u32>(u_input.a, 1u)))), Struct_1(true && global0.x, -_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, 1i, arg_0.x, -2147483647i), vec4<i32>(arg_0.x, -5434i, 25229i, arg_0.x) | vec4<i32>(-2147483647i, arg_0.x, 24083i, 57439i)), u_input.c, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(44439i, arg_0.x, u_input.b.x), vec3<i32>(arg_0.x, arg_0.x, 7556i)), arg_0.x, 2147483647i), _wgslsmith_mod_i32(1i, -14712i), -2641i), ~(~vec2<u32>(41567u, 4294967295u))));
    global0 = select(vec4<bool>(any(!vec4<bool>(var_0.b.a, false, false, false)), false, var_0.b.a || true, var_0.b.a), var_0.a, !all(vec3<bool>(func_2(Struct_2(vec4<bool>(false, false, false, global0.x), Struct_1(true, 36256i, 1u, 18706i, vec2<u32>(var_0.d.e.x, 0u)), var_0.b, var_0.c), var_0.c.b), true, var_0.a.x)));
    let var_1 = Struct_1(any(!vec4<bool>(all(var_0.a.wzz), false, select(false, true, true), true)), arg_0.x, var_0.b.e.x, arg_0.x, vec2<u32>(_wgslsmith_mod_u32(max(~25172u, _wgslsmith_dot_vec3_u32(vec3<u32>(85743u, var_0.c.c, var_0.c.e.x), vec3<u32>(11159u, 45407u, u_input.a))), 8658u), var_0.c.e.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(arg_1));
    return var_1.a;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(select(select(!select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(global0.x, false, false, true)), vec4<bool>(!global0.x, true, global0.x, all(vec3<bool>(global0.x, global0.x, true))), func_2(Struct_2(vec4<bool>(global0.x, false, true, global0.x), Struct_1(false, u_input.b.x, 1u, u_input.b.x, vec2<u32>(u_input.c, u_input.a)), Struct_1(true, 0i, 8495u, -1i, vec2<u32>(0u, u_input.a)), Struct_1(global0.x, u_input.b.x, 87862u, u_input.b.x, vec2<u32>(u_input.a, u_input.a))), _wgslsmith_add_i32(-1i, 0i))), select(select(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, global0.x, global0.x, false), global0.x), !vec4<bool>(global0.x, false, true, true), !vec4<bool>(true, true, global0.x, true)), vec4<bool>(global0.x, func_3(u_input.b.xx, vec3<f32>(529f, 1211f, 138f)), false, true | global0.x), !(!vec4<bool>(global0.x, global0.x, global0.x, global0.x))), any(select(!global0.zxy, global0.wyz, global0.zzz))), Struct_1(!(!global0.x != true), -((u_input.b.x ^ 2147483647i) | 1i), 1u, i32(-1i) * -1177i, vec2<u32>(u_input.c, 1u)), Struct_1(global0.x, _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, -2147483647i) << (reverseBits(u_input.a) % 32u)), u_input.a, u_input.b.x, select(~vec2<u32>(35127u, u_input.a), ~countOneBits(vec2<u32>(4294967295u, u_input.c)), -u_input.b.x > firstTrailingBit(1i))), Struct_1(true, max(-37138i, -11258i), u_input.c, ~(countOneBits(u_input.b.x) | _wgslsmith_div_i32(9421i, u_input.b.x)), vec2<u32>(1u, 1u) ^ ~(~vec2<u32>(26488u, u_input.a))));
    global0 = var_0.a;
    let var_1 = global0.yzz;
    global0 = vec4<bool>(all(!var_0.a.yzz), true, any(select(var_1.xy, var_0.a.yx, global0.xx)), !global0.x);
    global0 = vec4<bool>(-239f < _wgslsmith_f_op_f32(-548f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(754f + -969f) * _wgslsmith_f_op_f32(select(-328f, 340f, global0.x)))), var_0.b.e.x >= reverseBits(~_wgslsmith_div_u32(26384u, var_0.c.e.x)), u_input.c <= 3349u, 63091u < _wgslsmith_mod_u32(max(~4294967295u, _wgslsmith_sub_u32(u_input.c, u_input.c)), 7740u));
    return Struct_2(select(vec4<bool>(all(vec2<bool>(var_1.x, true)), all(global0.ywz), any(vec2<bool>(false, var_0.b.a)), true), select(var_0.a, !var_0.a, u_input.b.x > u_input.b.x), true), var_0.c, Struct_1(true || func_2(Struct_2(vec4<bool>(global0.x, global0.x, false, false), var_0.b, Struct_1(var_1.x, var_0.d.d, u_input.c, 2147483647i, vec2<u32>(61271u, 7163u)), Struct_1(true, var_0.b.b, 15729u, -47931i, var_0.d.e)), -var_0.d.d), ~23824i, _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a, u_input.a, u_input.c), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, var_0.d.e.x, 39840u), vec3<u32>(u_input.a, var_0.c.c, 15809u))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 38136u, 27313u), vec3<u32>(20464u, 23277u, u_input.c))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, -1i), u_input.b.xx), firstLeadingBit(u_input.b.zx)), ~countOneBits(u_input.b.x)), vec2<u32>(var_0.c.e.x, _wgslsmith_div_u32(~0u, ~var_0.c.e.x))), var_0.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = func_1().a.x;
    var_0 = arg_0.d < _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(~arg_1.c.d, ~arg_0.d), ~(0i ^ arg_1.b.d)), _wgslsmith_mod_vec2_i32(-(u_input.b.yx << (vec2<u32>(arg_2.b.e.x, arg_2.d.c) % vec2<u32>(32u))), u_input.b.xy));
    let var_1 = _wgslsmith_add_i32(arg_1.b.b >> (arg_0.c % 32u), arg_2.b.b << (0u % 32u));
    global0 = !(!vec4<bool>(true, all(vec4<bool>(arg_0.a, true, arg_0.a, true)), true | func_2(Struct_2(arg_1.a, arg_2.b, arg_0, arg_1.d), var_1), !(!arg_1.c.a)));
    let var_2 = func_1();
    return func_1().d;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = true;
    var var_1 = true;
    let var_2 = arg_2;
    var_1 = (_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(-22152i, arg_1.b.b, arg_2.d)), u_input.b) >> (28829u % 32u)) <= var_2.d;
    let var_3 = arg_1;
    return ~(~(~(abs(vec2<u32>(4294967295u, 4294967295u)) & vec2<u32>(25389u, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, countOneBits(_wgslsmith_sub_i32(countOneBits(38401i), u_input.b.x)), u_input.c, u_input.b.x, func_5(global0.x, Struct_2(vec4<bool>(true, true, true, true), Struct_1(true, select(u_input.b.x, u_input.b.x, global0.x), ~4294967295u, -25490i, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, u_input.c))), Struct_1(true, u_input.b.x, u_input.a & 0u, u_input.b.x, vec2<u32>(4294967295u, 29813u)), Struct_1(u_input.c > u_input.a, _wgslsmith_sub_i32(0i, u_input.b.x), 2142u ^ u_input.a, ~u_input.b.x, firstTrailingBit(vec2<u32>(1133u, u_input.c)))), func_4(Struct_1(false, -1i >> (u_input.c % 32u), ~76630u, _wgslsmith_mod_i32(u_input.b.x, -2012i), vec2<u32>(u_input.c, u_input.a) & vec2<u32>(1u, 0u)), func_1(), Struct_2(vec4<bool>(global0.x, global0.x, global0.x, global0.x), Struct_1(true, -24561i, u_input.a, 34516i, vec2<u32>(u_input.a, 1u)), func_1().d, Struct_1(true, u_input.b.x, 0u, 1i, vec2<u32>(u_input.c, 1u))))));
    global0 = select(vec4<bool>(any(vec4<bool>(global0.x, var_0.a, all(vec4<bool>(true, global0.x, var_0.a, var_0.a)), false)), false, -13598i != func_1().b.b, var_0.a == !all(vec4<bool>(true, var_0.a, false, true))), vec4<bool>(78042u >= (u_input.a ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.c), vec2<u32>(125806u, u_input.c))), select(true, var_0.a, !func_2(Struct_2(vec4<bool>(false, global0.x, var_0.a, global0.x), Struct_1(true, 40451i, 29490u, var_0.b, var_0.e), Struct_1(var_0.a, u_input.b.x, var_0.c, var_0.b, var_0.e), Struct_1(false, var_0.b, 10305u, var_0.b, var_0.e)), 27102i)), false, any(vec4<bool>(true, global0.x, global0.x, true))), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(446f, -797f, 3484f, -1000f) - vec4<f32>(-1751f, -1127f, 2279f, -2064f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-295f, 1203f, -990f, -187f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(553f, 1558f, 373f, -1000f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1059f, 755f, 275f, 382f), vec4<f32>(-2005f, 775f, -514f, -1702f), var_0.a)) - vec4<f32>(395f, -1049f, 262f, -791f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 2028f, -646f, -1716f)))), vec4<bool>(true, 4294967295u <= u_input.a, global0.x, true))), vec4<bool>(!var_0.a, !all(vec3<bool>(global0.x, false, global0.x)), false, true)))));
    var_0 = func_4(func_1().c, Struct_2(vec4<bool>(func_4(func_4(Struct_1(true, u_input.b.x, 94983u, -17425i, vec2<u32>(1u, 38104u)), Struct_2(vec4<bool>(global0.x, global0.x, false, false), Struct_1(var_0.a, 2147483647i, 4294967295u, -2147483647i, var_0.e), Struct_1(global0.x, 0i, var_0.e.x, 4067i, var_0.e), Struct_1(false, 2147483647i, 8680u, var_0.d, vec2<u32>(10263u, 10495u))), Struct_2(vec4<bool>(global0.x, global0.x, false, global0.x), Struct_1(var_0.a, var_0.b, u_input.c, 1i, var_0.e), Struct_1(false, u_input.b.x, u_input.c, u_input.b.x, var_0.e), Struct_1(true, var_0.d, u_input.a, var_0.d, var_0.e))), Struct_2(vec4<bool>(false, true, var_0.a, var_0.a), Struct_1(var_0.a, 2147483647i, 107224u, -2147483647i, var_0.e), Struct_1(false, -1i, 0u, 16176i, var_0.e), Struct_1(true, u_input.b.x, 50463u, u_input.b.x, vec2<u32>(u_input.c, 8789u))), Struct_2(vec4<bool>(global0.x, global0.x, false, global0.x), Struct_1(false, var_0.d, var_0.c, 0i, vec2<u32>(37464u, 0u)), Struct_1(var_0.a, var_0.d, 45612u, -24973i, vec2<u32>(var_0.c, 4294967295u)), Struct_1(true, 1i, 33244u, 70353i, var_0.e))).a, !var_0.a, true | func_2(Struct_2(vec4<bool>(global0.x, var_0.a, true, var_0.a), Struct_1(true, 2147483647i, 35874u, u_input.b.x, var_0.e), Struct_1(global0.x, var_0.d, 0u, 1i, vec2<u32>(36344u, 0u)), Struct_1(true, -1102i, u_input.c, var_0.d, vec2<u32>(u_input.a, 1u))), var_0.b), func_4(Struct_1(var_0.a, var_0.b, 0u, 2147483647i, var_0.e), Struct_2(vec4<bool>(true, var_0.a, var_0.a, var_0.a), Struct_1(false, u_input.b.x, var_0.c, u_input.b.x, vec2<u32>(var_0.c, 21001u)), Struct_1(true, 0i, u_input.a, 32625i, var_0.e), Struct_1(false, 59523i, u_input.c, -48888i, var_0.e)), Struct_2(vec4<bool>(true, true, false, global0.x), Struct_1(true, var_0.d, u_input.a, u_input.b.x, var_0.e), Struct_1(global0.x, 19321i, 89260u, 2147483647i, var_0.e), Struct_1(true, u_input.b.x, 44719u, 1i, vec2<u32>(u_input.a, var_0.e.x)))).b <= func_1().d.b), Struct_1(!(var_0.a & global0.x), ~2147483647i, reverseBits(var_0.e.x), 0i, vec2<u32>(13320u, 34140u) | abs(var_0.e)), func_4(func_1().c, func_1(), Struct_2(vec4<bool>(true, true, false, var_0.a), func_1().d, func_4(Struct_1(global0.x, u_input.b.x, 1u, var_0.b, var_0.e), Struct_2(vec4<bool>(true, true, true, var_0.a), Struct_1(global0.x, 25588i, 0u, u_input.b.x, vec2<u32>(40328u, u_input.c)), Struct_1(true, var_0.d, 0u, 1i, var_0.e), Struct_1(true, 8201i, var_0.c, -12862i, vec2<u32>(4294967295u, 4294967295u))), Struct_2(vec4<bool>(true, global0.x, var_0.a, true), Struct_1(false, var_0.b, var_0.c, u_input.b.x, vec2<u32>(94414u, 1u)), Struct_1(var_0.a, -1i, 1u, -1i, var_0.e), Struct_1(false, u_input.b.x, 0u, u_input.b.x, var_0.e))), func_4(Struct_1(global0.x, u_input.b.x, 50946u, u_input.b.x, vec2<u32>(33485u, u_input.a)), Struct_2(vec4<bool>(true, true, false, global0.x), Struct_1(global0.x, -40334i, var_0.e.x, 1i, var_0.e), Struct_1(var_0.a, u_input.b.x, 1u, var_0.b, vec2<u32>(u_input.c, u_input.a)), Struct_1(false, 0i, var_0.c, var_0.d, vec2<u32>(40610u, var_0.c))), Struct_2(vec4<bool>(global0.x, global0.x, global0.x, true), Struct_1(false, u_input.b.x, 0u, u_input.b.x, vec2<u32>(0u, u_input.c)), Struct_1(false, 60769i, 0u, -2147483647i, vec2<u32>(0u, u_input.c)), Struct_1(global0.x, -2147483647i, 3307u, -4011i, var_0.e))))), func_4(func_1().c, func_1(), Struct_2(vec4<bool>(true, var_0.a, true, global0.x), Struct_1(var_0.a, u_input.b.x, u_input.a, -2147483647i, vec2<u32>(var_0.c, var_0.e.x)), Struct_1(true, u_input.b.x, 4294967295u, u_input.b.x, var_0.e), func_1().d))), func_1());
    var var_2 = func_1();
    global0 = !var_2.a;
    let var_3 = func_1().d;
    global0 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(54286u ^ firstTrailingBit(abs(~45868u)), firstTrailingBit(abs(1u ^ ~var_3.e.x)), _wgslsmith_dot_vec3_i32(-(_wgslsmith_clamp_vec3_i32(u_input.b, u_input.b, u_input.b) | u_input.b), ~vec3<i32>(abs(u_input.b.x), func_4(Struct_1(global0.x, -43016i, 11157u, 1i, var_0.e), Struct_2(var_2.a, var_2.b, Struct_1(true, var_2.c.b, var_2.d.e.x, u_input.b.x, var_2.c.e), Struct_1(var_3.a, var_3.b, var_2.b.e.x, 54420i, var_2.c.e)), Struct_2(var_2.a, var_3, var_3, Struct_1(false, -2147483647i, 4294967295u, -1i, var_0.e))).d, var_2.c.d)), _wgslsmith_f_op_f32(391f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(399f * 1666f), _wgslsmith_f_op_f32(var_1.x + var_1.x))))), max(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.e.x, u_input.a, 1u, var_2.b.e.x), vec4<u32>(1u, 1u, var_2.c.c, var_3.c)), countOneBits(countOneBits(reverseBits(vec4<u32>(var_2.b.c, 21804u, 1u, 25946u))))));
}

