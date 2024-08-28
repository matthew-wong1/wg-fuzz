struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<bool>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(1i, -64181i, 3114i, -1i, 1i, 0i, 5461i, i32(-2147483648));

var<private> global1: Struct_2 = Struct_2(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4203u), Struct_1(vec3<bool>(false, false, false), false, vec3<bool>(true, true, true), -2011f, 4294967295u), -1002f, vec3<f32>(-935f, -726f, 1455f), Struct_1(vec3<bool>(true, true, false), false, vec3<bool>(true, false, false), 1856f, 4294967295u));

var<private> global2: vec4<f32>;

var<private> global3: Struct_3 = Struct_3(vec4<i32>(-81638i, -1i, 2147483647i, 36265i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_mod_u32(~(~79828u), u_input.b.x);
    let var_1 = global2.x;
    var var_2 = Struct_2(min(global1.a, vec4<u32>(~32801u, ~_wgslsmith_mod_u32(global1.b.e, global1.b.e), countOneBits(_wgslsmith_div_u32(u_input.b.x, 4294967295u)), global1.a.x)), Struct_1(!vec3<bool>(any(vec2<bool>(true, global1.e.b)), global1.e.a.x, any(vec2<bool>(false, global1.e.c.x))), !(!global1.b.b), !global1.b.a, global1.e.d, 0u), -1038f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global2.xxx))))), Struct_1(select(vec3<bool>(all(vec2<bool>(global1.e.c.x, false)), any(vec3<bool>(global1.e.c.x, global1.e.b, global1.e.a.x)), global1.b.c.x), !(!global1.b.c), !global1.e.a), any(vec4<bool>(!global1.b.c.x, all(vec2<bool>(global1.e.b, false)), any(vec3<bool>(global1.b.c.x, global1.b.a.x, false)), true)), select(global1.e.a, vec3<bool>(true, global1.b.c.x && true, !global1.e.b), true), 805f, ~abs(global1.b.e) | _wgslsmith_div_u32(14775u ^ u_input.b.x, ~u_input.b.x)));
    var_0 = ~(~countOneBits(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) ^ (4294967295u & global1.e.e)));
    global1 = Struct_2(select(abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(var_2.a, var_2.a, vec4<u32>(50952u, global1.a.x, 0u, 15179u)), ~vec4<u32>(34192u, 1u, u_input.b.x, global1.e.e), ~vec4<u32>(global1.a.x, 4294967295u, 62472u, 0u))), var_2.a, !(!vec4<bool>(true, false, global1.e.a.x, false))), var_2.e, global2.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_2.d)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, 174f, -2428f), global2.xxw, vec3<bool>(var_2.e.b, global1.e.b, false))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.x, _wgslsmith_f_op_f32(-global2.x), var_2.b.d), global1.d))), Struct_1(global1.b.c, all(!(!vec4<bool>(global1.b.b, false, false, true))), vec3<bool>(global1.b.b, global1.b.c.x, false), -341f, _wgslsmith_dot_vec3_u32(~global1.a.wzw, var_2.a.xyz)));
    return firstLeadingBit(reverseBits(u_input.c));
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    global3 = Struct_3(vec4<i32>(6712i, global3.a.x, ~(-2147483647i), global3.a.x));
    let var_0 = Struct_3(global3.a);
    var var_1 = Struct_3(vec4<i32>(func_3(), ~_wgslsmith_dot_vec4_i32(global3.a, _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, var_0.a.x, -10370i, u_input.c), global3.a)), _wgslsmith_dot_vec2_i32(-abs(var_0.a.wz), _wgslsmith_sub_vec2_i32(vec2<i32>(global3.a.x, global3.a.x), vec2<i32>(var_0.a.x, -11698i))), var_0.a.x));
    global0 = array<i32, 8>();
    global1 = Struct_2(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(global1.a, vec4<u32>(4294967295u, select(6193u, global1.b.e, global1.e.a.x), ~0u, 8146u)), global1.a), Struct_1(vec3<bool>(global1.e.a.x, global1.b.c.x, false), !global1.e.a.x, global1.b.c, _wgslsmith_f_op_f32(f32(-1f) * -459f), _wgslsmith_div_u32(~(~4294967295u), 1u)), global1.e.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.zzy + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.x, global2.x, global1.c)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(408f, 1815f, -228f)))), global1.e);
    return Struct_3(_wgslsmith_add_vec4_i32(-global3.a, ~_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(var_0.a.x, -24186i, var_0.a.x, 0i)), abs(vec4<i32>(1i, 1201i, 54519i, var_0.a.x)))));
}

