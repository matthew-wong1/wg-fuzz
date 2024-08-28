struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_2) -> i32 {
    return select(arg_2.a, 4335i, all(vec4<bool>(~arg_0.a.x <= u_input.a.x, !select(false, true, false), select(true, true, true), all(vec3<bool>(false, false, false)))));
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_2(func_3(Struct_3(u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(288f, 111f, -416f, 1346f))), u_input.c, Struct_2(-2147483647i)));
    var var_1 = !all(!select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec2<bool>(false, false))));
    var var_2 = _wgslsmith_clamp_i32(~_wgslsmith_mult_i32(i32(-1i) * -u_input.c.x, _wgslsmith_dot_vec3_i32(-u_input.c.zyx, u_input.c.xzz)), var_0.a, -9627i);
    var var_3 = false;
    var var_4 = reverseBits(48304u);
    return -(~abs(-u_input.c.xzx));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_3(arg_1, vec4<f32>(_wgslsmith_f_op_f32(-660f + _wgslsmith_f_op_f32(-arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(step(-365f, 108f)), arg_0.x));
    let var_1 = Struct_1(u_input.c.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(min(var_0.b.x, 2179f))), _wgslsmith_f_op_f32(select(var_0.b.x, arg_0.x, any(vec3<bool>(true, false, false)))), var_0.b.x, 2391f), _wgslsmith_f_op_vec4_f32(select(var_0.b, var_0.b, vec4<bool>(true, true, true, true))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !all(vec3<bool>(false, false, true))))));
    let var_2 = var_1;
    var var_3 = !all(vec3<bool>(false, true, any(vec4<bool>(true, true, true, true))));
    let var_4 = var_2;
    return Struct_1(u_input.b, var_2.b);
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1995f, 170f, -166f, 194f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-164f, 2626f, -869f, 210f))))))), vec2<u32>(max(u_input.a.x, 1u), u_input.d), u_input.c.yx, reverseBits(func_2()));
    var var_1 = Struct_3(firstTrailingBit(~u_input.a), var_0.b);
    let var_2 = ~_wgslsmith_add_i32(~(-10929i), u_input.c.x);
    var var_3 = u_input.c ^ _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(var_0.a, var_2, countOneBits(1i), _wgslsmith_mod_i32(-39063i, u_input.b))), u_input.c ^ vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c.x, -1i), u_input.c.ywx), u_input.b, firstLeadingBit(-1i), reverseBits(u_input.c.x)), vec4<i32>(-var_0.a << (var_1.a.x % 32u), 1i, firstTrailingBit(var_2), -10300i));
    var var_4 = _wgslsmith_div_vec3_f32(vec3<f32>(-510f, _wgslsmith_f_op_f32(floor(-519f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) - 1000f))), vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(max(-275f, _wgslsmith_f_op_f32(220f * _wgslsmith_f_op_f32(abs(var_0.b.x))))), -1413f));
    return Struct_1(-var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.b.x)), _wgslsmith_f_op_f32(trunc(var_4.x)), -1063f, -108f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(10194u, 4294967295u, 47018u);
    let var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1007f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -569f)) + _wgslsmith_f_op_vec2_f32(step(var_1.b.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1305f), var_1.b.x)))));
    var var_3 = var_1;
    var_3 = Struct_1(1i, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(var_1.b, _wgslsmith_f_op_vec4_f32(-var_1.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1126f, vec4<f32>(_wgslsmith_f_op_f32(floor(var_3.b.x)), var_3.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(326f - func_1().b.x) - _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(var_3.b.x - -359f))), 1312f));
}

