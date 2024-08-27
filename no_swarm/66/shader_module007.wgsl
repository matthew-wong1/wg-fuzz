struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2() -> Struct_2 {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(false, !((u_input.a.x != u_input.b) || true)), !select(vec2<bool>(u_input.b >= u_input.a.x, true), vec2<bool>(all(vec4<bool>(true, false, false, true)), true), vec2<bool>(true, true)));
    let var_1 = _wgslsmith_mult_i32(u_input.c, ~(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(25651i, 1i), vec2<i32>(49985i, u_input.c)), -vec2<i32>(-8015i, u_input.c)) & ((-26189i >> (u_input.b % 32u)) ^ 1i)));
    var var_2 = u_input.a;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -358f, -890f) + vec3<f32>(476f, -1282f, -923f)))))), 790f);
    var var_4 = abs(i32(-1i) * -u_input.c);
    return Struct_2(9512u, var_2.x, _wgslsmith_f_op_f32(-1000f * 1000f), var_3);
}

fn func_3() -> f32 {
    let var_0 = vec4<f32>(-281f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(631f)) + -277f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(func_2().c, _wgslsmith_f_op_f32(f32(-1f) * -814f))) + -529f), func_2().c);
    let var_1 = func_2();
    let var_2 = ~4294967295u;
    let var_3 = select(vec2<i32>(~u_input.c >> (0u % 32u), -max(abs(u_input.c), _wgslsmith_mod_i32(u_input.c, -55263i))), vec2<i32>(_wgslsmith_div_i32(countOneBits(_wgslsmith_sub_i32(2147483647i, 1i)), -_wgslsmith_mod_i32(u_input.c, u_input.c)), -1i), true);
    let var_4 = !vec3<bool>(true, any(vec2<bool>(true, true)), select(true, true, all(vec3<bool>(false, true, false)) || select(false, true, false)));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1700f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), false));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = 153f;
    var_0 = Struct_2(~u_input.a.x, min(u_input.a.x, var_0.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(var_0.c + var_1))), var_1)), Struct_1(var_0.d.a, _wgslsmith_f_op_f32(-var_0.d.a.x)));
    var var_2 = ~(~u_input.b);
    var var_3 = _wgslsmith_f_op_f32(var_1 - -785f);
    return func_2().d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~4294967295u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x), -802f, func_1(u_input.c >> (14562u % 32u)));
    let var_1 = func_1(u_input.c);
    var_0 = Struct_2(var_0.b, reverseBits(abs(var_0.a | ~var_0.a)), var_1.a.x, Struct_1(var_0.d.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + _wgslsmith_f_op_f32(trunc(291f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_1.a.x)), -1879f)))));
    var_0 = Struct_2(_wgslsmith_add_u32(abs(~firstTrailingBit(var_0.b)), ~(~_wgslsmith_clamp_u32(1u, u_input.b, 39069u))), var_0.a, var_0.d.b, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.d.a, vec3<f32>(170f, 344f, var_1.a.x))), _wgslsmith_f_op_vec3_f32(max(var_1.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(567f, -1588f, var_1.a.x), vec3<f32>(var_0.d.a.x, var_0.c, var_0.c), vec3<bool>(false, false, false)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_1.b, _wgslsmith_f_op_f32(step(var_0.c, var_1.a.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(9309i, -u_input.c);
}

