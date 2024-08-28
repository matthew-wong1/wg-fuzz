struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 12>;

var<private> global1: Struct_4 = Struct_4(vec4<i32>(17254i, 1i, 40111i, 160i), vec3<i32>(i32(-2147483648), -1i, 1i), Struct_2(25616i, Struct_1(417f, 1480f, -1877i), Struct_1(1039f, 239f, -28804i)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<f32>) -> u32 {
    global0 = array<Struct_4, 12>();
    var var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(global1.c.c.b, 544f), -1000f, _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -134f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1208f, arg_0.b, -1000f, 492f)))))));
    global1 = global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 12u)];
    var var_1 = _wgslsmith_f_op_f32(ceil(1000f)) != _wgslsmith_f_op_f32(round(global1.c.c.b));
    let var_2 = _wgslsmith_add_u32(u_input.b.x, u_input.b.x);
    return 1u;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: vec4<f32>) -> vec3<i32> {
    let var_0 = Struct_2(arg_1.a, Struct_1(_wgslsmith_f_op_f32(floor(1155f)), -1050f, -(0i & firstLeadingBit(global1.b.x))), global1.c.b);
    var var_1 = global1.c;
    var var_2 = ~_wgslsmith_clamp_u32(firstTrailingBit(arg_0.x), 60695u, ~countOneBits(0u)) & 2867u;
    global0 = array<Struct_4, 12>();
    let var_3 = global0[_wgslsmith_index_u32(0u, 12u)];
    return _wgslsmith_add_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_0.b.c, -1i), firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, var_1.b.c), vec3<i32>(0i, 0i, var_3.c.c.c))))), abs(vec3<i32>(45864i ^ var_3.c.a, _wgslsmith_div_i32(global1.b.x, -36934i) << (u_input.a.x % 32u), 6123i)));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_5) -> vec2<bool> {
    var var_0 = Struct_3(Struct_1(297f, global1.c.c.b, global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -526f) * 440f), -1000f)), Struct_2(~arg_0.a, global1.c.c, global1.c.c), arg_1.a);
    let var_1 = true;
    global1 = Struct_4(_wgslsmith_clamp_vec4_i32(global1.a, global1.a, -_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -2147483647i, 1i, global1.a.x) & global1.a, vec4<i32>(var_0.d, arg_1.a, arg_1.a, -1i))), func_4(abs(vec3<u32>(u_input.a.x, func_3(Struct_5(1i, -506f), vec2<f32>(1495f, arg_1.b)), _wgslsmith_mod_u32(0u, 34668u))), arg_0, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.c.c.a, arg_0.b, 366f, arg_1.b), vec4<f32>(1039f, var_0.b, -998f, global1.c.b.a))))), vec4<f32>(419f, 596f, 616f, -1447f))), global1.c);
    var var_2 = global1.a;
    var var_3 = countOneBits(vec3<u32>(u_input.b.x, 74922u, _wgslsmith_mod_u32(u_input.b.x, ~(u_input.b.x >> (u_input.a.x % 32u)))));
    return !vec2<bool>(var_1, (_wgslsmith_sub_i32(-30431i, -1i) != arg_0.a) | false);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_2.xy, vec2<f32>(arg_2.x, arg_2.x), arg_0.x))) * vec2<f32>(_wgslsmith_f_op_f32(-182f - -500f), _wgslsmith_f_op_f32(round(1000f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(arg_2.yx, arg_2.yy), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1583f, global1.c.b.b))), func_2(Struct_5(arg_1.a, 1005f), Struct_5(-80924i, arg_2.x)))))));
    var var_1 = _wgslsmith_mult_u32(75623u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, _wgslsmith_div_u32(19029u, arg_3)), _wgslsmith_mult_vec2_u32(vec2<u32>(3910u, arg_3), vec2<u32>(0u, arg_3) ^ vec2<u32>(1u, arg_3)) >> (max(vec2<u32>(u_input.a.x, 34341u) | vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(arg_3, u_input.b.x)) % vec2<u32>(32u))));
    var var_2 = true;
    var_1 = 79248u;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))))));
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), Struct_2(global1.a.x, Struct_1(global1.c.b.a, global1.c.c.a, global1.a.x), global1.c.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.b.b, -598f, -459f) * vec3<f32>(global1.c.c.a, 437f, -1118f)), reverseBits(0u)))), global1.c.c.b)), _wgslsmith_div_f32(-1304f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-417f - _wgslsmith_f_op_f32(max(global1.c.b.a, global1.c.c.a))) + global1.c.c.b)), global1.b.x);
    let var_1 = Struct_5(min(global1.a.x << ((func_3(Struct_5(1435i, global1.c.b.b), vec2<f32>(896f, 620f)) >> (4294967295u % 32u)) % 32u), -2147483647i), -1527f);
    global0 = array<Struct_4, 12>();
    global0 = array<Struct_4, 12>();
    var var_2 = 1332f;
    global0 = array<Struct_4, 12>();
    var var_3 = global1.b.x;
    global0 = array<Struct_4, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec4<i32>(firstLeadingBit(-58783i), global1.a.x ^ 0i, 22803i, -var_1.a)), var_0.c);
}

