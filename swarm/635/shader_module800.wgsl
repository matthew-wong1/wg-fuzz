struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(55347i, 10851i, 9605i);

var<private> global1: array<bool, 8>;

var<private> global2: Struct_2;

var<private> global3: array<vec3<bool>, 12>;

var<private> global4: array<i32, 19> = array<i32, 19>(0i, -51122i, i32(-2147483648), 2147483647i, -45099i, -17748i, 1i, i32(-2147483648), i32(-2147483648), 15140i, 23489i, -14046i, -20752i, i32(-2147483648), 37992i, 0i, i32(-2147483648), i32(-2147483648), 5302i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    global0 = _wgslsmith_mod_vec3_i32(arg_1 | u_input.a, vec3<i32>(arg_0, global2.a.b ^ u_input.d, u_input.d));
    global3 = array<vec3<bool>, 12>();
    var var_0 = min(~vec4<i32>(_wgslsmith_add_i32(arg_2.b, u_input.d), _wgslsmith_mult_i32(u_input.d, arg_1.x), ~arg_2.b, -5819i) | _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-69063i, arg_0, -1i, u_input.b.x), vec4<i32>(53098i, -1i, 2147483647i, 1i)), ~reverseBits(vec4<i32>(0i, 15941i, global4[_wgslsmith_index_u32(1u, 19u)], global4[_wgslsmith_index_u32(arg_2.c.x, 19u)]))), _wgslsmith_add_vec4_i32(vec4<i32>(arg_2.b, 2147483647i, ~2147483647i, max(u_input.d, -7689i) | -9736i), vec4<i32>(abs(3234i), arg_2.b, ~(-2147483647i), -4100i)));
    var var_1 = Struct_2(global2.a);
    let var_2 = arg_0;
    return ~_wgslsmith_dot_vec2_u32(~var_1.a.c, _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(var_1.a.e, u_input.c)), arg_2.c), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.c.x, arg_2.c.x, 38102u), vec3<u32>(u_input.c, 1u, 1u)), ~arg_2.c.x)));
}

fn func_2() -> i32 {
    let var_0 = ~u_input.c;
    var var_1 = vec4<bool>(false, global2.a.d, global1[_wgslsmith_index_u32(92582u, 8u)], global1[_wgslsmith_index_u32(var_0, 8u)]);
    let var_2 = Struct_2(global2.a);
    global2 = var_2;
    let var_3 = _wgslsmith_add_i32(-2147483647i << ((u_input.c >> (func_3(global0.x, _wgslsmith_sub_vec3_i32(u_input.b, u_input.a), Struct_1(global2.a.a, global4[_wgslsmith_index_u32(0u, 19u)], var_2.a.c, true, 54358u)) % 32u)) % 32u), var_2.a.b & ((u_input.d ^ (u_input.b.x | -63989i)) >> (u_input.c % 32u)));
    return global0.x;
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    global4 = array<i32, 19>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-185f - global2.a.a)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.a), _wgslsmith_f_op_f32(floor(global2.a.a)))))), _wgslsmith_add_i32(_wgslsmith_div_i32(global0.x, func_2()), -2147483647i), global2.a.c, global2.a.d, ~(~(1u >> (select(u_input.c, 4294967295u, true) % 32u))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(global2.a.a, _wgslsmith_f_op_f32(abs(-574f))), ~(i32(-1i) * -25792i), vec2<u32>(~_wgslsmith_sub_u32(1u, u_input.c), 1u), var_0.a > _wgslsmith_f_op_f32(trunc(global2.a.a)), 1713u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-685f)))) - -399f);
    let var_3 = var_1.a;
    return 43107i;
}

fn func_4(arg_0: vec3<bool>, arg_1: i32) -> vec3<u32> {
    return vec3<u32>(global2.a.e, abs(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.c, 9614u)), vec2<u32>(global2.a.c.x, u_input.c) ^ global2.a.c)), global2.a.c.x << (firstTrailingBit(~(~19267u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    let var_1 = true;
    let var_2 = abs(func_4(vec3<bool>((-2147483647i >= u_input.d) | !global1[_wgslsmith_index_u32(0u, 8u)], global2.a.d, !(1264f < global2.a.a)), func_1(vec3<u32>(firstLeadingBit(0u), 1u, ~u_input.c))));
    var var_3 = firstTrailingBit(33246i);
    global2 = Struct_2(global2.a);
    global4 = array<i32, 19>();
    let var_4 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_f_op_f32(sign(279f)))), min(u_input.a.x, -(global4[_wgslsmith_index_u32(u_input.c, 19u)] | global2.a.b)), firstTrailingBit(vec2<u32>(global2.a.c.x, var_2.x)), !(!global2.a.d) & global2.a.d, 4294967295u), global2.a, -global0.x, global3[_wgslsmith_index_u32(global2.a.c.x, 12u)], ~_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(global2.a.c.x, u_input.c)), var_2.yy));
    let var_5 = var_4;
    global2 = Struct_2(Struct_1(594f, -1i, global2.a.c, true, _wgslsmith_clamp_u32(4294967295u, var_5.a.e, ~abs(4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zz, _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.xy, vec2<i32>(_wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(1u, 19u)], global4[_wgslsmith_index_u32(var_2.x, 19u)], 0i), min(-25267i, u_input.d)), vec2<i32>(select(var_4.a.b, 0i, var_4.d.x), 317i)), -countOneBits(vec2<i32>(global0.x, global0.x) ^ u_input.a.xy)));
}

