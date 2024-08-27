struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: Struct_4,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global2: array<bool, 30> = array<bool, 30>(false, true, false, true, true, false, false, false, true, true, true, false, false, true, false, false, true, true, true, false, false, true, true, true, false, false, true, true, false, false);

var<private> global3: array<vec3<f32>, 19>;

var<private> global4: vec4<f32> = vec4<f32>(305f, 121f, 1000f, -1000f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1216f * -123f), _wgslsmith_f_op_f32(sign(global4.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4.x)))) + _wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global4.x)) * 1671f))), -506f, 550f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) - _wgslsmith_f_op_f32(max(global4.x, 1632f)))))));
    global3 = array<vec3<f32>, 19>();
    global2 = array<bool, 30>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-187f, _wgslsmith_f_op_f32(sign(var_0.x))) + var_0.x)), Struct_1(vec4<bool>(global2[_wgslsmith_index_u32(abs(~4294967295u), 30u)], true, (var_0.x > 280f) || global2[_wgslsmith_index_u32(~u_input.b.x, 30u)], false), firstTrailingBit(select(_wgslsmith_clamp_u32(u_input.c.x, u_input.e.x, u_input.c.x), 41085u, true && global2[_wgslsmith_index_u32(u_input.e.x, 30u)])), ~vec4<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.a.x), 1i, 1i, abs(global0[_wgslsmith_index_u32(u_input.c.x, 20u)]))), vec2<bool>(!(!global2[_wgslsmith_index_u32(u_input.b.x, 30u)] & any(vec4<bool>(false, false, global2[_wgslsmith_index_u32(4813u, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)]))), all(vec2<bool>(global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(u_input.e.x, 30u)])) | ((-64554i >= global0[_wgslsmith_index_u32(0u, 20u)]) || !global2[_wgslsmith_index_u32(4294967295u, 30u)])), Struct_1(vec4<bool>(any(!global1[_wgslsmith_index_u32(u_input.e.x, 18u)]), !(1310f < var_0.x), true, true), u_input.c.x, ~_wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], u_input.d, u_input.d, global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), -vec4<i32>(u_input.a.x, global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(u_input.e.x, 20u)]))));
    let var_2 = -firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(reverseBits(103878u), 20u)], ~(-22236i), u_input.a.x), var_1.d.c.wzx));
    return countOneBits(0u);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_5, arg_3: vec3<u32>) -> i32 {
    var var_0 = Struct_5(arg_2.a, _wgslsmith_mult_u32(u_input.b.x, ~abs(_wgslsmith_add_u32(u_input.b.x, 1u))), arg_2.c, arg_2.d, abs(~1u));
    var var_1 = u_input.b;
    let var_2 = var_0.d.a.x;
    var_0 = arg_2;
    var_0 = arg_2;
    return _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-min(u_input.a.yy, var_0.d.c.xx | arg_2.d.c.yy), u_input.a.zx), min(firstLeadingBit(u_input.a.x >> (_wgslsmith_div_u32(arg_0, arg_3.x) % 32u)), 0i), -34514i);
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> Struct_1 {
    global3 = array<vec3<f32>, 19>();
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x - global4.x) + 786f), global4.x) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(global4.x - global4.x), _wgslsmith_f_op_f32(-global4.x), 1378f, _wgslsmith_f_op_f32(-global4.x))))));
    global3 = array<vec3<f32>, 19>();
    global3 = array<vec3<f32>, 19>();
    let var_0 = Struct_5(Struct_3(countOneBits(u_input.a.x)), u_input.c.x, Struct_4(Struct_3(func_4(_wgslsmith_div_u32(arg_0.x, arg_0.x), global2[_wgslsmith_index_u32(func_3(), 30u)], Struct_5(Struct_3(global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), 1u, Struct_4(Struct_3(u_input.a.x), 5967i, Struct_3(global0[_wgslsmith_index_u32(40809u, 20u)])), Struct_1(vec4<bool>(global2[_wgslsmith_index_u32(25130u, 30u)], global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(u_input.c.x, 30u)], false), arg_1, vec4<i32>(u_input.d, u_input.d, 1i, 1i)), arg_1), vec3<u32>(25798u, 24151u, 4294967295u))), ~(~7193i), Struct_3(-18301i)), Struct_1(!(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(arg_0.x, 30u)], global2[_wgslsmith_index_u32(26440u, 30u)]))), arg_0.x, ~(~select(vec4<i32>(31034i, -39803i, global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(10218u, 20u)]), vec4<i32>(u_input.a.x, -51402i, -26708i, global0[_wgslsmith_index_u32(33245u, 20u)]), true))), 28767u);
    return Struct_1(var_0.d.a, var_0.e, vec4<i32>(-_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.yx, var_0.d.c.zz), abs(-24391i)), -1i, 54176i, -u_input.a.x));
}

