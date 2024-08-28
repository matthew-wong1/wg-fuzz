struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: i32,
    d: u32,
    e: f32,
}

struct Struct_5 {
    a: f32,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<bool>, 11>;

var<private> global2: Struct_1 = Struct_1(-33661i, 272f);

var<private> global3: Struct_5;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> i32 {
    global3 = Struct_5(global2.b, max(global3.b, global3.b), vec4<bool>(global3.c.x, true, false, global3.c.x), vec3<bool>(false, global3.d.x, global3.c.x));
    let var_0 = 0u;
    global1 = array<vec3<bool>, 11>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.a, global3.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.b))))), _wgslsmith_f_op_f32(-global2.b));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(-1129f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * global2.b) * var_1.x) - var_1.x))), _wgslsmith_f_op_f32(-global3.a));
    return -8144i;
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<bool>) -> Struct_4 {
    let var_0 = Struct_2(~_wgslsmith_sub_vec3_u32(min(vec3<u32>(23433u, 0u, 80094u), vec3<u32>(u_input.b.x, 36502u, u_input.b.x)) << (~vec3<u32>(66311u, 27297u, 4294967295u) % vec3<u32>(32u)), ~firstLeadingBit(vec3<u32>(u_input.c, 54086u, u_input.c))), global3.d.xz);
    var var_1 = Struct_3((global2.a < -1i) || (false & any(!global3.c.zzw)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-392f, global2.b))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(select(-1107f, global2.b, false))))), global3.d.x)), reverseBits(vec2<u32>(~var_0.a.x, _wgslsmith_div_u32(var_0.a.x | u_input.c, u_input.c << (var_0.a.x % 32u)))));
    let var_2 = 52850u >> (((var_1.c.x >> ((var_0.a.x ^ ~4294967295u) % 32u)) & ~1u) % 32u);
    let var_3 = select(global3.c, select(global3.c, global3.c, global3.c.x), var_0.b.x);
    var_1 = Struct_3(!global3.c.x, _wgslsmith_f_op_f32(f32(-1f) * -797f), vec2<u32>(u_input.c, var_1.c.x));
    return Struct_4(arg_2, Struct_3(any(vec3<bool>(true & var_1.a, any(vec4<bool>(false, false, true, var_0.b.x)), select(false, var_1.a, true))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-522f * -922f), 395f))), ~abs(abs(var_1.c))), 0i, abs(_wgslsmith_add_u32(abs(154u), ~var_0.a.x) & var_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global2.b)), -853f)), global3.a) * _wgslsmith_f_op_f32(-arg_1)));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-139f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a + -467f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-135f, 265f) - global2.b))) + _wgslsmith_f_op_f32(min(878f, _wgslsmith_f_op_f32(-global2.b)))));
    var var_1 = func_3(vec2<i32>(1i, func_2()), global3.a, arg_0.b);
    let var_2 = firstLeadingBit(min(_wgslsmith_clamp_i32(1i, func_2(), func_2()), arg_1.x));
    let var_3 = vec2<i32>(_wgslsmith_mult_i32((u_input.a << (~u_input.c % 32u)) ^ _wgslsmith_add_i32(-1i, _wgslsmith_add_i32(arg_1.x, 33744i)), arg_1.x), 1i);
    return Struct_1(func_2(), _wgslsmith_f_op_f32(ceil(-1730f)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> u32 {
    global3 = Struct_5(_wgslsmith_f_op_f32(-arg_0.b), abs(vec4<i32>(-1i & u_input.e, func_3(global3.b.wz, 1f, vec2<bool>(true, global3.d.x)).c, u_input.d, firstTrailingBit(~15924i))), vec4<bool>(true, arg_2.a, global3.c.x, global3.c.x), global1[_wgslsmith_index_u32(reverseBits(~_wgslsmith_clamp_u32(~arg_3, 6190u, arg_3)), 11u)]);
    var var_0 = ~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(global2.a, arg_1, global2.a, -4318i), vec4<i32>(17720i ^ global2.a, u_input.d, -global3.b.x, u_input.d)), _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(arg_1, arg_1), 2147483647i), ~arg_0.a));
    var var_1 = arg_2.a;
    let var_2 = abs(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-2147483647i, ~1i), 1i | firstLeadingBit(arg_1), _wgslsmith_div_i32(global2.a, _wgslsmith_add_i32(-49i, global2.a))) ^ arg_0.a);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a * arg_2.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(116f)))))) - -258f);
    return ~78418u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    global3 = Struct_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2432f)))), vec4<i32>(1i, ~global3.b.x, global2.a, 1i), vec4<bool>(39577u > func_4(func_1(Struct_2(vec3<u32>(40177u, 0u, u_input.c), global3.c.yy), global3.b.ywz), u_input.d & global3.b.x, func_3(vec2<i32>(-1i, 53307i), global2.b, vec2<bool>(global3.c.x, false)).b, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 12591u, 42961u, u_input.b.x), vec4<u32>(u_input.c, u_input.b.x, 4294967295u, 0u))), true, !(!global3.c.x) == select(!global3.c.x, true, true), ~firstTrailingBit(24300u) >= 0u), vec3<bool>(global3.c.x, true, select(true && (u_input.b.x != u_input.c), false, all(select(vec4<bool>(global3.d.x, global3.c.x, global3.d.x, true), vec4<bool>(global3.c.x, global3.d.x, global3.c.x, global3.d.x), vec4<bool>(global3.c.x, true, global3.c.x, global3.d.x))))));
    var var_1 = global3.b.x;
    var_0 = 0u;
    global0 = u_input.b.x;
    var var_2 = u_input.b;
    let var_3 = Struct_3(true, -338f, max(vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, var_2.x), u_input.b.x), ~min(~vec2<u32>(13254u, u_input.c), u_input.b ^ u_input.b)));
    var var_4 = func_3(global3.b.ww, _wgslsmith_f_op_f32(exp2(global2.b)), global3.d.xz);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_div_vec4_i32(~vec4<i32>(-2147483647i, u_input.a, -78277i, -3745i), reverseBits(vec4<i32>(var_4.c, 38996i, 76990i, 0i)))), _wgslsmith_mod_vec2_i32(-select(-vec2<i32>(global2.a, u_input.a), global3.b.yz, vec2<bool>(true, false)), -vec2<i32>(u_input.d, global3.b.x) << (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))));
}

