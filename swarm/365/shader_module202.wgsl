struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<f32>(-1057f, -1983f, 1000f, -1000f)), Struct_1(vec4<f32>(2008f, -162f, -251f, -590f)), Struct_1(vec4<f32>(451f, -765f, 1484f, -711f)), Struct_1(vec4<f32>(-321f, -741f, -1748f, 561f)), Struct_1(vec4<f32>(1440f, 738f, -873f, -397f)), Struct_1(vec4<f32>(864f, -234f, -895f, -545f)), Struct_1(vec4<f32>(2264f, -2173f, -1000f, -791f)), Struct_1(vec4<f32>(355f, -1000f, 923f, 229f)), Struct_1(vec4<f32>(-2460f, 1956f, 1000f, 1140f)), Struct_1(vec4<f32>(-428f, -1824f, 552f, -802f)), Struct_1(vec4<f32>(2607f, 1000f, -106f, -1803f)), Struct_1(vec4<f32>(842f, 1300f, 1153f, -1000f)), Struct_1(vec4<f32>(-756f, -288f, 1085f, 1131f)), Struct_1(vec4<f32>(-676f, -2099f, 1126f, -1000f)), Struct_1(vec4<f32>(631f, 1000f, 1455f, -139f)), Struct_1(vec4<f32>(950f, 1736f, -1464f, 535f)), Struct_1(vec4<f32>(648f, 461f, 108f, -451f)), Struct_1(vec4<f32>(-306f, 306f, 245f, -907f)), Struct_1(vec4<f32>(2515f, -1834f, -388f, 847f)), Struct_1(vec4<f32>(496f, 2039f, -806f, -1000f)), Struct_1(vec4<f32>(510f, -427f, 153f, -1543f)), Struct_1(vec4<f32>(-1000f, 115f, -242f, -553f)), Struct_1(vec4<f32>(-1000f, 2066f, -374f, 1000f)), Struct_1(vec4<f32>(1393f, 386f, 412f, -2334f)), Struct_1(vec4<f32>(347f, -1801f, 1520f, 1470f)), Struct_1(vec4<f32>(-112f, -1090f, -1000f, -1987f)), Struct_1(vec4<f32>(-1000f, -940f, -1000f, -1651f)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> i32 {
    global0 = array<Struct_1, 27>();
    var var_0 = true;
    return firstTrailingBit(70331i);
}

fn func_2() -> i32 {
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a)), 31510u, ~36612u, 4294967295u);
    var var_1 = vec3<bool>(false, true, !all(vec4<bool>(true, true, true, true)));
    var var_2 = vec3<i32>(1i, u_input.b, -1i) & vec3<i32>(func_3(), -32481i, 1i);
    var var_3 = !vec2<bool>(firstLeadingBit(-14809i) < firstLeadingBit(_wgslsmith_mult_i32(u_input.b, var_2.x)), true);
    let var_4 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(4294967295u), ~u_input.a) & vec2<u32>(69798u, 17498u), vec2<u32>(u_input.a, ~(u_input.a | 1u))), u_input.a), 27u)];
    return _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(firstTrailingBit(-vec4<i32>(-13837i, u_input.b, u_input.b, 1780i)), _wgslsmith_add_vec4_i32(~vec4<i32>(10078i, 1i, u_input.b, var_2.x), countOneBits(vec4<i32>(0i, u_input.b, 1i, 1i)))), reverseBits(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, var_2.x, var_2.x, 25620i), vec4<i32>(-20573i, 0i, 2147483647i, -75850i))) >> ((vec4<u32>(var_0.x, var_0.x, u_input.a, 1u) << (vec4<u32>(u_input.a, 47647u, ~u_input.a, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> bool {
    var var_0 = ~min(57033u, arg_0);
    var var_1 = ~(~vec4<i32>(reverseBits(-u_input.b), _wgslsmith_add_i32(-2147483647i, select(-2147483647i, 2147483647i, true)), func_2(), ~(~u_input.b)));
    var_0 = ~u_input.a;
    let var_2 = !select(vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -637f) > arg_1.x, true), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), select(vec2<bool>(true, false), vec2<bool>(true, true), false), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), vec2<bool>(true, all(vec3<bool>(true, true, true))));
    var var_3 = arg_0;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 27>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(438f, -1901f, 251f, 1868f)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(782f, -1288f, -2169f, _wgslsmith_f_op_f32(957f - 1096f)))), vec4<bool>(any(vec4<bool>(true, true, false, false)), all(vec2<bool>(false, false)), true, func_1(u_input.a, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-631f, -437f, 2337f, -1294f), vec4<f32>(1649f, 1984f, 1000f, -1097f))))))));
    var var_1 = Struct_5(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.a, 4294967295u, 37970u), 1u, ~u_input.a, 15021u), ~vec4<u32>(29554u, u_input.a, 0u, 0u))), _wgslsmith_f_op_vec3_f32(var_0.a.xyw * var_0.a.wyx), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * -163f) - _wgslsmith_f_op_f32(ceil(541f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -181f) - var_0.a.x), -868f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(round(340f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-247f)) - var_0.a.x))), global0[_wgslsmith_index_u32(~(u_input.a ^ _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1u, u_input.a)), vec2<u32>(52970u, 88402u))), 27u)], Struct_3(_wgslsmith_f_op_vec4_f32(-var_0.a)));
    let var_2 = var_0.a.x;
    var var_3 = 508u;
    let var_4 = Struct_2(global0[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_dot_vec2_u32(select(_wgslsmith_sub_vec2_u32(~var_1.a.yz, var_1.a.yx), ~var_1.a.wy, vec2<bool>(true, true)), ~(vec2<u32>(16942u, u_input.a) & var_1.a.xx)), _wgslsmith_f_op_f32(min(423f, _wgslsmith_f_op_f32(-var_1.e.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(10945i, u_input.b, -1i ^ u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 0i, u_input.b), vec3<i32>(0i, u_input.b, u_input.b)), 17207i, -1i, 13758i), ~firstTrailingBit(vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b)))), u_input.b, var_4.a.a.zzy);
}

