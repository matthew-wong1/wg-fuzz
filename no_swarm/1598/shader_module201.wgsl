struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: array<u32, 16> = array<u32, 16>(34890u, 1u, 55801u, 1u, 19081u, 4294967295u, 12268u, 4294967295u, 0u, 4294967295u, 5259u, 25392u, 24480u, 38043u, 6963u, 0u);

var<private> global2: bool = false;

var<private> global3: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(Struct_2(1u, 1000f), Struct_1(false, 4294967295u, -398f, vec2<i32>(5229i, 9122i))), Struct_3(Struct_2(4294967295u, 2320f), Struct_1(true, 4294967295u, -1170f, vec2<i32>(1i, -33615i))), Struct_3(Struct_2(0u, -256f), Struct_1(false, 0u, 858f, vec2<i32>(-59659i, -22825i))), Struct_3(Struct_2(11012u, 269f), Struct_1(false, 6610u, 1820f, vec2<i32>(0i, 0i))), Struct_3(Struct_2(4404u, 763f), Struct_1(false, 0u, -975f, vec2<i32>(1i, i32(-2147483648)))), Struct_3(Struct_2(0u, 999f), Struct_1(true, 0u, -1742f, vec2<i32>(16707i, -20351i))), Struct_3(Struct_2(1u, -1886f), Struct_1(false, 4294967295u, -842f, vec2<i32>(50121i, 38233i))), Struct_3(Struct_2(0u, -298f), Struct_1(true, 73066u, 385f, vec2<i32>(12698i, 21500i))), Struct_3(Struct_2(0u, -531f), Struct_1(true, 16957u, -1672f, vec2<i32>(28339i, 1i))), Struct_3(Struct_2(1u, 1000f), Struct_1(false, 23016u, 1466f, vec2<i32>(1i, 29096i))));

var<private> global4: array<vec4<u32>, 17>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(_wgslsmith_sub_u32(80467u, abs(1u)) & global1[_wgslsmith_index_u32(~4294967295u, 16u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-381f + _wgslsmith_f_op_f32(ceil(467f))), 1f)) + _wgslsmith_f_op_f32(abs(1f))));
    let var_1 = -700f;
    var var_2 = _wgslsmith_f_op_f32(sign(var_1));
    global0 = array<bool, 13>();
    let var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * var_1) + _wgslsmith_f_op_f32(var_1 - 1826f))))));
    return var_0.a;
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_4(-450f);
    var var_1 = Struct_3(Struct_2(func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-116f))))), Struct_1(all(vec2<bool>(true, true)) && (3047f == _wgslsmith_f_op_f32(min(728f, var_0.a))), arg_0.b, var_0.a, arg_0.d));
    let var_2 = arg_0;
    var var_3 = select(!(!(!select(vec2<bool>(arg_0.a, var_1.b.a), vec2<bool>(false, true), vec2<bool>(arg_0.a, var_1.b.a)))), vec2<bool>(var_1.b.a, all(select(vec3<bool>(true, false, arg_0.a), !vec3<bool>(false, true, var_2.a), var_2.a))), !vec2<bool>(var_1.b.a, select(true, false, true)));
    var var_4 = arg_0.a;
    return 0u;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = arg_2.b.c;
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(func_2(Struct_1(!global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(89791u, 16u)], 16u)], 13u)], arg_2.a.a, _wgslsmith_f_op_f32(-1135f * -1706f), arg_2.b.d))), _wgslsmith_sub_u32(~max(36904u, arg_2.a.a) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(566u, 16u)], 0u, 1u), ~vec3<u32>(arg_2.a.a, 4294967295u, 4423u)) % 32u), _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(106547u, global1[_wgslsmith_index_u32(29818u, 16u)], 0u), vec3<u32>(79180u, global1[_wgslsmith_index_u32(arg_2.a.a, 16u)], arg_2.a.a)), arg_2.b.b))), 10u)];
    var var_2 = vec2<f32>(373f, -1482f);
    var var_3 = Struct_2(func_3(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1266f - 828f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.c)) * var_1.b.c)));
    var var_4 = var_1.b;
    return global3[_wgslsmith_index_u32(abs(1u) | ~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_1.a.a, arg_2.a.a), 66115u) ^ 1u, 16u)], 10u)];
}

fn func_4(arg_0: Struct_3) -> f32 {
    let var_0 = u_input.a;
    global0 = array<bool, 13>();
    var var_1 = max(~60964u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(countOneBits(arg_0.b.b), 16u)], arg_0.b.b), _wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], 58906u) << (vec2<u32>(global1[_wgslsmith_index_u32(arg_0.a.a, 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)]) % vec2<u32>(32u)), vec2<u32>(6874u, 2988u))));
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1002f, arg_0.b.c), _wgslsmith_f_op_f32(arg_0.a.b + _wgslsmith_f_op_f32(step(arg_0.a.b, 925f))), !global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, global1[_wgslsmith_index_u32(arg_0.a.a, 16u)]), 13u)])))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.b), arg_0.b.c))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.c) - arg_0.b.c))));
    let var_2 = reverseBits(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_0.b.d, arg_0.b.d), _wgslsmith_mult_vec2_i32(arg_0.b.d, vec2<i32>(-42693i, -6863i))), _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0.b.d.x, 2147483647i, 1i), vec3<i32>(0i, 44612i, 2147483647i)), firstTrailingBit(_wgslsmith_sub_i32(-1i, -2147483647i)), _wgslsmith_sub_i32(u_input.a, -1i))) ^ ~(abs(vec4<i32>(u_input.a, arg_0.b.d.x, 18395i, var_0)) | ~vec4<i32>(1i, arg_0.b.d.x, u_input.a, var_0));
    return arg_0.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(any(vec3<bool>(true, true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)], 13u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-419f, -1000f)), Struct_3(Struct_2(1u, -582f), Struct_1(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 16u)], 16u)], 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39876u, 16u)], 16u)], 16u)], 16u)], 16u)], -477f, vec2<i32>(-2147483647i, u_input.a))))))) <= _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_0 = Struct_1(!global0[_wgslsmith_index_u32(4336u, 13u)], ~(~(3487u | global1[_wgslsmith_index_u32(abs(3834u), 16u)])), func_1(true || global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)]), 16u)], 16u)], 16u)], 13u)], vec2<f32>(_wgslsmith_f_op_f32(min(726f, -193f)), -852f), global3[_wgslsmith_index_u32(~abs(23327u), 10u)]).a.b, ~select(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -30722i), vec2<i32>(u_input.a, u_input.a)), select(_wgslsmith_mult_vec2_i32(vec2<i32>(-15092i, u_input.a), vec2<i32>(-15879i, u_input.a)), ~vec2<i32>(u_input.a, u_input.a), vec2<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 13u)])), !select(vec2<bool>(false, false), vec2<bool>(true, global0[_wgslsmith_index_u32(56981u, 13u)]), vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 13u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)], 13u)]))));
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(~1u, 13u)], var_0.b, var_0.c, ~(-var_0.d));
    var var_2 = vec4<bool>(false, all(vec2<bool>(false, all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 13u)], var_1.a, global0[_wgslsmith_index_u32(0u, 13u)])))), u_input.a >= select(-2147483647i, 1i, var_1.a), var_0.c < var_0.c);
    let var_3 = func_1(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1343f, var_1.c) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_1.c))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1516f, var_1.c))))), global3[_wgslsmith_index_u32(var_0.b, 10u)]).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.c * 1000f))), -721f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.c - var_3.b), var_3.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.c, var_3.b, var_0.c, -184f), vec4<f32>(-432f, -1000f, var_0.c, var_0.c)))))));
}

