struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(false, true, true, true, false, false, false, false, false, false, false, true, true, false, true, false, false, false, false, true, false, true, true, true, false, false, true, false, false);

var<private> global1: vec3<f32> = vec3<f32>(1000f, -972f, 865f);

var<private> global2: Struct_3 = Struct_3(vec3<i32>(19057i, 19305i, 55794i), -1065f, vec4<f32>(729f, -1000f, -2553f, -889f), -628f);

var<private> global3: vec4<i32> = vec4<i32>(i32(-2147483648), -17796i, 1i, -1i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = !(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(306u, 29u)] == true, true, any(vec3<bool>(true, false, false)))));
    let var_1 = global3.x;
    var var_2 = Struct_4(Struct_3(max(vec3<i32>(-2147483647i, 0i, u_input.a.x), global3.wxy), _wgslsmith_f_op_f32(exp2(global1.x)), global2.c, global1.x), select(~vec2<i32>(_wgslsmith_add_i32(-19842i, 10190i), _wgslsmith_mult_i32(-1880i, global3.x)), u_input.a.zz, true), ~vec2<i32>(global3.x >> (1u % 32u), 0i) | u_input.a.wy, firstLeadingBit(u_input.b ^ select(u_input.b, ~u_input.b, vec3<bool>(var_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 29u)], false))));
    var var_3 = var_2.d.x;
    var var_4 = Struct_5(Struct_2(Struct_1(2147483647i), false, -1i));
    return var_4.a.c;
}

fn func_1(arg_0: Struct_3) -> vec4<i32> {
    global0 = array<bool, 29>();
    global1 = global2.c.yxy;
    global0 = array<bool, 29>();
    var var_0 = !(!(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(17248u, 1u), 29u)] & true)) | global0[_wgslsmith_index_u32(firstLeadingBit(0u), 29u)];
    var var_1 = Struct_4(arg_0, global2.a.yx, _wgslsmith_clamp_vec2_i32(-min(global3.yy, _wgslsmith_add_vec2_i32(global2.a.xz, vec2<i32>(global3.x, global3.x))), _wgslsmith_add_vec2_i32(arg_0.a.yz, vec2<i32>(func_2(1u), firstLeadingBit(u_input.c))), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(global3.xzx, vec3<i32>(global2.a.x, -1469i, -37429i)), 1i), vec2<i32>(-1i, u_input.c & arg_0.a.x))), ~(~(u_input.b << (vec3<u32>(u_input.d, 41000u, 1u) % vec3<u32>(32u)))) & ~vec3<u32>(~u_input.d, ~9363u, ~4294967295u));
    return abs(u_input.a | u_input.a);
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    global1 = _wgslsmith_div_vec3_f32(global2.c.yxx, _wgslsmith_div_vec3_f32(vec3<f32>(-397f, global1.x, _wgslsmith_f_op_f32(min(251f, global2.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.c.xwz))));
    global1 = _wgslsmith_f_op_vec3_f32(global2.c.yzz * vec3<f32>(global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.d, 555f)))), -1189f));
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(global2.b, -798f), 227f))), -841f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global1.x)), global1.x, (global2.b <= 1489f) || (u_input.a.x == 0i))), -736f)));
    var var_1 = ~(~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 4294967295u, arg_0.x, 4294967295u), ~vec4<u32>(arg_0.x, 124103u, 0u, u_input.d))));
    let var_2 = Struct_4(Struct_3(vec3<i32>(_wgslsmith_add_i32(33297i, -2147483647i), _wgslsmith_mod_i32(0i, 20749i) << (1u % 32u), _wgslsmith_add_i32(-10788i, -58812i) | (global2.a.x << (61024u % 32u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -864f)) - _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x - 169f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global2.c))), _wgslsmith_div_f32(global2.d, _wgslsmith_div_f32(global1.x, global1.x))), global2.a.zz, vec2<i32>(-693i, -2147483647i), min(max(vec3<u32>(_wgslsmith_mod_u32(arg_0.x, 83703u), 29309u, arg_0.x), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_0.x, arg_0.x), vec3<u32>(arg_0.x, 11678u, arg_0.x)), u_input.b | u_input.b)), u_input.b));
    return _wgslsmith_dot_vec2_u32(reverseBits(~_wgslsmith_sub_vec2_u32(~arg_0, u_input.b.zz)), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = firstLeadingBit(~_wgslsmith_add_vec4_i32(~func_1(Struct_3(u_input.a.ywz, 109f, vec4<f32>(197f, global2.c.x, -425f, -306f), global2.b)), max(vec4<i32>(-2147483647i, global3.x, global2.a.x, global2.a.x), u_input.a)));
    let var_0 = select(select(vec3<bool>(true, all(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], true, false, global0[_wgslsmith_index_u32(4294967295u, 29u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 29u)], global0[_wgslsmith_index_u32(u_input.d, 29u)], true), global0[_wgslsmith_index_u32(u_input.b.x, 29u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), 29u)]), !vec3<bool>(select(global0[_wgslsmith_index_u32(u_input.d, 29u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), true, true), !(!(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b.x, 29u)])))), vec3<bool>(global0[_wgslsmith_index_u32(49285u, 29u)], (~210u | u_input.d) == func_3(max(u_input.b.zz, u_input.b.xx)), false), vec3<bool>(!any(!vec3<bool>(true, global0[_wgslsmith_index_u32(20534u, 29u)], global0[_wgslsmith_index_u32(u_input.d, 29u)])), u_input.a.x > abs(global3.x), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, 76461u), 29u)]));
    global2 = Struct_3(-_wgslsmith_mod_vec3_i32(max(select(vec3<i32>(global3.x, global2.a.x, -6874i), global2.a, vec3<bool>(var_0.x, true, true)), u_input.a.ywx), global2.a), 965f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1688f)) + global2.d), global2.d, _wgslsmith_f_op_f32(1983f + global2.d), global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x))))));
    let var_1 = vec4<u32>(~(~(~u_input.b.x)), _wgslsmith_sub_u32(u_input.b.x, ~(~1u)), 18332u, ~61827u);
    global1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -593f)) - 313f))));
    global3 = ~_wgslsmith_div_vec4_i32(vec4<i32>(~_wgslsmith_div_i32(u_input.c, global3.x), _wgslsmith_sub_i32(-13369i, 0i), max(_wgslsmith_mod_i32(u_input.a.x, -2147483647i), u_input.c), ~_wgslsmith_sub_i32(2968i, global2.a.x)), reverseBits(vec4<i32>(global2.a.x, global2.a.x, 7265i, global2.a.x) << (var_1 % vec4<u32>(32u))));
    var var_2 = abs(vec4<i32>(_wgslsmith_dot_vec3_i32(-(~global2.a), firstTrailingBit(global3.wwz | global2.a)), global3.x, -9860i, global2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x);
}

