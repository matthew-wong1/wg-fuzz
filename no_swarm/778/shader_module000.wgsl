struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

var<private> global1: array<vec2<bool>, 27>;

var<private> global2: array<u32, 5> = array<u32, 5>(56074u, 5136u, 0u, 0u, 0u);

var<private> global3: Struct_3;

var<private> global4: array<vec3<i32>, 19>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> vec4<u32> {
    var var_0 = ~(~firstLeadingBit(global3.b.yw));
    let var_1 = _wgslsmith_mult_u32(~(~(arg_1.x ^ 1u)), reverseBits(reverseBits(abs(4294967295u))));
    var var_2 = global3.d.d;
    let var_3 = Struct_3(4294967295u, ~max(arg_1, ~vec4<u32>(12845u, global2[_wgslsmith_index_u32(72653u, 5u)], 10122u, 4294967295u)), true, global3.d);
    var var_4 = all(!(!select(select(var_3.d.e, vec2<bool>(global3.d.e.x, arg_0), var_3.c), vec2<bool>(false, false), select(global3.d.e, vec2<bool>(true, true), var_3.c))));
    return max(vec4<u32>(arg_1.x, _wgslsmith_sub_u32(1u, var_3.d.a.x ^ 5107u) ^ _wgslsmith_dot_vec4_u32(~arg_1, vec4<u32>(global2[_wgslsmith_index_u32(var_3.a, 5u)], 64578u, var_1, 19236u)), 0u, global2[_wgslsmith_index_u32(16475u, 5u)]), var_3.d.a);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_2(17258u, 0u, Struct_1(select(func_3(any(vec4<bool>(false, global3.c, global3.d.e.x, global3.d.e.x)), vec4<u32>(global2[_wgslsmith_index_u32(53632u, 5u)], 1u, 0u, 1u)), vec4<u32>(firstTrailingBit(global2[_wgslsmith_index_u32(4294967295u, 5u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 53786u, 1u, global2[_wgslsmith_index_u32(694u, 5u)]), vec4<u32>(global3.a, global2[_wgslsmith_index_u32(78652u, 5u)], 79462u, 4294967295u)), 5315u, 4294967295u), true), -1286i, _wgslsmith_f_op_vec2_f32(-global3.d.c), _wgslsmith_add_i32(24540i, 43858i), vec2<bool>(~26342u > (global2[_wgslsmith_index_u32(global3.b.x, 5u)] | 1u), global3.c)));
    var var_1 = Struct_2(global3.a, var_0.a, global3.d);
    global0 = array<i32, 26>();
    let var_2 = var_0;
    var var_3 = global3.d.b;
    return Struct_3(func_3(all(!vec3<bool>(var_0.c.e.x, false, false)), ~var_2.c.a).x, global3.d.a, var_1.c.e.x, Struct_1(var_2.c.a, ~2147483647i, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c.c.x, global3.d.c.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1424f, -388f) + global3.d.c))), u_input.a, select(!global1[_wgslsmith_index_u32(6514u, 27u)], select(select(global1[_wgslsmith_index_u32(var_2.a, 27u)], vec2<bool>(var_2.c.e.x, global3.d.e.x), true), select(global3.d.e, global3.d.e, var_1.c.e.x), var_1.c.e.x || true), global3.d.e)));
}

fn func_1() -> vec4<i32> {
    global3 = func_2();
    var var_0 = ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.a, global2[_wgslsmith_index_u32(82523u, 5u)], global2[_wgslsmith_index_u32(global3.b.x, 5u)]), global3.d.a.yxy), ~1u, global3.d.a.x), firstTrailingBit(27286u | global2[_wgslsmith_index_u32(global3.d.a.x, 5u)])), ~(~func_2().a));
    let var_1 = i32(-1i) * -global0[_wgslsmith_index_u32(global3.b.x, 26u)];
    var var_2 = Struct_2(~4294967295u, _wgslsmith_dot_vec2_u32(firstTrailingBit(firstLeadingBit(reverseBits(global3.d.a.xz))), global3.d.a.xy & ~max(global3.d.a.wz, global3.d.a.wz)), global3.d);
    var var_3 = global3.d.a.yzz;
    return vec4<i32>(-var_2.c.b, var_1, reverseBits(1i), abs(global3.d.d));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 5>();
    global4 = array<vec3<i32>, 19>();
    global1 = array<vec2<bool>, 27>();
    let var_0 = func_1();
    global4 = array<vec3<i32>, 19>();
    var var_1 = global3.d.a.x;
    var var_2 = Struct_3(~28766u, _wgslsmith_mult_vec4_u32(~abs(global3.b), global3.d.a), global3.c, func_2().d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(707f, -1589f)), var_2.d.c.x) * var_2.d.c.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(532f, global3.d.c.x) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.d.c.x * -273f)))))), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_2.d.c.x)), var_2.d.c.x, 1000f, global3.d.c.x), global3.b.yxy, ~firstLeadingBit(~abs(var_2.a)));
}

