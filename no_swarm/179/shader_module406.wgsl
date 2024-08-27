struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(0u, 1u, 0u, 15463u), vec3<bool>(true, false, false), vec2<bool>(false, false), true, 4294967295u);

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1314f + 619f)));
    var var_1 = !vec4<bool>(global0.x, true || (_wgslsmith_f_op_f32(trunc(1395f)) > -1006f), !all(vec3<bool>(global0.x, global1.d, global2.b.x)) && global0.x, !all(vec4<bool>(false, false, true, true)));
    global0 = global1.b.xy;
    global0 = !select(var_1.wx, !global2.c, global0.x);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(621f * _wgslsmith_f_op_f32(f32(-1f) * -1707f)))));
    return !global2.b;
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = ~vec3<i32>(-u_input.a, -10853i, _wgslsmith_mult_i32(-1i, max(_wgslsmith_div_i32(-56211i, -25595i), 1i)));
    global0 = func_2().zz;
    var var_1 = vec4<u32>(~(~min(4294967295u, global1.a.x)), _wgslsmith_add_u32(min(~global1.e, u_input.b), 4294967295u), _wgslsmith_sub_u32(63241u, select(1u, ~48679u, false)), global2.e) & select(abs(arg_2.a & (vec4<u32>(u_input.b, 38549u, arg_2.e, global1.a.x) ^ global1.a)), global1.a, select(!select(vec4<bool>(global1.c.x, arg_2.d, false, false), vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(global2.b.x, global0.x, global1.d, global0.x)), select(!vec4<bool>(global1.b.x, true, global1.d, false), vec4<bool>(true, false, true, false), !vec4<bool>(global1.d, false, true, true)), global1.d));
    let var_2 = abs(vec2<u32>(select(1u, _wgslsmith_mod_u32(var_1.x, global2.a.x), global1.b.x) | ~_wgslsmith_dot_vec3_u32(global1.a.xzx, arg_2.a.yyw), 0u));
    let var_3 = Struct_1(countOneBits(vec4<u32>(global2.a.x, 0u, ~53413u, ~55833u)) << (global1.a % vec4<u32>(32u)), select(select(select(arg_2.b, vec3<bool>(global1.b.x, true, true), select(vec3<bool>(global1.b.x, global2.c.x, true), vec3<bool>(true, false, false), arg_2.d)), global1.b, select(func_2(), !arg_2.b, !vec3<bool>(false, arg_2.b.x, true))), select(!global1.b, vec3<bool>(global0.x && true, all(vec4<bool>(arg_2.c.x, true, true, false)), true), func_2()), !vec3<bool>(global2.d == global0.x, global0.x, false || global2.d)), vec2<bool>(global0.x, false & !arg_2.b.x), global1.c.x, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, min(u_input.b, var_1.x)), var_1.yxz)));
    return 51848u << (arg_2.e % 32u);
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_1 {
    global2 = Struct_1(~(firstTrailingBit(vec4<u32>(3228u, 1u, global2.e, 4294967295u)) ^ (_wgslsmith_div_vec4_u32(global1.a, global1.a) & ~global1.a)), func_2(), vec2<bool>(false, select(arg_0, arg_0, true)), true, global2.a.x);
    var var_0 = Struct_1(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(25637u, func_3(-1505f, -1328f, Struct_1(global1.a, global1.b, global2.c, true, global1.a.x)), 20033u, u_input.b)), global2.a & vec4<u32>(4294967295u, max(1u, 21303u), ~global2.e, ~0u)), !vec3<bool>(all(global1.b.zy), true, global1.b.x), func_2().yy, !(!(true && global2.c.x)) && (false == !global2.b.x), firstLeadingBit(22070u));
    global2 = Struct_1(~_wgslsmith_add_vec4_u32(global2.a, vec4<u32>(u_input.b, ~4294967295u, global2.a.x & u_input.b, var_0.e ^ u_input.b)), global2.b, var_0.b.zy, false, global1.a.x);
    let var_1 = arg_0;
    var var_2 = global2.a;
    return Struct_1(vec4<u32>(_wgslsmith_mult_u32(~1u, _wgslsmith_div_u32(~global2.a.x, _wgslsmith_dot_vec2_u32(global2.a.zx, vec2<u32>(36177u, 13950u)))), global2.e, _wgslsmith_dot_vec2_u32(var_0.a.wy, global2.a.zw), firstLeadingBit(global2.e)), vec3<bool>(!((global1.c.x | false) && false), any(var_0.b.zx), -629f < _wgslsmith_f_op_f32(select(-859f, -1508f, var_1))), global1.c, global0.x, ~(max(642u ^ var_0.e, ~u_input.b) ^ _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(global2.a.x, 1u)), var_0.a.xw)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(any(vec4<bool>(all(vec4<bool>(global2.d, false, true, false)), global0.x, false, _wgslsmith_clamp_i32(1i, -45640i, -5759i) == -u_input.a)), i32(-1i) * -_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -1i, -1i, u_input.a), vec4<i32>(-2147483647i, -2147483647i, u_input.a, u_input.a))));
    global2 = var_0;
    var var_1 = u_input.a;
    var var_2 = Struct_1(func_1(true != any(!vec3<bool>(false, true, var_0.d)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 40517i), ~vec4<i32>(u_input.a, u_input.a, 0i, u_input.a)), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -1i, u_input.a), vec4<i32>(-10535i, -1i, u_input.a, u_input.a))))).a, vec3<bool>(select(global2.d || true, true, true), !any(func_1(false, u_input.a).b.zy), !global1.b.x == any(vec3<bool>(true, true, var_0.c.x))), !vec2<bool>(true, global1.b.x), any(global2.b.yy), u_input.b);
    var var_3 = func_1(true, u_input.a);
    var_1 = u_input.a & (_wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, -76660i), vec3<i32>(27201i, u_input.a, u_input.a)), ~(-vec3<i32>(2147483647i, 17870i, -25088i))) & _wgslsmith_div_i32(select(-65136i, -2147483647i, global0.x) | u_input.a, u_input.a));
    global1 = func_1(true, u_input.a);
    let var_4 = func_1(false, _wgslsmith_div_i32(u_input.a, _wgslsmith_dot_vec2_i32(min(-vec2<i32>(u_input.a, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(2147483647i, -11206i))), vec2<i32>(1i, u_input.a) ^ _wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, -16305i)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-1610f, _wgslsmith_f_op_f32(f32(-1f) * -1559f), -1195f), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_2.e, global1.a.x), global1.a.yww) & _wgslsmith_add_u32(_wgslsmith_mult_u32(13994u, u_input.b), 48765u)), vec2<u32>(var_4.e, ~(var_0.a.x << (92832u % 32u))));
}

