struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, vec4<bool>(true, false, true, true), vec2<u32>(0u, 19438u), 822f);

var<private> global1: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(vec2<f32>(967f, -484f), vec3<u32>(42390u, 52758u, 0u), vec2<bool>(false, true), -897f), Struct_4(vec2<f32>(109f, 2186f), vec3<u32>(47861u, 1u, 43258u), vec2<bool>(false, true), -709f), Struct_4(vec2<f32>(1000f, 1000f), vec3<u32>(1u, 30217u, 1757u), vec2<bool>(true, false), -646f), Struct_4(vec2<f32>(-688f, 659f), vec3<u32>(0u, 1u, 0u), vec2<bool>(true, true), 1067f), Struct_4(vec2<f32>(756f, 1709f), vec3<u32>(0u, 4294967295u, 4294967295u), vec2<bool>(false, true), 1463f), Struct_4(vec2<f32>(-975f, 239f), vec3<u32>(39106u, 24048u, 1219u), vec2<bool>(true, true), -198f), Struct_4(vec2<f32>(949f, 1615f), vec3<u32>(4294967295u, 43283u, 38178u), vec2<bool>(false, false), 491f), Struct_4(vec2<f32>(-302f, -239f), vec3<u32>(27491u, 51500u, 35794u), vec2<bool>(false, true), -1266f), Struct_4(vec2<f32>(355f, 1896f), vec3<u32>(4294967295u, 0u, 3205u), vec2<bool>(false, true), 1374f), Struct_4(vec2<f32>(-148f, 666f), vec3<u32>(0u, 0u, 0u), vec2<bool>(true, true), -1235f), Struct_4(vec2<f32>(547f, -506f), vec3<u32>(4294967295u, 0u, 39276u), vec2<bool>(false, false), -1000f), Struct_4(vec2<f32>(2086f, -747f), vec3<u32>(55428u, 0u, 4294967295u), vec2<bool>(true, true), -1000f), Struct_4(vec2<f32>(302f, -870f), vec3<u32>(0u, 1u, 0u), vec2<bool>(true, true), 826f), Struct_4(vec2<f32>(268f, -150f), vec3<u32>(4294967295u, 46412u, 66988u), vec2<bool>(false, true), 111f), Struct_4(vec2<f32>(-1223f, -228f), vec3<u32>(73895u, 13807u, 8534u), vec2<bool>(false, false), -610f), Struct_4(vec2<f32>(1000f, -757f), vec3<u32>(2984u, 1u, 0u), vec2<bool>(true, true), 413f), Struct_4(vec2<f32>(494f, -341f), vec3<u32>(1u, 41947u, 4294967295u), vec2<bool>(true, false), -636f), Struct_4(vec2<f32>(452f, -227f), vec3<u32>(46472u, 4294967295u, 75382u), vec2<bool>(false, true), -1121f), Struct_4(vec2<f32>(236f, 300f), vec3<u32>(0u, 4294967295u, 4294967295u), vec2<bool>(true, true), -1360f), Struct_4(vec2<f32>(-1006f, 2674f), vec3<u32>(12459u, 0u, 17786u), vec2<bool>(true, false), 504f));

var<private> global2: vec3<i32> = vec3<i32>(23537i, 1i, -9184i);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: bool) -> bool {
    return select(global0.b.x, !arg_3, arg_2);
}

fn func_3(arg_0: bool) -> vec3<f32> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d, -2166f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d, -1000f))))), vec3<u32>(u_input.a, ~(~1u), ~abs(45206u)), select(global0.b.yw, vec2<bool>(!(u_input.b.x != -17521i), any(vec2<bool>(arg_0, false)) && any(vec3<bool>(arg_0, false, global0.b.x))), !arg_0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-702f, global0.d) * _wgslsmith_f_op_f32(step(global0.d, 429f)))), _wgslsmith_f_op_f32(1807f + -422f))));
    global1 = array<Struct_4, 20>();
    var var_1 = global0.d;
    var var_2 = false;
    var var_3 = false;
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -580f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.d), -1130f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1273f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_div_f32(1027f, 858f))))))));
}

