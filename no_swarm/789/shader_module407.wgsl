struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(1u, 53019u);

var<private> global1: array<vec2<i32>, 21>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_4) -> vec3<bool> {
    global1 = array<vec2<i32>, 21>();
    return select(vec3<bool>(arg_0.b.x, any(vec2<bool>(!arg_0.b.x, arg_0.d.x & true)), true), arg_0.d, !arg_0.d);
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> vec3<i32> {
    global1 = array<vec2<i32>, 21>();
    global1 = array<vec2<i32>, 21>();
    let var_0 = Struct_2(!vec2<bool>(arg_0, all(func_3(Struct_2(vec2<bool>(false, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0), 0u, vec3<bool>(false, arg_0, true)), Struct_3(u_input.c.x, arg_1), Struct_4(arg_1.xy, -1i, vec2<u32>(51667u, u_input.d.x), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2103u, 2u)], 2u)], u_input.c.x, global0[_wgslsmith_index_u32(u_input.e.x, 2u)], u_input.c.x))))), !select(!(!vec4<bool>(false, arg_0, arg_0, arg_0)), select(vec4<bool>(arg_0, false, arg_0, arg_0), select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(true, true, false, true), vec4<bool>(arg_0, true, false, arg_0)), true), arg_0), global0[_wgslsmith_index_u32(~(~u_input.c.x), 2u)], !vec3<bool>(true | arg_0, func_3(Struct_2(vec2<bool>(arg_0, true), vec4<bool>(arg_0, false, arg_0, arg_0), 0u, vec3<bool>(true, arg_0, arg_0)), Struct_3(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], arg_1), Struct_4(arg_1.yw, -2621i, u_input.c, u_input.d)).x, select(!arg_0, all(vec4<bool>(arg_0, false, true, arg_0)), true)));
    global1 = array<vec2<i32>, 21>();
    let var_1 = Struct_1(-(~_wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, -2147483647i, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(30054i, 1i, -2147483647i, -69396i), vec4<i32>(19049i, 8909i, -25877i, 1i)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(trunc(arg_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(1803f + 936f))) + _wgslsmith_f_op_f32(round(arg_1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)))), var_0.c);
    return ~_wgslsmith_add_vec3_i32(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-7400i, 1i, 0i), vec3<i32>(var_1.a, 25325i, 0i)) & min(vec3<i32>(1i, var_1.a, 2147483647i), vec3<i32>(var_1.a, var_1.a, var_1.a))), abs((vec3<i32>(var_1.a, var_1.a, 0i) & vec3<i32>(var_1.a, var_1.a, var_1.a)) | vec3<i32>(var_1.a, 58984i, var_1.a)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_5, arg_2: bool) -> vec3<u32> {
    var var_0 = -_wgslsmith_mod_vec3_i32(func_2(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1171f, arg_0.b.x, arg_0.b.x, 171f) + vec4<f32>(arg_0.b.x, -1643f, arg_0.b.x, arg_0.b.x)) - vec4<f32>(457f, -311f, arg_0.b.x, arg_0.b.x))), max(_wgslsmith_div_vec3_i32(func_2(arg_2, vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x)), vec3<i32>(-1i, -64419i, -1i)), max(firstLeadingBit(vec3<i32>(-48728i, 9975i, -5712i)), vec3<i32>(-11121i, -19934i, 2147483647i))));
    var var_1 = firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(~47562u, ~4294967295u, 3373u), u_input.b << (vec3<u32>(global0[_wgslsmith_index_u32(arg_0.a, 2u)], 25346u, 41230u) % vec3<u32>(32u)))) & u_input.d.x;
    var var_2 = countOneBits(min(_wgslsmith_dot_vec3_u32(min(countOneBits(vec3<u32>(23233u, global0[_wgslsmith_index_u32(1u, 2u)], 1u)), vec3<u32>(u_input.b.x, 4294967295u, global0[_wgslsmith_index_u32(u_input.b.x, 2u)])), ~vec3<u32>(27480u, 0u, arg_0.a) ^ vec3<u32>(25065u, 1u, global0[_wgslsmith_index_u32(1u, 2u)])), 4294967295u));
    return _wgslsmith_div_vec3_u32(firstLeadingBit(~(~(vec3<u32>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], u_input.b.x) >> (vec3<u32>(1u, 1u, u_input.d.x) % vec3<u32>(32u))))), _wgslsmith_sub_vec3_u32(~max(_wgslsmith_clamp_vec3_u32(u_input.d.xyw, vec3<u32>(4294967295u, arg_0.a, global0[_wgslsmith_index_u32(1u, 2u)]), u_input.e), countOneBits(vec3<u32>(arg_0.a, 0u, 120292u))), ~(~vec3<u32>(u_input.d.x, global0[_wgslsmith_index_u32(u_input.d.x, 2u)], 4294967295u)) | vec3<u32>(~42004u, _wgslsmith_sub_u32(arg_0.a, 9165u), u_input.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 21>();
    let var_0 = ~reverseBits(vec2<i32>(13486i << (u_input.a % 32u), firstTrailingBit(~0i)));
    global1 = array<vec2<i32>, 21>();
    var var_1 = Struct_1(6062i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-880f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2337f)) + _wgslsmith_f_op_f32(f32(-1f) * -1393f)), _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(func_1(Struct_3(71629u, vec4<f32>(-413f, 1325f, 200f, -102f)), Struct_5(vec3<bool>(true, true, false)), false), u_input.d.xxx), global0[_wgslsmith_index_u32(countOneBits(~(~31072u)), 2u)]));
    global0 = array<u32, 2>();
    var_1 = Struct_1(var_0.x, _wgslsmith_div_f32(-294f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(2065f)))) - 379f)), var_1.b, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d, ~(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.d, var_1.d, 77213u), vec4<u32>(5988u, 1u, 4294967295u, 40682u))) & var_1.d));
}

