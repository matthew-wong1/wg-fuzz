struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 31> = array<i32, 31>(2147483647i, -2065i, 33877i, 1i, -1i, -23630i, 0i, 0i, 56851i, 0i, 0i, 23825i, -42214i, 1i, 0i, 37878i, i32(-2147483648), 2147483647i, -10470i, 9364i, 1i, -1i, 11898i, -17740i, i32(-2147483648), 60967i, 20301i, 2147483647i, i32(-2147483648), -2416i, 1i);

var<private> global2: bool;

var<private> global3: vec2<i32> = vec2<i32>(-1i, 2147483647i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> bool {
    var var_0 = arg_2;
    let var_1 = vec4<i32>(~_wgslsmith_dot_vec4_i32(reverseBits(~vec4<i32>(global1[_wgslsmith_index_u32(arg_0, 31u)], 20003i, -75774i, 27295i)), countOneBits(~vec4<i32>(global1[_wgslsmith_index_u32(arg_0, 31u)], global3.x, 22935i, 21782i))), global1[_wgslsmith_index_u32(~max(select(arg_0, 4294967295u | u_input.a, true), _wgslsmith_sub_u32(_wgslsmith_div_u32(37171u, 20533u), u_input.a)), 31u)], -41775i, 0i ^ -_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-55110i, global3.x)), select(vec2<i32>(56885i, -27256i), vec2<i32>(10643i, 0i), true)));
    var var_2 = _wgslsmith_f_op_f32(min(arg_2, -1375f));
    global0 = Struct_1(select(global0.a, !select(!vec2<bool>(false, global0.a.x), !vec2<bool>(arg_1.a.x, arg_1.a.x), !arg_1.a), global0.a));
    global3 = var_1.xx;
    return arg_3 < 5250f;
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_2) -> f32 {
    global3 = ~(-arg_2.zy);
    let var_0 = true;
    global2 = global0.a.x;
    global0 = arg_3.a;
    global2 = any(!global0.a);
    return _wgslsmith_f_op_f32(169f - -613f);
}

fn func_2() -> Struct_1 {
    global1 = array<i32, 31>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1250f)), _wgslsmith_f_op_f32(step(767f, -1792f)))) + -591f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-332f, _wgslsmith_f_op_f32(1000f - 1995f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -774f) + 726f) + _wgslsmith_f_op_f32(sign(-468f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(global0.a), Struct_1(vec2<bool>(global0.a.x, global0.a.x)), Struct_1(vec2<bool>(global0.a.x, true))), _wgslsmith_div_i32(58682i, global1[_wgslsmith_index_u32(u_input.a, 31u)]), vec4<i32>(16532i, 0i, global3.x, -21145i), Struct_2(Struct_1(global0.a), Struct_1(global0.a), Struct_1(global0.a)))))))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1688f)))), 945f);
    var var_2 = ~0u;
    var var_3 = Struct_1(global0.a);
    return Struct_1(!vec2<bool>(var_3.a.x, -663f == var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(vec2<bool>(true, select(global0.a.x, false, true))), Struct_1(!global0.a), Struct_1(global0.a));
    var var_1 = u_input.a;
    global2 = global0.a.x;
    global0 = Struct_1(vec2<bool>((func_1(u_input.a, Struct_1(global0.a), -568f, -394f) | global0.a.x) && true, true));
    let var_2 = select(~_wgslsmith_sub_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(4294967295u, 31u)]), vec2<i32>(global1[_wgslsmith_index_u32(17546u, 31u)], -1i)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 62463i), vec2<i32>(1i, 2147483647i), vec2<i32>(2147483647i, global3.x))), _wgslsmith_add_vec2_i32(select(-_wgslsmith_div_vec2_i32(vec2<i32>(global3.x, global3.x), vec2<i32>(global3.x, global3.x)), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(24406u, 31u)], global1[_wgslsmith_index_u32(48994u, 31u)]), vec2<i32>(global1[_wgslsmith_index_u32(6697u, 31u)], 0i)), _wgslsmith_sub_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 31u)], -48550i), vec2<i32>(global3.x, -2147483647i))), all(global0.a)), reverseBits(-select(vec2<i32>(global1[_wgslsmith_index_u32(1u, 31u)], 0i), vec2<i32>(global3.x, 0i), global0.a.x))), all(vec4<bool>(!all(global0.a), true, false, any(vec3<bool>(false, true, false)))));
    var_0 = Struct_2(var_0.c, func_2(), func_2());
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2409f, 1000f, 686f, 852f)), vec4<f32>(1515f, _wgslsmith_f_op_f32(min(850f, 716f)), -413f, _wgslsmith_f_op_f32(ceil(-1628f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -977f)), 776f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(260f - -990f) - _wgslsmith_f_op_f32(floor(1225f))), _wgslsmith_f_op_f32(f32(-1f) * -1114f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(515f, -532f, -554f, 766f))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1296f, 257f, -783f, 901f), vec4<f32>(407f, -2060f, 2296f, 1000f), vec4<bool>(global0.a.x, global0.a.x, var_0.c.a.x, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1515f, -565f, 1000f, -686f)), func_1(u_input.a, Struct_1(var_0.b.a), -1171f, -1373f)))))), false || (-29858i == (_wgslsmith_clamp_i32(-1i, 24677i, var_2.x) | global1[_wgslsmith_index_u32(u_input.a, 31u)]))));
    global2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(0u, var_3.xxw, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, countOneBits(u_input.a), u_input.a), select(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(4294967295u, 1u, 63470u)), _wgslsmith_mod_vec3_u32(vec3<u32>(127615u, u_input.a, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a))), abs(vec3<u32>(u_input.a, 6103u, 1u)) & vec3<u32>(4294967295u, 1u, 0u), (var_2.x >= global3.x) & any(vec3<bool>(true, false, global0.a.x)))));
}

