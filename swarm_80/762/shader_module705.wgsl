struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false));

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> f32 {
    var var_0 = !(!vec3<bool>(all(!arg_0), true, true));
    let var_1 = vec3<i32>(firstLeadingBit(_wgslsmith_add_i32(global1.a.x, ~global1.a.x)), 0i, -(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, global1.a.x, -29043i, global1.a.x) & vec4<i32>(2147483647i, 1i, global1.a.x, global1.a.x), ~vec4<i32>(global1.a.x, 0i, 1i, global1.a.x)) ^ _wgslsmith_dot_vec3_i32(global1.a, select(global1.a, vec3<i32>(-1974i, global1.a.x, -2147483647i), false))));
    var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 19u)];
    let var_2 = !(-_wgslsmith_dot_vec4_i32(select(vec4<i32>(-29289i, global1.a.x, var_1.x, 35438i), vec4<i32>(-15104i, -2147483647i, global1.a.x, 0i), false), min(vec4<i32>(2147483647i, -2147483647i, 24178i, -10405i), vec4<i32>(2147483647i, global1.a.x, 28342i, var_1.x))) <= max(min(global1.a.x, -2147483647i), firstTrailingBit(var_1.x)));
    global1 = Struct_1(var_1, -586f, global1.c);
    return _wgslsmith_f_op_f32(step(1000f, global1.c));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, false), firstLeadingBit(u_input.a.x))), -1606f, 248f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c + 1120f) + -231f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 1167f, 1000f, -910f))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.x, arg_1.x, 219f, -1000f), vec4<f32>(672f, -870f, -1375f, arg_1.x))))))));
    global1 = Struct_1(-vec3<i32>(-1i, -arg_0.a, arg_0.a) ^ vec3<i32>(0i, _wgslsmith_add_i32(reverseBits(1i), 10231i), -_wgslsmith_sub_i32(arg_0.a, arg_0.a)), global1.c, -1715f);
    let var_1 = Struct_2(-2147483647i);
    var var_2 = ~firstLeadingBit(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.xx, vec2<u32>(u_input.a.x, 0u)), countOneBits(u_input.a.zx)) ^ vec2<u32>(u_input.a.x, 1u));
    let var_3 = var_0.x;
    return Struct_1(min(global1.a | global1.a, vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, -1i, var_1.a, 3507i)), vec4<i32>(27330i, 318i, arg_0.a, -6406i) & vec4<i32>(global1.a.x, 2147483647i, -22974i, global1.a.x)), -10545i << (u_input.a.x % 32u), ~_wgslsmith_mod_i32(1i, -1i))), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) * -234f))));
}

fn func_1() -> i32 {
    let var_0 = u_input.a.x;
    var var_1 = func_2(Struct_2(global1.a.x), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1617f * global1.c), global1.b)), global1.c))));
    var var_2 = any(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), any(vec4<bool>(false, true, true, true)))));
    var_1 = Struct_1(vec3<i32>(global1.a.x, ~(~(-9869i)), 0i), var_1.c, _wgslsmith_f_op_f32(282f * global1.c));
    global0 = array<vec3<bool>, 19>();
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_add_i32(global1.a.x, (-1i | _wgslsmith_mod_i32(global1.a.x, 2147483647i)) | global1.a.x), _wgslsmith_dot_vec3_i32(global1.a, global1.a), global1.a.x);
    let var_1 = (33516u << (0u % 32u)) >> (u_input.a.x % 32u);
    var var_2 = func_1() | _wgslsmith_dot_vec4_i32(vec4<i32>(abs(-14893i), var_0.x, -20592i, firstTrailingBit(-global1.a.x)), vec4<i32>(-22256i, _wgslsmith_add_i32(firstTrailingBit(45809i), 0i), _wgslsmith_div_i32(-1i >> (u_input.a.x % 32u), 22231i), _wgslsmith_mult_i32(global1.a.x, 2147483647i)));
    var var_3 = Struct_1(global1.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b - global1.b), _wgslsmith_f_op_f32(-393f * -601f)) * global1.b))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1556f)))));
    global1 = func_2(Struct_2(~(-var_0.x & var_3.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.b, -349f, true)))), 144f));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a, -(~(-vec4<i32>(-1i, global1.a.x, var_3.a.x, 34898i) & -vec4<i32>(var_0.x, var_3.a.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3.c, var_3.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, -759f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.c, -313f))), (var_1 | 2360u) >= u_input.a.x))), _wgslsmith_add_vec2_u32(vec2<u32>(~var_1, _wgslsmith_dot_vec2_u32(~vec2<u32>(35551u, u_input.a.x), _wgslsmith_mult_vec2_u32(vec2<u32>(69621u, var_1), vec2<u32>(var_1, var_1)))), u_input.a.yy));
}

