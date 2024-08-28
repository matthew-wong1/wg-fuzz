struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-926f, -378f);

var<private> global1: array<Struct_2, 4>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: f32) -> u32 {
    let var_0 = Struct_3(~vec3<u32>(u_input.b, u_input.d, u_input.b), Struct_2(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.c.x, arg_1.a << (u_input.d % 32u)), u_input.c.x), vec2<bool>(true, any(vec2<bool>(arg_1.b.x, true))), 1000f, -380f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))));
    let var_1 = var_0.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -464f) - vec2<f32>(-234f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -246f))));
    global1 = array<Struct_2, 4>();
    let var_3 = true;
    return var_0.a.x;
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2) -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2209f, arg_2.d) * vec2<f32>(global0.x, global0.x)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -2143f))))));
    global1 = array<Struct_2, 4>();
    let var_0 = Struct_1(select(!vec2<bool>(!arg_2.b.x, select(true, arg_2.b.x, arg_2.b.x)), !vec2<bool>(arg_1.b.b.x | true, false), vec2<bool>(all(!vec3<bool>(arg_1.b.b.x, false, arg_0)), (arg_1.b.b.x && arg_2.b.x) & true)), select(!(!select(vec3<bool>(arg_1.b.b.x, false, arg_2.b.x), vec3<bool>(arg_2.b.x, true, false), false)), !(!vec3<bool>(false, true, arg_2.b.x)), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, arg_1.b.b.x, arg_2.b.x), vec3<bool>(arg_2.b.x, arg_2.b.x, false)))));
    var var_1 = _wgslsmith_clamp_i32(abs(2147483647i), -_wgslsmith_mod_i32(-42872i, max(arg_2.a << (1u % 32u), -u_input.a.x)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-7572i, u_input.c.x), ~(~(i32(-1i) * -15417i)), arg_2.a));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.e, _wgslsmith_f_op_f32(-arg_2.d)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-462f, global0.x), vec2<f32>(1000f, -356f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-272f, global0.x) - vec2<f32>(-279f, arg_2.c)))))));
    return firstTrailingBit(1i);
}

fn func_1() -> bool {
    let var_0 = vec4<u32>(u_input.d, u_input.b | (select(_wgslsmith_dot_vec3_u32(vec3<u32>(5169u, 28610u, u_input.b), vec3<u32>(u_input.b, u_input.d, 33949u)), u_input.d, true) & 0u), ~firstLeadingBit(~(~u_input.b)), func_2(vec2<f32>(global0.x, _wgslsmith_f_op_f32(step(global0.x, global0.x))), global1[_wgslsmith_index_u32(u_input.b, 4u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(564f, -532f)))) >> (u_input.d % 32u));
    var var_1 = u_input.a.x;
    var var_2 = global1[_wgslsmith_index_u32(~u_input.d, 4u)];
    var_1 = func_3(!(true | !any(vec3<bool>(true, var_2.b.x, var_2.b.x))), Struct_3(~_wgslsmith_div_vec3_u32(vec3<u32>(25918u, var_0.x, u_input.b), var_0.yzy) >> (var_0.wyx % vec3<u32>(32u)), Struct_2(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, 0i, var_2.a, 30579i), abs(vec4<i32>(2147483647i, u_input.c.x, u_input.a.x, var_2.a))), var_2.b, global0.x, 374f, 2560f)), global1[_wgslsmith_index_u32(~0u, 4u)]);
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-global0.x);
    let var_1 = max(vec3<i32>(_wgslsmith_mult_i32(u_input.c.x, _wgslsmith_dot_vec2_i32(~u_input.c.yz, select(u_input.c.zz, vec2<i32>(u_input.c.x, u_input.c.x), vec2<bool>(false, false)))), u_input.c.x, 61856i), vec3<i32>(_wgslsmith_dot_vec2_i32(abs(u_input.a.zy), abs(u_input.a.zx) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, 39882u), vec2<u32>(0u, 0u)) % vec2<u32>(32u))), ~u_input.c.x, 2147483647i));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(488f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * -317f), _wgslsmith_f_op_f32(-786f - -1805f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1941f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(abs(global0.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, var_0))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1412f, -353f)))));
    let var_2 = Struct_1(!vec2<bool>(func_1(), func_1()), vec3<bool>(!(var_1.x != ~u_input.c.x), ~(u_input.d | u_input.d) != 1u, false));
    global1 = array<Struct_2, 4>();
    global0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(429f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(907f, var_0))))))), 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(~7712u << (u_input.b % 32u), -vec4<i32>(-(~u_input.c.x), _wgslsmith_mult_i32(u_input.c.x, max(26154i, -1i)), ~53139i, ~var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(478f * -1027f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-948f, global0.x, global0.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1253f, -940f, -951f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1574f, global0.x, -1583f)), vec3<f32>(global0.x, -340f, 2598f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(696f, -1428f, -168f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -503f, 798f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, var_0, global0.x, global0.x) - vec4<f32>(var_0, 462f, global0.x, global0.x)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-501f, -318f, 281f, global0.x)))))));
}

