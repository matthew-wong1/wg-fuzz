struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = u_input.b.zyy;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1371f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1057f, 931f, false)))) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-2054f, 2172f)), _wgslsmith_f_op_f32(f32(-1f) * -864f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -856f) - _wgslsmith_f_op_f32(abs(934f))), _wgslsmith_f_op_f32(-902f - _wgslsmith_f_op_f32(select(1482f, -1351f, true))))) + _wgslsmith_f_op_f32(-1443f + -1765f)));
    var var_2 = Struct_1(u_input.d, u_input.a.xz);
    var_2 = Struct_1(var_2.b.x, ~vec2<u32>(u_input.d, reverseBits(0u)));
    var var_3 = Struct_1(0u, u_input.a.zz);
    return 0u;
}

fn func_2() -> vec2<f32> {
    global0 = ~_wgslsmith_mod_u32(4294967295u, abs(u_input.d));
    global0 = ~u_input.a.x;
    let var_0 = 38584i;
    global0 = abs(func_3());
    let var_1 = Struct_1(max(firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(0u, 0u, u_input.d))), ~_wgslsmith_sub_u32(u_input.d, _wgslsmith_clamp_u32(1u, u_input.d, 16599u))), _wgslsmith_sub_vec2_u32(u_input.a.yy, _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(u_input.d, 4294967295u)), _wgslsmith_add_vec2_u32(u_input.a.yz, vec2<u32>(1u, 4294967295u))), _wgslsmith_add_vec2_u32(u_input.a.yx, vec2<u32>(4187u, 34756u)) << (u_input.a.yy % vec2<u32>(32u)), vec2<u32>(5163u, abs(39839u)))));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-921f, _wgslsmith_f_op_f32(round(-2103f))))), -202f);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<f32>) -> bool {
    let var_0 = -1455f;
    var var_1 = Struct_1(u_input.d, ~_wgslsmith_mod_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 60276u), u_input.a.yz, u_input.a.yy), _wgslsmith_mult_vec2_u32(vec2<u32>(32048u, 61445u), vec2<u32>(4294967295u, u_input.a.x)) << (firstLeadingBit(u_input.a.zx) % vec2<u32>(32u))));
    global0 = ~(~firstLeadingBit(1u)) ^ func_3();
    let var_2 = Struct_1(countOneBits(max(countOneBits(u_input.a.x), u_input.a.x)), u_input.a.xx);
    global0 = 1u;
    return true;
}

fn func_1() -> u32 {
    let var_0 = !func_4(reverseBits(select(~vec2<i32>(0i, 11677i), vec2<i32>(u_input.b.x, 2147483647i), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1051f, -694f), vec2<f32>(801f, -881f), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-175f, 1000f))) * _wgslsmith_f_op_vec2_f32(func_2())));
    var var_1 = ~(~4294967295u);
    var var_2 = Struct_1(~(~u_input.a.x), vec2<u32>(~(~(~33208u)), _wgslsmith_add_u32(u_input.d, 4294967295u)));
    global0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(max(4290u | var_2.a, _wgslsmith_div_u32(u_input.d, var_2.a)), ~1u), ~vec2<u32>(var_2.b.x, ~20211u) & _wgslsmith_mult_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.a.x, u_input.d)), abs(vec2<u32>(21959u, var_2.b.x) << (vec2<u32>(47164u, u_input.d) % vec2<u32>(32u)))));
    let var_3 = Struct_1(u_input.a.x, firstLeadingBit(var_2.b));
    return reverseBits(min(~(~(4294967295u & var_2.a)), var_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 0u;
    global0 = 20861u;
    var var_0 = !any(vec4<bool>(!select(false, true, false), true, select(all(vec4<bool>(false, false, false, false)), false, true), true));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -280f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-609f)) + _wgslsmith_f_op_f32(f32(-1f) * -545f))), -446f));
    var var_2 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), !(any(vec3<bool>(false, false, true)) & true)), vec2<bool>(all(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)), true), true);
    let x = u_input.a;
    s_output = StorageBuffer(153f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) * var_1.x) - 486f)), vec4<u32>(u_input.a.x >> ((u_input.d << (_wgslsmith_sub_u32(0u, u_input.a.x) % 32u)) % 32u), func_1(), u_input.a.x, u_input.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(0u, ~218u), ~(u_input.a.x << (u_input.a.x % 32u)), u_input.d, u_input.a.x), _wgslsmith_div_vec4_u32(~abs(vec4<u32>(0u, 4252u, 0u, 4294967295u)), ~vec4<u32>(u_input.d, u_input.d, 0u, 44182u)), vec4<u32>(16736u, ~func_1(), ~1u, abs(45012u))), 67460u);
}

