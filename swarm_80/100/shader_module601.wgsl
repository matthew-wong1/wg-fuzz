struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_3(0u);
    global0 = array<Struct_1, 10>();
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_0.b.b, _wgslsmith_f_op_f32(arg_0.a.b + _wgslsmith_div_f32(_wgslsmith_div_f32(120f, arg_0.b.b), _wgslsmith_f_op_f32(sign(arg_0.b.b)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1018f * 1019f)), _wgslsmith_f_op_f32(trunc(arg_0.a.b))))));
    var var_2 = -abs(abs((vec4<i32>(arg_0.a.c, -2147483647i, arg_0.a.c, 0i) & vec4<i32>(-25795i, arg_0.b.c, arg_0.b.c, -1i)) ^ ~vec4<i32>(37325i, 0i, arg_0.b.c, -1184i)));
    var var_3 = ~(~select(select(u_input.c, vec3<u32>(53124u, u_input.b, 0u), select(true, false, false)), ~_wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(arg_0.a.a.x, 12684u, 1u)), !select(false, false, false)));
    return 0u;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(func_3(Struct_2(global0[_wgslsmith_index_u32(arg_1.x, 10u)], global0[_wgslsmith_index_u32(u_input.a.x >> (u_input.a.x % 32u), 10u)])), 10u)];
    let var_1 = u_input.a.x | ~_wgslsmith_mult_u32(abs(arg_1.x << (u_input.a.x % 32u)), arg_1.x);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1190f)))), var_0.b, _wgslsmith_f_op_f32(trunc(-968f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_2.x)), -873f))))));
    global0 = array<Struct_1, 10>();
    let var_3 = ~(~reverseBits(vec2<u32>(~114720u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u), arg_1.wy))));
    return Struct_3(_wgslsmith_mult_u32(4294967295u, ~_wgslsmith_mult_u32(u_input.c.x & 4294967295u, var_3.x)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_1, 10>();
    var var_0 = 1i;
    var var_1 = ~(vec2<u32>(~u_input.c.x, 6464u) & abs(vec2<u32>(arg_0.a >> (50219u % 32u), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(16685u, 4294967295u, arg_1.a.x)))));
    var var_2 = any(vec3<bool>(!all(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), select(!(-1i >= arg_1.c), false, all(vec3<bool>(true, true, true)))));
    var var_3 = arg_0.a;
    return ~var_1.x;
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_4, arg_3: i32) -> vec3<bool> {
    global0 = array<Struct_1, 10>();
    let var_0 = vec4<i32>(37857i, reverseBits(arg_2.b), ~min(-firstLeadingBit(arg_3), 7885i), _wgslsmith_clamp_i32(arg_2.b, _wgslsmith_add_i32(~0i, 2147483647i), ~_wgslsmith_sub_i32(arg_2.b, arg_2.b)) & -1i);
    var var_1 = arg_2.c.b.c >> (4198u % 32u);
    var_1 = var_0.x;
    var var_2 = 43462i;
    return select(!vec3<bool>(!select(true, false, true), true, select(arg_2.c.a.b == arg_2.a, true, false)), vec3<bool>(!any(vec3<bool>(true, true, true)), true, true), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true)), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))));
}

fn func_1() -> vec3<bool> {
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    var var_0 = Struct_1(abs(~u_input.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-792f - _wgslsmith_f_op_f32(f32(-1f) * -106f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1450f))))), firstLeadingBit(-18892i));
    global0 = array<Struct_1, 10>();
    var var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b, _wgslsmith_f_op_f32(712f * _wgslsmith_div_f32(192f, 1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(sign(511f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * var_0.b)))))));
    return func_5(15191u, func_4(func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.c, -17016i, 1i), vec3<i32>(var_0.c, var_0.c, 3131i) | vec3<i32>(0i, 43977i, var_0.c)), select(vec4<u32>(4294967295u, var_0.a.x, 0u, 4294967295u) ^ vec4<u32>(u_input.c.x, 0u, 0u, 6848u), vec4<u32>(4294967295u, var_0.a.x, 30542u, u_input.b), all(vec2<bool>(false, true))), vec2<f32>(-178f, -2904f)), Struct_1(vec2<u32>(4294967295u, ~u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(975f, 2288f)), ~(-2147483647i))), Struct_4(var_1.x, ~(32692i << (1u % 32u)), Struct_2(Struct_1(select(vec2<u32>(var_0.a.x, 1u), var_0.a, vec2<bool>(false, false)), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_mult_i32(var_0.c, -2147483647i)), global0[_wgslsmith_index_u32(38988u, 10u)])), select(2147483647i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(6534i, -1i), _wgslsmith_add_i32(~var_0.c, firstTrailingBit(var_0.c)), i32(-1i) * -13376i), !all(vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.c;
    var_0 = ~u_input.c;
    global0 = array<Struct_1, 10>();
    let var_1 = 10854i;
    let var_2 = vec4<bool>(true, any(vec2<bool>(true, true)), !any(func_1()), !(_wgslsmith_f_op_f32(f32(-1f) * -773f) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1668f, 889f))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~vec4<u32>(~4294967295u, u_input.a.x, 1u, 1u)), -19836i, u_input.a.x, reverseBits(firstTrailingBit(abs(vec3<i32>(1i, var_1, var_1) << (vec3<u32>(var_0.x, 78678u, 4294967295u) % vec3<u32>(32u))))));
}

