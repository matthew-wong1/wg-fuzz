struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-30652i, 238f);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    global0 = Struct_1(~(global0.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(80586u, u_input.b) >> (vec2<u32>(1u, 32397u) % vec2<u32>(32u)), ~vec2<u32>(u_input.b, 0u)) % 32u)), global0.b);
    var var_0 = ~abs(vec4<i32>(-1i) * -(~vec4<i32>(u_input.c, 13703i, -1i, global0.a)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(3243f, global0.b, 634f), vec3<f32>(-1580f, 1600f, -831f)))), vec3<f32>(334f, -1944f, -1232f))));
    var_0 = -vec4<i32>(_wgslsmith_clamp_i32(var_0.x, _wgslsmith_sub_i32(firstTrailingBit(0i), 1i), max(2147483647i << (u_input.a % 32u), 20716i)), abs(select(var_0.x, ~(-2147483647i), all(vec4<bool>(true, true, false, false)))), u_input.c, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, 21551i, -40551i, 22614i), vec4<i32>(u_input.c, -1i, 1i, var_0.x)), vec4<i32>(-2708i, 0i, global0.a, 17320i)) >> (u_input.a % 32u));
    var var_2 = (_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -29191i, max(-22932i, 0i)), abs(-vec2<i32>(-2147483647i, u_input.c))) < ~u_input.c) | true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + _wgslsmith_f_op_f32(abs(210f)));
}

fn func_2() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))) - _wgslsmith_f_op_f32(sign(650f)));
    var_0 = _wgslsmith_f_op_f32(-282f - -123f);
    let var_1 = Struct_1(_wgslsmith_sub_i32(~u_input.c, 29877i), _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(f32(-1f) * -301f)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(448f, var_1.b) * vec2<f32>(global0.b, 1000f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.b, global0.b)))))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, -430f))))));
    var var_3 = var_1;
    return ~(-(vec3<i32>(-1i) * -abs(vec3<i32>(global0.a, 1i, var_3.a))));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec3<f32> {
    global0 = Struct_1(i32(-1i) * -1i, 691f);
    global0 = Struct_1(_wgslsmith_mod_i32(-max(arg_1.a, global0.a) ^ 1i, ~_wgslsmith_mod_i32(firstLeadingBit(u_input.c), ~2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_1.b)), _wgslsmith_f_op_f32(-global0.b), false))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1f))))));
    var var_0 = -2147483647i;
    var_0 = arg_1.a;
    var_0 = firstTrailingBit(global0.a) ^ _wgslsmith_dot_vec3_i32(abs(func_2()), ~(abs(vec3<i32>(global0.a, arg_1.a, global0.a)) ^ vec3<i32>(13801i, -44293i, u_input.c)));
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(2925f, global0.b, global0.b), vec3<f32>(arg_1.b, -1695f, arg_1.b))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b, arg_1.b, 349f), vec3<f32>(-408f, 635f, -1108f)), arg_0)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.b, global0.b, global0.b), vec3<f32>(-788f, 1252f, -194f))))), vec3<f32>(274f, _wgslsmith_f_op_f32(step(arg_1.b, _wgslsmith_f_op_f32(-185f * arg_1.b))), _wgslsmith_f_op_f32(-arg_1.b)), !arg_0)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(696f, _wgslsmith_f_op_f32(floor(arg_1.b)), -1029f), vec3<f32>(global0.b, -895f, -1772f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(global0.b, global0.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(true, Struct_1(u_input.c, var_0.x))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1116f, _wgslsmith_f_op_f32(sign(global0.b)), _wgslsmith_f_op_f32(f32(-1f) * -591f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-566f, var_0.x, 853f), vec3<f32>(var_0.x, 952f, global0.b))), _wgslsmith_f_op_vec3_f32(func_1(true, Struct_1(global0.a, global0.b))), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false))))) - vec3<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global0.b)), _wgslsmith_f_op_f32(min(-1892f, -2365f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -411f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(var_0.x - 697f))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-439f - 194f)));
    global0 = Struct_1(11948i, -1044f);
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1436f, -303f)), var_1.xz))))));
    var var_3 = Struct_1(-9684i << (u_input.b % 32u), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, u_input.c, _wgslsmith_f_op_vec3_f32(func_1(false, Struct_1(~_wgslsmith_sub_i32(u_input.c, -64862i), _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-var_2), true))))).x);
}

