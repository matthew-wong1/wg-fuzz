struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3) -> u32 {
    global0 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(abs(abs(4294967295u)), 1791u), _wgslsmith_sub_u32(arg_0.b, 33382u)), 23920u, 11198u, global0.x);
    var var_0 = Struct_3(arg_0.a, _wgslsmith_mod_u32(~arg_0.b, _wgslsmith_dot_vec3_u32(countOneBits(firstLeadingBit(u_input.b.xyw)), vec3<u32>(global0.x, arg_0.b, global0.x) & u_input.b.zzx)));
    global0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -1140f))));
    var var_2 = !(!(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), true)));
    return reverseBits(52806u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool) -> i32 {
    var var_0 = vec4<u32>(func_3(Struct_3(arg_1.x, 42375u)), 88901u, ~abs(u_input.d), ~(~(_wgslsmith_mult_u32(32680u, global0.x) << (~44679u % 32u))));
    global0 = vec4<u32>(1u, ~firstLeadingBit(countOneBits(global0.x)), _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(1u, global0.x, 4294967295u, 4294967295u)), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(21441u, arg_0.c.x, u_input.b.x, 4294967295u), u_input.b), u_input.b) >> (_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, u_input.b), max(vec4<u32>(4294967295u, 56111u, u_input.b.x, var_0.x), vec4<u32>(global0.x, 15196u, 0u, 0u))) % vec4<u32>(32u))), ~(~0u));
    let var_1 = countOneBits(~firstTrailingBit(-_wgslsmith_sub_i32(u_input.c.x, -16686i)));
    var_0 = ~u_input.b;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, 356f))), 65940u);
    return -var_1;
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: f32) -> bool {
    global0 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.b, ~u_input.b), countOneBits(u_input.b));
    let var_0 = Struct_1(-arg_1, u_input.c.x, global0.wzw);
    var var_1 = ~max(reverseBits(select(var_0.c.x, abs(arg_0.x), true)), ~0u);
    global0 = ~u_input.b;
    let var_2 = Struct_1(u_input.a, func_2(Struct_1(u_input.c.x, ~abs(var_0.b), ~firstLeadingBit(global0.yyy)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-314f, -540f, -454f, 340f) * vec4<f32>(346f, 1000f, arg_2, -159f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1950f, arg_2, -1222f, -1364f)))))), 24540u <= (abs(var_0.c.x) << (1u % 32u))), vec3<u32>(countOneBits(1u), max(~4294967295u, _wgslsmith_dot_vec2_u32(~global0.xz, firstLeadingBit(arg_0))), var_0.c.x));
    return all(select(vec4<bool>(select(false, true, true) && true, all(vec4<bool>(true, true, true, true)), select(any(vec4<bool>(false, false, false, false)), true, false), all(vec3<bool>(true, true, true))), !vec4<bool>(all(vec2<bool>(true, false)), true, any(vec2<bool>(true, false)), true), vec4<bool>(false, false, false, any(vec3<bool>(true, false, false)) || true)));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> vec4<u32> {
    return vec4<u32>(~(~4294967295u), global0.x, _wgslsmith_dot_vec2_u32(u_input.b.yy, firstLeadingBit(arg_0.b)), ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_2(_wgslsmith_mult_vec3_u32(~(u_input.b.yxz & u_input.b.xyz), min(u_input.b.yxz, firstTrailingBit(vec3<u32>(u_input.b.x, 1u, u_input.e)))), global0.ww, select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, select(false, true, true), func_1(vec2<u32>(0u, 4294967295u), 25273i, -1063f))), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false))), _wgslsmith_sub_i32(~u_input.a, u_input.a));
    var var_0 = !(!(!(u_input.c.x == u_input.a)) || false);
    let var_1 = ~vec4<i32>(u_input.c.x, u_input.c.x, ~(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -49987i, u_input.a), vec3<i32>(27516i, -22912i, u_input.a)) | _wgslsmith_dot_vec3_i32(vec3<i32>(20551i, u_input.c.x, u_input.a), vec3<i32>(-2147483647i, -1145i, -2147483647i))), -2147483647i);
    var var_2 = 796f >= _wgslsmith_f_op_f32(-478f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -378f)))));
    var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(22808u, 40667u, 5644u, global0.x), u_input.b)), func_4(Struct_2(u_input.b.zyy, vec2<u32>(global0.x, global0.x), vec4<bool>(false, false, false, false), vec3<bool>(true, true, true)), -u_input.c.x)), u_input.b.x) != u_input.b.x;
    global0 = ~vec4<u32>(u_input.b.x, ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1758u, 0u, 1u), u_input.b.xzw, vec3<u32>(global0.x, 39669u, global0.x)), global0.yzy), u_input.d, global0.x);
    var var_3 = true;
    var_3 = !any(vec3<bool>(true, any(vec4<bool>(true, false, false, true)), false));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_1, ~var_1), 1u, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(947f + 1275f))), -1000f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1645f, 284f), vec2<f32>(-1823f, -884f)))))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(956f)), _wgslsmith_f_op_f32(-1237f * _wgslsmith_f_op_f32(f32(-1f) * -684f)))), 43386u);
}

