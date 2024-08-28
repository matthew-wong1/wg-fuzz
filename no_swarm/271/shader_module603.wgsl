struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(-1i, -50900i, -32730i), vec3<i32>(-1i, 0i, 1i), vec3<i32>(-32185i, i32(-2147483648), -52250i), vec3<i32>(i32(-2147483648), -1i, 16342i), vec3<i32>(24049i, 12834i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -8836i, 39093i), vec3<i32>(49528i, -3462i, 1i), vec3<i32>(-29259i, i32(-2147483648), -19437i), vec3<i32>(i32(-2147483648), 2147483647i, -35828i), vec3<i32>(-7278i, -2124i, -1i), vec3<i32>(14305i, 43291i, i32(-2147483648)), vec3<i32>(12673i, -1i, -54269i), vec3<i32>(-19064i, 0i, 2147483647i), vec3<i32>(1i, i32(-2147483648), -4734i), vec3<i32>(-70792i, -58570i, 0i), vec3<i32>(2147483647i, -37475i, 10821i), vec3<i32>(1i, 8957i, 418i), vec3<i32>(30165i, i32(-2147483648), -45679i), vec3<i32>(8432i, -23888i, 0i), vec3<i32>(46323i, -47634i, 2147483647i), vec3<i32>(-71191i, -53813i, 54218i), vec3<i32>(-1i, -15595i, 2147483647i), vec3<i32>(51852i, 25755i, -16933i), vec3<i32>(8062i, -44925i, 25473i), vec3<i32>(32603i, -1i, 0i), vec3<i32>(2147483647i, 0i, -21825i), vec3<i32>(-36850i, -1i, 61618i), vec3<i32>(i32(-2147483648), -8818i, -17153i), vec3<i32>(0i, -11965i, -10120i), vec3<i32>(i32(-2147483648), 0i, 6976i), vec3<i32>(0i, i32(-2147483648), -19336i));

var<private> global2: array<bool, 15>;

var<private> global3: Struct_1;

var<private> global4: vec3<i32> = vec3<i32>(-18398i, 305i, 51914i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<bool> {
    let var_0 = reverseBits(-(~vec2<i32>(_wgslsmith_sub_i32(-2147483647i, global4.x), 0i)));
    global2 = array<bool, 15>();
    var var_1 = ~(-min(vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global3.b, -44949i), vec3<i32>(u_input.e.x, var_0.x, 41755i))), ~global4.zy));
    let var_2 = Struct_3(_wgslsmith_sub_u32(~(countOneBits(52273u) << (_wgslsmith_dot_vec3_u32(u_input.a, u_input.a) % 32u)), u_input.c.x), Struct_1(select(global3.a, select(select(global3.a, vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], false, true), false), !global3.a, !vec3<bool>(global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)], false)), vec3<bool>(true, true, select(global2[_wgslsmith_index_u32(35098u, 15u)], global2[_wgslsmith_index_u32(34236u, 15u)], global2[_wgslsmith_index_u32(19750u, 15u)]))), -19314i));
    var var_3 = Struct_2(Struct_1(select(vec3<bool>(false, all(var_2.b.a), true), !select(vec3<bool>(true, false, global3.a.x), vec3<bool>(global3.a.x, true, true), false), select(var_2.b.a, vec3<bool>(global3.a.x, true, global2[_wgslsmith_index_u32(var_2.a, 15u)]), true)), global4.x));
    return global3.a;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~select(~u_input.c.x, ~0u, arg_1.a.x);
    let var_1 = Struct_2(Struct_1(func_3(), ~global3.b));
    var var_2 = vec2<i32>(arg_0.a.b, firstTrailingBit(_wgslsmith_mult_i32(-firstLeadingBit(arg_0.a.b), 7635i)));
    let var_3 = ~13942i;
    let var_4 = 1i;
    return Struct_1(select(global3.a, !var_1.a.a, true), -23104i);
}

