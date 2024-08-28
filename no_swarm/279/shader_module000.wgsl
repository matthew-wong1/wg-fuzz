struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: vec2<f32>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>) -> bool {
    global0 = _wgslsmith_div_u32(u_input.a, _wgslsmith_div_u32(52993u, u_input.a));
    let var_0 = Struct_2(Struct_1(0u, select(!arg_0.zy, select(select(arg_0.zx, vec2<bool>(arg_0.x, false), vec2<bool>(arg_0.x, arg_0.x)), arg_0.xx, arg_0.yw), ~u_input.e.x < u_input.e.x), u_input.c.x, 66055u, vec3<i32>(~u_input.b.x, u_input.b.x | 11205i, u_input.c.x) ^ reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.c))));
    var var_1 = 44119u;
    let var_2 = -9674i <= firstLeadingBit(min(-1i, u_input.b.x));
    let var_3 = ~_wgslsmith_div_vec2_u32(u_input.e << (max(vec2<u32>(u_input.e.x, u_input.e.x), u_input.e | u_input.e) % vec2<u32>(32u)), ~u_input.e);
    return !(global1.x >= global1.x) != all(vec3<bool>(true, any(vec3<bool>(var_2, true, false)), any(vec4<bool>(var_0.a.b.x, true, true, false))));
}

fn func_2() -> vec2<bool> {
    var var_0 = any(select(vec3<bool>(func_3(vec4<bool>(false, false, false, true)), true, any(vec4<bool>(true, false, true, false)) | all(vec2<bool>(false, true))), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), !(26255u != u_input.d))));
    let var_1 = _wgslsmith_mod_vec4_i32(firstLeadingBit(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, 56827i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.c.x, u_input.b.x, 2147483647i, u_input.b.x), vec4<i32>(5492i, u_input.c.x, u_input.c.x, -2147483647i)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x >> (4374u % 32u), -1i, i32(-1i) * -22008i, u_input.c.x), ~(~vec4<i32>(-1i, -3524i, u_input.b.x, u_input.b.x)), ~(-vec4<i32>(54392i, u_input.b.x, -1i, 15885i)))) | -(vec4<i32>(2147483647i, ~u_input.c.x, max(1i, 1i), abs(u_input.b.x)) & _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(u_input.b.x, -38459i, -1i, u_input.b.x)), vec4<i32>(-2147483647i, u_input.b.x, -23910i, 8686i) | vec4<i32>(u_input.c.x, u_input.b.x, u_input.b.x, -63428i)));
    global1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, 683f), vec2<f32>(global1.x, global1.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-696f, global1.x)))))));
    var_0 = true;
    let var_2 = Struct_1(u_input.a, vec2<bool>(~_wgslsmith_mod_u32(0u, u_input.a) == abs(~30646u), true), -15203i, ~u_input.d, vec3<i32>(var_1.x, ~_wgslsmith_mod_i32(countOneBits(u_input.c.x), ~var_1.x), -15322i));
    return var_2.b;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = var_0;
    var var_2 = var_1.a;
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(-667f * 146f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, 793f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_f_op_f32(abs(global1.x)))));
    let var_4 = firstLeadingBit(select(countOneBits(arg_0.zx), ~vec2<u32>(55111u, var_1.a.a) | _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.a, var_1.a.a), vec2<u32>(19169u, var_2.d)), !(var_1.a.b.x || false))) | u_input.e;
    return var_1;
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = func_4(vec3<u32>(~28268u, u_input.a, ~_wgslsmith_mod_u32(arg_1.a.a >> (32831u % 32u), ~u_input.d)), func_4(~(~(vec3<u32>(55870u, 66921u, arg_1.a.a) >> (vec3<u32>(4063u, arg_1.a.d, 4294967295u) % vec3<u32>(32u)))), arg_1));
    let var_1 = vec3<bool>(true, any(select(select(!vec3<bool>(arg_1.a.b.x, arg_1.a.b.x, false), vec3<bool>(true, true, true), arg_1.a.b.x), select(vec3<bool>(var_0.a.b.x, var_0.a.b.x, arg_1.a.b.x), select(vec3<bool>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x), vec3<bool>(arg_1.a.b.x, true, false), true), true), vec3<bool>(true, arg_1.a.b.x || false, arg_1.a.b.x))), arg_1.a.b.x);
    global1 = arg_2.wz;
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-847f, _wgslsmith_f_op_f32(-1862f * -1203f)) - vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 - arg_2.x), arg_2.x, var_1.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-117f * _wgslsmith_f_op_f32(797f * arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - global1.x))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_div_f32(global1.x, arg_2.x))))));
    return func_4(_wgslsmith_mod_vec3_u32(vec3<u32>(~firstTrailingBit(0u), ~arg_1.a.a, reverseBits(1u)), min(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_1.a.d, 23000u), vec3<u32>(arg_1.a.a, u_input.a, var_0.a.d)), abs(~vec3<u32>(1u, u_input.d, var_0.a.d)))), arg_1).a;
}

