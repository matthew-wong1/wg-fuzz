struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: u32,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
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

var<private> global0: Struct_3;

var<private> global1: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(74470u, 1u), vec2<u32>(1u, 22630u), vec2<u32>(4294967295u, 30u), vec2<u32>(16135u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(41792u, 12719u), vec2<u32>(39740u, 57561u), vec2<u32>(1u, 37172u), vec2<u32>(0u, 32023u), vec2<u32>(60354u, 1u), vec2<u32>(1u, 16385u), vec2<u32>(38178u, 24003u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(222u, 22633u), vec2<u32>(43643u, 19100u), vec2<u32>(3254u, 4294967295u), vec2<u32>(33944u, 4294967295u), vec2<u32>(11015u, 0u), vec2<u32>(4294967295u, 10531u), vec2<u32>(18241u, 41861u), vec2<u32>(1u, 4294967295u), vec2<u32>(3306u, 32441u), vec2<u32>(0u, 8127u), vec2<u32>(13497u, 71283u), vec2<u32>(24804u, 4294967295u), vec2<u32>(75538u, 37396u));

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 38784u, 25918u, 30840u);

var<private> global3: array<f32, 15>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: Struct_4) -> f32 {
    let var_0 = !all(vec3<bool>(select(global0.c.b.x, !global0.c.b.x, !arg_1), true, true));
    let var_1 = ~(~1u);
    return arg_0.e;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<u32>, arg_3: f32) -> Struct_2 {
    let var_0 = Struct_2(vec4<i32>(~_wgslsmith_sub_i32(global0.a.a.x, max(global0.a.a.x, global0.c.a.x)), -global0.c.a.x, 10031i, reverseBits(_wgslsmith_div_i32(global0.c.a.x, ~global0.a.e.x))), !select(global0.c.b, select(global0.c.b, vec2<bool>(false, arg_1), select(global0.c.b, global0.c.b, global0.c.b)), arg_1 || true), arg_2.x | ~global2.x, _wgslsmith_f_op_f32(round(552f)), _wgslsmith_f_op_f32(func_3(global0.c, !(arg_2.x <= arg_0) || (arg_1 || true), _wgslsmith_clamp_u32(~_wgslsmith_add_u32(23011u, arg_2.x), arg_0, firstLeadingBit(min(u_input.b, arg_2.x))), Struct_4(Struct_1(vec4<i32>(15091i, global0.c.a.x, 1i, global0.a.e.x), global3[_wgslsmith_index_u32(0u << (0u % 32u), 15u)], vec4<f32>(global0.d, global3[_wgslsmith_index_u32(global0.c.c, 15u)], global3[_wgslsmith_index_u32(arg_2.x, 15u)], 1057f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(371f, 398f)), _wgslsmith_mod_vec4_i32(global0.c.a, vec4<i32>(0i, global0.a.e.x, -1709i, global0.c.a.x))), true))));
    let var_1 = ~var_0.a.xx;
    let var_2 = global0.c;
    let var_3 = Struct_4(Struct_1(-abs(_wgslsmith_mult_vec4_i32(var_0.a, vec4<i32>(var_1.x, 2147483647i, var_1.x, 2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e))), global0.a.c, vec2<f32>(global0.b.x, var_2.d), var_2.a), global0.c.a.x < (_wgslsmith_clamp_i32(11232i, var_2.a.x, var_1.x) << (var_2.c % 32u)));
    let var_4 = Struct_3(global0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global0.a.c.wy)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1546f, arg_3))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(574f, -1048f))), _wgslsmith_f_op_vec2_f32(var_3.a.d * vec2<f32>(arg_3, var_3.a.c.x))))), global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))) + -1000f));
    return Struct_2(vec4<i32>(-3084i, global0.a.e.x, _wgslsmith_dot_vec3_i32(var_0.a.wwy, ~(~vec3<i32>(var_1.x, global0.c.a.x, -22450i))), ~_wgslsmith_add_i32(1i, var_2.a.x)), vec2<bool>((var_1.x >> (~global0.c.c % 32u)) == 0i, var_2.b.x), ~global2.x, -2484f, var_2.d);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> i32 {
    global0 = Struct_3(Struct_1(global0.c.a, -848f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-330f, 336f, global3[_wgslsmith_index_u32(arg_1.c, 15u)], global0.b.x)) - _wgslsmith_f_op_vec4_f32(-global0.a.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1146f, arg_1.d) - global0.a.d)), vec4<i32>(_wgslsmith_mod_i32(arg_1.a.x, _wgslsmith_mod_i32(-2147483647i, -1i)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(-13444i, -1i), firstTrailingBit(global0.c.a.x), 1i), firstTrailingBit(global0.a.e.x) ^ countOneBits(global0.a.a.x), _wgslsmith_mult_i32(global0.a.e.x, ~(-1i)))), _wgslsmith_f_op_vec2_f32(global0.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global0.a.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(1u, 15u)], 446f)))))), arg_1, -1000f);
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.c.zxy)), _wgslsmith_f_op_vec3_f32(-global0.a.c.xyx))), global0.a.c.ywz)) + _wgslsmith_f_op_vec3_f32(-global0.a.c.ywx));
    var var_1 = var_0.x;
    var_1 = _wgslsmith_f_op_f32(ceil(arg_1.d));
    let var_2 = _wgslsmith_add_u32(global0.c.c, ~18357u);
    return (i32(-1i) * -(~countOneBits(17955i))) & arg_1.a.x;
}

