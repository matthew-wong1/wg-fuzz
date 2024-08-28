struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 13>;

var<private> global1: array<Struct_1, 8>;

var<private> global2: u32 = 0u;

var<private> global3: array<bool, 4>;

var<private> global4: f32 = 872f;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec4<f32> {
    return arg_1.a.b;
}

fn func_2() -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~62937u, 8u)];
    let var_1 = -(i32(-1i) * -1i);
    let var_2 = Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1297f, var_0.b.x, var_0.b.x, -773f), vec4<f32>(var_0.b.x, var_0.b.x, 567f, var_0.b.x), global3[_wgslsmith_index_u32(var_0.e.x, 4u)])))), vec3<i32>(-33772i, _wgslsmith_div_i32(0i, firstTrailingBit(var_0.c.x)), -1i), _wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.e.x, var_0.d), var_0.e.zx), abs(var_0.e)));
    let var_3 = global1[_wgslsmith_index_u32(firstTrailingBit(3703u), 8u)];
    let var_4 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~var_3.e.x, _wgslsmith_clamp_u32(7721u, 36437u, 27616u), reverseBits(1u), var_2.a.d), abs(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.e.x, var_3.d, 0u, var_3.e.x), vec4<u32>(0u, 0u, 4294967295u, var_3.e.x))))) << (~var_3.d % 32u);
    return Struct_1(all(vec2<bool>(!var_0.a, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~var_2.a.e.x, ~var_4), 4u)])), _wgslsmith_f_op_vec4_f32(func_3(true, Struct_2(global1[_wgslsmith_index_u32(~(~var_3.d), 8u)]))), vec3<i32>(-7061i, var_0.c.x, ~(var_2.a.c.x << (_wgslsmith_clamp_u32(11006u, var_4, var_0.e.x) % 32u))), 49523u, vec3<u32>(var_4, _wgslsmith_clamp_u32(var_3.e.x | 1u, 32633u, var_4 | (var_2.a.e.x >> (var_3.e.x % 32u))), max(39973u, ~var_0.e.x) ^ var_3.e.x));
}

fn func_4(arg_0: Struct_1) -> u32 {
    global1 = array<Struct_1, 8>();
    global3 = array<bool, 4>();
    var var_0 = vec2<bool>(any(vec3<bool>(arg_0.a, true, func_2().a)), arg_0.a);
    let var_1 = Struct_2(arg_0);
    global4 = var_1.a.b.x;
    return 1u;
}

fn func_5(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    global0 = array<vec3<i32>, 13>();
    var var_0 = firstLeadingBit(vec3<i32>(abs(11165i), -(min(1i, arg_2.a.c.x) << (~arg_2.a.d % 32u)), -(i32(-1i) * -13907i)));
    global1 = array<Struct_1, 8>();
    global0 = array<vec3<i32>, 13>();
    var_0 = vec3<i32>(arg_0.x, -2147483647i >> (firstTrailingBit(arg_2.a.e.x) % 32u), _wgslsmith_div_i32(-3067i, -1i));
    return func_2();
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    var var_0 = func_5(vec3<i32>(1i >> (func_4(func_2()) % 32u), u_input.a.x, _wgslsmith_clamp_i32(-26397i, 1i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a.x, -2147483647i), _wgslsmith_mod_i32(-36399i, u_input.b.x)))), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~125193u), ~(~vec2<u32>(4294967295u, 1u))), 4u)], Struct_2(Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(511f, -2336f, arg_0.x, arg_0.x) + vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b.xw, vec2<i32>(u_input.a.x, u_input.b.x)), ~(-2147483647i), u_input.a.x), ~select(4294967295u, 40614u, true), min(vec3<u32>(4294967295u, 67611u, 74897u), firstLeadingBit(vec3<u32>(23506u, 741u, 47158u))))));
    var_0 = global1[_wgslsmith_index_u32(countOneBits(~(var_0.d & ~var_0.d)), 8u)];
    var var_1 = ~var_0.d;
    global2 = var_0.e.x;
    var var_2 = _wgslsmith_div_vec2_u32(var_0.e.yy, var_0.e.yy);
    return ~_wgslsmith_mod_u32(16833u, var_2.x) >> (27056u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 13>();
    var var_0 = 1860f;
    global2 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(func_1(vec3<f32>(742f, 788f, 340f)), 27601u, reverseBits(1u)), abs(~0u)), vec2<u32>(1u, 69573u)), firstTrailingBit(vec2<u32>(40712u, 1u)));
    global1 = array<Struct_1, 8>();
    let var_1 = func_5(~(reverseBits(-u_input.b.www) & select(abs(u_input.b.zwz), countOneBits(vec3<i32>(-1i, 14347i, -2147483647i)), !vec3<bool>(global3[_wgslsmith_index_u32(39823u, 4u)], global3[_wgslsmith_index_u32(96417u, 4u)], false))), true, Struct_2(global1[_wgslsmith_index_u32(4294967295u, 8u)])).a;
    let var_2 = min(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b.x, u_input.a.x, u_input.b.x, u_input.a.x) ^ _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, -1i, 0i, u_input.a.x), u_input.b), u_input.b), u_input.b) & (reverseBits(_wgslsmith_mod_vec4_i32(~vec4<i32>(1i, -1001i, u_input.a.x, u_input.b.x), ~vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x))) << (vec4<u32>(firstTrailingBit(reverseBits(4294967295u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 1u), vec3<u32>(4294967295u, 59741u, 34937u)), 32268u), ~90864u, 1u) % vec4<u32>(32u)));
    global3 = array<bool, 4>();
    let var_3 = func_5(vec3<i32>(_wgslsmith_sub_i32(-u_input.a.x | abs(-17373i), u_input.a.x), min(select(~(-1i), -13830i, true), 1i), 1i), func_2().a, Struct_2(Struct_1(!global3[_wgslsmith_index_u32(7723u, 4u)] & true, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(237f, 671f, 2569f, 686f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-681f, -1460f, -1073f, -209f))), var_1)), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b.yxz, u_input.b.zwz), vec3<i32>(var_2.x, -2147483647i, 0i)), 37214u, abs(vec3<u32>(4294967295u, 1u, 0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1704f, var_3.b);
}

