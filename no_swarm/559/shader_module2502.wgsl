struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = 1i;
    var var_1 = -10828i;
    let var_2 = select(~(vec4<i32>(arg_0.x, _wgslsmith_mod_i32(arg_0.x, 1i), abs(arg_2.a), 0i) & _wgslsmith_mult_vec4_i32(-vec4<i32>(arg_1, -2147483647i, arg_1, 16001i), -vec4<i32>(-2147483647i, arg_2.a, 2147483647i, arg_2.a))), _wgslsmith_add_vec4_i32(-vec4<i32>(arg_1, reverseBits(-8325i), -arg_0.x, -1i), ~firstTrailingBit(-vec4<i32>(arg_2.a, 0i, 29660i, arg_0.x))), !(!(-6610i != arg_1)));
    var_0 = 1i;
    var var_3 = select(!select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), any(vec3<bool>(false, true, false))), vec3<bool>(true, true, true), vec3<bool>(select(false, true, false), false, 53956u <= u_input.b)), vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)) | all(vec4<bool>(false, false, false, true)), true, true), !(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), vec3<bool>(false, false, false), all(vec3<bool>(false, false, true)))));
    return vec4<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(44533u, 0u, u_input.a, u_input.a)), max(vec4<u32>(52918u, 1u, ~u_input.a, 1u), firstLeadingBit(~vec4<u32>(u_input.a, u_input.b, 0u, 4294967295u)))), 33963u, u_input.a, select(~_wgslsmith_div_u32(u_input.a, abs(u_input.a)), 4294967295u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -364f))) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -140f)))));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(sign(1052f)))));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~func_3(-(vec2<i32>(-2147483647i, 1i) >> (vec2<u32>(18562u, u_input.a) % vec2<u32>(32u))), ~arg_0.a, arg_0), vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(52378u, 33622u)), abs(vec2<u32>(4294967295u, 4294967295u))), vec2<u32>(0u, u_input.b) >> (min(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, u_input.b)) % vec2<u32>(32u))), 27375u, u_input.b)), 25u)];
    var_0 = _wgslsmith_f_op_f32(-459f + 2666f);
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    return min(var_1.a, arg_0.a);
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global0 = array<Struct_1, 25>();
    var var_0 = arg_0;
    var var_1 = vec4<i32>(~(~(~0i)), _wgslsmith_mod_i32(-34378i, func_2(Struct_1(i32(-1i) * -2147483647i))), _wgslsmith_div_i32(0i, 1i), -8569i);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-883f, _wgslsmith_f_op_f32(floor(-339f))))), 654f));
    var var_3 = Struct_1(0i);
    return Struct_1(-12077i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = arg_1;
    var var_1 = -216f;
    var_1 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(820f)))));
    let var_2 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(353f)), -987f)), -528f, all(vec2<bool>(true, true)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(284f - 707f), _wgslsmith_f_op_f32(f32(-1f) * -143f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(vec3<bool>(true, false, true)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(82990u, 48766u), 25u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1539f * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -179f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(u_input.b, 25u)], Struct_1(2147483647i)))))), _wgslsmith_f_op_f32(floor(-315f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(-322f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(583f * 477f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(741f, 395f)), -267f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1083f, -795f, -544f, -671f))))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f)))), vec4<bool>(false, true, all(vec2<bool>(false, false)), true)))));
    global0 = array<Struct_1, 25>();
    let var_1 = func_1(vec3<bool>(true & select(all(vec4<bool>(false, true, false, true)), all(vec2<bool>(true, false)), true), true, true));
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(firstTrailingBit(~select(vec2<i32>(var_1.a, 0i), vec2<i32>(var_1.a, var_1.a), vec2<bool>(true, false))), firstTrailingBit(~(~vec2<i32>(var_1.a, var_1.a)))), ~firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(-22109i, -51935i), vec2<i32>(-25878i, 10025i)) & vec2<i32>(var_1.a, var_1.a)));
    var var_3 = -15104i;
    let var_4 = global0[_wgslsmith_index_u32(21817u, 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_1.a);
}

