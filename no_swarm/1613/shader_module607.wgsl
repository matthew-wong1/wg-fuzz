struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> u32 {
    let var_0 = -u_input.e & (vec3<i32>(-1i) * -vec3<i32>(firstLeadingBit(1i), u_input.b.x, 1i));
    let var_1 = 59473i << (max(1u, firstTrailingBit(~45279u)) % 32u);
    var var_2 = var_0.x;
    let var_3 = vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 1i, u_input.d, u_input.d), vec4<i32>(var_0.x, -52040i, var_0.x, var_1)), vec4<i32>(max(var_0.x, var_0.x), select(-49758i, var_1, false), -2147483647i, -20092i));
    var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(7494i, 0i, ~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1i, -3619i, 63802i), var_0.x), -54733i), max(vec4<i32>(-1i) * -var_3, ~(~(vec4<i32>(var_3.x, var_3.x, var_0.x, var_0.x) ^ vec4<i32>(23149i, var_3.x, var_3.x, var_1)))));
    return 4294967295u;
}

fn func_3(arg_0: f32) -> vec4<f32> {
    let var_0 = Struct_1(166f, 2223u);
    let var_1 = vec3<u32>(0u, var_0.b, 4294967295u);
    var var_2 = true;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.a, 203f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * arg_0)))), _wgslsmith_sub_u32(firstTrailingBit(~4294967295u), _wgslsmith_mult_u32(var_1.x, var_0.b)));
    let var_4 = var_3;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1196f, var_3.a, arg_0, var_3.a))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1824f, -820f, var_0.a) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, var_0.a, var_4.a, 1344f), vec4<f32>(269f, -1208f, -305f, var_4.a))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, -1356f, -1449f, 1000f), vec4<f32>(var_4.a, 1224f, var_0.a, var_0.a)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1140f, -1716f, var_4.a, 149f), vec4<f32>(var_3.a, var_4.a, 1036f, var_4.a))))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_4.a), _wgslsmith_f_op_f32(max(var_4.a, arg_0)), _wgslsmith_f_op_f32(-var_4.a), var_3.a)), vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a * var_4.a)), var_0.a, -743f))));
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    let var_0 = 4294967295u != _wgslsmith_div_u32(arg_0.x, func_2(_wgslsmith_div_vec4_f32(vec4<f32>(-1362f, -581f, 737f, -2211f), vec4<f32>(832f, 352f, 2067f, 772f)), _wgslsmith_f_op_f32(sign(-1000f))) ^ _wgslsmith_dot_vec2_u32(max(arg_0.yx, vec2<u32>(29602u, arg_0.x)), ~vec2<u32>(35428u, arg_0.x)));
    var var_1 = var_0 | (!var_0 && true);
    var var_2 = reverseBits(~4294967295u >> ((arg_0.x >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 1303u), vec2<u32>(0u, arg_0.x)), 13040u) % 32u)) % 32u));
    var_2 = ~(~func_2(_wgslsmith_f_op_vec4_f32(func_3(-382f)), _wgslsmith_f_op_f32(-266f * -1329f))) << ((arg_0.x | 7872u) % 32u);
    var var_3 = abs(_wgslsmith_mult_i32(u_input.c, u_input.a));
    return _wgslsmith_dot_vec3_u32(min(abs(arg_0.xwz), ~(~vec3<u32>(arg_0.x, 13952u, arg_0.x))) >> (~abs(arg_0.yyz >> (vec3<u32>(arg_0.x, 0u, arg_0.x) % vec3<u32>(32u))) % vec3<u32>(32u)), arg_0.zwx);
}

fn func_4(arg_0: vec3<u32>, arg_1: f32) -> i32 {
    let var_0 = Struct_1(arg_1, 16963u);
    let var_1 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true))), select(!select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), vec2<bool>(true, true), true), true);
    var var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, _wgslsmith_add_u32(arg_0.x, 1u), select(1u, ~1u, true), _wgslsmith_mult_u32(arg_0.x, 41793u)), _wgslsmith_clamp_vec4_u32(~countOneBits(vec4<u32>(arg_0.x, 34850u, 68537u, 1u)), firstTrailingBit(~vec4<u32>(46686u, 4294967295u, var_0.b, 30036u)), vec4<u32>(firstTrailingBit(var_0.b), ~arg_0.x, arg_0.x, arg_0.x << (arg_0.x % 32u)))), vec4<u32>(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 55746u), vec4<u32>(1u, 1u, var_0.b, 7283u)), abs(8040u), 1u << (arg_0.x % 32u)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_0.b, 69570u, var_0.b, var_0.b)), vec4<u32>(1u, 1u, _wgslsmith_sub_u32(43725u, 682u), _wgslsmith_mult_u32(131346u, 1u))), arg_0.x, var_0.b));
    let var_3 = vec3<u32>(4294967295u, ~(~firstTrailingBit(var_2.x)), _wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, 0u), max(var_0.b, ~0u)));
    var_2 = vec4<u32>(~71596u, ~_wgslsmith_mult_u32(abs(4294967295u & var_3.x), 1u), 0u, ~min(~0u, 7380u));
    return -abs(u_input.c) ^ -33849i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(-576f)), min(firstTrailingBit(1u), 23028u));
    let var_1 = vec2<i32>(func_4(vec3<u32>(~var_0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, var_0.b), vec2<u32>(35274u, var_0.b)), func_1(vec4<u32>(var_0.b, var_0.b, 4294967295u, var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))) & 11613i, u_input.e.x);
    let var_2 = reverseBits(_wgslsmith_sub_vec2_i32(-vec2<i32>(~u_input.d, reverseBits(3504i)), ~(~u_input.b)));
    let var_3 = 13488i;
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-651f, -765f, _wgslsmith_f_op_f32(var_0.a * var_0.a), _wgslsmith_f_op_f32(sign(317f))))), vec4<f32>(966f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(915f, var_4.a)) - _wgslsmith_f_op_f32(-var_4.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_4.a - -1077f))), _wgslsmith_f_op_f32(-662f - _wgslsmith_f_op_f32(var_0.a - 573f))))), var_0.b, var_0.b, _wgslsmith_div_vec4_u32(~abs(vec4<u32>(5504u, var_4.b, var_0.b, var_4.b)), countOneBits(~(~vec4<u32>(29941u, var_0.b, var_0.b, 27492u)))));
}

