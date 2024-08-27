struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: u32,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: array<f32, 1>;

var<private> global2: array<i32, 29> = array<i32, 29>(-970i, -42909i, 1i, -1i, -1i, i32(-2147483648), -29843i, 2147483647i, -62948i, 46546i, 0i, -1i, 0i, 2147483647i, 21735i, -1i, 7255i, i32(-2147483648), 0i, -45209i, 484i, 0i, -1947i, 36334i, -33248i, 1i, -47905i, 2147483647i, -1i);

var<private> global3: vec2<u32>;

var<private> global4: vec2<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec2<f32> {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(176f + global1[_wgslsmith_index_u32(global3.x, 1u)]), global1[_wgslsmith_index_u32(56046u, 1u)]), vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global3.x, global3.x, global3.x), vec4<u32>(20234u, u_input.e.x, 1u, global3.x)), 1u)] * _wgslsmith_div_f32(global1[_wgslsmith_index_u32(global3.x ^ global3.x, 1u)], -350f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-482f)) + _wgslsmith_f_op_f32(165f * 317f)))));
    var var_1 = select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(false, true)), any(vec4<bool>(false, false, true, true)), true, select(true, false, true)), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)), all(vec4<bool>(true, true, false, true))))), select(!vec4<bool>(false, true, 0u <= u_input.b, any(vec3<bool>(false, true, true))), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(false, true, true, true)), true), !all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))));
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(floor(-466f));
    global0 = array<i32, 30>();
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1615f + var_3) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -241f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1111f, var_0.x)) - _wgslsmith_f_op_f32(ceil(-1814f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1511f - 1078f), _wgslsmith_f_op_f32(1525f - var_3)) - -384f) * var_0.x));
}

