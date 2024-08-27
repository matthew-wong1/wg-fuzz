struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 868f;

var<private> global1: array<u32, 8> = array<u32, 8>(1u, 67858u, 4294967295u, 48513u, 1u, 72528u, 12458u, 0u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    return ~(reverseBits(u_input.b) << (0u % 32u)) >= _wgslsmith_sub_u32(~reverseBits(u_input.b), global1[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(1u >> (firstTrailingBit(u_input.b) % 32u), 8u)], ~1u), 8u)]);
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(step(-1505f, 376f));
    var var_0 = 983f;
    var var_1 = select(vec2<bool>(true, all(vec3<bool>(func_3(), all(vec3<bool>(true, true, true)), all(vec2<bool>(false, true))))), select(vec2<bool>(any(vec4<bool>(true, true, true, true)), u_input.d >= _wgslsmith_add_i32(45631i, 8030i)), vec2<bool>(true, true), all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), true))), all(vec4<bool>(true, true, true, true)));
    let var_2 = !(!vec2<bool>(var_1.x, var_1.x));
    var var_3 = reverseBits(-_wgslsmith_dot_vec3_i32(~(~u_input.e), abs(vec3<i32>(-24449i, 41838i, u_input.e.x) | u_input.e)));
    return Struct_1(vec3<u32>(~45874u & ((u_input.c.x & u_input.c.x) << ((74924u & u_input.b) % 32u)), 2506u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)]) & vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(124721u, 8u)], global1[_wgslsmith_index_u32(27913u, 8u)]), ~u_input.a.zyy) & min(~0u, ~4294967295u)), u_input.d, u_input.b);
}

fn func_1() -> f32 {
    global0 = 577f;
    var var_0 = ~0u;
    global1 = array<u32, 8>();
    let var_1 = func_2();
    var var_2 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -852f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1512f))), _wgslsmith_f_op_f32(floor(-279f))), max(vec3<i32>(~(~(-2147483647i)), ~_wgslsmith_clamp_i32(var_1.b, var_1.b, u_input.e.x), -2147483647i), -u_input.e), true, vec2<bool>(select(false, true, true), all(vec4<bool>(false, true, true, true))));
    return -1840f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1());
    var var_1 = reverseBits(vec4<u32>(reverseBits(15272u), countOneBits(43805u) << (~(global1[_wgslsmith_index_u32(u_input.b, 8u)] << (0u % 32u)) % 32u), firstTrailingBit(1u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 8u)], 8u)]));
    let var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, ~u_input.d, u_input.d, u_input.e.x), -(-(vec4<i32>(u_input.e.x, 0i, u_input.e.x, u_input.e.x) ^ vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.d)) & abs(-vec4<i32>(u_input.e.x, -50472i, u_input.d, -2147483647i))));
    var var_3 = abs(var_1.x);
    let var_4 = any(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), !(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, false)), func_3(), true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), true))));
    let var_5 = vec3<i32>(reverseBits(u_input.e.x), u_input.d, -u_input.d);
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -761f))), 399f));
    let var_6 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~4294967295u & var_1.x);
}

