struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_4,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

var<private> global1: array<vec2<bool>, 9>;

var<private> global2: i32;

var<private> global3: array<vec4<f32>, 21>;

var<private> global4: array<vec4<u32>, 7>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    var var_0 = arg_0.yx;
    var var_1 = firstTrailingBit(~vec2<u32>(u_input.a, ~9916u));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(195f - _wgslsmith_f_op_f32(floor(var_0.x))) - -1428f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x)))));
    var var_3 = false;
    let var_4 = _wgslsmith_div_vec2_u32(~vec2<u32>(1u, _wgslsmith_sub_u32(min(var_1.x, u_input.a), var_1.x)), reverseBits(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, 1u) & _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, var_1.x)), vec2<u32>(_wgslsmith_sub_u32(4294967295u, var_1.x), ~u_input.a))));
    return u_input.b.x;
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> vec3<f32> {
    var var_0 = Struct_5(!arg_0, Struct_2(Struct_1(abs(global4[_wgslsmith_index_u32(26438u, 7u)]), vec2<i32>(abs(-1i), ~31145i)), -1000f, Struct_1(global4[_wgslsmith_index_u32(~u_input.a & ~42407u, 7u)], vec2<i32>(~(-40911i), 1i)), Struct_1(global4[_wgslsmith_index_u32(u_input.a, 7u)], u_input.b), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_1.x, u_input.c.x, -1i, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.b.x, -2147483647i), arg_1), arg_1), -vec4<i32>(1i, 0i, 2147483647i, 1i))), arg_1.zyx, Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)]), vec2<f32>(-2910f, 469f)), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], -1000f), global1[_wgslsmith_index_u32(u_input.a, 9u)])) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], -191f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1766f, -812f), vec2<f32>(1623f, 2592f), vec2<bool>(arg_0, arg_0))))), ~select(arg_1, select(vec4<i32>(u_input.c.x, arg_1.x, -19526i, arg_1.x), vec4<i32>(-88i, 2147483647i, -47955i, 0i), vec4<bool>(arg_0, arg_0, true, false)), select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), true)), u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, u_input.c.x, -4885i), vec3<i32>(20569i, u_input.b.x, -23230i) ^ arg_1.xxw), 19668i, u_input.b.x, -u_input.c.x), vec4<i32>(-(u_input.b.x << (0u % 32u)), 45285i, 2147483647i, -u_input.c.x)));
    global1 = array<vec2<bool>, 9>();
    var var_1 = var_0.b;
    let var_2 = var_1.b;
    var var_3 = arg_1.x;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b, 465f, true)) * -377f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.d.a.x * var_1.b)))), _wgslsmith_f_op_f32(-448f - 189f)));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = abs(firstTrailingBit(u_input.c.x));
    let var_1 = Struct_1(max(~(~(global4[_wgslsmith_index_u32(60224u, 7u)] << (vec4<u32>(arg_0.c, u_input.a, 0u, 1u) % vec4<u32>(32u)))), vec4<u32>(u_input.a << (firstLeadingBit(1u) % 32u), reverseBits(abs(26468u)), _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a, 0u), u_input.a & 40838u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.c, arg_0.c) | vec3<u32>(0u, 54934u, 76100u), vec3<u32>(1u, u_input.a, u_input.a)))), -abs(vec2<i32>(~(-2147483647i), arg_0.b.x)));
    global2 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(true, vec4<i32>(1i, -u_input.b.x, min(var_1.b.x, arg_0.b.x), -arg_0.b.x)))));
    return Struct_1(global4[_wgslsmith_index_u32(u_input.a, 7u)], vec2<i32>(_wgslsmith_add_i32(arg_0.b.x, var_1.b.x), var_1.b.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> vec4<i32> {
    global1 = array<vec2<bool>, 9>();
    var var_0 = vec4<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(24574u, 13u)]) * arg_0.b))) > -1000f, false, ~1u > ~arg_0.d.a.x, false);
    var var_1 = 1u >> (~abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.a.x, arg_0.d.a.x), vec2<u32>(4294967295u, 1u))) % 32u);
    var var_2 = func_2(Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(arg_0.a.a.x, 13u)]), vec2<f32>(arg_0.b, -464f)) * vec2<f32>(global0[_wgslsmith_index_u32(1u, 13u)], arg_0.b))), vec4<i32>(_wgslsmith_mod_i32(u_input.b.x << (arg_0.c.a.x % 32u), arg_1.x << (arg_0.a.a.x % 32u)), 1i, -1i, _wgslsmith_dot_vec3_i32(~arg_0.e.yzw, arg_0.e.xww & vec3<i32>(-1i, 42035i, arg_1.x))), ~arg_0.a.a.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(235f, global0[_wgslsmith_index_u32(27710u, 13u)], 1640f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], -1043f) - vec3<f32>(arg_0.b, arg_0.b, 320f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, 574f, -1257f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(421f, arg_0.b, arg_0.b)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.b, global0[_wgslsmith_index_u32(u_input.a, 13u)], 116f), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)], -413f)))))), vec2<f32>(global0[_wgslsmith_index_u32((arg_0.d.a.x & min(arg_0.d.a.x, u_input.a)) << (~max(4294967295u, 14165u) % 32u), 13u)], _wgslsmith_f_op_f32(step(-707f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(min(arg_0.a.a.x, 1u), 13u)])))));
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1226f, global0[_wgslsmith_index_u32(abs(73608u), 13u)]))), countOneBits(~arg_0.e), ~1u);
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(abs(_wgslsmith_sub_i32(var_2.b.x, arg_1.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x), var_3.b.zzx), 0i, reverseBits(arg_1.x << (1u % 32u))) << (abs(~vec4<u32>(4294967295u, 5943u, 116188u, var_3.c)) % vec4<u32>(32u)), var_3.b, var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = countOneBits(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], 378f, global0[_wgslsmith_index_u32(u_input.a, 13u)]) + vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], 1500f)) + vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], 127f)))));
    var var_0 = min(u_input.a, ~4294967295u);
    let var_1 = u_input.b.x ^ -u_input.c.x;
    global4 = array<vec4<u32>, 7>();
    let var_2 = vec3<u32>((0u << (max(4294967295u, u_input.a) % 32u)) & u_input.a, u_input.a, reverseBits(_wgslsmith_sub_u32(firstTrailingBit(1u), _wgslsmith_add_u32(_wgslsmith_div_u32(0u, u_input.a), u_input.a))));
    let var_3 = _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(4294967295u, 13u)]));
    var var_4 = vec4<i32>(-(~1i << (_wgslsmith_sub_u32(~0u, ~u_input.a) % 32u)), -18575i, u_input.b.x, firstTrailingBit(_wgslsmith_mult_i32(40566i, 14955i)));
    var var_5 = false;
    let var_6 = _wgslsmith_clamp_vec4_i32(abs(func_4(Struct_2(func_2(Struct_4(vec2<f32>(global0[_wgslsmith_index_u32(var_2.x, 13u)], var_3), vec4<i32>(-6800i, u_input.b.x, -1i, u_input.b.x), 21348u), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], 1000f, 1309f), vec2<f32>(731f, -202f)), _wgslsmith_f_op_f32(1497f - 1000f), Struct_1(global4[_wgslsmith_index_u32(var_2.x, 7u)], var_4.zw), func_2(Struct_4(vec2<f32>(var_3, var_3), vec4<i32>(1i, var_4.x, 8554i, var_4.x), 0u), vec3<f32>(global0[_wgslsmith_index_u32(var_2.x, 13u)], -474f, 1444f), vec2<f32>(-492f, 1506f)), -vec4<i32>(2147483647i, 1i, var_1, u_input.c.x)), u_input.b)), ~_wgslsmith_mod_vec4_i32(firstTrailingBit(~vec4<i32>(var_1, u_input.c.x, -1i, 1i)), -vec4<i32>(var_1, u_input.c.x, u_input.b.x, 0i)), -vec4<i32>(countOneBits(firstLeadingBit(var_1)), -2147483647i, _wgslsmith_add_i32(u_input.c.x, 2147483647i) | ~1i, u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(407f, 4294967295u, _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(var_4.wyx, var_4.yxy), var_6.xzy));
}

