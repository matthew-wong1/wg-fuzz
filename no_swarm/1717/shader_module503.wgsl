struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: array<vec4<bool>, 29>;

var<private> global2: i32 = 2147483647i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> bool {
    return true;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> f32 {
    var var_0 = func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(533f + arg_0.x)))), global0[_wgslsmith_index_u32(~min(u_input.c, 46180u), 1u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1005f), -1000f <= arg_0.x))))));
    let var_1 = vec4<bool>(func_3(Struct_1(_wgslsmith_f_op_f32(sign(-261f)), global0[_wgslsmith_index_u32(~(~40266u), 1u)], _wgslsmith_f_op_f32(floor(1000f)))), true, !global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(29981u, ~_wgslsmith_clamp_u32(arg_1, 12785u, u_input.c)), 1u)]);
    global0 = array<bool, 1>();
    global2 = -_wgslsmith_dot_vec4_i32(~min(vec4<i32>(-16035i, -20678i, 1i, 1i), -vec4<i32>(-2147483647i, -17724i, 45557i, -2147483647i)), abs(reverseBits(select(vec4<i32>(-34819i, 1745i, -1i, -1i), vec4<i32>(-2147483647i, -1i, -2147483647i, 1i), vec4<bool>(false, var_1.x, false, var_1.x)))));
    global2 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(~26411i, ~0i), 33295i, ~(-5418i), countOneBits(_wgslsmith_add_i32(-1i, -1i))), vec4<i32>(-1i, ~(~2576i), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(2147483647i, 7604i), -21514i, firstLeadingBit(2147483647i)), ~1i)), i32(-1i) * -6198i);
    return 1464f;
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_add_vec2_u32(reverseBits(~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.a, 36030u)), firstTrailingBit(vec2<u32>(84539u, 794u)))), countOneBits(reverseBits(abs(vec2<u32>(u_input.c, 63552u)) & firstTrailingBit(vec2<u32>(0u, 12445u)))));
    var var_1 = _wgslsmith_mod_i32(~1i, 2147483647i);
    let var_2 = _wgslsmith_mod_vec2_u32(countOneBits(~vec2<u32>(41535u, 0u) << (select(vec2<u32>(var_0.x, u_input.a), vec2<u32>(u_input.a, 30332u) >> (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u)), !vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 1u)], global0[_wgslsmith_index_u32(1u, 1u)])) % vec2<u32>(32u))), vec2<u32>(abs(~1u), _wgslsmith_add_u32(u_input.c, ~(var_0.x & u_input.c))));
    let var_3 = (var_2.x >> (u_input.c % 32u)) >> (40581u % 32u);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-968f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<f32>(-133f, -446f), 0u)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-936f, _wgslsmith_f_op_f32(945f + 200f), global0[_wgslsmith_index_u32(~1u, 1u)])))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 29>();
    var var_0 = select(vec2<u32>(_wgslsmith_mult_u32(~u_input.a, u_input.b), u_input.a), vec2<u32>(u_input.c, _wgslsmith_div_u32(u_input.b, (1u >> (u_input.b % 32u)) ^ u_input.b)), select(true | func_1(), true, (!global0[_wgslsmith_index_u32(0u, 1u)] | global0[_wgslsmith_index_u32(countOneBits(u_input.b), 1u)]) & false));
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b ^ u_input.a, var_0.x, 1u), vec3<u32>(firstTrailingBit(1u), ~(u_input.a >> (u_input.c % 32u)), 1u)), _wgslsmith_dot_vec4_u32(countOneBits(firstLeadingBit(vec4<u32>(u_input.c, var_0.x, u_input.b, u_input.b))), select(~vec4<u32>(0u, var_0.x, u_input.b, 1u), vec4<u32>(u_input.c, u_input.b, var_0.x, 8669u), !global1[_wgslsmith_index_u32(4294967295u, 29u)])) & _wgslsmith_mult_u32(_wgslsmith_clamp_u32(5231u, 0u, ~1u), var_0.x));
    var var_2 = vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -2147483647i, -_wgslsmith_sub_i32(~(-79235i), 1i)), -1i);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-602f)), _wgslsmith_f_op_f32(round(-1663f)), !global0[_wgslsmith_index_u32(var_0.x, 1u)])) - _wgslsmith_f_op_f32(125f - -787f))), any(select(vec3<bool>(true, var_2.x >= var_2.x, global0[_wgslsmith_index_u32(1u, 1u)] & global0[_wgslsmith_index_u32(6046u, 1u)]), vec3<bool>(true, true, true), select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 1u)], true, global0[_wgslsmith_index_u32(u_input.c, 1u)]), vec3<bool>(global0[_wgslsmith_index_u32(26197u, 1u)], false, false), global0[_wgslsmith_index_u32(1u, 1u)]), !vec3<bool>(global0[_wgslsmith_index_u32(55842u, 1u)], false, false), true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-571f, 1000f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2544f, 1737f)))), u_input.b)), _wgslsmith_f_op_f32(abs(-115f)))));
    let var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(floor(var_3.a)), false & global0[_wgslsmith_index_u32(u_input.c, 1u)])), var_3.c, var_3.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_0.x, 4294967295u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(683f, -350f) + _wgslsmith_f_op_f32(max(205f, var_3.c))) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-278f, -818f), _wgslsmith_f_op_f32(var_4.x - -168f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x - -1209f)))))), max(abs(~(~vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x))), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, var_0.x, 1u, 16859u), vec4<u32>(1u, var_0.x, 8384u, 21318u)))));
}

