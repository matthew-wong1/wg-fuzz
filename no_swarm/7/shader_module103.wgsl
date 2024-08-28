struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(true, false, false, true, false, true, false, false, true, true);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global0 = array<bool, 10>();
    let var_1 = vec2<bool>(!any(select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(34330u, 10u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(27857u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(6564u, 10u)], true)), global0[_wgslsmith_index_u32(56184u, 10u)] && false)), false);
    let var_2 = all(vec4<bool>(true, true, true, true));
    var var_3 = 2147483647i;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + 510f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.a)), -270f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-328f, 205f)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: Struct_3) -> i32 {
    let var_0 = arg_3.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()), vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a.b.c), _wgslsmith_f_op_f32(-arg_2.a.a.x), arg_2.b.x)) * arg_2.b);
    global0 = array<bool, 10>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.c * var_1.x) * _wgslsmith_f_op_f32(-var_1.x))), all(select(vec2<bool>(false, false), !vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(true, false))))));
    global0 = array<bool, 10>();
    return u_input.b;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: f32) -> Struct_2 {
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    var var_0 = !(!select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(48967u, 10u)], global0[_wgslsmith_index_u32(50167u, 10u)], false), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), false), !vec3<bool>(global0[_wgslsmith_index_u32(arg_1.b.a, 10u)], global0[_wgslsmith_index_u32(67055u, 10u)], true), vec3<bool>(true, false, global0[_wgslsmith_index_u32(arg_1.b.a, 10u)])), !select(vec3<bool>(global0[_wgslsmith_index_u32(arg_1.b.a, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(0u, 10u)]), vec3<bool>(false, false, false), false), select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 10u)], false), vec3<bool>(false, true, false), vec3<bool>(global0[_wgslsmith_index_u32(0u, 10u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 10u)])), !vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], false), vec3<bool>(true, true, true))));
    var_0 = !select(!(!(!vec3<bool>(var_0.x, global0[_wgslsmith_index_u32(4294967295u, 10u)], true))), vec3<bool>(any(vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(70414u, 10u)], true, false)), all(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, false), global0[_wgslsmith_index_u32(4294967295u, 10u)])), var_0.x && true), select(vec3<bool>(all(vec4<bool>(true, var_0.x, true, var_0.x)), false == global0[_wgslsmith_index_u32(arg_1.b.a, 10u)], global0[_wgslsmith_index_u32(10348u << (u_input.c.x % 32u), 10u)]), vec3<bool>(1014i <= u_input.b, var_0.x, global0[_wgslsmith_index_u32(~arg_1.b.a, 10u)]), true));
    global0 = array<bool, 10>();
    return arg_1.b;
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1038f, -1000f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1761f, -304f))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(417f, -1720f) + vec2<f32>(1727f, -1020f))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1170f, 437f))))))), func_4(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.a, -2147483647i), vec4<i32>(u_input.b, u_input.a, u_input.a, u_input.a)) >> (~vec4<u32>(u_input.c.x, u_input.c.x, 1u, 1u) % vec4<u32>(32u)), vec4<i32>(~(-1i), func_2(vec2<i32>(u_input.a, -46475i), vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]), Struct_4(Struct_3(vec2<f32>(-584f, -2085f), Struct_2(u_input.c.x, Struct_1(435f), -978f)), vec3<f32>(-1158f, 1000f, 1323f)), Struct_3(vec2<f32>(429f, -691f), Struct_2(4294967295u, Struct_1(166f), -894f))), firstLeadingBit(-2147483647i), u_input.a)), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-110f, -1422f))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-410f, -184f)))), Struct_2(16194u, Struct_1(254f), _wgslsmith_f_op_f32(f32(-1f) * -535f))), -702f));
    let var_1 = true;
    let var_2 = var_1;
    var var_3 = var_0;
    global0 = array<bool, 10>();
    return Struct_4(var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.a.x, -678f, var_0.b.c)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-516f, var_3.b.c, -465f), vec3<f32>(var_3.b.c, 2221f, -467f))), vec3<f32>(-198f, var_0.b.c, var_0.a.x))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b.c, var_3.a.x, var_0.b.c) * vec3<f32>(-259f, -450f, var_3.b.c)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    global0 = array<bool, 10>();
    var var_1 = u_input.c.xyx;
    let var_2 = true;
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(var_0.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2129f, -594f, var_0.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(478f, var_0.b.x, -824f) - vec3<f32>(var_0.a.b.c, var_0.b.x, -1000f))))))), -_wgslsmith_add_vec4_i32(vec4<i32>(countOneBits(u_input.b), u_input.a | u_input.a, u_input.a, ~u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.a, abs(u_input.a))), vec3<i32>(-33466i, select(_wgslsmith_div_i32(36598i, _wgslsmith_div_i32(u_input.a, -56857i)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.b), vec4<i32>(-28269i, u_input.b, -1i, u_input.a)), false), min(2147483647i, 9890i)));
}

