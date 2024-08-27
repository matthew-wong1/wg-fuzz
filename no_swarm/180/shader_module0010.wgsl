struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec4<bool>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-496f, _wgslsmith_f_op_f32(floor(1614f)))) + -646f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(select(-2081f, -821f, arg_2.x))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-714f, _wgslsmith_f_op_f32(abs(-1178f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1724f, -305f, true)) * _wgslsmith_div_f32(1000f, -749f))))));
}

fn func_2(arg_0: u32, arg_1: i32) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(1717f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-217f)), _wgslsmith_f_op_f32(func_3(-1i << (arg_0 % 32u), min(arg_1, arg_1), vec4<bool>(true, global0[_wgslsmith_index_u32(22180u, 18u)], global0[_wgslsmith_index_u32(arg_0, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)]))))), 3635u & u_input.c);
    let var_1 = vec2<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, firstTrailingBit(34777u)), 18u)], global0[_wgslsmith_index_u32(reverseBits(~min(~4294967295u, arg_0 << (8603u % 32u))), 18u)]);
    var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-746f + 589f), _wgslsmith_f_op_f32(step(-227f, 1f)))), _wgslsmith_f_op_f32(func_3(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-u_input.b.ww, vec2<i32>(arg_1, 1i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -34109i, 34900i), u_input.b.zxw)), arg_1, !vec4<bool>(true, select(false, false, true), var_1.x, false))), ~reverseBits(var_0.c));
    let var_2 = global0[_wgslsmith_index_u32(57346u, 18u)];
    var var_3 = u_input.b;
    return select(vec4<bool>(true, var_0.a != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), !var_1.x, 4294967295u <= _wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0, 72256u), var_0.c << (u_input.c % 32u))), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 18u)], global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)], var_1.x), select(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0, 18u)], true, global0[_wgslsmith_index_u32(var_0.c, 18u)]), vec4<bool>(var_1.x, false, false, global0[_wgslsmith_index_u32(u_input.a, 18u)]), true))), false);
}

fn func_1() -> i32 {
    let var_0 = any(select(!(!(!vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(u_input.a, 18u)]))), func_2(select(~8927u, 4294967295u, false), _wgslsmith_add_i32(~u_input.b.x, _wgslsmith_div_i32(u_input.b.x, u_input.b.x))), all(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 18u)], global0[_wgslsmith_index_u32(56182u, 18u)]))));
    global0 = array<bool, 18>();
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -856f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1930f + 488f)), _wgslsmith_f_op_f32(2041f * _wgslsmith_f_op_f32(1114f - -181f)), _wgslsmith_div_f32(-244f, _wgslsmith_f_op_f32(step(488f, 279f)))))));
    var var_2 = vec3<u32>(~u_input.a, firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_div_u32(35706u, u_input.a), abs(u_input.a))) >> (_wgslsmith_sub_u32(reverseBits(u_input.a), 0u) % 32u), u_input.a);
    var var_3 = Struct_1(var_1.x, var_1.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.a, 26687u, 37192u)), select(vec3<u32>(1u, u_input.a, var_2.x), vec3<u32>(u_input.a, 101142u, var_2.x), vec3<bool>(true, false, false))) ^ ~(~vec3<u32>(4294967295u, u_input.a, u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(0u, 7620u), ~0u, u_input.c), ~(~vec3<u32>(var_2.x, var_2.x, 4294967295u)))));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -u_input.b, vec4<i32>(i32(-1i) * -1i, -53146i, _wgslsmith_mult_i32(u_input.b.x, 1i) & func_1(), u_input.b.x)), u_input.b.x, _wgslsmith_dot_vec2_i32(select(u_input.b.xz, u_input.b.wy, select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, global0[_wgslsmith_index_u32(27034u, 18u)]))), firstLeadingBit(-vec2<i32>(1i, u_input.b.x))) >> (87284u % 32u));
    var var_1 = min(1u, u_input.c);
    var var_2 = firstTrailingBit(countOneBits(vec2<u32>(reverseBits(61503u), 1198u)));
    var var_3 = 1u;
    let var_4 = (global0[_wgslsmith_index_u32(firstTrailingBit(50803u), 18u)] & all(vec4<bool>(u_input.b.x >= 24987i, all(vec4<bool>(true, global0[_wgslsmith_index_u32(4376u, 18u)], true, global0[_wgslsmith_index_u32(1u, 18u)])), global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)] && true))) || global0[_wgslsmith_index_u32(0u, 18u)];
    var_2 = vec2<u32>(u_input.a, u_input.c);
    var_1 = ~u_input.c;
    var_0 = vec3<i32>(var_0.x, -18381i | _wgslsmith_dot_vec2_i32(u_input.b.zw, select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, 83896i), vec2<i32>(1i, u_input.b.x)), -u_input.b.xw, !vec2<bool>(global0[_wgslsmith_index_u32(48303u, 18u)], var_4))), (min(firstTrailingBit(u_input.b.x), var_0.x) << (30223u % 32u)) ^ (-1900i ^ _wgslsmith_sub_i32(~u_input.b.x, var_0.x)));
    var_0 = min(u_input.b.yxx, ~u_input.b.zxy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_div_f32(-882f, -416f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-528f, -327f, _wgslsmith_div_f32(-790f, 1634f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-701f, 1000f, 825f))), vec3<f32>(-447f, 2148f, 1199f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1859f, 214f, 1205f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1262f, 2030f, -1028f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-891f, 737f), _wgslsmith_div_f32(-576f, _wgslsmith_div_f32(1826f, -1304f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(227f + 1000f)))))));
}

