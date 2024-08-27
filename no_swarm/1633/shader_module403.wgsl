struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = u_input.b.wz;
    let var_1 = Struct_1(u_input.a, !(!vec2<bool>(u_input.b.x < 4406u, all(vec3<bool>(arg_0, true, arg_0)))));
    global0 = 921f;
    let var_2 = ~(min(-var_1.a ^ _wgslsmith_add_i32(-2147483647i, 0i), ~var_1.a | -42479i) & -2855i);
    let var_3 = vec3<bool>(true || var_1.b.x, arg_0, arg_0);
    return ~firstLeadingBit(var_1.a);
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: vec3<f32>) -> vec2<bool> {
    global0 = 880f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * -540f));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))), arg_0, select(false, any(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), any(vec3<bool>(false, true, false)))))));
    let var_0 = ((((arg_3.x != 102f) && false) | !select(false, false, false)) || any(vec4<bool>(true, true, false, any(vec4<bool>(false, true, true, true))))) && all(vec4<bool>(true, true, true, true));
    global0 = _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-833f - 617f))));
    return vec2<bool>(~u_input.b.x >= _wgslsmith_mult_u32(arg_1.x, arg_1.x), all(select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(any(vec3<bool>(true, var_0, var_0)), var_0, var_0, false), false)));
}

fn func_2() -> i32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1515f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -656f), _wgslsmith_div_f32(-250f, 1726f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -659f)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-639f)), _wgslsmith_f_op_f32(f32(-1f) * -192f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(462f, 1594f)), _wgslsmith_f_op_f32(-1000f + 434f))))));
    let var_0 = !(!(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4493u, u_input.b.x, 4294967295u), u_input.b.zxz), ~vec3<u32>(35107u, 4294967295u, u_input.b.x)) == 64507u));
    let var_1 = Struct_1(~0i, func_4(1339f, u_input.b.zzx, vec2<i32>(1i, func_3(var_0) & ~u_input.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(121f, 1052f, 752f) + vec3<f32>(-704f, 587f, 371f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, 197f, -572f), vec3<f32>(-254f, 447f, 604f)))))));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1133f + -2695f)));
    return _wgslsmith_sub_i32(u_input.a, ~_wgslsmith_sub_i32(1i, 0i));
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = 564f;
    var var_1 = Struct_1(~((u_input.a << (0u % 32u)) | (u_input.a >> (4294967295u % 32u))) | _wgslsmith_mod_i32(-2147483647i, func_2()), select(func_4(-2650f, _wgslsmith_add_vec3_u32(~u_input.b.ywy, ~u_input.b.zyy), firstTrailingBit(min(vec2<i32>(0i, -50580i), vec2<i32>(-708i, 2147483647i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-865f, -884f, 1000f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-298f, -618f, 942f))))), select(!(!vec2<bool>(false, arg_0)), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(true, true)), !vec2<bool>(false, arg_0), arg_0), arg_0), arg_0));
    let var_2 = Struct_1(1i, vec2<bool>(true, any(!select(vec3<bool>(true, var_1.b.x, true), vec3<bool>(var_1.b.x, true, var_1.b.x), vec3<bool>(var_1.b.x, var_1.b.x, arg_0)))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -714f);
    var_0 = 1000f;
    return all(vec3<bool>(true, true, _wgslsmith_f_op_f32(trunc(-861f)) < 1660f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = !(!vec4<bool>(func_1(true), true, true, !func_1(false)));
    var var_2 = func_3(all(select(vec3<bool>(true, true, var_1.x), select(!vec3<bool>(true, true, var_1.x), var_1.yyw, false), false)));
    let var_3 = _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(reverseBits(~u_input.b.yw), u_input.b.yw), u_input.b.yw, ~u_input.b.zx), u_input.b.zw);
    var var_4 = max(vec4<u32>(u_input.b.x, ~0u, 1u, firstTrailingBit(17398u) >> (_wgslsmith_add_u32(69286u, var_3.x) % 32u)), select(vec4<u32>(u_input.b.x, 68506u, 1u, 1u), ~(u_input.b ^ u_input.b), var_1.x)) ^ max(~vec4<u32>(u_input.b.x, var_3.x, 43749u, 17140u), ~u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x);
}

