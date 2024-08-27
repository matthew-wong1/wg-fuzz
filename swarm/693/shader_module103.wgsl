struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<f32>(430f, 1954f), -1068f, 1058f), Struct_1(vec2<f32>(1317f, 2686f), -396f, -1231f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    return Struct_1(global1.b.a, 264f, _wgslsmith_f_op_f32(473f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.b.b - 1206f)))))));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = global1.b;
    let var_2 = -abs(~vec3<i32>(-1i, -77611i, -59597i));
    var_0 = 1u;
    global0 = array<bool, 22>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.wy), -1007f, arg_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    let var_0 = true;
    global1 = Struct_2(func_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-319f, global1.b.c, arg_2.a.c, -591f) + vec4<f32>(-209f, arg_3.b.b, global1.a.c, -2716f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1086f, 111f, arg_0.b, 2198f))), var_0)), 414u, arg_2, _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_1.x, 45459u), vec2<u32>(_wgslsmith_mod_u32(4294967295u, u_input.b.x), ~4819u))), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.b.c, arg_0.a.x))) * _wgslsmith_f_op_vec2_f32(-arg_0.a)))), arg_3.a.c, _wgslsmith_f_op_f32(step(-597f, _wgslsmith_f_op_f32(abs(func_2(global0[_wgslsmith_index_u32(u_input.d, 22u)], arg_3).c))))));
    var var_1 = ~arg_1;
    global0 = array<bool, 22>();
    var var_2 = var_0 || false;
    return func_3(vec4<f32>(_wgslsmith_f_op_f32(floor(global1.b.b)), _wgslsmith_f_op_f32(-676f - arg_3.b.c), -1571f, arg_0.c), u_input.b.x, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1471f, 1262f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.a.c, arg_3.a.c)), _wgslsmith_f_op_f32(f32(-1f) * -204f)), _wgslsmith_f_op_f32(1537f + _wgslsmith_f_op_f32(-arg_3.a.b))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global1.a.a, vec2<f32>(global1.b.a.x, 1922f), false)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1425f, 200f) - arg_3.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-797f, global1.a.c)), 1069f)), 1u);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: vec2<bool>) -> f32 {
    let var_0 = func_4(func_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(297f, 1603f, arg_2.x, -831f), vec4<f32>(arg_2.x, -1000f, global1.b.a.x, arg_2.x)))))), u_input.b.x, Struct_2(func_2(0i <= u_input.c, Struct_2(global1.a, Struct_1(arg_2, 2025f, global1.a.b))), func_2(false, Struct_2(global1.b, global1.a))), _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.d), u_input.b.zx)) << (~u_input.d % 32u)), vec4<u32>(u_input.b.x, 40912u, u_input.d, _wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(1u, ~u_input.b.x))), Struct_2(func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(16130u, 71814u, u_input.b.x, 14219u), vec4<u32>(29000u, u_input.d, u_input.d, 1u)) & _wgslsmith_mult_u32(1u, u_input.b.x), 22u)], Struct_2(func_3(vec4<f32>(global1.b.c, global1.b.c, 968f, global1.a.b), u_input.d, Struct_2(Struct_1(vec2<f32>(arg_2.x, 1000f), 1000f, arg_2.x), global1.b), 83992u), func_3(vec4<f32>(-376f, -1340f, global1.a.c, 734f), 1u, Struct_2(Struct_1(vec2<f32>(global1.b.a.x, global1.b.a.x), global1.a.c, arg_2.x), Struct_1(global1.b.a, arg_2.x, arg_2.x)), 82565u))), func_2(u_input.b.x >= 0u, Struct_2(global1.b, Struct_1(vec2<f32>(arg_2.x, -1021f), global1.b.a.x, arg_2.x)))), Struct_2(global1.a, func_2(arg_3.x, Struct_2(Struct_1(vec2<f32>(-269f, -1393f), arg_2.x, global1.a.b), global1.a))));
    let var_1 = u_input.a << (4294967295u % 32u);
    var var_2 = Struct_2(global1.b, global1.b);
    global1 = Struct_2(var_0, var_2.b);
    var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-378f, -651f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.b, global1.a.b)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(332f, 1147f, false)), global1.b.a.x), global1.b.a.x, global0[_wgslsmith_index_u32(~u_input.d, 22u)])), global1.b.a.x), var_2.b);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(arg_2.x, var_2.a.c, 2552f, 1909f), 23643u, Struct_2(Struct_1(global1.a.a, var_2.b.c, global1.a.a.x), var_2.b), 0u).a.x - _wgslsmith_f_op_f32(arg_2.x * arg_2.x)) * arg_2.x)), var_0.a.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(sign(191f));
    var var_1 = Struct_1(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-arg_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-vec4<i32>(arg_3.d.x, arg_3.d.x, u_input.c, -1i), -vec4<i32>(u_input.c, u_input.a, -14997i, arg_3.d.x), arg_0.a, vec2<bool>(true, true)))) - _wgslsmith_div_f32(858f, global1.b.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.e.b)));
    let var_2 = Struct_2(func_4(arg_3.e, ~((vec4<u32>(0u, arg_3.c, 23381u, u_input.d) << (vec4<u32>(1u, u_input.d, u_input.d, u_input.b.x) % vec4<u32>(32u))) ^ vec4<u32>(4294967295u, u_input.b.x, 86567u, 90665u)), Struct_2(Struct_1(func_2(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], Struct_2(arg_0, Struct_1(arg_0.a, 1066f, 280f))).a, arg_1.b, arg_1.c), Struct_1(vec2<f32>(-305f, 543f), _wgslsmith_f_op_f32(f32(-1f) * -1797f), 1219f)), Struct_2(func_4(arg_1, vec4<u32>(arg_3.c, u_input.b.x, arg_3.c, u_input.d) >> (vec4<u32>(17475u, arg_3.c, u_input.d, arg_3.c) % vec4<u32>(32u)), Struct_2(Struct_1(vec2<f32>(arg_0.b, 390f), -909f, arg_3.e.b), arg_0), Struct_2(arg_1, Struct_1(vec2<f32>(-1110f, arg_2), -447f, -369f))), Struct_1(_wgslsmith_f_op_vec2_f32(-global1.b.a), 978f, func_3(vec4<f32>(455f, -1275f, -199f, arg_3.e.b), 19517u, Struct_2(arg_3.e, arg_3.a), 0u).a.x))), func_2(false, Struct_2(func_4(func_4(Struct_1(vec2<f32>(1000f, 367f), arg_3.e.c, -1331f), vec4<u32>(0u, arg_3.c, 12125u, arg_3.c), Struct_2(Struct_1(arg_1.a, arg_0.a.x, 1290f), Struct_1(global1.a.a, var_1.b, 379f)), Struct_2(arg_0, arg_3.e)), _wgslsmith_mod_vec4_u32(vec4<u32>(57281u, 1u, 1u, 658u), vec4<u32>(u_input.b.x, u_input.d, 0u, u_input.b.x)), Struct_2(Struct_1(arg_3.a.a, 1404f, -1593f), Struct_1(var_1.a, arg_2, -671f)), Struct_2(Struct_1(vec2<f32>(arg_1.b, arg_0.a.x), -612f, 576f), Struct_1(vec2<f32>(855f, -682f), arg_1.c, -1000f))), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(296f, -504f, 303f, -201f)), ~38584u, Struct_2(Struct_1(arg_3.e.a, global1.a.c, var_1.b), arg_3.e), arg_3.c))));
    let var_3 = _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(func_2(arg_3.b, var_2).a.x + arg_3.e.a.x));
    var var_4 = arg_3;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_4.e.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-406f - arg_2), _wgslsmith_f_op_f32(var_2.a.b * global1.a.b)))))) + arg_1.a.x);
}

