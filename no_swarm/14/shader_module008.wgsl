struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec3<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> vec4<u32> {
    let var_0 = Struct_3(Struct_2(Struct_1(u_input.a.x, 1i), Struct_1(~67984u, ~abs(-1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-497f + 213f) + 1387f))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, var_0.a.c, arg_1)), _wgslsmith_f_op_f32(-var_0.a.c), var_0.a.c, var_0.a.c)))));
    var var_2 = select(arg_0.yx, !arg_0.xz, !(!(!any(arg_0))));
    let var_3 = select(vec3<bool>(!arg_0.x, arg_1, (_wgslsmith_sub_i32(var_0.a.a.b, 19239i) ^ var_0.a.a.b) >= firstTrailingBit(-75699i)), select(vec3<bool>(1u < _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, var_0.a.a.a), u_input.a.xz), any(select(vec4<bool>(arg_1, true, arg_0.x, true), vec4<bool>(arg_0.x, arg_1, true, var_2.x), false)), var_2.x), arg_0, vec3<bool>(all(select(vec3<bool>(true, arg_1, var_2.x), vec3<bool>(false, true, arg_0.x), arg_1)), true, arg_1 | select(arg_0.x, false, arg_1))), all(vec2<bool>(true, true)));
    var var_4 = Struct_1(1u, 0i);
    return firstTrailingBit(u_input.a);
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    let var_0 = Struct_3(Struct_2(Struct_1(min(0u, countOneBits(u_input.b.x)), -1i), Struct_1(_wgslsmith_dot_vec4_u32(func_3(vec3<bool>(true, false, false), false), ~u_input.a), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, 2147483647i, 34232i), _wgslsmith_mult_i32(-1i, 2147483647i))), _wgslsmith_f_op_f32(min(457f, 2640f))));
    return Struct_3(var_0.a);
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = false;
    var_0 = arg_2.x || !(!arg_2.x);
    let var_1 = func_2(~abs(~u_input.a.yww));
    var_0 = false;
    var_0 = arg_2.x;
    return func_2(u_input.a.yww).a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(1u, _wgslsmith_add_vec4_i32(vec4<i32>(-53718i, 2147483647i, -1i, 40349i) << ((vec4<u32>(18704u, u_input.a.x, u_input.a.x, 4294967295u) | vec4<u32>(14119u, 4294967295u, 1u, 0u)) % vec4<u32>(32u)), abs(vec4<i32>(-16760i, 29978i, 46326i, -1i))), vec4<bool>(true, any(vec3<bool>(true, true, true)), true, true)), Struct_1(u_input.b.x, ~(i32(-1i) * -1i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_2(vec3<u32>(u_input.c.x, 1u, u_input.a.x)).a.c, _wgslsmith_f_op_f32(-1887f + 2012f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1851f) * _wgslsmith_f_op_f32(sign(2856f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(384f, 488f))))));
    var var_1 = Struct_2(Struct_1(~u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(~var_0.b.b, _wgslsmith_clamp_i32(-50161i, var_0.a.b, var_0.a.b), ~var_0.a.b), vec3<i32>(var_0.a.b, -var_0.a.b, -2147483647i))), func_2(select(~_wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(var_0.a.a, u_input.a.x, u_input.b.x)), ~u_input.a.yyz & _wgslsmith_mod_vec3_u32(u_input.b, u_input.b), vec3<bool>(select(true, true, true), any(vec2<bool>(false, false)), true))).a.b, 292f);
    var var_2 = -2147483647i;
    let var_3 = select(select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), vec3<bool>(any(vec2<bool>(true, true)), true, any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)))), false);
    var_2 = -var_1.a.b >> (var_1.b.a % 32u);
    var_2 = ~(-21227i);
    var_2 = var_1.a.b;
    var_1 = var_0;
    let var_4 = u_input.a.xwy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, var_1.c, var_0.c) - _wgslsmith_div_vec3_f32(vec3<f32>(var_1.c, -1540f, 2527f), vec3<f32>(1000f, -1027f, 1233f))) + vec3<f32>(_wgslsmith_f_op_f32(var_0.c - var_1.c), _wgslsmith_f_op_f32(f32(-1f) * -290f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

