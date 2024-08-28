struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(321f, -260f, 1067f, -210f, -741f, -1129f, -1574f, -1290f, -962f, 1045f, 257f, 406f, -445f, 101f, -1000f);

var<private> global1: array<u32, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: bool) -> u32 {
    global0 = array<f32, 15>();
    var var_0 = 0i;
    global0 = array<f32, 15>();
    let var_1 = !select(!select(!vec2<bool>(arg_0, false), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), arg_0), !vec2<bool>(true, arg_0)), !vec2<bool>(u_input.a == u_input.b, false), select(vec2<bool>(true, arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_0), arg_0), select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, arg_0), arg_0)));
    var var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(select(~_wgslsmith_mod_i32(u_input.a, u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, u_input.a, 38433i), vec4<i32>(u_input.b, 1i, u_input.c.x, 1i)), !select(false, arg_0, arg_0)), firstTrailingBit(_wgslsmith_mult_i32(-27044i, firstLeadingBit(0i))), -(~(-u_input.b)), ~24222i), u_input.c);
    return global1[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(countOneBits(22944u), 1u)), 3u)];
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec3<bool>) -> vec2<bool> {
    let var_0 = Struct_1(11859u, arg_3.xz, vec2<bool>(true, false));
    global1 = array<u32, 3>();
    let var_1 = var_0;
    let var_2 = _wgslsmith_div_u32(reverseBits(func_3(any(var_0.b))), _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(0u), arg_1, 30729u, ~0u) ^ max(_wgslsmith_mod_vec4_u32(vec4<u32>(73422u, arg_0.a, 11338u, 66225u), vec4<u32>(var_1.a, var_1.a, var_0.a, arg_2.a)), vec4<u32>(var_0.a, 10287u, 119093u, 4294967295u) | vec4<u32>(arg_0.a, arg_2.a, var_0.a, 1u)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(17323u, 4294967295u, arg_1, var_1.a) >> (vec4<u32>(10212u, 0u, 6605u, var_0.a) % vec4<u32>(32u))), firstLeadingBit(vec4<u32>(arg_2.a, 4294967295u, 4294967295u, 39413u) << (vec4<u32>(8880u, 6663u, 1u, 37950u) % vec4<u32>(32u))))));
    global0 = array<f32, 15>();
    return arg_2.b;
}

fn func_1(arg_0: bool, arg_1: bool) -> i32 {
    global1 = array<u32, 3>();
    global0 = array<f32, 15>();
    global0 = array<f32, 15>();
    let var_0 = u_input.c.yx;
    let var_1 = Struct_1(~global1[_wgslsmith_index_u32(max(~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14517u, 3u)], 3u)], 3u)], 3u)], 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(84842u, 3u)], 3u)], 3u)]), 14246u), 3u)], select(vec2<bool>(arg_0, arg_0), !select(func_2(Struct_1(17749u, vec2<bool>(arg_0, true), vec2<bool>(arg_1, arg_1)), 4342u, Struct_1(global1[_wgslsmith_index_u32(54336u, 3u)], vec2<bool>(arg_0, arg_1), vec2<bool>(false, arg_0)), vec3<bool>(arg_1, arg_1, false)), vec2<bool>(arg_1, true), true), select(all(vec4<bool>(arg_0, true, arg_1, true)), !any(vec4<bool>(arg_1, arg_1, arg_0, arg_1)), arg_0)), vec2<bool>(_wgslsmith_f_op_f32(-1044f + _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1740u, 15u)], 1000f, arg_0))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 15u)] * global0[_wgslsmith_index_u32(31031u, 15u)]) - _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(1u, 15u)]))), all(vec4<bool>(false, arg_0, arg_1, !arg_1))));
    return u_input.c.x & 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 15>();
    let var_0 = _wgslsmith_mod_i32(firstLeadingBit(-19195i), _wgslsmith_div_i32(_wgslsmith_mod_i32(func_1(true, false), 0i), firstTrailingBit(-1i))) >> (firstTrailingBit(global1[_wgslsmith_index_u32(reverseBits(global1[_wgslsmith_index_u32(~31728u, 3u)]), 3u)]) % 32u);
    global0 = array<f32, 15>();
    let var_1 = ~_wgslsmith_dot_vec4_i32(u_input.c, _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(-u_input.c, vec4<i32>(u_input.b, u_input.c.x, -1i, u_input.a), -vec4<i32>(var_0, -841i, u_input.c.x, var_0)), u_input.c));
    let var_2 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~u_input.c.zwy, u_input.c.yzx | u_input.c.zzz), _wgslsmith_dot_vec2_i32(u_input.c.yy, vec2<i32>(2147483647i, 2147483647i))), -65573i, 2147483647i), u_input.a ^ ~(_wgslsmith_sub_i32(60188i, -49947i) | (var_1 & var_0)), _wgslsmith_clamp_i32(62718i, 12401i, firstLeadingBit(-16611i)));
    let var_3 = vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32((vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40232u, 3u)], 3u)], 4294967295u) << (vec2<u32>(global1[_wgslsmith_index_u32(53415u, 3u)], 4294967295u) % vec2<u32>(32u))) | abs(vec2<u32>(global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28875u, 3u)], 3u)])), vec2<u32>(38728u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24581u, 3u)], 3u)], 3u)], 3u)], 3u)]) << (vec2<u32>(4194u, 0u) % vec2<u32>(32u))), 3u)] >= global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(946u, 3u)], 3u)], 3u)])), ~vec2<u32>(1u, 0u)), 3u)], var_2.x < -min(43915i, i32(-1i) * -1i), ~(~(~global1[_wgslsmith_index_u32(4434u, 3u)])) < 0u, any(vec2<bool>(true, true)));
    let var_4 = Struct_1(firstLeadingBit(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], 76413u, 4294967295u, 4294967295u)), ~(~vec4<u32>(1u, 4294967295u, global1[_wgslsmith_index_u32(51391u, 3u)], 1u)))), var_3.yy, vec2<bool>(var_3.x == (_wgslsmith_sub_i32(0i, 1i) > _wgslsmith_mult_i32(-23673i, var_1)), any(!vec2<bool>(var_3.x, false))));
    global0 = array<f32, 15>();
    global0 = array<f32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_clamp_i32(2147483647i, 0i, var_2.x & var_2.x)), ~(~vec3<u32>(var_4.a, ~var_4.a, _wgslsmith_dot_vec3_u32(vec3<u32>(49849u, var_4.a, global1[_wgslsmith_index_u32(34204u, 3u)]), vec3<u32>(var_4.a, global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(var_4.a, 3u)])))), min(vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~16330u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(0u, 3u)], var_4.a, 4294967295u), vec3<u32>(var_4.a, global1[_wgslsmith_index_u32(9898u, 3u)], 1u)), 3u)]), 3u)], select(~var_4.a, 4294967295u, true), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.a, var_4.a, var_4.a), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 3u)], var_4.a))), vec3<u32>(7642u, reverseBits(global1[_wgslsmith_index_u32(var_4.a & var_4.a, 3u)]), min(~38061u, min(var_4.a, var_4.a)))));
}

