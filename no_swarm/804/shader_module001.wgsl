struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<f32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32;

var<private> global2: array<u32, 19>;

var<private> global3: array<f32, 32> = array<f32, 32>(-631f, -1089f, 1335f, 773f, -540f, 1483f, -1739f, -307f, 652f, 1416f, 177f, 1942f, -459f, 1616f, -1000f, -1944f, 548f, -879f, 1000f, 1081f, -2083f, -101f, -614f, 119f, 1157f, -1032f, -794f, -1597f, -1060f, 1098f, -482f, 216f);

var<private> global4: f32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = global0.e;
    global3 = array<f32, 32>();
    var var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-892f, var_0.a.x)), -250f, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 32u)]) * 2369f))), global0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-2694f, 525f)))), -532f) * var_0.a.xx), any(vec3<bool>(global0.d, all(select(global0.b, global0.b, vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x))), all(select(vec4<bool>(true, true, global0.b.x, false), vec4<bool>(global0.b.x, global0.b.x, false, true), false)))), global0.a);
    global3 = array<f32, 32>();
    var var_2 = 2500f;
    return var_1.b.x;
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = global0.a;
    var var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(firstTrailingBit(u_input.d.x), -u_input.b, max(-7182i, 0i)), 1i, -(i32(-1i) * -1i), u_input.c.x), select(vec4<i32>(-52412i, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.c.x, 49308i, 2147483647i, -2147483647i) | vec4<i32>(0i, 0i, -1i, u_input.d.x), false & arg_0.x) << (~(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29935u, 19u)], 19u)], global2[_wgslsmith_index_u32(30008u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)], global2[_wgslsmith_index_u32(0u, 19u)]) >> (vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20223u, 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)], 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), ~vec4<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(max(u_input.d.yy, vec2<i32>(41519i, u_input.d.x)), ~u_input.c.xy), u_input.c.x ^ u_input.a.x, 0i));
    var var_2 = true;
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global0.a.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(0u, 32u)], 152f, 159f, 861f)) + _wgslsmith_f_op_vec4_f32(select(var_0.a, global0.a.a, global0.b))))), Struct_3(Struct_2(Struct_1(var_0.a), !select(global0.b, vec4<bool>(false, global0.d, false, arg_0.x), arg_0.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, global3[_wgslsmith_index_u32(101669u, 32u)])), var_0.a.yy)), false, global0.a), false, vec2<u32>(select(~global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)] ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15874u, 19u)], 19u)], u_input.a.x > -3092i), _wgslsmith_mod_u32(select(0u, 1u, arg_0.x), 0u << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 19u)] % 32u))), _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(54996u, 19u)], 19u)])), _wgslsmith_sub_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12933u, 19u)], 19u)]) >> (vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(33528u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)]) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(49227u, 1u, global2[_wgslsmith_index_u32(41375u, 19u)]), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], global2[_wgslsmith_index_u32(64098u, 19u)], 1u)))), abs(global2[_wgslsmith_index_u32(~(~38779u), 19u)])));
    global4 = global3[_wgslsmith_index_u32(99715u << (reverseBits(var_3.b.d.x) % 32u), 32u)];
    return abs((reverseBits(~global2[_wgslsmith_index_u32(33996u, 19u)]) ^ ~_wgslsmith_sub_u32(4294967295u, 14686u)) & max(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 62937u));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> Struct_3 {
    var var_0 = global2[_wgslsmith_index_u32(func_3(!vec2<bool>(true, func_2(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43857u, 19u)], 19u)], 19u)], 32u)])))), 19u)];
    global4 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~(~1u), 1u), ~vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(35754u, 19u)], 19u)], 19u)], 19u)], 0u), vec4<u32>(global2[_wgslsmith_index_u32(29446u, 19u)], 43802u, 4294967295u, 24937u)), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 19u)]), _wgslsmith_mod_u32(~4294967295u, 4294967295u))), 32u)];
    let var_1 = select(_wgslsmith_sub_i32(u_input.b, _wgslsmith_clamp_i32(u_input.a.x, 2147483647i, -2147483647i)), min(~u_input.c.x, _wgslsmith_dot_vec4_i32(countOneBits(~vec4<i32>(u_input.b, u_input.a.x, u_input.b, 255i)), vec4<i32>(-1i) * -vec4<i32>(u_input.b, -1i, 0i, u_input.c.x))), true);
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-143f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 32u)], 1000f, global0.c.x), vec4<f32>(-2122f, -586f, global3[_wgslsmith_index_u32(1u, 32u)], global0.a.a.x), select(vec4<bool>(arg_1.x, false, arg_1.x, false), vec4<bool>(false, global0.b.x, arg_1.x, true), vec4<bool>(global0.d, global0.b.x, arg_0, false))))), global0.b, _wgslsmith_f_op_vec2_f32(global0.a.a.yz - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.e.a.zw) + vec2<f32>(-305f, global3[_wgslsmith_index_u32(11264u, 32u)]))), !(!(!arg_0)), global0.e), global0.d, ~_wgslsmith_add_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(27229u, 19u)], 48638u), ~vec2<u32>(7792u, 1u) | _wgslsmith_clamp_vec2_u32(vec2<u32>(80557u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)]), vec2<u32>(13668u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13513u, 19u)], 19u)], 19u)], 19u)], 19u)]), vec2<u32>(global2[_wgslsmith_index_u32(1u, 19u)], 85714u))), _wgslsmith_div_vec3_u32(vec3<u32>(countOneBits(global2[_wgslsmith_index_u32(~0u, 19u)]), _wgslsmith_sub_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], 19u)], 19u)], 77295u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(69895u, 19u)], 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 19u)], 19u)], 19u)], 19u)], 19u)], 19u)]), vec4<u32>(global2[_wgslsmith_index_u32(41464u, 19u)], 28501u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)]))), ~4050u ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)] << (1u % 32u), 19u)], 19u)], 19u)]), ~(~(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(1u, 19u)], 25314u)))), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(~1u, 4294967295u)), ~firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, global2[_wgslsmith_index_u32(4294967295u, 19u)]), vec2<u32>(11748u, 10695u), vec2<u32>(0u, 48352u)))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.e.a, vec4<f32>(global0.a.a.x, _wgslsmith_div_f32(-109f, var_2.a.a.a.x), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 32u)] + -860f), _wgslsmith_f_op_f32(f32(-1f) * -194f)))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1117f * _wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-272f, -368f)) - global3[_wgslsmith_index_u32(~1u, 32u)])));
    let var_1 = u_input.d;
    global1 = abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~firstLeadingBit(global2[_wgslsmith_index_u32(51617u, 19u)]), 19u)] ^ global2[_wgslsmith_index_u32(0u, 19u)], 19u)]) ^ global2[_wgslsmith_index_u32(1u, 19u)];
    global1 = ~0u;
    var var_2 = u_input.c.x;
    var_2 = ~u_input.a.x;
    let var_3 = func_1(any(global0.b.yxx), vec2<bool>(true, global0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_div_i32(-18667i, abs(5339i ^ u_input.c.x)), -(~_wgslsmith_add_i32(u_input.c.x, -4393i))), _wgslsmith_div_i32(59581i, _wgslsmith_dot_vec4_i32(vec4<i32>(~2147483647i, _wgslsmith_mod_i32(57387i, var_1.x), u_input.b & var_1.x, _wgslsmith_add_i32(var_1.x, var_1.x)), ~(-vec4<i32>(-15048i, var_1.x, var_1.x, -6232i)))), var_3.a.a.a.zy, -648f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1114f, global0.e.a.x)));
}

