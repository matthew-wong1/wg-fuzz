struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-322f, 1662f));

var<private> global1: vec2<f32>;

var<private> global2: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = arg_2;
    let var_1 = var_0.a.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, global1.x, -1000f, var_1))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1983f, arg_0.a.x, global1.x, 474f))))))));
    let var_3 = vec3<u32>(46842u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(~52986u, ~4294967295u, min(4294967295u, 49947u)), _wgslsmith_mod_vec3_u32(select(vec3<u32>(6112u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 12285u, 53591u), vec3<bool>(arg_1.x, arg_1.x, false)), _wgslsmith_clamp_vec3_u32(vec3<u32>(88u, 69137u, 0u), vec3<u32>(0u, 21301u, 42076u), vec3<u32>(4294967295u, 32521u, 1u)))), 0u);
    global2 = ~select(var_3.x, 4294967295u, !any(vec2<bool>(false, true)));
    return var_3.yz;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: bool) -> vec3<i32> {
    let var_0 = vec4<i32>(u_input.a.x, ~(~_wgslsmith_mult_i32(u_input.a.x, -u_input.a.x)), _wgslsmith_mult_i32(u_input.a.x, -70791i), countOneBits(-u_input.a.x));
    let var_1 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u) << (func_3(arg_2, vec3<bool>(arg_1.x, arg_3, false), Struct_1(arg_2.a)) % vec2<u32>(32u)), ~(~vec2<u32>(76951u, 0u)), vec2<u32>(1u, _wgslsmith_mult_u32(51060u, 6477u))), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), func_3(Struct_1(arg_0.a), arg_1.xxx, arg_2)), select(vec2<u32>(38603u, 26262u), vec2<u32>(15550u, 25179u), vec2<bool>(false, arg_1.x))));
    global1 = vec2<f32>(1f, 1f);
    var var_2 = !select(any(arg_1), true, arg_3);
    let var_3 = _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a, reverseBits(var_0)), u_input.a) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(var_1, var_1, var_1, 1u), vec4<u32>(88389u, var_1, 52592u, 28645u), true) ^ min(vec4<u32>(0u, 0u, var_1, var_1), vec4<u32>(var_1, 4294967295u, 9782u, var_1))), abs(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_1, var_1, var_1, 4294967295u), vec4<u32>(19344u, var_1, var_1, var_1)))), vec4<u32>(0u, _wgslsmith_sub_u32(func_3(Struct_1(arg_0.a), arg_1.yzx, arg_2).x, ~var_1), 4294967295u, _wgslsmith_div_u32(var_1, 1u))) % vec4<u32>(32u));
    return u_input.a.yyx;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(floor(global1.x)) <= 169f;
    let var_1 = vec3<i32>(u_input.a.x, -9039i ^ ~(~_wgslsmith_div_i32(-765i, arg_0)), select(u_input.a.x, ~_wgslsmith_mod_i32(0i, 104055i), any(vec2<bool>(var_0, var_0)) && var_0) ^ 0i);
    var var_2 = firstTrailingBit(~vec4<i32>(_wgslsmith_dot_vec3_i32(var_1, vec3<i32>(-2147483647i, arg_0, 65540i)), arg_0 << (1u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 32180i, -2147483647i), vec3<i32>(-2147483647i, 10287i, arg_0)), max(-8459i, 0i))) << (vec4<u32>(~_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 50423u, 45113u, 0u), vec4<u32>(0u, 0u, 34571u, 0u))), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(48556u, 45297u, 4294967295u), max(vec3<u32>(47332u, 4294967295u, 4711u), vec3<u32>(36577u, 9400u, 7918u))), _wgslsmith_mod_u32(firstTrailingBit(~16894u), ~min(0u, 4294967295u)), select(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 5275u, 38920u), ~vec3<u32>(4294967295u, 4294967295u, 0u)), 0u, true)) % vec4<u32>(32u));
    global1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, _wgslsmith_f_op_f32(1000f * -451f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 214f) - arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x * arg_2.a.x))))), select(vec2<bool>(var_0, any(select(vec2<bool>(true, var_0), vec2<bool>(false, var_0), vec2<bool>(true, var_0)))), select(!select(vec2<bool>(var_0, true), vec2<bool>(true, false), vec2<bool>(var_0, var_0)), vec2<bool>(-273f > arg_1.a.x, true != var_0), !(!var_0)), var_0)));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-583f - 1926f), _wgslsmith_f_op_f32(-arg_3.a.x)))));
    return arg_3;
}

