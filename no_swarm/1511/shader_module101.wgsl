struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(4294967295u, 0u, 42264u, 0u, 34508u, 18314u, 4294967295u, 108454u, 4294967295u, 4294967295u, 4294967295u, 1180u, 1u, 22797u, 38297u, 0u);

var<private> global1: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false));

var<private> global2: vec4<i32>;

var<private> global3: array<vec2<u32>, 18> = array<vec2<u32>, 18>(vec2<u32>(1u, 34972u), vec2<u32>(0u, 0u), vec2<u32>(106142u, 25795u), vec2<u32>(4294967295u, 0u), vec2<u32>(10718u, 7450u), vec2<u32>(0u, 0u), vec2<u32>(22806u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(38255u, 1u), vec2<u32>(0u, 17054u), vec2<u32>(4294967295u, 63080u), vec2<u32>(0u, 1u), vec2<u32>(0u, 1u), vec2<u32>(27136u, 1u), vec2<u32>(1u, 1u), vec2<u32>(29652u, 4294967295u), vec2<u32>(1u, 1u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global3 = array<vec2<u32>, 18>();
    global0 = array<u32, 16>();
    let var_0 = global2.x;
    let var_1 = vec2<bool>(true, !arg_0.b.x);
    global2 = u_input.b;
    return Struct_1(-1515f, select(var_1, vec2<bool>(arg_0.b.x, var_1.x), false), _wgslsmith_f_op_f32(abs(1449f)));
}

fn func_3(arg_0: u32, arg_1: u32) -> vec2<bool> {
    global3 = array<vec2<u32>, 18>();
    let var_0 = func_1(func_1(func_1(func_1(func_1(Struct_1(-1242f, vec2<bool>(false, false), 546f))))));
    var var_1 = true;
    global3 = array<vec2<u32>, 18>();
    var var_2 = true;
    return select(!func_1(var_0).b, select(vec2<bool>(false, true), !select(vec2<bool>(false, false), select(var_0.b, var_0.b, vec2<bool>(false, var_0.b.x)), vec2<bool>(false, var_0.b.x)), all(vec4<bool>(!var_0.b.x, var_0.b.x, !var_0.b.x, var_0.b.x))), !var_0.b.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_1), func_3(u_input.a, _wgslsmith_mult_u32(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31345u, 16u)], 16u)] ^ 0u), ~(~4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a) - arg_3.c)));
    var var_1 = vec2<bool>(!arg_3.b.x, !(!all(!vec4<bool>(true, false, arg_3.b.x, var_0.b.x))));
    global1 = array<vec4<bool>, 13>();
    global3 = array<vec2<u32>, 18>();
    global1 = array<vec4<bool>, 13>();
    return func_1(arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(global2.ywy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -403f) - -300f), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, global2.x), ~u_input.b.x), global2.x) << (vec2<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 16u)], 18383u, u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 16u)], 16u)], 1208u, global0[_wgslsmith_index_u32(4294967295u, 16u)]), vec3<bool>(true, true, true)), countOneBits(vec3<u32>(16115u, 1u, 1u))), ~5160u) % vec2<u32>(32u)), func_1(Struct_1(-579f, vec2<bool>(false, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1299f) - _wgslsmith_div_f32(1619f, 1073f)))));
    let var_1 = func_2(max(abs(vec3<i32>(u_input.b.x | u_input.b.x, u_input.b.x, _wgslsmith_add_i32(1i, 1i))), global2.wxw), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c - 1164f), _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.a, var_0.a)), _wgslsmith_f_op_f32(floor(223f)), true)))))), ~_wgslsmith_add_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -1i), global2.yx), vec2<i32>(global2.x, -2147483647i)), func_1(Struct_1(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(min(var_0.c, -1584f))), vec2<bool>(!var_0.b.x, !var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * var_0.a)))));
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    global1 = array<vec4<bool>, 13>();
    global2 = -u_input.b;
    let var_2 = _wgslsmith_f_op_f32(-var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(max(373f, -442f)), 1635f, -394f, func_1(Struct_1(344f, var_0.b, 1555f)).a))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(291f, 736f, -114f, -355f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c, var_2, var_0.c, var_1.c), vec4<f32>(var_1.c, var_1.a, 304f, var_0.a), false)))))));
}

