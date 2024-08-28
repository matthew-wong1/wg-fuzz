struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(false, -1i), Struct_1(false, 22187i), Struct_1(false, 1842i), Struct_1(false, -49503i), Struct_1(false, -6835i), Struct_1(true, -1i), Struct_1(true, -4533i), Struct_1(true, -579i), Struct_1(false, -31955i), Struct_1(true, 1i), Struct_1(true, 27423i), Struct_1(false, 51355i), Struct_1(false, -91711i));

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(false, 1i), vec2<i32>(0i, 0i), Struct_1(false, -1i)), Struct_2(Struct_1(false, 0i), vec2<i32>(2147483647i, 47795i), Struct_1(false, 2147483647i)), Struct_2(Struct_1(true, i32(-2147483648)), vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(true, 34039i)), Struct_2(Struct_1(false, 2147483647i), vec2<i32>(-34698i, 2147483647i), Struct_1(false, 1i)), Struct_2(Struct_1(false, -37730i), vec2<i32>(31416i, -23209i), Struct_1(false, 36401i)), Struct_2(Struct_1(false, -1i), vec2<i32>(2147483647i, 44560i), Struct_1(true, 2147483647i)), Struct_2(Struct_1(true, 0i), vec2<i32>(1i, i32(-2147483648)), Struct_1(false, 2147483647i)), Struct_2(Struct_1(false, 2147483647i), vec2<i32>(-1i, 24521i), Struct_1(false, -25880i)), Struct_2(Struct_1(false, -7724i), vec2<i32>(0i, 39694i), Struct_1(true, 45041i)), Struct_2(Struct_1(false, 2147483647i), vec2<i32>(-1i, -1i), Struct_1(false, 4330i)), Struct_2(Struct_1(false, -19807i), vec2<i32>(-19536i, 0i), Struct_1(false, 5665i)), Struct_2(Struct_1(false, 13898i), vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(false, 1i)), Struct_2(Struct_1(false, 0i), vec2<i32>(11263i, -1i), Struct_1(false, i32(-2147483648))), Struct_2(Struct_1(true, 23790i), vec2<i32>(-39274i, -1i), Struct_1(false, 1i)), Struct_2(Struct_1(false, -1i), vec2<i32>(-1i, 14889i), Struct_1(false, 4335i)), Struct_2(Struct_1(true, 0i), vec2<i32>(-47210i, 0i), Struct_1(true, 1i)), Struct_2(Struct_1(true, 0i), vec2<i32>(577i, -24313i), Struct_1(true, i32(-2147483648))), Struct_2(Struct_1(false, -1i), vec2<i32>(i32(-2147483648), 638i), Struct_1(true, 37031i)), Struct_2(Struct_1(false, -1i), vec2<i32>(-1i, i32(-2147483648)), Struct_1(true, -1i)), Struct_2(Struct_1(true, 2147483647i), vec2<i32>(24454i, 60579i), Struct_1(true, -1i)), Struct_2(Struct_1(false, -83329i), vec2<i32>(9392i, -1i), Struct_1(false, -50553i)), Struct_2(Struct_1(true, i32(-2147483648)), vec2<i32>(1891i, 10769i), Struct_1(false, -399i)), Struct_2(Struct_1(true, 2147483647i), vec2<i32>(42628i, 0i), Struct_1(false, 24738i)), Struct_2(Struct_1(true, i32(-2147483648)), vec2<i32>(0i, 4333i), Struct_1(false, 5356i)), Struct_2(Struct_1(false, -1i), vec2<i32>(32707i, -9656i), Struct_1(false, 18741i)), Struct_2(Struct_1(false, 5436i), vec2<i32>(0i, -18082i), Struct_1(false, -37929i)), Struct_2(Struct_1(false, 35784i), vec2<i32>(1i, 0i), Struct_1(false, -16067i)), Struct_2(Struct_1(true, 0i), vec2<i32>(i32(-2147483648), -1i), Struct_1(false, 21014i)), Struct_2(Struct_1(true, -1i), vec2<i32>(4244i, -109790i), Struct_1(false, 4696i)), Struct_2(Struct_1(false, 0i), vec2<i32>(-32026i, -1i), Struct_1(true, 0i)), Struct_2(Struct_1(false, i32(-2147483648)), vec2<i32>(6260i, i32(-2147483648)), Struct_1(true, 13053i)));

