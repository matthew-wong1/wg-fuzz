struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
    c: f32,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(vec2<bool>(any(vec4<bool>(true, true, true, true)), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(846f, 1118f)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1566f + 1549f)), _wgslsmith_div_f32(-1930f, -801f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -703f) + -578f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-462f))), -1532f), ~vec3<i32>(17700i << (u_input.a.x % 32u), abs(~(-1i)), -1i), vec3<i32>(~u_input.c, u_input.c, 0i));
    return var_0.c.x;
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_4(-14294i);
    global0 = _wgslsmith_f_op_f32(func_3()) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(465f, 863f)) + -1394f)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1403f * 837f), _wgslsmith_f_op_f32(f32(-1f) * -624f))), -125f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-972f, 1000f) - vec2<f32>(100f, -445f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 691f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(522f, -1106f)))), select(select(select(vec2<bool>(arg_0, false), vec2<bool>(true, true), arg_0), select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, true), true), false), vec2<bool>(true, true), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), true), vec2<bool>(false, arg_0), true == arg_0)))));
    var var_2 = select(!vec4<bool>(arg_0, any(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, true, arg_0), vec3<bool>(true, arg_0, arg_0))), (arg_0 || arg_0) == true, arg_0), select(!select(!vec4<bool>(arg_0, arg_0, true, arg_0), !vec4<bool>(arg_0, false, true, true), true), vec4<bool>(true, select(true, arg_0, all(vec4<bool>(false, false, arg_0, true))), arg_0, all(vec2<bool>(true, false)) || true), select(select(select(vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(false, arg_0, arg_0, arg_0), false), !vec4<bool>(false, false, true, arg_0), vec4<bool>(arg_0, false, true, arg_0)), vec4<bool>(arg_0, arg_0, u_input.b.x >= 98110u, var_1.x > -879f), all(vec2<bool>(arg_0, arg_0)) != (1i >= var_0.a))), vec4<bool>(!arg_0, true, arg_0, all(select(vec2<bool>(false, arg_0), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, false), arg_0), vec2<bool>(false, arg_0)))));
    var var_3 = !select(vec3<bool>(arg_0, true, !select(var_2.x, false, false)), var_2.xxx, !var_2.yyz);
    return Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, u_input.a.x, 1u, 4294967295u), abs(~vec4<u32>(u_input.b.x, u_input.d.x, u_input.b.x, 1u))), vec2<bool>(!var_3.x, !all(!var_2.xzx)), all(vec3<bool>(var_2.x, var_3.x, var_2.x)));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_4) -> Struct_3 {
    var var_0 = Struct_3(func_2((min(0u, 1u) | (100811u & u_input.a.x)) <= _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_1.a.x, arg_1.a.x), 5760u), -12868i));
    let var_1 = vec3<i32>(10131i, arg_0, -1i) & max(vec3<i32>(arg_2.a, -1446i, 2147483647i), abs(-vec3<i32>(1i, -2147483647i, 28488i)) & vec3<i32>(-12652i, arg_2.a, abs(u_input.c)));
    var var_2 = firstTrailingBit(countOneBits(vec3<i32>(u_input.c, _wgslsmith_dot_vec3_i32(var_1, ~vec3<i32>(var_1.x, arg_2.a, 48698i)), firstTrailingBit(-22978i))));
    var_2 = vec3<i32>(_wgslsmith_sub_i32(~(~1i), 41668i) ^ _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(var_1), var_1), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(70764i, arg_0, 1i)), max(vec3<i32>(-28611i, 1i, var_1.x), var_1))), arg_0, ~1i);
    global0 = var_0.a.c;
    return Struct_3(Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x | 94298u, u_input.d.x, var_0.a.a.x, max(1u, arg_1.a.x)), ~var_0.a.a), select(!select(var_0.a.b, vec2<bool>(false, var_0.a.b.x), arg_1.c), func_2(var_0.a.b.x | true, -2147483647i).b, !select(arg_1.b, vec2<bool>(arg_1.c, true), vec2<bool>(true, true))), any(vec3<bool>(false, var_0.a.b.x, true)) && (~4294967295u >= (arg_1.a.x << (u_input.a.x % 32u)))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> bool {
    let var_0 = -select(-1i, _wgslsmith_mult_i32(u_input.c, ~(-1i)), _wgslsmith_dot_vec2_u32(vec2<u32>(12080u, arg_0.a.a.x), vec2<u32>(arg_2, 0u)) <= ~_wgslsmith_dot_vec3_u32(u_input.a.zzy, vec3<u32>(85723u, 47083u, 4294967295u)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(-1582f)), _wgslsmith_f_op_f32(f32(-1f) * -1229f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2353f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1282f)), 1f, !arg_1.b.x)) + -1074f));
    var var_2 = func_4(u_input.c, Struct_2(vec4<u32>(arg_1.a.x, ~4294967295u, ~min(1u, 34182u), _wgslsmith_sub_u32(71808u, ~u_input.b.x)), arg_0.a.b, arg_1.b.x), Struct_4(arg_3 << (arg_2 % 32u)));
    return arg_1.b.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: f32, arg_3: vec3<f32>) -> i32 {
    global0 = all(vec3<bool>(all(vec2<bool>(true, true)), false, func_5(func_4(u_input.c, func_2(false, arg_0.x), Struct_4(arg_0.x)), Struct_2(func_2(true, 26497i).a, vec2<bool>(true, true), true), func_2(true, -27185i).a.x, abs(~arg_0.x))));
    global0 = func_5(Struct_3(Struct_2(~(vec4<u32>(15231u, arg_1, arg_1, 4466u) ^ vec4<u32>(15754u, 24253u, 14594u, 17143u)), vec2<bool>(true, true), func_4(arg_0.x, Struct_2(u_input.a, vec2<bool>(true, false), false), Struct_4(-2147483647i)).a.b.x)), Struct_2(select(vec4<u32>(u_input.b.x, ~arg_1, arg_1 ^ arg_1, ~72182u), u_input.a, select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false)), true)), vec2<bool>(true, true), func_5(Struct_3(func_2(false, -2147483647i)), func_2(u_input.b.x >= 40518u, 1i >> (1u % 32u)), ~59355u, min(u_input.c, 2147483647i))), 0u, ~_wgslsmith_div_i32(countOneBits(_wgslsmith_clamp_i32(arg_0.x, arg_0.x, -43337i)), u_input.c));
    global0 = true;
    var var_0 = countOneBits(-u_input.c) | countOneBits(arg_0.x);
    global0 = false;
    return u_input.c | -5286i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(-firstTrailingBit(-func_1(vec2<i32>(u_input.c, 2147483647i), 0u, 115f, vec3<f32>(660f, -662f, 386f))));
    var var_1 = 78760u;
    global0 = any(vec3<bool>(true, !all(vec4<bool>(true, true, true, true)) == true, true && !all(vec4<bool>(false, false, false, false))));
    var var_2 = vec2<i32>(2147483647i, -52945i);
    var_1 = u_input.b.x;
    let var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-5138i, _wgslsmith_add_i32(_wgslsmith_div_i32(27540i, 1i), _wgslsmith_mult_i32(u_input.c, -18030i))), _wgslsmith_clamp_i32(~(-24506i >> (u_input.a.x % 32u)), var_2.x, ~_wgslsmith_sub_i32(var_0.a, -2147483647i)), ~abs(49452i), 0i), firstTrailingBit(vec4<i32>(_wgslsmith_mod_i32(-65781i, abs(u_input.c)), 1i, var_2.x, 878i)));
    var var_4 = Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(321f, -653f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-429f, -187f))))))), vec4<f32>(_wgslsmith_f_op_f32(sign(-1318f)), _wgslsmith_f_op_f32(-1403f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(667f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(366f, 644f)), _wgslsmith_f_op_f32(699f + -1386f), true)))), _wgslsmith_f_op_f32(min(-344f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-473f + -338f))))), var_3.wwx << (_wgslsmith_sub_vec3_u32(u_input.a.xwz >> ((vec3<u32>(25214u, 35760u, u_input.a.x) | vec3<u32>(u_input.a.x, 0u, u_input.b.x)) % vec3<u32>(32u)), u_input.a.xxx) % vec3<u32>(32u)), -(vec3<i32>(-1i) * -abs(vec3<i32>(-2185i, u_input.c, -42282i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_4.c.wyw) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.b.x, -2325f, -1000f)))))), 1u, -975f);
}

