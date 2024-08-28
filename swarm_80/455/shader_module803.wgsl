struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1789f, -378f, -879f);

var<private> global1: bool = true;

var<private> global2: f32;

var<private> global3: vec3<bool> = vec3<bool>(false, false, true);

var<private> global4: Struct_2 = Struct_2(vec3<bool>(true, false, true), vec4<f32>(230f, -1099f, -213f, 1587f));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = arg_3;
    var_0 = Struct_2(vec3<bool>(arg_3.a.x, true, !(!any(vec4<bool>(var_0.a.x, arg_3.a.x, true, true)))), var_0.b);
    let var_1 = any(!(!(!arg_3.a.yz)));
    var var_2 = arg_3;
    var var_3 = Struct_2(vec3<bool>(false, global4.a.x, (~0i << (u_input.c % 32u)) == _wgslsmith_clamp_i32(i32(-1i) * -10478i, -80274i >> (1u % 32u), -22901i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.x, global4.b.x, global4.b.x, global4.b.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -916f), _wgslsmith_f_op_f32(step(global0.x, arg_2)), 159f, _wgslsmith_f_op_f32(-398f + arg_3.b.x)))));
    return ~(-vec4<i32>(arg_1, min(arg_0, u_input.a.x) << ((7893u << (u_input.c % 32u)) % 32u), -3444i, -2224i | arg_1));
}

fn func_2() -> Struct_1 {
    global0 = vec3<f32>(1000f, -747f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global4.b.x))));
    global2 = _wgslsmith_f_op_f32(ceil(global4.b.x));
    let var_0 = _wgslsmith_f_op_f32(abs(-1336f));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(global4.b, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global4.b - vec4<f32>(-270f, -1004f, var_0, -352f)), _wgslsmith_f_op_vec4_f32(round(global4.b)))) + vec4<f32>(-766f, _wgslsmith_f_op_f32(-var_0), 2057f, var_0))))));
    return Struct_1(_wgslsmith_clamp_vec4_i32(func_3(_wgslsmith_mod_i32(-41939i, u_input.b), ~(~u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), Struct_2(vec3<bool>(global4.a.x, global3.x, true), _wgslsmith_f_op_vec4_f32(global4.b - global4.b))), ~u_input.a ^ vec4<i32>(2147483647i, u_input.b, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.b, -56805i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.a.x))), -countOneBits(u_input.a)), select(!vec4<bool>(global4.a.x, true, false, true), !vec4<bool>(u_input.b <= 17484i, all(global4.a), !global3.x, global0.x >= var_0), global0.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(297f - -1320f))), reverseBits(vec4<u32>(~u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(23319u, u_input.c), vec2<u32>(4294967295u, 54014u)), ~27169u, select(u_input.c, u_input.c, false))) | ~vec4<u32>(1u, ~u_input.c, firstLeadingBit(u_input.c), ~1u), global3.xy);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_1) -> bool {
    var var_0 = vec2<u32>(~5257u, _wgslsmith_dot_vec2_u32(firstLeadingBit(min(arg_2.c.yw, vec2<u32>(arg_2.c.x, arg_2.c.x))), firstTrailingBit(~vec2<u32>(29023u, u_input.c) | vec2<u32>(0u, 0u))));
    var var_1 = arg_2.b.xzy;
    var var_2 = func_2();
    var var_3 = func_2();
    global1 = !var_2.b.x;
    return !(!global3.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<f32>(global4.b.x, global4.b.x, global4.b.x);
    global3 = select(global4.a, !(!select(vec3<bool>(false, global3.x, global3.x), !vec3<bool>(global3.x, global4.a.x, true), vec3<bool>(false, global4.a.x, global4.a.x))), !all(vec2<bool>(func_1(u_input.a.wy, vec2<i32>(25958i, 1i), Struct_1(vec4<i32>(-74494i, u_input.b, u_input.a.x, -58813i), vec4<bool>(global4.a.x, global3.x, global4.a.x, false), vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c), global4.a.xy)), any(vec3<bool>(global4.a.x, global3.x, true)))));
    var var_0 = false;
    var var_1 = ~(~(~_wgslsmith_add_u32(u_input.c, u_input.c))) | ~(abs(select(u_input.c, 1u, false)) | ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1u, u_input.c), vec4<u32>(1u, 99301u, u_input.c, 0u)));
    let var_2 = -1i;
    var var_3 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(-383f, -2147483647i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b.x + -1610f) - global0.x), _wgslsmith_f_op_f32(max(-254f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1632f, global4.b.x)))), global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x * global4.b.x), 1382f, global3.x)), -1587f))));
}

