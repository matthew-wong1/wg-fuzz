struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: f32;

var<private> global3: array<Struct_1, 32>;

var<private> global4: Struct_1 = Struct_1(28256u, vec4<f32>(1000f, 1229f, 104f, -933f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = ~(countOneBits(~firstTrailingBit(vec3<u32>(global4.a, arg_1.a, global4.a))) >> (countOneBits(~(~vec3<u32>(4294967295u, global4.a, 17756u))) % vec3<u32>(32u)));
    global1 = u_input.b;
    var var_1 = _wgslsmith_mod_u32(1823u, _wgslsmith_clamp_u32(global4.a, 4294967295u, ~(~1u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1061f)));
}

fn func_2() -> f32 {
    global1 = u_input.a;
    global1 = _wgslsmith_sub_i32(i32(-1i) * -6140i, u_input.a);
    global0 = Struct_1(56837u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(round(global4.b.x)), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_div_f32(global0.b.x, global4.b.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1857f, 992f, 471f, global4.b.x))), vec4<f32>(631f, _wgslsmith_f_op_f32(-2000f * global4.b.x), global4.b.x, -135f))))));
    global1 = select(~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.a, 53913i, u_input.b), _wgslsmith_mult_i32(u_input.b, 27130i), min(u_input.a, -21009i)), vec3<i32>(firstTrailingBit(u_input.d.x), ~u_input.d.x, 0i)), u_input.b, any(vec3<bool>(select(true, true, true), true, true)));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(false, Struct_1(global0.a, vec4<f32>(global0.b.x, global4.b.x, -710f, 1000f)), global3[_wgslsmith_index_u32(4294967295u, 32u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.x)))));
    return _wgslsmith_f_op_f32(-global4.b.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<bool>) -> f32 {
    var var_0 = false;
    let var_1 = global3[_wgslsmith_index_u32(~(~(~global0.a)), 32u)];
    var var_2 = true;
    var var_3 = global0.a;
    var var_4 = Struct_1(~u_input.c.x, vec4<f32>(-128f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2350f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(543f + _wgslsmith_f_op_f32(func_2())))), arg_0.x));
    return 1093f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b.wxw)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -337f))) + -106f), _wgslsmith_f_op_f32(func_1(vec3<f32>(_wgslsmith_f_op_f32(825f - global4.b.x), _wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_div_f32(-969f, 444f)), true, vec4<bool>(true, true, true, true))), global4.b.x), ~global0.a < _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a, u_input.c.x, 83885u, u_input.c.x), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(4294967295u, global0.a, global0.a, global4.a)), ~(~vec4<u32>(global0.a, global0.a, 15518u, u_input.c.x)))));
    let var_1 = Struct_1(_wgslsmith_div_u32(~global4.a, (_wgslsmith_mod_u32(0u, 1u) | global4.a) | ~(global0.a >> (71148u % 32u))), vec4<f32>(-1015f, 470f, _wgslsmith_f_op_f32(abs(-101f)), global4.b.x));
    var var_2 = u_input.c | abs(u_input.c);
    let var_3 = global3[_wgslsmith_index_u32(20042u, 32u)];
    var_2 = u_input.c;
    global2 = _wgslsmith_f_op_f32(global0.b.x * var_3.b.x);
    let var_4 = global0.b;
    var var_5 = Struct_1(min(_wgslsmith_dot_vec3_u32(vec3<u32>(10972u, global0.a, 1u), ~(~vec3<u32>(11863u, 5504u, 32678u))), var_1.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.b.x))), global0.b.x) + global0.b));
    let var_6 = _wgslsmith_f_op_f32(ceil(822f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(-1i, u_input.a, u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(-36346i, u_input.d.x, -45484i), vec3<i32>(0i, u_input.b, u_input.b))), vec3<i32>(_wgslsmith_add_i32(u_input.a, 0i), ~(-1i), min(u_input.a, u_input.b))), ~firstTrailingBit(vec3<i32>(u_input.d.x, -18880i, u_input.d.x))), ~_wgslsmith_div_vec4_u32(vec4<u32>(30631u, 0u, global4.a & u_input.c.x, u_input.c.x >> (65339u % 32u)), ~(vec4<u32>(41646u, global0.a, var_2.x, global4.a) >> (vec4<u32>(var_5.a, 53295u, global0.a, 0u) % vec4<u32>(32u)))), vec3<u32>(4294967295u, _wgslsmith_sub_u32(min(116232u >> (var_3.a % 32u), ~var_1.a), 94430u), 4294967295u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b.x - var_6) + _wgslsmith_f_op_f32(select(var_4.x, -718f, false)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(sign(var_1.b.ywx)), true, vec4<bool>(false, true, false, true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.x, 1200f) - 378f), any(vec4<bool>(true, false, false, false)))), 275f, 327f));
}