fn func_5(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec4_f32(global0.a.c, _wgslsmith_f_op_vec4_f32(-global0.a.c));
    global3 = array<f32, 15>();
    var var_1 = Struct_3(Struct_1(-countOneBits(global0.a.a), _wgslsmith_f_op_f32(abs(-2258f)), _wgslsmith_div_vec4_f32(global0.a.c, var_0), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global0.d)), -614f, func_2(48748u, true, global2.zyx, -1312f).b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a.c.x), global3[_wgslsmith_index_u32(~global0.c.c, 15u)]))), vec4<i32>(-20902i, global0.c.a.x, 1i, max(global0.c.a.x, arg_0) << (u_input.a % 32u))), var_0.wy, func_2((~u_input.c ^ 74671u) >> (u_input.a % 32u), false, global2.zzy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0.c, true, global2.x, Struct_4(Struct_1(global0.a.a, global0.c.d, global0.a.c, var_0.zx, vec4<i32>(global0.a.e.x, arg_0, -1i, global0.a.a.x)), arg_2.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + var_0.x), var_0.x)) * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1000f - global3[_wgslsmith_index_u32(arg_1.x, 15u)]))));
    var var_2 = 49637u;
    let var_3 = _wgslsmith_f_op_vec4_f32(min(var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, 4294967295u, var_1.c.c), 15u)], global0.a.d.x, var_0.x, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.x, 15u)])) - global0.a.c) - _wgslsmith_f_op_vec4_f32(-global0.a.c))));
    return Struct_3(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.ww * vec2<f32>(var_3.x, -967f)))))), var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.c.c, 15u)]) + _wgslsmith_f_op_f32(531f + -240f)) - global0.c.d));
}

