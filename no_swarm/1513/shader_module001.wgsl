struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global1: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true));

var<private> global2: Struct_1;

var<private> global3: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global0 = array<vec2<bool>, 23>();
    var var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(~(~(~1u)), _wgslsmith_div_u32(0u, 4294967295u), countOneBits(~(~arg_1.a))), ~vec3<u32>(~(~arg_1.a), 11001u, u_input.b & ~4294967295u));
    var var_1 = arg_0;
    var var_2 = -2147483647i;
    global2 = arg_0;
    return _wgslsmith_add_i32(u_input.a.x, _wgslsmith_div_i32(-u_input.c.x, u_input.a.x));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: u32) -> vec3<u32> {
    var var_0 = vec4<i32>(-_wgslsmith_add_i32(func_3(Struct_1(global2.a, global2.b), Struct_1(63687u, vec2<u32>(global2.a, 27924u))), arg_1.x), arg_0.x << (21739u % 32u), arg_0.x, -u_input.a.x | 7671i);
    var var_1 = Struct_1(_wgslsmith_div_u32(35969u, ~arg_2), global2.b);
    var var_2 = _wgslsmith_div_u32(100029u, 4294967295u);
    let var_3 = -1i;
    let var_4 = Struct_1(0u, min(vec2<u32>(1u, ~(global2.a << (u_input.b % 32u))), vec2<u32>(4294967295u, firstLeadingBit(4294967295u) << (_wgslsmith_sub_u32(u_input.b, 1u) % 32u))));
    return _wgslsmith_div_vec3_u32(firstLeadingBit(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(72588u, var_4.a), global2.b), 32835u | u_input.b, ~arg_2)), vec3<u32>(~global2.a, var_4.a, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(34801u, var_1.b.x, u_input.b), vec3<u32>(31807u, global2.a, arg_2))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> i32 {
    var var_0 = firstTrailingBit(abs(abs(func_2(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a << (vec4<u32>(arg_1.a, 0u, 36182u, arg_0.x) % vec4<u32>(32u)), reverseBits(arg_0.x)))));
    var var_1 = !vec3<bool>(true, true, all(vec3<bool>(true, true, true)));
    let var_2 = !(!var_1.x) | !all(global1[_wgslsmith_index_u32(min(0u, 4294967295u) >> (global2.b.x % 32u), 10u)]);
    let var_3 = Struct_1(~(~(~arg_1.a)) << (arg_1.b.x % 32u), arg_0.zx);
    let var_4 = Struct_1(_wgslsmith_dot_vec3_u32(arg_0.wxw, ~(~arg_0.wxy)), vec2<u32>(arg_1.a, abs(var_3.a)));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(u_input.b, ~_wgslsmith_mod_vec2_u32(global2.b, vec2<u32>(u_input.b, u_input.b)));
    var var_0 = !(((any(global1[_wgslsmith_index_u32(8264u, 10u)]) != true) || true) & (-55941i == _wgslsmith_add_i32(func_1(vec4<u32>(4294967295u, 0u, u_input.b, global2.a), Struct_1(4294967295u, global2.b)), _wgslsmith_add_i32(u_input.c.x, 0i))));
    var_0 = !all(vec3<bool>(true, true, true)) || all(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, any(vec3<bool>(true, true, false)), true), true));
    var var_1 = Struct_1(_wgslsmith_clamp_u32(abs(~global2.a << (1u % 32u)), global2.a, global2.b.x), vec2<u32>(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.a, 20599u), global2.b), _wgslsmith_sub_u32(1u, global2.b.x)), 75561u));
    let var_2 = 0i;
    global0 = array<vec2<bool>, 23>();
    global1 = array<vec4<bool>, 10>();
    let var_3 = Struct_1(32316u, ~firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(0u, global2.b.x), vec2<u32>(1u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(170f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1638f) * -987f))), -416f), ~var_3.b, -309f);
}

