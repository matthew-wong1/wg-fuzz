struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(-593f, -1i, true), Struct_1(-380f, 0i, false), Struct_1(554f, -24351i, false), Struct_1(819f, 75261i, false), Struct_1(215f, -27867i, false), Struct_1(1381f, 1i, false), Struct_1(-187f, 9009i, false), Struct_1(205f, 26845i, true), Struct_1(-221f, 25915i, false), Struct_1(-170f, i32(-2147483648), false), Struct_1(-1044f, -31968i, false), Struct_1(-1981f, 2147483647i, true));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<i32> {
    var var_0 = !(!vec4<bool>(!(!global0.a.b.c), global0.b.b.c, true, false));
    var var_1 = Struct_2(global0.a.a, global0.b.b, 1u, global0.a.d);
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-800f, var_1.b.a, global0.b.b.c))), _wgslsmith_f_op_f32(-var_1.b.a))) - var_1.b.a), _wgslsmith_f_op_f32(select(var_1.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1311f) - _wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(floor(1000f)))), !all(select(vec3<bool>(global0.a.b.c, global0.a.b.c, var_1.b.c), var_0.wwy, var_0.x))))));
    let var_3 = Struct_2(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d.x, global0.b.d.x), var_1.d) << (select(~var_1.c, _wgslsmith_clamp_u32(var_1.c, var_1.c, 12777u), true) % 32u), 20163u, global0.b.d.x), var_1.b, var_1.c, var_1.d);
    return vec3<i32>(u_input.e.x, 37072i, ~(-_wgslsmith_mult_i32(var_1.b.b, var_3.b.b) ^ global0.b.b.b));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = (func_3() | u_input.e) & -(vec3<i32>(-1i) * -u_input.e);
    var var_1 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(u_input.c, 2147483647i, arg_0.b)), ~abs(vec3<i32>(global0.a.b.b, u_input.d, var_0.x))), ~(-u_input.e)), countOneBits(abs(~0i)));
    var var_2 = global0.b;
    let var_3 = global0.b;
    var_2 = global0.a;
    return firstLeadingBit(var_3.c);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_2 {
    var var_0 = 0u;
    let var_1 = 55417u;
    let var_2 = global0.a.b;
    var_0 = ~arg_2.b.c;
    global1 = array<Struct_1, 12>();
    return global0.b;
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    global0 = Struct_3(Struct_2(min(global0.a.a, vec3<u32>(select(1u, global0.a.d.x, false), global0.b.c, select(global0.a.a.x, global0.a.a.x, true))), global1[_wgslsmith_index_u32(~(~1u), 12u)], _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global0.b.d.x, 1u, 1u, 32240u), vec4<u32>(global0.b.d.x, global0.a.a.x, global0.a.c, 0u)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(global0.b.c, global0.a.d.x, 90158u, global0.a.a.x), vec4<u32>(4294967295u, 21622u, global0.a.c, 0u)))), reverseBits(~(~global0.b.d))), global0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), global0.a.b.a))));
    var var_0 = Struct_3(Struct_2(global0.b.a, global1[_wgslsmith_index_u32(global0.a.d.x, 12u)], ~25804u, abs(countOneBits(firstTrailingBit(vec2<u32>(0u, global0.b.d.x))))), func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.a.x, func_2(Struct_1(arg_0.x, 2147483647i, true)), ~1u), vec3<u32>(global0.a.d.x, 4748u, global0.b.a.x)), Struct_2(vec3<u32>(_wgslsmith_add_u32(1u, global0.a.d.x), 8133u, _wgslsmith_dot_vec2_u32(global0.a.a.xy, global0.b.d)), Struct_1(_wgslsmith_f_op_f32(global0.c.x + 1748f), global0.b.b.b, true), ~1u, global0.a.d), Struct_3(global0.a, Struct_2(vec3<u32>(5014u, 0u, global0.a.a.x), Struct_1(arg_0.x, global0.a.b.b, true), global0.b.d.x, vec2<u32>(global0.b.c, 4294967295u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2080f, arg_0.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(2623f + arg_0.x), _wgslsmith_f_op_f32(1285f - global0.b.b.a)))), _wgslsmith_f_op_vec2_f32(arg_0 + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0 + global0.c))), !(!select(vec2<bool>(global0.b.b.c, global0.a.b.c), vec2<bool>(global0.a.b.c, global0.b.b.c), vec2<bool>(false, global0.b.b.c))))));
    var var_1 = u_input.e.xz;
    var_1 = vec2<i32>(-1i) * -(~firstLeadingBit(-vec2<i32>(28601i, 0i)));
    var var_2 = ~u_input.e.zz;
    return 903f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(global0.c * _wgslsmith_f_op_vec2_f32(global0.c - global0.c)))), global0.b.b.a), global0.b.c, vec3<i32>(-2600i, global0.b.b.b, (1i >> (~global0.b.a.x % 32u)) >> (~(global0.b.a.x >> (76991u % 32u)) % 32u)), reverseBits(global0.b.a));
}

