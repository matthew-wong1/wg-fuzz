struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1269f, 0i, vec4<u32>(0u, 0u, 50648u, 25725u), 1570f);

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_mod_u32(~4294967295u, 40225u);
    var var_1 = arg_2.c.x;
    let var_2 = -select(select(~(vec2<i32>(-25284i, 1i) >> (global0.c.wy % vec2<u32>(32u))), vec2<i32>(firstLeadingBit(2872i), global0.b), vec2<bool>(false, true)), vec2<i32>(-2147483647i, -2147483647i), true);
    var var_3 = ~_wgslsmith_add_u32(_wgslsmith_div_u32(1u, ~u_input.d.x), u_input.d.x) & u_input.e.x;
    var var_4 = !(!select(vec3<bool>(true, true, any(vec4<bool>(arg_1.x, arg_1.x, true, true))), arg_1, arg_1.x || any(arg_1)));
    return arg_2.d;
}

fn func_2(arg_0: Struct_1) -> bool {
    global1 = arg_0;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d + -697f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.d))))), arg_0.b & global0.b, _wgslsmith_add_vec4_u32(arg_0.c, ~(~(~vec4<u32>(64033u, u_input.d.x, global1.c.x, u_input.d.x)))), -2143f);
    let var_1 = ~(~abs(~vec2<u32>(arg_0.c.x, 0u)));
    let var_2 = Struct_1(var_0.d, _wgslsmith_sub_i32(abs(var_0.b), ~reverseBits(arg_0.b)), abs(~vec4<u32>(global1.c.x, select(global1.c.x, u_input.d.x, true), _wgslsmith_add_u32(var_1.x, 4294967295u), arg_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1975f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d, -1000f) - _wgslsmith_f_op_f32(-global1.a))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(~u_input.d.x, vec3<bool>(true, true, true), arg_0)), global0.d)));
    global0 = Struct_1(-619f, var_0.b, min(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u << (var_0.c.x % 32u), firstLeadingBit(1u), _wgslsmith_mult_u32(10743u, var_2.c.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, var_0.c.x, 1u), global0.c)), ~_wgslsmith_add_vec4_u32(select(var_0.c, global1.c, false), _wgslsmith_div_vec4_u32(vec4<u32>(104000u, global1.c.x, u_input.d.x, global0.c.x), vec4<u32>(u_input.d.x, var_1.x, 41415u, u_input.d.x)))), _wgslsmith_f_op_f32(1294f + _wgslsmith_f_op_f32(1400f - var_0.a)));
    return ~max(-select(-10870i, 2147483647i, false), -1i) < select(-select(var_0.b | 1i, 37990i, true), 0i, false);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<u32>) -> bool {
    let var_0 = !select(select(vec3<bool>(select(arg_0.x, true, true), arg_0.x, arg_0.x), select(vec3<bool>(false, false, arg_0.x), select(vec3<bool>(arg_0.x, false, false), vec3<bool>(false, arg_0.x, false), vec3<bool>(false, true, true)), vec3<bool>(arg_0.x, arg_0.x, false)), !arg_0.x && func_2(arg_1)), select(!(!vec3<bool>(false, false, arg_0.x)), select(!vec3<bool>(false, arg_0.x, arg_0.x), !vec3<bool>(arg_0.x, true, true), select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, true, false), false)), false), vec3<bool>(true, true, false));
    global0 = arg_1;
    var var_1 = vec4<u32>(~(~4294967295u), arg_3.x, ~4294967295u, arg_1.c.x);
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(global1.a - 1268f)))) - arg_1.a), _wgslsmith_div_i32(-26218i, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.b.x, arg_1.b)), u_input.a.yz << (u_input.d.xx % vec2<u32>(32u)))) ^ arg_2.x, _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(arg_1.c.x, _wgslsmith_clamp_u32(51235u, 24261u, 4294967295u)), global1.c.x, arg_3.x, ~4294967295u), (arg_1.c ^ ~vec4<u32>(79984u, 1u, 36699u, 1u)) << (~(~vec4<u32>(global0.c.x, u_input.d.x, 13627u, u_input.d.x)) % vec4<u32>(32u))), 318f);
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-817f)), _wgslsmith_f_op_f32(arg_1.d + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.a)), _wgslsmith_div_f32(1141f, arg_1.d)))), -(i32(-1i) * -24144i), ~arg_1.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global1.d)))))));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1213f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(-1057f - global0.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * global1.a), global0.a))), -1i, u_input.e, global1.a);
    let var_0 = ~(~global0.c.x);
    var var_1 = !vec3<bool>(func_1(vec2<bool>(true, true), Struct_1(global0.d, _wgslsmith_mod_i32(global1.b, 19566i), global0.c, _wgslsmith_f_op_f32(1294f - global0.d)), -u_input.b & u_input.a.yy, vec3<u32>(_wgslsmith_dot_vec4_u32(global0.c, u_input.d), _wgslsmith_mod_u32(21066u, global0.c.x), u_input.e.x)), any(select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))), !all(vec4<bool>(false, false, false, false)));
    var_1 = vec3<bool>(true, true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d - 166f)), global0.d)) >= _wgslsmith_div_f32(global1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d - global0.a))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a)))), ~0i, abs(global0.c), global0.d);
    let var_3 = var_2;
    var var_4 = u_input.d.x;
    var var_5 = -399f;
    global1 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(1u, var_2.c.x, ~0u), u_input.a.x, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.a)))), vec2<f32>(1301f, _wgslsmith_f_op_f32(-var_2.a))), firstTrailingBit(~21313u));
}

