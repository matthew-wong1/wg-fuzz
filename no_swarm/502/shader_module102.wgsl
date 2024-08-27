struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4> = array<f32, 4>(282f, -751f, 1000f, 876f);

var<private> global1: array<f32, 26> = array<f32, 26>(-489f, -1000f, 1063f, 1115f, 928f, -684f, 1000f, 758f, 711f, 1838f, 270f, -991f, 1000f, -884f, 1039f, 1171f, -777f, 1639f, 205f, -1973f, -319f, -233f, -730f, -1548f, -584f, 927f);

var<private> global2: Struct_4;

var<private> global3: array<bool, 6> = array<bool, 6>(true, true, true, true, true, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_3) -> u32 {
    global1 = array<f32, 26>();
    return u_input.b;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: Struct_4) -> vec3<bool> {
    var var_0 = abs(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(17345u, 1924u, 9447u, 0u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(1813u, 17377u, arg_2.b.e.d, 0u), vec4<u32>(0u, 23130u, 4294967295u, 15494u))), vec4<u32>(~global2.b.a.d & 0u, arg_2.b.a.d, arg_2.b.a.d, 30758u)));
    let var_1 = global2.b.c.x;
    var var_2 = Struct_3(!(!select(arg_2.b.a.a, !arg_2.b.a.a, vec3<bool>(true, true, true))), arg_2.b.a, arg_2.b.a.d, Struct_1(global2.b.a.a, vec4<f32>(global2.a.x, global2.a.x, _wgslsmith_f_op_f32(arg_2.b.a.b.x + global1[_wgslsmith_index_u32(~u_input.b, 26u)]), arg_1.x), true | (!global3[_wgslsmith_index_u32(21669u, 6u)] & any(arg_2.b.a.a)), global2.b.e.d));
    var var_3 = vec4<u32>((global2.b.a.d << (64859u % 32u)) | 4294967295u, ~(~(~(~arg_2.b.a.d))), ~17828u, ~var_0.x);
    let var_4 = global2.b.d << (vec3<u32>(0u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(11949u, 1u, 4294967295u, var_3.x), vec4<u32>(63427u, 87652u, global2.b.d.x, 35478u)), countOneBits(72111u)) | _wgslsmith_mod_u32(arg_2.b.a.d | 18293u, ~var_0.x), countOneBits(~_wgslsmith_dot_vec2_u32(var_0.wz, vec2<u32>(var_3.x, 1u)))) % vec3<u32>(32u));
    return vec3<bool>(true, global3[_wgslsmith_index_u32(abs(var_3.x & 4294967295u), 6u)], all(vec3<bool>(select(true, true, any(global2.b.a.a.xy)), arg_2.b.b.x, all(select(vec4<bool>(arg_2.b.b.x, arg_2.b.b.x, true, arg_2.b.e.c), global2.b.b, var_2.b.c)))));
}

