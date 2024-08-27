struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = -543f;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 31>;

var<private> global4: array<f32, 5>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: i32, arg_1: u32) -> bool {
    return !global2.a;
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: bool) -> bool {
    global4 = array<f32, 5>();
    var var_0 = all(vec4<bool>(arg_0, !any(vec3<bool>(global0.a, false, false)), func_1(_wgslsmith_sub_i32(u_input.a, 2147483647i), global2.b), any(vec2<bool>(global2.a, true)))) || true;
    var var_1 = Struct_1(global0.a, _wgslsmith_sub_u32(global2.b, 1u), vec4<f32>(-1000f, _wgslsmith_f_op_f32(round(636f)), -145f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x + -563f)))));
    let var_2 = vec4<bool>(!arg_0, true, 4294967295u != var_1.b, var_1.a);
    let var_3 = var_2.zy;
    return !(!var_1.a);
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -292f));
    global0 = Struct_1(false, global2.b, vec4<f32>(_wgslsmith_f_op_f32(sign(-448f)), global2.c.x, _wgslsmith_div_f32(817f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.c.x, -1118f, true)) + _wgslsmith_f_op_f32(-global2.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))));
    let var_0 = Struct_1((true || !global0.a) && func_3(_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(34538u, 5u)], 714f)) <= _wgslsmith_f_op_f32(-global0.c.x), 0i, true), 0u, vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.c.x)), _wgslsmith_f_op_f32(-global0.c.x), global2.c.x, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global0.b, global2.b) >> (52079u % 32u), 5u)]));
    global0 = Struct_1(arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(48476u, 4294967295u), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.b), vec2<u32>(4364u, global0.b)), firstLeadingBit(global2.b)), 1u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x + 652f) * _wgslsmith_div_f32(global4[_wgslsmith_index_u32(2222u, 5u)], global4[_wgslsmith_index_u32(1u, 5u)])) * -757f), global4[_wgslsmith_index_u32(60833u, 5u)], -1334f, 1f));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(global2.c.x * _wgslsmith_f_op_f32(1672f + -734f))) * _wgslsmith_f_op_f32(-1595f - 2155f)), -328f));
    return global3[_wgslsmith_index_u32(global2.b, 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.c.x)) - _wgslsmith_f_op_f32(-2337f - -169f))))));
    let var_0 = vec4<u32>(~(~(~(0u & global2.b))), _wgslsmith_add_u32(~70948u, 0u), _wgslsmith_mult_u32(~(~global2.b), global0.b) << ((~56842u ^ global2.b) % 32u), _wgslsmith_mod_u32(min(~9634u, _wgslsmith_add_u32(103731u, ~global0.b)), 27406u));
    var var_1 = Struct_1(false, ~(~4294967295u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(128f, -484f, _wgslsmith_f_op_f32(-1083f - 338f), _wgslsmith_f_op_f32(min(-1921f, global2.c.x)))) * _wgslsmith_f_op_vec4_f32(global0.c * global0.c)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(238f + 1308f));
    global0 = func_2(vec4<bool>(any(select(vec2<bool>(true, global0.a), select(vec2<bool>(global2.a, false), vec2<bool>(global2.a, true), false), all(vec3<bool>(global0.a, global2.a, global0.a)))), var_1.a, func_1(-9590i, var_0.x & 41555u), global2.a));
    let var_3 = reverseBits(-_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.a, u_input.a, 8950i) >> (vec3<u32>(global0.b, var_1.b, 1u) % vec3<u32>(32u)), reverseBits(vec3<i32>(u_input.a, u_input.a, -24722i) | vec3<i32>(29033i, 2147483647i, u_input.a))));
    let var_4 = _wgslsmith_f_op_f32(-var_1.c.x);
    var var_5 = firstLeadingBit(~var_3.yy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1078f - global0.c.x))))), var_1.c.x, -257f, _wgslsmith_dot_vec2_i32(select(var_3.yz, var_3.xy, vec2<bool>(global0.a, all(vec2<bool>(var_1.a, true)))), _wgslsmith_div_vec2_i32(vec2<i32>(var_5.x, 14706i) >> (_wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u), var_0.xy) % vec2<u32>(32u)), var_3.xx)), select(firstTrailingBit(_wgslsmith_mod_u32(4294967295u, 69300u)), (14115u ^ ~global0.b) << (global0.b % 32u), false));
}

