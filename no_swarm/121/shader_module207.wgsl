struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: Struct_2,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18>;

var<private> global1: Struct_4 = Struct_4(true, vec3<i32>(42220i, 2147483647i, -59520i), Struct_2(Struct_1(false, 0i, -1550f), 38351u, Struct_1(false, 0i, -1138f)), vec4<f32>(-409f, 1701f, -584f, -958f));

var<private> global2: Struct_3 = Struct_3(vec2<f32>(-434f, 1000f), 2147483647i, Struct_2(Struct_1(true, -37452i, 2053f), 0u, Struct_1(true, -1i, -693f)), vec2<bool>(false, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> vec2<bool> {
    var var_0 = 0u;
    return global2.d;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec3<f32> {
    global2 = Struct_3(global2.a, global1.c.c.b, Struct_2(global2.c.a, firstLeadingBit(_wgslsmith_add_u32(1u, 18175u) << (0u % 32u)), Struct_1(-6267i >= _wgslsmith_clamp_i32(-27043i, arg_0.c.b, -1i), max(global1.c.c.b, -2411i) >> (global1.c.b % 32u), _wgslsmith_div_f32(499f, _wgslsmith_f_op_f32(global1.d.x - -860f)))), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.d.zyz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.d.x, -840f)))));
    global1 = Struct_4(0i < -_wgslsmith_add_i32(~7690i, min(arg_1.b, arg_1.b)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(global1.b | firstTrailingBit(global1.b), vec3<i32>(0i, countOneBits(-5320i), -arg_1.b)), _wgslsmith_sub_vec3_i32(abs(global1.b), ~vec3<i32>(-51698i, global1.c.c.b, global1.b.x)) << (((vec3<u32>(4294967295u, arg_0.b, global1.c.b) & vec3<u32>(0u, arg_0.b, 138656u)) >> (~vec3<u32>(arg_0.b, u_input.a, global2.c.b) % vec3<u32>(32u))) % vec3<u32>(32u))), global2.c, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-285f - 1351f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.c * arg_0.a.c)))), _wgslsmith_f_op_f32(step(1150f, global1.c.a.c)), arg_0.a.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.c.a.c)))));
    var var_0 = countOneBits(vec2<i32>(-18669i << (~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global2.c.b), vec2<u32>(global2.c.b, 11774u)) % 32u), global1.b.x));
    let var_1 = Struct_4(true, vec3<i32>(reverseBits(_wgslsmith_clamp_i32(arg_1.b, min(global2.c.a.b, arg_0.c.b), global2.b)), abs(global2.c.c.b), max(var_0.x, _wgslsmith_add_i32(arg_1.b, arg_1.b << (5426u % 32u)))), Struct_2(global2.c.c, 49943u, Struct_1(all(!vec2<bool>(arg_1.a, arg_0.a.a)), 1i, -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global1.d)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.d, vec4<f32>(arg_1.c, arg_0.c.c, 1104f, global1.c.c.c))))), var_1.d) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.a.c, global1.c.c.c, _wgslsmith_f_op_f32(min(arg_1.c, _wgslsmith_f_op_f32(-arg_0.c.c))), -1000f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1921f, 201f, arg_1.c, var_1.d.x))) + vec4<f32>(_wgslsmith_f_op_f32(global2.c.a.c + -1431f), 1730f, _wgslsmith_f_op_f32(var_1.d.x - 1187f), _wgslsmith_f_op_f32(select(-455f, global1.c.a.c, global1.c.a.a))))));
    return global1.d.xyz;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> u32 {
    global2 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.a * _wgslsmith_div_vec2_f32(vec2<f32>(-726f, global1.c.a.c), vec2<f32>(-1193f, 1461f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -967f)) - global0[_wgslsmith_index_u32(5690u, 18u)]), func_2(_wgslsmith_f_op_vec3_f32(-global1.d.zzy), -375f))), -101232i, Struct_2(global1.c.c, global1.c.b, Struct_1(true, -17635i, _wgslsmith_f_op_f32(f32(-1f) * -1057f))), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(global2.c.a, 0u, global2.c.c), global2.c.a))), -1371f));
    let var_0 = Struct_2(global1.c.c, 4294967295u, global2.c.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global1.d * vec4<f32>(global2.a.x, -106f, global1.c.a.c, global1.d.x))))))) * global1.d);
    let var_2 = var_1.x;
    global2 = Struct_3(global2.a, var_0.c.b, Struct_2(global2.c.c, reverseBits(_wgslsmith_sub_u32(4294967295u, global1.c.b << (24829u % 32u))), var_0.c), !global2.d);
    return 16420u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<bool>(true, true, true), -1429f);
    global0 = array<vec2<f32>, 18>();
    let var_1 = Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(1995f, 1584f), _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(31604u, 18u)])), countOneBits(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_sub_i32(1i, ~global1.b.x))), Struct_2(global1.c.a, reverseBits(func_1(select(vec3<bool>(global2.d.x, global2.d.x, global2.c.a.a), vec3<bool>(true, global1.a, false), vec3<bool>(global1.c.c.a, false, false)), 271f)), global1.c.c), select(select(global2.d, select(!global2.d, vec2<bool>(global1.a, global1.a), any(vec4<bool>(global2.d.x, true, true, global2.c.a.a))), global2.d), vec2<bool>(true, false | global1.c.a.a), global2.d));
    var var_2 = global1.c;
    let var_3 = _wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(-vec3<i32>(var_2.a.b, 17272i, -60536i), vec3<i32>(_wgslsmith_sub_i32(-65025i, 0i), global1.b.x, var_1.b)), global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(select(-6271i, -34931i, !func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_2.c.c, global2.a.x)), _wgslsmith_div_f32(var_2.c.c, var_2.c.c)).x));
}

