struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: vec2<bool>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1;

var<private> global2: vec3<u32> = vec3<u32>(1u, 0u, 23577u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: vec3<i32>) -> u32 {
    var var_0 = -185f;
    return _wgslsmith_mult_u32(global1.a.x, _wgslsmith_clamp_u32(global1.a.x, ~global1.a.x, global1.a.x)) ^ 1u;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>) -> vec3<bool> {
    let var_0 = global1.a.x;
    let var_1 = any(select(select(!vec2<bool>(arg_0.b, false), !select(vec2<bool>(arg_0.b, false), vec2<bool>(global1.b, true), vec2<bool>(arg_0.b, global1.b)), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), arg_0.b))), vec2<bool>(all(vec2<bool>(false, arg_0.b)), all(!vec4<bool>(global1.b, arg_0.b, true, arg_0.b))), !(!select(vec2<bool>(global1.b, false), vec2<bool>(false, false), global1.b))));
    global0 = true;
    var var_2 = _wgslsmith_f_op_f32(round(-468f));
    global1 = arg_0;
    return vec3<bool>((true && (arg_1 >= -443f)) && global1.b, true & select(true, var_1, true), var_1);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: f32) -> Struct_1 {
    global2 = vec3<u32>(~(~(~arg_0.a.x)), 0u, global1.a.x);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1535f))) + arg_1) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -323f)) - 402f))));
    let var_1 = -240f;
    global1 = Struct_1(~vec4<u32>(_wgslsmith_mult_u32(~arg_0.a.x, abs(global2.x)), ~firstTrailingBit(arg_0.a.x), ~global1.a.x, 42481u), all(!(!func_3(arg_0, arg_3, arg_2))));
    var var_2 = firstTrailingBit(~max(_wgslsmith_add_vec2_u32(vec2<u32>(global1.a.x, 1u), vec2<u32>(global2.x, 28740u)), firstLeadingBit(global1.a.yz) >> (_wgslsmith_mult_vec2_u32(arg_0.a.zx, arg_0.a.wx) % vec2<u32>(32u))));
    return Struct_1(firstLeadingBit(global1.a ^ vec4<u32>(arg_0.a.x, global2.x, 14337u & global2.x, global2.x ^ var_2.x)), select(all(!select(vec2<bool>(arg_0.b, false), vec2<bool>(true, true), vec2<bool>(global1.b, true))), true, all(func_3(arg_0, _wgslsmith_f_op_f32(step(arg_3, -884f)), ~arg_2))));
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-697f - 330f), 124f), 1f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-329f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1228f * 1073f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1231f * -1481f)))));
    let var_1 = u_input.a >= u_input.a;
    global1 = func_2(func_2(arg_0, _wgslsmith_div_f32(1000f, var_0.x), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(select(vec2<i32>(u_input.a, 21594i), vec2<i32>(u_input.a, u_input.a), arg_0.b), vec2<i32>(26379i, u_input.a)), select(select(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, 20548i), vec2<bool>(var_1, var_1)), vec2<i32>(u_input.a, u_input.a) << (arg_0.a.xw % vec2<u32>(32u)), select(vec2<bool>(var_1, arg_0.b), vec2<bool>(false, var_1), vec2<bool>(true, var_1)))), -1000f), -1851f, ~max(vec2<i32>(u_input.a, 0i) | firstTrailingBit(vec2<i32>(u_input.a, -1397i)), ~select(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, u_input.a), true)), var_0.x);
    var var_2 = var_0.x;
    var var_3 = firstLeadingBit(_wgslsmith_add_i32(u_input.a, u_input.a));
    return StorageBuffer(u_input.a, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~vec3<i32>(-1i, min(-12626i, u_input.a), _wgslsmith_add_i32(u_input.a, u_input.a)) ^ vec3<i32>(1i, (u_input.a | 1962i) | 0i, -1i));
    let var_1 = true;
    let x = u_input.a;
    s_output = func_4(func_2(Struct_1(firstTrailingBit(~vec4<u32>(11302u, 1u, 4383u, global2.x)), true), _wgslsmith_f_op_f32(sign(-907f)), vec2<i32>(u_input.a << (func_1(vec3<i32>(-1i, var_0.x, var_0.x), Struct_5(843f, 1000f, global2.zx, var_0.x), vec3<i32>(1i, -45390i, u_input.a)) % 32u), ~u_input.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -256f) * 119f)))));
}

