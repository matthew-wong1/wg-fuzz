struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 32>;

var<private> global1: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(21650u, 48536u, 0u), vec3<u32>(0u, 1u, 55890u), vec3<u32>(0u, 25180u, 4294967295u), vec3<u32>(0u, 2458u, 4294967295u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(95087u, 6211u, 56080u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(47476u, 0u, 128139u), vec3<u32>(25218u, 0u, 44179u), vec3<u32>(31157u, 1u, 102853u), vec3<u32>(25537u, 18801u, 9825u), vec3<u32>(29920u, 108u, 15218u), vec3<u32>(1u, 4029u, 0u), vec3<u32>(66332u, 100714u, 1u), vec3<u32>(77508u, 66130u, 4294967295u), vec3<u32>(67973u, 28090u, 0u), vec3<u32>(104338u, 1u, 0u), vec3<u32>(722u, 0u, 1u), vec3<u32>(0u, 67140u, 16257u), vec3<u32>(4294967295u, 1u, 69830u), vec3<u32>(17618u, 1u, 4294967295u));

var<private> global2: bool = false;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<bool>) -> vec3<f32> {
    global1 = array<vec3<u32>, 22>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) * _wgslsmith_f_op_f32(ceil(-739f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x - arg_1.b.x) - _wgslsmith_f_op_f32(arg_1.b.x - -1633f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.x * arg_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -197f)));
    let var_1 = Struct_1(arg_1.a, vec3<f32>(arg_1.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.x, var_0.x)), 310f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_0.x))))), arg_1.c);
    var var_2 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.d.x, 1u), global1[_wgslsmith_index_u32(4294967295u, 22u)]), global1[_wgslsmith_index_u32(u_input.d.x, 22u)]), abs((u_input.c | vec3<u32>(u_input.d.x, u_input.c.x, u_input.c.x)) >> (~global1[_wgslsmith_index_u32(29158u, 22u)] % vec3<u32>(32u))));
    global0 = array<vec4<f32>, 32>();
    return _wgslsmith_div_vec3_f32(var_1.b, arg_1.b);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_1) -> i32 {
    let var_0 = 0i;
    var var_1 = Struct_1(vec4<bool>(!select(true, arg_3.a.x | true, false), any(arg_3.a), true, arg_3.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.xzy)), countOneBits(~vec4<i32>(-9743i, 2147483647i, u_input.e.x, 1i)) ^ -arg_3.c);
    global1 = array<vec3<u32>, 22>();
    var var_2 = arg_3;
    let var_3 = select(var_2.a.wzy, arg_3.a.zwy, any(vec4<bool>(true, true, true, true)));
    return _wgslsmith_div_i32(var_0, ~(-1i >> (~arg_0.x % 32u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: bool) -> Struct_1 {
    global2 = true;
    let var_0 = Struct_1(vec4<bool>(arg_2, !(arg_2 && true) || any(vec4<bool>(arg_2, arg_2, arg_2, arg_2)), true, false), _wgslsmith_div_vec3_f32(arg_1, vec3<f32>(-661f, 527f, _wgslsmith_div_f32(arg_1.x, arg_1.x))), ~(-_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, -22108i, 35984i, 2147483647i), vec4<i32>(arg_0.x, u_input.e.x, u_input.a.x, -25634i))) & ~(-vec4<i32>(arg_0.x, -339i, 31771i, arg_0.x)));
    global2 = false;
    global1 = array<vec3<u32>, 22>();
    let var_1 = 30950i ^ (_wgslsmith_mod_i32(func_2(vec2<u32>(u_input.c.x, 8757u), _wgslsmith_f_op_vec4_f32(min(global0[_wgslsmith_index_u32(4294967295u, 32u)], vec4<f32>(225f, var_0.b.x, var_0.b.x, -2051f))), var_0.c.x, Struct_1(vec4<bool>(true, arg_2, true, true), arg_1, vec4<i32>(2147483647i, 46165i, u_input.a.x, arg_0.x))), var_0.c.x) >> (max(u_input.c.x, (u_input.d.x ^ 61955u) ^ reverseBits(u_input.c.x)) % 32u));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec4<i32> {
    global0 = array<vec4<f32>, 32>();
    global2 = (arg_0.a.x || true) & arg_1.a.x;
    global2 = false;
    global1 = array<vec3<u32>, 22>();
    global2 = all(func_3(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(-59693i, arg_1.c.x)), ~(~vec2<i32>(-1i, arg_2))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_0.b - arg_0.b)))), arg_1.a.x).a.xzy);
    return abs(arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_i32(func_4(func_3(vec2<i32>(-u_input.a.x, abs(u_input.e.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1248f, -1219f, -458f)) + _wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(true, false, true), Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(1164f, 344f, 854f), vec4<i32>(26504i, -19721i, -2147483647i, u_input.e.x)), vec3<bool>(true, true, true)))), ~u_input.b.x == func_2(u_input.c.xx, global0[_wgslsmith_index_u32(u_input.c.x, 32u)], 22765i, Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(-915f, -187f, -1879f), vec4<i32>(u_input.e.x, 0i, u_input.a.x, u_input.b.x)))), func_3(~max(u_input.b, vec2<i32>(0i, u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(375f, 178f, 1592f) + vec3<f32>(-360f, 1187f, -222f))), true), 27781i), abs(vec4<i32>(4782i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b, u_input.a.zz, u_input.e.yz), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e.x, -29455i), vec2<i32>(0i, -24517i), u_input.e.zz)), ~(-u_input.a.x), -max(2147483647i, u_input.e.x))));
    global2 = true;
    let var_1 = func_3(_wgslsmith_mult_vec2_i32(u_input.b, var_0.zw), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1115f - 229f) - _wgslsmith_f_op_f32(-1833f - 1428f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -239f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1860f) + -770f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(422f + -142f), _wgslsmith_f_op_f32(-284f - -851f), true)), 510f))), false);
    let var_2 = ~reverseBits(_wgslsmith_add_vec4_u32(~vec4<u32>(8619u, u_input.c.x, u_input.d.x, 0u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(9957u, u_input.d.x, u_input.c.x, 61035u), vec4<u32>(u_input.d.x, 4294967295u, 4294967295u, 57019u))));
    let var_3 = vec2<bool>(true, (false & !(-353f != var_1.b.x)) == !select(var_1.a.x, var_1.a.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, var_1.b.yx, select(_wgslsmith_dot_vec4_u32(abs(var_2), ~select(var_2, vec4<u32>(u_input.c.x, var_2.x, 2423u, 118922u), var_1.a.x)), 36402u, var_1.a.x));
}

