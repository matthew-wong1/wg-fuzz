struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<bool>,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: f32;

var<private> global2: Struct_2;

var<private> global3: Struct_1 = Struct_1(vec2<f32>(504f, -739f), 5921u, vec3<bool>(true, false, true), vec3<f32>(743f, -1000f, -1000f), vec4<i32>(-13606i, i32(-2147483648), 1i, 39185i));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> i32 {
    var var_0 = abs(global3.e);
    var var_1 = global2.b;
    let var_2 = global0[_wgslsmith_index_u32(global3.b, 2u)];
    var var_3 = ~(~(~vec3<u32>(40950u, ~global2.a, _wgslsmith_sub_u32(34115u, var_1.b))));
    let var_4 = 478f;
    return _wgslsmith_sub_i32(-_wgslsmith_mult_i32(var_2.b.e.x, ~select(global3.e.x, var_2.b.e.x, var_1.c.x)), _wgslsmith_div_i32(_wgslsmith_div_i32(-40353i, var_1.e.x) << (var_2.a % 32u), global3.e.x));
}

fn func_4(arg_0: i32, arg_1: f32) -> u32 {
    let var_0 = Struct_2(_wgslsmith_mult_u32(1u, u_input.b.x), global2.b, global3.c.xy, global2.d);
    let var_1 = all(vec4<bool>(global3.c.x, any(select(vec4<bool>(false, var_0.c.x, global3.c.x, false), select(vec4<bool>(global3.c.x, true, true, var_0.b.c.x), vec4<bool>(global2.c.x, true, false, false), true), global3.c.x)), true, true));
    var var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(global2.b.b, 0u), vec2<u32>(4294967295u, 0u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(21994u, ~1u), u_input.b.yz));
    global1 = global3.a.x;
    let var_3 = _wgslsmith_sub_u32(~48183u, firstLeadingBit(~_wgslsmith_clamp_u32(min(var_0.b.b, 0u), max(var_2.x, u_input.d.x), min(global3.b, global2.b.b))));
    return 49424u;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(~reverseBits(global3.b), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global2.b.d.yx))), 1u, global3.c, vec3<f32>(1299f, _wgslsmith_f_op_f32(f32(-1f) * -1161f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.d.x)) + _wgslsmith_div_f32(-1083f, 599f))), _wgslsmith_mod_vec4_i32(global3.e, _wgslsmith_add_vec4_i32(vec4<i32>(-10501i, 60024i, global3.e.x, 0i), -global3.e))), global3.c.yy, vec3<i32>(0i, global2.b.e.x, -abs(global3.e.x)));
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.d.x, -411f)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u >> (_wgslsmith_div_u32(var_0.a, global2.a) % 32u), func_4(func_3(), _wgslsmith_f_op_f32(var_0.b.a.x + -588f))), vec2<u32>(_wgslsmith_mult_u32(global3.b, ~global2.a), firstLeadingBit(_wgslsmith_add_u32(1u, u_input.b.x)))), vec3<bool>(true | any(global2.c), true | select(global2.c.x, global3.c.x && true, all(vec2<bool>(false, false))), global3.c.x), vec3<f32>(-328f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global3.a.x, _wgslsmith_f_op_f32(ceil(global2.b.d.x)), !global2.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -432f))), 903f), -global3.e);
    global0 = array<Struct_2, 2>();
    let var_1 = global3.c;
    global0 = array<Struct_2, 2>();
    return Struct_2(global2.b.b, Struct_1(vec2<f32>(-2501f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.a.x))), 67041u << (1u % 32u), vec3<bool>(true, !var_1.x, !all(var_0.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-450f, 686f, _wgslsmith_f_op_f32(var_0.b.d.x - -356f)) * global2.b.d), ~(-firstTrailingBit(vec4<i32>(global2.b.e.x, global3.e.x, global3.e.x, 0i)))), select(vec2<bool>(true, any(!vec4<bool>(var_0.b.c.x, false, var_1.x, true))), var_0.b.c.yz, !(~global2.d.x < -1i)), vec3<i32>(24802i, ~(-2147483647i), select(countOneBits(1942i), 1981i ^ _wgslsmith_mult_i32(global2.b.e.x, u_input.c), false)));
}

fn func_1(arg_0: vec3<i32>) -> vec2<i32> {
    global2 = func_2();
    global2 = func_2();
    return _wgslsmith_mult_vec2_i32(abs(countOneBits(_wgslsmith_div_vec2_i32(global3.e.wy, vec2<i32>(global2.b.e.x, -17560i)))), -_wgslsmith_clamp_vec2_i32(arg_0.zz, global2.d.zy, ~_wgslsmith_div_vec2_i32(u_input.a, u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<i32>(-global2.d.x, 26972i, _wgslsmith_mult_i32(-(~0i), i32(-1i) * -2147483647i)));
    let var_1 = u_input.d.zx;
    let var_2 = global0[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(select(~global2.a, 1u, _wgslsmith_f_op_f32(-1350f - 757f) > _wgslsmith_f_op_f32(select(-1575f, global2.b.d.x, global3.c.x))), select(~(~var_1.x), ~_wgslsmith_clamp_u32(global2.b.b, var_1.x, u_input.b.x), var_0.x > (i32(-1i) * -16380i)), _wgslsmith_dot_vec3_u32(u_input.d, _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b.zwy, u_input.d), ~u_input.d))), 25558u), 2u)];
    var var_3 = var_0.x;
    var var_4 = func_2();
    var_3 = global3.e.x >> (11515u % 32u);
    let var_5 = Struct_2(countOneBits(global2.b.b), Struct_1(global2.b.a, ~0u, !(!(!vec3<bool>(global3.c.x, global3.c.x, true))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.a.x, 620f, 696f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(485f, 741f, global3.a.x), vec3<f32>(var_2.b.d.x, -443f, global2.b.a.x), vec3<bool>(true, var_4.c.x, false))) - _wgslsmith_f_op_vec3_f32(floor(global3.d)))), ~var_4.b.e), !select(var_4.c, func_2().c, vec2<bool>(true, true)), var_2.b.e.zxx);
    let var_6 = var_5.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, global2.d.x, global3.e.x), firstTrailingBit(global3.e.wzw)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -1463f), var_5.b.a, true)));
}