fn func_1(arg_0: vec4<i32>) -> Struct_3 {
    let var_0 = false;
    global3 = func_2(Struct_2(Struct_1(global3.a, global3.b)), Struct_1(vec3<bool>(false, !(!global3.a.x), true), ~(-1i)));
    global3 = Struct_1(select(global3.a, func_2(Struct_2(func_2(Struct_2(Struct_1(global3.a, u_input.e.x)), Struct_1(vec3<bool>(var_0, global3.a.x, global2[_wgslsmith_index_u32(u_input.c.x, 15u)]), u_input.e.x))), Struct_1(global3.a, reverseBits(u_input.b.x))).a, true), ~global3.b);
    var var_1 = u_input.c.x;
    let var_2 = vec3<bool>(true, true, var_0);
    return Struct_3(1u, Struct_1(global3.a, -(_wgslsmith_sub_i32(global4.x, -1i) & func_2(Struct_2(Struct_1(vec3<bool>(false, true, global3.a.x), arg_0.x)), Struct_1(vec3<bool>(true, false, var_2.x), global4.x)).b)));
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> Struct_1 {
    let var_0 = 46299u;
    global4 = -_wgslsmith_div_vec3_i32(select(u_input.d.xxw, vec3<i32>(global4.x, arg_0.b.b, 2147483647i), !global3.a) ^ abs(_wgslsmith_mod_vec3_i32(global1[_wgslsmith_index_u32(var_0, 31u)], global1[_wgslsmith_index_u32(16858u, 31u)])), abs(abs(max(vec3<i32>(u_input.b.x, -44324i, u_input.d.x), u_input.b))));
    let var_1 = func_1(vec4<i32>(_wgslsmith_mod_i32(global4.x, -_wgslsmith_clamp_i32(u_input.e.x, global3.b, 17811i)), _wgslsmith_dot_vec2_i32(u_input.d.wy, ~select(vec2<i32>(1i, -63453i), vec2<i32>(global3.b, arg_0.b.b), arg_0.b.a.yx)), _wgslsmith_clamp_i32(-u_input.d.x, 1i, -10791i), _wgslsmith_mod_i32(abs(global4.x), 2147483647i)));
    global2 = array<bool, 15>();
    global2 = array<bool, 15>();
    return func_1(countOneBits(~vec4<i32>(_wgslsmith_clamp_i32(-75435i, 0i, global4.x), u_input.b.x, ~(-1i), _wgslsmith_mod_i32(var_1.b.b, -39656i)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-261f, 832f) - _wgslsmith_div_f32(1000f, 978f)))), 1215f));
    let var_1 = _wgslsmith_f_op_f32(abs(var_0));
    var var_2 = !(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -858f), _wgslsmith_f_op_f32(-var_0), false)))) > -325f);
    global3 = func_4(func_1(-u_input.e), u_input.c.x);
    let var_3 = select(global1[_wgslsmith_index_u32(~u_input.c.x, 31u)], u_input.b, !func_4(Struct_3(~u_input.c.x, func_4(Struct_3(4294967295u, Struct_1(global3.a, -3369i)), 0u)), (u_input.c.x << (16781u % 32u)) & u_input.c.x).a);
    var var_4 = any(vec2<bool>(false, any(func_3()) & ((2147483647i != var_3.x) != (global2[_wgslsmith_index_u32(22373u, 15u)] || true))));
    var var_5 = vec2<i32>(global3.b, -1i);
    var var_6 = global2[_wgslsmith_index_u32(u_input.c.x << (u_input.a.x % 32u), 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec4<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, u_input.c.x), vec2<u32>(u_input.a.x, 0u)), firstLeadingBit(_wgslsmith_dot_vec3_u32(~u_input.a, ~vec3<u32>(u_input.a.x, u_input.c.x, 0u))), u_input.c.x, ~firstTrailingBit(1u)), ~abs(-global4.yz) >> (firstTrailingBit(~_wgslsmith_mult_vec2_u32(u_input.c, u_input.a.zx)) % vec2<u32>(32u)), vec3<i32>(min(var_3.x, 2147483647i), global3.b, _wgslsmith_div_i32(-37156i, ~(-2147483647i) << (~u_input.c.x % 32u))));
}

