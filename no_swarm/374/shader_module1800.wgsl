struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(21938u, 4294967295u, 13476u, 1u), vec4<u32>(0u, 40199u, 1u, 0u), vec4<u32>(4294967295u, 0u, 13125u, 13456u), vec4<u32>(28214u, 25919u, 1u, 24800u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> f32 {
    let var_0 = ~1u;
    var var_1 = Struct_1(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(114f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-619f)), _wgslsmith_f_op_f32(abs(-1000f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(sign(-688f))))), abs(select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, var_0, 1u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), u_input.a.x, var_0 > 58308u)) & (1u & var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2063f))));
    let var_2 = false;
    let var_3 = Struct_1(var_1.c, -1000f, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.a.yx, vec2<u32>(var_0, u_input.a.x)), _wgslsmith_mult_vec2_u32(~vec2<u32>(29578u, 1617u), select(u_input.a.xx, vec2<u32>(var_0, 0u), true))), u_input.a.x), _wgslsmith_f_op_f32(abs(555f)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d)))) * -1241f);
    return var_3.d;
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: u32) -> vec3<bool> {
    let var_0 = true;
    var var_1 = 1u;
    var var_2 = -(max(select(~vec4<i32>(2147483647i, -1i, u_input.b.x, u_input.b.x), vec4<i32>(2057i, -1i, 1i, u_input.b.x), true), vec4<i32>(~643i, ~1i, u_input.b.x, i32(-1i) * -35338i)) >> (~u_input.c % vec4<u32>(32u)));
    var var_3 = select(!select(select(!arg_0, select(vec2<bool>(var_0, true), vec2<bool>(true, false), arg_1), vec2<bool>(false, false)), !vec2<bool>(false, arg_0.x), select(!vec2<bool>(true, var_0), vec2<bool>(var_0, false), false)), vec2<bool>(true, true), arg_0.x);
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-415f * -294f)))))));
    return select(select(vec3<bool>(true & (0i > u_input.b.x), all(!vec2<bool>(true, arg_0.x)), true), vec3<bool>(true, var_2.x <= _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 1i, 10707i), vec3<i32>(var_2.x, -59976i, -2147483647i)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_2, 2267u, u_input.c.x), global0[_wgslsmith_index_u32(0u, 4u)]) != (17549u >> (u_input.c.x % 32u))), false), select(!select(vec3<bool>(arg_1, false, false), vec3<bool>(true, var_0, true), true), !vec3<bool>(arg_1, true, var_3.x), select(vec3<bool>(false, !arg_1, true), vec3<bool>(var_3.x & arg_1, any(vec4<bool>(false, arg_1, arg_0.x, var_0)), any(vec2<bool>(true, true))), vec3<bool>(arg_0.x, true, arg_0.x))), vec3<bool>(select(false, _wgslsmith_f_op_f32(step(1000f, -691f)) >= _wgslsmith_f_op_f32(-2388f - 647f), arg_1), true, !arg_0.x));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(func_2());
    let var_1 = all(!(!(!func_3(vec2<bool>(false, true), true, u_input.a.x))));
    let var_2 = 0u;
    let var_3 = -162f;
    global0 = array<vec4<u32>, 4>();
    return _wgslsmith_sub_u32(reverseBits(31213u), 1182u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_div_u32(~(~4294967295u), func_1()), _wgslsmith_dot_vec4_u32(countOneBits(u_input.c), abs(global0[_wgslsmith_index_u32(u_input.a.x, 4u)]))), _wgslsmith_f_op_f32(abs(326f)), _wgslsmith_mod_u32(~(~89981u), u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2512f))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d - var_0.d)))))) - _wgslsmith_f_op_f32(trunc(1331f)));
    global0 = array<vec4<u32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(33220i | _wgslsmith_dot_vec2_i32(u_input.b.yy, _wgslsmith_add_vec2_i32(u_input.b.yy, u_input.b.xy) >> (vec2<u32>(26258u, var_0.c) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(405f, var_0.b), vec2<f32>(var_0.d, var_0.b)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1, var_1))))))))), _wgslsmith_f_op_f32(-510f - _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(ceil(576f)))), ~(~_wgslsmith_mult_i32(u_input.b.x & u_input.b.x, min(-2147483647i, u_input.b.x))), ~(~vec3<i32>(i32(-1i) * -1051i, reverseBits(-51658i), u_input.b.x)));
}

