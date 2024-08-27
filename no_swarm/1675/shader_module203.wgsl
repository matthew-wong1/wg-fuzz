struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
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

var<private> global0: vec2<i32> = vec2<i32>(-1i, 43617i);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = 22703u;
    global0 = abs(~(-(~abs(vec2<i32>(global0.x, -58466i)))));
    let var_1 = Struct_2(-1950f, Struct_1(true, ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_0), reverseBits(vec2<u32>(23006u, var_0)))), Struct_1(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), select(vec2<u32>(var_0, _wgslsmith_dot_vec2_u32(vec2<u32>(21477u, 4294967295u), vec2<u32>(var_0, 1u))), _wgslsmith_add_vec2_u32(vec2<u32>(56331u, var_0), vec2<u32>(var_0, var_0) ^ vec2<u32>(var_0, var_0)), vec2<bool>(true, select(true, false, true)))));
    var var_2 = vec4<u32>(_wgslsmith_sub_u32(~(var_1.b.b.x ^ var_1.c.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 894u, 1u, var_1.b.b.x) | vec4<u32>(var_1.b.b.x, var_0, 18099u, var_1.c.b.x), firstTrailingBit(vec4<u32>(0u, 4294967295u, 0u, var_1.b.b.x))) << (1u % 32u)), var_1.b.b.x, var_1.b.b.x, ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(4294967295u, var_1.c.b.x)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(34016u, var_0, 0u, var_1.c.b.x), vec4<u32>(var_0, 1u, 62271u, var_1.b.b.x), false), ~vec4<u32>(var_0, var_1.b.b.x, 1u, 1u))));
    var var_3 = var_2.wy;
    return ~abs(var_1.b.b.x);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = 260f;
    var var_1 = Struct_1(arg_3.a, arg_2.b);
    var var_2 = Struct_2(arg_1.a, Struct_1(arg_1.b.a, reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, var_1.b.x), vec2<u32>(1u, 91868u) >> (vec2<u32>(var_1.b.x, 0u) % vec2<u32>(32u))))), arg_1.b);
    global0 = firstTrailingBit(u_input.a.xw);
    let var_3 = Struct_1(true, ~countOneBits(~vec2<u32>(9930u, var_1.b.x)) >> (vec2<u32>(~var_1.b.x, func_3()) % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(step(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1288f)) - _wgslsmith_f_op_f32(trunc(var_2.a)))));
}

fn func_1() -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1234f, -430f, false))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<u32>(35875u, 4294967295u, 38194u), Struct_2(1000f, Struct_1(false, vec2<u32>(74157u, 46956u)), Struct_1(false, vec2<u32>(99525u, 0u))), Struct_1(false, vec2<u32>(22677u, 1u)), Struct_1(false, vec2<u32>(60055u, 0u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, -225f)) + 351f))), _wgslsmith_f_op_f32(f32(-1f) * -305f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2714f - 1000f) + _wgslsmith_f_op_f32(step(1506f, -100f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f))) + -1001f));
    let var_1 = u_input.a;
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(601f, -1000f, -1677f), vec3<f32>(var_0.x, 1048f, 1111f), vec3<bool>(false, true, false))))))), vec3<f32>(163f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_0.x, -610f)), 194f)))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -608f))))));
    var var_2 = min(abs(vec2<u32>(max(~0u, 17083u), 89355u)), vec2<u32>(0u, ~1u));
    let var_3 = countOneBits(select(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, var_1.x, var_1.x, u_input.b), vec4<i32>(-1i, -51353i, 2147483647i, u_input.a.x)), vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, 0i, global0.x), 1i, var_1.x, min(-2147483647i, -1i))), vec4<i32>(var_1.x, global0.x, 1i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_1.x, global0.x), _wgslsmith_mult_i32(var_1.x, 1i))), vec4<bool>(true, true, true, true)));
    return var_2.x;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) - arg_1);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 29712u, arg_3), vec3<u32>(arg_3, arg_2.b.x, 1u)), Struct_2(782f, arg_2, Struct_1(arg_2.a, arg_2.b)), arg_2, Struct_1(arg_2.a, arg_2.b)))) - 376f), Struct_2(arg_1, arg_2, arg_2), arg_2, arg_2, vec3<bool>(any(vec3<bool>(arg_2.a | arg_2.a, false, any(vec3<bool>(arg_2.a, arg_2.a, arg_2.a)))), arg_2.a, 62290u == _wgslsmith_add_u32(arg_3, 40568u)));
    var var_2 = select(true, arg_2.b.x != 1u, any(vec4<bool>(true, any(vec3<bool>(false, true, true)) & !var_1.c.a, all(!var_1.e), false)));
    let var_3 = u_input.a.x;
    let var_4 = true;
    return _wgslsmith_div_i32(0i, ~(0i ^ ~global0.x) ^ global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, -1017f, false)) - 671f))), 172f)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -395f))), Struct_1(all(vec4<bool>(-2147483647i > u_input.a.x, true, any(vec2<bool>(true, true)), true)), ~vec2<u32>(1u, _wgslsmith_add_u32(1u, 236u))), Struct_1(true, abs(vec2<u32>(1u, 41990u)) | vec2<u32>(countOneBits(9051u), _wgslsmith_dot_vec4_u32(vec4<u32>(33673u, 73482u, 10945u, 4294967295u), vec4<u32>(72590u, 43372u, 0u, 0u)))));
    global0 = abs(~(-_wgslsmith_div_vec2_i32(-u_input.a.zw, vec2<i32>(global0.x, 2147483647i) << (var_1.c.b % vec2<u32>(32u)))));
    var var_2 = max(-u_input.a.yx | vec2<i32>(func_4(~2147483647i, -943f, Struct_1(false, var_1.b.b), func_1()), -(global0.x & 0i)), u_input.a.xx ^ min(vec2<i32>(0i ^ u_input.b, ~global0.x), vec2<i32>(global0.x, _wgslsmith_mod_i32(u_input.b, u_input.b))));
    var var_3 = vec4<i32>(min(u_input.b | ~98254i, ~_wgslsmith_dot_vec2_i32(select(vec2<i32>(var_2.x, global0.x), u_input.a.yx, true), _wgslsmith_mult_vec2_i32(u_input.a.xx, u_input.a.wx))), 3523i, -2147483647i, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(var_1.a, var_1.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 333f, var_1.a, var_1.a))))));
}