fn func_6(arg_0: Struct_3, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = vec2<u32>(19484u, max(1363u, ~14162u));
    let var_1 = Struct_1(arg_0.a.e, func_2(arg_0.c.c, !arg_1.x || (global0.c.b.x || arg_1.x), global2.yxy, -1367f).d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.a.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 15u)], global0.a.d.x, 1092f, -833f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(0u, 15u)], 2307f, arg_0.a.b, 765f)), arg_1.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3[_wgslsmith_index_u32(0u, 15u)], -1528f))) - global0.b)), func_5(~(~0i), global1[_wgslsmith_index_u32(~36262u, 28u)], vec2<bool>(true, arg_0.c.b.x)).c.a);
    global2 = ~firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, global0.c.c, arg_0.c.c, 38010u) ^ select(vec4<u32>(0u, 41014u, var_0.x, 4294967295u), vec4<u32>(81309u, 1u, global2.x, arg_0.c.c), false), vec4<u32>(u_input.c, select(arg_0.c.c, 4294967295u, false), ~arg_0.c.c, 4294967295u)));
    let var_2 = Struct_4(Struct_1(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(0i, var_1.a.x, -6677i, 52462i), -var_1.a)), _wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1818f, global3[_wgslsmith_index_u32(17285u, 15u)], 1496f, 446f) * var_1.c) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, 309f, -1102f, -1328f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1030f, -556f, 641f, global3[_wgslsmith_index_u32(u_input.a, 15u)]) * vec4<f32>(var_1.b, global3[_wgslsmith_index_u32(1u, 15u)], global0.c.d, global0.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_0.a.d))), ~(vec4<i32>(1i, global0.c.a.x, 48328i, 2147483647i) << (~vec4<u32>(global0.c.c, 1u, arg_0.c.c, arg_0.c.c) % vec4<u32>(32u)))), abs(10137i) >= -global0.a.a.x);
    global0 = func_5(func_2(u_input.a, !select(arg_1.x, true, arg_1.x), global2.wwy, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.d.x) + var_2.a.b)))).a.x, abs(vec2<u32>(~_wgslsmith_div_u32(1u, global2.x), global2.x)), !vec2<bool>(false && all(global0.c.b), arg_1.x));
    return func_2(1u, true, vec3<u32>(~(~0u), ~(u_input.b | 0u), func_2(4294967295u, true, vec3<u32>(global2.x, global0.c.c, u_input.a), var_1.b).c ^ global0.c.c) << (~min(select(global2.zxy, global2.xxz, arg_1.xwz), _wgslsmith_mult_vec3_u32(global2.yzw, global2.xwx)) % vec3<u32>(32u)), 404f);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: bool) -> f32 {
    var var_0 = global0.c.c;
    let var_1 = func_6(func_5(func_4((-31359i <= arg_1.x) == arg_2, func_2(_wgslsmith_div_u32(u_input.c, 1u), arg_2 || false, global2.wxw, _wgslsmith_div_f32(global3[_wgslsmith_index_u32(0u, 15u)], 1000f)), abs(_wgslsmith_dot_vec3_u32(arg_0.xxx, vec3<u32>(1u, 1u, 4294967295u)))), ~firstLeadingBit(_wgslsmith_div_vec2_u32(global1[_wgslsmith_index_u32(global0.c.c, 28u)], global1[_wgslsmith_index_u32(0u, 28u)])), !func_2(0u, arg_2, vec3<u32>(u_input.b, global2.x, 13776u), -857f).b), !(!select(vec4<bool>(false, false, arg_2, arg_2), select(vec4<bool>(true, false, arg_2, arg_2), vec4<bool>(true, global0.c.b.x, true, global0.c.b.x), arg_2), vec4<bool>(global0.c.b.x, false, global0.c.b.x, arg_2))));
    var_0 = ~min(~_wgslsmith_dot_vec2_u32(global2.wy, _wgslsmith_add_vec2_u32(vec2<u32>(59242u, 4294967295u), vec2<u32>(arg_0.x, var_1.c))), arg_0.x);
    return 1391f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 52544u, global2.x, 0u) & vec4<u32>(global2.x, u_input.c, global0.c.c, u_input.c), vec4<u32>(u_input.a, 94220u, 34009u, 37237u) & vec4<u32>(32000u, global2.x, global0.c.c, u_input.c), vec4<u32>(global0.c.c, global0.c.c, global2.x, global2.x)), _wgslsmith_sub_vec4_i32(min(global0.a.a, global0.a.a), global0.c.a), true)) + _wgslsmith_f_op_f32(682f - _wgslsmith_f_op_f32(-741f * func_6(Struct_3(Struct_1(vec4<i32>(global0.a.e.x, global0.a.a.x, 0i, global0.a.e.x), global0.c.d, vec4<f32>(-234f, global0.c.d, global3[_wgslsmith_index_u32(global0.c.c, 15u)], -1000f), global0.b, vec4<i32>(global0.a.a.x, global0.a.a.x, global0.a.a.x, 0i)), global0.b, global0.c, 2668f), vec4<bool>(true, true, true, true)).e))));
    let var_1 = Struct_5(func_2(global0.c.c, false, select(global2.wzw, firstTrailingBit(vec3<u32>(global0.c.c, global0.c.c, 19746u)), vec3<bool>(func_5(global0.c.a.x, vec2<u32>(u_input.a, global2.x), global0.c.b).c.b.x, any(vec4<bool>(false, false, false, true)), true)), _wgslsmith_div_f32(1f, func_2(11821u, func_6(Struct_3(Struct_1(global0.a.a, 1187f, global0.a.c, vec2<f32>(global0.b.x, global3[_wgslsmith_index_u32(11134u, 15u)]), vec4<i32>(global0.c.a.x, global0.c.a.x, global0.c.a.x, -1i)), global0.a.c.wz, global0.c, -1000f), vec4<bool>(true, false, true, global0.c.b.x)).b.x, firstTrailingBit(global2.yxw), -377f).e)), func_5(-(~(-46721i)), vec2<u32>(~func_2(u_input.c, true, global2.xwy, global3[_wgslsmith_index_u32(17231u, 15u)]).c, ~abs(u_input.a)), vec2<bool>(any(vec2<bool>(false, true)), global0.c.b.x)), Struct_4(Struct_1(global0.c.a, _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(~42208u, 15u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(1036f, -628f, 1008f, global0.b.x) - _wgslsmith_f_op_vec4_f32(-global0.a.c)), global0.a.c.xy, global0.a.a), false));
    var var_2 = var_1.b;
    let var_3 = Struct_5(Struct_2(_wgslsmith_clamp_vec4_i32(var_2.c.a, vec4<i32>(_wgslsmith_div_i32(var_2.c.a.x, 2147483647i), -1i ^ var_1.b.a.a.x, reverseBits(var_1.a.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.c.a.x, var_2.c.a.x), var_2.a.a.xx)), ~vec4<i32>(13416i, 14773i, -30920i, global0.c.a.x)), !var_2.c.b, u_input.b, 2529f, 834f), func_5(-_wgslsmith_add_i32(-2147483647i, func_6(var_1.b, vec4<bool>(false, true, var_1.c.b, false)).a.x), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, 0u), global2.xz), abs(global2.ww >> (global2.wy % vec2<u32>(32u)))), vec2<bool>(var_2.c.b.x, false)), var_1.c);
    let var_4 = _wgslsmith_f_op_vec3_f32(-global0.a.c.xxy);
    var var_5 = max(0u, 37121u);
    let x = u_input.a;
    s_output = StorageBuffer(min(-47957i, -(var_2.a.e.x | var_3.c.a.a.x)));
}

