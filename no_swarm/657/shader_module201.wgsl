struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>) -> vec2<f32> {
    global0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(377f - 933f), _wgslsmith_f_op_f32(-global0.a.x)), -1i, ~(arg_0.x & 0u), Struct_1(select(_wgslsmith_sub_vec3_u32(select(vec3<u32>(0u, 1u, u_input.b.x), arg_0.ywx, true), global0.d.a), vec3<u32>(24962u, global0.d.a.x, u_input.d), select(true, global0.a.x == global0.a.x, all(vec2<bool>(false, false))))));
    global0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global0.a)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global0.a, vec2<f32>(-993f, global0.a.x))))))), global0.b, _wgslsmith_add_u32(u_input.b.x, arg_0.x), global0.d);
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global0.a * global0.a), vec2<f32>(global0.a.x, global0.a.x))))), -_wgslsmith_dot_vec2_i32(u_input.c.yz, vec2<i32>(12657i, global0.b) & u_input.c.wz), 3053u, Struct_1(~vec3<u32>(global0.d.a.x, countOneBits(arg_0.x), countOneBits(global0.c))));
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.b, global0.b), u_input.c.wx), u_input.c.yx), -1i) & ~global0.b, arg_0.x, Struct_1(vec3<u32>(arg_0.x, 0u, 0u)));
    let var_0 = -u_input.c.wy;
    return _wgslsmith_f_op_vec2_f32(global0.a - _wgslsmith_f_op_vec2_f32(max(global0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(global0.a.x)), -181f)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -964f)))), global0.a);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(~(~vec4<u32>(58043u, 23429u, u_input.d, 6233u))))));
    return Struct_3((24613i > global0.b) & select(select(true, -226f >= var_0.x, true), ~global0.d.a.x == 4294967295u, all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-328f, 1328f) + vec2<f32>(-1025f, -1647f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.a, vec2<f32>(global0.a.x, global0.a.x), vec2<bool>(true, true))))), _wgslsmith_dot_vec3_i32(u_input.c.yzw, vec3<i32>(u_input.c.x, i32(-1i) * -22060i, i32(-1i) * -8153i)), u_input.b.x, Struct_1(~_wgslsmith_mult_vec3_u32(vec3<u32>(global0.c, 9623u, 31640u), vec3<u32>(4294967295u, arg_1.a.x, u_input.b.x)))), max(_wgslsmith_dot_vec4_i32(-vec4<i32>(22086i, u_input.a, 10429i, 0i), u_input.c), u_input.a), Struct_2(vec2<f32>(var_0.x, -677f), global0.b, ~(~abs(arg_0.x)), global0.d));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    let var_0 = u_input.c.xw;
    let var_1 = func_2(global0.d.a, func_2(firstLeadingBit(max(vec3<u32>(0u, global0.c, arg_0.d.c), ~vec3<u32>(69422u, arg_0.b.d.a.x, global0.d.a.x))), arg_1.d).d.d).b;
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_0.d.a)))))), 53205i, firstLeadingBit(abs(abs(4294967295u))), Struct_1(min(vec3<u32>(~0u, _wgslsmith_add_u32(u_input.b.x, 59001u), abs(45215u)), global0.d.a | _wgslsmith_add_vec3_u32(vec3<u32>(global0.d.a.x, 2086u, 69590u), vec3<u32>(1u, var_1.d.a.x, 0u)))));
    let var_2 = ~arg_0.b.d.a.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b.a) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(arg_0.b.a)))));
    return func_2(~(~(~vec3<u32>(var_1.c, 20782u, global0.c))), global0.d).b;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>) -> u32 {
    var var_0 = -(u_input.c.xw ^ u_input.c.zx);
    var_0 = _wgslsmith_add_vec2_i32(u_input.c.xx, abs(vec2<i32>(_wgslsmith_mod_i32(var_0.x, _wgslsmith_div_i32(-2147483647i, u_input.a)), global0.b << (37690u % 32u))));
    let var_1 = global0.d;
    let var_2 = false;
    global0 = func_4(func_2(_wgslsmith_add_vec3_u32(~(var_1.a & u_input.b), max(vec3<u32>(18903u, 0u, 0u), vec3<u32>(4294967295u, arg_1.x, 4294967295u) << (vec3<u32>(24108u, arg_0.x, var_1.a.x) % vec3<u32>(32u)))), global0.d), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-955f, global0.a.x), global0.a))))), u_input.a, arg_1.x, global0.d));
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_div_f32(1700f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1064f - 175f), global0.a.x)))), -3001i, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, global0.d.a.x), max(global0.d.a.xx, vec2<u32>(1u, u_input.d))) << (16210u % 32u), func_1(~countOneBits(u_input.b.xz), ~max(global0.d.a.zy, vec2<u32>(4294967295u, global0.d.a.x)))), func_4(func_2(vec3<u32>(~u_input.d, _wgslsmith_div_u32(global0.d.a.x, global0.d.a.x), u_input.d), global0.d), func_4(Struct_3(true, func_4(Struct_3(false, Struct_2(vec2<f32>(global0.a.x, global0.a.x), 41147i, 19615u, global0.d), global0.b, Struct_2(vec2<f32>(-131f, 1559f), 39603i, u_input.d, Struct_1(vec3<u32>(global0.c, global0.c, u_input.d)))), Struct_2(global0.a, global0.b, 4294967295u, global0.d)), ~global0.b, func_2(vec3<u32>(1u, 38297u, 1u), Struct_1(vec3<u32>(u_input.b.x, 4294967295u, u_input.d))).d), Struct_2(global0.a, firstLeadingBit(-1i), ~global0.c, func_4(Struct_3(true, Struct_2(vec2<f32>(global0.a.x, 1447f), global0.b, u_input.b.x, Struct_1(vec3<u32>(34799u, u_input.b.x, 12370u))), global0.b, Struct_2(vec2<f32>(global0.a.x, 176f), global0.b, 47634u, Struct_1(u_input.b))), Struct_2(vec2<f32>(global0.a.x, global0.a.x), 31122i, 40212u, Struct_1(global0.d.a))).d))).d);
    let var_1 = func_2(vec3<u32>(var_0.c, ~1u, min(func_4(Struct_3(true, Struct_2(vec2<f32>(var_0.a.x, 726f), global0.b, global0.c, global0.d), u_input.a, Struct_2(global0.a, global0.b, var_0.d.a.x, global0.d)), Struct_2(var_0.a, 244i, 32095u, Struct_1(vec3<u32>(var_0.d.a.x, 0u, 1u)))).d.a.x, select(40339u << (u_input.d % 32u), var_0.d.a.x, false))), Struct_1(global0.d.a >> (select(vec3<u32>(global0.c, 1u, global0.c), ~var_0.d.a, vec3<bool>(true, true, true)) % vec3<u32>(32u))));
    let var_2 = global0.d;
    var_0 = func_4(Struct_3(true, var_1.d, min(_wgslsmith_mult_i32(~var_0.b, ~0i), select(-2147483647i, -2147483647i, var_1.a) ^ u_input.a), var_1.b), Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(global0.a)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.d.a.x, 826f))))), -2147483647i, abs(global0.d.a.x), Struct_1(u_input.b)));
    var var_3 = global0.c;
    var var_4 = _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(max(u_input.c.wwy, -vec3<i32>(0i, global0.b, var_1.b.b)), max(u_input.c.wyw, -vec3<i32>(u_input.a, u_input.a, var_0.b)), -(~u_input.c.xxz)), ~u_input.c.zww) << ((global0.d.a & _wgslsmith_add_vec3_u32(~max(global0.d.a, u_input.b), min(firstLeadingBit(vec3<u32>(var_1.b.c, 4294967295u, 4294967295u)), abs(u_input.b)))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, 1000f);
}