fn func_1(arg_0: bool) -> Struct_1 {
    return func_2(u_input.b & vec4<u32>(_wgslsmith_mod_u32(abs(111219u), 4294967295u), _wgslsmith_mod_u32(u_input.c.x, 8876u), u_input.e.x, u_input.b.x), 4294967295u);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec2<u32>, arg_3: bool) -> Struct_5 {
    var var_0 = 1639f;
    global3 = array<vec3<f32>, 19>();
    global2 = array<bool, 30>();
    let var_1 = arg_0.b.a.xz;
    global4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global4.x, -1270f, -707f, 115f), vec4<f32>(global4.x, 1000f, 1382f, arg_0.a)) + vec4<f32>(178f, -906f, arg_0.a, global4.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-701f, global4.x, global4.x, -1437f) - vec4<f32>(arg_0.a, -2338f, global4.x, arg_0.a)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, arg_0.a, -907f, -355f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1503f, 400f, global4.x, -484f) + vec4<f32>(arg_0.a, 147f, 1253f, global4.x))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.a, -225f, arg_0.a, global4.x))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, -1034f, arg_0.a, -1731f) + vec4<f32>(-132f, arg_0.a, arg_0.a, global4.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, global4.x, arg_0.a, 439f) * vec4<f32>(arg_0.a, global4.x, 2376f, global4.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-649f, arg_0.a, 2287f, global4.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(524f, arg_0.a, 190f, global4.x) - vec4<f32>(global4.x, 872f, arg_0.a, global4.x)))))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.x, global4.x) + global4.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -265f))))), func_1(!global2[_wgslsmith_index_u32(1u, 30u)]), global1[_wgslsmith_index_u32(44490u, 18u)], Struct_1(vec4<bool>(func_1(false).a.x, true, select(global2[_wgslsmith_index_u32(u_input.e.x, 30u)], false, global2[_wgslsmith_index_u32(1u, 30u)]), true), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 115983u, u_input.e.x, 6855u), vec4<u32>(30936u, 1u, 1u, u_input.b.x)), vec4<i32>(u_input.d >> (0u % 32u), max(global0[_wgslsmith_index_u32(u_input.c.x, 20u)], global0[_wgslsmith_index_u32(u_input.e.x, 20u)]), -1i | global0[_wgslsmith_index_u32(u_input.e.x, 20u)], u_input.a.x))), Struct_5(Struct_3(u_input.a.x), ~u_input.e.x, Struct_4(Struct_3(reverseBits(u_input.a.x)), ~17083i, Struct_3(reverseBits(u_input.a.x))), func_2(select(firstLeadingBit(vec4<u32>(u_input.c.x, u_input.c.x, 59740u, u_input.c.x)), u_input.b, true), ~(0u << (u_input.e.x % 32u))), 69980u), _wgslsmith_add_vec2_u32(u_input.b.ww, ~_wgslsmith_mod_vec2_u32(vec2<u32>(7157u, 8425u), vec2<u32>(u_input.b.x, 4294967295u) ^ u_input.c)), true);
    global4 = vec4<f32>(global4.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(478f - _wgslsmith_div_f32(2023f, global4.x)) + _wgslsmith_div_f32(_wgslsmith_div_f32(global4.x, 2274f), global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global4.x, global4.x)) + global4.x)))), -308f, global4.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(1u, 1u, ~u_input.e.x), u_input.d);
}

