struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> i32 {
    global1 = 26048i;
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -938f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1364f) + _wgslsmith_f_op_f32(-1507f + -127f))), -1832f, 1224f, 1000f)));
    return max(_wgslsmith_mod_i32(countOneBits(1i), u_input.a), u_input.c) >> (0u % 32u);
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = 1126f;
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-291f - arg_0.a.a.x))))));
    let var_1 = arg_0.a.c.x;
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -434f)), -451f)), _wgslsmith_f_op_f32(-arg_0.a.a.x), all(select(vec4<bool>(true, true, arg_0.a.d.x, arg_0.a.a.x >= arg_0.a.a.x), select(vec4<bool>(true, arg_0.a.e, arg_0.a.d.x, arg_0.a.d.x), !vec4<bool>(arg_0.a.d.x, arg_0.a.d.x, true, false), select(vec4<bool>(arg_0.a.e, arg_0.a.e, true, arg_0.a.d.x), vec4<bool>(true, arg_0.a.d.x, false, true), vec4<bool>(false, true, false, false))), any(arg_0.a.d)))));
    return any(!select(select(arg_0.a.d.xy, arg_0.a.d.yy, true), arg_0.a.d.zy, vec2<bool>(arg_0.a.c.x > 2147483647i, any(vec2<bool>(false, arg_0.a.e)))));
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = all(arg_0.a.d);
    global1 = max(1i, arg_0.a.c.x);
    var var_1 = _wgslsmith_mod_i32(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(-746i, arg_0.a.c.x, -1i, -7341i), vec4<i32>(u_input.c, 4363i, -2147483647i, u_input.a))), _wgslsmith_add_i32(func_2(), countOneBits(-7134i)));
    var var_2 = arg_0.a;
    let var_3 = vec3<bool>(any(select(vec3<bool>(true, any(arg_0.a.d.yx), var_2.a.x > -748f), !select(vec3<bool>(false, var_0, true), vec3<bool>(arg_0.a.d.x, false, true), vec3<bool>(false, var_2.d.x, arg_0.a.e)), !(!vec3<bool>(var_0, true, arg_0.a.d.x)))), func_3(arg_0), _wgslsmith_clamp_u32(u_input.b.x, countOneBits(firstTrailingBit(var_2.b.x)), 14247u) < arg_0.a.b.x);
    return firstLeadingBit(1u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -abs(u_input.c);
    let var_0 = false;
    var var_1 = !(!(!(!select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(var_0, var_0, false, false), true))));
    global1 = ~_wgslsmith_div_i32(1i, 2147483647i);
    var_1 = vec4<bool>(true, true, true, true);
    let var_2 = vec4<u32>(~func_1(Struct_2(Struct_1(vec3<f32>(-907f, -487f, 1138f), u_input.b, vec3<i32>(u_input.a, u_input.c, -63841i), var_1.zzx, true))), ~(~u_input.b.x), ~(~(~1u)), ~_wgslsmith_mod_u32(min(abs(1u), ~4294967295u), ~abs(26819u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_f_op_f32(trunc(-1000f)));
}

