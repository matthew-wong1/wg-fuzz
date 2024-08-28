struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global1.a.a, -1159f, true)), global1.a.a));
    global1 = Struct_2(Struct_1(global1.a.a));
    return ~_wgslsmith_clamp_i32(-2147483647i, ~(2147483647i << (_wgslsmith_add_u32(u_input.d, u_input.c.x) % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -u_input.b, -u_input.b, firstLeadingBit(u_input.b)), -select(vec4<i32>(u_input.b, -75842i, u_input.b, u_input.b), vec4<i32>(u_input.b, 16696i, u_input.b, 1i), vec4<bool>(false, true, true, false))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(vec3<i32>(func_3(), firstTrailingBit(30867i), u_input.b), -752f, global1.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-329f + _wgslsmith_f_op_f32(select(global1.a.a, 232f, false))))));
    var var_1 = vec3<u32>(~_wgslsmith_div_u32(~(~u_input.a.x), ~select(1u, 72292u, false)), u_input.a.x, u_input.a.x);
    let var_2 = _wgslsmith_sub_u32(min(u_input.d, var_1.x) | (~min(var_1.x, u_input.a.x) ^ u_input.c.x), 1u);
    var var_3 = 40419i;
    let var_4 = ~firstTrailingBit(-abs(vec4<i32>(-1i, var_0.a.x, 9976i, -17321i)));
    return global1.a;
}

fn func_4(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_1) -> f32 {
    let var_0 = arg_0.a;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2)) + _wgslsmith_f_op_f32(f32(-1f) * -480f));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(arg_0.b.zy, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_div_f32(arg_0.b.x, 842f))))), arg_0.b.xz));
    var var_2 = select(true, all(select(vec2<bool>(false, true), vec2<bool>(select(true, true, false), true), vec2<bool>(true, true))), true);
    let var_3 = !vec2<bool>(any(vec3<bool>(select(false, false, true), 1i < arg_0.a, arg_0.c.a > global1.a.a)), max(4294967295u, 59686u) <= min(4296u, ~arg_0.d.d));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(arg_2 + _wgslsmith_div_f32(var_1.x, global1.a.a)))) - _wgslsmith_f_op_f32(floor(783f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4) -> i32 {
    global0 = _wgslsmith_f_op_f32(-909f - 1031f);
    var var_0 = 43990u;
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_5(-11750i, vec3<f32>(-586f, arg_0.a, -1146f), Struct_1(1000f), Struct_3(Struct_2(arg_1.d), vec2<u32>(4294967295u, 1u), Struct_1(3053f), 4294967295u)), u_input.a.yy, _wgslsmith_f_op_f32(293f * 1542f), func_2()))))));
    let var_1 = 1i;
    var var_2 = Struct_3(Struct_2(arg_1.c), vec2<u32>(u_input.d, ~u_input.d), Struct_1(-133f), ~(((u_input.a.x | u_input.d) << (~u_input.d % 32u)) | ((u_input.a.x << (u_input.c.x % 32u)) << (_wgslsmith_dot_vec4_u32(u_input.c, u_input.a) % 32u))));
    return _wgslsmith_mult_i32(_wgslsmith_mod_i32(-arg_1.a.x, ~u_input.b), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(u_input.b, _wgslsmith_sub_i32(func_1(global1.a, Struct_4(vec3<i32>(11011i, 1i, 1i), -141f, Struct_1(2145f), global1.a)), -71212i)) << (u_input.d % 32u), -firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -2147483647i, 2147483647i) & vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b))));
    var var_1 = func_2();
    var var_2 = Struct_1(-854f);
    var var_3 = ~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, -2147483647i), ~select(var_0, var_0, vec2<bool>(true, false)), ~var_0) | var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_clamp_vec2_u32(abs(~u_input.a.xy), vec2<u32>(firstLeadingBit(~u_input.d), 59031u), ~_wgslsmith_mod_vec2_u32(u_input.a.yz, _wgslsmith_add_vec2_u32(u_input.a.zw, u_input.c.zw))));
}

