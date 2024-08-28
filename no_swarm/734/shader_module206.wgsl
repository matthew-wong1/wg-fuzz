struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, false, true), false, vec4<u32>(59331u, 0u, 35138u, 19741u));

var<private> global1: array<bool, 16> = array<bool, 16>(true, true, true, false, true, true, true, false, false, false, true, true, false, true, true, true);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>) -> vec2<u32> {
    global0 = Struct_1(vec3<bool>(true, arg_1.x, !arg_1.x), !arg_1.x, ~global0.c);
    let var_0 = ~vec3<u32>(1u, ~4294967295u, 13247u);
    let var_1 = 50507u;
    var var_2 = Struct_1(arg_1, all(!select(select(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), vec4<bool>(global0.a.x, global0.a.x, arg_1.x, true), arg_1.x), vec4<bool>(global0.a.x, arg_1.x, global0.b, false), !vec4<bool>(arg_1.x, false, true, arg_1.x))), vec4<u32>(15522u, ~min(var_1, _wgslsmith_mod_u32(u_input.a.x, global0.c.x)), ~4294967295u, abs(~(u_input.b | 0u))));
    global0 = Struct_1(select(!select(global0.a, select(vec3<bool>(true, arg_1.x, global0.a.x), vec3<bool>(false, false, var_2.b), var_2.a), select(global0.a, vec3<bool>(global0.a.x, var_2.b, false), global0.a.x)), select(arg_1, arg_1, arg_1.x), (abs(13177u) <= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, var_1), var_2.c)) | global1[_wgslsmith_index_u32(1u | ~var_1, 16u)]), all(arg_1.yx), ~vec4<u32>(_wgslsmith_div_u32(~39403u, countOneBits(arg_0.x)), countOneBits(4294967295u), ~0u, arg_0.x));
    return u_input.a.zy;
}

fn func_2() -> vec2<i32> {
    let var_0 = global0.a.x;
    return ~(-countOneBits(vec2<i32>(-35180i, 2147483647i)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), max(global0.c.xy, func_3(global0.c, global0.a))) % vec2<u32>(32u)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: bool) -> i32 {
    var var_0 = vec3<bool>(true, !global0.b, true);
    let var_1 = func_2();
    let var_2 = ~(~select(reverseBits(vec3<u32>(4294967295u, global0.c.x, u_input.b)), global0.c.xww >> (u_input.a % vec3<u32>(32u)), !global0.b)) >> (vec3<u32>(~u_input.a.x, 0u, u_input.b) % vec3<u32>(32u));
    var var_3 = u_input.a.yx;
    let var_4 = u_input.a.x;
    return 10146i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~_wgslsmith_mult_vec3_u32(~u_input.a, _wgslsmith_add_vec3_u32(~vec3<u32>(0u, global0.c.x, u_input.b), _wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(4294967295u, u_input.b, 43266u)))));
    let var_1 = 1900f;
    let var_2 = Struct_1(global0.a, global0.b, global0.c);
    global1 = array<bool, 16>();
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_add_i32(~_wgslsmith_clamp_i32(2147483647i, ~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 14595i, -21938i), vec3<i32>(-2147483647i, 2147483647i, -1i))), ~max(_wgslsmith_mod_i32(-1i, 15979i), func_1(vec3<f32>(var_1, var_1, 1403f), vec4<f32>(var_1, 1265f, 1365f, var_1), global0.a.xz, true))), abs(_wgslsmith_div_i32(1i, ~0i)) >> (var_0.x % 32u));
    let var_4 = Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), _wgslsmith_f_op_f32(select(var_1, 829f, global1[_wgslsmith_index_u32(global0.c.x, 16u)])) > _wgslsmith_f_op_f32(max(var_1, 1556f))), select(var_2.a, global0.a, global1[_wgslsmith_index_u32((1u >> (global0.c.x % 32u)) & ~var_0.x, 16u)]), select(vec3<bool>(all(vec3<bool>(global0.b, true, false)), false, false), vec3<bool>(true, true, true), true)), any(!select(global0.a, vec3<bool>(false, var_2.b, false), false)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, u_input.a.x), 17024u), 48215u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_2.c.x), u_input.a)), vec4<u32>(7891u, var_0.x, 1u, _wgslsmith_div_u32(0u, var_0.x)), var_2.c));
    var var_5 = var_4;
    global1 = array<bool, 16>();
    global1 = array<bool, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(-352f, ~(-13769i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1))))));
}

