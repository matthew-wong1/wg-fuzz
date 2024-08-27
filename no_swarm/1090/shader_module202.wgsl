struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: vec4<f32>) -> bool {
    let var_0 = arg_1.b.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(580f, arg_3.x, arg_3.x))) - vec3<f32>(-832f, 464f, -621f)), vec3<f32>(_wgslsmith_f_op_f32(-arg_3.x), -2483f, -142f)))));
    var var_2 = arg_1.d.xzy;
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.zzz), vec3<f32>(-991f, 1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1280f, -726f)))))));
    var var_4 = Struct_1(arg_1.a, ~vec4<u32>(var_0, var_0, 0u, select(_wgslsmith_mod_u32(4294967295u, var_0), 0u, true)), var_1.yy, -max(arg_1.d, arg_1.d), select(!vec2<bool>(any(vec3<bool>(arg_1.a.x, arg_1.e.x, true)), select(arg_1.a.x, false, arg_1.e.x)), select(vec2<bool>(true, arg_1.a.x), select(!arg_1.a.zx, vec2<bool>(true, arg_1.a.x), select(vec2<bool>(arg_1.a.x, true), arg_1.e, vec2<bool>(true, arg_1.a.x))), !arg_1.e), arg_1.a.zy));
    return !any(select(select(select(vec2<bool>(arg_1.e.x, false), arg_1.e, arg_1.e), vec2<bool>(true, true), true), select(select(arg_1.a.yx, vec2<bool>(false, true), true), !arg_1.a.xy, !arg_1.e), false));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = true;
    var var_1 = _wgslsmith_clamp_i32(u_input.a, -1i, u_input.a);
    let var_2 = Struct_1(!vec4<bool>((u_input.a <= arg_0.d.x) || true, !func_3(u_input.b, Struct_1(vec4<bool>(var_0, arg_0.e.x, true, true), arg_0.b, arg_0.c, vec4<i32>(arg_0.d.x, 30237i, 2147483647i, arg_0.d.x), vec2<bool>(true, false)), 37953u, vec4<f32>(-640f, 855f, arg_0.c.x, -327f)), false, var_0), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(arg_0.b, _wgslsmith_mod_vec4_u32(arg_0.b, arg_0.b)), select(~vec4<u32>(arg_0.b.x, 0u, 0u, arg_0.b.x) ^ ~vec4<u32>(26575u, arg_0.b.x, arg_0.b.x, 0u), vec4<u32>(16789u, _wgslsmith_dot_vec4_u32(arg_0.b, vec4<u32>(arg_0.b.x, arg_0.b.x, 4294967295u, arg_0.b.x)), 35265u, ~arg_0.b.x), select(!arg_0.a, arg_0.a, vec4<bool>(arg_0.e.x, var_0, var_0, false)))), _wgslsmith_f_op_vec2_f32(-arg_0.c), -(_wgslsmith_clamp_vec4_i32(arg_0.d, firstTrailingBit(vec4<i32>(u_input.a, arg_0.d.x, arg_0.d.x, arg_0.d.x)), -arg_0.d) & ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, arg_0.d.x, 2147483647i, 1i), arg_0.d, vec4<i32>(u_input.b, arg_0.d.x, 4424i, u_input.b))), arg_0.a.yw);
    var var_3 = all(var_2.e);
    let var_4 = vec4<u32>(abs(~39732u), min(var_2.b.x, var_2.b.x), _wgslsmith_add_u32(var_2.b.x, _wgslsmith_sub_u32(arg_0.b.x ^ ~arg_0.b.x, ~(~arg_0.b.x))), 51404u);
    return var_2;
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1) -> bool {
    let var_0 = arg_2;
    let var_1 = arg_2;
    var var_2 = func_2(var_1);
    let var_3 = arg_2.c.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-263f, arg_2.c.x, -285f, 1188f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-875f, 1110f, arg_2.c.x, -1858f), vec4<f32>(1048f, -249f, var_2.c.x, -1167f), vec4<bool>(arg_2.e.x, var_0.e.x, arg_2.a.x, arg_2.e.x))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-170f, var_1.c.x, var_3, -488f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 259f))), _wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, var_2.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.c.x, 1294f)) - 1f) + var_0.c.x))));
    return !(max(84284u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(48981u, 4294967295u, arg_2.b.x), var_0.b.wwy), var_1.b.wwy)) == var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1424f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -534f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-509f, 764f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -881f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), select(vec3<bool>(true, true, func_1(1138f, ~vec2<i32>(u_input.b, -9115i), Struct_1(vec4<bool>(false, true, false, true), vec4<u32>(29383u, 87990u, 4294967295u, 0u), vec2<f32>(770f, 224f), vec4<i32>(-21912i, -2147483647i, u_input.a, 1i), vec2<bool>(false, false)))), !vec3<bool>(false, true, any(vec2<bool>(true, false))), any(vec4<bool>(true, select(false, true, false), true, select(true, false, false))))));
    let var_1 = _wgslsmith_div_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(0u, 50625u, 0u, 17197u)), vec4<u32>(95093u, 13384u, 0u, 0u)), ~vec4<u32>(1u, 1u, 1u, 1u)));
    let var_2 = func_2(func_2(func_2(Struct_1(vec4<bool>(true, true, true, true), vec4<u32>(var_1, var_1, var_1, var_1), vec2<f32>(var_0.x, var_0.x), -vec4<i32>(1201i, u_input.b, -41552i, u_input.b), vec2<bool>(true, true)))));
    let var_3 = _wgslsmith_f_op_f32(sign(287f));
    var_0 = vec3<f32>(175f, _wgslsmith_f_op_f32(trunc(-1000f)), 1f);
    var_0 = vec3<f32>(var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))))), func_2(var_2).c.x);
    let var_4 = var_2.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1353f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(226f - var_2.c.x), 1265f)))));
}

