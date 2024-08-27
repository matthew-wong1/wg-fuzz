struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(15668u, 1u, 0u, 1756u);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> bool {
    global0 = vec4<u32>(1u, _wgslsmith_sub_u32(global0.x, 16049u), arg_2.a.b, firstTrailingBit(_wgslsmith_mult_u32((arg_2.b << (0u % 32u)) | ~22787u, ~(~arg_2.a.b))));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-827f, 179f, arg_2.d)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_2.d, 1874f) * vec3<f32>(-1187f, arg_2.d, arg_2.d)), vec3<f32>(arg_2.d, -1136f, arg_2.d)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d, arg_1, 919f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2061f, -1086f, arg_2.d))), select(!vec3<bool>(true, arg_0, arg_0), !vec3<bool>(arg_2.c, arg_2.a.c, arg_0), vec3<bool>(true, true, true))))));
    let var_1 = firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(select(0u, global0.x, arg_0), global0.x, global0.x), select(_wgslsmith_div_vec3_u32(vec3<u32>(77617u, arg_2.a.b, 0u), global0.yyw), vec3<u32>(global0.x, global0.x, 24772u), select(vec3<bool>(arg_2.c, arg_2.c, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))));
    global0 = vec4<u32>(4294967295u, firstLeadingBit(0u), 42314u, var_1);
    var var_2 = arg_2;
    return !arg_2.a.c;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = ~(global0.xzy << (global0.wyz % vec3<u32>(32u)));
    var var_1 = arg_0;
    var_0 = ~_wgslsmith_mod_vec3_u32(~select(_wgslsmith_div_vec3_u32(global0.xzw, vec3<u32>(global0.x, global0.x, 70006u)), min(global0.yxw, global0.yww), true), global0.yyx);
    var var_2 = Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), func_3(true, _wgslsmith_div_f32(-282f, 1140f), Struct_2(Struct_1(vec2<bool>(false, true), 0u, false), 0u, true, 338f))), (_wgslsmith_f_op_f32(933f - 512f) >= _wgslsmith_f_op_f32(floor(-246f))) == !all(vec3<bool>(false, false, false))), _wgslsmith_mult_u32(min(~var_0.x, ~46095u) ^ ~(~1u), reverseBits(var_0.x)), all(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), true)));
    let var_3 = _wgslsmith_clamp_i32(u_input.a.x, firstTrailingBit(2147483647i), _wgslsmith_mult_i32(46102i, _wgslsmith_add_i32(_wgslsmith_add_i32(arg_0, max(u_input.a.x, 13675i)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -1i, -8447i), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x))))));
    return Struct_1(var_2.a, var_2.b | 1u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -2298f)), _wgslsmith_f_op_f32(select(-1000f, 271f, true)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2291f + _wgslsmith_f_op_f32(2111f - -1140f)) * 1031f));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = func_2(abs(_wgslsmith_mult_i32(abs(_wgslsmith_add_i32(u_input.a.x, u_input.a.x)), _wgslsmith_div_i32(-u_input.a.x, -58482i))));
    var var_1 = _wgslsmith_f_op_f32(arg_1.d + 670f);
    var var_2 = Struct_1(vec2<bool>(_wgslsmith_sub_u32(global0.x, ~arg_0.b) <= _wgslsmith_mod_u32(abs(1u), 42253u), arg_0.a.x), _wgslsmith_clamp_u32(global0.x, firstLeadingBit(abs(var_0.b)), global0.x) >> (abs(reverseBits(var_0.b)) % 32u), all(!(!(!arg_1.a.a))));
    let var_3 = func_2(u_input.a.x);
    let var_4 = _wgslsmith_mod_vec4_i32(firstTrailingBit(~(~vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 0i) >> (abs(vec4<u32>(var_0.b, var_3.b, 25451u, 0u)) % vec4<u32>(32u)))), vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(18704i, 82675i, u_input.a.x, u_input.a.x), vec4<i32>(0i, u_input.a.x, 32825i, 48906i)), abs(vec4<i32>(u_input.a.x, 14083i, u_input.a.x, u_input.a.x))));
    return func_2(2147483647i).a;
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_2(func_2(arg_1), _wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec2_u32(global0.xy, arg_3.zz)) >> (27592u % 32u), !(!arg_2.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(537f, 1421f), -240f, arg_2.c && true))), 1387f));
    let var_1 = reverseBits(func_2(~1i).b);
    var var_2 = !(!select(!select(vec3<bool>(true, arg_2.c, true), vec3<bool>(var_0.a.c, var_0.c, var_0.a.a.x), vec3<bool>(var_0.a.a.x, var_0.a.c, arg_2.a.x)), !(!vec3<bool>(true, arg_2.c, true)), vec3<bool>(false, !var_0.c, arg_2.a.x | var_0.c)));
    let var_3 = func_2(arg_0.x);
    let var_4 = vec3<i32>(_wgslsmith_sub_i32(-(~firstTrailingBit(-5899i)), -14872i), abs(~(~arg_1)), arg_0.x);
    return func_2(var_4.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(_wgslsmith_div_vec3_i32(~(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), -(vec3<i32>(u_input.a.x, u_input.a.x, 0i) << (vec3<u32>(33087u, global0.x, global0.x) % vec3<u32>(32u)))), u_input.a.x, Struct_1(select(vec2<bool>(true, true), func_1(Struct_1(vec2<bool>(false, true), 10959u, false), Struct_2(Struct_1(vec2<bool>(true, true), global0.x, true), 0u, true, 1000f)), true), 0u, all(vec2<bool>(true, true))), vec3<u32>(_wgslsmith_mod_u32(~global0.x, 27281u ^ global0.x), select(_wgslsmith_clamp_u32(51215u, global0.x, 26511u), ~global0.x, true), ~(~39762u))), global0.x, func_3(!all(vec2<bool>(true, false)), 1f, Struct_2(Struct_1(vec2<bool>(true, false), global0.x, true), _wgslsmith_dot_vec3_u32(global0.yyz, global0.xxw), true, _wgslsmith_f_op_f32(422f + -711f))) && all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-1267f * 270f));
    global0 = _wgslsmith_mod_vec4_u32(~(~(~min(vec4<u32>(global0.x, 33891u, var_0.b, var_0.b), vec4<u32>(var_0.a.b, var_0.b, global0.x, 4294967295u)))), select(_wgslsmith_clamp_vec4_u32(~reverseBits(vec4<u32>(4294967295u, global0.x, var_0.b, global0.x)), ~select(vec4<u32>(global0.x, 9557u, 0u, 65203u), vec4<u32>(1u, 1084u, var_0.a.b, 20894u), vec4<bool>(var_0.c, var_0.a.a.x, false, var_0.a.c)), countOneBits(~vec4<u32>(global0.x, 0u, global0.x, var_0.b))), _wgslsmith_add_vec4_u32(~(~vec4<u32>(var_0.a.b, var_0.b, var_0.b, 99333u)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 0u, var_0.b, 47839u), vec4<u32>(global0.x, global0.x, 4294967295u, var_0.a.b)), vec4<u32>(var_0.a.b, global0.x, global0.x, 48991u))), select(vec4<bool>(func_3(false, var_0.d, var_0), var_0.a.a.x, !var_0.c, var_0.c), vec4<bool>(false, var_0.c, var_0.a.c, true), true)));
    var var_1 = func_2(-u_input.a.x);
    let var_2 = var_0.c;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, var_0.d, var_0.d, var_0.d) * vec4<f32>(1174f, var_0.d, var_0.d, var_0.d)))) + vec4<f32>(268f, var_0.d, _wgslsmith_f_op_f32(trunc(-386f)), _wgslsmith_f_op_f32(step(var_0.d, _wgslsmith_div_f32(var_0.d, var_0.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(trunc(-1051f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_div_f32(2045f, var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1371f)) * 1855f)));
}

