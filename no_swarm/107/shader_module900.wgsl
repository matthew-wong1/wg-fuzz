struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: u32,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

var<private> global1: Struct_3;

var<private> global2: f32 = -1151f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: bool) -> i32 {
    let var_0 = Struct_4(countOneBits(-2147483647i), Struct_3(global1.b, Struct_2(1598i), vec4<i32>(u_input.a.x, -15912i, max(~1i, 41822i), -2147483647i), !arg_2, true), global0[_wgslsmith_index_u32(0u, 28u)], vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-805f, 1000f) * _wgslsmith_f_op_f32(f32(-1f) * -1236f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(425f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-513f, 361f) * _wgslsmith_f_op_f32(f32(-1f) * -2248f)))), -666f), vec4<bool>(all(select(select(vec3<bool>(global1.d, true, arg_2), vec3<bool>(false, false, global1.d), arg_2), vec3<bool>(global1.d, true, false), true)), !(24276u <= select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45161u, 28u)], 28u)], 41693u, global1.d)), global1.e, all(select(vec2<bool>(true, true), vec2<bool>(global1.e, false), select(vec2<bool>(false, global1.e), vec2<bool>(arg_2, arg_2), vec2<bool>(false, true))))));
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    var var_1 = var_0.d.x;
    let var_2 = Struct_4(2147483647i, Struct_3(arg_1, Struct_2(-1i), min(global1.c | vec4<i32>(u_input.a.x, global1.c.x, global1.c.x, 1i), max(_wgslsmith_add_vec4_i32(vec4<i32>(0i, -67099i, -1i, -14128i), vec4<i32>(-44617i, arg_1.a, 1i, 1i)), select(vec4<i32>(2147483647i, -71996i, -1i, global1.a.a), var_0.b.c, global1.e))), all(!select(vec4<bool>(global1.d, false, true, arg_2), vec4<bool>(var_0.e.x, var_0.b.e, true, var_0.e.x), var_0.e)), false), 1u | ~(~arg_0.x), vec3<f32>(-924f, -368f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + var_0.d.x)) + _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.d.x, var_0.d.x), _wgslsmith_f_op_f32(var_0.d.x - -1521f)))), !(!(!var_0.e)));
    return var_2.b.c.x;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_1) -> i32 {
    var var_0 = !vec4<bool>(select(false, arg_1.d, -6665i > u_input.a.x) && !any(vec3<bool>(global1.e, false, true)), false, any(select(!vec4<bool>(true, global1.d, true, global1.e), vec4<bool>(arg_1.e, true, true, arg_1.e), !vec4<bool>(arg_1.d, true, arg_1.e, false))), false == (arg_0.a < -arg_1.b.a));
    return 1i;
}

