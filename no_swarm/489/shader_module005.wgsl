struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(vec2<f32>(-806f, -1000f), 45815u, -1806f, 297f), 199f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_3(Struct_1(global0.a.a, ~(~u_input.d.x) >> (u_input.d.x % 32u), _wgslsmith_f_op_f32(abs(global0.a.c)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.d) + _wgslsmith_f_op_f32(-2228f * -231f))))), vec4<f32>(_wgslsmith_div_f32(global0.b, global0.a.c), 337f, _wgslsmith_f_op_f32(max(global0.b, global0.b)), global0.b), !vec3<bool>(true, true, any(vec4<bool>(true, true, true, true))), all(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), !select(false, true, true))));
    global0 = Struct_4(global0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.d, -1010f) * _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(f32(-1f) * -1020f))));
    let var_1 = abs(u_input.b.zyy);
    let var_2 = Struct_4(Struct_1(var_0.b.zx, 1u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, var_0.a.d)), _wgslsmith_f_op_f32(round(1016f))), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, var_0.a.a.x)) * _wgslsmith_f_op_f32(-var_0.a.a.x))))));
    var var_3 = Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(var_1.x & var_1.x), 13901i), vec2<i32>(firstTrailingBit(-62646i), var_1.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a.a * _wgslsmith_f_op_vec2_f32(round(var_0.a.a)))), ~global0.a.b ^ 15702u, _wgslsmith_f_op_f32(floor(366f)), _wgslsmith_f_op_f32(trunc(var_0.a.c))), ~(~_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(u_input.d.x, var_0.a.b))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(-135f, var_2.b, 696f, var_0.a.d) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(var_0.b))))))));
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -908f)), 1044f), _wgslsmith_mod_u32(8062u, _wgslsmith_clamp_u32(0u, global0.a.b, min(38194u, 0u))), 1000f, global0.b), -1360f);
    var var_1 = Struct_5(u_input.b.zyw, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.c - var_0.a.c) + global0.b), _wgslsmith_f_op_f32(global0.a.a.x - -189f), _wgslsmith_div_f32(global0.a.a.x, -226f), _wgslsmith_div_f32(_wgslsmith_div_f32(1155f, global0.b), _wgslsmith_f_op_f32(494f + -1625f))) * _wgslsmith_f_op_vec4_f32(func_3())));
    var var_2 = Struct_3(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-440f, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-global0.a.a.x), _wgslsmith_div_f32(366f, var_0.b)))), vec3<bool>(true, any(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), !(!(u_input.c == var_1.a.x))), select(!(!(-279f <= global0.b)), true, true));
    return Struct_5(~vec3<i32>(~(var_1.a.x << (u_input.d.x % 32u)), select(_wgslsmith_clamp_i32(0i, -215i, 27904i), _wgslsmith_mod_i32(-2086i, -1i), select(true, var_2.c.x, false)), u_input.b.x), vec4<f32>(595f, var_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -365f), -328f) * global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1473f - global0.b)))));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_5(u_input.b.wyy, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1479f, -266f, 912f, global0.a.c)), vec4<f32>(152f, _wgslsmith_f_op_f32(global0.a.d + 899f), global0.a.c, global0.a.a.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(975f, global0.a.a.x, -177f, global0.b) * vec4<f32>(790f, global0.b, -1000f, 869f)))))));
    let var_1 = select(var_0.a, vec3<i32>(firstTrailingBit(min(-27390i, -2147483647i)) | -38109i, ~abs(~(-2147483647i)), countOneBits(~var_0.a.x)), select(arg_0, !all(vec2<bool>(arg_1.x, arg_1.x)), true));
    var var_2 = arg_1.x;
    var_2 = arg_0;
    var_0 = func_2();
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -132f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -734f) * 144f)), u_input.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_3()).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1108f) + _wgslsmith_f_op_vec4_f32(func_3()).x), _wgslsmith_f_op_f32(-global0.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(max(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-12654i, abs(countOneBits(u_input.a.x)), select(2147483647i, u_input.b.x, true), _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.c, u_input.a.x), -22280i)), min(abs(select(u_input.b, vec4<i32>(u_input.a.x, u_input.b.x, 28221i, 2147483647i), vec4<bool>(true, true, false, true))), ~countOneBits(vec4<i32>(u_input.a.x, u_input.c, 23264i, -6905i)))), _wgslsmith_clamp_i32(-u_input.a.x, u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -5939i), vec2<i32>(-1i, u_input.b.x)) >> (1u % 32u)));
    let var_1 = ~u_input.a.x;
    let var_2 = u_input.b;
    let var_3 = func_1(any(vec4<bool>(var_2.x > (i32(-1i) * -15452i), all(vec3<bool>(true, true, false)), true, false)), vec2<bool>(false, true), ~(u_input.d | ~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(global0.a.b, 26640u))));
    var_0 = select(vec3<i32>(u_input.b.x, -var_2.x, reverseBits(_wgslsmith_dot_vec3_i32(select(var_2.wyy, u_input.b.xzw, vec3<bool>(false, true, true)), _wgslsmith_mod_vec3_i32(u_input.b.yzz, vec3<i32>(var_1, 70226i, var_2.x))))), var_2.wyy, !vec3<bool>(~var_0.x > (2147483647i ^ var_0.x), true, true));
    global0 = Struct_4(Struct_1(var_3.a, global0.a.b, var_3.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(601f, -1120f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(-func_2().b.x), any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), true)))));
    var_0 = ~vec3<i32>(0i, 1i, var_2.x);
    var var_4 = ~2147483647i;
    var_0 = var_2.yyz;
    let x = u_input.a;
    s_output = StorageBuffer((var_3.b << (~var_3.b % 32u)) | 0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1129f, global0.b, global0.a.c)), _wgslsmith_div_vec3_f32(vec3<f32>(var_3.d, var_3.c, 135f), vec3<f32>(var_3.c, global0.a.a.x, global0.a.c)), true)) * vec3<f32>(global0.b, 1000f, 1316f))));
}