fn func_1(arg_0: vec3<i32>) -> vec2<u32> {
    var var_0 = _wgslsmith_add_u32(46107u, ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 6094u, 0u, 33368u), vec4<u32>(1u, 2069u, 45766u, 0u)))));
    global0 = func_4(~_wgslsmith_dot_vec3_i32(min(func_2(Struct_1(vec2<f32>(global1.x, -411f)), vec4<bool>(true, false, true, true), Struct_1(vec2<f32>(662f, global0.a.x)), false), arg_0 | vec3<i32>(-25549i, arg_0.x, 0i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 2147483647i, -2147483647i), arg_0) & (u_input.a.zyx ^ u_input.a.wzz)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(825f, 878f))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global0.a)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(329f, global0.a.x))))), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(global0.a))));
    global2 = ~61834u;
    var var_1 = 4294967295u;
    global0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(exp2(global1.x))) - vec2<f32>(_wgslsmith_f_op_f32(sign(-530f)), -1164f)), _wgslsmith_f_op_vec2_f32(global0.a * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global0.a + vec2<f32>(global1.x, 110f)))))));
    return ~vec2<u32>(abs(1u), firstTrailingBit(_wgslsmith_add_u32(1u, 30914u)));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = arg_0.x ^ _wgslsmith_add_u32(~abs(_wgslsmith_mult_u32(arg_0.x, arg_0.x)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(arg_0.x, arg_0.x), arg_0), select(vec2<u32>(76914u, 1u), arg_0, false)), 0u));
    global0 = func_4(_wgslsmith_div_i32(~_wgslsmith_add_i32(u_input.a.x, -21065i << (1u % 32u)), u_input.a.x ^ u_input.a.x), func_4(_wgslsmith_add_i32(44333i, _wgslsmith_mult_i32(6427i, u_input.a.x)) | u_input.a.x, func_4(u_input.a.x, func_4(u_input.a.x | u_input.a.x, Struct_1(global0.a), Struct_1(global0.a), func_4(u_input.a.x, Struct_1(vec2<f32>(global0.a.x, 1000f)), Struct_1(vec2<f32>(1552f, global1.x)), Struct_1(vec2<f32>(global0.a.x, 200f)))), func_4(-53261i, Struct_1(global0.a), func_4(u_input.a.x, Struct_1(vec2<f32>(663f, global1.x)), Struct_1(global0.a), Struct_1(vec2<f32>(-1000f, global0.a.x))), Struct_1(vec2<f32>(459f, 1000f))), Struct_1(_wgslsmith_f_op_vec2_f32(global0.a - global0.a))), Struct_1(vec2<f32>(-317f, _wgslsmith_div_f32(global1.x, global1.x))), Struct_1(vec2<f32>(-1285f, -916f))), func_4(~u_input.a.x, func_4(_wgslsmith_mult_i32(23557i, ~(-6031i)), Struct_1(global0.a), func_4(5270i >> (arg_0.x % 32u), func_4(u_input.a.x, Struct_1(global0.a), Struct_1(global0.a), Struct_1(vec2<f32>(-743f, -1000f))), func_4(0i, Struct_1(vec2<f32>(global1.x, -567f)), Struct_1(global0.a), Struct_1(vec2<f32>(544f, global0.a.x))), func_4(u_input.a.x, Struct_1(vec2<f32>(-1269f, global0.a.x)), Struct_1(vec2<f32>(-924f, global0.a.x)), Struct_1(vec2<f32>(global0.a.x, global1.x)))), func_4(~0i, Struct_1(global0.a), func_4(39081i, Struct_1(vec2<f32>(global1.x, -345f)), Struct_1(global0.a), Struct_1(vec2<f32>(784f, global0.a.x))), Struct_1(global0.a))), func_4(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-19640i, -2147483647i, u_input.a.x), u_input.a.wwx, vec3<i32>(u_input.a.x, 12044i, 16142i)), u_input.a.xyw), func_4(u_input.a.x, Struct_1(vec2<f32>(global1.x, global0.a.x)), Struct_1(global0.a), Struct_1(vec2<f32>(928f, global1.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a)), Struct_1(func_4(-69989i, Struct_1(global0.a), Struct_1(vec2<f32>(global0.a.x, global1.x)), Struct_1(vec2<f32>(global1.x, 2073f))).a)), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, 454f), _wgslsmith_f_op_vec2_f32(step(global0.a, vec2<f32>(-2565f, -232f))), all(arg_1.zy))))), Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a)));
    var var_1 = vec2<bool>(true, true & !arg_1.x);
    let var_2 = arg_1.yx;
    let var_3 = _wgslsmith_f_op_f32(round(2041f));
    return func_4(_wgslsmith_sub_i32(52673i | u_input.a.x, 0i), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(global1.x, global0.a.x)), -1322f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.x, global0.a.x))))), Struct_1(global0.a), Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(global0.a.x - global0.a.x), global0.a.x), vec2<f32>(var_3, _wgslsmith_f_op_f32(sign(-116f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a.x * global1.x)))))) <= global0.a.x;
    let var_1 = firstTrailingBit(u_input.a.x ^ -27567i);
    var var_2 = !(!(!vec2<bool>(global1.x != global1.x, true)));
    let var_3 = func_5(max(~(select(vec2<u32>(11094u, 0u), vec2<u32>(1636u, 2966u), var_2.x) ^ abs(vec2<u32>(17750u, 24673u))), func_1(u_input.a.xzx) << (_wgslsmith_sub_vec2_u32(min(vec2<u32>(85281u, 4294967295u), vec2<u32>(17182u, 0u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1247u, 53106u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(70990u, 3116u))) % vec2<u32>(32u))), vec3<bool>(var_2.x, any(vec3<bool>(false, false || var_2.x, true)), false));
    var var_4 = var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_add_u32(1u, _wgslsmith_add_u32(1u, ~49716u)), _wgslsmith_mult_u32(~(~13863u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(22373u, 1u), vec2<u32>(0u, 18596u)))), _wgslsmith_sub_vec4_u32(abs(min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), abs(~vec4<u32>(36627u, 1u, 4294967295u, 25025u)) | ~select(vec4<u32>(6095u, 1u, 46522u, 14355u), vec4<u32>(15455u, 0u, 10530u, 45327u), vec4<bool>(var_2.x, var_2.x, var_2.x, false))));
}

