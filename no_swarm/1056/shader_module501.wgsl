struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1099f;

var<private> global1: bool = true;

var<private> global2: i32;

var<private> global3: array<f32, 17> = array<f32, 17>(1499f, -1000f, 600f, -970f, -574f, -591f, -1430f, -1853f, -211f, -321f, 587f, 179f, 495f, 365f, -578f, -733f, 312f);

var<private> global4: array<vec4<u32>, 18>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    global4 = array<vec4<u32>, 18>();
    let var_0 = reverseBits(u_input.a);
    var var_1 = 1i;
    let var_2 = ~vec3<u32>(var_0.x, ~(~94127u), _wgslsmith_mod_u32(1u, ~(~1u)));
    var_1 = _wgslsmith_add_i32(-39201i, 3981i);
    return -1i << (1u % 32u);
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_mult_i32(abs(abs(-1i)), -u_input.b.x);
    global2 = func_3();
    let var_1 = _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, _wgslsmith_add_u32(_wgslsmith_mult_u32(countOneBits(1u), 23350u), u_input.a.x));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(var_1, 17u)], global3[_wgslsmith_index_u32(0u, 17u)], global3[_wgslsmith_index_u32(0u, 17u)], global3[_wgslsmith_index_u32(0u, 17u)])), vec4<f32>(_wgslsmith_f_op_f32(-644f - global3[_wgslsmith_index_u32(4294967295u, 17u)]), _wgslsmith_f_op_f32(ceil(-326f)), _wgslsmith_f_op_f32(f32(-1f) * -724f), 323f)))));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(~var_1, 17u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-2086f, 1023f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(var_2.a.a.x + var_2.a.a.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_2.a.a.wzy), vec3<f32>(-1059f, var_2.a.a.x, var_2.a.a.x), all(vec3<bool>(false, true, false)))), var_2.a.a.www)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_2.a.a.x, 195f)))));
    return Struct_2(var_2.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    global4 = array<vec4<u32>, 18>();
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(min(~u_input.a, ~vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(~29873u, 0u << (u_input.a.x % 32u))), 47337u), _wgslsmith_add_vec2_u32(~u_input.a, u_input.a));
    var var_1 = func_2().a;
    global2 = u_input.c.x;
    let var_2 = _wgslsmith_sub_vec2_i32(u_input.b, u_input.b) ^ abs(u_input.b);
    return arg_2;
}

fn func_1() -> vec4<f32> {
    let var_0 = func_4(func_2(), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(6631u, 17u)], global3[_wgslsmith_index_u32(0u, 17u)], -254f, global3[_wgslsmith_index_u32(3430u, 17u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1865f, -224f, global3[_wgslsmith_index_u32(74149u, 17u)], 367f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(983f, 258f, global3[_wgslsmith_index_u32(u_input.a.x, 17u)], 205f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-883f, 339f, 863f, -310f))))), func_2(), func_2().a);
    global2 = i32(-1i) * -_wgslsmith_add_i32(-abs(0i), 21777i);
    let var_1 = var_0.a;
    global2 = u_input.b.x;
    global1 = any(select(vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), true, any(vec4<bool>(false, true, true, false)) & select(true, true, false), false), vec4<bool>(true, true, true, true), true));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(29093u, 17u)]))), -449f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 17u)]), _wgslsmith_f_op_f32(-1508f + var_0.a.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.a.x), -1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -1284i;
    global3 = array<f32, 17>();
    global3 = array<f32, 17>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())));
    global4 = array<vec4<u32>, 18>();
    global4 = array<vec4<u32>, 18>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(5409u, 17u)], func_4(Struct_2(var_0), var_0, func_4(Struct_2(Struct_1(var_0.a)), Struct_1(vec4<f32>(1088f, -474f, -384f, global3[_wgslsmith_index_u32(1u, 17u)])), Struct_2(Struct_1(var_0.a)), func_4(Struct_2(Struct_1(vec4<f32>(var_0.a.x, -1524f, var_0.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 17u)]))), Struct_1(var_0.a), Struct_2(Struct_1(var_0.a)), Struct_1(var_0.a)).a), func_2().a).a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(firstLeadingBit(u_input.a.x | u_input.a.x) | 78777u, u_input.a.x), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(countOneBits(2147483647i), firstLeadingBit(u_input.c.x))), select(vec2<i32>(u_input.b.x & u_input.b.x, -12653i), _wgslsmith_add_vec2_i32(u_input.c.yz, _wgslsmith_clamp_vec2_i32(u_input.c.xx, vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.zx)), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-var_0.a.x));
}

