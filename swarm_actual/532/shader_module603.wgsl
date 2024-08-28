struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: i32) -> i32 {
    var var_0 = Struct_1(vec4<i32>(firstTrailingBit(arg_3) ^ 35665i, _wgslsmith_div_i32(0i, -10395i), ~abs(70668i), arg_1.a.a.x) >> (~vec4<u32>(select(1u, 38234u, arg_1.a.b.x), ~4294967295u, 7588u >> (arg_1.a.c.x % 32u), 81873u >> (arg_2.x % 32u)) % vec4<u32>(32u)), select(select(select(select(arg_1.a.b, arg_1.a.b, arg_1.a.b.x), !vec2<bool>(true, arg_1.a.b.x), vec2<bool>(arg_1.a.b.x, arg_1.a.b.x)), select(vec2<bool>(arg_1.a.b.x, arg_1.a.b.x), select(arg_1.a.b, vec2<bool>(arg_1.a.b.x, true), true), select(arg_1.a.b, arg_1.a.b, vec2<bool>(arg_1.a.b.x, arg_1.a.b.x))), arg_1.a.b.x), arg_1.a.b, arg_1.a.b), arg_1.a.c);
    let var_1 = arg_1.a.b.x;
    var var_2 = arg_1.a;
    var var_3 = arg_1.a;
    return 1i;
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = Struct_1(vec4<i32>(arg_0, u_input.a.x ^ arg_0, _wgslsmith_sub_i32(_wgslsmith_add_i32(func_3(u_input.a.x, Struct_2(Struct_1(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, arg_0), vec2<bool>(false, false), vec3<u32>(19255u, global1.x, 16322u)), vec4<f32>(-413f, 244f, -1113f, -1585f)), vec3<u32>(4294967295u, global1.x, global1.x), u_input.a.x), _wgslsmith_mult_i32(1i, arg_0)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-94147i, 0i, u_input.a.x)), _wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(2147483647i, arg_0, arg_0)))), 1i), !vec2<bool>(false, all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)))), abs(~(~vec3<u32>(global1.x, 1u, 4294967295u))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1882f * 719f)), 1015f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -992f))));
    global0 = _wgslsmith_div_i32(-1i, ~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, u_input.a.x, arg_0, u_input.a.x), var_0.a), vec4<i32>(2147483647i, countOneBits(-29026i), -945i, 1i)));
    global0 = _wgslsmith_mod_i32(-1i, var_0.a.x);
    let var_2 = Struct_4(abs(-firstTrailingBit(~u_input.a)), Struct_2(var_0, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1297f), var_1.x), var_1.x, var_1.x, _wgslsmith_f_op_f32(-var_1.x))));
    return var_2.b.a.a.x;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: f32) -> vec2<u32> {
    let var_0 = Struct_4(vec3<i32>(arg_2, _wgslsmith_mod_i32((u_input.a.x | arg_2) << (global1.x % 32u), 0i), 0i), Struct_2(Struct_1(-(~vec4<i32>(1i, 0i, arg_2, -7399i)), vec2<bool>(select(true, false, true), true), vec3<u32>(68677u, global1.x << (59512u % 32u), 1u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(656f, _wgslsmith_f_op_f32(-arg_0), arg_0, arg_0) - vec4<f32>(arg_1, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(631f)), _wgslsmith_f_op_f32(trunc(arg_1))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(var_0.b.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) * arg_1))))), _wgslsmith_f_op_f32(-1349f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(sign(-566f))))), -566f, _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(156f, _wgslsmith_f_op_f32(-arg_1)))));
    let var_2 = !(!select(select(vec3<bool>(var_0.b.a.b.x, var_0.b.a.b.x, var_0.b.a.b.x), select(vec3<bool>(var_0.b.a.b.x, false, true), vec3<bool>(var_0.b.a.b.x, var_0.b.a.b.x, var_0.b.a.b.x), vec3<bool>(false, var_0.b.a.b.x, var_0.b.a.b.x)), true), select(!vec3<bool>(var_0.b.a.b.x, var_0.b.a.b.x, var_0.b.a.b.x), vec3<bool>(true, var_0.b.a.b.x, true), !vec3<bool>(var_0.b.a.b.x, var_0.b.a.b.x, var_0.b.a.b.x)), var_0.b.a.b.x));
    global1 = var_0.b.a.c.yz;
    global0 = ~(-363i) ^ ~arg_2;
    return ~(~vec2<u32>(global1.x, ~_wgslsmith_dot_vec3_u32(var_0.b.a.c, vec3<u32>(4294967295u, global1.x, 33556u))));
}

fn func_1() -> f32 {
    global1 = func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-850f + -1020f))), -293f, ~select(func_2(u_input.a.x), _wgslsmith_add_i32(-7732i, u_input.a.x), true), 926f) | _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(64984u, global1.x)), reverseBits(~vec2<u32>(global1.x, 1u))), vec2<u32>(firstLeadingBit(0u), ~(~40030u)));
    global1 = _wgslsmith_add_vec2_u32(vec2<u32>(~firstTrailingBit(0u), ~11013u), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(27908u, 4294967295u), min(vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, global1.x))), ~vec2<u32>(global1.x, global1.x)), ~(global1.x ^ global1.x)));
    global1 = abs(vec2<u32>(global1.x << (global1.x % 32u), 40654u));
    let var_0 = any(!select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, true)), true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), true)));
    let var_1 = 253f;
    return _wgslsmith_f_op_f32(max(566f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-160f, -173f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(~(~vec2<u32>(0u, _wgslsmith_div_u32(global1.x, 0u))));
    global0 = -43608i << (((abs(~global1.x) & global1.x) ^ global1.x) % 32u);
    global1 = vec2<u32>(~(0u & (abs(0u) & (39574u & global1.x))), ~global1.x);
    global0 = abs(~(~(u_input.a.x >> (global1.x % 32u)))) ^ -1000i;
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2016f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + 1000f);
    global1 = ~(~vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(18061u, 4294967295u, global1.x, 24042u), vec4<u32>(30297u, 7712u, global1.x, global1.x)), ~global1.x), firstTrailingBit(_wgslsmith_add_u32(global1.x, global1.x))));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -744f) + -428f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

