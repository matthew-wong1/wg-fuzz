struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<i32>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: bool,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 600f;

var<private> global1: Struct_3 = Struct_3(Struct_2(vec2<i32>(9390i, 10481i), Struct_1(vec2<bool>(false, false)), vec3<i32>(0i, i32(-2147483648), -1i), 361f, vec2<bool>(false, false)), vec2<i32>(-29970i, 8379i), true);

var<private> global2: bool;

var<private> global3: array<i32, 31> = array<i32, 31>(0i, 2147483647i, i32(-2147483648), 2147483647i, 10937i, i32(-2147483648), -1i, 0i, i32(-2147483648), 1i, -3737i, -12812i, 29909i, 0i, 15973i, i32(-2147483648), -1i, 2147483647i, -20104i, 0i, i32(-2147483648), -50569i, 14037i, 47793i, 2147483647i, 2147483647i, 0i, -20436i, -38068i, 10357i, 1i);

var<private> global4: array<Struct_4, 1>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = global1.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.a.d - 905f)))), global1.a.d) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1156f, global1.a.d, 1000f, global1.a.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(265f, 798f, global1.a.d, var_0.d) - vec4<f32>(-966f, 644f, -1350f, var_0.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1240f, 1161f, -587f, var_0.d)) + vec4<f32>(807f, 198f, 1057f, 266f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(global1.a.d)), var_1.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_1.x))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, 173f, global1.a.d, 735f))) - vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_1.x)))), var_0.d, _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 1930f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2057f, _wgslsmith_f_op_f32(sign(-573f)), _wgslsmith_f_op_f32(min(-221f, -848f)), _wgslsmith_div_f32(var_1.x, 323f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.d, -1015f, 273f, global1.a.d))))));
    var var_2 = ~(~(~vec4<u32>(1u, u_input.c.x, u_input.c.x, 84u)));
    return ~(-min(vec3<i32>(0i, -5217i, var_0.a.x), -reverseBits(vec3<i32>(u_input.a, 1i, var_0.c.x))));
}

fn func_2(arg_0: bool) -> vec2<u32> {
    let var_0 = Struct_2(_wgslsmith_mod_vec2_i32(global1.b | vec2<i32>(_wgslsmith_add_i32(-1i, global1.a.a.x), u_input.a), _wgslsmith_div_vec2_i32(global1.a.c.xy, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(3528u, 31u)], u_input.a), global1.b, vec2<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 31u)], u_input.a)))), global1.a.b, min(firstLeadingBit(func_3(Struct_1(global1.a.e))), global1.a.c & (global1.a.c << (u_input.b.yzy % vec3<u32>(32u)))) ^ global1.a.c, _wgslsmith_f_op_f32(exp2(global1.a.d)), vec2<bool>(arg_0, (_wgslsmith_f_op_f32(-global1.a.d) >= _wgslsmith_f_op_f32(global1.a.d * global1.a.d)) || false));
    global3 = array<i32, 31>();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) - 1f) + var_0.d)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(2328f, _wgslsmith_f_op_f32(min(-2594f, -936f))))));
    global1 = Struct_3(Struct_2(-vec2<i32>(u_input.a, _wgslsmith_clamp_i32(var_0.c.x, 0i, var_0.c.x)), var_0.b, -vec3<i32>(-13292i >> (u_input.c.x % 32u), global3[_wgslsmith_index_u32(1u, 31u)], u_input.a), global1.a.d, vec2<bool>(false, global1.a.e.x)), var_0.c.zz, false);
    global3 = array<i32, 31>();
    return vec2<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 28509u, _wgslsmith_clamp_u32(4294967295u, u_input.c.x, u_input.c.x)) | u_input.b, vec4<u32>(_wgslsmith_mult_u32(u_input.c.x | 78619u, ~0u), u_input.c.x, max(u_input.b.x >> (u_input.b.x % 32u), 4294967295u), u_input.b.x)));
}

fn func_1() -> Struct_2 {
    let var_0 = ~((vec2<u32>(4294967295u, 1u) ^ func_2(true)) & (u_input.b.xz ^ countOneBits(u_input.b.yz)));
    let var_1 = global1.a.b;
    let var_2 = ~var_0.x;
    global1 = Struct_3(Struct_2(~countOneBits(vec2<i32>(global1.a.a.x, global1.a.a.x)), global1.a.b, -_wgslsmith_clamp_vec3_i32(global1.a.c, vec3<i32>(-2147483647i, 4802i, u_input.a), vec3<i32>(u_input.a, 2147483647i, 19837i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global1.a.d)), _wgslsmith_f_op_f32(min(-854f, global1.a.d)))), -376f), var_1.a), -vec2<i32>(33466i, abs(i32(-1i) * -1i)), all(!select(!vec3<bool>(global1.a.e.x, global1.c, false), !vec3<bool>(true, global1.c, var_1.a.x), vec3<bool>(false, true, global1.c))));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec3<u32>(75988u, abs(u_input.b.x), func_2(global1.c).x);
    let var_2 = global4[_wgslsmith_index_u32(~reverseBits(u_input.b.x), 1u)];
    let var_3 = !(!global1.a.e);
    var var_4 = 4294967295u;
    global4 = array<Struct_4, 1>();
    global3 = array<i32, 31>();
    let var_5 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1135f)), global1.a.d), _wgslsmith_f_op_f32(-func_1().d)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(var_0.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global1.b.x, u_input.a, 12846i), reverseBits(vec4<i32>(var_0.a.x, global1.a.a.x, var_0.a.x, -58232i)))), var_1.xz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5, -561f, -264f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.d, 1373f, var_5) * vec3<f32>(-968f, var_0.d, 179f))))));
}

