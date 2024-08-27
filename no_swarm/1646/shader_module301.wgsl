struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 11>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<i32>, 11>();
    global0 = array<vec2<i32>, 11>();
    global0 = array<vec2<i32>, 11>();
    let var_0 = false;
    let var_1 = Struct_1(-_wgslsmith_mult_i32(-3382i, -1i), global0[_wgslsmith_index_u32(31769u, 11u)], 64508u);
    return Struct_1(_wgslsmith_sub_i32(~(~max(u_input.a, 0i)), var_1.b.x), -(~((var_1.b ^ vec2<i32>(2147483647i, 1i)) | select(var_1.b, vec2<i32>(var_1.b.x, 0i), var_0))), ~0u);
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    let var_1 = !vec3<bool>(var_0, ~1i > _wgslsmith_sub_i32(u_input.a ^ u_input.a, select(u_input.a, u_input.a, var_0)), true);
    let var_2 = firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(-9642i, select(u_input.a, -2147483647i, var_0)), u_input.a, -2147483647i)) << (vec3<u32>(1u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(13636u, 0u), vec2<u32>(0u, 1u)), vec2<u32>(21907u, 0u)), abs(~1u)) % vec3<u32>(32u));
    var var_3 = -2293i;
    global0 = array<vec2<i32>, 11>();
    return func_2();
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_2(Struct_1(u_input.a, firstTrailingBit(vec2<i32>(~u_input.a, -43533i)), 1u), abs(~(~4294967295u)), func_1(), _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~86948u, 1u), 11u)] >> (~(~vec2<u32>(4294967295u, 19546u)) % vec2<u32>(32u)), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(12604u, 1u), 11u)]));
    let var_1 = countOneBits(~(~vec4<u32>(func_2().c, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, var_0.c.c, 0u), vec3<u32>(var_0.a.c, 4294967295u, 34273u)), abs(45284u), 4294967295u)));
    let var_2 = Struct_2(func_2(), ~(~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_1.zz, vec2<u32>(var_1.x, 0u)), var_1.xz)), var_0.c, _wgslsmith_mult_i32(~var_0.c.b.x, _wgslsmith_div_i32(~(-11321i), ~(-52426i)) & func_1().a));
    let var_3 = _wgslsmith_clamp_vec2_u32(~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(22919u, 0u), ~var_1.wx, var_1.xx), _wgslsmith_clamp_vec2_u32(vec2<u32>(21003u, 19584u), ~vec2<u32>(var_2.b, var_2.b), ~vec2<u32>(var_0.b, var_2.a.c)), !all(vec3<bool>(false, true, true))), countOneBits(vec2<u32>(var_0.a.c, ~(~var_0.b))), var_1.zy);
    var var_4 = true;
    return ~(~max(var_1.zz, max(_wgslsmith_add_vec2_u32(vec2<u32>(var_3.x, 35037u), var_1.yy), var_3 ^ var_1.xy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<vec2<i32>, 11>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1113f))));
    global0 = array<vec2<i32>, 11>();
    var var_2 = func_2();
    var var_3 = ~_wgslsmith_add_vec2_i32(func_2().b, (var_2.b & var_0.b) << (min(vec2<u32>(var_0.c, 1u), vec2<u32>(113u, var_0.c)) % vec2<u32>(32u))) >> (func_3() % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec3_u32(~vec3<u32>(var_2.c, var_0.c, var_0.c), (vec3<u32>(1u, var_2.c, 39625u) & vec3<u32>(var_2.c, 0u, 9291u)) & abs(vec3<u32>(var_0.c, 21012u, 18376u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1231f, 1000f, 1853f, 654f) * vec4<f32>(-206f, 358f, 514f, -340f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1755f, 418f, 570f, -2051f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(152f, 1447f, 354f, -957f) - vec4<f32>(1169f, -321f, -339f, 1095f)) - vec4<f32>(-835f, 1150f, -257f, -1319f)))), _wgslsmith_add_i32(var_2.b.x << ((0u >> (1u % 32u)) % 32u), abs(~_wgslsmith_sub_i32(-1i, var_2.b.x))));
}

