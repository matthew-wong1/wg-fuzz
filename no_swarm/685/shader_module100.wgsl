struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<u32>(4859u, 4294967295u), vec2<u32>(0u, 0u), vec2<f32>(940f, 702f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> f32 {
    let var_0 = Struct_4(global0.c, global0.b.x, countOneBits(u_input.c.zyx), -(~0i), 76724u);
    let var_1 = _wgslsmith_f_op_f32(sign(1317f));
    let var_2 = Struct_1(select(!vec4<bool>(u_input.d.x > -2147483647i, all(vec2<bool>(false, true)), true, true), vec4<bool>(true, true, false, true), false), select(select(vec2<bool>(true, any(vec4<bool>(true, true, true, false))), vec2<bool>(true, select(false, false, false)), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, true, false)), any(vec4<bool>(true, false, true, false))), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), true), var_0.c.yx, _wgslsmith_clamp_i32(-49319i, var_0.d, u_input.a.x));
    let var_3 = _wgslsmith_div_vec3_u32(vec3<u32>(firstTrailingBit(1u), _wgslsmith_dot_vec4_u32(~(vec4<u32>(16378u, 0u, global0.a.x, global0.a.x) | vec4<u32>(var_0.e, global0.a.x, 4294967295u, global0.a.x)), firstTrailingBit(~vec4<u32>(global0.a.x, var_0.b, 1u, 1u))), var_0.e), vec3<u32>(110158u, firstTrailingBit(~11944u) | abs(0u), ~(69814u & global0.b.x) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.e, 51867u, var_0.b, 82531u), vec4<u32>(9100u, var_0.b, 32479u, 4294967295u)), ~vec4<u32>(5483u, var_0.e, 443u, 1u)) % 32u)));
    global0 = Struct_3(_wgslsmith_div_vec2_u32(global0.a, (firstTrailingBit(vec2<u32>(var_0.e, 4294967295u)) << (select(vec2<u32>(1u, 26100u), vec2<u32>(var_3.x, var_3.x), var_2.a.zw) % vec2<u32>(32u))) | vec2<u32>(1u, global0.a.x)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, firstLeadingBit(var_3.x)), ~global0.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a), vec2<f32>(-102f, -699f)));
    return 604f;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>) -> f32 {
    var var_0 = !(true & any(vec4<bool>(true, true, true, false)));
    var var_1 = Struct_2(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -975f), !(!(!any(vec4<bool>(false, true, false, false)))), ~u_input.d.ywx);
    var var_2 = Struct_3(arg_0.yy, ~(~arg_0.xz) | select(~(~vec2<u32>(1u, global0.a.x)), ~global0.a, (-15583i >> (arg_0.x % 32u)) <= firstLeadingBit(-91950i)), vec2<f32>(1000f, _wgslsmith_div_f32(-559f, _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(var_1.b - -899f)))));
    var_1 = Struct_2(min(36614u, var_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - arg_1.x), var_1.c, abs(var_1.d));
    var_1 = Struct_2(~global0.b.x, 1217f, false, -(u_input.c.xyy | u_input.d.wwx));
    return _wgslsmith_f_op_f32(func_3());
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = ~u_input.c;
    global0 = Struct_3(min(abs(firstLeadingBit(_wgslsmith_div_vec2_u32(arg_0.yy, arg_0.zy))), global0.b ^ arg_0.yx), global0.b, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0, vec3<f32>(global0.c.x, 340f, global0.c.x)))))), global0.c.x));
    return Struct_2(firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, 4294967295u, ~(~0u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)) + 689f))), arg_1.x, -vec3<i32>(abs(-1i), -4308i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.c, u_input.c), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, 2205i))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: Struct_2) -> f32 {
    let var_0 = arg_2.d.x;
    global0 = Struct_3(countOneBits(arg_0.xz), ~(~(arg_0.zz ^ vec2<u32>(1u, 31422u))), vec2<f32>(_wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0.xyw, vec3<f32>(424f, -1311f, global0.c.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.b)) + 405f)))));
    var var_1 = Struct_2(_wgslsmith_dot_vec2_u32(abs(firstLeadingBit(global0.a)), arg_0.wz) ^ ~abs(_wgslsmith_div_u32(global0.a.x, arg_2.a)), -647f, ~(~abs(var_0)) > ~(-u_input.c.x), _wgslsmith_sub_vec3_i32(arg_2.d, vec3<i32>(max(u_input.d.x, _wgslsmith_add_i32(27095i, -1i)), -2147483647i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(35426i, u_input.a.x, -27887i, -3554i)), -vec4<i32>(0i, 18764i, 0i, u_input.c.x)))));
    var_1 = arg_2;
    var var_2 = -vec3<i32>(var_0, firstLeadingBit(~42652i), -2147483647i);
    return _wgslsmith_div_f32(arg_2.b, _wgslsmith_f_op_f32(f32(-1f) * -723f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -192f))), 251f, global0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1927f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2470f, 374f, -533f, global0.c.x) + vec4<f32>(global0.c.x, global0.c.x, -680f, global0.c.x)))) * vec4<f32>(_wgslsmith_f_op_f32(func_4(vec4<u32>(58660u, 4294967295u, global0.a.x, global0.a.x) | vec4<u32>(116614u, global0.b.x, 35249u, global0.a.x), vec2<bool>(true, true), func_1(vec3<u32>(global0.a.x, 84542u, 0u), vec4<bool>(false, false, true, false)))), 1201f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-781f, global0.c.x)) - _wgslsmith_f_op_f32(-1423f * global0.c.x)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -779f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), 2471f)));
    let var_1 = ~vec2<u32>(abs(~(60150u << (0u % 32u))), _wgslsmith_add_u32(26828u >> (global0.a.x % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, 49109u, 1u), vec3<u32>(global0.b.x, 27396u, 37417u))));
    var var_2 = !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -689f))) != 858f));
    var var_3 = Struct_1(!vec4<bool>(select(true, false, var_0.x >= var_0.x), _wgslsmith_div_f32(global0.c.x, -2098f) > _wgslsmith_f_op_f32(1000f - var_0.x), true, false), select(vec2<bool>(func_1(vec3<u32>(4294967295u, 6272u, var_1.x), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true))).c, var_1.x != var_1.x), vec2<bool>(true, any(vec4<bool>(true, true, true, true))), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), false)), u_input.c.zw, -26573i);
    var var_4 = Struct_2(~(~4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.x, var_0.x) + _wgslsmith_f_op_f32(step(global0.c.x, var_0.x))))), var_3.b.x, vec3<i32>(u_input.b.x, var_3.c.x, -min(countOneBits(u_input.b.x), u_input.a.x | var_3.c.x)));
    global0 = Struct_3(~select(var_1, global0.b, select(!var_3.b, var_3.b, select(var_3.b, vec2<bool>(var_4.c, true), vec2<bool>(var_4.c, false)))), global0.b, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(262f, var_4.b), _wgslsmith_f_op_f32(sign(621f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(285f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -172f)), -712f), var_0.zwx)));
}

