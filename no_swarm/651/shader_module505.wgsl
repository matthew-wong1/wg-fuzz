struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 1>;

var<private> global1: array<vec3<i32>, 14>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -236f);
    let var_1 = Struct_2(vec2<u32>(0u, _wgslsmith_dot_vec4_u32(reverseBits(u_input.d), vec4<u32>(4294967295u, u_input.c, ~u_input.c, 33429u))), Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -785f), _wgslsmith_div_f32(1000f, var_0)), var_0), 547f, ~u_input.d.x & u_input.d.x));
    global0 = array<vec2<u32>, 1>();
    return !select(vec3<bool>(any(vec2<bool>(false, false)) || (u_input.d.x >= 27182u), true, false), !vec3<bool>(any(vec2<bool>(false, true)), true, true), select(vec3<bool>(var_0 <= var_0, true, true), vec3<bool>(true, true, true), any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)))));
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<u32>, 1>();
    let var_0 = Struct_2(~vec2<u32>(_wgslsmith_add_u32(u_input.d.x, u_input.d.x), _wgslsmith_clamp_u32(u_input.a.x << (u_input.c % 32u), firstTrailingBit(u_input.c), ~58960u)), Struct_1(180f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -727f) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1332f, -277f), -1000f))), u_input.d.x));
    let var_1 = !all(select(func_3(), func_3(), vec3<bool>(true, false, all(vec2<bool>(true, true)))));
    global0 = array<vec2<u32>, 1>();
    let var_2 = var_0;
    return Struct_1(_wgslsmith_f_op_f32(-var_0.b.b), 117f, ~94480u << (var_2.b.c % 32u));
}

fn func_1() -> i32 {
    var var_0 = func_2();
    var var_1 = var_0.b >= 2148f;
    var var_2 = Struct_2(vec2<u32>(abs(~1u), _wgslsmith_add_u32(~(0u >> (u_input.c % 32u)), ~(0u & u_input.a.x))), func_2());
    var var_3 = vec2<u32>(~(~(var_0.c >> (~1u % 32u))), 42373u);
    var var_4 = -((i32(-1i) * -select(u_input.b.x, 2147483647i, false)) | select(u_input.b.x, u_input.b.x, any(vec2<bool>(true, true))));
    return -max(_wgslsmith_dot_vec2_i32(u_input.b.yy, -vec2<i32>(u_input.b.x, 8427i)), u_input.b.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<bool>) -> StorageBuffer {
    let var_0 = arg_0.x;
    let var_1 = Struct_2(global0[_wgslsmith_index_u32((~(u_input.d.x ^ 0u) >> (_wgslsmith_div_u32(u_input.a.x, u_input.a.x) % 32u)) << (max(22031u, _wgslsmith_mult_u32(arg_1.c, select(arg_1.c, 4294967295u, true))) % 32u), 1u)], func_2());
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(415f)) - _wgslsmith_f_op_f32(ceil(635f)));
    global0 = array<vec2<u32>, 1>();
    let var_3 = !(!arg_3);
    return StorageBuffer(arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 1>();
    var var_0 = any(vec3<bool>(true, true, true));
    let var_1 = u_input.a.x;
    let var_2 = ~(~countOneBits(u_input.a.x));
    global1 = array<vec3<i32>, 14>();
    let x = u_input.a;
    s_output = func_4(vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(479f, _wgslsmith_f_op_f32(floor(1306f)), true)) + _wgslsmith_f_op_f32(f32(-1f) * -496f)), -1026f, var_1), _wgslsmith_add_vec3_i32(select(~vec3<i32>(4143i, 1i, u_input.b.x), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(0u, var_1), 14u)], vec3<bool>(true, true, true)), vec3<i32>(func_1(), ~(-1i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(13985i, u_input.b.x, 36725i, 1i), vec4<i32>(2413i, u_input.b.x, u_input.b.x, u_input.b.x)))), select(vec4<bool>(false && (var_2 != 24405u), any(vec4<bool>(true, true, false, false)), select(false, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !all(vec2<bool>(true, true))), vec4<bool>(true, false, false, false)));
}

