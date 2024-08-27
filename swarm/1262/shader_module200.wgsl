struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: bool,
    d: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: array<u32, 26>;

var<private> global2: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(3824u, 44785u), vec2<u32>(4294967295u, 1u));

var<private> global3: vec3<f32>;

var<private> global4: array<u32, 29> = array<u32, 29>(1u, 35569u, 1u, 1u, 66557u, 87929u, 1u, 1u, 0u, 4588u, 0u, 4294967295u, 37576u, 32889u, 4294967295u, 1u, 44685u, 43246u, 77981u, 1u, 1u, 27671u, 0u, 15134u, 0u, 0u, 0u, 27171u, 18275u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3) -> vec3<f32> {
    global2 = array<vec2<u32>, 2>();
    global0 = array<bool, 2>();
    var var_0 = arg_0.a;
    global4 = array<u32, 29>();
    let var_1 = arg_0.a.b;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a.x, arg_0.a.c.a.x, arg_0.d.a.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(ceil(-272f)), _wgslsmith_f_op_f32(-global3.x), -101f), _wgslsmith_div_vec3_f32(var_0.c.a, var_0.c.a)))));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: vec3<u32>) -> vec4<u32> {
    global0 = array<bool, 2>();
    let var_0 = Struct_2(~arg_0, arg_1.x, Struct_1(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(-2147483647i, false, Struct_1(vec3<f32>(966f, global3.x, global3.x), arg_3), vec2<f32>(-438f, global3.x)), u_input.b, abs(global2[_wgslsmith_index_u32(u_input.a, 2u)]), Struct_1(vec3<f32>(269f, global3.x, global3.x), arg_3)))), ~vec3<u32>(u_input.a << (arg_3.x % 32u), _wgslsmith_clamp_u32(u_input.a, 9511u, global1[_wgslsmith_index_u32(8665u, 26u)]), firstLeadingBit(8940u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, 828f)), vec2<f32>(global3.x, global3.x), global0[_wgslsmith_index_u32(arg_3.x, 2u)])));
    global4 = array<u32, 29>();
    var var_1 = vec4<bool>(arg_1.x, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(33878u, var_0.c.b.x), ~global2[_wgslsmith_index_u32(27565u, 2u)])) > ~(~49647u), global0[_wgslsmith_index_u32(~arg_3.x, 2u)], !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, u_input.a, arg_3.x), vec3<u32>(_wgslsmith_add_u32(var_0.c.b.x, 68062u), 4294967295u, var_0.c.b.x)), 2u)]);
    let var_2 = vec3<u32>(arg_3.x, u_input.a, _wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(14967u, 26u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(72722u, 29u)], 26u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3.x, 26u)], 29u)], u_input.a), vec4<u32>(0u, u_input.a, global4[_wgslsmith_index_u32(var_0.c.b.x, 29u)], 4882u)), ~vec4<u32>(1u, 56258u, 49531u, arg_3.x))), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.a, 17433u, global1[_wgslsmith_index_u32(4294967295u, 26u)], var_0.c.b.x), vec4<u32>(u_input.a, 32654u, 65201u, 41752u)), vec4<u32>(4294967295u, arg_3.x, 0u, 22012u)), reverseBits(~vec4<u32>(global4[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 26u)], arg_3.x, global4[_wgslsmith_index_u32(1u, 29u)])))));
    return min(vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 4294967295u) & u_input.a, 26u)], max(~11202u, var_0.c.b.x), ~(~(var_0.c.b.x << (global1[_wgslsmith_index_u32(var_2.x, 26u)] % 32u))), u_input.a << (firstTrailingBit(countOneBits(var_0.c.b.x)) % 32u)), vec4<u32>(global4[_wgslsmith_index_u32(~1u, 29u)] >> ((var_2.x | 28655u) % 32u), arg_3.x, countOneBits(~_wgslsmith_add_u32(4330u, global1[_wgslsmith_index_u32(0u, 26u)])), max(u_input.a, _wgslsmith_clamp_u32(0u, arg_3.x, countOneBits(1u)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: i32) -> vec3<f32> {
    let var_0 = global3.zx;
    var var_1 = min(_wgslsmith_mod_vec4_i32(min(vec4<i32>(0i, 40419i, arg_1.x, arg_1.x), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, -24804i, u_input.b, 45791i), vec4<i32>(2147483647i, -18709i, 73209i, arg_2))), vec4<i32>(1i, arg_2, 5922i, -1i) >> (func_2(u_input.d, vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 26u)], 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(32554u, 2u)], false), vec3<i32>(4959i, -2147483647i, u_input.b), vec3<u32>(1u, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 26u)])) % vec4<u32>(32u))) ^ -select(vec4<i32>(arg_1.x, -28781i, arg_2, arg_0.x) >> (vec4<u32>(u_input.a, 99057u, 8138u, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 29u)], 26u)]) % vec4<u32>(32u)), abs(vec4<i32>(-30217i, u_input.d, arg_2, arg_0.x)), true), -vec4<i32>(i32(-1i) * -30799i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(-1i, -1i, arg_1.x)), _wgslsmith_sub_i32(u_input.d, 0i)), _wgslsmith_add_i32(_wgslsmith_mult_i32(24535i, arg_1.x), -5434i), -2147483647i));
    global1 = array<u32, 26>();
    var var_2 = _wgslsmith_f_op_f32(-var_0.x);
    var var_3 = select(select(vec2<bool>(true, true), !(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 2u)]))), vec2<bool>(true, any(!vec2<bool>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 29u)], 2u)], global0[_wgslsmith_index_u32(68030u, 2u)])))), !select(!select(vec2<bool>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 29u)], 2u)], false), vec2<bool>(global0[_wgslsmith_index_u32(0u, 2u)], true), global0[_wgslsmith_index_u32(u_input.a, 2u)]), select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 2u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], true), global0[_wgslsmith_index_u32(u_input.a, 2u)]), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 29u)], 2u)]), true), false), !(!select(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 2u)], false), vec2<bool>(global0[_wgslsmith_index_u32(3903u, 2u)], false), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 2u)]), vec2<bool>(true, true), arg_2 > 0i)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(-2147483647i, false, Struct_1(vec3<f32>(1057f, global3.x, global3.x), vec3<u32>(90698u, 47740u, 93177u)), vec2<f32>(var_0.x, var_0.x)), arg_0.x, vec2<u32>(24831u, global1[_wgslsmith_index_u32(u_input.a, 26u)]), Struct_1(vec3<f32>(620f, global3.x, var_0.x), vec3<u32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 26u)]))))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + -1082f) * -377f), 945f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec2<i32>(16989i, reverseBits(u_input.d)));
    let var_1 = -2147483647i;
    global0 = array<bool, 2>();
    global1 = array<u32, 26>();
    global3 = _wgslsmith_f_op_vec3_f32(func_1(u_input.c, -abs(~(vec3<i32>(-2147483647i, -45107i, var_1) << (vec3<u32>(0u, 39838u, global1[_wgslsmith_index_u32(25611u, 26u)]) % vec3<u32>(32u)))), u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-28300i, 9693i, -max(4591i, -1i), countOneBits(var_1)) << (vec4<u32>(reverseBits(max(global1[_wgslsmith_index_u32(0u, 26u)], 39044u)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(68824u, 26u)], 29u)], 4294967295u), vec3<u32>(global4[_wgslsmith_index_u32(u_input.a, 29u)], 51244u, 1u), vec3<u32>(4294967295u, u_input.a, 0u)), ~vec3<u32>(global1[_wgslsmith_index_u32(45559u, 26u)], 0u, 1u)), 26u)], global4[_wgslsmith_index_u32(36766u, 29u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(4294967295u, 29u)], 29u)] << (1u % 32u), 26u)], 29u)]) % vec4<u32>(32u)), global3.x);
}

