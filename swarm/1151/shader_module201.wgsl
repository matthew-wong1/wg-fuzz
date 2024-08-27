struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(2147483647i), -100f, Struct_1(i32(-2147483648)), Struct_1(0i));

var<private> global1: vec2<f32> = vec2<f32>(1149f, -511f);

var<private> global2: array<vec2<f32>, 13>;

var<private> global3: Struct_2 = Struct_2(Struct_1(0i), 1576f, Struct_1(-1i), Struct_1(i32(-2147483648)));

var<private> global4: u32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3) -> vec2<f32> {
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(~arg_0.c.zww, min(arg_0.b, arg_0.c.wyz)), ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(arg_0.c.zzy, arg_0.b), abs(vec3<u32>(u_input.b, 46656u, arg_0.c.x)))), arg_0.b & vec3<u32>(_wgslsmith_clamp_u32(firstTrailingBit(u_input.b), max(u_input.b, 4294967295u), min(1u, arg_0.b.x)), u_input.b, ~_wgslsmith_clamp_u32(u_input.b, 4294967295u, 1u)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b)), global0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a.b))))))));
    let var_2 = global1.x;
    global1 = vec2<f32>(arg_0.a.b, var_1.x);
    global3 = Struct_2(global3.a, -1000f, global0.c, Struct_1(arg_0.a.d.a));
    return var_1.zz;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>) -> bool {
    let var_0 = global3.a;
    global1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_2(global0.a, -184f, arg_0, Struct_1(-56958i)), vec3<u32>(u_input.b, 1u, u_input.b), vec4<u32>(59011u, u_input.b, u_input.b, u_input.b))))))));
    let var_1 = global3.c;
    global0 = Struct_2(global0.c, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -148f)), global3.b), _wgslsmith_f_op_f32(ceil(703f)))), global3.c, arg_0);
    global3 = Struct_2(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, global0.b)), global3.a, arg_0);
    return any(!select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, true, true)), true, true, false), vec4<bool>(any(vec2<bool>(false, false)), global3.c.a == 13908i, true, any(vec3<bool>(true, true, false)))));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(Struct_1(max(abs(global0.c.a), arg_3.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, 287f) * _wgslsmith_f_op_f32(arg_0 * global3.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, 1084f)), _wgslsmith_f_op_f32(floor(374f)) > 1f)), global0.d, global3.a), select(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_2, 53701u), vec3<u32>(arg_2, 50208u, 4294967295u)), vec3<u32>(~arg_2, firstLeadingBit(u_input.b), u_input.b), vec3<bool>(arg_3.a >= 1i, true && arg_1, func_2(global3.a, arg_2, vec4<f32>(861f, 824f, 948f, 350f)))) << (select(vec3<u32>(~26827u, arg_2, _wgslsmith_dot_vec3_u32(vec3<u32>(2335u, 54600u, 4294967295u), vec3<u32>(arg_2, u_input.b, u_input.b))), ~vec3<u32>(u_input.b, 4294967295u, arg_2), func_2(arg_3, u_input.b, vec4<f32>(global0.b, global1.x, global0.b, global3.b)) || (global1.x == global1.x)) % vec3<u32>(32u)), countOneBits(~(firstLeadingBit(vec4<u32>(u_input.b, 1u, u_input.b, 10258u)) >> ((vec4<u32>(57034u, u_input.b, 14498u, u_input.b) ^ vec4<u32>(58882u, 1u, 4593u, u_input.b)) % vec4<u32>(32u)))));
    var var_1 = -u_input.a;
    var var_2 = arg_3;
    let var_3 = 0i;
    var var_4 = var_0.a;
    return var_0.a;
}

