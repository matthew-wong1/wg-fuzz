struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<i32, 17>;

var<private> global2: array<vec4<f32>, 8>;

var<private> global3: Struct_2;

var<private> global4: array<i32, 2>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> u32 {
    var var_0 = ~vec3<u32>(_wgslsmith_add_u32(u_input.d, ~(67879u << (0u % 32u))), ~(~1u), _wgslsmith_dot_vec3_u32(~min(vec3<u32>(62138u, 40010u, u_input.d), vec3<u32>(u_input.d, u_input.b.x, 1u)), (vec3<u32>(59107u, 1u, 68515u) ^ vec3<u32>(4294967295u, 1u, u_input.b.x)) << (vec3<u32>(1u, 8586u, u_input.a) % vec3<u32>(32u))));
    var var_1 = arg_0;
    global4 = array<i32, 2>();
    var var_2 = vec3<bool>(u_input.c.x > firstTrailingBit(~_wgslsmith_div_i32(global1[_wgslsmith_index_u32(24431u, 17u)], 6701i)), arg_0.a, (~_wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(1i, 2319i)) ^ global4[_wgslsmith_index_u32(4294967295u, 2u)]) != u_input.e.x);
    let var_3 = arg_0;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(30117u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 4294967295u, 15764u, 29669u), vec4<u32>(1u, var_0.x, u_input.b.x, u_input.d))), (~4294967295u & var_0.x) & abs(min(u_input.b.x, u_input.b.x))), ~(~firstTrailingBit(countOneBits(vec2<u32>(var_0.x, var_0.x)))));
}

fn func_2() -> vec2<i32> {
    let var_0 = Struct_2(global3.a);
    let var_1 = vec4<i32>(u_input.e.x, max(-2147483647i, -17263i), 29061i, global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(func_3(Struct_2(true), var_0.a), reverseBits(u_input.d)), 17u)] ^ 1i);
    global2 = array<vec4<f32>, 8>();
    var var_2 = _wgslsmith_sub_i32(1i | (-27752i >> (~(u_input.d << (8725u % 32u)) % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(1u, 17u)]), vec2<i32>(global4[_wgslsmith_index_u32(u_input.b.x, 2u)], global4[_wgslsmith_index_u32(u_input.b.x, 2u)])), ~31517i, countOneBits(min(1i, -383i)), global4[_wgslsmith_index_u32(4294967295u, 2u)]), var_1));
    global0 = array<Struct_1, 8>();
    return u_input.e;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = ~_wgslsmith_clamp_vec4_u32(~(max(vec4<u32>(0u, u_input.b.x, 4294967295u, 4294967295u), vec4<u32>(23848u, u_input.d, 4294967295u, u_input.d)) & select(vec4<u32>(u_input.a, 50660u, 973u, u_input.d), vec4<u32>(u_input.b.x, u_input.d, 1u, 75184u), vec4<bool>(arg_1.a, arg_1.a, true, true))), ~vec4<u32>(u_input.d, u_input.b.x, _wgslsmith_clamp_u32(34592u, u_input.d, u_input.b.x), 4294967295u), ~vec4<u32>(1u, _wgslsmith_sub_u32(u_input.a, 10101u), func_3(Struct_2(true), false), ~u_input.d));
    let var_1 = u_input.d;
    global1 = array<i32, 17>();
    let var_2 = firstTrailingBit(var_0.zy);
    global2 = array<vec4<f32>, 8>();
    return Struct_2(any(vec4<bool>(false, arg_1.a, false, arg_1.a)));
}

fn func_1() -> StorageBuffer {
    var var_0 = func_4(u_input.c & -func_2(), Struct_2(select(global3.a, true & global3.a, _wgslsmith_add_u32(u_input.b.x, 4294967295u) >= ~u_input.d)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2213f)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -765f)), _wgslsmith_f_op_f32(f32(-1f) * -733f)))));
    let var_1 = global0[_wgslsmith_index_u32(u_input.d, 8u)];
    let var_2 = select(!vec2<bool>(var_0.a, false), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), var_0.a);
    var var_3 = 1u;
    var var_4 = var_2.x;
    return StorageBuffer(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(1i, 2147483647i, global1[_wgslsmith_index_u32(20318u, 17u)], u_input.e.x)) | vec4<i32>(1i, -41982i, -global4[_wgslsmith_index_u32(30384u, 2u)], u_input.e.x), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(-2147483647i, u_input.e.x, -23069i, u_input.e.x), vec4<i32>(-13698i, global1[_wgslsmith_index_u32(u_input.b.x, 17u)], u_input.c.x, global1[_wgslsmith_index_u32(19810u, 17u)]), vec4<bool>(true, false, var_2.x, var_2.x)) | _wgslsmith_add_vec4_i32(vec4<i32>(-28910i, global1[_wgslsmith_index_u32(u_input.a, 17u)], global4[_wgslsmith_index_u32(u_input.d, 2u)], -37442i), vec4<i32>(u_input.c.x, 0i, -8150i, global4[_wgslsmith_index_u32(74071u, 2u)])), vec4<i32>(-2147483647i, ~1992i, _wgslsmith_sub_i32(2147483647i, var_1.b), var_1.b), vec4<i32>(global4[_wgslsmith_index_u32(u_input.a >> (14904u % 32u), 2u)], var_1.b, 0i, u_input.e.x >> (u_input.b.x % 32u)))), -_wgslsmith_add_i32(-16767i, abs(global1[_wgslsmith_index_u32(1u, 17u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1607f, var_1.a, var_1.a))), vec3<f32>(var_1.a, var_1.a, var_1.a))))), ~_wgslsmith_mult_i32(-global1[_wgslsmith_index_u32(u_input.d, 17u)], 0i) & ~0i, _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -u_input.c.x, -_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.b.x, 17u)], var_1.b)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(11347i, 29969i, 3825i, 0i), vec4<i32>(u_input.c.x, u_input.c.x, global1[_wgslsmith_index_u32(10009u, 17u)], global4[_wgslsmith_index_u32(2956u, 2u)])), abs(-20667i), 1i) | -vec3<i32>(-5139i, u_input.e.x, var_1.b), -min(vec3<i32>(var_1.b, 2147483647i, 56770i), vec3<i32>(global4[_wgslsmith_index_u32(56013u, 2u)], -13607i, u_input.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(false);
    global1 = array<i32, 17>();
    var var_1 = vec2<i32>(u_input.c.x, 0i);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2098f), i32(-1i) * -2147483647i);
    var_1 = vec2<i32>(~countOneBits(9977i), -2147483647i);
    let x = u_input.a;
    s_output = func_1();
}

