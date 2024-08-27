struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 28>;

var<private> global1: i32 = 0i;

var<private> global2: array<i32, 8>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> vec2<bool> {
    global1 = global2[_wgslsmith_index_u32(firstLeadingBit(arg_1.e.d) << (arg_0.x % 32u), 8u)];
    global1 = -_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec3_i32(u_input.e.wxw, ~vec3<i32>(1i, 0i, arg_1.a)) & -14707i);
    global0 = array<vec2<i32>, 28>();
    let var_0 = !select(select(!select(vec4<bool>(arg_1.e.e, false, arg_1.c, false), vec4<bool>(arg_1.c, true, true, arg_1.c), vec4<bool>(false, true, false, arg_1.d.b.x)), vec4<bool>(true, any(vec3<bool>(true, false, arg_1.e.e)), all(vec4<bool>(true, true, false, true)), arg_1.e.b.x & false), !(!vec4<bool>(arg_1.d.a, false, arg_1.e.b.x, false))), select(select(vec4<bool>(arg_1.e.e, arg_1.e.e, arg_1.e.b.x, arg_1.d.b.x), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), arg_1.c), arg_1.c), !(!vec4<bool>(arg_1.b.a, arg_1.e.b.x, true, arg_1.e.a)), vec4<bool>(true, any(arg_1.d.b), true, true)), vec4<bool>(false, select(any(vec3<bool>(false, true, false)), arg_1.d.b.x, true), arg_1.c, any(!vec3<bool>(arg_1.d.b.x, arg_1.c, arg_1.d.b.x))));
    var var_1 = _wgslsmith_f_op_f32(select(1f, -521f, var_0.x));
    return arg_1.e.b;
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_2 {
    global1 = global2[_wgslsmith_index_u32(u_input.a.x, 8u)];
    let var_0 = Struct_2(arg_1, Struct_1(all(vec2<bool>(true, true)), !func_3(vec2<u32>(60048u, u_input.b.x), Struct_2(2147483647i, Struct_1(true, vec2<bool>(true, false), -43855i, arg_0, true), true, Struct_1(false, vec2<bool>(false, false), 2147483647i, 25113u, false), Struct_1(false, vec2<bool>(true, true), 16935i, 1u, false))), 0i, 0u, true && all(vec3<bool>(false, false, true))), !(!all(vec4<bool>(true, true, false, false)) & true), Struct_1(false, !select(func_3(vec2<u32>(4294967295u, u_input.b.x), Struct_2(u_input.c, Struct_1(true, vec2<bool>(true, true), arg_1, u_input.b.x, false), false, Struct_1(false, vec2<bool>(false, false), u_input.e.x, 0u, false), Struct_1(true, vec2<bool>(false, true), -26178i, 94256u, true))), vec2<bool>(false, true), false), -21829i, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x | ~26115u, u_input.a.x), _wgslsmith_add_i32(1i, arg_1) < max(1i, -global2[_wgslsmith_index_u32(18751u, 8u)])), Struct_1(any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true))), !vec2<bool>(true, select(false, false, false)), 2147483647i, 42554u, true));
    global1 = 0i;
    var var_1 = Struct_2(2147483647i, var_0.d, var_0.d.b.x, var_0.b, Struct_1(true, vec2<bool>(var_0.e.a, false), min(u_input.e.x, var_0.a), ~var_0.e.d, false));
    var_1 = Struct_2(u_input.d.x, var_0.d, var_0.e.a, Struct_1(var_0.e.e, var_1.d.b, _wgslsmith_mult_i32(arg_1, -(~(-10393i))), u_input.b.x, true), Struct_1(true, vec2<bool>(var_1.b.b.x, !(false | var_0.d.e)), select(-36306i, -1i, all(!var_1.b.b)), select(arg_0, _wgslsmith_mult_u32(4294967295u, 1u), any(vec3<bool>(false, true, true))) >> (~(~arg_0) % 32u), var_0.d.a));
    return var_0;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: bool, arg_3: i32) -> vec2<u32> {
    let var_0 = func_2(_wgslsmith_div_u32(reverseBits(~1u), 4061u), -1i);
    var var_1 = func_2(~52326u, _wgslsmith_dot_vec3_i32(vec3<i32>(~29796i >> ((u_input.a.x << (48331u % 32u)) % 32u), 0i, max(_wgslsmith_add_i32(0i, global2[_wgslsmith_index_u32(16718u, 8u)]), 0i)), arg_1)).b;
    var var_2 = func_2(var_0.b.d, 1i).d;
    let var_3 = _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.xwz, u_input.a.zwx), _wgslsmith_add_vec3_u32(u_input.a.xww, vec3<u32>(var_0.d.d, u_input.b.x, 61098u)))), ~select(u_input.a.xyy, vec3<u32>(var_0.e.d, 17948u, var_0.e.d), vec3<bool>(true, var_2.b.x, false)), abs(vec3<u32>(_wgslsmith_add_u32(var_1.d, 4294967295u), ~7003u, select(26499u, var_2.d, var_0.c)))), select(u_input.a.wwy, _wgslsmith_add_vec3_u32(vec3<u32>(var_2.d | var_0.e.d, ~u_input.b.x, 4294967295u), u_input.a.wzy), vec3<bool>(!(!var_1.a), !select(var_0.c, false, arg_2), true)));
    global1 = countOneBits(-_wgslsmith_add_i32(func_2(~var_1.d, ~global2[_wgslsmith_index_u32(0u, 8u)]).d.c, -(i32(-1i) * -1i)));
    return ~(~u_input.a.yy) << (~u_input.a.yz % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> bool {
    global2 = array<i32, 8>();
    global2 = array<i32, 8>();
    var var_0 = ~(~vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.e.wzy, u_input.e.zxw), -19826i), _wgslsmith_add_i32(u_input.d.x, min(u_input.c, global2[_wgslsmith_index_u32(u_input.b.x, 8u)])), global2[_wgslsmith_index_u32(~(~26985u), 8u)], 0i));
    return arg_1.a == !arg_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 28>();
    let var_0 = vec3<bool>(func_4(_wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.b, u_input.b), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(481f, -665f, 476f, 154f) + vec4<f32>(839f, 1125f, -793f, 374f)), vec3<i32>(u_input.e.x, 0i, -1i), true, min(u_input.d.x, -2147483647i))), func_2(func_2(u_input.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 8u)]).d.d, func_2(24656u, u_input.d.x).a).d), false, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 49908u, 1u, _wgslsmith_sub_u32(u_input.a.x, 2683u)), reverseBits(select(vec4<u32>(4294967295u, u_input.a.x, 1u, u_input.a.x), u_input.a, vec4<bool>(true, true, true, true)))), 8u)] != _wgslsmith_div_i32(88340i, -33028i));
    global1 = u_input.e.x;
    global0 = array<vec2<i32>, 28>();
    global2 = array<i32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-398f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-924f))), _wgslsmith_f_op_f32(1152f * _wgslsmith_div_f32(-977f, 179f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-894f - 864f))))), ~_wgslsmith_clamp_u32(u_input.a.x, ~1u, u_input.b.x));
}