fn func_1() -> Struct_3 {
    return func_2(global3.a.zz);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: u32) -> bool {
    global2 = vec4<f32>(1230f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + 1000f)))))), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-788f - -2195f), _wgslsmith_f_op_f32(abs(arg_0)))) - -890f));
    global1 = Struct_2(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_2, 4294967295u, u_input.b.x), global1.a)), global1.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_0)))), global1.d, Struct_1(select(select(global1.b.a, global1.e.a, false), select(vec3<bool>(global1.b.a.x, true, global1.b.a.x), vec3<bool>(true, global1.e.b, global1.e.c.x), any(vec3<bool>(true, true, true))), global1.e.b == false), !(_wgslsmith_dot_vec4_i32(arg_1.a, vec4<i32>(u_input.a, -2147483647i, u_input.c, 60093i)) <= u_input.a), global1.e.a, global2.x, reverseBits(1u)));
    let var_0 = ~global1.a.wzx;
    global1 = Struct_2(global1.a, Struct_1(global1.b.a, all(global1.b.c), select(global1.e.c, vec3<bool>(global1.b.b, any(global1.e.a.xx), global1.b.c.x), true & global1.e.b), -615f, u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.e.d, _wgslsmith_f_op_f32(abs(413f))))), _wgslsmith_f_op_vec3_f32(-global1.d), global1.e);
    let var_1 = 0i;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<bool>(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -531f)), func_1(), ~global1.b.e), !any(!global1.b.c), false), _wgslsmith_div_i32(_wgslsmith_sub_i32(firstLeadingBit(-32147i), u_input.c | -15106i), -37563i) != abs(firstLeadingBit(~u_input.a)), global1.e.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -144f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.x + -2064f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1000f, -1098f)))))), ~(~abs(78205u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-global1.d.xx);
    global1 = Struct_2(_wgslsmith_div_vec4_u32(global1.a, ~global1.a), global1.e, _wgslsmith_f_op_f32(ceil(global1.e.d)), global1.d, Struct_1(!(!(!var_0.a)), true | any(!vec2<bool>(var_0.c.x, global1.b.a.x)), select(!global1.e.c, global1.b.c, select(vec3<bool>(var_0.a.x, true, false), select(global1.b.a, vec3<bool>(true, false, false), var_0.a.x), var_0.c)), -752f, 4294967295u));
    global1 = Struct_2(select(_wgslsmith_div_vec4_u32(global1.a, global1.a), vec4<u32>(_wgslsmith_dot_vec4_u32(~global1.a, global1.a), u_input.b.x, ~0u >> (_wgslsmith_dot_vec3_u32(global1.a.yzy, global1.a.zwy) % 32u), var_0.e), select(select(!vec4<bool>(true, global1.e.c.x, var_0.c.x, global1.b.a.x), vec4<bool>(var_0.c.x, false, global1.b.c.x, var_0.b), select(vec4<bool>(global1.e.c.x, false, global1.b.c.x, global1.e.b), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, global1.b.a.x))), select(select(vec4<bool>(true, var_0.c.x, false, false), vec4<bool>(true, false, global1.b.a.x, global1.b.c.x), false), !vec4<bool>(global1.b.b, var_0.a.x, var_0.a.x, true), global1.b.c.x), func_4(_wgslsmith_f_op_f32(global1.b.d * 228f), func_1(), abs(1u)))), Struct_1(global1.e.c, any(var_0.c), global1.e.c, _wgslsmith_f_op_f32(global1.d.x - var_0.d), reverseBits(firstTrailingBit(var_0.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global2.x, 1303f)), _wgslsmith_f_op_f32(-global1.d.x)))) * 749f), _wgslsmith_f_op_vec3_f32(-global1.d), Struct_1(select(vec3<bool>(true, var_0.c.x, global1.b.c.x & global1.e.a.x), var_0.c, true), true, select(select(!vec3<bool>(global1.b.a.x, var_0.a.x, false), !vec3<bool>(false, global1.e.c.x, true), select(true, var_0.c.x, true)), select(!vec3<bool>(var_0.b, global1.e.a.x, true), vec3<bool>(global1.b.c.x, false, global1.b.c.x), 1u <= u_input.b.x), select(global1.b.c.x, var_1.x != -1100f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -398f)), ~4294967295u >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e, var_0.e, 31852u, global1.e.e), global1.a) ^ select(u_input.b.x, u_input.b.x, true)) % 32u)));
    var var_2 = Struct_2(~global1.a, global1.b, 1000f, vec3<f32>(-1143f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -335f), 240f))), _wgslsmith_f_op_f32(857f * -1666f)), Struct_1(select(!var_0.a, !var_0.c, select(!var_0.c, select(global1.b.c, global1.b.a, global1.b.a), var_0.c)), false, vec3<bool>(any(select(vec4<bool>(var_0.c.x, true, var_0.c.x, true), vec4<bool>(false, var_0.c.x, var_0.b, true), vec4<bool>(true, var_0.a.x, false, true))), global1.b.b, !(!global1.b.b)), var_1.x, ~abs(_wgslsmith_dot_vec2_u32(global1.a.yy, vec2<u32>(global1.b.e, global1.a.x)))));
    let var_3 = var_2.d.zy;
    let var_4 = -1206f;
    let var_5 = _wgslsmith_f_op_f32(sign(var_4));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(~abs(global3.a.x))), u_input.b);
}

