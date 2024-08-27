struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32) -> u32 {
    return _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c.x, ~(~28875u)), 3835u);
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<u32>(_wgslsmith_div_u32(u_input.b, ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_mod_u32(76761u, u_input.b))), ~_wgslsmith_sub_u32(u_input.b | _wgslsmith_mult_u32(u_input.b, u_input.c.x), func_3(u_input.a)), select(_wgslsmith_mult_u32(~0u, u_input.c.x), 80099u, true), u_input.b);
    var var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 16u)];
    var var_2 = select(~(~0u), ~firstTrailingBit(~var_0.x), all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), true)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1509f, 1564f), vec2<f32>(1863f, 159f)))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(291f, 1792f), vec2<f32>(-589f, -192f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1053f, -510f), vec2<f32>(755f, 628f))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1006f), _wgslsmith_f_op_f32(f32(-1f) * -1177f)), vec2<f32>(-1361f, 451f), vec2<bool>(true, true))))));
    var var_4 = -1i;
    return Struct_1(vec4<i32>(-33281i, 13967i, -29270i, ~var_1.a.x));
}

fn func_1() -> f32 {
    let var_0 = firstTrailingBit(u_input.c.x);
    let var_1 = func_2();
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-243f, 202f));
    let var_4 = Struct_1(func_2().a);
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1202f, _wgslsmith_f_op_f32(func_1()), true)));
    var var_1 = vec2<bool>(false, all(vec4<bool>(true, true, true, true)) & false);
    let var_2 = select(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, ~u_input.b, u_input.b), u_input.c), u_input.c, !(!(!vec3<bool>(true, false, var_1.x))));
    var_1 = vec2<bool>(true, any(vec3<bool>(false, var_1.x == (var_1.x | true), false)));
    let var_3 = u_input.a;
    var var_4 = Struct_1(vec4<i32>(var_3, -_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a, u_input.a), -var_3), u_input.a, 40970i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_div_f32(var_0, -939f), var_1.x)), 1000f))), 0i, u_input.c.x, var_0, vec3<i32>(-1i) * -select(~var_4.a.xzx, vec3<i32>(0i, var_4.a.x, var_4.a.x) << (vec3<u32>(4124u, 0u, var_2.x) % vec3<u32>(32u)), true));
}

