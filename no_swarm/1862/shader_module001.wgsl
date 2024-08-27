struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
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

var<private> global0: array<vec4<u32>, 32>;

var<private> global1: Struct_5 = Struct_5(-428f, vec4<f32>(362f, 275f, -1327f, 1000f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    let var_0 = select(~(~1u), u_input.e.x, true) << (reverseBits(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), countOneBits(global0[_wgslsmith_index_u32(1u, 32u)])))) % 32u);
    let var_1 = Struct_1(-261f, vec4<i32>(u_input.b.x, firstLeadingBit(countOneBits(67740i)), u_input.b.x, select(_wgslsmith_div_i32(u_input.c.x, u_input.b.x), 2147483647i, true)), u_input.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(trunc(120f)))))), u_input.c.x);
    global0 = array<vec4<u32>, 32>();
    var var_2 = ~vec4<u32>(u_input.e.x & firstTrailingBit(u_input.e.x), 1u, 4294967295u, firstLeadingBit(~(~u_input.e.x)));
    var var_3 = vec2<i32>(firstLeadingBit(1i), firstLeadingBit(~2147483647i));
    return 0i;
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_1 {
    global1 = Struct_5(_wgslsmith_f_op_f32(step(global1.b.x, global1.a)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -255f), _wgslsmith_f_op_f32(f32(-1f) * -1374f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-599f, 329f)))), _wgslsmith_f_op_f32(sign(288f))));
    global0 = array<vec4<u32>, 32>();
    global0 = array<vec4<u32>, 32>();
    var var_0 = func_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global1.b.zw))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-542f, global1.a), vec2<f32>(-630f, -1723f), vec2<bool>(true, true)))));
    let var_1 = true;
    return Struct_1(_wgslsmith_f_op_f32(ceil(global1.a)), select(reverseBits((vec4<i32>(u_input.b.x, 22919i, u_input.d.x, -1i) ^ vec4<i32>(28570i, 0i, u_input.b.x, -1i)) << (firstLeadingBit(global0[_wgslsmith_index_u32(88497u, 32u)]) % vec4<u32>(32u))), vec4<i32>(-28096i, -u_input.b.x, u_input.d.x, -1882i), !(!(!vec4<bool>(var_1, false, true, false)))), 1i ^ u_input.d.x, global1.a, u_input.c.x);
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(-1123f, firstTrailingBit(-vec4<i32>(u_input.d.x, -19962i, 10911i, u_input.a) >> ((global0[_wgslsmith_index_u32(u_input.e.x, 32u)] >> (vec4<u32>(0u, 2314u, 116161u, u_input.e.x) % vec4<u32>(32u))) % vec4<u32>(32u))), -u_input.a, global1.b.x, _wgslsmith_add_i32(u_input.d.x << (0u % 32u), u_input.a)), func_2(u_input.e.x, u_input.e.x), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(547f))))), firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.b.x, u_input.d.x, 7552i), func_2(0u, 184u).b, countOneBits(vec4<i32>(-18743i, 28592i, u_input.b.x, 0i)))), 36440i, global1.b.x, _wgslsmith_sub_i32(27647i, u_input.b.x)));
    var var_1 = ~(global0[_wgslsmith_index_u32(~u_input.e.x, 32u)] ^ vec4<u32>(1u, ~u_input.e.x << (u_input.e.x % 32u), 1u, ~countOneBits(1u)));
    let var_2 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(4294967295u), u_input.e.x, 0u, _wgslsmith_add_u32(0u, var_1.x)), global0[_wgslsmith_index_u32(var_1.x, 32u)]), u_input.e.x), abs(1u) >> ((20577u ^ u_input.e.x) % 32u));
    var_1 = global0[_wgslsmith_index_u32(14900u, 32u)];
    var_1 = firstLeadingBit(~(~vec4<u32>(u_input.e.x, 58330u, var_2.x, 30369u)) | select(_wgslsmith_div_vec4_u32(~vec4<u32>(8000u, 0u, u_input.e.x, var_2.x), _wgslsmith_add_vec4_u32(vec4<u32>(55361u, 24777u, var_2.x, u_input.e.x), global0[_wgslsmith_index_u32(u_input.e.x, 32u)])), ~abs(vec4<u32>(4294967295u, var_2.x, 31533u, var_2.x)), var_0.c.e <= firstTrailingBit(40824i)));
    return Struct_2(Struct_1(-520f, firstTrailingBit(var_0.a.b), -19400i, 1164f, _wgslsmith_sub_i32(var_0.b.c >> (_wgslsmith_clamp_u32(30452u, var_2.x, 22720u) % 32u), ~(~1i))), func_2(var_2.x, min(77384u, 1u)), Struct_1(336f, var_0.a.b, -reverseBits(18867i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(func_2(var_2.x, u_input.e.x).a)))), 1i));
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> f32 {
    let var_0 = arg_0.e;
    var var_1 = !(!(true | (0u > ~u_input.e.x)));
    var var_2 = 2897u;
    var var_3 = _wgslsmith_mult_i32(min(2147483647i, u_input.b.x), -2147483647i);
    let var_4 = func_1().b.e;
    return -929f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 32>();
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.a, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-536f, _wgslsmith_f_op_f32(-global1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2117f - -443f)) + 1000f))));
    global1 = Struct_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(Struct_3(func_1(), func_1(), func_1(), vec4<i32>(u_input.a, 46541i, u_input.b.x, u_input.b.x) >> (global0[_wgslsmith_index_u32(0u, 32u)] % vec4<u32>(32u)), func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global1.b - var_0), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1327f)) + _wgslsmith_f_op_f32(591f - global1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x)))), vec4<bool>(all(vec2<bool>(false, false)) || any(vec3<bool>(false, false, false)), false, false, true))));
    global1 = Struct_5(global1.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, 244f, var_0.x, _wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(Struct_1(-2185f, vec4<i32>(u_input.a, 3333i, -2147483647i, 40241i), u_input.c.x, global1.a, u_input.a), Struct_1(global1.a, vec4<i32>(u_input.d.x, u_input.d.x, u_input.a, 17450i), u_input.a, 859f, u_input.d.x), Struct_1(global1.b.x, vec4<i32>(-6541i, u_input.d.x, u_input.d.x, -2147483647i), -2147483647i, global1.b.x, -2147483647i)), Struct_2(Struct_1(var_0.x, vec4<i32>(-1i, u_input.d.x, u_input.c.x, u_input.a), u_input.d.x, 2156f, -35234i), Struct_1(1009f, vec4<i32>(u_input.a, u_input.c.x, 2147483647i, 17795i), u_input.c.x, var_0.x, 10561i), Struct_1(-1869f, vec4<i32>(-2147483647i, u_input.a, u_input.c.x, u_input.a), u_input.d.x, -601f, u_input.c.x)), Struct_2(Struct_1(var_0.x, vec4<i32>(u_input.c.x, 18544i, -37182i, 13929i), -15465i, var_0.x, u_input.b.x), Struct_1(var_0.x, vec4<i32>(1i, u_input.d.x, -1i, -1i), u_input.d.x, -444f, 0i), Struct_1(2214f, vec4<i32>(2147483647i, u_input.c.x, 2147483647i, 2147483647i), -35297i, 279f, u_input.c.x)), vec4<i32>(u_input.d.x, u_input.c.x, 58820i, u_input.a), Struct_2(Struct_1(var_0.x, vec4<i32>(u_input.d.x, u_input.a, 1i, 17139i), u_input.a, global1.a, u_input.c.x), Struct_1(var_0.x, vec4<i32>(8277i, -38821i, u_input.a, -2147483647i), -645i, 898f, 0i), Struct_1(1000f, vec4<i32>(2147483647i, 0i, 0i, 0i), u_input.c.x, -850f, -2147483647i))), _wgslsmith_f_op_f32(-267f * global1.a)))) + vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-var_0.x)), 2097f, var_0.x)));
    global1 = Struct_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1390f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1283f))), global1.b);
    var var_1 = min(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + var_0.yw)) & -10499i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(-2147483647i), u_input.d.x & u_input.d.x, 43160i, 745i), reverseBits(~vec4<i32>(u_input.d.x, 16704i, u_input.c.x, u_input.d.x))), min(~min(u_input.c.x, u_input.b.x), 8850i)));
    var_1 = 1i;
    let var_2 = Struct_3(func_1(), Struct_2(Struct_1(var_0.x, abs(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.d.x, 3118i, u_input.a), vec4<i32>(20081i, 2147483647i, u_input.a, u_input.a))), countOneBits(i32(-1i) * -6101i), global1.a, 0i), func_1().c, func_2(_wgslsmith_mult_u32(u_input.e.x, u_input.e.x), _wgslsmith_add_u32(27559u, 1u))), func_1(), vec4<i32>(~23917i, reverseBits(_wgslsmith_clamp_i32(u_input.c.x, -1i, 2147483647i)) ^ 1i, u_input.a, i32(-1i) * -25832i), func_1());
    let var_3 = global0[_wgslsmith_index_u32(~min(41376u, _wgslsmith_mult_u32(countOneBits(max(u_input.e.x, u_input.e.x)), u_input.e.x)), 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(-34323i);
}