fn func_1(arg_0: u32, arg_1: Struct_4) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(!vec3<bool>(!global2.b.e.c, any(global2.b.b), any(global2.b.e.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1085f, global2.a.x, global2.a.x, 2379f), vec4<f32>(-1001f, global0[_wgslsmith_index_u32(6280u, 4u)], -315f, 1790f), false))), _wgslsmith_f_op_vec4_f32(arg_1.a * _wgslsmith_f_op_vec4_f32(-global2.a))), false, arg_1.b.a.d), arg_1.b.b, global2.b.c, min(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 73042u, 53184u, 22437u), vec4<u32>(1u, arg_0, 0u, 0u) | vec4<u32>(arg_1.b.a.d, arg_0, 0u, 1u)), ~func_2(Struct_3(vec3<bool>(global2.b.a.c, global2.b.a.c, global3[_wgslsmith_index_u32(33817u, 6u)]), Struct_1(vec3<bool>(global3[_wgslsmith_index_u32(40451u, 6u)], global2.b.e.c, global3[_wgslsmith_index_u32(41476u, 6u)]), vec4<f32>(global2.a.x, global0[_wgslsmith_index_u32(1u, 4u)], 807f, arg_1.a.x), arg_1.b.b.x, arg_0), u_input.b, Struct_1(vec3<bool>(true, false, global2.b.a.a.x), arg_1.b.e.b, global3[_wgslsmith_index_u32(9723u, 6u)], 1u)))), ~vec3<u32>(~47514u, arg_1.b.e.d, ~9760u)), Struct_1(!vec3<bool>(true, any(vec2<bool>(false, global2.b.b.x)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a - arg_1.b.a.b))), all(func_3(vec4<f32>(global0[_wgslsmith_index_u32(55468u, 4u)], -2490f, 1080f, -895f), _wgslsmith_div_vec4_f32(vec4<f32>(global2.a.x, 1091f, -608f, arg_1.a.x), vec4<f32>(-2623f, -682f, -1652f, -613f)), Struct_4(vec4<f32>(arg_1.b.e.b.x, global0[_wgslsmith_index_u32(61896u, 4u)], global0[_wgslsmith_index_u32(arg_0, 4u)], global1[_wgslsmith_index_u32(arg_0, 26u)]), global2.b))), ~(~0u)));
    let var_1 = arg_1.b;
    global3 = array<bool, 6>();
    let var_2 = var_1.b.x && false;
    global0 = array<f32, 4>();
    return arg_1.b;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec2<bool>) -> vec4<i32> {
    global1 = array<f32, 26>();
    let var_0 = _wgslsmith_dot_vec2_u32(global2.b.d.xy, max(firstTrailingBit(arg_1.d.zx), vec2<u32>((12281u ^ u_input.b) | (0u | arg_1.e.d), ~4294967295u)));
    global0 = array<f32, 4>();
    var var_1 = global2.b.c.x ^ firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_clamp_i32(1i, u_input.c.x, 1i), abs(global2.b.c.x)));
    var var_2 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(25693u, u_input.b), ~arg_1.d.yx) ^ max(global2.b.d.yx, ~arg_1.d.yx);
    return firstLeadingBit(-select(vec4<i32>(-2147483647i, _wgslsmith_div_i32(global2.b.c.x, -25255i), -u_input.d.x, min(-2147483647i, -2147483647i)), ~vec4<i32>(2147483647i, 39511i, 54143i, -8491i) << (vec4<u32>(88194u, 4294967295u, global2.b.e.d, 48975u) % vec4<u32>(32u)), func_2(Struct_3(global2.b.b.xzz, global2.b.e, 31542u, global2.b.e)) > u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 6>();
    global3 = array<bool, 6>();
    global1 = array<f32, 26>();
    var var_0 = global2.b.d.yy;
    global1 = array<f32, 26>();
    global1 = array<f32, 26>();
    var var_1 = true;
    var var_2 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(1i, ~_wgslsmith_sub_i32(global2.b.c.x, 0i), global2.b.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -8864i, u_input.e, 0i), select(vec4<i32>(0i, -4395i, -1i, 35372i), vec4<i32>(-2083i, global2.b.c.x, u_input.a.x, global2.b.c.x), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 6u)], false, global2.b.e.a.x, global3[_wgslsmith_index_u32(var_0.x, 6u)])))), func_4(vec2<i32>(u_input.c.x, u_input.d.x), func_1(0u, Struct_4(vec4<f32>(global2.b.a.b.x, global1[_wgslsmith_index_u32(u_input.b, 26u)], global2.a.x, global1[_wgslsmith_index_u32(u_input.b, 26u)]), global2.b)), func_1(var_0.x, Struct_4(global2.b.a.b, global2.b)).e.a.xy) >> (select(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.b.d.x, global2.b.d.x, 31473u, var_0.x), vec4<u32>(u_input.b, 35042u, u_input.b, var_0.x)), vec4<u32>(4294967295u, 42313u, 6929u, var_0.x) & vec4<u32>(global2.b.e.d, global2.b.a.d, var_0.x, 4294967295u), select(vec4<bool>(false, false, global2.b.a.a.x, false), vec4<bool>(true, global2.b.a.c, global2.b.e.a.x, global3[_wgslsmith_index_u32(global2.b.d.x, 6u)]), global2.b.b.x)) % vec4<u32>(32u))));
}