fn func_1() -> vec3<bool> {
    var var_0 = u_input.e.x;
    var var_1 = func_5(_wgslsmith_f_op_f32(f32(-1f) * -1388f), func_4(vec3<u32>(~max(u_input.a, 13981u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), u_input.e), ~vec2<u32>(9608u, 0u)), ~(~u_input.a)), Struct_2(Struct_1(abs(1u), func_2(), _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, u_input.c.x, u_input.b.x)), u_input.a, vec3<i32>(-20010i, u_input.b.x, u_input.b.x)))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(315f, -1648f)), -142f, false)) * -1466f), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1085f))));
    var var_2 = _wgslsmith_add_vec3_i32(abs(var_1.e), -vec3<i32>(1i, var_1.e.x, ~2147483647i));
    let var_3 = _wgslsmith_sub_i32(-2147483647i, var_1.e.x);
    var var_4 = ~vec2<u32>(~7298u, ~(1u | u_input.e.x));
    return vec3<bool>(true, var_1.b.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false, true, (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(952f)) + _wgslsmith_f_op_f32(ceil(-108f))) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global1.x))))) || true, !(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, 26182u, u_input.d), vec4<u32>(0u, u_input.d, u_input.a, u_input.d)), vec4<u32>(1u, u_input.a, 62408u, u_input.a)) < 4294967295u));
    var_0 = vec4<bool>(var_0.x, false, all(select(var_0.ywx, select(func_1(), var_0.zyy, true), vec3<bool>(!var_0.x, !var_0.x, !var_0.x))), !func_5(-356f, func_4(vec3<u32>(64542u, u_input.e.x, u_input.d) | vec3<u32>(u_input.a, u_input.e.x, u_input.e.x), Struct_2(Struct_1(u_input.e.x, var_0.yw, u_input.c.x, u_input.e.x, vec3<i32>(-10557i, -636i, 0i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 1224f, -928f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, -2312f, 1440f, global1.x))))).b.x);
    var_0 = vec4<bool>(var_0.x, false, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-global1.x)))) != global1.x, !var_0.x | true);
    let var_1 = ~firstLeadingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(-72799i, u_input.b.x, -2117i, -3429i)), select(vec4<i32>(-39626i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, 1i, u_input.b.x, u_input.c.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x))), vec4<i32>(0i ^ u_input.c.x, i32(-1i) * -1i, 1i, u_input.c.x)));
    var var_2 = global1.x;
    let var_3 = u_input.e;
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.x)), global1.x)))) + vec2<f32>(-172f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) + global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) + global1.x), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * global1.x), _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e.x, u_input.d, var_3.x), vec3<u32>(var_3.x, u_input.a, 4294967295u)), select(vec3<u32>(u_input.a, var_3.x, 113646u), vec3<u32>(4294967295u, u_input.e.x, 1u), vec3<bool>(true, var_0.x, var_0.x))), select(1u, ~var_3.x, u_input.a < u_input.a)), 4294967295u));
}

