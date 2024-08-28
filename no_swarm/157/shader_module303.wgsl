struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(1u, 0u, 107203u, 44386u, 1826u, 36169u, 1120u, 4294967295u, 88602u);

var<private> global1: Struct_4;

var<private> global2: u32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: bool) -> Struct_3 {
    global1 = Struct_4(global1.a);
    var var_0 = !select(false == global1.a.e, (u_input.c.x << (~global0[_wgslsmith_index_u32(33606u, 9u)] % 32u)) != (_wgslsmith_mod_i32(-2147483647i, -1i) | ~global1.a.b), !(!global1.a.e) | global1.a.e);
    let var_1 = ~vec3<i32>(-(global1.a.b & (global1.a.b | 1i)), global1.a.b, u_input.a);
    var var_2 = global1.a.e;
    let var_3 = u_input.b.yzw;
    return Struct_3(Struct_2(vec2<u32>(1u, _wgslsmith_clamp_u32(var_3.x, 8595u, 4294967295u) ^ global1.a.d), reverseBits(var_3.yy), _wgslsmith_f_op_f32(-979f + _wgslsmith_f_op_f32(min(global1.a.c.x, -241f))), global1.a, Struct_1(_wgslsmith_f_op_vec2_f32(global1.a.c.zx * _wgslsmith_f_op_vec2_f32(-global1.a.a)), global1.a.b, vec3<f32>(-1734f, _wgslsmith_f_op_f32(global1.a.c.x - global1.a.a.x), 482f), ~0u, false)), vec2<f32>(1289f, global1.a.a.x));
}

fn func_3() -> i32 {
    global0 = array<u32, 9>();
    global2 = firstTrailingBit(11534u);
    global2 = u_input.d;
    global1 = Struct_4(func_2(global1.a.e).a.e);
    global2 = ~16280u;
    return ~u_input.c.x;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: i32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1280f, _wgslsmith_f_op_f32(f32(-1f) * -517f)) * global1.a.c.yy);
    let var_1 = func_2(global1.a.e);
    global1 = Struct_4(func_2(false).a.d);
    let var_2 = Struct_5(1u >> (u_input.d % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~max(vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(var_1.a.b.x, 9u)], var_1.a.e.d), vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 9u)], 1u, 0u)), ~vec3<u32>(var_1.a.a.x, var_1.a.a.x, 0u)), min(~_wgslsmith_sub_vec3_u32(vec3<u32>(global1.a.d, u_input.d, global1.a.d), vec3<u32>(global1.a.d, 11978u, var_1.a.b.x)), u_input.b.wyz)), vec4<i32>(_wgslsmith_clamp_i32(~7946i, var_1.a.d.b, ~8552i), global1.a.b, func_3(), ~(~u_input.c.x)) ^ countOneBits(reverseBits(abs(vec4<i32>(2147483647i, 1i, 26251i, arg_2)))));
    let var_3 = _wgslsmith_div_i32(-1i, _wgslsmith_mult_i32(~(_wgslsmith_mult_i32(arg_0, 0i) >> (global0[_wgslsmith_index_u32(abs(u_input.b.x), 9u)] % 32u)), global1.a.b));
    return u_input.c;
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_1) -> vec2<i32> {
    global2 = abs(arg_2);
    var var_0 = func_2(global1.a.e).a;
    global2 = ~60283u;
    return vec2<i32>(func_1(-53662i, true, var_0.e.b).x, i32(-1i) * -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(global1.a.c.x, func_1(u_input.a, !(!any(vec3<bool>(true, false, true))), ~u_input.a), ~(~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b)) & 95997u, global1.a);
    var var_1 = 23484i << (_wgslsmith_add_u32(~_wgslsmith_clamp_u32(69938u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(59927u, 9u)], 4294967295u), firstLeadingBit(4263u)), countOneBits(~global1.a.d)) % 32u);
    let var_2 = global1.a.d;
    var var_3 = vec3<bool>(all(vec2<bool>((global1.a.e && global1.a.e) & false, false)), global1.a.e, !any(vec3<bool>(global1.a.e, false, global1.a.e)) & (min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d, 77434u, 4294967295u), vec4<u32>(36845u, 9658u, u_input.d, u_input.b.x)), 42867u) >= 1u));
    global2 = ~10156u << (~global1.a.d % 32u);
    var_3 = select(vec3<bool>(all(vec4<bool>(!var_3.x, false, global1.a.e, any(vec3<bool>(false, global1.a.e, true)))), (!global1.a.e & (global1.a.a.x <= 301f)) || !var_3.x, true), vec3<bool>(func_2(global1.a.e).a.e.e, global1.a.e, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1476f - global1.a.a.x))) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1080f - global1.a.c.x)))), select(vec3<bool>(false, any(vec4<bool>(global1.a.e, false, var_3.x, var_3.x)), global1.a.b == ~(-1i)), !(!select(vec3<bool>(false, false, true), vec3<bool>(var_3.x, true, var_3.x), vec3<bool>(true, var_3.x, global1.a.e))), vec3<bool>(global1.a.e, var_3.x, func_2(all(vec3<bool>(global1.a.e, false, global1.a.e))).a.d.e)));
    var_1 = -(~(-firstTrailingBit(global1.a.b)));
    let var_4 = 1u;
    global1 = Struct_4(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(abs(0u)) << (~(~var_4) % 32u)), global1.a.a.x, ~((global0[_wgslsmith_index_u32(var_4, 9u)] & global0[_wgslsmith_index_u32(var_4, 9u)]) | (1u << (global0[_wgslsmith_index_u32(var_4, 9u)] % 32u))) << (global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, global1.a.d, _wgslsmith_add_u32(~global1.a.d, ~var_4)), 9u)] % 32u), 4294967295u);
}

