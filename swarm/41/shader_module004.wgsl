struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: f32 = 1017f;

var<private> global2: array<vec4<i32>, 9>;

var<private> global3: u32;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    let var_0 = false;
    global3 = ~select(arg_0.x, _wgslsmith_clamp_u32(1u, ~firstLeadingBit(0u), _wgslsmith_mod_u32(~arg_0.x, ~u_input.b.x)), var_0);
    global0 = Struct_5(global0.a, global0.a.b.d < -41435i, global0.c, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(global0.d, global0.c.a, vec3<bool>(true, !global0.a.a.x, all(vec2<bool>(false, false))))))));
    global3 = arg_0.x;
    let var_1 = vec3<i32>(~(~global0.c.d ^ _wgslsmith_dot_vec4_i32(countOneBits(global2[_wgslsmith_index_u32(29965u, 9u)]), ~global2[_wgslsmith_index_u32(16671u, 9u)])), _wgslsmith_mod_i32(u_input.a ^ (u_input.a << (firstLeadingBit(4294967295u) % 32u)), ~select(global0.c.d >> (arg_0.x % 32u), reverseBits(global0.a.b.d), false)), abs(1i));
    return true;
}

fn func_2() -> Struct_5 {
    var var_0 = vec4<bool>(global0.b, any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), func_3(vec2<u32>(_wgslsmith_add_u32(0u >> (global0.a.e.c % 32u), 0u), u_input.b.x)), global0.a.a.x);
    global1 = _wgslsmith_f_op_f32(round(global0.c.b));
    return Struct_5(Struct_2(!global0.a.a, global0.c, ~vec2<i32>(1i, -57846i), global0.a.d, global0.a.b), global0.a.a.x, Struct_1(vec3<f32>(global0.a.d.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(-global0.a.e.b))), 1f), -428f, _wgslsmith_clamp_u32(1u, ~countOneBits(0u), ~(~104353u)), u_input.c), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.b, 1078f, 720f)))))));
}

fn func_1() -> Struct_5 {
    global0 = func_2();
    global2 = array<vec4<i32>, 9>();
    global2 = array<vec4<i32>, 9>();
    var var_0 = func_2().c.c;
    global2 = array<vec4<i32>, 9>();
    return Struct_5(global0.a, true, func_2().c, global0.d);
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: vec3<f32>) -> f32 {
    let var_0 = -_wgslsmith_mod_vec3_i32(-vec3<i32>(arg_1, _wgslsmith_mod_i32(26524i, arg_1), abs(arg_0.c.d)), max(~(-vec3<i32>(u_input.c, -1i, arg_1)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-33260i, u_input.c, arg_0.c.d), vec3<i32>(arg_0.c.d, arg_0.c.d, 0i)), min(vec3<i32>(1i, u_input.a, arg_0.c.d), vec3<i32>(-31344i, 10366i, arg_0.c.d)))));
    var var_1 = !vec3<bool>(global0.b, true, false);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(1f, arg_2.x)), 1138f, _wgslsmith_f_op_f32(f32(-1f) * -463f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1508f + -300f)) * _wgslsmith_f_op_f32(f32(-1f) * -335f)));
    let var_3 = func_2().c;
    global1 = -1277f;
    return _wgslsmith_f_op_f32(trunc(-107f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 1972f;
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a.b.a.x + 232f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global0.a.d.x, 241f)), global0.a.b.a.x)) * 422f)), global0.c.a.x);
    var var_1 = _wgslsmith_add_vec4_i32(global2[_wgslsmith_index_u32(~0u, 9u)], -vec4<i32>(-1i, i32(-1i) * -1i, abs(32776i), firstLeadingBit(19470i))) << ((~(~vec4<u32>(u_input.b.x, 7694u, global0.a.b.c, 30653u)) ^ firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(global0.a.e.c, 1u, u_input.b.x, u_input.b.x), ~vec4<u32>(10937u, global0.c.c, 1u, 4294967295u)))) % vec4<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(func_4(func_1(), countOneBits(~_wgslsmith_dot_vec4_i32(~global2[_wgslsmith_index_u32(2395u, 9u)], vec4<i32>(var_1.x, -2147483647i, var_1.x, 1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.e.a)))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(), global0.a.e.d, func_2().d)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.e.a.x + _wgslsmith_f_op_f32(trunc(-225f)))));
    var var_3 = var_0.x;
    let var_4 = firstTrailingBit(u_input.b.yy);
    var_1 = vec4<i32>(~u_input.a, u_input.a, 18989i & ~(-(1i << (u_input.b.x % 32u))), global0.c.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-648f, _wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1204f, _wgslsmith_f_op_f32(global0.a.d.x + var_0.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global0.c.a.zy)) - _wgslsmith_f_op_vec2_f32(ceil(global0.a.b.a.yz))) + _wgslsmith_f_op_vec2_f32(-var_0.yz))), func_2().a.e.b, var_4.x);
}

