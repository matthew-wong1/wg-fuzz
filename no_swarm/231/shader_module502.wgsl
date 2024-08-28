struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(19939u, 4294967295u));

var<private> global2: array<i32, 22>;

var<private> global3: array<f32, 25> = array<f32, 25>(1011f, 244f, 673f, -513f, -708f, -1277f, -954f, 1196f, -936f, -141f, -1237f, -1111f, 1391f, 171f, -320f, 750f, 901f, 1106f, 1252f, 1000f, 492f, -615f, -1279f, 1390f, -756f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(global0.yxw);
    var var_1 = var_0;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.a));
    let var_3 = Struct_1(var_0.a);
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.a.x))) <= var_3.a.x;
    return i32(-1i) * -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.b.x, -1i), max(vec2<i32>(-25621i, 1i), vec2<i32>(-1i, global2[_wgslsmith_index_u32(u_input.a, 22u)]))), firstTrailingBit(vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.a, 22u)]) ^ u_input.b.yz));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: bool) -> u32 {
    let var_0 = ~vec4<i32>(func_3(vec4<f32>(global0.x, global0.x, -1407f, 1292f), Struct_1(global0.wxx)) ^ 1i, abs(-firstLeadingBit(u_input.b.x)), global2[_wgslsmith_index_u32(~(~15510u), 22u)], i32(-1i) * -min(-2147483647i, global2[_wgslsmith_index_u32(20388u, 22u)]));
    global0 = vec4<f32>(-284f, global3[_wgslsmith_index_u32(u_input.a, 25u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(586f)) * 265f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(select(~u_input.a, arg_0, arg_3), 25u)])) - _wgslsmith_f_op_f32(-global0.x)));
    var var_1 = select(vec4<u32>(1u << ((4294967295u << ((u_input.a | u_input.a) % 32u)) % 32u), u_input.a, arg_0, _wgslsmith_add_u32(_wgslsmith_mult_u32(firstLeadingBit(u_input.a), max(u_input.a, arg_0)), _wgslsmith_sub_u32(firstTrailingBit(arg_0), arg_0))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a >> (21682u % 32u), arg_0, countOneBits(u_input.a), u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 44298u) | vec4<u32>(u_input.a, 113522u, u_input.a, arg_0), vec4<u32>(66208u, u_input.a, 106263u, u_input.a) << (vec4<u32>(48416u, u_input.a, u_input.a, arg_0) % vec4<u32>(32u)))), any(!select(vec4<bool>(false, false, arg_3, arg_3), vec4<bool>(arg_3, arg_2, true, true), vec4<bool>(arg_3, arg_2, false, arg_3))) & !select(!arg_3, arg_3, true));
    var var_2 = select(all(select(select(vec4<bool>(arg_3, arg_3, arg_2, arg_2), vec4<bool>(true, true, arg_2, false), true), !vec4<bool>(arg_2, false, arg_2, true), select(vec4<bool>(arg_3, true, true, true), vec4<bool>(false, false, arg_2, false), vec4<bool>(true, false, arg_3, false)))) && !(!any(vec2<bool>(true, true))), arg_2, !(_wgslsmith_f_op_f32(floor(global0.x)) > global3[_wgslsmith_index_u32(var_1.x, 25u)]));
    var var_3 = select(~(~1u) >> ((abs(4294967295u) & u_input.a) % 32u), ~u_input.a, select(all(select(vec3<bool>(arg_2, true, false), vec3<bool>(false, arg_3, true), vec3<bool>(false, true, true))), true, arg_2 && !arg_2)) & 1u;
    return _wgslsmith_div_u32(63383u, ~(~3155u)) ^ _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(select(var_1.xyz, vec3<u32>(4381u, arg_0, u_input.a), true), var_1.wxx | var_1.xyy), 4294967295u);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.a.x, _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(11648u, 25u)] - 303f)))), -1604f, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~func_2(1u, arg_2.a.x, true, true), ~_wgslsmith_add_u32(0u, 1u)), 25u)])));
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global0.wyy))));
    var var_1 = var_0.a.x;
    global2 = array<i32, 22>();
    var_1 = var_0.a.x;
    return arg_2;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a, 25u)] - global3[_wgslsmith_index_u32(104843u, 25u)]), 492f))));
    var var_1 = arg_3;
    let var_2 = func_1(u_input.a ^ u_input.a, global2[_wgslsmith_index_u32(0u, 22u)], func_1(1u, -(~u_input.b.x), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a + vec3<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x))))));
    var var_3 = _wgslsmith_mult_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, abs(u_input.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 22u)], 0i), u_input.b.zy), global2[_wgslsmith_index_u32(0u, 22u)]), vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, global2[_wgslsmith_index_u32(u_input.a, 22u)]), u_input.b.x, u_input.b.x << (115303u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-14462i, 17678i), vec2<i32>(global2[_wgslsmith_index_u32(4292u, 22u)], global2[_wgslsmith_index_u32(u_input.a, 22u)])))), ~select(vec4<i32>(u_input.b.x ^ u_input.b.x, -u_input.b.x, countOneBits(global2[_wgslsmith_index_u32(u_input.a, 22u)]), select(global2[_wgslsmith_index_u32(0u, 22u)], u_input.b.x, arg_0)), vec4<i32>(min(-2147483647i, 14677i), u_input.b.x, 2147483647i ^ u_input.b.x, min(-1i, u_input.b.x)), vec4<bool>(true, true || arg_0, arg_2 < 85579u, false)));
    var var_4 = var_2;
    return abs(~abs(~vec3<u32>(30632u, u_input.a, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    var var_1 = ~(((vec3<u32>(u_input.a, u_input.a, 0u) & vec3<u32>(48185u, 4294967295u, 4294967295u)) & reverseBits(vec3<u32>(u_input.a, 85731u, 0u))) << (func_4(all(vec4<bool>(true, false, false, false)), Struct_1(global0.yyy), ~u_input.a, func_1(0u, -1i, Struct_1(global0.wzy))) % vec3<u32>(32u))) ^ ~vec3<u32>(~_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), _wgslsmith_sub_u32(~u_input.a, ~u_input.a), _wgslsmith_add_u32(max(u_input.a, 1u), _wgslsmith_div_u32(u_input.a, 4197u)));
    let var_2 = true;
    global2 = array<i32, 22>();
    var_1 = vec3<u32>(31686u, var_1.x ^ (~(~u_input.a) & ~(~var_1.x)), _wgslsmith_add_u32(~(~(~var_1.x)), 15362u));
    var var_3 = ~vec4<i32>(func_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-353f, -820f, 118f, global0.x))), func_1(_wgslsmith_sub_u32(4294967295u, 1u), -2147483647i, func_1(21906u, global2[_wgslsmith_index_u32(u_input.a, 22u)], Struct_1(global0.yyy)))), 15436i, 2147483647i, 48748i | (1i << (_wgslsmith_clamp_u32(var_1.x, 4294967295u, 4294967295u) % 32u)));
    var_1 = select(vec3<u32>(var_1.x, var_1.x, var_1.x), ~vec3<u32>(_wgslsmith_mod_u32(var_1.x, _wgslsmith_sub_u32(u_input.a, 1u)), 58145u, ~u_input.a), func_1(firstTrailingBit(1u), 50757i, Struct_1(_wgslsmith_f_op_vec3_f32(sign(global0.yyx)))).a.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x)))));
    var var_4 = 18356i;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<u32>(~3180u, 3794u, var_1.x, 1u)) ^ vec4<u32>(1u, 4294967295u, 4294967295u, 1u), 22877i, 1u);
}