var<private> global2: array<Struct_2, 13>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_2) -> vec2<f32> {
    let var_0 = select(!select(!select(vec4<bool>(arg_2.c.a, true, false, arg_2.a.a), vec4<bool>(true, arg_2.a.a, arg_0.a.a, arg_0.a.a), arg_2.a.a), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, arg_2.a.a, false, true), arg_2.a.a), !vec4<bool>(true, arg_2.c.a, false, true), arg_2.c.a), vec4<bool>(true, true, true, true)), !vec4<bool>(true, true, firstLeadingBit(arg_1.x) > u_input.b, any(vec4<bool>(true, true, true, arg_2.c.a))), select(vec4<bool>((-21126i <= arg_2.a.b) & !arg_2.a.a, arg_2.c.a, true, arg_0.a.a), !(!select(vec4<bool>(true, arg_0.c.a, false, true), vec4<bool>(arg_2.c.a, false, false, false), vec4<bool>(true, false, true, arg_2.c.a))), arg_0.a.a));
    global2 = array<Struct_2, 13>();
    let var_1 = max(~reverseBits(_wgslsmith_mult_vec3_u32(max(vec3<u32>(arg_1.x, arg_1.x, arg_1.x), vec3<u32>(43002u, 1u, 0u)), vec3<u32>(u_input.b, arg_1.x, u_input.b))), _wgslsmith_sub_vec3_u32(vec3<u32>(21049u, 1u, 0u), ~(~vec3<u32>(67213u, arg_1.x, u_input.b)) & max(~vec3<u32>(arg_1.x, 69837u, u_input.d.x), vec3<u32>(0u, arg_1.x, 66717u))));
    var var_2 = ~(-vec3<i32>(~u_input.c.x >> (61100u % 32u), arg_0.c.b, ~2147483647i << (~var_1.x % 32u)));
    var var_3 = abs(~abs(vec4<i32>(arg_2.a.b, u_input.c.x, countOneBits(arg_2.c.b), -376i)));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(209f - 1888f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -252f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1459f)), _wgslsmith_f_op_f32(select(-387f, -1089f, true)))))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-288f, -335f)))))));
}

fn func_2(arg_0: i32) -> vec2<bool> {
    global2 = array<Struct_2, 13>();
    global1 = array<Struct_2, 31>();
    var var_0 = true;
    let var_1 = 2147483647i;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(67738u, u_input.d.x), 31u)], _wgslsmith_mult_vec2_u32(~u_input.d, vec2<u32>(8360u, u_input.a)), Struct_2(Struct_1(true, 2147483647i), firstLeadingBit(u_input.c), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b, 1u), vec4<u32>(4294967295u, 4294967295u, u_input.d.x, 12062u)), 13u)]))))), _wgslsmith_f_op_vec2_f32(func_3(global1[_wgslsmith_index_u32(1u, 31u)], u_input.d, Struct_2(Struct_1(false, ~arg_0), u_input.c, global0[_wgslsmith_index_u32(1u, 13u)]))));
    return !(!(!vec2<bool>(u_input.a != u_input.a, false)));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: u32) -> vec4<i32> {
    var var_0 = global0[_wgslsmith_index_u32(~arg_2, 13u)];
    let var_1 = ~(~(2147483647i | (u_input.c.x | 53842i))) | var_0.b;
    global0 = array<Struct_1, 13>();
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1705f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1680f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_1)), 1f))))));
    var var_3 = select(vec2<bool>(_wgslsmith_add_u32(arg_2 << (u_input.a % 32u), ~u_input.d.x) == (~1u & ~u_input.b), var_0.a), !func_2(_wgslsmith_mod_i32(select(22177i, 67921i, true), ~u_input.c.x)), !select(arg_0.yy, vec2<bool>(var_0.a, var_0.a), var_0.a));
    return _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(37214i, 2147483647i, ~select(0i, var_0.b, false), 39404i)), vec4<i32>(u_input.c.x, -2147483647i, -29323i, ~(-_wgslsmith_sub_i32(var_1, var_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1f)))) - -903f), u_input.a);
    let var_1 = select(~(min(4294967295u, ~4294967295u) ^ u_input.a), 1u, !(u_input.b < firstTrailingBit(abs(0u))));
    var var_2 = !(!select(true, true, true));
    var var_3 = ~_wgslsmith_sub_i32(reverseBits(-u_input.c.x), u_input.c.x);
    var var_4 = 434f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(741f, _wgslsmith_f_op_f32(f32(-1f) * -208f))), ~(var_0.x | abs(27366i)));
}

