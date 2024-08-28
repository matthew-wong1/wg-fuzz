struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<f32, 16>;

var<private> global2: array<u32, 29>;

var<private> global3: u32 = 0u;

var<private> global4: Struct_4;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool) -> vec3<f32> {
    global4 = Struct_4(Struct_3(-(select(global4.c, global4.c, vec4<bool>(global0.b.x, global4.d.x, false, arg_1)) | vec4<i32>(0i, 0i, global0.a, global0.a)), global4.a.d.d.x >= reverseBits(~global4.a.d.c), ~_wgslsmith_add_vec4_i32(vec4<i32>(25649i, 12708i, 2147483647i, 38315i), global4.c) ^ _wgslsmith_div_vec4_i32(-global4.c, vec4<i32>(u_input.a, -12227i, 5591i, u_input.a) & vec4<i32>(2147483647i, u_input.a, 18714i, 2147483647i)), Struct_1(!(!global4.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(99283u, 16u)] * global4.a.d.b) + global1[_wgslsmith_index_u32(~global4.a.d.d.x, 16u)]), 27172u, vec4<u32>(22913u, 4294967295u, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 81663u), _wgslsmith_sub_u32(5691u, global4.a.d.c)), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 3597i), global4.a.d.e), global4.a.c.zw))), vec3<f32>(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(~select(40282u, 47160u, false), 16u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global4.b.x, global4.a.d.b), global1[_wgslsmith_index_u32(~global4.a.d.d.x, 16u)], any(arg_0)))), -727f), global4.c, select(global4.d, vec4<bool>(true, any(!arg_0.xw), !global4.d.x, global4.c.x > ~(-2147483647i)), false));
    var var_0 = Struct_1(!select(global0.b.x, 1028u <= global4.a.d.d.x, true) && all(vec3<bool>(global4.d.x, true, true)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, ~(~global2[_wgslsmith_index_u32(0u, 29u)])), 16u)] * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1139f * global1[_wgslsmith_index_u32(33705u, 16u)]) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4.a.d.d.x, 29u)], 16u)])))), ~global4.a.d.d.x, _wgslsmith_mult_vec4_u32(abs(select(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, global2[_wgslsmith_index_u32(0u, 29u)], 44814u), vec4<u32>(0u, 1u, 28537u, global4.a.d.c)), vec4<u32>(global2[_wgslsmith_index_u32(21658u, 29u)], 1u, global4.a.d.c, 58743u), vec4<bool>(arg_0.x, global0.b.x, true, global4.a.b))), vec4<u32>(max(1u << (global2[_wgslsmith_index_u32(4294967295u, 29u)] % 32u), ~global4.a.d.c), ~global2[_wgslsmith_index_u32(4294967295u, 29u)], ~0u, 24572u)), global4.a.c.yw);
    let var_1 = Struct_2(global4.a.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b.x) + var_0.b), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.c, var_0.c | global4.a.d.d.x), 16u)])), abs(-abs(vec2<i32>(-1i, 7259i)) << ((~global4.a.d.d.zz ^ _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 46242u), vec2<u32>(global4.a.d.d.x, global4.a.d.c))) % vec2<u32>(32u))));
    var var_2 = Struct_5(global4.a.a.x, !global0.b);
    global0 = Struct_5(-23809i, global0.b);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global4.a.d.b), 1175f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2386f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a.d.b * -1000f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + -157f), _wgslsmith_f_op_f32(trunc(global4.b.x)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a.d.b, -1000f, var_0.b)));
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = Struct_2(global4.a.d, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_3(global4.d, false)))), vec3<f32>(1000f, -1102f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(79734u, 29u)], 16u)], -454f)), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1032f, -296f, global4.b.x) + vec3<f32>(global1[_wgslsmith_index_u32(arg_0, 16u)], 109f, -500f)))) + _wgslsmith_f_op_vec3_f32(floor(global4.b)))), vec2<i32>(~1i, u_input.a));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -512f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b))));
    global4 = Struct_4(Struct_3(~_wgslsmith_add_vec4_i32(global4.a.c, -vec4<i32>(0i, -15933i, global4.c.x, u_input.a)), !(1504f < _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4.a.d.d.x, 29u)], 29u)], 16u)] * var_1)), -countOneBits(abs(vec4<i32>(u_input.a, global4.c.x, global0.a, var_0.a.e.x))), global4.a.d), _wgslsmith_f_op_vec3_f32(global4.b * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(var_0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_0.a.b, -1531f) + var_0.b)), global4.b))), firstTrailingBit(global4.a.a), select(vec4<bool>(global0.b.x, global4.d.x, true, !(822f < global1[_wgslsmith_index_u32(4294967295u, 16u)])), select(global4.d, select(vec4<bool>(global4.d.x, global0.b.x, false, global4.d.x), !global4.d, select(vec4<bool>(false, false, false, true), vec4<bool>(global0.b.x, var_0.a.a, global4.d.x, true), vec4<bool>(false, false, var_0.a.a, false))), any(global4.d.xwz) & false), var_0.a.a));
    var var_2 = -178f;
    let var_3 = -2147483647i;
    return Struct_3(global4.a.a, true, -max(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c.x, global0.a, var_3, 0i), vec4<i32>(-12990i, -2147483647i, 1i, 12542i)), global4.c), abs(vec4<i32>(global0.a, u_input.a, u_input.a, global4.a.d.e.x) | vec4<i32>(var_0.c.x, -2147483647i, u_input.a, var_0.c.x))), Struct_1(false, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.a.c ^ 6082u, var_0.a.d.x), 29u)], 16u)] - 1475f), ~53952u, abs(var_0.a.d), firstLeadingBit(firstTrailingBit(vec2<i32>(-45175i, global0.a)))));
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    let var_0 = -1685f;
    var var_1 = true;
    let var_2 = !(!global0.b);
    var var_3 = func_2(global4.a.d.d.x);
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 578f, var_3.d.b, _wgslsmith_f_op_f32(global4.a.d.b + 517f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(26653u, 16u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(325f)) - 735f), _wgslsmith_f_op_f32(select(-215f, -613f, true)), _wgslsmith_f_op_f32(-1089f + -1000f)))));
    return 0u;
}

fn func_4(arg_0: u32) -> StorageBuffer {
    var var_0 = -10714i;
    let var_1 = Struct_5(global0.a & 2147483647i, !(!select(global4.d.zz, select(vec2<bool>(global4.a.d.a, global0.b.x), global4.d.yy, vec2<bool>(global4.d.x, global0.b.x)), select(vec2<bool>(false, false), vec2<bool>(false, global4.a.d.a), global4.d.x))));
    return StorageBuffer(~(~_wgslsmith_clamp_i32(u_input.a, ~var_1.a, 17313i)), ~(~arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.c.x;
    let x = u_input.a;
    s_output = func_4(select(_wgslsmith_div_u32(countOneBits(~35588u), 113916u), ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(57816u, 57865u), func_1(global4.c.zy)), false));
}

