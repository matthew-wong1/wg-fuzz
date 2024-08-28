struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_1, 12>;

var<private> global2: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = 2147483647i;
    return !(all(vec2<bool>(true, true)) & !any(vec3<bool>(false, false, true)));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: u32) -> u32 {
    global0 = -vec4<i32>(i32(-1i) * -abs(-33i), _wgslsmith_sub_i32(-u_input.b, 2147483647i), _wgslsmith_div_i32(-u_input.a | (51614i & global0.x), global0.x), ~u_input.a ^ ~_wgslsmith_add_i32(u_input.a, u_input.b));
    global2 = arg_2;
    let var_0 = -23401i;
    let var_1 = Struct_1(1u);
    let var_2 = Struct_1(abs(~arg_0));
    return 8485u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 8785i;
    var var_1 = any(vec4<bool>(true, true, true, true));
    let var_2 = vec3<bool>(select(false, any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -406f) - _wgslsmith_div_f32(579f, 452f)) == _wgslsmith_div_f32(705f, _wgslsmith_f_op_f32(trunc(243f)))), !((u_input.a >> (17805u % 32u)) >= global0.x), true && select(true, true, func_1(~0u)));
    let var_3 = reverseBits(~vec4<u32>(~_wgslsmith_sub_u32(460u, 0u), countOneBits(func_2(4294967295u, 42305u, -1000f, 69547u)), ~_wgslsmith_clamp_u32(34437u, 4294967295u, 14498u), 45204u));
    global0 = vec4<i32>(global0.x, _wgslsmith_div_i32(u_input.b, _wgslsmith_mod_i32(global0.x, u_input.b)), u_input.b, ~u_input.a);
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(180f)), _wgslsmith_f_op_f32(select(1022f, 1000f, var_2.x))))))), vec2<i32>(4526i, ~(-(~u_input.b))));
}

