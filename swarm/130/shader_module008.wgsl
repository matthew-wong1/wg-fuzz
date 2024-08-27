struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -385f;

var<private> global1: vec2<u32>;

var<private> global2: vec3<f32>;

var<private> global3: Struct_3;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = Struct_3(Struct_2(_wgslsmith_dot_vec4_u32(u_input.b, select(abs(u_input.b), vec4<u32>(28827u, 0u, u_input.b.x, 0u), all(vec3<bool>(arg_0, true, true)))), max(_wgslsmith_dot_vec3_u32(vec3<u32>(21002u, arg_2.a, 4294967295u), u_input.b.wyy), 4294967295u) & 2623u, Struct_1(_wgslsmith_mult_u32(firstTrailingBit(1u), global3.a.c.a), arg_0), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(global3.a.d.x, global3.a.d.x), vec2<i32>(-1i, -2147483647i)), ~global3.a.d << (~u_input.b.xy % vec2<u32>(32u))), vec3<u32>((23504u & global3.a.e.x) >> ((global1.x ^ global1.x) % 32u), countOneBits(global3.a.c.a), global3.a.e.x)));
    var var_1 = Struct_2(max(_wgslsmith_dot_vec2_u32(~u_input.b.wy, vec2<u32>(71208u, 72984u) | u_input.b.wx), 24036u) << (arg_2.a % 32u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(34165u, 4294967295u, 4294967295u), vec3<u32>(16174u, ~14254u, _wgslsmith_dot_vec3_u32(var_0.a.e, vec3<u32>(12523u, u_input.b.x, 78479u)))), 1u), arg_2, vec2<i32>(-u_input.a.x, max(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, global3.a.d.x, u_input.a.x, global3.a.d.x), vec4<i32>(8965i, 40496i, var_0.a.d.x, 50231i)), vec4<i32>(2147483647i, -1i, 29543i, 1i)), min(var_0.a.d.x >> (global3.a.a % 32u), global3.a.d.x))), min(global3.a.e, _wgslsmith_div_vec3_u32(~(vec3<u32>(0u, 1u, global3.a.e.x) & global3.a.e), ~vec3<u32>(arg_2.a, 7841u, 2404u))));
    var var_2 = 1u;
    var_1 = global3.a;
    var var_3 = abs(global3.a.d);
    return !vec2<bool>(false, select(~23715u, 7331u, false) > 1u);
}

fn func_2(arg_0: bool) -> Struct_5 {
    var var_0 = true;
    var var_1 = Struct_4(global3.a, ~(~abs(vec3<u32>(global3.a.a, 4294967295u, 4294967295u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1433f), _wgslsmith_f_op_f32(-global2.x), global2.x, -242f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(383f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x - global2.x))))));
    var var_3 = !(!select(!func_3(global3.a.c.b, -1633f, Struct_1(global3.a.e.x, true)), !(!vec2<bool>(arg_0, false)), arg_0));
    let var_4 = Struct_1(~_wgslsmith_dot_vec2_u32(~reverseBits(u_input.b.zx), global3.a.e.xy >> (vec2<u32>(u_input.b.x, global1.x) % vec2<u32>(32u))), false);
    return Struct_5(_wgslsmith_f_op_f32(round(-467f)) > _wgslsmith_f_op_f32(-261f * _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1724f))))))), u_input.c.x);
}

fn func_1(arg_0: vec3<i32>) -> vec4<f32> {
    global3 = Struct_3(global3.a);
    var var_0 = func_2(all(vec2<bool>(true, false)));
    let var_1 = -282f;
    var var_2 = Struct_3(Struct_2(~(~global1.x | _wgslsmith_mult_u32(15880u, global1.x)), ~global1.x, Struct_1(u_input.d, !var_0.a), vec2<i32>(-1i, _wgslsmith_sub_i32(global3.a.d.x, ~u_input.c.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, ~global1.x, 147693u), vec3<u32>(~u_input.b.x, 18473u, 4294967295u), ~vec3<u32>(28728u, global3.a.c.a, 55648u))));
    global1 = u_input.b.yx;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1331f, 598f, global2.x, var_0.b))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(159f, -465f, global2.x, global2.x)), vec4<f32>(var_1, global2.x, var_0.b, var_1), vec4<bool>(true, var_0.a, false, true))), true & all(vec4<bool>(false, var_2.a.c.b, global3.a.c.b, var_0.a)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -552f)), _wgslsmith_f_op_f32(-var_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-992f + var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-347f, 875f, var_2.a.c.b)) + _wgslsmith_div_f32(global2.x, var_0.b))), 1f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(u_input.a.wyw)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2007f, 597f, global2.x, global2.x))), vec4<f32>(_wgslsmith_f_op_f32(-188f * 444f), _wgslsmith_f_op_f32(global2.x * 258f), _wgslsmith_f_op_f32(global2.x - global2.x), -1406f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-510f, var_0.x)))), _wgslsmith_f_op_vec2_f32(global2.xy * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(666f, 1439f)))), vec2<f32>(_wgslsmith_div_f32(513f, 708f), _wgslsmith_f_op_f32(-global2.x))))));
    var var_2 = global3.a;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1057f, var_0.x)));
    let var_4 = _wgslsmith_add_i32(func_2(true).c, _wgslsmith_div_i32(global3.a.d.x, global3.a.d.x >> (global3.a.c.a % 32u)));
    let var_5 = 4294967295u;
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(12741u >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(global1.x, 0u), vec2<u32>(var_5, ~var_2.c.a)) % 32u), -2808i, vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3, global2.x, var_2.c.b)) - _wgslsmith_div_f32(668f, global2.x)) + global2.x), global2.x));
}

