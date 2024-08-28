struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(74100u, 45132u);

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: array<Struct_2, 31>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    global0 = vec2<u32>(_wgslsmith_add_u32(~global0.x, select(0u, 0u, global1.x)), global0.x);
    global2 = array<Struct_2, 31>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1662f, 309f) + vec2<f32>(-810f, 686f)) + vec2<f32>(-625f, 1000f)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(690f, -1000f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-183f, 1381f) - vec2<f32>(-2108f, 1781f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-177f, -540f)))))), vec2<bool>(global1.x, true))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-452f, 359f))))) - vec2<f32>(189f, -1000f)));
    global2 = array<Struct_2, 31>();
    global0 = _wgslsmith_sub_vec2_u32(~reverseBits(~vec2<u32>(global0.x, 14060u)) << (vec2<u32>(96404u, global0.x) % vec2<u32>(32u)), vec2<u32>(~(~global0.x), ~global0.x & ~2080u) & _wgslsmith_mult_vec2_u32(vec2<u32>(~global0.x, 49590u), firstLeadingBit(firstLeadingBit(vec2<u32>(global0.x, 8555u)))));
    return abs(~abs(vec2<u32>(global0.x, 22359u))) ^ ~vec2<u32>(~45329u, 1u);
}

fn func_2(arg_0: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(~func_3(), vec2<u32>(55383u, 45292u) & min(vec2<u32>(4294967295u, 23640u), vec2<u32>(global0.x, 50410u))), ~_wgslsmith_div_vec2_u32(select(vec2<u32>(global0.x, global0.x), vec2<u32>(0u, global0.x), vec2<bool>(arg_0.x, arg_0.x)), vec2<u32>(global0.x, 1u) >> (vec2<u32>(30500u, 4911u) % vec2<u32>(32u))) & vec2<u32>(54694u, 1u));
    var var_1 = (reverseBits(countOneBits(-2147483647i) >> (global0.x % 32u)) >> (1u % 32u)) & _wgslsmith_clamp_i32(firstLeadingBit(-1i), _wgslsmith_mult_i32(u_input.b, -(i32(-1i) * -30286i)), _wgslsmith_add_i32(-29678i, u_input.b));
    global2 = array<Struct_2, 31>();
    var var_2 = reverseBits(~(~(~vec3<u32>(global0.x, global0.x, var_0) | vec3<u32>(global0.x, global0.x, 7539u))));
    var var_3 = Struct_3(Struct_1(select(arg_0, !arg_0, arg_0), ~_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(19739i, 50444i)), -vec2<i32>(u_input.b, 33348i))), true);
    return global1.x;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = select(select(arg_0.a, !vec3<bool>(arg_0.a.x, arg_0.a.x == true, arg_0.a.x == true), !arg_0.a.x), select(vec3<bool>(true & (-2997f == arg_1), !global1.x || true, true), select(select(select(arg_0.a, vec3<bool>(arg_0.a.x, global1.x, false), true), select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, false, true), arg_0.a.x), select(arg_0.a, arg_0.a, arg_0.a.x)), arg_0.a, vec3<bool>(0i != u_input.a, false, true)), select(arg_0.a, select(select(arg_0.a, vec3<bool>(true, true, false), vec3<bool>(false, arg_0.a.x, arg_0.a.x)), !arg_0.a, arg_0.a), any(!vec4<bool>(arg_0.a.x, true, global1.x, global1.x)))), vec3<bool>(func_2(arg_0.a), arg_0.a.x, all(arg_0.a)));
    let var_1 = Struct_3(Struct_1(vec3<bool>(var_0.x, false, any(vec3<bool>(var_0.x, arg_0.a.x, true))), arg_0.b), !arg_0.a.x);
    let var_2 = _wgslsmith_mod_i32(min(18854i, _wgslsmith_mult_i32(arg_0.b.x, -(~21354i))), -5298i | arg_0.b.x);
    let var_3 = var_1.a;
    var var_4 = var_3.a.x;
    return -239f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(!(!global1.x) && !global1.x, true, global1.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(905f * -952f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(global1.x, false, global1.x), vec2<i32>(u_input.b, -23597i)), _wgslsmith_div_f32(-720f, -1866f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-796f)) * _wgslsmith_f_op_f32(353f - 1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1191f), _wgslsmith_div_f32(_wgslsmith_div_f32(960f, 630f), _wgslsmith_f_op_f32(step(1000f, -1716f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(396f))) - _wgslsmith_f_op_f32(f32(-1f) * -807f))));
    global0 = ~func_3();
    global2 = array<Struct_2, 31>();
    let var_2 = global2[_wgslsmith_index_u32(min(1u, reverseBits(global0.x)), 31u)];
    var var_3 = Struct_1(!vec3<bool>(func_2(vec3<bool>(false, false, global1.x)), select(false, any(vec4<bool>(false, global1.x, global1.x, global1.x)), global1.x), all(vec3<bool>(false, global1.x, global1.x))), -_wgslsmith_mult_vec2_i32(vec2<i32>(0i, ~u_input.a), ~(-vec2<i32>(u_input.b, 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, 1u, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(global0.x, global0.x, global0.x), ~global0.x), global0.x), 0u << (global0.x % 32u)));
}

