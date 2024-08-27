struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(Struct_1(vec4<f32>(-995f, 716f, -1410f, -2545f), vec3<i32>(12881i, 1i, -2979i), vec3<bool>(false, false, false), vec2<f32>(1510f, -1688f))));

var<private> global1: array<vec2<f32>, 24>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    global0 = array<Struct_3, 1>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1309f)) * _wgslsmith_f_op_f32(f32(-1f) * -1770f));
    var var_1 = -abs(countOneBits(u_input.c));
    var var_2 = _wgslsmith_add_vec4_u32(u_input.b, u_input.b);
    var var_3 = -vec4<i32>(firstTrailingBit(u_input.c), -_wgslsmith_div_i32(0i, u_input.c), u_input.c, (arg_0.x | -10780i) & arg_0.x) ^ (_wgslsmith_div_vec4_i32(vec4<i32>(1i, 0i, abs(arg_0.x), arg_0.x), countOneBits(abs(vec4<i32>(0i, -1i, 18951i, u_input.c)))) & firstLeadingBit(vec4<i32>(i32(-1i) * -11677i, -5660i, 1i, 0i)));
    return -1566f;
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(298f, _wgslsmith_f_op_f32(func_3(vec2<i32>(-1i, 2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.d.x - arg_0.a.d.x) + -1000f), _wgslsmith_f_op_f32(func_3(vec2<i32>(-1i, u_input.c)))))), vec3<i32>(u_input.c, 31165i, ~_wgslsmith_add_i32(arg_0.a.b.x, 45136i) << (1u % 32u)), vec3<bool>(false, all(vec4<bool>(arg_0.a.c.x, any(vec2<bool>(arg_0.a.c.x, false)), false, false)), false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_0.a.a.xz), _wgslsmith_f_op_vec2_f32(vec2<f32>(-269f, -289f) - arg_0.a.d)))) + arg_0.a.a.wz));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = func_2(Struct_3(arg_1));
    global1 = array<vec2<f32>, 24>();
    var var_1 = ~((0u ^ (u_input.a & arg_3.a.x)) & arg_3.a.x) & 0u;
    let var_2 = firstLeadingBit(arg_3.a) ^ (~countOneBits(_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(u_input.a, 1u, 0u, 0u))) >> (vec4<u32>(~(~arg_3.a.x), 0u, arg_3.a.x, arg_3.a.x) % vec4<u32>(32u)));
    let var_3 = func_2(Struct_3(var_0)).b.zz;
    return global0[_wgslsmith_index_u32(~select(4294967295u, var_2.x, !arg_1.c.x), 1u)];
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> u32 {
    let var_0 = func_1(func_1(Struct_1(_wgslsmith_f_op_vec4_f32(arg_0.a.a * func_1(Struct_1(vec4<f32>(-2764f, 1114f, 366f, arg_0.a.a.x), arg_0.a.b, arg_0.a.c, global1[_wgslsmith_index_u32(u_input.a, 24u)]), Struct_1(arg_0.a.a, vec3<i32>(-2780i, u_input.c, u_input.c), arg_0.a.c, global1[_wgslsmith_index_u32(29229u, 24u)]), vec2<f32>(1401f, -518f), Struct_2(u_input.b)).a.a), abs(_wgslsmith_mod_vec3_i32(arg_0.a.b, vec3<i32>(-26162i, u_input.c, arg_0.a.b.x))), select(arg_0.a.c, !arg_0.a.c, arg_0.a.b.x > arg_0.a.b.x), _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(22559u, 24u)])), func_2(Struct_3(func_1(Struct_1(vec4<f32>(arg_0.a.d.x, arg_0.a.d.x, arg_0.a.d.x, 223f), arg_0.a.b, vec3<bool>(true, false, false), vec2<f32>(arg_0.a.d.x, -537f)), Struct_1(vec4<f32>(1206f, arg_0.a.a.x, 1804f, -1000f), arg_0.a.b, vec3<bool>(arg_0.a.c.x, arg_0.a.c.x, arg_1), arg_0.a.a.wx), arg_0.a.d, Struct_2(u_input.b)).a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-1097f, arg_0.a.a.x), vec2<f32>(arg_0.a.a.x, arg_0.a.a.x)))) + _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, 0u), 24u)])), Struct_2(~vec4<u32>(1u, 0u, u_input.d, u_input.e.x) ^ _wgslsmith_div_vec4_u32(vec4<u32>(99686u, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.e.x, u_input.e.x, 14007u, u_input.b.x)))).a, func_1(Struct_1(arg_0.a.a, firstTrailingBit(-vec3<i32>(arg_0.a.b.x, u_input.c, u_input.c)), select(arg_0.a.c, arg_0.a.c, arg_0.a.c), global1[_wgslsmith_index_u32(u_input.a, 24u)]), Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2187f, 455f, 317f, -611f))), -(~arg_0.a.b), func_1(Struct_1(arg_0.a.a, vec3<i32>(arg_0.a.b.x, 0i, u_input.c), vec3<bool>(false, arg_0.a.c.x, arg_0.a.c.x), arg_0.a.d), Struct_1(arg_0.a.a, arg_0.a.b, vec3<bool>(arg_0.a.c.x, arg_1, arg_0.a.c.x), arg_0.a.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.a.x, arg_0.a.d.x)), Struct_2(u_input.b)).a.c, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0.a.d)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(u_input.e.x >> (8012u % 32u), 24u)] - _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(4294967295u, 24u)] - vec2<f32>(756f, -850f)))), Struct_2(u_input.b)).a, global1[_wgslsmith_index_u32(~(~25765u), 24u)], Struct_2(u_input.b >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, 1u, 6911u, 13751u), vec4<u32>(u_input.a, 18761u, 0u, u_input.d)) % vec4<u32>(32u)))).a;
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.e.x, 8567u, 20408u), 20541u), ~82251u), u_input.a) | ~firstLeadingBit(reverseBits(~vec2<u32>(u_input.a, u_input.b.x)));
    var var_2 = Struct_4(var_0.c.x, Struct_2(countOneBits(u_input.b)));
    global1 = array<vec2<f32>, 24>();
    let var_3 = _wgslsmith_f_op_vec4_f32(-var_0.a);
    return firstLeadingBit(_wgslsmith_div_u32(~(~(var_2.b.a.x & 40605u)), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(firstLeadingBit(~u_input.a), (max(13104u, ~41480u) & u_input.a) ^ ~func_4(func_1(Struct_1(vec4<f32>(-484f, -176f, 327f, -814f), vec3<i32>(u_input.c, 8860i, 16364i), vec3<bool>(true, false, true), global1[_wgslsmith_index_u32(89947u, 24u)]), Struct_1(vec4<f32>(2149f, 112f, -1606f, 689f), vec3<i32>(u_input.c, u_input.c, 0i), vec3<bool>(false, false, false), vec2<f32>(572f, -272f)), global1[_wgslsmith_index_u32(u_input.e.x, 24u)], Struct_2(u_input.b)), true), u_input.b.x & u_input.e.x);
    global0 = array<Struct_3, 1>();
    var var_1 = Struct_2(vec4<u32>(abs(u_input.b.x), var_0.x, 0u | _wgslsmith_div_u32(3107u, _wgslsmith_clamp_u32(1u, u_input.a, var_0.x)), ~(~15530u)));
    let var_2 = vec3<i32>(-1i) * -vec3<i32>((u_input.c >> (var_1.a.x % 32u)) & _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(765i, -2147483647i)), _wgslsmith_mult_i32(abs(u_input.c), u_input.c), -u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(0i, var_2, ~var_1.a.yxy, 30773i, _wgslsmith_add_i32(-6461i, 7866i));
}

