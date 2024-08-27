struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 4>;

var<private> global1: Struct_1;

var<private> global2: vec4<f32> = vec4<f32>(255f, 371f, 203f, -1979f);

var<private> global3: u32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: f32) -> i32 {
    global3 = _wgslsmith_mult_u32(u_input.a.x, u_input.a.x) ^ countOneBits(~54115u);
    var var_0 = vec3<u32>(0u, _wgslsmith_sub_u32(u_input.a.x, 40348u), ~60903u);
    global3 = ~(1u << (abs(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.b.x, 0u, 0u), vec4<u32>(1u, var_0.x, u_input.b.x, var_0.x)), 38635u)) % 32u));
    let var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(~min(_wgslsmith_div_vec2_u32(u_input.a, var_0.zy), vec2<u32>(var_0.x, u_input.a.x)), vec2<u32>(74892u, 1u)), u_input.b.x);
    global3 = select(max(u_input.a.x, _wgslsmith_add_u32(1u, var_1.x | u_input.a.x)), u_input.a.x, any(vec2<bool>(global1.a.x, true))) << (_wgslsmith_dot_vec2_u32(firstLeadingBit(~firstLeadingBit(u_input.b.xy)), vec2<u32>(4294967295u, ~(u_input.b.x | var_1.x))) % 32u);
    return global1.b;
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: i32) -> f32 {
    var var_0 = Struct_1(global1.a, abs(_wgslsmith_mult_i32(10481i, firstTrailingBit(arg_1))) | select(~_wgslsmith_sub_i32(-2147483647i, arg_1), global1.b, false));
    var var_1 = Struct_1(select(vec2<bool>(arg_1 >= _wgslsmith_clamp_i32(-2147483647i, var_0.b, 1i), select(arg_0.x, var_0.a.x, false)), select(global1.a, !global1.a, select(select(global1.a, vec2<bool>(false, true), var_0.a.x), var_0.a, false)), !vec2<bool>(all(arg_0), select(true, true, true))), 0i);
    let var_2 = select(arg_0.xy, vec2<bool>(((32115u < u_input.a.x) != true) & !(!var_0.a.x), true), all(!select(select(vec2<bool>(var_0.a.x, global1.a.x), var_0.a, var_1.a), select(vec2<bool>(true, true), global1.a, vec2<bool>(arg_0.x, var_0.a.x)), all(vec2<bool>(false, arg_0.x)))));
    global3 = countOneBits(~_wgslsmith_div_u32(u_input.a.x >> (u_input.b.x % 32u), _wgslsmith_add_u32(0u, countOneBits(27303u))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(314f - 360f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 1000f)) - _wgslsmith_f_op_f32(2674f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -578f)))));
    return _wgslsmith_f_op_f32(sign(-1000f));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = ~vec2<u32>(1u, ~countOneBits(63226u) | (u_input.a.x >> ((53070u >> (u_input.a.x % 32u)) % 32u)));
    var var_1 = ~(~min(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, 1u), var_0), u_input.a >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), 13106u));
    var var_2 = -35512i;
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_2, arg_0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, -1i, arg_0.b, arg_3.b), vec4<i32>(1i, arg_3.b, arg_0.b, arg_0.b))))), _wgslsmith_f_op_f32(max(global2.x, global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(arg_1 - 492f)));
    var var_3 = Struct_1(select(select(vec2<bool>(true, true), arg_3.a, all(arg_2)), select(global1.a, !select(vec2<bool>(false, global1.a.x), vec2<bool>(arg_2.x, true), false), -2147483647i <= func_1(-531f)), select(global1.a, global1.a, select(vec2<bool>(true, arg_0.a.x), vec2<bool>(false, arg_0.a.x), arg_2.yx))), 28512i);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~u_input.a.x) >> (~4294967295u % 32u));
    var var_1 = Struct_1(global1.a, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1296f, global2.x)) + _wgslsmith_f_op_f32(-763f * 733f)))));
    let var_2 = Struct_1(vec2<bool>(global1.a.x, all(global1.a)), ~_wgslsmith_add_i32(~_wgslsmith_mult_i32(-45421i, global1.b), 15975i));
    var_1 = var_2;
    var var_3 = -1000f;
    global3 = _wgslsmith_dot_vec3_u32(func_2(var_2, global2.x, !select(select(vec4<bool>(global1.a.x, var_2.a.x, var_2.a.x, false), vec4<bool>(global1.a.x, false, var_2.a.x, false), vec4<bool>(false, true, global1.a.x, false)), !vec4<bool>(false, var_1.a.x, var_1.a.x, false), var_1.a.x), Struct_1(global1.a, var_1.b)), min(_wgslsmith_clamp_vec3_u32(u_input.b, u_input.b ^ select(vec3<u32>(var_0, 1u, 16508u), vec3<u32>(52771u, 4294967295u, u_input.a.x), vec3<bool>(var_1.a.x, var_1.a.x, true)), ~u_input.b), u_input.b));
    var var_4 = Struct_1(vec2<bool>((firstLeadingBit(0u) & ~u_input.a.x) <= ~1290u, false), select(~75079i, -20314i << (~(~var_0) % 32u), global1.a.x));
    let var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(-444f, _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(~vec4<u32>(var_0, 39621u, 4294967295u, var_0)), min(vec4<u32>(var_0, 0u, 1u, var_0), ~vec4<u32>(24687u, u_input.b.x, var_0, var_0))), ~vec4<u32>(u_input.b.x, ~61845u, reverseBits(21384u), u_input.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, -384f, -2010f) + vec4<f32>(-1077f, 1257f, 1080f, global2.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, 249f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, 2511f, global2.x), vec4<f32>(-369f, global2.x, global2.x, global2.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, -1747f, 124f, global2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2317f, 1000f, global2.x, 1099f)), false)))));
}

