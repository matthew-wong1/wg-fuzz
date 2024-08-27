struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-3170i, -1940i, 2147483647i, 16992i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<u32>(~(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.b, u_input.b), vec3<u32>(u_input.a, u_input.c.x, 36860u)), u_input.c)), ~select(u_input.a, 16293u, true), _wgslsmith_add_u32(9833u, ~u_input.c.x), ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, _wgslsmith_mod_u32(108121u, 1u)), 1u >> (~u_input.a % 32u)));
    var var_1 = false;
    let var_2 = true;
    var_1 = true;
    var var_3 = 2175f;
    return Struct_1(global0.wx, global0.x);
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = func_1();
    return _wgslsmith_mod_vec2_i32(~vec2<i32>(~1i, global0.x), vec2<i32>(min(abs(2147483647i), 32108i), 48997i) ^ global0.ww);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_1(arg_1.a, 22170i);
    global0 = ~(-(abs(vec4<i32>(-51998i, arg_1.b, 7413i, arg_1.a.x)) ^ ~vec4<i32>(9007i, arg_1.a.x, -2147483647i, -9611i)) | _wgslsmith_sub_vec4_i32(max(vec4<i32>(global0.x, 12830i, 0i, global0.x), vec4<i32>(var_0.a.x, -33102i, arg_1.a.x, 50701i)) << (arg_0 % vec4<u32>(32u)), firstLeadingBit(~vec4<i32>(1659i, -1i, var_0.a.x, -1i))));
    var var_1 = global0.x | arg_1.b;
    var var_2 = i32(-1i) * -47353i;
    let var_3 = true || !(!all(vec3<bool>(true, true, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-651f * _wgslsmith_f_op_f32(round(-956f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(587f)), -124f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(752f + _wgslsmith_f_op_f32(-704f * -710f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1036f * 1290f), _wgslsmith_f_op_f32(floor(1203f))))))), _wgslsmith_f_op_f32(func_3(firstLeadingBit(vec4<u32>(1u, max(u_input.b, u_input.b), 80621u, u_input.a)), Struct_1(func_2(Struct_1(vec2<i32>(var_0.a.x, var_0.b), 61436i)), -_wgslsmith_add_i32(global0.x, 0i)))), _wgslsmith_f_op_f32(f32(-1f) * -1327f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-926f + -691f), _wgslsmith_f_op_f32(floor(327f)), select(true, false, false))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1087f))))));
    global0 = vec4<i32>(i32(-1i) * -func_1().a.x, 0i, var_0.b, -var_0.a.x);
    var var_2 = vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c.zz, u_input.c.yy), ~min(~countOneBits(u_input.b), countOneBits(max(71925u, 51872u))), u_input.b);
    global0 = abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, var_0.a.x, var_0.b << (var_2.x % 32u), ~(-2147483647i)) << (~abs(vec4<u32>(u_input.c.x, u_input.b, 93291u, u_input.a)) % vec4<u32>(32u)), -reverseBits(-vec4<i32>(var_0.a.x, global0.x, -2147483647i, 33985i)), vec4<i32>(var_0.a.x, 2147483647i, -1i, -61222i << (~var_2.x % 32u))));
    var var_3 = vec3<u32>(1u, ~_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(firstLeadingBit(47444u), u_input.a, 1053u >> (u_input.c.x % 32u))), _wgslsmith_clamp_u32(var_2.x, u_input.a, 1u));
    global0 = ~vec4<i32>(0i, firstLeadingBit(var_0.b), global0.x, 1i);
    let var_4 = 240f;
    let var_5 = -var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, min(_wgslsmith_add_vec2_u32(var_3.yx, firstLeadingBit(~var_3.xx)), ~(select(vec2<u32>(var_3.x, 51802u), var_3.zy, vec2<bool>(false, true)) ^ _wgslsmith_mult_vec2_u32(var_3.zz, vec2<u32>(40078u, var_3.x)))), _wgslsmith_dot_vec4_u32(~firstLeadingBit(countOneBits(vec4<u32>(0u, var_3.x, 58424u, 1u))), ~reverseBits(~vec4<u32>(0u, var_2.x, 1u, 4294967295u))));
}

