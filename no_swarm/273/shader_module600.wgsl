struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(26155u);

var<private> global1: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(global1.a);
    var var_0 = false;
    global0 = Struct_1(u_input.d.x);
    var var_1 = global1.a;
    return Struct_1(u_input.d.x);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: i32) -> f32 {
    global0 = func_1();
    var var_0 = vec3<bool>(any(arg_0), true, arg_0.x & any(arg_0.xy));
    global1 = Struct_1(~global0.a);
    let var_1 = _wgslsmith_sub_vec3_i32(-abs(max(vec3<i32>(0i, u_input.a, u_input.b.x) << (vec3<u32>(u_input.d.x, 45728u, global0.a) % vec3<u32>(32u)), ~vec3<i32>(15794i, u_input.a, arg_2))), vec3<i32>(-_wgslsmith_sub_i32(13395i, u_input.b.x), firstLeadingBit(arg_2), 36959i));
    var var_2 = Struct_1(u_input.d.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-883f)))) * 1320f);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<u32>) -> StorageBuffer {
    global1 = Struct_1(u_input.d.x);
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, -1548f, -1253f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1370f * -740f)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -931f), -2127f, _wgslsmith_f_op_f32(func_3(vec4<bool>(false, true, false, false), arg_0.zz, u_input.c.x)), _wgslsmith_div_f32(342f, -1000f)), vec4<f32>(_wgslsmith_f_op_f32(1136f + 106f), -117f, -1859f, _wgslsmith_f_op_f32(f32(-1f) * -373f)), true))) - vec4<f32>(_wgslsmith_f_op_f32(-1378f * _wgslsmith_f_op_f32(floor(-519f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-169f * _wgslsmith_f_op_f32(round(1000f))) * 747f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1576f)), _wgslsmith_f_op_f32(f32(-1f) * -476f)))), 475f));
    var var_1 = Struct_1(0u);
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-266f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) + 465f) * _wgslsmith_f_op_f32(func_3(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), arg_1.zz, ~28900i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -394f))))));
    var var_2 = 1u ^ _wgslsmith_clamp_u32(1u, abs(max(u_input.d.x, ~u_input.d.x)), 1u);
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), countOneBits(u_input.d.wz), max(30906i, u_input.c.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(651f, 708f, 767f, var_0.x))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1906f) * var_0.x), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(sign(var_0.x))), 180f)), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(~(~(~u_input.d.x) & 21431u));
    let var_0 = func_1();
    let x = u_input.a;
    s_output = func_2(~vec4<u32>(~0u, 13425u, var_0.a, ~44255u) << (u_input.d % vec4<u32>(32u)), ~(~vec4<u32>(var_0.a, ~1u, ~global1.a, ~4294967295u)));
}

