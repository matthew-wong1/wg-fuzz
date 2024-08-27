struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_5 {
    a: i32,
    b: vec2<i32>,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 0u);

var<private> global1: Struct_5 = Struct_5(-13388i, vec2<i32>(36777i, -16334i), Struct_3(vec2<i32>(1i, 3834i), Struct_1(0u, true)), 1u);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = arg_2;
    global0 = u_input.b.zw;
    global0 = _wgslsmith_div_vec2_u32(~countOneBits(u_input.b.xy), min(~vec2<u32>(16390u, 1u), vec2<u32>(global1.c.b.a, 1u))) << (u_input.d.zx % vec2<u32>(32u));
    global1 = Struct_5(u_input.c.x, _wgslsmith_add_vec2_i32(u_input.c, _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(38735i, global1.a)), vec2<i32>(global1.c.a.x, -33700i) >> (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u))) ^ vec2<i32>(arg_0.a.x, -arg_1)), global1.c, firstTrailingBit(select(~global1.c.b.a, arg_0.b.a, !global1.c.b.b)) | 104131u);
    global0 = select(u_input.b.yx, reverseBits(u_input.b.xz), select(vec2<bool>(arg_0.b.a <= max(4294967295u, arg_0.b.a), arg_0.b.b), !(!vec2<bool>(true, global1.c.b.b)), vec2<bool>(arg_0.b.b, arg_0.b.b)));
    return Struct_1(_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, 24903u), arg_0.b.a, _wgslsmith_div_u32(1u, firstTrailingBit(12427u))), true);
}

fn func_3(arg_0: u32) -> i32 {
    global0 = u_input.b.yy;
    global0 = vec2<u32>(global0.x, ~min(~_wgslsmith_add_u32(15092u, arg_0), 0u));
    var var_0 = Struct_1(u_input.d.x, true);
    var var_1 = func_1(Struct_3(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, u_input.a.x), ~u_input.a.ww) ^ max(max(u_input.a.zx, vec2<i32>(-13045i, global1.b.x)), global1.c.a << (u_input.d.xw % vec2<u32>(32u))), Struct_1(4294967295u, global1.c.b.b)), u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1276f, 653f) * vec2<f32>(142f, -141f))) - _wgslsmith_div_vec2_f32(vec2<f32>(507f, -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(263f, -920f))))));
    let var_2 = Struct_5(global1.a, vec2<i32>(firstLeadingBit(~(-global1.a)), u_input.c.x), Struct_3(global1.c.a, Struct_1(max(~0u, var_0.a << (u_input.d.x % 32u)), !(var_0.a <= 1u))), ~(~(~firstTrailingBit(global1.c.b.a))));
    return ~global1.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(min(-31351i, ~1128i), ~(~u_input.a.x)), global1.c.a) << (firstTrailingBit(~_wgslsmith_mult_vec2_u32(u_input.d.wy, ~u_input.d.wx)) % vec2<u32>(32u));
    var var_1 = -u_input.a;
    let var_2 = vec4<u32>(arg_1, ~arg_2.a, global1.d, arg_1);
    var var_3 = Struct_4(func_1(global1.c, func_3(arg_2.a), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1723f, 1654f) - vec2<f32>(1751f, -547f)))), vec2<f32>(_wgslsmith_f_op_f32(step(-541f, -2521f)), -215f)))).b, -_wgslsmith_add_vec3_i32(-vec3<i32>(-5410i, arg_0.x, 1i), _wgslsmith_add_vec3_i32(arg_0, -var_1.ywz)), ~(-2147483647i), Struct_1(firstTrailingBit(_wgslsmith_mod_u32(select(0u, 20930u, global1.c.b.b), _wgslsmith_mod_u32(0u, arg_2.a))), all(vec2<bool>(var_2.x != global0.x, false))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(876f, -2382f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-589f * -776f) + _wgslsmith_f_op_f32(928f * -702f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1212f + 1477f) + -731f)))));
    let var_4 = var_2.zy;
    return -512f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(abs(u_input.a.www), global1.d, func_1(global1.c, _wgslsmith_mult_i32(global1.c.a.x, u_input.c.x), _wgslsmith_div_vec2_f32(vec2<f32>(-182f, -2524f), vec2<f32>(-1671f, -1275f))))) * _wgslsmith_f_op_f32(2127f - _wgslsmith_f_op_f32(ceil(-468f)))), 1109f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-101f - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-826f, 1000f)) - _wgslsmith_f_op_f32(abs(1127f))))) - _wgslsmith_f_op_f32(420f - -323f)));
    let var_1 = Struct_5(abs(-59466i) & ~(-reverseBits(u_input.c.x)), _wgslsmith_mod_vec2_i32(countOneBits(~vec2<i32>(u_input.a.x, 24051i)), global1.c.a), Struct_3(max(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a.ywy, u_input.a.xzx), u_input.a.x), ~(~global1.b)), Struct_1(_wgslsmith_sub_u32(0u | global1.d, 0u), func_1(global1.c, -29139i, vec2<f32>(var_0.x, 256f)).b)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~global1.d, ~92945u), 4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.c.b.a, global0.x, global1.d, 0u), u_input.b)));
    global1 = var_1;
    global0 = vec2<u32>(4294967295u, countOneBits(1u));
    var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(117f, var_0.x), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, var_0.x)), var_0.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.x, -1000f))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2237f, var_0.x, false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x * var_0.x))), -1000f)), vec4<f32>(-1560f, _wgslsmith_f_op_f32(323f - -1077f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) + _wgslsmith_f_op_f32(var_0.x + -1069f))))));
    let var_2 = global1.c.b;
    global1 = var_1;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2591f, 157f, var_0.x, 668f))), vec4<f32>(1011f, 955f, var_0.x, 961f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1591f, -371f)))), 360f), _wgslsmith_clamp_vec3_u32(vec3<u32>(16306u, ~40295u, var_2.a), min(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.a, 45642u, 4294967295u), vec3<u32>(42398u, 0u, global1.d), u_input.b.yxz), ~vec3<u32>(1u, 17195u, 1u)), u_input.d.xwx) << (~(select(vec3<u32>(33996u, 15451u, global0.x), vec3<u32>(global1.d, 4294967295u, global1.d), var_2.b) ^ vec3<u32>(78874u, var_2.a, 1u)) % vec3<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-729f, var_0.x) - _wgslsmith_f_op_f32(select(var_0.x, var_0.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1135f * var_0.x))), _wgslsmith_f_op_f32(round(2641f))));
}