fn func_6(arg_0: u32, arg_1: bool, arg_2: f32) -> u32 {
    global0 = array<bool, 22>();
    let var_0 = ~(-_wgslsmith_div_i32(u_input.c, 19709i));
    var var_1 = ~abs(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0, u_input.c), ~vec2<i32>(-31354i, var_0)) ^ _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.e), vec2<i32>(-2147483647i, var_0)), vec2<i32>(-24164i, 0i)));
    let var_2 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(116f, 299f), global1.b.a), global1.b.c, 1000f);
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(22059u << (u_input.b.x % 32u), u_input.b.x)), 22u)];
    var var_1 = 1147f;
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.c, _wgslsmith_f_op_f32(max(global1.b.a.x, 869f)), global1.b.c, _wgslsmith_f_op_f32(-global1.b.c))))));
    var var_3 = vec4<u32>(func_6(u_input.d, global0[_wgslsmith_index_u32(~u_input.d | ~u_input.d, 22u)] != !(true && global0[_wgslsmith_index_u32(4294967295u, 22u)]), _wgslsmith_f_op_f32(func_5(Struct_1(var_2.xy, _wgslsmith_f_op_f32(-global1.a.a.x), _wgslsmith_f_op_f32(func_1(vec4<i32>(-16519i, 2147483647i, u_input.a, u_input.c), vec4<i32>(u_input.a, u_input.c, 19570i, u_input.c), global1.b.a, vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 22u)])))), global1.b, -216f, Struct_3(func_2(global0[_wgslsmith_index_u32(0u, 22u)], Struct_2(global1.a, Struct_1(var_2.zy, -803f, global1.b.a.x))), select(false, global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(u_input.d, 22u)]), ~0u, vec4<i32>(u_input.c, u_input.e, u_input.c, 1i), global1.b)))), ~u_input.b.x, ~(~(u_input.d ^ u_input.d) & func_6(66570u, any(vec2<bool>(global0[_wgslsmith_index_u32(64123u, 22u)], global0[_wgslsmith_index_u32(91316u, 22u)])), -766f)), 0u);
    var var_4 = var_2.x;
    var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1920f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(1762f - global1.a.b))))));
    var var_5 = vec3<i32>(u_input.c, 0i, i32(-1i) * -min(min(u_input.c, u_input.a), min(u_input.a, 55355i)));
    var_5 = _wgslsmith_mult_vec3_i32(vec3<i32>(var_5.x ^ -2147483647i, abs(-35653i), _wgslsmith_clamp_i32(-1i, var_5.x, ~1i)), vec3<i32>(-1i, -68958i, u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(29766u);
}