fn func_1() -> Struct_1 {
    var var_0 = all(vec2<bool>(select(global0.b.x, (-386f >= global0.d) & false, !func_2(global0.d, -1000f, global0.b.x, true)), true));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.d - global0.d)))), -1903f, -114f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-993f * 1577f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global0.d)))), global0.d)));
    global2 = _wgslsmith_div_vec3_i32(min(u_input.b.yyy, vec3<i32>(~_wgslsmith_mult_i32(4919i, u_input.b.x), ~_wgslsmith_div_i32(-9315i, -2147483647i), ~(i32(-1i) * -12455i))), select(-_wgslsmith_add_vec3_i32(~vec3<i32>(29129i, -2147483647i, 32113i), -u_input.b.yzx), _wgslsmith_add_vec3_i32(abs(-u_input.b.yxw), ~vec3<i32>(global2.x, 0i, 2147483647i)), select(global0.b.x, !global0.b.x | select(global0.b.x, global0.b.x, false), !(global0.a <= 96790u))));
    var var_2 = ~vec3<i32>(-(i32(-1i) * -1i), 1i & u_input.b.x, global2.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, global0.d, 2224f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-676f, -330f, 1000f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d, var_1.x, -171f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(132f, 2164f, 1033f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-204f, -1323f, 1513f) + vec3<f32>(var_1.x, global0.d, global0.d)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d, -1664f, global0.d) * _wgslsmith_f_op_vec3_f32(func_3(true))))));
    return Struct_1(_wgslsmith_mod_u32(min(select(70568u, 1u, true), global0.a), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.c.x, global0.c.x), vec2<u32>(global0.c.x, 0u)), ~(~vec2<u32>(global0.c.x, u_input.a)))), global0.b, _wgslsmith_mod_vec2_u32(~(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.c.x), vec2<u32>(global0.c.x, 7350u))), global0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -814f) + _wgslsmith_f_op_f32(floor(-787f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-119f, -130f) - -1486f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global1 = array<Struct_4, 20>();
    let var_0 = Struct_2(vec4<f32>(global0.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.d + -694f))), global0.d)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1123f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1264f * 479f))))));
    global2 = ~(_wgslsmith_clamp_vec3_i32(vec3<i32>(min(8247i, -1i), -u_input.b.x, firstTrailingBit(global2.x)), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(global2.x, -5782i, u_input.b.x), u_input.b.www)), abs(-vec3<i32>(-84355i, 10980i, u_input.b.x))) << (((vec3<u32>(global0.a, u_input.c.x, global0.c.x) << ((vec3<u32>(global0.c.x, u_input.a, 15290u) & vec3<u32>(u_input.a, 0u, global0.a)) % vec3<u32>(32u))) << (~vec3<u32>(1u, global0.a, u_input.c.x) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = Struct_5(func_1(), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.x, 385f, _wgslsmith_f_op_f32(-global0.d), global0.d))), u_input.c.x >= 5640u);
    let var_2 = Struct_3(vec4<u32>(_wgslsmith_sub_u32(abs(_wgslsmith_clamp_u32(34243u, u_input.a, 26633u)), _wgslsmith_clamp_u32(u_input.c.x, 66437u, u_input.a) >> (max(var_1.a.a, u_input.a) % 32u)), 0u, _wgslsmith_mod_u32(select(_wgslsmith_clamp_u32(u_input.a, 0u, var_1.a.a), 57107u, true), global0.c.x), 4294967295u));
    global1 = array<Struct_4, 20>();
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_1.b.wy))), vec3<u32>(~149u, ~(~(~25110u)), 36944u), !(!vec2<bool>(false, global0.b.x && false)), func_1().d);
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.d, var_0.a.x, var_1.a.d, var_1.b.x))))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.x, var_0.a.x, 496f, -801f)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_div_u32(6073u, 1u), 55702u), u_input.c << (vec2<u32>(4294967295u, _wgslsmith_div_u32(min(0u, var_1.a.a), ~4294967295u)) % vec2<u32>(32u)));
}

