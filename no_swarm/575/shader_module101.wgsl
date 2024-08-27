struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<u32>;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, false, false, false));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1124f + _wgslsmith_f_op_f32(f32(-1f) * -423f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1714f)))), 463f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -229f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-575f))))), -339f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -478f), _wgslsmith_f_op_f32(step(284f, -587f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -472f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -596f), -1039f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1224f, 970f, 810f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-485f, 195f, 548f, -865f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(183f, -222f, 744f, -360f), vec4<f32>(-102f, 687f, 132f, -804f))))), true));
    var var_2 = Struct_1(select(select(vec4<bool>(any(global2.a.wx), any(vec3<bool>(true, global2.a.x, true)), global2.a.x, all(global2.a)), select(!global2.a, vec4<bool>(global2.a.x, true, false, global2.a.x), true), global2.a.x), global2.a, global2.a.x));
    var var_3 = Struct_1(var_2.a);
    var var_4 = Struct_1(select(vec4<bool>(!var_3.a.x, any(select(vec4<bool>(var_3.a.x, var_3.a.x, var_2.a.x, false), global2.a, global2.a.x)), true, var_2.a.x), !(!(!vec4<bool>(true, var_3.a.x, global2.a.x, var_2.a.x))), var_3.a.x));
    return select(var_4.a, global2.a, true);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_1) -> vec2<u32> {
    global1 = ~vec2<u32>(9624u, u_input.c.x);
    global0 = arg_1;
    global1 = ~(countOneBits(~u_input.b) | u_input.b);
    global2 = Struct_1(select(select(global2.a, arg_0.a, any(arg_0.a.yz)), vec4<bool>(arg_3.a.x, true, false, arg_1), arg_0.a.x));
    global0 = arg_1;
    return _wgslsmith_add_vec2_u32(u_input.c, u_input.b) | vec2<u32>(4294967295u, ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.c.x, 5111u, 70664u, 4294967295u), vec4<u32>(10560u, 19787u, 1u, global1.x)), ~vec4<u32>(0u, global1.x, 17074u, 4294967295u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    global2 = Struct_1(vec4<bool>(false, !(!any(vec3<bool>(global2.a.x, true, arg_1.a.x))), all(vec4<bool>(false, !global2.a.x, true, arg_1.a.x)), arg_1.a.x));
    global1 = _wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, arg_0.x), select(~max(select(u_input.c, vec2<u32>(u_input.b.x, global1.x), true), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, global1.x), vec2<u32>(0u, arg_0.x))), func_4(arg_1, any(arg_1.a.zw), -vec4<i32>(1i, -25926i, 2147483647i, 25085i), Struct_1(func_3(vec3<i32>(u_input.a, u_input.a, u_input.a)))), global1.x < firstTrailingBit(global1.x & 14084u)));
    let var_0 = Struct_1(!global2.a);
    let var_1 = Struct_1(select(!(!global2.a), var_0.a, true));
    global1 = _wgslsmith_clamp_vec2_u32(arg_0, vec2<u32>(_wgslsmith_clamp_u32(firstTrailingBit(4294967295u), global1.x, _wgslsmith_add_u32(arg_0.x, u_input.c.x)), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b.x, 12056u), 1u, abs(abs(global1.x)))), arg_0);
    return var_1;
}

fn func_5(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 16360u) >> (~_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, u_input.c.x)), vec2<u32>(4711u, 9155u)) % vec2<u32>(32u)), vec2<u32>(abs(~54779u), ~28271u), _wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(1u, _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_div_u32(73711u, 4294967295u)))));
    global0 = !global2.a.x;
    let var_1 = i32(-1i) * -select(41416i >> (abs(global1.x) % 32u), max(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -18187i, u_input.a, 2147483647i), vec4<i32>(u_input.a, -1i, u_input.a, u_input.a))), !arg_2.a.x);
    let var_2 = abs(~abs(var_1));
    let var_3 = ~_wgslsmith_div_vec4_u32(arg_0, ~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), max(arg_0.x, var_0.x), abs(0u), var_0.x));
    return ~(~_wgslsmith_div_u32(~max(var_0.x, 0u), 35107u));
}

