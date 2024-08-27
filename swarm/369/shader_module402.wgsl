struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_3) -> i32 {
    let var_0 = !all(arg_1);
    let var_1 = vec3<i32>(-1i) * -u_input.d.wyz;
    var var_2 = Struct_2(Struct_1(-max(~var_1.x, _wgslsmith_mult_i32(13559i, arg_3.b.d)), min(firstTrailingBit(countOneBits(1u)), 36437u), arg_0.b.b, var_1.x));
    var var_3 = Struct_2(Struct_1(global0.x, arg_0.b.c, _wgslsmith_clamp_u32(0u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_3.b.c, u_input.a.x, arg_0.b.c), firstTrailingBit(arg_0.b.b)), u_input.a.x), var_1.x));
    let var_4 = Struct_2(Struct_1(var_2.a.d, abs(_wgslsmith_clamp_u32(4294967295u, arg_0.b.b, 16831u)) ^ select(4294967295u, ~arg_0.b.c, arg_1.x), var_2.a.c, _wgslsmith_mult_i32(11067i, -countOneBits(1787i))));
    return -((_wgslsmith_dot_vec4_i32(u_input.d & vec4<i32>(16655i, var_1.x, var_1.x, var_1.x), -vec4<i32>(var_4.a.d, 13623i, 0i, global0.x)) | firstLeadingBit(8746i)) >> (~(~(~4294967295u)) % 32u));
}

fn func_2() -> bool {
    let var_0 = Struct_2(Struct_1(~global0.x & u_input.d.x, 33802u, u_input.a.x, u_input.c.x));
    let var_1 = -2147483647i;
    let var_2 = Struct_3(reverseBits(var_1), Struct_1(-func_3(Struct_3(var_1, var_0.a), vec3<bool>(true, false, false), -1000f, Struct_3(15860i, var_0.a)), 43835u & min(_wgslsmith_sub_u32(117502u, u_input.a.x), _wgslsmith_mult_u32(var_0.a.b, var_0.a.b)), 37489u, 7647i));
    let var_3 = Struct_1(u_input.d.x >> (106782u % 32u), var_2.b.b, ~countOneBits(10765u), 53248i);
    let var_4 = !(!(all(vec4<bool>(false, false, false, true)) | true));
    return !((4294967295u == var_3.c) | !all(!vec2<bool>(var_4, var_4)));
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<bool>(all(!vec3<bool>(true, select(false, false, true), true)), true);
    global0 = -(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, global0.x, 2147483647i) | vec3<i32>(global0.x, global0.x, global0.x), ~u_input.c.zxy) & ~(firstLeadingBit(vec3<i32>(global0.x, 23794i, u_input.d.x)) << (vec3<u32>(u_input.a.x, 0u, u_input.a.x) % vec3<u32>(32u))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -133f)) * _wgslsmith_f_op_f32(-276f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1106f, 1000f)))), _wgslsmith_f_op_f32(floor(1670f)));
    let var_2 = (~firstTrailingBit(max(u_input.a.x, u_input.a.x)) < u_input.a.x) | (func_2() || false);
    global0 = u_input.c.wyw;
    return Struct_1(-2147483647i, u_input.a.x & u_input.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(4294967295u, u_input.a.x, 43661u)), max(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, 24270u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, 19860u, 1u)))), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u) >> (vec3<u32>(u_input.a.x, 21810u, u_input.a.x) % vec3<u32>(32u)), vec3<u32>(26950u, 78029u, _wgslsmith_div_u32(0u, 93176u)))), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = func_1();
    let var_2 = ~(~var_1.c) << (var_1.c % 32u);
    var_1 = func_1();
    let var_3 = Struct_1(select(-func_1().d, -(~_wgslsmith_sub_i32(var_1.d, -2147483647i)), var_0), ~(~(firstLeadingBit(var_2) ^ ~u_input.a.x)), var_2, u_input.b);
    var var_4 = Struct_3(_wgslsmith_dot_vec3_i32(~(select(u_input.d.wyz, vec3<i32>(var_1.a, 43992i, 0i), false) ^ (vec3<i32>(-35062i, 0i, -47775i) | vec3<i32>(-16994i, -25614i, var_3.d))), abs(u_input.c.yyw) ^ vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a, var_3.d, u_input.d.x, global0.x), vec4<i32>(1i, 0i, -41657i, var_3.d)), var_3.a, var_1.d)), var_3);
    var var_5 = firstLeadingBit(~vec4<u32>(1u, _wgslsmith_clamp_u32(0u, ~var_1.b, 49021u), var_1.b, 1u));
    var_4 = Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(~select(var_1.d, -1i, var_0), var_4.b.d, -23293i), select(~vec3<i32>(var_3.d, global0.x, var_4.b.a), -(~u_input.c.yyz), !(var_4.b.c != 42436u))), var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(abs(39213u));
}