fn func_1() -> vec2<u32> {
    global3 = func_4(_wgslsmith_f_op_f32(step(1459f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global0.b)))))))), func_2(Struct_1(abs(firstTrailingBit(global0.a.a))), 38884u, vec4<f32>(_wgslsmith_f_op_f32(-144f - _wgslsmith_f_op_f32(select(-949f, -232f, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2004f, global0.b)), global1.x, _wgslsmith_f_op_f32(global1.x - global0.b))), _wgslsmith_dot_vec3_u32(vec3<u32>(~18700u, firstTrailingBit(u_input.b) | 30853u, 1619u), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 7670u, u_input.b, 73659u), vec4<u32>(21498u, u_input.b, u_input.b, u_input.b)), ~31455u, _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b))), global0.d);
    var var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_f32(-1422f * _wgslsmith_f_op_f32(-global0.b));
    global2 = array<vec2<f32>, 13>();
    let var_2 = Struct_1(~_wgslsmith_mod_i32(u_input.a, select(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, global3.d.a, -2147483647i), vec4<i32>(-10172i, global0.a.a, 0i, -50229i)), any(vec3<bool>(true, true, true)))));
    return countOneBits(~abs(vec2<u32>(_wgslsmith_add_u32(u_input.b, 1u), 45355u)));
}

fn func_5(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_add_vec4_u32(~select(~vec4<u32>(arg_0.x, 48287u, 20149u, 32078u), vec4<u32>(59849u, 1u, u_input.b, arg_0.x), all(vec3<bool>(true, false, false))), ~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)) >> (reverseBits(vec4<u32>(56887u ^ ~arg_0.x, 1u, 67863u, abs(~0u))) % vec4<u32>(32u));
    global2 = array<vec2<f32>, 13>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-389f * -338f)))), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-global3.b)), _wgslsmith_f_op_f32(-global0.b), 945f));
    var var_2 = !any(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), true)));
    global0 = func_4(-661f, func_2(global3.c, 4294967295u, vec4<f32>(func_4(_wgslsmith_f_op_f32(step(global0.b, global3.b)), true, reverseBits(arg_0.x), Struct_1(global0.d.a)).b, -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1385f)), global3.b), -679f)), 1u, global3.c);
    return func_4(func_4(_wgslsmith_f_op_f32(-func_4(-415f, true, 1u, global3.c).b), true, 25391u | _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(var_0.xyy, vec3<u32>(arg_0.x, 4294967295u, var_0.x), vec3<u32>(4294967295u, u_input.b, u_input.b)), vec3<u32>(0u, 1u, 26520u) ^ vec3<u32>(u_input.b, var_0.x, 0u)), Struct_1(reverseBits(~global0.c.a))).b, !all(select(vec2<bool>(false, false), vec2<bool>(true, true), all(vec3<bool>(false, true, true)))), ~_wgslsmith_clamp_u32(abs(1u), 74960u, 42132u), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x - global3.b), _wgslsmith_f_op_f32(908f - global3.b))) - global1.x), true, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.b, 1u, arg_0.x), abs(var_0)), Struct_1(i32(-1i) * -global3.a.a)).c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 13>();
    var var_0 = vec2<bool>(true, true);
    var var_1 = func_5(~(func_1() << (vec2<u32>(u_input.b, 9449u) % vec2<u32>(32u))) | ~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 35369u), _wgslsmith_add_vec2_u32(vec2<u32>(71406u, u_input.b), vec2<u32>(30183u, u_input.b))));
    global2 = array<vec2<f32>, 13>();
    global3 = Struct_2(func_5(~(vec2<u32>(u_input.b, u_input.b) | vec2<u32>(1u, 31701u))).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_div_f32(-686f, 1278f))))), var_1.c, func_4(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-var_1.b)), !(all(vec4<bool>(var_0.x, var_0.x, false, true)) & var_0.x), ~(~_wgslsmith_sub_u32(1026u, u_input.b)), Struct_1(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_1.c.a, 1i, 1i, var_1.a.a)), vec4<i32>(u_input.a, u_input.a, -33647i, var_1.a.a)))).c);
    global0 = Struct_2(var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-724f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.b))))), global0.d, global0.a);
    global2 = array<vec2<f32>, 13>();
    var_1 = func_4(384f, var_0.x, u_input.b, global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(_wgslsmith_div_u32(firstLeadingBit(u_input.b), ~u_input.b), 4294967295u, ~(~u_input.b)));
}

