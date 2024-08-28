struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-636f);

var<private> global1: array<i32, 1>;

var<private> global2: array<Struct_1, 18>;

var<private> global3: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(27397i, -6364i, 7895i, -43518i), vec4<i32>(7952i, 8610i, -4552i, 46087i), vec4<i32>(19150i, i32(-2147483648), 2147483647i, 2147483647i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: bool) -> vec2<u32> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-687f + _wgslsmith_f_op_f32(-global0.a)));
    global1 = array<i32, 1>();
    global3 = array<vec4<i32>, 3>();
    global3 = array<vec4<i32>, 3>();
    let var_1 = Struct_1(arg_1.b.c >= abs(firstTrailingBit(max(u_input.a.x, u_input.b.x))), arg_1.a.b.b, false, _wgslsmith_dot_vec4_i32(~global3[_wgslsmith_index_u32(82124u, 3u)], min((vec4<i32>(-22276i, -1i, arg_1.a.b.d, arg_0.d) >> (vec4<u32>(1u, 0u, u_input.b.x, 1u) % vec4<u32>(32u))) & global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), 3u)], vec4<i32>(-arg_0.d, _wgslsmith_add_i32(1i, 1i), global1[_wgslsmith_index_u32(46896u, 1u)], -2147483647i ^ global1[_wgslsmith_index_u32(0u, 1u)]))));
    return vec2<u32>(arg_1.b.a.x, u_input.a.x);
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_3 {
    let var_0 = -19797i;
    global3 = array<vec4<i32>, 3>();
    let var_1 = _wgslsmith_add_i32(_wgslsmith_add_i32(max(var_0, var_0), var_0), global1[_wgslsmith_index_u32(21038u, 1u)]);
    global2 = array<Struct_1, 18>();
    global3 = array<vec4<i32>, 3>();
    return Struct_3(Struct_2(firstLeadingBit(u_input.b), global2[_wgslsmith_index_u32(u_input.a.x, 18u)], _wgslsmith_dot_vec2_u32(u_input.a, func_3(Struct_1(true, vec4<bool>(false, false, false, false), false, 34936i), Struct_3(Struct_2(vec4<u32>(arg_1, 63492u, u_input.a.x, 4294967295u), Struct_1(true, vec4<bool>(false, false, false, true), false, var_0), u_input.b.x), Struct_2(vec4<u32>(arg_1, arg_1, u_input.a.x, 59909u), global2[_wgslsmith_index_u32(4294967295u, 18u)], arg_1)), var_0, true) | _wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(11172u, 16396u)))), Struct_2(u_input.b, global2[_wgslsmith_index_u32(arg_1, 18u)], arg_1));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec2<i32>) -> i32 {
    var var_0 = abs(abs(_wgslsmith_sub_vec2_u32(~countOneBits(u_input.b.wx), ~(~u_input.b.wx))));
    let var_1 = arg_0.b.b.b.x & all(vec4<bool>(any(vec3<bool>(true, true, arg_0.b.b.b.x)), arg_0.a.b.b.x, _wgslsmith_f_op_f32(-global0.a) < global0.a, arg_0.b.b.c));
    return ~(-28615i);
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: i32) -> vec4<i32> {
    global1 = array<i32, 1>();
    var var_0 = firstTrailingBit(u_input.b.x << (firstTrailingBit(~u_input.b.x | abs(u_input.a.x)) % 32u));
    var var_1 = vec2<bool>(true, false);
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(max(abs(arg_2), firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a.x, 1u)])), func_4(func_2(global0.a, u_input.a.x), 627f, max(vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(116521u, 1u)]), vec2<i32>(arg_2, 0i)))), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 2147483647i), -(~(i32(-1i) * -21264i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(-31492i, 2147483647i), _wgslsmith_clamp_vec2_i32(-vec2<i32>(-97721i, global1[_wgslsmith_index_u32(u_input.a.x, 1u)]), firstTrailingBit(vec2<i32>(global1[_wgslsmith_index_u32(33357u, 1u)], 1i)), reverseBits(vec2<i32>(2147483647i, arg_2))))), global3[_wgslsmith_index_u32(19961u, 3u)]);
    var var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a)) - _wgslsmith_f_op_f32(f32(-1f) * -522f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(global0.a + global0.a))), global0.a))));
    return global3[_wgslsmith_index_u32(u_input.a.x, 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 1>();
    let var_0 = _wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(12340u | ((~4294967295u >> (u_input.b.x % 32u)) | u_input.a.x), 3u)], func_1(vec4<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(ceil(1478f)) != global0.a, true, false), false, 0i));
    let var_1 = vec2<bool>(true, true);
    global1 = array<i32, 1>();
    var var_2 = firstTrailingBit(~u_input.b);
    let var_3 = Struct_4(global0.a);
    var var_4 = false;
    global0 = var_3;
    var var_5 = func_2(var_3.a, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-var_5.b.b.d), var_2.zx, -345f, ~(~_wgslsmith_mult_vec2_i32(~vec2<i32>(-17654i, global1[_wgslsmith_index_u32(u_input.a.x, 1u)]), vec2<i32>(global1[_wgslsmith_index_u32(var_2.x, 1u)], global1[_wgslsmith_index_u32(var_5.a.c, 1u)]) | vec2<i32>(var_0, -3536i))));
}

