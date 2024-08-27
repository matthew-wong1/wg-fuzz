struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

var<private> global1: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(-636f, 2746f, -1789f), vec3<f32>(-671f, 468f, 386f), vec3<f32>(1084f, 323f, 1125f), vec3<f32>(-247f, -1000f, 1512f), vec3<f32>(172f, 2877f, 551f), vec3<f32>(-1381f, -1181f, -694f), vec3<f32>(-1297f, -983f, 1299f), vec3<f32>(-107f, 126f, -1313f));

var<private> global2: Struct_1 = Struct_1(50317i);

var<private> global3: array<Struct_1, 11>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    var var_0 = -global2.a;
    global1 = array<vec3<f32>, 8>();
    let var_1 = global3[_wgslsmith_index_u32(4294967295u, 11u)];
    var var_2 = Struct_1(~var_1.a);
    var var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(global2.a, ~max(_wgslsmith_sub_i32(var_2.a, 23127i), min(-1i, 0i))), vec2<i32>(1i, _wgslsmith_add_i32(_wgslsmith_mult_i32(global2.a, ~(-2147483647i)), -(global2.a >> (global0[_wgslsmith_index_u32(1u, 13u)] % 32u)))));
    return 1f;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<i32>) -> vec4<i32> {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 65990u, 4294967295u, u_input.a), vec4<u32>(30516u, u_input.a, 1u, 49253u))), 13u)], global0[_wgslsmith_index_u32(29937u, 13u)], _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 14669u, u_input.a, 0u), vec4<u32>(u_input.a, 1u, 4294967295u, 35955u)), 13u)], 42356u, 34614u)) & global0[_wgslsmith_index_u32(u_input.a, 13u)], 11u)];
    let var_1 = global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42685u, 13u)], 11u)];
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) - arg_0.x));
    let var_3 = Struct_1(var_0.a);
    global1 = array<vec3<f32>, 8>();
    return abs(min(_wgslsmith_add_vec4_i32(-select(vec4<i32>(33918i, arg_1.x, arg_1.x, 2147483647i), vec4<i32>(var_0.a, var_0.a, var_1.a, arg_1.x), vec4<bool>(true, false, true, false)), -_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a, 1642i, 65585i, var_1.a), vec4<i32>(var_1.a, -3413i, 18429i, var_1.a))), select(~abs(vec4<i32>(1i, -20442i, global2.a, 33608i)), vec4<i32>(var_1.a, -1i, -1i, -14427i) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 31666u, 0u, 0u), vec4<u32>(1u, u_input.a, u_input.a, global0[_wgslsmith_index_u32(27779u, 13u)])) % vec4<u32>(32u)), false)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(abs(-func_2(vec2<f32>(-1093f, 230f), vec2<i32>(11851i, 68010i))), (vec4<i32>(32353i, -13784i, arg_0.a, 31335i) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(-13960i, -27468i, arg_0.a, global2.a), vec4<i32>(arg_0.a, arg_0.a, -1i, arg_0.a), vec4<i32>(40640i, arg_0.a, 0i, global2.a))) ^ ~vec4<i32>(global2.a, arg_0.a, 65077i, 24195i)));
    return Struct_1(_wgslsmith_mod_i32(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(26877i, global2.a, 6917i, arg_0.a) & vec4<i32>(arg_0.a, arg_0.a, global2.a, 26830i), vec4<i32>(arg_0.a, -10408i, var_0.a, 1i))), arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global2 = func_1(Struct_1(~countOneBits(_wgslsmith_sub_i32(-2147483647i, global2.a))));
    global2 = func_1(Struct_1(reverseBits(countOneBits(~1i))));
    global0 = array<u32, 13>();
    global0 = array<u32, 13>();
    global2 = global3[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~4294967295u, u_input.a), abs(global0[_wgslsmith_index_u32(u_input.a, 13u)] >> (global0[_wgslsmith_index_u32(u_input.a, 13u)] % 32u))) << (global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~15638u, 1u), 13u)] % 32u)), 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f * 265f), _wgslsmith_f_op_f32(trunc(1000f))))), ~abs((vec2<u32>(u_input.a, 10969u) | vec2<u32>(20791u, u_input.a)) << (select(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 13u)]), false) % vec2<u32>(32u))), _wgslsmith_sub_i32(-(i32(-1i) * -43524i), -2147483647i), ~func_2(vec2<f32>(-943f, -824f), ~vec2<i32>(1675i, 22486i)).xzz);
}

