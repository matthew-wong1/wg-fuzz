struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(false, true), 1u);

var<private> global1: vec3<f32> = vec3<f32>(1000f, -825f, 399f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = !any(vec2<bool>(global0.a.x, global0.a.x));
    var_0 = global0.a.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -503f, global1.x) - vec3<f32>(global1.x, -438f, -1953f))))) * vec3<f32>(global1.x, _wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_f_op_f32(select(153f, _wgslsmith_f_op_f32(floor(global1.x)), global0.a.x)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(505f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(-global1.x))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_1, var_1), _wgslsmith_div_vec3_f32(var_1, vec3<f32>(global1.x, 113f, global1.x)), select(vec3<bool>(true, global0.a.x, false), vec3<bool>(false, global0.a.x, global0.a.x), vec3<bool>(true, true, false)))) + vec3<f32>(-618f, _wgslsmith_f_op_f32(f32(-1f) * -190f), _wgslsmith_f_op_f32(abs(var_1.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(var_1)))) * vec3<f32>(-311f, 609f, _wgslsmith_f_op_f32(-var_1.x)))));
    return 1u;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_4(!any(!vec3<bool>(global0.a.x, global0.a.x, true)) && (all(!vec4<bool>(global0.a.x, false, true, true)) & true), countOneBits(~(~countOneBits(vec4<u32>(4294967295u, 64038u, global0.b, 52740u)))), Struct_1(any(!global0.a), false));
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(526f, 1253f, 216f)) - _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, -1914f, global1.x), vec3<f32>(global1.x, global1.x, global1.x))) * vec3<f32>(-274f, _wgslsmith_f_op_f32(trunc(-119f)), global1.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1636f, global1.x, 519f) * vec3<f32>(global1.x, -1351f, -955f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(847f, -768f, 368f), vec3<f32>(-343f, 574f, -917f)))))));
    var var_1 = Struct_2(global0.a, ((global0.b ^ ~1u) ^ func_3()) & 4294967295u);
    var_1 = Struct_2(global0.a, ~u_input.a);
    let var_2 = vec3<bool>(all(select(!(!vec3<bool>(var_0.a, true, false)), select(vec3<bool>(var_1.a.x, false, var_0.c.a), vec3<bool>(global0.a.x, false, global0.a.x), any(var_1.a)), true)), !(!(!(!var_0.c.b))), var_0.a);
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) - -370f), 1073f) + 1f), _wgslsmith_clamp_vec4_i32(~(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 0i, 346i), vec4<i32>(1i, u_input.b.x, u_input.b.x, -2147483647i))), _wgslsmith_add_vec4_i32(select(u_input.b, vec4<i32>(1i, u_input.b.x, 28902i, u_input.b.x), true) << (vec4<u32>(49184u, 4294967295u, global0.b, 0u) % vec4<u32>(32u)), u_input.b), vec4<i32>(u_input.b.x, -u_input.b.x, min(-48744i, u_input.b.x), select(u_input.b.x, abs(u_input.b.x), true))), 4294967295u, Struct_1(all(select(vec3<bool>(false, var_2.x, true), vec3<bool>(false, var_0.c.a, false), vec3<bool>(var_1.a.x, false, false))) | (firstTrailingBit(0i) == (-29970i << (var_0.b.x % 32u))), !global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(1000f + -113f))) - global1.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: vec4<bool>, arg_3: u32) -> Struct_3 {
    global0 = Struct_2(global0.a, func_3());
    global0 = Struct_2(select(!vec2<bool>(!global0.a.x, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), arg_2.xy, arg_0.d.b), !vec2<bool>(true, all(vec2<bool>(arg_2.x, arg_2.x)))), 1u);
    global0 = Struct_2(!select(vec2<bool>(false, global0.a.x), arg_2.xx, vec2<bool>(!arg_0.d.b, func_2().d.a)), ~max(~arg_3, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c, 22187u, global0.b, u_input.a) | vec4<u32>(arg_1.b.x, 1u, u_input.a, 4294967295u), abs(vec4<u32>(0u, arg_0.c, 4294967295u, 0u)))));
    let var_0 = Struct_2(arg_2.xz, max(firstTrailingBit(~global0.b), arg_3));
    var var_1 = Struct_2(vec2<bool>(true, true), ~global0.b);
    return arg_0;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec3<f32>) -> Struct_1 {
    global0 = Struct_2(!vec2<bool>(all(select(vec3<bool>(global0.a.x, false, arg_1.d.a), vec3<bool>(arg_1.d.a, arg_1.d.b, false), vec3<bool>(false, true, true))), global0.a.x), 0u);
    var var_0 = arg_1.b.x;
    let var_1 = Struct_2(vec2<bool>(!(select(global0.a.x, arg_1.d.b, arg_1.d.a) && !global0.a.x), all(vec2<bool>(true, true))), 13594u);
    global1 = vec3<f32>(1283f, global1.x, -359f);
    global0 = Struct_2(!(!select(select(global0.a, global0.a, global0.a), var_1.a, u_input.a < arg_1.c)), abs(_wgslsmith_sub_u32(arg_1.c, _wgslsmith_div_u32(8369u, u_input.a))) | (80414u | (_wgslsmith_add_u32(1u, 21972u) >> (_wgslsmith_sub_u32(var_1.b, var_1.b) % 32u))));
    return Struct_1(any(vec4<bool>(any(select(vec3<bool>(false, global0.a.x, arg_1.d.b), vec3<bool>(true, arg_1.d.b, false), vec3<bool>(false, false, false))), countOneBits(0u) >= _wgslsmith_sub_u32(arg_1.c, arg_1.c), true, !(arg_1.d.b && true))), !global0.a.x & true);
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> vec2<u32> {
    let var_0 = func_5(global1.yz, func_4(func_2(), Struct_5(u_input.a, ~vec2<u32>(98034u, 1008u)), select(!(!vec4<bool>(true, global0.a.x, true, arg_0)), vec4<bool>(true, false, func_2().d.b, any(global0.a)), false), ~arg_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-127f, 1267f, -723f) + vec3<f32>(global1.x, global1.x, global1.x)))))));
    let var_1 = Struct_2(vec2<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, global0.a.x, global0.a.x), vec4<bool>(false, var_0.a, global0.a.x, var_0.b))) & (_wgslsmith_sub_u32(arg_1.x, u_input.a) == _wgslsmith_dot_vec2_u32(arg_1, arg_1)), false), global0.b);
    let var_2 = !(!select(vec4<bool>(!var_0.b, !global0.a.x, 4294967295u >= u_input.a, var_0.b || var_1.a.x), !select(vec4<bool>(var_1.a.x, var_0.b, true, var_1.a.x), vec4<bool>(true, global0.a.x, false, false), vec4<bool>(false, var_0.a, true, true)), vec4<bool>(any(vec3<bool>(true, false, arg_0)), !var_1.a.x, true, true)));
    let var_3 = -u_input.b.zyy;
    global0 = var_1;
    return ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a) & vec2<u32>(10270u, 39932u), ~arg_1), 3501u | _wgslsmith_sub_u32(var_1.b, global0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_u32(select(~func_1(any(global0.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.b, u_input.a), vec2<u32>(1u, 59382u), vec2<u32>(global0.b, 7400u))), vec2<u32>(1u, _wgslsmith_sub_u32(23834u, 1u)), vec2<bool>(!global0.a.x, global0.a.x)), ~(~vec2<u32>(abs(global0.b), 45677u)));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-781f, global1.x, 891f) - vec3<f32>(global1.x, global1.x, global1.x)), vec3<f32>(-482f, -1269f, global1.x))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(853f, global1.x, global1.x), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, 205f, global1.x))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -416f))))));
    var_0 = max(~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(39083u, 0u), vec2<u32>(var_0.x, global0.b)), ~vec2<u32>(1u, global0.b)), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, global0.b), vec2<u32>(u_input.a, u_input.a)), ~(vec2<u32>(var_0.x, global0.b) | vec2<u32>(64208u, 49460u)))) >> (~(~(~(vec2<u32>(u_input.a, var_0.x) ^ vec2<u32>(global0.b, global0.b)))) % vec2<u32>(32u));
    var var_1 = Struct_5(~var_0.x, vec2<u32>(59756u, ~global0.b));
    let var_2 = select(~abs(select(vec3<u32>(0u, u_input.a, global0.b), ~vec3<u32>(u_input.a, 49642u, 1u), false)), ~_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(global0.b, var_1.a, var_0.x)), select(vec3<u32>(5808u, var_0.x, var_1.a), vec3<u32>(var_1.b.x, 0u, 4294967295u), vec3<bool>(global0.a.x, global0.a.x, true)), _wgslsmith_mod_vec3_u32(vec3<u32>(28429u, global0.b, u_input.a), vec3<u32>(48333u, 93457u, global0.b))), reverseBits(vec3<u32>(3995u, 4294967295u, u_input.a))), global1.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_3 = func_4(func_2(), Struct_5(func_1(true, ~var_1.b).x, ~func_1(global0.a.x, var_2.xz)), vec4<bool>(false, global0.a.x, func_2().d.b, ~(global0.b & u_input.a) < 1u), global0.b).d;
    let var_4 = func_4(Struct_3(_wgslsmith_f_op_f32(func_2().a * func_2().a), ~vec4<i32>(u_input.b.x, 1i, abs(-7071i), _wgslsmith_div_i32(33403i, u_input.b.x)), ~firstLeadingBit(func_3()), func_4(Struct_3(_wgslsmith_div_f32(841f, 1563f), -vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, 58205i), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), var_2.yy), Struct_1(global0.a.x, true), 3157f), Struct_5(~21332u, var_2.zz), !(!vec4<bool>(global0.a.x, global0.a.x, var_3.b, global0.a.x)), _wgslsmith_div_u32(global0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(50027u, global0.b, u_input.a, var_1.b.x), vec4<u32>(1u, 36029u, 3576u, global0.b)))).d, -1173f), Struct_5(4294967295u, vec2<u32>(~76336u & global0.b, var_1.a)), select(vec4<bool>((u_input.b.x >> (1u % 32u)) >= min(u_input.b.x, u_input.b.x), !any(global0.a), func_2().d.a, true), select(vec4<bool>(false, global0.a.x, global0.a.x == false, false), !vec4<bool>(true, var_3.a, true, false), true), false), 50775u | _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a, 34801u, var_0.x), vec4<u32>(46511u, global0.b, 0u, 71371u)), abs(vec4<u32>(25755u, global0.b, u_input.a, u_input.a))), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.b, u_input.a, u_input.a, u_input.a), abs(vec4<u32>(u_input.a, 15367u, global0.b, 0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1.x), vec4<f32>(func_4(func_2(), Struct_5(0u, var_1.b ^ vec2<u32>(1020u, 103435u)), !(!vec4<bool>(true, false, global0.a.x, var_4.d.a)), firstTrailingBit(var_2.x)).a, _wgslsmith_f_op_f32(-global1.x), -280f, 527f));
}

