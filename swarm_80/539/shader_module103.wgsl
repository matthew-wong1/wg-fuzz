struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<u32>, 8>;

var<private> global2: array<i32, 30>;

var<private> global3: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global2 = array<i32, 30>();
    var var_0 = u_input.a;
    let var_1 = !arg_0.c;
    let var_2 = -1i;
    var var_3 = 0u;
    return _wgslsmith_add_u32(1u, firstTrailingBit(~(~(~31665u))));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> bool {
    global0 = 0i;
    let var_0 = vec4<bool>(arg_1.d.c.x, arg_1.d.c.x, arg_1.d.c.x, arg_1.d.c.x);
    global2 = array<i32, 30>();
    return !all(vec2<bool>(all(var_0.xwx), true)) || (reverseBits(global2[_wgslsmith_index_u32(max(4294967295u, 50963u), 30u)] << (func_3(arg_1.d) % 32u)) != _wgslsmith_add_i32(-(~arg_0), _wgslsmith_div_i32(-2147483647i, u_input.b.x >> (arg_1.b % 32u))));
}

fn func_1() -> vec3<bool> {
    var var_0 = select(vec3<bool>(true, true, true), vec3<bool>(!select(true, select(true, true, true), true), func_2(-u_input.b.x, Struct_2(vec2<f32>(1916f, 699f), 4294967295u, 998f, Struct_1(-361f, 19135i, vec4<bool>(true, true, false, false)))) && select(all(vec4<bool>(false, false, false, false)), true, func_2(u_input.b.x, Struct_2(vec2<f32>(-670f, -800f), u_input.c, -1397f, Struct_1(-779f, u_input.b.x, vec4<bool>(true, false, false, false))))), !all(select(vec2<bool>(false, false), vec2<bool>(false, true), false))), !vec3<bool>(!func_2(global2[_wgslsmith_index_u32(u_input.a, 30u)], Struct_2(vec2<f32>(-1805f, -1349f), 4294967295u, -1410f, Struct_1(1000f, u_input.b.x, vec4<bool>(false, false, false, true)))), func_2(0i, Struct_2(vec2<f32>(-1142f, -856f), 4294967295u, -316f, Struct_1(-1108f, -83456i, vec4<bool>(true, false, true, true)))), !select(false, false, false)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-953f, _wgslsmith_f_op_f32(-1187f - -1000f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(141f, 986f), _wgslsmith_f_op_f32(1576f + -1000f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1413f, 1723f))))), true || all(vec3<bool>(var_0.x, var_0.x, var_0.x)))), all(!vec2<bool>(var_0.x, var_0.x)))), min(1u, countOneBits(~_wgslsmith_add_u32(u_input.c, 68501u))), -604f, Struct_1(-940f, 18063i, !vec4<bool>(select(var_0.x, true, false), true, !var_0.x, var_0.x)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1372f), 4407i, !vec4<bool>(-u_input.b.x >= _wgslsmith_sub_i32(-37381i, u_input.b.x), all(select(var_1.d.c, vec4<bool>(false, var_1.d.c.x, false, true), var_1.d.c.x)), false, var_0.x));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_1.a))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_2.a, var_2.a), _wgslsmith_f_op_f32(-261f - -1559f)))), _wgslsmith_dot_vec3_u32(~(vec3<u32>(10969u, 4294967295u, u_input.c) << (~vec3<u32>(77765u, var_1.b, var_1.b) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.a, select(var_1.b, 0u, var_1.d.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 1u, u_input.a, var_1.b), vec4<u32>(23443u, 1u, 26290u, 26215u))), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.b, u_input.a, 1u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, u_input.a, u_input.a, var_1.b), vec4<u32>(54396u, 4294967295u, var_1.b, 77993u)), 8u)]))), _wgslsmith_div_f32(691f, _wgslsmith_f_op_f32(721f - _wgslsmith_f_op_f32(-1008f + _wgslsmith_f_op_f32(trunc(var_1.a.x))))), Struct_1(var_2.a, global2[_wgslsmith_index_u32(u_input.c, 30u)], !select(vec4<bool>(var_1.d.c.x, false, true, true), select(var_2.c, vec4<bool>(var_1.d.c.x, true, true, var_0.x), var_1.d.c), select(vec4<bool>(var_2.c.x, true, false, var_1.d.c.x), var_2.c, vec4<bool>(var_1.d.c.x, true, var_1.d.c.x, true)))));
    let var_4 = ~_wgslsmith_add_vec4_u32(reverseBits(~vec4<u32>(0u, u_input.a, u_input.c, u_input.c)), select(~vec4<u32>(u_input.a, var_1.b, 16106u, 0u), vec4<u32>(var_3.b, 43920u, 1u, var_3.b) | vec4<u32>(1764u, 4294967295u, var_1.b, 47559u), !var_3.d.c.x)) >> (min(~(~(~vec4<u32>(var_1.b, u_input.c, var_1.b, 1u))), select(min(vec4<u32>(50935u, var_1.b, u_input.a, 11655u), vec4<u32>(1u, 42672u, u_input.c, 0u)), vec4<u32>(4294967295u, 0u, var_1.b, 4294967295u) & vec4<u32>(var_1.b, u_input.c, 28934u, 1u), vec4<bool>(var_3.d.c.x, var_2.c.x, false, var_0.x)) << (firstTrailingBit(~vec4<u32>(0u, 4294967295u, 56466u, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    return vec3<bool>(func_2(-(~(i32(-1i) * -1i)), Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(var_1.a)))), abs(_wgslsmith_sub_u32(var_4.x, var_4.x)), var_3.d.a, Struct_1(-1000f, var_1.d.b << (u_input.c % 32u), var_3.d.c))), true, (false && var_3.d.c.x) && false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(!any(vec4<bool>(true, true, true, false)), true, false), !func_1(), select(select(true, true, true) && any(vec2<bool>(false, true)), !func_2(~2147483647i, Struct_2(vec2<f32>(-503f, -182f), 1u, 2283f, Struct_1(254f, u_input.b.x, vec4<bool>(false, true, true, false)))), func_1().x));
    let var_1 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec2_i32(abs(~vec2<i32>(u_input.b.x, 37316i)), abs(-u_input.b.zx)), global1[_wgslsmith_index_u32(u_input.c, 8u)]);
}

