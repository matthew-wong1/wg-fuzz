struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 7>;

var<private> global1: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(-849f, 347f, -1605f), vec3<f32>(-328f, -1676f, 127f), vec3<f32>(-758f, 563f, 1351f), vec3<f32>(428f, 1496f, -794f), vec3<f32>(-883f, -472f, 977f), vec3<f32>(-1618f, 508f, 162f), vec3<f32>(1149f, -1674f, -831f), vec3<f32>(1000f, -1258f, 1130f), vec3<f32>(1000f, 471f, -787f), vec3<f32>(-814f, -120f, 453f), vec3<f32>(523f, -1455f, -1000f), vec3<f32>(-104f, 360f, -1023f), vec3<f32>(-814f, -201f, 569f));

var<private> global2: array<bool, 3>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: i32) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(-652f)), ~reverseBits(~_wgslsmith_add_i32(2147483647i, -2080i)), arg_1, select(!(!vec2<bool>(true, global2[_wgslsmith_index_u32(arg_0, 3u)])), vec2<bool>(global2[_wgslsmith_index_u32(~u_input.a, 3u)], global2[_wgslsmith_index_u32(u_input.a, 3u)]), true));
    var var_1 = ~max(~vec2<u32>(4294967295u, 23742u), reverseBits(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 4294967295u))));
    let var_2 = Struct_2(var_0);
    let var_3 = 0u;
    global2 = array<bool, 3>();
    return var_0.d;
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = vec3<u32>(select(~(~(6290u >> (u_input.a % 32u))), u_input.a, global2[_wgslsmith_index_u32(50900u, 3u)] || (!global2[_wgslsmith_index_u32(43059u, 3u)] == (arg_0.x > arg_0.x))), _wgslsmith_add_u32(~((u_input.a & u_input.a) << (0u % 32u)), _wgslsmith_mod_u32(abs(u_input.a), _wgslsmith_mult_u32(~u_input.a, max(0u, u_input.a)))), ~u_input.a);
    global2 = array<bool, 3>();
    let var_1 = ~_wgslsmith_sub_u32(var_0.x, 0u);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1028f, _wgslsmith_f_op_f32(max(-973f, -1535f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(853f + 1000f), 229f))), ~(~_wgslsmith_add_i32(46331i, 0i)), arg_0.xyw, select(!(!vec2<bool>(global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(67922u, 3u)])), select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 3u)], false), func_3(83994u, arg_0.yyy, 40095i), var_1 < 34151u), select(vec2<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 3u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 3u)]), vec2<bool>(global2[_wgslsmith_index_u32(var_0.x, 3u)], global2[_wgslsmith_index_u32(2584u, 3u)])))));
    let var_3 = -2147483647i;
    return Struct_1(114f, firstTrailingBit((min(var_2.a.b, -2147483647i) << (var_0.x % 32u)) & var_2.a.c.x), ~vec3<i32>(arg_0.x ^ _wgslsmith_add_i32(var_2.a.c.x, -2147483647i), ~(-5315i), 35060i), func_3(var_1, vec3<i32>(var_2.a.b, var_2.a.b, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(1u, 7u)], vec4<i32>(-2147483647i, 0i, 1i, 1i)), abs(arg_0.x), arg_0.x ^ var_3)), -1i));
}

fn func_1() -> i32 {
    global0 = array<vec4<i32>, 7>();
    let var_0 = func_2(_wgslsmith_mult_vec4_i32(-global0[_wgslsmith_index_u32(~60242u, 7u)], vec4<i32>(0i, 0i, -1i, 1i) >> (~vec4<u32>(1u, u_input.a, 30109u, 2928u) % vec4<u32>(32u))) ^ ~reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(21784u, u_input.a), vec2<u32>(0u, u_input.a)), 7u)]));
    var var_1 = var_0.d;
    var_1 = vec2<bool>(false, any(!select(select(vec3<bool>(var_0.d.x, false, false), vec3<bool>(false, var_0.d.x, global2[_wgslsmith_index_u32(u_input.a, 3u)]), vec3<bool>(var_0.d.x, false, var_0.d.x)), !vec3<bool>(var_1.x, var_1.x, true), var_0.a <= 471f)));
    let var_2 = 757f;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 3>();
    global2 = array<bool, 3>();
    let var_0 = Struct_2(Struct_1(674f, 1i, vec3<i32>(func_1(), 0i, 0i) >> (~firstLeadingBit(vec3<u32>(u_input.a, 40771u, 0u)) % vec3<u32>(32u)), vec2<bool>(true, true)));
    var var_1 = countOneBits((i32(-1i) * -2147483647i) >> (u_input.a % 32u));
    var var_2 = 8984u;
    var var_3 = var_0.a;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-670f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.a - var_0.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-200f + -2152f)), all(var_3.d) | global2[_wgslsmith_index_u32(~u_input.a, 3u)])))));
    let var_5 = global0[_wgslsmith_index_u32(~u_input.a, 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(-vec2<i32>(-55792i, var_3.b), _wgslsmith_add_vec2_i32(var_3.c.xx, var_5.yx), firstTrailingBit(var_5.wx)), ~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(8843u, u_input.a, 672u, u_input.a)), abs(~vec4<u32>(18500u, 25680u, u_input.a, 1u))), i32(-1i) * -1i, -firstTrailingBit(~(~var_5.x)));
}