fn func_2(arg_0: f32, arg_1: u32) -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3(global2[_wgslsmith_index_u32(~1u, 29u)])))), select(vec2<bool>(all(vec2<bool>(true, true)), true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), vec2<bool>(true, true)), _wgslsmith_add_u32(reverseBits(global3.x << (22942u % 32u)), ~min(1u, arg_1)), -((vec4<i32>(u_input.c, -1i, 3575i, 0i) << (vec4<u32>(54957u, global3.x, 0u, 5716u) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(global3.x, 0u, u_input.a.x, 28332u), vec4<u32>(arg_1, 23793u, 50639u, global3.x)) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1[_wgslsmith_index_u32(u_input.e.x, 1u)], 1528f), vec2<f32>(1347f, global1[_wgslsmith_index_u32(90967u, 1u)]))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, -1050f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-696f, global1[_wgslsmith_index_u32(u_input.d, 1u)]) * vec2<f32>(global1[_wgslsmith_index_u32(arg_1, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)]))))), _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(4294967295u, 4294967295u, global3.x, u_input.a.x))), ~reverseBits(~vec4<u32>(u_input.e.x, u_input.a.x, 81038u, arg_1))), !any(vec4<bool>(true, false, false, true)) || false);
    global2 = array<i32, 29>();
    var var_1 = _wgslsmith_dot_vec4_i32(firstLeadingBit(select(abs(var_0.a.d), -(~vec4<i32>(global4.x, 1i, u_input.c, 1i)), !select(vec4<bool>(true, true, true, false), vec4<bool>(var_0.c, var_0.a.b.x, var_0.a.b.x, true), vec4<bool>(var_0.a.b.x, false, false, var_0.a.b.x)))), var_0.a.d);
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    return var_0.a.b;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(554f, -655f), vec2<f32>(1000f, global1[_wgslsmith_index_u32(global3.x, 1u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], 2799f) * vec2<f32>(1000f, 175f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)]), vec2<f32>(global1[_wgslsmith_index_u32(0u, 1u)], 684f))))), func_2(-2547f, 11454u), ~_wgslsmith_dot_vec2_u32(~(vec2<u32>(1u, 67494u) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u))), max(u_input.a.xy, u_input.e.yx)), vec4<i32>(~(-global2[_wgslsmith_index_u32(4294967295u, 29u)] | ~global2[_wgslsmith_index_u32(arg_0, 29u)]), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global4.x, -2927i, 1i, global2[_wgslsmith_index_u32(u_input.b, 29u)]), vec4<i32>(global0[_wgslsmith_index_u32(13696u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], 1i, global2[_wgslsmith_index_u32(global3.x, 29u)])), vec4<i32>(-17789i, u_input.c, global4.x, global4.x)), u_input.c), -2147483647i, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~firstLeadingBit(4911u), arg_0), 30u)]), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(20283u, 1u)], global1[_wgslsmith_index_u32(arg_0, 1u)]) + vec2<f32>(global1[_wgslsmith_index_u32(global3.x, 1u)], 1869f)))), vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0, 1u)] * global1[_wgslsmith_index_u32(49413u, 1u)]), -162f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1781f, global1[_wgslsmith_index_u32(global3.x, 1u)]))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-550f, -1270f) - vec2<f32>(global1[_wgslsmith_index_u32(global3.x, 1u)], 491f)))))));
    var var_1 = Struct_2(Struct_1(var_0.e, var_0.b, _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.d | global3.x, var_0.c), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 4622u, u_input.a.x, arg_0) | vec4<u32>(arg_0, 12378u, 4294967295u, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(global3.x, u_input.b, 48110u, 1u), vec4<u32>(global3.x, global3.x, 58179u, global3.x)))), (var_0.d << ((vec4<u32>(28118u, 0u, 4294967295u, 9711u) ^ vec4<u32>(global3.x, 0u, 6535u, 4294967295u)) % vec4<u32>(32u))) & abs(max(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], 20653i, 0i, 2147483647i), vec4<i32>(global2[_wgslsmith_index_u32(var_0.c, 29u)], u_input.c, 19039i, global2[_wgslsmith_index_u32(35490u, 29u)]))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), global1[_wgslsmith_index_u32(u_input.b, 1u)])), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(50238u, 4294967295u, u_input.d, global3.x), vec4<u32>(58132u, 0u, u_input.b, 0u)) ^ firstTrailingBit(vec4<u32>(global3.x, 23869u, 12104u, 0u)), vec4<u32>(~u_input.d, 1u, max(1u, 50738u), ~1u)), firstTrailingBit(vec4<u32>(var_0.c, 29947u, ~4294967295u, 24912u))), var_0.a.x == _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(287u ^ ~global3.x, 1u)] - _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(25752u, 1u)]))));
    let var_2 = !all(!select(!vec4<bool>(var_1.c, false, true, true), !vec4<bool>(var_0.b.x, true, true, false), !vec4<bool>(false, var_0.b.x, true, true)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1141f)), var_0.a.x) + -429f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 1u)] * 973f))))), _wgslsmith_f_op_f32(857f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec2_f32(func_3(43071i)).x)))));
    let var_4 = abs(vec4<i32>(var_1.a.d.x, 0i, select(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-2147483647i, 0i), 1i), -global2[_wgslsmith_index_u32(~1u, 29u)], !any(vec4<bool>(var_2, var_0.b.x, true, var_2))), _wgslsmith_dot_vec3_i32(var_1.a.d.ywy, var_0.d.xyy)));
    return Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.e.x)) * -486f), var_0.e.x), func_2(-1090f, 0u << (1u % 32u)), _wgslsmith_div_u32(~(~arg_0), var_1.b.x), var_1.a.d ^ select(vec4<i32>(var_4.x, global0[_wgslsmith_index_u32(var_1.a.c, 30u)], u_input.c, var_0.d.x), var_1.a.d & var_4, var_1.a.d.x <= u_input.c), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.a.x, var_0.a.x))), var_1.a.e.x)), select(var_1.b, var_1.b, true), var_1.c);
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    let var_0 = ~firstTrailingBit(~arg_0.b ^ _wgslsmith_mod_vec4_u32(vec4<u32>(940u, arg_1, arg_0.b.x, arg_0.a.c), vec4<u32>(arg_1, global3.x, 1u, arg_1)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 1>();
    let var_0 = ~(~global3.x);
    var var_1 = ~firstLeadingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 83113u, 1u, 5069u), select(vec4<u32>(57703u, 0u, var_0, 28230u), vec4<u32>(4294967295u, var_0, u_input.d, 1u), vec4<bool>(false, false, true, true))));
    var var_2 = func_4(func_1(_wgslsmith_div_u32(26443u, u_input.d)), 4294967295u);
    let var_3 = func_1(1010u).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(var_2.a.e)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1023f, -389f)))))) * var_2.a.a));
}

