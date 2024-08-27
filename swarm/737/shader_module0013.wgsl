struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> bool {
    let var_0 = vec3<i32>(select(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.x, u_input.a.x), vec2<i32>(arg_0.x, -17044i)), vec2<i32>(u_input.a.x, 4486i)), select(_wgslsmith_mult_vec2_i32(arg_0, arg_0), _wgslsmith_mod_vec2_i32(u_input.a.yz, vec2<i32>(arg_0.x, -21034i)), true)), 1i, all(vec3<bool>(true, true, true))), arg_0.x, arg_0.x);
    var var_1 = -533f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-627f, 1f))) - _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1465f, _wgslsmith_f_op_f32(abs(291f)))))));
    var_1 = _wgslsmith_div_f32(-1027f, 235f);
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return true;
}

fn func_2() -> bool {
    let var_0 = Struct_1(u_input.c.x ^ -abs(u_input.c.x));
    let var_1 = abs(~countOneBits(u_input.e) ^ 1u);
    let var_2 = !vec4<bool>(func_3(vec2<i32>(_wgslsmith_clamp_i32(var_0.a, u_input.c.x, var_0.a), _wgslsmith_sub_i32(-1i, u_input.a.x)), var_1), var_1 < ~(26565u | var_1), true, any(vec3<bool>(false, true, true)) | true);
    let var_3 = 294f;
    var var_4 = 7144i;
    return var_2.x;
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> bool {
    var var_0 = 1i;
    var var_1 = func_2();
    var_1 = all(select(vec2<bool>(true, arg_1), select(select(select(vec2<bool>(false, false), vec2<bool>(false, arg_1), vec2<bool>(arg_1, true)), vec2<bool>(true, true), select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, true), vec2<bool>(arg_1, true))), select(!vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), select(vec2<bool>(arg_1, true), vec2<bool>(true, false), arg_1)), arg_1), true));
    var_1 = false;
    var_1 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(243f + 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-172f, 750f, arg_1)) - _wgslsmith_f_op_f32(floor(325f)))) >= _wgslsmith_f_op_f32(1f - -1267f));
    return !select(all(vec4<bool>(any(vec3<bool>(false, arg_1, true)), false, true, all(vec4<bool>(true, arg_1, true, false)))), false, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(vec2<i32>(u_input.a.x, u_input.c.x), Struct_1(countOneBits(u_input.c.x))), any(vec4<bool>(false, any(vec2<bool>(false, false)), true, true)) | all(vec2<bool>(true, true)));
    let var_1 = Struct_2(_wgslsmith_mult_vec2_i32(u_input.a.xx, u_input.a.zz), Struct_1(u_input.c.x));
    let var_2 = Struct_1(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-982f - _wgslsmith_f_op_f32(-1189f - 780f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-212f, -1164f)) - 254f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), reverseBits(var_1.a.x >> (~_wgslsmith_mod_u32(u_input.b, 26498u) % 32u)));
}

