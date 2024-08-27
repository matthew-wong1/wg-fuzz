struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 26>;

var<private> global1: array<bool, 10>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_1) -> vec3<u32> {
    global0 = array<vec3<bool>, 26>();
    global0 = array<vec3<bool>, 26>();
    global1 = array<bool, 10>();
    let var_0 = ~abs(-(abs(vec2<i32>(0i, 2147483647i)) >> (vec2<u32>(arg_0, 1u) % vec2<u32>(32u))));
    let var_1 = arg_2;
    return arg_2.b;
}

fn func_3(arg_0: u32) -> vec2<i32> {
    global1 = array<bool, 10>();
    return reverseBits(vec2<i32>(-50285i, 63421i));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: vec2<bool>) -> vec2<bool> {
    global0 = array<vec3<bool>, 26>();
    global0 = array<vec3<bool>, 26>();
    let var_0 = select(select(arg_3, vec2<bool>(!global1[_wgslsmith_index_u32(arg_2.x, 10u)] && false, any(!arg_3)), true), vec2<bool>(true, true), arg_3);
    global1 = array<bool, 10>();
    let var_1 = (_wgslsmith_add_u32(~4294967295u, u_input.a) >= u_input.a) || true;
    return select(vec2<bool>(true, any(vec2<bool>(arg_3.x, false))), select(select(vec2<bool>(arg_3.x, true), arg_3, true), vec2<bool>(select(any(vec4<bool>(false, arg_3.x, arg_3.x, var_1)), true, arg_3.x), var_0.x), true), var_0);
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(7737u, 1u, 18540u), countOneBits(4294967295u)), _wgslsmith_mult_u32(max(arg_2.x, u_input.a), 1u)), abs(func_1(u_input.a, vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 10u)], false, global1[_wgslsmith_index_u32(u_input.a, 10u)], false), Struct_2(579f, vec3<u32>(1u, 4294967295u, u_input.a)), Struct_1(vec3<f32>(302f, 744f, -407f))).zz));
    var var_1 = func_4(_wgslsmith_add_vec2_i32(-vec2<i32>(1i, 1i), func_3(func_1(countOneBits(1u), select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 10u)], global1[_wgslsmith_index_u32(u_input.a, 10u)], false, global1[_wgslsmith_index_u32(79101u, 10u)]), vec4<bool>(false, false, false, true), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 10u)], true, true)), Struct_2(272f, vec3<u32>(4294967295u, 56965u, 4294967295u)), Struct_1(vec3<f32>(arg_3.x, arg_3.x, 225f))).x)), select(min(~(-vec3<i32>(1i, 34642i, -2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(9554i, 1i, 0i) << (vec3<u32>(u_input.a, arg_2.x, arg_2.x) % vec3<u32>(32u)), -vec3<i32>(-2147483647i, 11137i, -1i))), -(~(-vec3<i32>(2147483647i, 1i, -1i))), global0[_wgslsmith_index_u32(u_input.a, 26u)]), countOneBits(~vec4<u32>(~u_input.a, 1u, ~1u, 4294967295u)), !vec2<bool>(all(select(vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(var_0.x, 10u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 10u)], global1[_wgslsmith_index_u32(arg_2.x, 10u)], true, false), vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(6998u, 10u)]))), any(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 10u)], true))));
    var_1 = func_4(vec2<i32>(-abs(0i), abs(-1i)), ~vec3<i32>(1682i, ~1i, 1i), vec4<u32>(reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2.x, u_input.a, 0u), vec4<u32>(70786u, 7824u, var_0.x, 65836u))), 1u, var_0.x, 26287u), vec2<bool>(true, false));
    return Struct_3(any(vec2<bool>(true, true)), vec2<bool>(any(!vec3<bool>(false, var_1.x, true)), func_4(~vec2<i32>(2147483647i, 1i), vec3<i32>(countOneBits(-5119i), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-50666i, -1i, -24069i), vec3<i32>(-2147483647i, 28330i, 2147483647i))), min(~vec4<u32>(29307u, 1u, 6423u, 4150u), ~vec4<u32>(u_input.a, 1u, 0u, u_input.a)), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))).x), Struct_2(_wgslsmith_f_op_f32(max(-1851f, _wgslsmith_f_op_f32(348f - _wgslsmith_f_op_f32(-arg_1.x)))), abs((vec3<u32>(arg_2.x, arg_2.x, u_input.a) ^ vec3<u32>(41553u, var_0.x, 8638u)) ^ reverseBits(vec3<u32>(52538u, 18726u, 4294967295u)))), ~arg_2.x);
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    let var_0 = Struct_3(!global1[_wgslsmith_index_u32(u_input.a, 10u)], func_4(abs(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -33946i), vec2<i32>(47287i, 2147483647i))) ^ vec2<i32>(-42934i, firstTrailingBit(-2147483647i)), abs(vec3<i32>(countOneBits(-61153i), 1i, -9806i)), vec4<u32>(u_input.a, _wgslsmith_mult_u32(u_input.a, 19720u) << (~1u % 32u), arg_0.c.b.x, u_input.a), arg_0.b), func_2(_wgslsmith_f_op_f32(trunc(arg_0.c.a)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.c.a, _wgslsmith_f_op_f32(1603f + 1718f)))), vec2<u32>(_wgslsmith_dot_vec2_u32(~arg_0.c.b.zz, select(vec2<u32>(36964u, 0u), vec2<u32>(u_input.a, arg_0.c.b.x), vec2<bool>(false, false))), 37027u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-268f, arg_0.c.a))))).c, func_1(u_input.a, vec4<bool>(false, all(!vec4<bool>(arg_0.b.x, false, global1[_wgslsmith_index_u32(u_input.a, 10u)], arg_0.b.x)), arg_0.a, arg_0.a), Struct_2(arg_0.c.a, firstLeadingBit(~arg_0.c.b)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c.a), arg_0.c.a, -457f))).x);
    global1 = array<bool, 10>();
    global0 = array<vec3<bool>, 26>();
    global1 = array<bool, 10>();
    global0 = array<vec3<bool>, 26>();
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 26>();
    var var_0 = -1340i >> (1u % 32u);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(391f, 1727f)) * _wgslsmith_f_op_f32(select(-136f, -292f, true)))) + 2386f), firstLeadingBit(func_1(min(32595u, u_input.a), select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 10u)], global1[_wgslsmith_index_u32(u_input.a, 10u)], global1[_wgslsmith_index_u32(u_input.a, 10u)], global1[_wgslsmith_index_u32(u_input.a, 10u)]), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 10u)], true, global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(0u, 10u)]), any(vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a, 10u)], false))), Struct_2(_wgslsmith_f_op_f32(-509f - -427f), min(vec3<u32>(u_input.a, 68418u, 1u), vec3<u32>(u_input.a, u_input.a, 1u))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-305f, 1603f, 588f), vec3<f32>(-908f, 1043f, -142f))))));
    global0 = array<vec3<bool>, 26>();
    let var_2 = func_5(func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - var_1.a)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, var_1.a) - vec2<f32>(var_1.a, var_1.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -1040f))))), _wgslsmith_add_vec2_u32(vec2<u32>(42012u, _wgslsmith_mod_u32(u_input.a, 1u)), ~(~vec2<u32>(u_input.a, u_input.a))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(var_1.a + var_1.a), 2686f)))));
    var var_3 = -vec3<i32>(-_wgslsmith_mod_i32(0i << (u_input.a % 32u), 1i), 2649i, ~(firstTrailingBit(-2147483647i) << (min(1u, 4294967295u) % 32u)));
    let var_4 = true;
    var var_5 = i32(-1i) * -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-634f, var_2.a, var_1.a, var_2.a))))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-440f, -173f, 1924f, var_1.a)))))), firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(8234u, reverseBits(18086u)), min(~var_2.b.x, ~9823u), 4294967295u, _wgslsmith_clamp_u32(4294967295u, var_1.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(27863u, 79073u, 65718u), var_2.b)))), var_3.x, _wgslsmith_clamp_i32(-_wgslsmith_mod_i32(_wgslsmith_add_i32(var_3.x, 1i), -1i), reverseBits(countOneBits(1i)), -(~(-33288i))));
}

