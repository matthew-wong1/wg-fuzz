struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(1i), Struct_1(9533i));

var<private> global1: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> i32 {
    global0 = arg_1;
    var var_0 = true;
    var var_1 = u_input.c;
    return abs(select(-min(59529i, arg_1.a.a), _wgslsmith_mult_i32(0i, 1i), arg_2));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> i32 {
    var var_0 = global0.b;
    global0 = Struct_2(global0.b, Struct_1(arg_1));
    let var_1 = !vec4<bool>(true, true, true, any(vec2<bool>(true, u_input.b.x > 55766u)));
    global1 = select(u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.b.x), vec3<u32>(47378u, 0u, u_input.b.x)))), true);
    let var_2 = arg_0.x;
    return _wgslsmith_mod_i32(global0.a.a, -16945i);
}

fn func_2() -> bool {
    global1 = 1u;
    global0 = Struct_2(global0.a, global0.b);
    global0 = Struct_2(global0.a, Struct_1(func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-258f, -232f, -733f)), vec3<f32>(859f, 1665f, 1205f), true)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(2147483647i, u_input.a, 44649i), _wgslsmith_mult_i32(9495i, -1i)))));
    return all(!vec2<bool>(any(vec4<bool>(true, true, true, true)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-919f - 416f), _wgslsmith_f_op_f32(sign(-617f)))))), -441f);
    let var_1 = !vec4<bool>(1u >= u_input.b.x, _wgslsmith_add_i32(func_1(Struct_1(u_input.a), Struct_2(global0.b, global0.a), true, Struct_2(global0.a, global0.b)), ~20362i) != global0.b.a, all(vec4<bool>(true, true, true, true)), any(vec3<bool>(func_2(), all(vec3<bool>(true, false, true)), true)));
    var var_2 = Struct_2(global0.b, Struct_1(~u_input.c.x));
    global1 = ~_wgslsmith_sub_u32(~(~(~u_input.b.x)), 19526u);
    let var_3 = Struct_2(Struct_1(~(~3522i)), global0.b);
    var_2 = Struct_2(var_2.b, var_2.a);
    let var_4 = Struct_2(var_2.b, Struct_1(8312i));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(-_wgslsmith_sub_i32(var_4.a.a, 2251i), -33589i, 0i, reverseBits(func_3(vec3<f32>(var_0, var_0, var_0), global0.a.a))), select(firstLeadingBit(~vec4<i32>(2147483647i, var_4.b.a, 41156i, u_input.a)), vec4<i32>(1i, 2147483647i, var_4.b.a >> (1u % 32u), -_wgslsmith_mult_i32(-1i, 16666i)), !(!select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, false), var_1.x))), select((vec3<u32>(u_input.b.x, u_input.b.x, 0u) << (_wgslsmith_sub_vec3_u32(u_input.b, u_input.b) % vec3<u32>(32u))) ^ select(~vec3<u32>(u_input.b.x, u_input.b.x, 1u), abs(vec3<u32>(u_input.b.x, u_input.b.x, 2392u)), var_1.xxy), vec3<u32>(u_input.b.x, u_input.b.x, _wgslsmith_clamp_u32(abs(u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 38437u, 55627u, 37104u), vec4<u32>(u_input.b.x, u_input.b.x, 5843u, 4294967295u)), 1u)), any(vec3<bool>(false, true, var_1.x))), u_input.b.x);
}

