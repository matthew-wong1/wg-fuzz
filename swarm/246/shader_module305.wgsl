struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(905f, vec4<bool>(false, false, true, false));

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-1i, -1936i), vec2<f32>(686f, 1153f), true, -31961i);

var<private> global2: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    var var_0 = u_input.b.xz;
    global2 = Struct_1(vec2<i32>(1i, countOneBits(~(i32(-1i) * -33110i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, 986f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.b)))), _wgslsmith_f_op_f32(356f + _wgslsmith_f_op_f32(-182f - global2.b.x)) > global1.b.x, var_0.x ^ -(_wgslsmith_sub_i32(u_input.b.x, -1i) & (i32(-1i) * -7240i)));
    var var_1 = countOneBits(vec2<i32>(~(~global2.d), var_0.x)) >> (vec2<u32>(0u, _wgslsmith_clamp_u32(1u, select(~40753u, u_input.a, all(global0.b.ywx)), (u_input.a << (u_input.a % 32u)) ^ ~u_input.a)) % vec2<u32>(32u));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(global0.a + global1.b.x), global1.b.x);
    let var_3 = select(vec4<u32>(u_input.a, u_input.a, 42668u, ~(50381u & u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, ~u_input.a, ~u_input.a, ~u_input.a), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(65361u, u_input.a, u_input.a, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a, 15304u, 0u), vec4<u32>(u_input.a, 30416u, 1u, u_input.a)))), !all(select(global0.b.www, vec3<bool>(global0.b.x, global1.c, global2.c), true))) << (firstTrailingBit(firstTrailingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(57423u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))) % vec4<u32>(32u));
    return -min(abs(~(1i | u_input.b.x)), global1.a.x);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec3<f32>, arg_3: u32) -> vec4<bool> {
    var var_0 = global1.c;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)))), -17886i, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 8322u), vec2<u32>(reverseBits(1u), ~arg_3)));
    var var_2 = Struct_1(global2.a, vec2<f32>(-1427f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a, _wgslsmith_div_f32(arg_2.x, 1405f), arg_1)))), _wgslsmith_mod_u32(1u, firstLeadingBit(select(arg_3, 44561u, arg_1))) >= abs(arg_3 >> (49004u % 32u)), _wgslsmith_sub_i32(u_input.b.x, -25867i));
    global2 = Struct_1(global1.a, _wgslsmith_f_op_vec2_f32(-global1.b), var_2.c, var_1.b);
    var_0 = select(any(global0.b.zxy), select(false, true, (u_input.a << (0u % 32u)) == arg_3), !global0.b.x);
    return global0.b;
}

fn func_2() -> i32 {
    var var_0 = func_4(~(_wgslsmith_mod_i32(global1.d, func_3(vec3<i32>(-28274i, global1.a.x, 7811i))) & select(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), global1.d, false)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2009f), _wgslsmith_f_op_f32(abs(789f))) - 685f) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1058f)))), global0.a, select(global2.c, select(true, global2.c, true), all(global0.b.yzx)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(268f)), global0.a, global1.b.x))), u_input.a);
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-589f, -420f)))) + _wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(trunc(global2.b.x)))))));
    global2 = Struct_1(-vec2<i32>(~(~u_input.b.x), ~u_input.b.x), global2.b, false, u_input.b.x ^ 2147483647i);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))), 982f);
    let var_3 = func_4(_wgslsmith_div_i32(global2.d, u_input.b.x), true, vec3<f32>(-1000f, global2.b.x, 633f), u_input.a ^ u_input.a).x;
    return -1i;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> Struct_3 {
    let var_0 = global0.b.yw;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-903f - arg_1.a)) * _wgslsmith_f_op_f32(sign(1000f)))), -43302i, ~select(arg_0.c, countOneBits(arg_0.c), false));
    var var_2 = _wgslsmith_sub_u32(0u, u_input.a);
    global2 = Struct_1(-abs(_wgslsmith_mod_vec2_i32(~vec2<i32>(2147483647i, var_1.b), vec2<i32>(global2.a.x, global1.a.x))), global1.b, !(false && global1.c), -(func_2() >> (0u % 32u)));
    var var_3 = -1001f;
    return arg_0;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: bool) -> bool {
    var var_0 = func_5(Struct_3(606f, func_2(), ~arg_1.zy), Struct_2(730f, !(!global0.b)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(func_5(Struct_3(var_0.a, var_0.b, arg_1.yz), Struct_2(arg_2.x, vec4<bool>(global0.b.x, global1.c, global0.b.x, false))).a)))), (-10024i << (_wgslsmith_dot_vec3_u32(~arg_1, _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.c.x, var_0.c.x, 56415u), vec3<u32>(arg_1.x, arg_1.x, 4294967295u))) % 32u)) << (~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c.x, 0u, arg_1.x, u_input.a), vec4<u32>(var_0.c.x, 1u, 8065u, 4294967295u)) % 32u), vec2<u32>(~_wgslsmith_add_u32(u_input.a, _wgslsmith_mult_u32(0u, 20913u)), arg_1.x));
    global2 = Struct_1(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(abs(var_0.b), -global2.d)), global2.a, reverseBits(global1.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1136f), -1089f), global2.b)) * vec2<f32>(arg_2.x, -1000f)), global1.c, func_3(~_wgslsmith_add_vec3_i32(select(vec3<i32>(0i, global2.d, 2147483647i), vec3<i32>(var_0.b, var_0.b, global1.d), arg_3), vec3<i32>(2412i, -2147483647i, u_input.b.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, var_0.a), global1.b)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global1.b * global1.b), _wgslsmith_f_op_vec2_f32(arg_2 * global2.b)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global2.b)) - vec2<f32>(var_0.a, arg_0.x)))));
    var var_3 = _wgslsmith_clamp_u32(26500u, var_1.c.x, 24528u);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x != global2.d;
    let var_1 = !global2.c;
    let var_2 = Struct_2(-1235f, select(global0.b, vec4<bool>(any(global0.b.ww) & global0.b.x, true, !var_1, all(global0.b.yzx)), select(!global0.b, vec4<bool>(false, global2.a.x <= u_input.b.x, false, true), vec4<bool>(global2.d <= global2.d, u_input.a > 4294967295u, func_1(vec4<f32>(global0.a, global1.b.x, global2.b.x, 1000f), vec3<u32>(0u, u_input.a, 0u), vec2<f32>(-291f, global1.b.x), var_1), true))));
    var var_3 = _wgslsmith_clamp_u32(~(~u_input.a), 1u & u_input.a, ~(~min(u_input.a, countOneBits(1u))));
    var var_4 = _wgslsmith_clamp_vec2_i32(u_input.b.zw & ~u_input.b.xw, u_input.b.yz, global2.a) | reverseBits(-vec2<i32>(u_input.b.x, 2147483647i));
    var var_5 = global0.b.xy;
    var_4 = _wgslsmith_sub_vec2_i32(u_input.b.xw, u_input.b.xz);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~u_input.a, _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(89744u, 1u), u_input.a), ~1u), 57550u), u_input.a);
}

