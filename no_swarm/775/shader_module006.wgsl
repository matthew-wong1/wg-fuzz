struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(-2207f, 981f), Struct_1(vec2<i32>(0i, 1947i), -15629i, vec4<i32>(-44345i, -25600i, -8942i, 2147483647i), vec2<i32>(15166i, -41776i)), vec2<f32>(279f, 861f), Struct_1(vec2<i32>(15318i, 2147483647i), 54506i, vec4<i32>(2147483647i, -50673i, 2147483647i, 2930i), vec2<i32>(1i, 2147483647i)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec4<u32>) -> vec3<u32> {
    let var_0 = arg_1;
    let var_1 = global0.b;
    return ~arg_2.wzz;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.b.x, arg_1.b.x, 15043u), func_3(global0.c.x, Struct_4(vec2<bool>(true, true)), vec4<u32>(arg_1.b.x, _wgslsmith_mult_u32(u_input.d, 4294967295u), u_input.d, 0u)), abs(vec3<u32>(u_input.d, ~1u, arg_1.b.x & arg_1.b.x))), ~(abs(select(vec3<u32>(4294967295u, 0u, u_input.d), vec3<u32>(1u, 54900u, u_input.d), true)) | firstTrailingBit(func_3(318f, Struct_4(vec2<bool>(true, false)), vec4<u32>(1659u, 1u, 45913u, 4294967295u)))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0)))), global0.b, global0.a, Struct_1(global0.b.d, 10317i, -vec4<i32>(-14594i, 2147483647i, arg_1.d.d.c.x, -20958i), vec2<i32>(_wgslsmith_mod_i32(7787i, u_input.b), select(1i, 29572i, true)) ^ arg_1.d.d.c.xw));
    var_1 = arg_1.d;
    var var_2 = arg_1.b.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_1.c.x, arg_0.x) * vec3<f32>(346f, 1165f, arg_0.x)) - vec3<f32>(1571f, -1000f, -338f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-503f, -303f, arg_1.d.c.x)) * vec3<f32>(arg_0.x, 1000f, -641f)), true)), vec3<f32>(arg_1.c, -1432f, var_1.c.x)));
    return arg_1.a;
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: Struct_4, arg_3: i32) -> i32 {
    global0 = func_2(_wgslsmith_f_op_vec2_f32(arg_0.a.c - arg_0.d.a), arg_0);
    global0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -582f), 276f), Struct_1(arg_0.d.d.c.yx, _wgslsmith_dot_vec4_i32(~min(global0.b.c, vec4<i32>(1i, u_input.c, arg_1, u_input.c)), _wgslsmith_div_vec4_i32(~global0.d.c, vec4<i32>(global0.d.a.x, 7208i, global0.b.c.x, 16099i))), vec4<i32>(global0.d.b, global0.d.b, arg_0.a.d.d.x, _wgslsmith_mult_i32(15579i >> (arg_0.b.x % 32u), _wgslsmith_div_i32(-2147483647i, global0.d.d.x))), abs(firstTrailingBit(vec2<i32>(u_input.a, 0i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(func_2(global0.c, Struct_3(arg_0.d, arg_0.b, arg_0.d.a.x, Struct_2(vec2<f32>(global0.c.x, global0.c.x), Struct_1(arg_0.a.b.c.zz, -60609i, vec4<i32>(u_input.b, -19094i, arg_3, u_input.c), global0.d.d), global0.c, global0.d))).a, vec2<f32>(624f, arg_0.c)))), func_2(global0.a, arg_0).b);
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(step(global0.c.x, 1030f)), _wgslsmith_f_op_f32(f32(-1f) * -629f)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, -158f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2286f, global0.a.x)))))), func_2(_wgslsmith_f_op_vec2_f32(arg_0.a.a * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-789f, 2173f))), Struct_3(arg_0.d, vec2<u32>(42217u, ~arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -2158f), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(367f, arg_0.a.c.x) * vec2<f32>(-437f, -229f)), arg_0.d.b, arg_0.a.a, arg_0.a.d))).b, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1280f, arg_0.d.a.x))), -256f), global0.c.x), Struct_1(vec2<i32>(-arg_0.d.b.d.x, _wgslsmith_div_i32(select(2147483647i, -482i, arg_2.a.x), _wgslsmith_mod_i32(-1i, 1i))), 1i, vec4<i32>(max(u_input.b, global0.d.d.x), 1i, -1i, 1i) & -(~vec4<i32>(80507i, u_input.a, arg_0.d.b.b, arg_3)), vec2<i32>(arg_3, arg_3)));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32((12100i | (func_1(Struct_3(Struct_2(global0.c, Struct_1(global0.b.d, global0.d.d.x, global0.d.c, vec2<i32>(1i, u_input.b)), global0.c, global0.b), vec2<u32>(16403u, u_input.d), global0.a.x, Struct_2(global0.a, global0.d, vec2<f32>(-903f, -842f), global0.d)), global0.d.c.x, Struct_4(vec2<bool>(true, true)), u_input.b) << (1u % 32u))) & u_input.b, firstTrailingBit(-78855i));
    var_0 = u_input.c;
    var_0 = u_input.c;
    var var_1 = Struct_4(select(vec2<bool>(_wgslsmith_f_op_f32(ceil(global0.c.x)) <= global0.a.x, all(vec3<bool>(true, true, true))), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true)), !vec2<bool>(197f < global0.c.x, u_input.d != 4294967295u)));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-248f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a.x * global0.c.x), -715f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1597f + _wgslsmith_f_op_f32(exp2(global0.c.x)))) + global0.c.x)));
    var_1 = Struct_4(select(var_1.a, select(select(select(vec2<bool>(false, var_1.a.x), var_1.a, var_1.a), var_1.a, vec2<bool>(false, var_1.a.x)), select(select(vec2<bool>(var_1.a.x, false), vec2<bool>(true, var_1.a.x), vec2<bool>(var_1.a.x, var_1.a.x)), vec2<bool>(var_1.a.x, var_1.a.x), true), vec2<bool>(true, var_1.a.x)), !select(select(var_1.a, vec2<bool>(false, false), var_1.a.x), select(vec2<bool>(false, var_1.a.x), var_1.a, var_1.a.x), vec2<bool>(false, var_1.a.x))));
    var var_3 = vec3<u32>(~u_input.d & _wgslsmith_add_u32(select(123454u, ~u_input.d, var_1.a.x | true), reverseBits(~50975u)), firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d)), ~vec4<u32>(u_input.d, 45384u, 7646u, u_input.d)), u_input.d)), u_input.d);
    let var_4 = ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(var_3.x, _wgslsmith_dot_vec2_u32(var_3.xx, min(vec2<u32>(4294967295u, var_3.x), var_3.yz)), u_input.d), ~(~var_3.x) << (~_wgslsmith_add_u32(30065u, 0u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-463f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.c.x, 1665f), global0.c))))), global0.c.x, ~_wgslsmith_add_i32(-33806i & u_input.b, func_2(global0.c, Struct_3(Struct_2(vec2<f32>(-482f, global0.a.x), global0.b, global0.a, global0.d), vec2<u32>(0u, 0u), -1000f, Struct_2(vec2<f32>(1560f, 1000f), global0.d, global0.a, Struct_1(global0.b.d, global0.b.d.x, global0.b.c, global0.d.a)))).d.c.x) >> ((var_3.x & ~0u) % 32u));
}

