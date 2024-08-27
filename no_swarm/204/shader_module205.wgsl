struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec2<f32>;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1145f - -2157f));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(340f)) + _wgslsmith_f_op_f32(114f + arg_0.a.x))), _wgslsmith_div_vec2_f32(arg_1.zy, _wgslsmith_f_op_vec2_f32(-global2.a)), !select(!vec2<bool>(global0.x, true), vec2<bool>(global0.x, false), any(vec4<bool>(global0.x, false, global0.x, true))))));
    var var_1 = ~0u;
    global0 = vec2<bool>(1417f > var_0, true);
    global2 = arg_0;
    return global0.x;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.a)), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -529f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(901f + 1163f), _wgslsmith_f_op_f32(1000f + -477f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global2.a.x, global1.x))))), vec4<bool>((u_input.b >= firstTrailingBit(u_input.b)) && !global0.x, !global0.x, !(true | (global1.x >= -298f)), func_3(Struct_1(global2.a, vec3<f32>(1323f, global1.x, global2.a.x)), _wgslsmith_div_vec3_f32(vec3<f32>(global2.b.x, global1.x, -811f), global2.b))));
    var var_1 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_div_f32(global2.b.x, -230f))), global1.x), var_0.a.b), var_0.b);
    let var_2 = var_0.a;
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1462f, -357f) - vec2<f32>(var_1.a.b.x, 1131f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(293f, var_2.b.x))) + vec2<f32>(global1.x, -1158f))), var_1.a.b), var_0.b);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.b.yz));
    return Struct_2(var_1.a, !vec4<bool>(true, false, any(vec4<bool>(global0.x, global0.x, var_1.b.x, global0.x)), var_1.b.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> i32 {
    let var_0 = all(select(func_2().b.xxz, vec3<bool>(global0.x, global0.x, false), ~(~arg_3) > 39028u));
    global1 = _wgslsmith_f_op_vec2_f32(abs(arg_0.b.zy));
    let var_1 = u_input.b;
    global0 = !(!(!arg_1.b.xy));
    var var_2 = var_1;
    return _wgslsmith_sub_i32(59764i, 0i);
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_2 {
    var var_0 = ~select(~(vec4<u32>(u_input.b, arg_0, arg_0, u_input.b) << (abs(vec4<u32>(u_input.b, 0u, 1u, 53369u)) % vec4<u32>(32u))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, arg_0, arg_0, 4294967295u), vec4<u32>(arg_0, 38662u, arg_0, 7793u))), global0.x);
    let var_1 = arg_0;
    var var_2 = _wgslsmith_mod_vec3_u32(~abs(~abs(var_0.xwy)), reverseBits(var_0.xzw >> (reverseBits(vec3<u32>(20828u, arg_0, var_1)) % vec3<u32>(32u))) ^ select(vec3<u32>(5774u, 4294967295u, countOneBits(u_input.b)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 60889u, 4294967295u), vec3<u32>(45028u, var_0.x, var_1)) & ~vec3<u32>(u_input.b, 0u, 70306u), !select(false, global0.x, global0.x)));
    let var_3 = !vec2<bool>(~_wgslsmith_mod_i32(arg_1, arg_1) < func_4(Struct_1(global2.a, global2.b), func_2(), global1.x, ~63327u), -61240i <= _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(5077i, u_input.a, -9500i, u_input.a), vec4<i32>(arg_1, arg_1, u_input.a, arg_1)), arg_1 << (11747u % 32u)));
    let var_4 = select(!vec3<bool>(global0.x, false, func_3(func_2().a, _wgslsmith_f_op_vec3_f32(-global2.b))), !select(!vec3<bool>(false, true, var_3.x), vec3<bool>(all(var_3), all(vec4<bool>(false, var_3.x, false, true)), true), false), global1.x > _wgslsmith_f_op_f32(global1.x - global2.a.x));
    return func_2();
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    global0 = arg_3.b.yz;
    let var_0 = u_input.a;
    var var_1 = arg_3.a;
    let var_2 = _wgslsmith_f_op_f32(-arg_0);
    global2 = arg_3.a;
    return func_1(_wgslsmith_mult_u32(firstLeadingBit(~arg_2) & ~_wgslsmith_clamp_u32(u_input.b, 77640u, 339u), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, arg_2, 0u, arg_2), reverseBits(vec4<u32>(73562u, u_input.b, 29324u, 4294967295u)))), ~(~var_0)).a;
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    global0 = arg_2.b.yz;
    global1 = arg_1.b.zy;
    global2 = arg_1;
    global2 = arg_2.a;
    let var_0 = true;
    return -1i;
}

fn func_7(arg_0: i32, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = global0.x;
    let var_1 = func_1(~countOneBits(~u_input.b), arg_1.x).a;
    let var_2 = func_1(0u, u_input.a);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x - -148f)))))), _wgslsmith_f_op_f32(trunc(func_5(_wgslsmith_f_op_f32(func_1(u_input.b, arg_1.x).a.a.x + _wgslsmith_f_op_f32(exp2(var_2.a.a.x))), vec4<f32>(_wgslsmith_f_op_f32(abs(global2.a.x)), _wgslsmith_f_op_f32(-792f - 1000f), var_1.a.x, _wgslsmith_f_op_f32(-var_2.a.b.x)), 830u, func_1(u_input.b, -19528i)).b.x)));
    global2 = var_1;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<i32>(~4448i, u_input.a);
    global2 = func_7(abs(func_6(global0.x, func_5(_wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2071f, -1099f, 595f, global1.x)), _wgslsmith_sub_u32(u_input.b, 4294967295u), func_1(u_input.b, -2147483647i)), func_1(u_input.b, countOneBits(u_input.a)))), countOneBits(countOneBits(firstLeadingBit(vec3<i32>(32101i, var_0.x, u_input.a)))) | vec3<i32>(abs(-var_0.x), u_input.a, ~var_0.x ^ countOneBits(var_0.x)));
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 1814f)), global2.b);
    var var_1 = vec4<u32>(u_input.b, 23728u, select(select(~u_input.b, u_input.b, true), 1u, !(!global0.x)) | _wgslsmith_add_u32(u_input.b, ~u_input.b), u_input.b);
    var var_2 = abs(abs(vec4<u32>(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(49427u, 19927u, 4294967295u), vec3<u32>(4294967295u, 18912u, 52406u)), select(u_input.b, 1u, true), 4294967295u | u_input.b) << ((~vec4<u32>(u_input.b, var_1.x, u_input.b, var_1.x) ^ abs(vec4<u32>(u_input.b, var_1.x, var_1.x, u_input.b))) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, global1.x, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, global2.b.x)) - _wgslsmith_f_op_vec2_f32(global2.a * vec2<f32>(-121f, global2.b.x)))), global2.b.xx), vec4<u32>(1u, abs(var_2.x), 34591u, ~min(_wgslsmith_dot_vec3_u32(var_2.xzx, vec3<u32>(u_input.b, var_2.x, u_input.b)), u_input.b)), _wgslsmith_sub_u32(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(var_1.x, 86572u, 4294967295u), _wgslsmith_clamp_u32(4294967295u, ~60240u, ~var_1.x)), var_2.x));
}

