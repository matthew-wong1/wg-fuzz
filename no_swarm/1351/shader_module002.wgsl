struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
    d: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: Struct_4;

var<private> global2: array<bool, 4>;

var<private> global3: Struct_3 = Struct_3(64245u, Struct_1(92163u, vec3<bool>(false, false, false), 0i, -845f), vec2<u32>(65609u, 1u), 19844u);

var<private> global4: bool;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3) -> vec4<i32> {
    global2 = array<bool, 4>();
    global3 = arg_1;
    return -vec4<i32>(-56351i, 2147483647i, global3.b.c, u_input.b);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    global1 = Struct_4(reverseBits(select(global1.a, vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(global1.a.x, arg_1.a), arg_1.a, select(global3.b.a, arg_1.a, global2[_wgslsmith_index_u32(arg_1.a, 4u)])), true)), u_input.b, Struct_2(arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.d)));
    return global2[_wgslsmith_index_u32(arg_1.a, 4u)];
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = Struct_1(u_input.a.x, global1.c.a.b, abs(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1361f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1134f, 1070f)))))));
    let var_1 = _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b, u_input.b, 28119i) >> (u_input.a % vec3<u32>(32u)), ~(~vec3<i32>(-6436i, 2147483647i, -1i))), _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(arg_0, 40170i, -28193i) << (~vec3<u32>(global1.c.a.a, var_0.a, 0u) % vec3<u32>(32u))), max(~_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, global3.b.c, var_0.c), vec3<i32>(var_0.c, arg_0, -60153i)), vec3<i32>(~global1.b, min(var_0.c, -12835i), _wgslsmith_dot_vec2_i32(vec2<i32>(5345i, var_0.c), vec2<i32>(-24326i, -28909i))))));
    global1 = Struct_4(vec4<u32>(70951u, _wgslsmith_mod_u32(~(5181u ^ global3.d), 66545u), var_0.a, global1.c.a.a), _wgslsmith_sub_i32(_wgslsmith_mod_i32(~abs(4129i), _wgslsmith_sub_i32(global1.b, -12922i)), -2147483647i), Struct_2(global1.c.a), global1.d);
    var var_2 = var_0.b.x;
    let var_3 = Struct_2(global1.c.a);
    return abs(1u);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_2(_wgslsmith_mod_i32(global3.b.c, _wgslsmith_mod_i32(0i, global3.b.c << (6627u % 32u))), global1.c.a, func_1(vec2<i32>(firstTrailingBit(global3.b.c), ~global1.b), Struct_3(global1.a.x, Struct_1(15526u, global3.b.b, -53592i, global1.d.x), ~u_input.a.yz, reverseBits(global1.a.x)))) || !global2[_wgslsmith_index_u32(~firstTrailingBit(global3.c.x), 4u)];
    global3 = Struct_3(0u, global3.b, ~(~global3.c), 1u);
    let var_0 = vec3<i32>(min(firstLeadingBit((16415i ^ global1.c.a.c) & -12644i), global3.b.c << (_wgslsmith_add_u32(u_input.a.x & 4294967295u, u_input.c | global1.a.x) % 32u)), _wgslsmith_mod_i32(global3.b.c << (func_3(-2147483647i) % 32u), firstTrailingBit(max(0i, 1i) << (_wgslsmith_sub_u32(global3.a, u_input.a.x) % 32u))), -u_input.b << (84359u % 32u));
    var var_1 = firstTrailingBit(firstLeadingBit(-min(global1.b, -u_input.b)));
    var var_2 = ~abs(vec4<u32>(u_input.c, _wgslsmith_clamp_u32(7010u, _wgslsmith_clamp_u32(4294967295u, global1.a.x, 102862u), 52865u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(global3.d, u_input.a.x), global3.a), 0u));
    global3 = Struct_3(~_wgslsmith_add_u32(~4294967295u, ~1u), Struct_1(_wgslsmith_mult_u32(global1.c.a.a, _wgslsmith_dot_vec3_u32(~u_input.a, ~vec3<u32>(1u, 10172u, 1u))), global1.c.a.b, ~max(-5047i, abs(-18647i)), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(46649u, 1u), 19u)]))), _wgslsmith_add_vec2_u32(u_input.a.xz, ~vec2<u32>(~105275u, ~var_2.x)), ~0u);
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(((abs(u_input.b) ^ _wgslsmith_clamp_i32(u_input.b, global1.c.a.c, 19963i)) | global3.b.c) << (1u % 32u), ~var_2.xyz, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(48133u, 19u)], global0[_wgslsmith_index_u32(23431u, 19u)]) - -313f), global0[_wgslsmith_index_u32(u_input.a.x, 19u)], global1.c.a.d, _wgslsmith_f_op_f32(abs(global3.b.d))), global1.d), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.b.d - global0[_wgslsmith_index_u32(40052u, 19u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1018f + 860f)) - -436f), global3.b.d), _wgslsmith_f_op_f32(-global1.c.a.d));
}