fn func_2(arg_0: f32, arg_1: bool) -> vec2<bool> {
    let var_0 = ~max(~firstLeadingBit(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 28u)], 28u)], 66439u)), vec2<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(36605u, u_input.b, u_input.b, 1u), vec4<u32>(48738u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)], 4294967295u, 43496u))), 32510u));
    let var_1 = Struct_5(func_4(Struct_5(u_input.a.x & reverseBits(u_input.a.x), arg_0), Struct_3(global1.a, global1.b, vec4<i32>(u_input.a.x, func_3(vec4<u32>(var_0.x, 59669u, global0[_wgslsmith_index_u32(var_0.x, 28u)], 0u), Struct_2(12220i), global1.d), countOneBits(1i), 0i), true, false), Struct_1(arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, arg_0))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(round(-278f)), arg_1)))));
    let var_2 = global1.a;
    let var_3 = !any(!vec4<bool>(!arg_1, arg_1 & true, !global1.e, -459f <= arg_0));
    var var_4 = abs(abs(global0[_wgslsmith_index_u32(min(52165u, 12880u), 28u)]));
    return !vec2<bool>(all(select(vec4<bool>(false, arg_1, true, false), select(vec4<bool>(var_3, global1.e, var_3, arg_1), vec4<bool>(arg_1, true, var_3, var_3), arg_1), var_3)), all(!(!vec4<bool>(true, arg_1, false, true))));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(12742i), Struct_2(-3130i), global1.c, any(select(!vec3<bool>(global1.d, arg_1, true), select(vec3<bool>(false, false, true), !vec3<bool>(global1.d, false, arg_1), vec3<bool>(true, global1.e, arg_1)), vec3<bool>(true, true, true))), u_input.a.x != u_input.a.x);
    var var_1 = vec2<bool>(all(!select(vec4<bool>(false, global1.e, arg_1, var_0.e), vec4<bool>(global1.d, false, var_0.e, global1.e), !vec4<bool>(global1.d, var_0.d, arg_1, true))), var_0.d);
    let var_2 = all(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1046f, _wgslsmith_f_op_f32(-arg_0), any(vec3<bool>(var_1.x, false, true))))), global1.e));
    var_1 = select(select(vec2<bool>(any(vec3<bool>(true, var_0.d, true)), all(select(vec3<bool>(arg_1, var_0.e, var_0.e), vec3<bool>(var_2, true, true), vec3<bool>(true, arg_1, true)))), select(!vec2<bool>(var_1.x, var_1.x), select(!vec2<bool>(var_1.x, false), vec2<bool>(true, arg_1), all(vec3<bool>(var_2, true, var_2))), global1.d), !var_1.x), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), !vec2<bool>(var_1.x, true), arg_0 <= arg_0), !select(vec2<bool>(global1.d, var_0.d), select(vec2<bool>(var_2, true), vec2<bool>(var_1.x, arg_1), false), false)), any(vec2<bool>(arg_1, var_2)));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) * _wgslsmith_f_op_f32(arg_0 - 1732f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_0, -647f, var_2)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_0)))))));
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-543f, true);
    var var_1 = abs(_wgslsmith_div_vec2_u32(max(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(60560u, 28u)], 28u)]) ^ (vec2<u32>(4294967295u, 1u) ^ vec2<u32>(global0[_wgslsmith_index_u32(5307u, 28u)], 58739u)), min(vec2<u32>(42797u, 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(44696u, 28u)], u_input.b)) ^ select(vec2<u32>(1u, global0[_wgslsmith_index_u32(1u, 28u)]), vec2<u32>(65648u, 4294967295u), vec2<bool>(true, global1.e))), vec2<u32>(~(~u_input.b), 84603u)));
    let var_2 = Struct_3(Struct_2(func_3(vec4<u32>(max(39819u, 1u), global0[_wgslsmith_index_u32(~u_input.b, 28u)], ~var_1.x, ~var_1.x), global1.a, !global1.d)), var_0, ~(~global1.c), global1.e, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(global1.e, false, global1.d, true), select(vec4<bool>(false, global1.d, global1.e, global1.d), vec4<bool>(global1.d, false, false, false), true), any(vec2<bool>(global1.d, global1.e))), select(select(vec4<bool>(global1.d, true, global1.e, global1.e), vec4<bool>(false, global1.d, global1.d, false), vec4<bool>(false, global1.d, global1.e, global1.d)), vec4<bool>(global1.d, true, true, global1.e), global1.e))));
    global1 = Struct_3(Struct_2(abs(func_4(Struct_5(u_input.a.x, -517f), Struct_3(global1.b, Struct_2(1i), vec4<i32>(2147483647i, var_0.a, 61501i, u_input.a.x), true, true), Struct_1(global1.e, -945f)))), var_0, var_2.c, select(true, false, var_2.e), !(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(u_input.b, 28u)] << (1u % 32u)), 28u)] != global0[_wgslsmith_index_u32(firstTrailingBit(32302u), 28u)]));
    let var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(-_wgslsmith_mult_i32(global1.b.a, var_0.a) ^ _wgslsmith_div_i32(~var_2.c.x, _wgslsmith_dot_vec3_i32(global1.c.xyy, vec3<i32>(2147483647i, 2147483647i, 2147483647i))), var_2.a.a, _wgslsmith_div_i32(var_0.a, ~u_input.a.x)), reverseBits(vec3<i32>(1i, ~global1.c.x, _wgslsmith_div_i32(~global1.a.a, ~59707i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-18331i, var_2.c.x, reverseBits(-22976i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-425f, -327f, -103f, 1281f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(761f, -2250f, 1000f, -481f) - vec4<f32>(130f, -438f, 349f, -1747f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-756f, -318f, 2466f, -555f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1320f, -1549f, 1000f, 498f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2187f, 1000f, 734f, 556f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-315f, 1899f, -535f, 871f))))), u_input.a, 2147483647i, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~(~u_input.c)), var_1.x), 28u)]);
}

