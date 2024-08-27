struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: array<i32, 8> = array<i32, 8>(12356i, 16543i, 2147483647i, 2147483647i, i32(-2147483648), -8565i, -1i, 10830i);

var<private> global2: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(2147483647i, 992u, vec3<i32>(0i, 1i, i32(-2147483648)))), Struct_2(Struct_1(19177i, 4294967295u, vec3<i32>(12280i, 33728i, 2147483647i))), Struct_2(Struct_1(-3457i, 28422u, vec3<i32>(45481i, -44650i, -39552i))), Struct_2(Struct_1(29259i, 58551u, vec3<i32>(20868i, 0i, 2147483647i))), Struct_2(Struct_1(0i, 4294967295u, vec3<i32>(2147483647i, 1i, 40760i))), Struct_2(Struct_1(29481i, 102846u, vec3<i32>(-32144i, 1i, -2472i))), Struct_2(Struct_1(-38259i, 4294967295u, vec3<i32>(-10487i, -2595i, 36863i))), Struct_2(Struct_1(0i, 40120u, vec3<i32>(0i, -7626i, -31287i))), Struct_2(Struct_1(55229i, 1u, vec3<i32>(41104i, 11671i, 2147483647i))), Struct_2(Struct_1(7827i, 46648u, vec3<i32>(0i, 0i, -1i))), Struct_2(Struct_1(-1i, 1u, vec3<i32>(-1i, -11388i, -15681i))), Struct_2(Struct_1(i32(-2147483648), 86920u, vec3<i32>(-4535i, 1i, 296i))), Struct_2(Struct_1(1i, 24938u, vec3<i32>(69520i, 2147483647i, 0i))), Struct_2(Struct_1(-3425i, 0u, vec3<i32>(2147483647i, 19544i, 2147483647i))), Struct_2(Struct_1(60840i, 18374u, vec3<i32>(0i, -56231i, 4775i))), Struct_2(Struct_1(8118i, 41453u, vec3<i32>(-9728i, -1i, 21348i))), Struct_2(Struct_1(37627i, 10031u, vec3<i32>(-17472i, 47657i, 1i))), Struct_2(Struct_1(2147483647i, 45515u, vec3<i32>(i32(-2147483648), -33012i, i32(-2147483648)))));

var<private> global3: Struct_2 = Struct_2(Struct_1(1i, 19262u, vec3<i32>(49434i, 52732i, 32311i)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<f32> {
    global3 = Struct_2(Struct_1(global1[_wgslsmith_index_u32(u_input.a, 8u)], abs(u_input.a), -_wgslsmith_sub_vec3_i32(vec3<i32>(0i, global3.a.c.x, -1i), abs(global3.a.c))));
    global0 = vec3<bool>(any(vec3<bool>(_wgslsmith_f_op_f32(select(892f, 685f, global0.x)) == 1170f, true, _wgslsmith_dot_vec4_u32(vec4<u32>(73210u, 23229u, 33892u, global3.a.b), vec4<u32>(50320u, 44963u, 22931u, 50133u)) < _wgslsmith_div_u32(0u, 4294967295u))), true, global0.x);
    let var_0 = global3.a;
    global2 = array<Struct_2, 18>();
    var var_1 = vec3<u32>(1609u, global3.a.b, 0u);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -864f) + _wgslsmith_f_op_f32(step(-501f, -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1000f, 1013f)))) * 2716f), 1f) * vec3<f32>(-745f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1175f, 665f) + _wgslsmith_div_f32(-666f, 1006f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -386f))));
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-243f, -260f, 1366f) * _wgslsmith_div_vec3_f32(vec3<f32>(-709f, -828f, -588f), vec3<f32>(-883f, 568f, 867f))))))), false));
    let var_1 = ~u_input.a;
    var var_2 = Struct_1(global3.a.c.x, ~(select(~var_1, arg_0.x, global0.x) >> (60960u % 32u)), vec3<i32>(((0i & global1[_wgslsmith_index_u32(38013u, 8u)]) | -global1[_wgslsmith_index_u32(22720u, 8u)]) >> (~1u % 32u), -8135i, -abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(arg_0.x, 8u)], 2147483647i, 2147483647i, 34818i), vec4<i32>(global1[_wgslsmith_index_u32(var_1, 8u)], global1[_wgslsmith_index_u32(46671u, 8u)], -12527i, -2147483647i)))));
    var var_3 = Struct_1(1i, min(select(u_input.a, 0u, any(select(vec2<bool>(false, true), global0.zz, global0.x))), 1u), global3.a.c);
    let var_4 = global2[_wgslsmith_index_u32(global3.a.b, 18u)];
    return -global3.a.a;
}

