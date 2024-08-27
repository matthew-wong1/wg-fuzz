struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(i32(-2147483648), 1i, 1i, -1i, -2916i, -51534i, 19209i, i32(-2147483648));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    global0 = array<i32, 8>();
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, arg_2.a.x, 79190u, arg_2.a.x)) >> (~vec4<u32>(1u, 4294967295u, 4294967295u, arg_2.a.x) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(85634u, 19178u, arg_2.a.x, arg_2.a.x), vec4<u32>(0u, arg_2.b, arg_2.a.x, arg_2.a.x))), _wgslsmith_sub_u32(~(~30656u), arg_2.a.x)), min(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(0u), ~arg_2.b), arg_2.a.yz), 0u));
    var var_1 = Struct_1(~vec3<u32>(~(arg_2.a.x << (4294967295u % 32u)), countOneBits(arg_2.b << (61669u % 32u)), ~(~1u)), _wgslsmith_mult_u32(1u, arg_2.b));
    var_1 = Struct_1(_wgslsmith_mod_vec3_u32(~vec3<u32>(_wgslsmith_add_u32(68327u, var_1.a.x), firstTrailingBit(31120u), 1u), ~vec3<u32>(firstTrailingBit(arg_2.a.x), arg_2.a.x, _wgslsmith_clamp_u32(4294967295u, 0u, var_1.a.x))), _wgslsmith_dot_vec3_u32(firstLeadingBit(abs(vec3<u32>(68272u, 36752u, 75872u))), vec3<u32>(arg_2.b, 0u, ~6132u)));
    let var_2 = ~vec2<u32>(firstLeadingBit(~81307u), ~4294967295u);
    return var_1.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: bool) -> f32 {
    global0 = array<i32, 8>();
    let var_0 = arg_3 || (~(~_wgslsmith_clamp_u32(arg_1.b, 40713u, arg_1.a.x)) < func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-501f * 2352f) + _wgslsmith_f_op_f32(2415f + 2202f)), vec3<i32>(global0[_wgslsmith_index_u32(abs(16434u), 8u)], ~u_input.a, u_input.a), Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(789u, arg_1.b, 1u), vec3<u32>(arg_0.b, 0u, arg_0.a.x)), _wgslsmith_add_u32(0u, arg_0.a.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1675f, 1000f, 476f, -674f)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2662f), _wgslsmith_f_op_f32(f32(-1f) * -279f), -1000f, 288f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(129f)), -492f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-878f - 104f))), -2338f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -529f), -819f, _wgslsmith_f_op_f32(241f + -1000f), _wgslsmith_div_f32(-629f, 181f))))));
    let var_2 = arg_0;
    let var_3 = var_1.x;
    return _wgslsmith_f_op_f32(-241f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - -633f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -895f)))));
}

fn func_1() -> f32 {
    let var_0 = vec4<u32>(1u, 1u, 1u, 1u);
    global0 = array<i32, 8>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec3<u32>(var_0.x, 1u, 18155u), ~var_0.x), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 36132u, 12211u), vec3<u32>(0u, 1u, 55792u)), ~var_0.x), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), any(vec3<bool>(false, true, false)) && true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<bool>(true, true, any(vec4<bool>(false, false, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(false, true)), true), vec3<bool>(any(vec2<bool>(false, true)), true, true)), vec3<bool>(any(vec2<bool>(true, true)), false, true)), !vec3<bool>(0u > _wgslsmith_dot_vec2_u32(vec2<u32>(47857u, 23423u), vec2<u32>(37765u, 49492u)), true, true), !(!vec3<bool>(false, true, all(vec4<bool>(false, true, true, true)))));
    global0 = array<i32, 8>();
    var var_1 = Struct_1(vec3<u32>(36574u, 1u, _wgslsmith_sub_u32(~(~36999u), 1u)), 11190u);
    let var_2 = ~min(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(u_input.a, 26330i, global0[_wgslsmith_index_u32(1u, 8u)])), select(vec3<i32>(u_input.a, 45919i, -610i), vec3<i32>(global0[_wgslsmith_index_u32(0u, 8u)], u_input.a, -7515i), var_0.x)), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(10183i, 87871i, 1i), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(40202u, 8u)], global0[_wgslsmith_index_u32(var_1.a.x, 8u)])), -vec3<i32>(-6556i, global0[_wgslsmith_index_u32(var_1.a.x, 8u)], global0[_wgslsmith_index_u32(38921u, 8u)]))) ^ _wgslsmith_sub_vec3_i32(~vec3<i32>(-u_input.a, 19734i, abs(0i)), vec3<i32>(-1i, 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 8u)]));
    var var_3 = countOneBits(-var_2);
    var var_4 = Struct_1(vec3<u32>(~(~var_1.a.x & _wgslsmith_div_u32(57382u, 4294967295u)), 41647u, ~var_1.b & 4294967295u), 0u);
    global0 = array<i32, 8>();
    var var_5 = _wgslsmith_f_op_f32(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mod_i32(~u_input.a, 0i), -_wgslsmith_add_i32(var_2.x, var_2.x & u_input.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1209f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(537f, -1005f)))))));
}

