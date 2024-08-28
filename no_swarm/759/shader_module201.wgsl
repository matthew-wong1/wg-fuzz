struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: f32;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: bool, arg_3: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, max(arg_0, abs(u_input.c) | _wgslsmith_mod_i32(-62214i, u_input.c)), -2147483647i), arg_0);
    global0 = _wgslsmith_f_op_vec3_f32(arg_3 + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(global0.x, global0.x, arg_2)), _wgslsmith_div_f32(arg_3.x, -728f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = ~(~(~vec4<u32>(32411u, 0u, u_input.d, ~135644u)));
    let var_2 = ~(~max(var_1.x, 55586u));
    let var_3 = true;
    return u_input.b;
}

fn func_3() -> vec3<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -645f) * global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1122f * global0.x)))));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-331f - _wgslsmith_f_op_f32(global0.x - global0.x)))));
    let var_0 = Struct_3(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(max(vec2<i32>(22341i, 1i), vec2<i32>(2147483647i, u_input.c)), max(vec2<i32>(0i, -1i), vec2<i32>(u_input.c, 12595i))) ^ abs(vec2<i32>(1i, -1i) ^ vec2<i32>(u_input.c, 28303i)), vec2<i32>(2147483647i, -u_input.c), select(select(~vec2<i32>(u_input.c, u_input.c), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, u_input.c), vec2<i32>(u_input.c, 1i), vec2<i32>(2147483647i, u_input.c)), vec2<bool>(true, true)), vec2<i32>(firstTrailingBit(10111i), 2147483647i), vec2<bool>(true, true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) + global0.x)), 1395f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -818f, true))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1379f + global0.x) - _wgslsmith_f_op_f32(step(869f, -1047f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-502f * -612f)), global0.x, _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(-302f * -1380f), true))))));
    var var_2 = vec2<u32>(u_input.d, u_input.b);
    return var_1;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_mult_vec2_i32(~(vec2<i32>(-2147483647i, 0i) & arg_0.c.zz) & -countOneBits(arg_0.c.zz), vec2<i32>(arg_1, _wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_1, arg_0.c.x), arg_0.a))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()));
    var var_1 = _wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(arg_2.x, u_input.a.x, arg_0.b, arg_2.x))), ~vec4<u32>(9683u, arg_0.b, ~1u, ~0u)) << (max(reverseBits(vec4<u32>(60074u, 0u, arg_2.x, ~arg_2.x)), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, 33138u, 67811u), vec4<u32>(arg_0.b, arg_0.b, u_input.d, 1u)) << (~vec4<u32>(39355u, 22612u, arg_0.b, arg_0.b) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var var_2 = ~_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.d), ~(~vec2<u32>(54061u, 4294967295u)));
    let var_3 = arg_0.c.yyw;
    return Struct_2(global0.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.a);
    let var_1 = 458f;
    global1 = var_0;
    global1 = arg_0.a;
    global1 = 333f;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, select(select(vec3<u32>(func_1(u_input.c, vec3<i32>(u_input.c, 19863i, u_input.c), false, vec3<f32>(global0.x, global0.x, global0.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(47736u, u_input.d, 66915u, 20021u), vec4<u32>(4294967295u, 92464u, 34131u, 31444u)), _wgslsmith_add_u32(4294967295u, u_input.a.x)), vec3<u32>(u_input.b, ~u_input.b, abs(u_input.a.x)), vec3<bool>(true, true, true)), ~(~vec3<u32>(111701u, u_input.a.x, 4294967295u)) | ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.b, u_input.a.x), vec3<u32>(u_input.a.x, 65059u, u_input.d), vec3<u32>(u_input.b, 4294967295u, u_input.d)), true & all(vec4<bool>(true, false, true, false))), global0.x, _wgslsmith_add_i32(_wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 30178i, -1i, -79663i), vec4<i32>(18995i, u_input.c, -21374i, 1i)), u_input.c), ~(-1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, -2845f, func_4(func_2(Struct_1(u_input.c, u_input.a.x, vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c), vec4<bool>(false, false, false, false)), -2434i, u_input.a), func_2(Struct_1(-9358i, 17642u, vec4<i32>(5791i, 2147483647i, u_input.c, 0i), vec4<bool>(true, false, false, false)), 994i, vec2<u32>(u_input.a.x, 53231u)), ~vec2<i32>(u_input.c, u_input.c)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.x, global0.x)), -1000f)));
}

