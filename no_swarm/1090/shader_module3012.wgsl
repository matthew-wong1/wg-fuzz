struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_3 = Struct_3(Struct_1(true, 2147483647i, false, vec4<f32>(2297f, 1454f, 186f, -1000f)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> bool {
    var var_0 = true;
    let var_1 = Struct_4(abs(_wgslsmith_sub_vec2_i32(-abs(vec2<i32>(arg_0.a.b, 21044i)), u_input.a)));
    return true;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<i32>) -> f32 {
    global0 = Struct_2(global0.a, global0.d, vec2<u32>(global0.c.x >> (global0.c.x % 32u), ~(~18782u) >> (firstLeadingBit(global0.c.x) % 32u)), -_wgslsmith_div_i32(global1.a.b, _wgslsmith_div_i32(arg_1.b, u_input.a.x)) > u_input.a.x);
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.d.x) + _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_vec3_f32(arg_1.d.xzz * global1.a.d.ywx), true)));
    var var_1 = true;
    var var_2 = Struct_4(vec2<i32>(select(-global1.a.b, -arg_1.b, global1.a.a), arg_1.b));
    var_1 = any(vec2<bool>(global1.a.c, -5106i < (arg_2.x << (abs(4294967295u) % 32u))));
    return arg_1.d.x;
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = global1.a.b;
    global1 = Struct_3(global1.a);
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a, _wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, false, global1.a.a), global1.a, vec3<i32>(arg_0.x, global1.a.b, global1.a.b))))) - _wgslsmith_f_op_f32(-global0.a))), false, global0.c, false);
    var var_1 = Struct_1(!any(vec2<bool>(true, true)), _wgslsmith_div_i32(~countOneBits(max(2147483647i, u_input.a.x)), 1i), true, vec4<f32>(global0.a, global1.a.d.x, 1485f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1467f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -393f), 1363f))))));
    let var_2 = Struct_3(Struct_1(select(any(select(vec3<bool>(false, true, global0.d), vec3<bool>(global1.a.c, true, true), false)), global1.a.a, global0.b), global1.a.b, any(!(!vec3<bool>(var_1.c, false, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-322f, global1.a.d.x, var_1.d.x, -341f))))));
    return Struct_2(_wgslsmith_f_op_f32(685f + 1000f), !func_1(Struct_3(global1.a), ~global0.c.x << (global0.c.x % 32u)), select(global0.c, ~global0.c, vec2<bool>(!global0.d || func_1(var_2, global0.c.x), global1.a.a)), global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global1.a.c;
    let var_1 = func_1(Struct_3(global1.a), min(global0.c.x, 4294967295u));
    global0 = func_2(abs(_wgslsmith_div_vec4_i32(vec4<i32>(-7782i, -2147483647i, u_input.a.x, -6412i), vec4<i32>(1i, -1i, 1i, u_input.a.x)) | vec4<i32>(-2147483647i, -15725i, u_input.a.x, u_input.a.x)) ^ _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.a.b, u_input.a.x, u_input.a.x, 28308i), vec4<i32>(u_input.a.x, global1.a.b, global1.a.b, u_input.a.x)), vec4<i32>(u_input.a.x & 0i, ~global1.a.b, -22242i, -2147483647i), countOneBits(min(vec4<i32>(1i, global1.a.b, -15579i, 62216i), vec4<i32>(u_input.a.x, global1.a.b, u_input.a.x, -4255i)))));
    let var_2 = ~select(vec4<i32>(abs(global1.a.b), u_input.a.x, u_input.a.x, firstTrailingBit(u_input.a.x)), firstTrailingBit(abs(vec4<i32>(global1.a.b, u_input.a.x, u_input.a.x, -37043i))), true);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1536f), select(!(44076u < global0.c.x), !func_1(Struct_3(Struct_1(true, 0i, false, global1.a.d)), min(75588u, global0.c.x)), all(vec2<bool>(!global0.d, true))), global0.c, var_0 || true);
    global1 = Struct_3(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global1.a.d.xx)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a.d.ww)))), _wgslsmith_clamp_vec3_i32(~(~(var_2.zyw & var_2.zwx)), firstLeadingBit(firstTrailingBit(vec3<i32>(global1.a.b, u_input.a.x, var_2.x))) ^ vec3<i32>(-57019i, -90575i, ~(-64025i)), vec3<i32>(i32(-1i) * -62886i, _wgslsmith_div_i32(var_2.x & -2147483647i, u_input.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(var_2, var_2), -var_2))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.d.x, _wgslsmith_f_op_f32(-var_3.a), -1063f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(global1.a.d, vec4<f32>(global1.a.d.x, -231f, global1.a.d.x, 848f)))))))), u_input.a ^ -var_2.yx);
}

