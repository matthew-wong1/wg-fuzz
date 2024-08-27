struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(57455u, vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), -538f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_4) -> i32 {
    global0 = Struct_1((~1u | ~countOneBits(global0.a)) | u_input.e, !global0.c, global0.b, -264f);
    var var_0 = _wgslsmith_div_vec4_i32(u_input.a, _wgslsmith_sub_vec4_i32(countOneBits(max(u_input.a, u_input.a)), ~(reverseBits(vec4<i32>(16342i, -13407i, u_input.a.x, 27478i)) << (vec4<u32>(u_input.e, 39673u, 0u, 4294967295u) % vec4<u32>(32u)))));
    var var_1 = global0.c.wzy;
    let var_2 = Struct_1(abs(global0.a), !select(global0.c, !vec4<bool>(global0.b.x, true, global0.c.x, global0.b.x), !(!vec4<bool>(var_1.x, var_1.x, global0.b.x, false))), global0.b, _wgslsmith_f_op_f32(sign(923f)));
    global0 = Struct_1(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, global0.a, 63229u, 1u), vec4<u32>(16460u, var_2.a, global0.a, u_input.e)))), select(vec4<bool>(all(vec4<bool>(global0.b.x, global0.b.x, var_2.c.x, var_1.x)), var_1.x, true, !any(vec2<bool>(false, var_1.x))), vec4<bool>(!(false && var_1.x), all(var_1.xy), false, global0.c.x), ~var_2.a < 43664u), var_2.b, -2109f);
    return -15246i;
}

fn func_2(arg_0: bool) -> vec4<bool> {
    return vec4<bool>(true, countOneBits(firstTrailingBit(2147483647i)) >= func_3(Struct_4(_wgslsmith_clamp_vec3_i32(u_input.a.yyx, vec3<i32>(u_input.a.x, u_input.a.x, 9471i), vec3<i32>(u_input.b, -2147483647i, 14106i)))), true, all(global0.c.xy));
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    global0 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(_wgslsmith_div_u32(33669u, 50710u)), 4294967295u, u_input.e, ~u_input.c), _wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(36835u, 34893u, 105601u, arg_0.a), vec4<u32>(45476u, 4294967295u, arg_0.a, global0.a)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 43537u, 55807u, global0.a), vec4<u32>(3609u, 4294967295u, u_input.e, 69455u)))), !(!select(global0.b, !vec4<bool>(global0.b.x, arg_0.b.x, true, false), !vec4<bool>(false, false, global0.c.x, false))), vec4<bool>(u_input.e > 4294967295u, global0.c.x, global0.b.x, arg_0.c.x), _wgslsmith_f_op_f32(-1817f + -607f));
    return select(!arg_0.b, global0.c, global0.b);
}

fn func_1() -> vec4<f32> {
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -571f), global0.d, global0.d, _wgslsmith_f_op_f32(-global0.d)), !select(global0.b, select(!global0.b, vec4<bool>(global0.b.x, true, global0.b.x, true), true), global0.b.x), u_input.d.x);
    global0 = Struct_1(u_input.c, !(!var_0.b), global0.c, _wgslsmith_f_op_f32(1f * var_0.a.x));
    let var_1 = !(!global0.b);
    global0 = Struct_1(1u ^ max(~(~u_input.e), global0.a), global0.b, !func_4(Struct_1(global0.a ^ global0.a, func_2(false), var_1, global0.d)), _wgslsmith_f_op_f32(f32(-1f) * -133f));
    global0 = Struct_1(_wgslsmith_mult_u32(min(global0.a, _wgslsmith_add_u32(global0.a, 1u) << (~global0.a % 32u)), ~(u_input.e ^ global0.a)), !select(vec4<bool>(-39110i == u_input.b, true, any(var_1.xyx), !var_0.b.x), !global0.b, true), func_2(any(select(!var_0.b.yz, vec2<bool>(var_0.b.x, global0.b.x), var_1.yz))), -924f);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, _wgslsmith_f_op_f32(select(global0.d, global0.d, func_4(Struct_1(u_input.e, vec4<bool>(var_1.x, false, var_0.b.x, var_0.b.x), vec4<bool>(false, var_1.x, true, var_1.x), 1117f)).x)), global0.d, -698f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(691f, 918f, -510f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-802f, -178f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1723f, 708f, global0.d, global0.d))) - _wgslsmith_f_op_vec4_f32(func_1()))));
    global0 = Struct_1(global0.a & 34781u, vec4<bool>(!global0.b.x, all(global0.b), !((global0.b.x & global0.c.x) != true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, global0.d)) + _wgslsmith_f_op_f32(max(var_0.x, -1943f))) <= _wgslsmith_f_op_f32(f32(-1f) * -689f)), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), 640f)));
    global0 = Struct_1(~abs(_wgslsmith_add_u32(~u_input.c, ~6152u)), !global0.b, global0.c, global0.d);
    let var_1 = Struct_1(u_input.c, global0.b, global0.b, _wgslsmith_f_op_f32(global0.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1709f), _wgslsmith_f_op_vec4_f32(func_1()).x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.d)), -1616f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(global0.d - 532f), var_1.d, _wgslsmith_f_op_f32(-var_0.x), -391f));
}

