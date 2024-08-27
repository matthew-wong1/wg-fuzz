struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 28>;

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global2: bool;

var<private> global3: Struct_1 = Struct_1(vec2<f32>(303f, 969f), vec4<u32>(33289u, 1u, 56280u, 1u), 2147483647i, 1280f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<f32> {
    var var_0 = -abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.c.x, 3814i, global3.c, 0i)), ~u_input.a), -(global3.c ^ u_input.b.x)));
    global2 = true;
    let var_1 = vec4<u32>(global3.b.x, 0u, _wgslsmith_mod_u32(~global3.b.x, max(reverseBits(global3.b.x), global3.b.x)), ~(~1u) ^ (~global3.b.x | global3.b.x)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(global3.b.x, global3.b.x ^ global3.b.x, ~(~15210u), select(min(9609u, global3.b.x), ~global3.b.x, !global1.x)), reverseBits(firstTrailingBit(min(vec4<u32>(global3.b.x, 0u, 4294967295u, global3.b.x), vec4<u32>(12339u, 1u, 4294967295u, 24397u)))));
    let var_2 = ~41413u;
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1718f)), _wgslsmith_f_op_f32(floor(global3.a.x)), false));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(665f, global3.a.x))), _wgslsmith_f_op_vec2_f32(trunc(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, global3.b.x), 28u)]))))));
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1223f, arg_0.a.x) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(0u, 28u)] - vec2<f32>(global3.a.x, global3.d)))) + _wgslsmith_f_op_vec2_f32(func_3()))), min(~max(global3.b, abs(vec4<u32>(32143u, arg_0.b.x, arg_0.b.x, 1u))), select(min(_wgslsmith_add_vec4_u32(vec4<u32>(global3.b.x, 69922u, global3.b.x, arg_0.b.x), vec4<u32>(arg_0.b.x, global3.b.x, 31875u, 22500u)), ~arg_0.b), vec4<u32>(min(global3.b.x, arg_0.b.x), 1u, arg_0.b.x, _wgslsmith_mult_u32(19905u, arg_0.b.x)), global1.x)), -arg_0.c, _wgslsmith_div_f32(1253f, _wgslsmith_f_op_f32(-400f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global3.a.x)))));
    var var_0 = _wgslsmith_dot_vec3_i32(-(vec3<i32>(global3.c, -2147483647i, 2147483647i) & (u_input.b & u_input.a.wyz)), select(vec3<i32>(u_input.c.x, i32(-1i) * -9857i, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(arg_0.c, -1i, global3.c))), -_wgslsmith_mult_vec3_i32(vec3<i32>(-47698i, global3.c, u_input.a.x), vec3<i32>(-36618i, global3.c, -37970i)), all(!vec3<bool>(true, false, global1.x)))) ^ (arg_0.c << (45906u % 32u));
    global2 = all(select(vec2<bool>(false, !global1.x), vec2<bool>(true, all(select(global1.zz, vec2<bool>(true, false), global1.x))), vec2<bool>(true, false)));
    var var_1 = 1i;
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, -1331f), ~(global3.b | abs(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 33438u, 4294967295u, global3.b.x), arg_0.b))), min(-2147483647i, u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -302f)));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-320f)) + arg_0.d), var_2.a.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> i32 {
    let var_0 = global3.b.wzy;
    var var_1 = global1.wwy;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global3.a.x + global3.d), 745f), firstLeadingBit(firstLeadingBit(vec4<u32>(0u, 26290u, global3.b.x, 15928u))), -30004i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(759f)) + -1000f)))), firstLeadingBit(~_wgslsmith_add_vec4_u32(global3.b, global3.b)), -global3.c, _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_vec2_f32(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(global3.b.x, 28u)]), vec4<u32>(var_0.x, global3.b.x, global3.b.x, 28709u), _wgslsmith_add_i32(-31080i, arg_1), -402f))).x));
    global2 = var_1.x;
    global0 = array<vec2<f32>, 28>();
    return global3.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global1.x;
    let var_1 = ~(~global3.b.x);
    global0 = array<vec2<f32>, 28>();
    let var_2 = min(-_wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, 1i), 23048i), _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.c.x, 24917i), max(-1i, u_input.b.x)), firstTrailingBit(-1i ^ u_input.b.x))) <= func_1(u_input.b, _wgslsmith_mod_i32(21851i, -10794i));
    var var_3 = select(-u_input.a, vec4<i32>(40697i, global3.c, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -30766i), u_input.c) >> (countOneBits(~global3.b.x) % 32u), -(~2147483647i)), vec4<bool>(true, true, true, true));
    var_3 = vec4<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-16536i, u_input.a.x, u_input.b.x, global3.c)) | min(~u_input.a, -vec4<i32>(2147483647i, var_3.x, global3.c, -19932i)), ~(~vec4<i32>(0i, 29397i, var_3.x, var_3.x))), 2147483647i, var_3.x, 0i);
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(global0[_wgslsmith_index_u32(global3.b.x, 28u)])), vec4<u32>(abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1, global3.b.x), vec3<u32>(17791u, var_1, 0u))), 85505u, ~firstTrailingBit(4294967295u), 18662u), global3.c, _wgslsmith_f_op_f32(exp2(global3.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global3.c, var_4.c);
}

