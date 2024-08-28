struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<f32, 15> = array<f32, 15>(850f, -1000f, -601f, -648f, 836f, 331f, -1699f, -290f, 1387f, -163f, -848f, -545f, -418f, 547f, 993f);

var<private> global2: Struct_1;

var<private> global3: array<f32, 25>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = arg_1;
    let var_1 = Struct_1(_wgslsmith_mult_u32(global2.a, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.c, 71908u, arg_2.a, var_0.a)), vec4<u32>(u_input.a.x, global2.a, 93199u, u_input.a.x))) << (0u % 32u));
    var var_2 = vec4<i32>(22273i, max(u_input.d, ~(-2147483647i)) ^ u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0.x, 0i, u_input.b.x), -select(vec4<i32>(-32311i, arg_0.x, arg_0.x, u_input.b.x), vec4<i32>(-44279i, u_input.b.x, -48714i, u_input.d), true)), ~arg_0.x) ^ vec4<i32>(u_input.b.x, -11626i, ~_wgslsmith_div_i32(2147483647i, arg_0.x) | -_wgslsmith_sub_i32(u_input.b.x, -10157i), _wgslsmith_dot_vec4_i32(vec4<i32>(10817i, u_input.b.x, _wgslsmith_mult_i32(u_input.d, arg_0.x), -1i), ~(-vec4<i32>(1i, arg_0.x, -2147483647i, arg_0.x))));
    var var_3 = Struct_1(~(~abs(~62601u)));
    var var_4 = arg_2;
    return abs(arg_2.a);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec3<i32>) -> Struct_1 {
    global1 = array<f32, 15>();
    var var_0 = Struct_1(53357u);
    global3 = array<f32, 25>();
    var var_1 = Struct_1(~countOneBits(~45046u));
    var_1 = Struct_1(func_3(-u_input.b, Struct_1(76689u), Struct_1(firstTrailingBit(4294967295u))));
    return Struct_1(21170u);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> vec3<u32> {
    var var_0 = func_2(382f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -715f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2198f, global3[_wgslsmith_index_u32(u_input.a.x, 25u)])))))), ~firstLeadingBit(~vec3<i32>(u_input.d, u_input.b.x, u_input.d) >> (~vec3<u32>(arg_1, 4294967295u, arg_2.a) % vec3<u32>(32u))));
    global2 = Struct_1(arg_2.a);
    let var_1 = _wgslsmith_mod_vec3_i32(~vec3<i32>(countOneBits(-17293i), reverseBits(u_input.b.x), 69031i), _wgslsmith_add_vec3_i32(-abs(vec3<i32>(arg_0.x, -21970i, arg_0.x)), select(u_input.b, -countOneBits(arg_0.xzy), !(!vec3<bool>(arg_3, true, true)))));
    let var_2 = arg_2;
    let var_3 = vec2<bool>(false, !arg_3);
    return vec3<u32>(~reverseBits(var_2.a), 13809u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(1u, u_input.a.x, 18277u) & _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, global2.a, u_input.c), vec3<u32>(677u, global2.a, 1u))), vec3<u32>(u_input.c, ~u_input.a.x, global2.a)), min(abs(firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(global2.a, 95668u, global2.a), vec3<u32>(u_input.a.x, 4833u, 31502u)))), firstTrailingBit(func_1(-vec4<i32>(1i, 0i, u_input.d, 1i), global2.a, Struct_1(global2.a), true))));
    let var_1 = select(select(vec4<u32>(~global2.a, firstTrailingBit(1u), _wgslsmith_sub_u32(u_input.c, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(global2.a, 34316u))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global2.a, var_0.x, u_input.a.x, 4294967295u), vec4<u32>(0u, 0u, 55594u, var_0.x)), max(vec4<u32>(var_0.x, global2.a, 33434u, 22201u), vec4<u32>(u_input.c, global2.a, global2.a, var_0.x)))), vec4<u32>(1u, u_input.c, 1u, global2.a), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true)), (vec4<u32>(25360u << (0u % 32u), 68229u, ~u_input.a.x, max(53878u, var_0.x)) & (min(vec4<u32>(var_0.x, global2.a, var_0.x, 4294967295u), vec4<u32>(var_0.x, u_input.c, 125020u, u_input.c)) & _wgslsmith_div_vec4_u32(vec4<u32>(4089u, global2.a, var_0.x, 13361u), vec4<u32>(1u, var_0.x, 1u, 1u)))) & ~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.a, 23825u, u_input.c, u_input.c), vec4<u32>(var_0.x, 64708u, var_0.x, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(22890u, 4294967295u, global2.a, 32908u), vec4<u32>(0u, u_input.c, 61132u, var_0.x))), vec4<bool>(select(true | (global1[_wgslsmith_index_u32(var_0.x, 15u)] < global0.x), any(vec2<bool>(true, true)), select(select(false, false, true), true, 60462i >= u_input.b.x)), all(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), select(all(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))), all(vec3<bool>(true, false, true))), any(vec3<bool>(true, all(vec4<bool>(false, false, true, false)), true))));
    let var_2 = Struct_1(abs(~4294967295u));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.c, 25u)], global0.x, 322f, 786f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -891f, -205f, global3[_wgslsmith_index_u32(9086u, 25u)]) + vec4<f32>(-328f, 373f, 1000f, global0.x))), vec4<f32>(1606f, -222f, -404f, 1257f), all(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(1544f, global0.x, global3[_wgslsmith_index_u32(u_input.c, 25u)], 1157f), vec4<f32>(-794f, -1245f, -578f, global0.x)), vec4<f32>(global0.x, -1000f, 858f, -1931f)))))));
    var_0 = abs(_wgslsmith_mult_vec3_u32(var_1.yxz, vec3<u32>(~1u, 609u, abs(1u))));
    var var_3 = _wgslsmith_dot_vec2_i32(u_input.b.zy, countOneBits(u_input.b.zz));
    var var_4 = ~_wgslsmith_add_vec2_i32(vec2<i32>(~abs(u_input.d), 1i << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, var_2.a, var_1.x), var_1) % 32u)), _wgslsmith_add_vec2_i32(~vec2<i32>(-1i, u_input.b.x), -(~vec2<i32>(u_input.b.x, u_input.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-794f * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(1u, 25u)]))));
}

