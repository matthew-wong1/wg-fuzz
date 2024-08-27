struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 1u, 1u, 1u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: i32, arg_3: vec3<i32>) -> i32 {
    return select(-47153i, _wgslsmith_clamp_i32(arg_3.x, i32(-1i) * -56924i, max(reverseBits(-1i), -8591i)), true || all(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))));
}

fn func_2() -> i32 {
    let var_0 = select(!select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true)), !(!vec4<bool>(true, 29681u > u_input.c, false, true)), vec4<bool>(-2147483647i != min(func_3(Struct_4(-528f), Struct_1(vec3<u32>(1u, global0.x, u_input.c)), u_input.b, vec3<i32>(1i, u_input.b, u_input.a)), max(u_input.a, u_input.a)), true != all(vec2<bool>(true, true)), true, !all(vec4<bool>(true, true, true, true))));
    global0 = vec4<u32>(_wgslsmith_sub_u32(61440u | min(global0.x, 5642u), u_input.c), _wgslsmith_mult_u32(_wgslsmith_div_u32(global0.x << (u_input.c % 32u), select(global0.x, global0.x, var_0.x)), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(10216u, global0.x, global0.x, 4294967295u), vec4<u32>(u_input.c, 22200u, u_input.c, 1u)))), 0u, ~abs(global0.x)) << (abs(max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, global0.x, global0.x, 13906u), ~vec4<u32>(0u, global0.x, global0.x, global0.x)), vec4<u32>(~6321u, 4988u, 8709u, global0.x))) % vec4<u32>(32u));
    let var_1 = firstTrailingBit(abs(u_input.b));
    let var_2 = Struct_2(Struct_1(select(_wgslsmith_mod_vec3_u32(global0.xzz >> (global0.xwx % vec3<u32>(32u)), global0.zyy ^ vec3<u32>(0u, u_input.c, u_input.c)), abs(global0.yzw & global0.xxy), true)), 1u);
    global0 = max(reverseBits(vec4<u32>(~(~global0.x), ~countOneBits(54895u), abs(~1u), global0.x)), ~min(~vec4<u32>(u_input.c, u_input.c, 4294967295u, 4294967295u), min(vec4<u32>(var_2.a.a.x, 1u, 1u, global0.x), vec4<u32>(4321u, u_input.c, 0u, u_input.c))) ^ _wgslsmith_clamp_vec4_u32((vec4<u32>(global0.x, global0.x, 4072u, 39691u) | vec4<u32>(u_input.c, 41281u, 39900u, u_input.c)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(22293u, global0.x, global0.x, global0.x), vec4<u32>(8001u, 4294967295u, var_2.a.a.x, 69036u)), vec4<u32>(10752u, firstTrailingBit(u_input.c), ~4294967295u, ~24412u), vec4<u32>(_wgslsmith_dot_vec2_u32(global0.wx, vec2<u32>(16906u, 6854u)), select(u_input.c, u_input.c, true), global0.x, ~global0.x)));
    return _wgslsmith_dot_vec3_i32(min(select(vec3<i32>(var_1, var_1, var_1), vec3<i32>(-23258i, u_input.a, -1i), var_0.yxy) & abs(max(vec3<i32>(u_input.b, u_input.a, u_input.a), vec3<i32>(1i, var_1, u_input.b))), vec3<i32>(-2147483647i, 5870i, firstLeadingBit(var_1))), vec3<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_1, var_1, var_1), vec3<i32>(u_input.a, u_input.a, 37522i), true), max(vec3<i32>(var_1, var_1, var_1), vec3<i32>(var_1, u_input.b, u_input.b))), -func_3(Struct_4(658f), var_2.a, -32847i, vec3<i32>(-8511i, -1i, 2147483647i)), ~u_input.a) | abs(abs(firstTrailingBit(vec3<i32>(u_input.a, -2147483647i, -1i)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: Struct_3) -> vec2<i32> {
    var var_0 = ~1i;
    let var_1 = arg_2.x;
    var var_2 = -u_input.b;
    var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -1i, arg_3.a.x, arg_1.a.x), vec3<i32>(arg_1.a.x, -1i, func_2()));
    var var_3 = Struct_2(Struct_1(select(firstLeadingBit(global0.xww << (global0.wzz % vec3<u32>(32u))), abs(select(global0.zwy, vec3<u32>(u_input.c, 0u, global0.x), arg_0.yzz)), true)), 1u);
    return ~vec2<i32>(_wgslsmith_mod_i32(-u_input.a, firstTrailingBit(21828i)), countOneBits(0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a << (u_input.c % 32u);
    var var_1 = u_input.c;
    var var_2 = u_input.c;
    var var_3 = -_wgslsmith_add_vec2_i32(~vec2<i32>(-1i, u_input.b), func_1(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), Struct_3(-vec3<i32>(u_input.a, 0i, u_input.b)), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(2147483647i, -27695i, 1i), vec3<i32>(-2147483647i, var_0, 27633i)))));
    let var_4 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(452f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1638f, -994f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1367f, 163f))), _wgslsmith_f_op_f32(1298f + -1013f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-343f, _wgslsmith_f_op_f32(1898f + -1691f))) - 1832f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-732f)) - -1000f) * 1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(2368f, -2224f)), _wgslsmith_f_op_f32(f32(-1f) * -563f), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-897f, -1004f, true)))), _wgslsmith_f_op_f32(1042f + _wgslsmith_f_op_f32(min(554f, _wgslsmith_f_op_f32(min(1494f, 1132f)))))), vec4<bool>(!all(vec2<bool>(false, false)), any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, false, false), false)), false, true)));
    var var_5 = (_wgslsmith_f_op_f32(494f - _wgslsmith_f_op_f32(395f + 754f)) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1016f))), var_4.x))) & !(true & !(6665u <= u_input.c));
    global0 = min(vec4<u32>(885u, firstLeadingBit(countOneBits(11233u)), u_input.c, 1u), vec4<u32>(~(reverseBits(global0.x) << (u_input.c % 32u)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(max(39364u, u_input.c), _wgslsmith_mult_u32(u_input.c, u_input.c), global0.x), global0.x, 111676u ^ firstTrailingBit(4294967295u)), _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c, _wgslsmith_div_u32(global0.x, global0.x)), firstTrailingBit(global0.x >> (global0.x % 32u))), ~firstTrailingBit(firstLeadingBit(1u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, var_4);
}