fn func_1(arg_0: vec2<i32>) -> vec4<u32> {
    let var_0 = true;
    let var_1 = !(!(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, u_input.c.x, global1.x, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(111350u, global1.x, global1.x, global1.x), vec4<u32>(1u, u_input.c.x, u_input.c.x, global1.x))) >= _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 0u, u_input.b.x), ~vec3<u32>(56925u, global1.x, 0u))));
    global1 = vec2<u32>(u_input.c.x >> (_wgslsmith_add_u32(func_5(~vec4<u32>(u_input.c.x, global1.x, u_input.b.x, u_input.c.x), 1i <= arg_0.x, func_2(u_input.c, Struct_1(global2.a))), firstLeadingBit(global1.x)) % 32u), u_input.b.x);
    var var_2 = func_2(vec2<u32>(u_input.b.x, ~(reverseBits(10351u) << (global1.x % 32u))), func_2(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, global1.x), abs(vec2<u32>(global1.x, 0u))), func_2(vec2<u32>(max(1u, 3627u), global1.x), Struct_1(global2.a))));
    global0 = true;
    return ~min(~min(vec4<u32>(36565u, u_input.b.x, 35213u, u_input.b.x), vec4<u32>(75521u, u_input.b.x, 1u, 52031u)) | ~countOneBits(vec4<u32>(u_input.b.x, 30152u, 30032u, global1.x)), _wgslsmith_sub_vec4_u32(countOneBits(~vec4<u32>(4294967295u, u_input.b.x, 49819u, 5495u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(global1.x, global1.x, global1.x, u_input.c.x), abs(vec4<u32>(35255u, 4294967295u, global1.x, u_input.c.x)))));
}

fn func_6(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_mod_vec2_u32(~u_input.c, max(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u) ^ vec2<u32>(1u, global1.x), vec2<u32>(13251u, arg_1)), (_wgslsmith_div_vec2_u32(u_input.c, u_input.c) >> (~vec2<u32>(64622u, global1.x) % vec2<u32>(32u))) & (_wgslsmith_mult_vec2_u32(vec2<u32>(14705u, 0u), vec2<u32>(arg_1, u_input.b.x)) >> ((vec2<u32>(33573u, u_input.b.x) | u_input.b) % vec2<u32>(32u)))));
    var var_0 = countOneBits(~(0u >> (reverseBits(u_input.b.x) % 32u))) != arg_1;
    var var_1 = _wgslsmith_add_u32(54628u, _wgslsmith_mult_u32(92496u, _wgslsmith_mult_u32(u_input.b.x, global1.x)));
    var var_2 = ~(u_input.b.x >> (0u % 32u));
    let var_3 = ~(~_wgslsmith_add_vec3_u32(~(~vec3<u32>(17630u, global1.x, global1.x)), ~vec3<u32>(2264u, arg_1, u_input.b.x)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_mult_i32(~u_input.a | _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-26843i, u_input.a), vec2<i32>(-35917i, u_input.a)), abs(-1i)), -2147483647i), ~max(select(~global1.x, u_input.c.x, global2.a.x), _wgslsmith_dot_vec4_u32(func_1(vec2<i32>(-21270i, u_input.a)), vec4<u32>(global1.x, 45712u, u_input.b.x, global1.x))), func_2(func_1(countOneBits(vec2<i32>(0i, -19419i))).yw, func_2(_wgslsmith_mod_vec2_u32(u_input.c, u_input.c), Struct_1(!global2.a))));
    let var_1 = Struct_1(vec4<bool>(!all(vec4<bool>(true, false, global2.a.x, true)), global2.a.x, true, !(func_6(-1i, global1.x, Struct_1(vec4<bool>(true, global2.a.x, false, false))).a.x || (-40897i <= u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(~40644u | min(u_input.b.x, global1.x), u_input.b.x, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.x, u_input.c.x), vec3<u32>(global1.x, 0u, 15066u))), ~max(2118u, u_input.b.x))), func_1(-select(vec2<i32>(0i, u_input.a), vec2<i32>(-1i, u_input.a), false | var_0.a.x)).xwz, 2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-607f, _wgslsmith_div_f32(1743f, 1053f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(320f)) - -1133f) + 409f)), firstLeadingBit(vec3<u32>(_wgslsmith_mod_u32(53387u, ~12352u), global1.x >> (_wgslsmith_sub_u32(global1.x, 4294967295u) % 32u), _wgslsmith_mod_u32(1u | global1.x, ~0u))));
}

