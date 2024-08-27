struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: vec4<u32>;

var<private> global2: i32;

var<private> global3: array<vec4<i32>, 28>;

var<private> global4: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<i32> {
    var var_0 = !((578f == _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-620f, -754f)))) & global0[_wgslsmith_index_u32(4294967295u, 29u)]);
    let var_1 = Struct_1(-3127i, 54713u);
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-976f - -1000f) + 940f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1799f, -651f)))))));
    var var_3 = var_1;
    global1 = ~vec4<u32>(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global1.xzx, vec3<u32>(u_input.b, 77747u, var_3.b)), ~global1.wzy), ~38194u, 1u);
    return firstTrailingBit(vec3<i32>(min(max(u_input.c, var_1.a), ~var_3.a) & 35222i, var_1.a, _wgslsmith_add_i32(30244i, var_3.a)));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> Struct_1 {
    global3 = array<vec4<i32>, 28>();
    var var_0 = vec4<u32>(~abs(min(u_input.b, global1.x)), (u_input.b >> (_wgslsmith_mult_u32(u_input.b, u_input.b & 4416u) % 32u)) << (1u % 32u), 4294967295u, 22656u);
    var var_1 = func_3();
    let var_2 = arg_1.x;
    var var_3 = arg_1;
    return Struct_1(abs(0i), ~(~select(_wgslsmith_clamp_u32(global1.x, 1u, global1.x), ~105827u, true)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> u32 {
    return 79643u;
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = 22972u;
    var var_1 = arg_1;
    var var_2 = vec3<i32>(arg_1.a, arg_1.a, -var_1.a) & vec3<i32>(-firstTrailingBit(abs(1i)), _wgslsmith_mult_i32(select(-1i, -1i, global0[_wgslsmith_index_u32(u_input.b, 29u)]), ~u_input.c) & -19990i, -2147483647i);
    let var_3 = ~(~_wgslsmith_mod_vec2_u32(select(global1.wy, _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_1.b), vec2<u32>(arg_1.b, u_input.b), vec2<u32>(var_1.b, 61891u)), !global0[_wgslsmith_index_u32(0u, 29u)]), global1.yz));
    let var_4 = arg_1;
    return vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.wyw, vec3<u32>(~(~var_4.b), ~arg_1.b, select(_wgslsmith_div_u32(var_1.b, u_input.b), abs(9703u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.yww, global1.yww), 29u)]))), 29u)], global0[_wgslsmith_index_u32((abs(_wgslsmith_div_u32(arg_1.b, global1.x)) & ~u_input.b) ^ ~(~(~arg_1.b)), 29u)], !any(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 29u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(11951u, 29u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 29u)]))), !any(global4[_wgslsmith_index_u32(~(~14733u), 7u)]));
}

fn func_1() -> i32 {
    global1 = ~(~min(~vec4<u32>(global1.x, 0u, 3976u, global1.x) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global1.x, 9912u, global1.x), vec4<u32>(global1.x, global1.x, global1.x, 1u)), (vec4<u32>(4294967295u, u_input.b, global1.x, u_input.b) ^ vec4<u32>(u_input.b, u_input.b, u_input.b, 95321u)) >> (~vec4<u32>(1u, u_input.b, 0u, 4294967295u) % vec4<u32>(32u))));
    global0 = array<bool, 29>();
    let var_0 = ~(~global1.wz);
    var var_1 = func_5(_wgslsmith_sub_u32(_wgslsmith_mult_u32(86391u, min(abs(var_0.x), firstTrailingBit(0u))), 6484u << ((u_input.b | ~var_0.x) % 32u)), Struct_1(_wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(func_4(vec3<i32>(-29938i, 1i, u_input.c), func_2(-2147483647i, vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(var_0.x, 29u)]))), 28u)], max(_wgslsmith_mod_vec4_i32(vec4<i32>(10392i, -2147483647i, -2147483647i, u_input.a.x), global3[_wgslsmith_index_u32(0u, 28u)]), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 1i, -19007i, u_input.a.x), vec4<i32>(1i, -1i, -41221i, u_input.c), global3[_wgslsmith_index_u32(0u, 28u)]))), 0u));
    var var_2 = vec4<bool>(!var_1.x, any(vec4<bool>(true, !(var_0.x == u_input.b), global0[_wgslsmith_index_u32(firstLeadingBit(var_0.x) ^ _wgslsmith_mod_u32(27422u, u_input.b), 29u)], var_1.x)), false, all(vec4<bool>(!any(global4[_wgslsmith_index_u32(64412u, 7u)]), all(var_1.zx), global0[_wgslsmith_index_u32(var_0.x, 29u)], (u_input.a.x ^ 0i) <= reverseBits(u_input.c))));
    return select(1i, reverseBits(2147483647i), !var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<bool>, 7>();
    var var_0 = Struct_1(_wgslsmith_add_i32(1i, _wgslsmith_div_i32(func_1(), countOneBits(u_input.a.x))), ~30203u);
    var var_1 = Struct_1(_wgslsmith_sub_i32(u_input.a.x, func_2(u_input.a.x, vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 29u)], true, global0[_wgslsmith_index_u32(u_input.b, 29u)] && false)).a), global1.x);
    global3 = array<vec4<i32>, 28>();
    var var_2 = u_input.b;
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1607f, _wgslsmith_f_op_f32(sign(655f)))))), 494f), _wgslsmith_f_op_f32(2619f - -823f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2613f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-691f)) * _wgslsmith_f_op_f32(sign(1325f))))), _wgslsmith_clamp_i32(~(~(-37732i)), 0i, ~var_1.a));
}

