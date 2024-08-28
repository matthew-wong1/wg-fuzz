struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, true, true, true), -194f, vec4<i32>(12712i, 5713i, 19364i, 30450i), vec4<u32>(51453u, 0u, 0u, 0u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_1(!(!select(vec4<bool>(arg_0.a.x, true, arg_0.a.x, false), vec4<bool>(arg_0.a.x, arg_0.a.x, global1.a.x, true), select(arg_0.a, vec4<bool>(false, arg_0.a.x, false, arg_0.a.x), vec4<bool>(global1.a.x, true, false, false)))), _wgslsmith_f_op_f32(max(1f, 1788f)), global1.c, u_input.b);
    let var_1 = select(39757i >= ((arg_0.c.x << (4161u % 32u)) ^ _wgslsmith_mult_i32(var_0.c.x, u_input.a)), global1.b == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_0.b)))), all(select(select(!global1.a.xx, !var_0.a.zz, u_input.b.x < 25989u), !vec2<bool>(arg_0.a.x, true), var_0.a.xy)));
    var var_2 = ~_wgslsmith_div_vec3_i32(select(select(global1.c.yxx, vec3<i32>(2147483647i, -13294i, global1.c.x), vec3<bool>(true, arg_0.a.x, var_1)), vec3<i32>(global1.c.x, _wgslsmith_clamp_i32(14044i, 1i, 41996i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.x, var_0.c.x, 9444i, 1i), arg_0.c)), max(28321i, 2147483647i) == arg_0.c.x), firstTrailingBit(vec3<i32>(~global1.c.x, 0i, 1i)));
    let var_3 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(647f + arg_0.b)) - _wgslsmith_f_op_f32(global1.b * _wgslsmith_div_f32(122f, 688f)))), -vec4<i32>(-_wgslsmith_add_i32(u_input.c, var_2.x), global1.c.x, ~_wgslsmith_mod_i32(1i, u_input.c), -40290i), vec4<u32>(global1.d.x, _wgslsmith_sub_u32(0u, _wgslsmith_add_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 18204u), u_input.d))), _wgslsmith_div_u32(var_0.d.x, ~u_input.d.x), arg_0.d.x));
    var var_4 = _wgslsmith_f_op_f32(step(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1267f - _wgslsmith_f_op_f32(-global1.b)))));
    return -1i >> (arg_0.d.x % 32u);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec3_i32(max(-vec3<i32>(u_input.c, global1.c.x, 1i) ^ -(~global1.c.wxy), min(firstLeadingBit(-global1.c.yyy), -global1.c.zzx)), -vec3<i32>(-54873i, u_input.a, -global1.c.x) ^ global1.c.zwy);
    var_0 = global1.c.zzz;
    global0 = global1.a.x;
    global1 = Struct_1(!vec4<bool>(global1.a.x, global1.a.x & global1.a.x, global1.a.x, false), global1.b, select(abs(global1.c), vec4<i32>(0i, global1.c.x, ~func_3(Struct_1(vec4<bool>(global1.a.x, true, false, global1.a.x), global1.b, vec4<i32>(global1.c.x, var_0.x, -9152i, 40775i), global1.d)), 1i), select(vec4<bool>(true, select(true, true, true), true, global1.a.x), vec4<bool>(select(true, global1.a.x, false), global1.a.x, global1.a.x, false), select(global1.a, global1.a, global1.d.x == u_input.d.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(~global1.d.x, min(max(global1.d.x, u_input.d.x), countOneBits(4294967295u)), ~(~1u), _wgslsmith_mod_u32(u_input.d.x, 4294967295u) | _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 45122u, u_input.b.x, 4294967295u))), ~u_input.b));
    let var_1 = Struct_1(!(!select(global1.a, global1.a, !global1.a.x)), _wgslsmith_f_op_f32(-231f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - global1.b))) - global1.b)), global1.c, abs(global1.d));
    return var_1;
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    let var_0 = func_2();
    var var_1 = var_0;
    var var_2 = reverseBits(func_2().d ^ func_2().d);
    global0 = var_0.a.x;
    let var_3 = !vec2<bool>(all(!(!vec4<bool>(false, var_0.a.x, true, var_1.a.x))), !any(var_0.a.wy));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(round(-671f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(408f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(329f - 1338f), _wgslsmith_f_op_f32(-106f + -232f)))), global1.c, reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(58929u, u_input.d.x, global1.d.x, 13451u), global1.d), global1.d)));
    let var_1 = _wgslsmith_f_op_f32(1487f + _wgslsmith_f_op_f32(floor(-982f)));
    var var_2 = _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, _wgslsmith_f_op_f32(floor(var_1))))));
    global1 = func_2();
    global0 = var_0.a.x;
    let var_3 = ~min(reverseBits(~vec2<i32>(-10459i, global1.c.x) | ~global1.c.xy), global1.c.ww);
    global0 = all(select(func_2().a, !var_0.a, var_0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(-475f, global1.c, ((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, 1u), global1.d.wxx) << (var_0.d.x % 32u)) & 1u) >> (_wgslsmith_dot_vec4_u32(~var_0.d, ~_wgslsmith_mod_vec4_u32(vec4<u32>(90123u, 28998u, u_input.d.x, 67530u), u_input.b)) % 32u), u_input.c);
}

