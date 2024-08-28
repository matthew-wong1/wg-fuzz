struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec4<f32>;

var<private> global2: Struct_2 = Struct_2(1624f, -16061i, Struct_1(false, true), vec2<bool>(true, true), Struct_1(false, true));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2() -> vec2<bool> {
    global0 = firstLeadingBit(firstLeadingBit(firstTrailingBit(0u)));
    var var_0 = global2.c;
    let var_1 = Struct_1(var_0.b, all(select(select(!vec3<bool>(global2.e.a, true, true), !vec3<bool>(true, global2.d.x, false), select(vec3<bool>(global2.d.x, false, global2.e.a), vec3<bool>(var_0.a, false, false), var_0.b)), vec3<bool>(false, !global2.e.b, var_0.a), !global2.d.x | select(global2.c.a, false, global2.e.b))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-global1.yzz);
    var var_3 = ~(-(~(-2844i)));
    return !(!(!vec2<bool>(var_1.b, !global2.d.x)));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    global0 = ~26226u;
    global2 = Struct_2(_wgslsmith_f_op_f32(-434f - -817f), u_input.a.x, global2.c, func_2(), Struct_1(!global2.e.a, !any(func_2())));
    global0 = ~(~0u);
    var var_0 = Struct_2(global2.a, ~(1i | global2.b) ^ global2.b, global2.c, func_2(), global2.c);
    let var_1 = Struct_2(-1803f, min(var_0.b, u_input.a.x), var_0.c, !vec2<bool>(global2.c.b, any(!vec3<bool>(true, false, var_0.e.a))), var_0.c);
    return global1.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: u32) -> vec2<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1005f * global1.x))))), global2.b, Struct_1(global2.c.a, 0u == select(abs(arg_1), ~4294967295u, false)), func_2(), global2.c);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * global2.a)), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -676f), _wgslsmith_f_op_f32(func_3(!arg_0.zx)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(547f - global1.x))), _wgslsmith_f_op_f32(exp2(global2.a)));
    global0 = abs(arg_1);
    let var_2 = Struct_1(any(!(!select(vec3<bool>(false, true, global2.c.b), arg_0, false))), arg_0.x);
    return vec2<bool>(~arg_1 <= min(arg_1, 1u), func_2().x);
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(global2.e.a, true);
    let var_1 = Struct_1(true, select(_wgslsmith_f_op_f32(func_3(global2.d)) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global1.x)))), all(vec3<bool>(all(vec4<bool>(arg_3.a, false, var_0.b, arg_2)), true, true)), arg_3.b || any(!vec4<bool>(false, false, arg_3.b, true))));
    let var_2 = true;
    global1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(457f, arg_0, arg_0, 344f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, arg_0, 382f, arg_0)))) * vec4<f32>(_wgslsmith_f_op_f32(min(global2.a, -511f)), _wgslsmith_f_op_f32(max(-919f, -246f)), _wgslsmith_f_op_f32(f32(-1f) * -437f), _wgslsmith_f_op_f32(sign(-1000f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global1.x, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))))));
    let var_3 = _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(47896u, 34693u) >> ((~vec2<u32>(63668u, 12251u) >> (select(vec2<u32>(4294967295u, 1u), vec2<u32>(44088u, 31568u), vec2<bool>(true, false)) % vec2<u32>(32u))) % vec2<u32>(32u)), ~(~vec2<u32>(4294967295u, 1u))));
    return global2.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x)))))), select(select(select(select(vec2<bool>(false, false), global2.d, global2.c.b), vec2<bool>(global2.c.b, true), func_1(vec3<bool>(false, false, false), 0u)), global2.d, !(!vec2<bool>(global2.d.x, global2.d.x))), vec2<bool>(true, true), select(!vec2<bool>(global2.e.b, global2.e.b), select(vec2<bool>(global2.c.a, global2.e.a), vec2<bool>(global2.e.b, global2.c.a), true), !func_1(vec3<bool>(false, false, global2.d.x), 9184u))), true, Struct_1(global2.d.x, false));
    global2 = Struct_2(global1.x, global2.b, func_4(global1.x, select(vec2<bool>(global2.d.x, var_0.b), global2.d, select(global2.d, func_1(vec3<bool>(true, global2.c.b, global2.e.a), 4294967295u), global2.d)), !any(select(vec3<bool>(global2.c.b, true, global2.d.x), vec3<bool>(false, global2.d.x, true), false)), func_4(_wgslsmith_f_op_f32(global1.x + -660f), !select(global2.d, vec2<bool>(false, global2.c.b), true), false, global2.e)), select(!vec2<bool>(true, any(global2.d)), func_2(), false), global2.c);
    var var_1 = Struct_2(1098f, 1i, func_4(global1.x, vec2<bool>(global2.c.a, global2.d.x), func_4(438f, select(vec2<bool>(false, true), global2.d, var_0.b), global2.d.x || true, func_4(-284f, vec2<bool>(var_0.a, global2.d.x), true, Struct_1(true, true))).a, global2.e), vec2<bool>(var_0.b, any(func_2())), Struct_1(func_1(vec3<bool>(var_0.b, !global2.d.x, true), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 24245u, 38467u, 25433u), vec4<u32>(38364u, 17331u, 63026u, 0u))).x, global2.d.x));
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(~(~2147483647i), var_1.b), var_1.b, -7035i), -_wgslsmith_mod_vec3_i32(-u_input.a, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_2.x, var_1.b << (_wgslsmith_dot_vec2_u32(~vec2<u32>(44814u, 40517u), vec2<u32>(1u, 1u)) % 32u)), abs(vec2<i32>(-var_1.b, -18534i)), -_wgslsmith_mod_vec4_i32(select(~vec4<i32>(u_input.a.x, var_2.x, -1i, 7064i), vec4<i32>(-2147483647i, global2.b, -2147483647i, global2.b), select(vec4<bool>(var_0.b, var_1.d.x, false, var_1.e.b), vec4<bool>(var_1.c.b, var_0.b, false, global2.d.x), vec4<bool>(false, global2.c.a, var_0.b, false))), ~(vec4<i32>(32293i, 1022i, 0i, -1i) | vec4<i32>(-906i, u_input.a.x, -19184i, -17863i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(268f + -136f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.a), var_1.a)), 1370f, -465f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-662f, -544f, -279f, _wgslsmith_f_op_f32(func_3(vec2<bool>(true, false)))))), vec4<i32>(-1i, select(-2147483647i, -1i, true && var_0.b), _wgslsmith_add_i32(var_1.b, var_2.x), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-1i, -1i, 2147483647i, 22701i)), vec4<i32>(0i, global2.b, u_input.a.x, u_input.a.x), vec4<i32>(var_2.x, 25803i, 1i, var_1.b) ^ vec4<i32>(4677i, 2147483647i, 0i, u_input.a.x)), vec4<i32>(countOneBits(2147483647i), ~u_input.a.x, -var_1.b, u_input.a.x))));
}

