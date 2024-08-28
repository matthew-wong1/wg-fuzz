struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: f32) -> i32 {
    var var_0 = Struct_2(u_input.b);
    var var_1 = vec3<f32>(462f, -575f, arg_0.c.x);
    var_1 = arg_0.c.xyz;
    let var_2 = arg_1;
    var_0 = Struct_2(u_input.b);
    return max(-5683i, ~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.b.x, -15145i, -12774i, 7671i), vec4<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, 0i)), 0i));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(select(!select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), true), vec3<bool>(true, _wgslsmith_f_op_f32(step(-766f, -886f)) > _wgslsmith_f_op_f32(floor(-852f)), false), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), false)), max(firstTrailingBit(max(vec2<i32>(-1i, 3984i), ~vec2<i32>(-6138i, 6381i))), vec2<i32>(countOneBits(~(-1i)), ~0i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(482f, -1664f), 763f, _wgslsmith_f_op_f32(1520f + 325f), _wgslsmith_f_op_f32(ceil(-105f)))) + vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(339f)), -1117f)), -290f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * -407f), _wgslsmith_f_op_f32(min(-579f, 1908f)))), _wgslsmith_f_op_f32(select(-471f, _wgslsmith_f_op_f32(sign(430f)), true)))));
    var var_1 = ~firstTrailingBit(~(~u_input.a.x)) > u_input.b;
    var_1 = false;
    let var_2 = Struct_2(~u_input.a.x);
    var_1 = true;
    return _wgslsmith_f_op_f32(-var_0.c.x);
}

fn func_2(arg_0: Struct_1) -> Struct_4 {
    return Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2618f - -216f))), _wgslsmith_f_op_f32(-1014f + _wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_f32(-384f + arg_0.c.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(279f, arg_0.c.x, 930f, 241f)))), _wgslsmith_f_op_f32(f32(-1f) * -1068f), Struct_3(!select(arg_0.a.zz, vec2<bool>(false, true), arg_0.a.yy), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(Struct_1(vec3<bool>(true, _wgslsmith_dot_vec3_i32(vec3<i32>(60338i, 27128i, -57607i), vec3<i32>(0i, 0i, -70183i)) > firstTrailingBit(2147483647i), all(vec3<bool>(true, true, false))), _wgslsmith_sub_vec2_i32(vec2<i32>(func_1(Struct_1(vec3<bool>(true, false, false), vec2<i32>(-10416i, -2147483647i), vec4<f32>(-214f, -235f, 518f, 1000f)), Struct_4(vec4<f32>(-620f, -1855f, 791f, -431f), -248f, Struct_3(vec2<bool>(true, false), true)), vec4<f32>(-572f, 267f, -603f, -592f), -326f), ~1267i), vec2<i32>(1i, -21176i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1125f, 1082f, -1000f, 2179f)))));
    let var_1 = !vec2<bool>(var_0.c.b, var_0.c.b);
    var_0 = func_2(Struct_1(vec3<bool>(true, var_0.c.b, !(!var_0.c.b)), ~abs(vec2<i32>(-2147483647i, 2147483647i) >> (vec2<u32>(0u, u_input.b) % vec2<u32>(32u))), var_0.a));
    let var_2 = Struct_3(!var_0.c.a, false);
    var var_3 = _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), abs(-vec4<i32>(1i, 5676i, _wgslsmith_mod_i32(-37106i, 6997i), -37656i)));
    var var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(753f, var_0.b, var_0.a.x, var_0.a.x) - var_0.a))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(170f, var_0.b, var_0.b, var_0.a.x)), var_0.a, var_1.x))), var_0.b, Struct_3(select(select(!vec2<bool>(var_1.x, false), !var_0.c.a, true), var_2.a, true), (any(vec3<bool>(var_0.c.b, false, var_2.a.x)) & false) | false));
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 28896i), -vec2<i32>(-2967i, 0i)), vec2<i32>(-6448i, ~(-36874i)), vec2<bool>(true, !var_2.a.x)));
}

