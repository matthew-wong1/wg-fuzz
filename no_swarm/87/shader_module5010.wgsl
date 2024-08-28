struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: bool = false;

var<private> global2: array<Struct_3, 29>;

var<private> global3: array<bool, 11> = array<bool, 11>(false, true, false, true, true, true, false, false, true, true, true);

var<private> global4: Struct_2 = Struct_2(vec3<f32>(-1143f, 463f, 286f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: bool) -> bool {
    global3 = array<bool, 11>();
    var var_0 = Struct_3(vec4<i32>(-2147483647i, -u_input.e, -reverseBits(-10685i), u_input.e) & (firstLeadingBit(-vec4<i32>(-1i, 1i, u_input.a, u_input.a)) | (select(vec4<i32>(0i, u_input.b.x, u_input.e, u_input.a), vec4<i32>(50185i, u_input.b.x, 0i, u_input.e), true) | ~vec4<i32>(1i, u_input.b.x, 0i, u_input.b.x))), Struct_1(~u_input.d.x, -_wgslsmith_add_i32(u_input.a, u_input.e) ^ (max(u_input.e, -2147483647i) | -u_input.e), arg_0), global0[_wgslsmith_index_u32(111882u, 32u)], abs(abs(~44463u)));
    var var_1 = Struct_4(global2[_wgslsmith_index_u32(u_input.d.x, 29u)]);
    let var_2 = _wgslsmith_clamp_u32(var_1.a.c.a, var_1.a.d, 35738u) >> (select(~min(4294967295u, ~var_0.d), ~var_1.a.c.a, true) % 32u);
    let var_3 = firstTrailingBit(_wgslsmith_mult_vec3_u32(select(select(vec3<u32>(var_0.d, var_1.a.b.a, var_0.c.a), u_input.d.xxy, true) ^ u_input.d.xyw, vec3<u32>(var_1.a.d, 48260u, var_1.a.c.a) ^ u_input.c, var_0.c.c && all(vec4<bool>(global3[_wgslsmith_index_u32(var_2, 11u)], global3[_wgslsmith_index_u32(38471u, 11u)], true, arg_0))), firstTrailingBit(~(u_input.d.yyz | vec3<u32>(var_2, 18646u, u_input.d.x)))));
    return false;
}

fn func_2() -> Struct_2 {
    let var_0 = ~(vec4<i32>(-1i) * -vec4<i32>(~u_input.b.x, 799i, -1i, u_input.b.x));
    let var_1 = global0[_wgslsmith_index_u32(~(~(select(_wgslsmith_add_u32(u_input.c.x, u_input.c.x), 1u, global3[_wgslsmith_index_u32(u_input.c.x, 11u)] | global3[_wgslsmith_index_u32(u_input.d.x, 11u)]) ^ 42558u)), 32u)];
    let var_2 = func_3(true);
    let var_3 = Struct_3(_wgslsmith_clamp_vec4_i32(~abs(var_0), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-17055i, var_0.x), u_input.b.x, -3278i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, var_1.b, -1i, u_input.a), var_0)), var_0), vec4<i32>(abs(var_1.b), firstTrailingBit(-40318i), var_1.b, -6071i)), Struct_1(~_wgslsmith_div_u32(u_input.d.x, u_input.d.x ^ 2904u), firstTrailingBit(abs(0i)) | -1i, countOneBits(var_0.x) >= ~(-u_input.b.x)), Struct_1(max(~u_input.d.x, ~_wgslsmith_mod_u32(40955u, var_1.a)), -var_1.b, !func_3(u_input.a == var_1.b)), abs(var_1.a));
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_3.b.a, reverseBits(reverseBits(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_1.a, var_1.a), firstTrailingBit(5117u))))), 11u)];
    return Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global4.a), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(global4.a)))))))));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> u32 {
    let var_0 = vec3<bool>(true, true, true);
    global0 = array<Struct_1, 32>();
    let var_1 = select(var_0.zx, var_0.zx, !select(var_0.x, arg_0 & var_0.x, all(select(vec4<bool>(arg_1.x, true, false, false), vec4<bool>(var_0.x, arg_1.x, true, var_0.x), false))));
    var var_2 = _wgslsmith_f_op_f32(-664f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(400f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a.x * global4.a.x) - _wgslsmith_f_op_f32(global4.a.x + global4.a.x)))), 175f)));
    let var_3 = func_2();
    return 22721u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    let var_0 = min(vec4<u32>(select(4294967295u, 17818u, !(!global3[_wgslsmith_index_u32(23580u, 11u)])), _wgslsmith_sub_u32(~func_1(global3[_wgslsmith_index_u32(u_input.c.x, 11u)], vec2<bool>(true, global3[_wgslsmith_index_u32(56261u, 11u)])), _wgslsmith_mult_u32(countOneBits(0u), _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(7184u, u_input.c.x, u_input.c.x, u_input.c.x)))), 1u, max(~_wgslsmith_mod_u32(u_input.d.x, 30861u), ~abs(0u))), _wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, u_input.d.x, u_input.c.x, u_input.d.x)), _wgslsmith_div_vec4_u32(~u_input.d, u_input.d)) << (vec4<u32>(u_input.d.x, 4294967295u, 20842u >> (firstTrailingBit(1u) % 32u), u_input.d.x) % vec4<u32>(32u)));
    let var_1 = -888f;
    var var_2 = _wgslsmith_clamp_i32(u_input.b.x, -1i & _wgslsmith_sub_i32(-u_input.e, -31265i), -8659i) == (i32(-1i) * -8549i);
    let var_3 = abs(vec4<i32>(1i, i32(-1i) * -1i, abs(u_input.e), 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_1)), -7908i);
}