fn func_4(arg_0: i32, arg_1: f32) -> Struct_2 {
    global2 = array<Struct_2, 18>();
    var var_0 = abs(global3.a.c.xz);
    let var_1 = all(select(vec4<bool>(true, !(arg_1 <= arg_1), _wgslsmith_add_u32(global3.a.b, u_input.a) >= ~18761u, all(vec2<bool>(true, global0.x))), select(vec4<bool>(all(vec4<bool>(false, global0.x, global0.x, global0.x)), global0.x, all(vec3<bool>(global0.x, true, global0.x)), any(vec4<bool>(global0.x, false, global0.x, false))), select(select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x), false), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(false, false, true, global0.x)), global0.x), vec4<bool>(!global0.x, true, true, true)), global0.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, arg_1))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(-arg_1))))));
    var var_3 = !(u_input.a <= ~41746u);
    return Struct_2(global3.a);
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> u32 {
    let var_0 = arg_1;
    global2 = array<Struct_2, 18>();
    var var_1 = 0u;
    var var_2 = 0i;
    var_1 = _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global3.a.b, 41974u), vec2<u32>(u_input.a, 7416u)) | ~vec2<u32>(global3.a.b, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(55006u, var_0.a.b), ~vec2<u32>(18677u, 24762u)))), _wgslsmith_mod_vec2_u32(~countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.b, global3.a.b), vec2<u32>(54593u, 1u))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(global3.a.b, 8022u), vec2<u32>(arg_1.a.b, u_input.a), vec2<u32>(4294967295u, var_0.a.b) << (vec2<u32>(var_0.a.b, 53840u) % vec2<u32>(32u)))));
    return 6110u;
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = u_input.a;
    global1 = array<i32, 8>();
    global1 = array<i32, 8>();
    global2 = array<Struct_2, 18>();
    var var_1 = _wgslsmith_div_u32(~abs(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(72633u, arg_1.a.b, 84976u)), vec3<u32>(32859u, arg_1.a.b, arg_1.a.b))), firstLeadingBit(_wgslsmith_div_u32(func_5(~arg_2.a, Struct_2(global3.a)), 1u)));
    return u_input.a;
}

fn func_1(arg_0: f32) -> StorageBuffer {
    var var_0 = _wgslsmith_sub_u32(u_input.a, ~u_input.a);
    let var_1 = -1i;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(996f, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-645f, arg_0)), -313f, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-668f - arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))))));
    var var_3 = u_input.a;
    let var_4 = global2[_wgslsmith_index_u32(~func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.yxz * var_2.zyx))), global2[_wgslsmith_index_u32(func_5(-(global3.a.c.x >> (global3.a.b % 32u)), func_4(func_2(vec4<u32>(global3.a.b, global3.a.b, u_input.a, 16718u)), _wgslsmith_f_op_f32(-arg_0))), 18u)], func_4(_wgslsmith_dot_vec2_i32(global3.a.c.xz, global3.a.c.zz) >> (_wgslsmith_mod_u32(30112u, u_input.a) % 32u), arg_0).a), 18u)];
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, _wgslsmith_f_op_vec3_f32(func_3()).x, var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(-296f);
}

