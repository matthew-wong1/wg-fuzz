struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<f32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> u32 {
    let var_0 = Struct_2(arg_1.b);
    let var_1 = true;
    var var_2 = !(!vec3<bool>(true, !(true & var_1), var_1));
    var var_3 = vec2<f32>(_wgslsmith_div_f32(1007f, _wgslsmith_f_op_f32(f32(-1f) * -132f)), global1.x);
    let var_4 = max(vec4<i32>(22787i, _wgslsmith_mod_i32(-1i, ~arg_1.c.x), reverseBits(-87355i), i32(-1i) * -4915i) | _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.c.x, _wgslsmith_mod_i32(arg_1.c.x, arg_1.c.x), max(-25598i, arg_1.c.x), arg_1.c.x), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.c.x, 6633i, -38294i, arg_1.c.x) & vec4<i32>(-21396i, -2147483647i, arg_1.c.x, -1i), abs(vec4<i32>(29955i, arg_1.c.x, -42336i, arg_1.c.x)))), countOneBits(-vec4<i32>(~arg_1.c.x, arg_1.c.x, ~arg_1.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c.x, -42368i, arg_1.c.x), vec3<i32>(-1i, -58404i, -1094i)))));
    return u_input.a.x;
}

fn func_2() -> f32 {
    global0 = Struct_1(global0.a, select(~abs(~115180u), global0.b, true || ((u_input.a.x >= 62341u) | true)));
    var var_0 = Struct_3(firstTrailingBit(vec4<u32>(global0.b << (33227u % 32u), u_input.a.x, u_input.a.x, 0u >> (0u % 32u)) & reverseBits(firstTrailingBit(vec4<u32>(14584u, u_input.a.x, u_input.a.x, u_input.a.x)))), Struct_1(~u_input.a.x, 1u), vec2<i32>(-11404i, -_wgslsmith_add_i32(-454i, ~0i)));
    var var_1 = var_0.b;
    var_0 = Struct_3(var_0.a, Struct_1(var_0.a.x, func_3(global1.x, Struct_3(var_0.a ^ var_0.a, var_0.b, var_0.c))), vec2<i32>(var_0.c.x, var_0.c.x) ^ (firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.c.x, -38486i), vec2<i32>(57796i, 0i))) | min(-var_0.c, min(var_0.c, var_0.c))));
    let var_2 = ~(~(~var_0.a.zz));
    return global1.x;
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: f32) -> vec3<f32> {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(736f, 844f, 1297f)), vec3<f32>(arg_3, -1761f, -1613f))) + vec3<f32>(global1.x, arg_3, _wgslsmith_f_op_f32(func_2()))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(367f, -175f, 788f), vec3<f32>(global1.x, -1361f, -884f)) * vec3<f32>(_wgslsmith_f_op_f32(-300f + global1.x), 294f, _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(arg_3)), -909f, _wgslsmith_f_op_f32(-arg_3)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, arg_3, arg_3)))))));
    var var_0 = ~abs(u_input.a.x);
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(38444i, ~1i), -71838i, -57117i);
    var_0 = arg_2.x;
    let var_2 = arg_1.a;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1115f, global1.x, global1.x), vec3<f32>(306f, arg_3, global1.x)), vec3<f32>(-246f, -908f, 514f), global1.x != 501f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(select(global0.a ^ 4294967295u, 22657u, false), 1u);
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(6342i, Struct_2(Struct_1(63310u, global0.b)), u_input.a.zy, global1.x))))))));
    var var_1 = Struct_1(firstTrailingBit(103683u), ~_wgslsmith_sub_u32(min(4294967295u, ~101544u), 8589u));
    var var_2 = vec3<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -450f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(-896f + 481f)) - _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-global1.x)))), -1000f);
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(max(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-17250i, 2147483647i), vec2<i32>(2147483647i, 1i))), 1i), Struct_2(Struct_1(global0.a << (0u % 32u), min(var_1.a, 25432u))), ~(~u_input.a.yx), var_2.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -893f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(-1i, Struct_2(Struct_1(15163u, var_1.a)), u_input.a.xy, _wgslsmith_div_f32(var_2.x, var_0.x))) - _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, 2529f, -351f), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -125f, var_2.x), vec3<f32>(-818f, var_0.x, 420f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~1i), ~vec3<u32>(~global0.a, ~u_input.a.x, 4294967295u) ^ (firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) ^ vec3<u32>(global0.b, ~0u, _wgslsmith_sub_u32(global0.a, var_1.a))), u_input.a, vec3<f32>(_wgslsmith_f_op_f32(round(779f)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1285f) - 780f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_div_f32(-1836f, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(f32(-1f) * -1964f)))));
}

