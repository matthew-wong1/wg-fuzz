struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 25>;

var<private> global2: bool = true;

var<private> global3: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(i32(-2147483648), -7307i, -1i, -20070i), vec4<i32>(0i, -11512i, -23370i, 2147483647i), vec4<i32>(0i, 54682i, -33842i, i32(-2147483648)), vec4<i32>(-1370i, 1i, -18189i, 2012i), vec4<i32>(0i, i32(-2147483648), -50342i, 1487i), vec4<i32>(33992i, -1i, -1i, 0i), vec4<i32>(-1i, 39555i, i32(-2147483648), -1i), vec4<i32>(i32(-2147483648), 1i, 19011i, 2147483647i), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 0i), vec4<i32>(35192i, i32(-2147483648), i32(-2147483648), 3216i), vec4<i32>(1i, i32(-2147483648), -36215i, -786i), vec4<i32>(-49028i, i32(-2147483648), 2147483647i, 34038i), vec4<i32>(-45173i, 1i, -4291i, 2147483647i), vec4<i32>(10169i, 56195i, -51335i, -1i), vec4<i32>(-30454i, -47483i, 2582i, 0i), vec4<i32>(-32520i, -4170i, i32(-2147483648), 2147483647i), vec4<i32>(1i, -3853i, i32(-2147483648), i32(-2147483648)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec2<u32>) -> vec3<f32> {
    return vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(463f, -1704f)))), -1583f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1006f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -792f) * _wgslsmith_div_f32(1574f, -177f))))));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: vec2<u32>) -> f32 {
    global2 = true;
    global3 = array<vec4<i32>, 17>();
    global2 = (select(false, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], any(!vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(4294967295u, 25u)]))) & global1[_wgslsmith_index_u32(firstTrailingBit(~42826u), 25u)]) | (u_input.d.x <= u_input.c);
    global2 = true;
    global1 = array<bool, 25>();
    return arg_0.x;
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> StorageBuffer {
    global0 = arg_2.b.x;
    global1 = array<bool, 25>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1320f, arg_3.d, 1000f) + vec3<f32>(arg_2.a.x, arg_2.d, arg_2.d)) * _wgslsmith_f_op_vec3_f32(arg_2.a * vec3<f32>(arg_2.a.x, arg_3.b.x, arg_2.b.x))), vec3<f32>(947f, _wgslsmith_f_op_f32(arg_3.b.x * arg_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -277f))))), vec3<f32>(_wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(func_3(arg_3.a, u_input.a.x, vec2<u32>(u_input.a.x, 1u)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_3.d)), -471f) + arg_2.b.x), 1000f), arg_3.c, _wgslsmith_f_op_f32(select(arg_2.d, _wgslsmith_f_op_vec3_f32(func_1(max(vec2<u32>(0u, 82833u), vec2<u32>(u_input.a.x, 0u)))).x, !all(vec3<bool>(true, false, true)))));
    var var_1 = arg_2.c;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_3.a, vec3<f32>(_wgslsmith_f_op_f32(1267f - -1000f), _wgslsmith_f_op_f32(func_3(vec3<f32>(arg_3.d, var_0.d, var_0.d), 5723u, vec2<u32>(1u, u_input.a.x))), _wgslsmith_f_op_f32(-arg_3.b.x)), !(!vec3<bool>(true, arg_3.c, true))))));
    return StorageBuffer(_wgslsmith_f_op_f32(-1622f - _wgslsmith_f_op_f32(-563f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2521f), 1000f)))), -21741i, -1000f, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1877f), -1051f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.x, var_0.d, arg_2.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(729f, 235f, arg_2.a.x, -820f)), vec4<f32>(877f, arg_3.b.x, arg_3.b.x, -407f), !vec4<bool>(false, var_0.c, arg_3.c, false))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-135f, 660f, var_0.d, 1490f) + vec4<f32>(-831f, var_2.x, 472f, var_2.x)))))), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_clamp_i32(-u_input.b.x, -u_input.c, ~34264i), -1i, u_input.c);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1841f, -1000f, 261f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec2<u32>(u_input.a.x, u_input.a.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(586f, 415f, 308f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1244f, 1049f, -512f), vec3<f32>(830f, -652f, -2387f), vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 25u)], true))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1049f, -318f, 914f) * vec3<f32>(-296f, -449f, 923f))))), true, _wgslsmith_f_op_f32(exp2(1f)));
    var var_2 = !((u_input.a.x == _wgslsmith_mod_u32(4294967295u, u_input.a.x)) && var_1.c);
    global1 = array<bool, 25>();
    global1 = array<bool, 25>();
    let var_3 = 2147483647i > firstTrailingBit(select(var_0.x, 1i, global1[_wgslsmith_index_u32(~u_input.a.x, 25u)] && true));
    let var_4 = _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a, reverseBits(u_input.a), u_input.a), ~u_input.a);
    let x = u_input.a;
    s_output = func_2(~18039i, -firstLeadingBit(u_input.d), var_1, var_1);
}

