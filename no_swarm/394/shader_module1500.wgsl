struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec2<i32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0;
    global0 = arg_0.d.ww;
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32((-1i & ~u_input.a) << (countOneBits(min(18360u, 9147u)) % 32u), _wgslsmith_div_i32(-(i32(-1i) * -2147483647i), -39995i)), _wgslsmith_mod_i32(global1.x, _wgslsmith_mod_i32(-(i32(-1i) * -2147483647i), -2147483647i)), i32(-1i) * -(~_wgslsmith_dot_vec4_i32(vec4<i32>(17970i, arg_0.b, 55060i, -2147483647i), vec4<i32>(1i, -2147483647i, 1i, 67863i))));
    var var_2 = vec4<i32>(13862i, global1.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(max(-1i, _wgslsmith_mult_i32(global1.x, var_1)), var_0.b), i32(-1i) * -20205i), 7772i);
    var var_3 = var_1 <= reverseBits(~(~0i) << (firstLeadingBit(~12211u) % 32u));
    return _wgslsmith_sub_u32(~1u, reverseBits(abs(_wgslsmith_div_u32(0u, 52713u))) << (1u % 32u));
}

fn func_2() -> f32 {
    var var_0 = ~(~vec2<u32>(func_3(Struct_1(false, -1i, vec4<f32>(global0.x, global0.x, 703f, global0.x), vec4<f32>(global0.x, global0.x, 1179f, -1152f), u_input.a)), ~(~22863u)));
    var var_1 = (~((global1.x ^ u_input.a) & ~19860i) << (var_0.x % 32u)) >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(23372u, 123u, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)), _wgslsmith_mult_u32(var_0.x, var_0.x)), vec4<u32>(57589u, ~41095u, ~4294967295u, var_0.x)), _wgslsmith_div_u32(_wgslsmith_add_u32(~4294967295u, var_0.x), ~64502u)) % 32u);
    let var_2 = Struct_1(!(!(global0.x <= global0.x)) | true, 1i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1536f, global0.x, _wgslsmith_div_f32(-851f, -359f), _wgslsmith_f_op_f32(global0.x * global0.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.x, global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1225f), _wgslsmith_f_op_f32(step(-2404f, global0.x))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -2247f, _wgslsmith_f_op_f32(-global0.x), -1321f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, 520f, 410f, global0.x))), vec4<bool>(any(vec2<bool>(false, true)), true, true, true))))), u_input.a ^ max(_wgslsmith_add_i32(-global1.x, -global1.x), global1.x));
    let var_3 = var_2;
    var var_4 = var_3;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-197f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.c.x - var_3.c.x) + _wgslsmith_f_op_f32(-var_2.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3584f)))));
}

fn func_1(arg_0: f32) -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-631f, 368f));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_0) * _wgslsmith_f_op_f32(func_2())), 718f);
    var var_0 = abs(_wgslsmith_sub_u32(30310u, 23900u));
    var var_1 = Struct_1(arg_0 == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1871f, -415f))), u_input.a, vec4<f32>(arg_0, global0.x, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(315f)) - global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 696f, arg_0, 469f)), vec4<f32>(arg_0, 1219f, 326f, arg_0)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-602f, -1003f, 195f, arg_0)))) - vec4<f32>(_wgslsmith_div_f32(1228f, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, global0.x), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(trunc(-270f)))), _wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(u_input.a, global1.x, -2743i, 2147483647i)), ~vec4<i32>(global1.x, u_input.a, global1.x, u_input.a), vec4<i32>(0i, global1.x, global1.x, u_input.a)), -firstLeadingBit(abs(vec4<i32>(-2147483647i, global1.x, 14465i, 19997i)))));
    var var_2 = !select(false, var_1.a, true);
    return vec2<bool>(false, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ((vec2<i32>(1i, global1.x) & _wgslsmith_clamp_vec2_i32(vec2<i32>(global1.x, 2147483647i), ~vec2<i32>(global1.x, 2147483647i), countOneBits(vec2<i32>(u_input.a, u_input.a)))) >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u))) | (vec2<i32>(u_input.a | 0i, global1.x) >> (firstTrailingBit(firstLeadingBit(vec2<u32>(1u, 1u))) % vec2<u32>(32u)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-710f)), _wgslsmith_f_op_f32(sign(388f)))));
    var var_1 = 1u;
    global1 = reverseBits(~max(min(var_0, select(var_0, var_0, false)), _wgslsmith_div_vec2_i32(vec2<i32>(29721i, 15314i), var_0 | vec2<i32>(u_input.a, -42738i))));
    global1 = min(_wgslsmith_mod_vec2_i32(vec2<i32>(-15438i, -12513i), vec2<i32>(select(1i, 0i, true), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, var_0.x, var_0.x, global1.x), vec4<i32>(-1i, var_0.x, 1i, 0i) | vec4<i32>(1i, 1i, 0i, -2147483647i)))), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -11251i, var_0.x), ~vec3<i32>(global1.x, 2147483647i, global1.x)), u_input.a), var_0.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1171f, -173f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(135f, global0.x) + vec2<f32>(global0.x, global0.x)))))));
    let var_3 = func_1(global0.x);
    let var_4 = vec4<bool>(func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-612f))))).x, false, true, any(!vec4<bool>(false, var_3.x, var_3.x, true)) & all(var_3));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(15521u, 1u), -165f, _wgslsmith_f_op_vec2_f32(var_2 * var_2));
}

