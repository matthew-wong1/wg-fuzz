struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(1u, 44518u, 77798u, 38061u, 1u, 0u, 4294967295u, 16545u, 58020u, 54771u, 62540u, 19616u, 91277u, 4294967295u, 4294967295u, 16040u, 1u, 69355u, 28980u, 34184u, 4294967295u, 11540u, 0u, 17679u, 38098u, 10058u, 17701u, 51641u, 16084u, 4294967295u, 1u, 4294967295u);

var<private> global1: vec4<f32> = vec4<f32>(-1234f, 125f, 908f, -1625f);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    var var_0 = vec3<i32>(arg_3.x >> (countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(max(4294967295u, arg_2.a) | _wgslsmith_div_u32(arg_2.a, u_input.b.x), 32u)], 32u)]) % 32u), ~(-_wgslsmith_mod_i32(~2147483647i, _wgslsmith_add_i32(arg_3.x, -2147483647i))), abs(arg_3.x));
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_2.a, arg_0.a, global0[_wgslsmith_index_u32(0u, 32u)]), vec3<u32>(10203u, arg_2.a, u_input.b.x))), u_input.c ^ _wgslsmith_mod_vec3_u32(u_input.c, u_input.c), vec3<u32>(u_input.c.x, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(arg_2.a, 32u)] & arg_2.a, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(67805u, 32u)], 38966u)), ~(global0[_wgslsmith_index_u32(arg_0.a, 32u)] ^ arg_2.a))), ~(vec3<u32>(u_input.c.x & arg_0.a, 1004u, ~1u) ^ ~_wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(arg_2.a, 24349u, 6339u))));
    var var_2 = _wgslsmith_div_u32(4180u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(0u, 32u)], abs(select(_wgslsmith_mod_u32(4294967295u, arg_2.a), global0[_wgslsmith_index_u32(u_input.b.x, 32u)], true))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(f32(-1f) * -1632f)))))), global1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1085f)))));
    var_3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-974f, var_3.x, _wgslsmith_f_op_f32(814f + global1.x), -575f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(global1.x)), -934f, global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_3.x, var_3.x))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, var_3.x, global1.x, -673f), vec4<f32>(var_3.x, var_3.x, global1.x, -1036f)))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)), select(false, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), true), select(false, true, true)), vec4<bool>(any(vec4<bool>(false, false, false, true)), true, any(vec2<bool>(true, true)), true))))));
    return arg_0.a;
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = Struct_1(13455u);
    let var_1 = ~(~0i);
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(987f)) - _wgslsmith_f_op_f32(global1.x + global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x)))), global1.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(abs(-948f)), 116f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(257f * -1037f), -870f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-202f, global1.x, global1.x, global1.x) + vec4<f32>(-836f, -464f, global1.x, 1887f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, global1.x, -298f, global1.x), vec4<f32>(-1187f, global1.x, -2884f, 921f)))))));
    return ~((_wgslsmith_mod_u32(~45729u, select(4294967295u, global0[_wgslsmith_index_u32(0u, 32u)], true)) & global0[_wgslsmith_index_u32(func_3(Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 32u)]), var_1, var_0, _wgslsmith_mod_vec3_i32(vec3<i32>(var_1, arg_0, var_1), vec3<i32>(14477i, var_1, u_input.a))), 32u)]) & global0[_wgslsmith_index_u32(1u, 32u)]);
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<u32>(1u, u_input.c.x, _wgslsmith_mod_u32(~u_input.c.x, 1u) & ~global0[_wgslsmith_index_u32(u_input.b.x, 32u)], 4294967295u) | ~vec4<u32>(~(~u_input.b.x), 1u, ~func_2(22690i), 4294967295u);
    let var_1 = all(!(!vec2<bool>(all(vec4<bool>(false, false, true, true)), any(vec2<bool>(true, false)))));
    var_0 = select(vec4<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 32u)] & ~min(11754u, u_input.b.x), ~(~func_2(u_input.a)), var_0.x, u_input.b.x), firstLeadingBit(vec4<u32>(~_wgslsmith_sub_u32(17911u, 0u), 32465u, 0u, firstTrailingBit(_wgslsmith_add_u32(17608u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], 32u)])))), !(!(!select(vec4<bool>(true, var_1, true, var_1), vec4<bool>(true, true, var_1, var_1), vec4<bool>(true, var_1, var_1, var_1)))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), -163f, global1.x);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.x)) * var_2.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(256f)))))));
    return Struct_1(0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = vec4<f32>(_wgslsmith_f_op_f32(sign(295f)), _wgslsmith_f_op_f32(-577f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(399f)) + _wgslsmith_f_op_f32(-global1.x)), -152f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-451f * -763f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, -641f, false))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x)))), global1.x));
    let var_1 = func_2(1i);
    let var_2 = func_1();
    let var_3 = _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(reverseBits(-25148i), _wgslsmith_add_i32(u_input.a, u_input.a))), vec2<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), _wgslsmith_mult_i32(abs(_wgslsmith_clamp_i32(u_input.a, -8021i, u_input.a)), ~_wgslsmith_add_i32(45524i, u_input.a))));
    var var_4 = 112f;
    global1 = vec4<f32>(-542f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2685f)), 985f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global1.x, -1031f)), 322f, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 0i);
}

