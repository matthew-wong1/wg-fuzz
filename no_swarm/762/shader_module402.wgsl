struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_4,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 15>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_1) -> vec4<bool> {
    global0 = array<vec4<f32>, 15>();
    global0 = array<vec4<f32>, 15>();
    var var_0 = Struct_2(arg_0.xyw, Struct_1(!arg_3.a, arg_3.b), arg_3.a, !(!arg_3.a.xz));
    var var_1 = arg_2;
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_0.xx)), arg_0.xz))), arg_0.xx);
    return !select(!select(!vec4<bool>(true, false, true, var_0.d.x), vec4<bool>(false, true, arg_3.a.x, false), arg_2 != 2147483647i), select(vec4<bool>(arg_3.a.x, 52424u < arg_3.b.x, var_0.c.x, true | var_0.b.a.x), !(!vec4<bool>(false, true, true, arg_3.a.x)), !(!vec4<bool>(var_0.b.a.x, true, arg_3.a.x, var_0.b.a.x))), vec4<bool>(!(arg_0.x != 2044f), false, var_0.d.x, true));
}

fn func_3(arg_0: vec4<f32>) -> vec3<bool> {
    let var_0 = Struct_5(Struct_3(Struct_1(func_2(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(52497u, 15u)]), vec4<u32>(4294967295u, 53720u, 42788u, u_input.c), 5473i, Struct_1(vec3<bool>(false, false, true), vec2<u32>(u_input.a.x, u_input.b))).wwz, u_input.a.zy), vec4<u32>(~u_input.a.x, ~reverseBits(u_input.c), 7562u, 90925u), ~(~select(u_input.a.x, u_input.b, true)), vec4<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_clamp_u32(reverseBits(0u), min(4294967295u, u_input.c), 11623u), select(54462u & u_input.b, 1u, any(vec3<bool>(false, false, false))), ~u_input.a.x & ~42867u), Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(548f, 223f, arg_0.x))))), Struct_1(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), ~vec2<u32>(u_input.a.x, 0u)), vec3<bool>(true, true, true), vec2<bool>(true, true))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(arg_0.ywx))))), Struct_1(select(vec3<bool>(true, true, true), func_2(global0[_wgslsmith_index_u32(u_input.c, 15u)], vec4<u32>(u_input.a.x, 1u, 0u, u_input.b), -50425i, Struct_1(vec3<bool>(true, true, false), u_input.a.yy)).zzz, arg_0.x > arg_0.x), u_input.a.zy), !func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -299f)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.b, 58184u, 0u), vec4<u32>(u_input.c, 18903u, 66670u, 1u)), -21526i, Struct_1(vec3<bool>(true, true, false), u_input.a.yx)).www, select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(false, false)), true), false)), Struct_4(vec3<bool>(false, false, true), -232f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), Struct_4(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + -267f) * _wgslsmith_f_op_f32(trunc(arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -528f))));
    let var_1 = Struct_1(vec3<bool>(true, true, any(select(var_0.b.b.a, vec3<bool>(false, var_0.b.d.x, false), !vec3<bool>(true, var_0.c.a.x, true)))), ~(vec2<u32>(min(u_input.b, 0u), 0u) >> ((_wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.b.b.x, var_0.a.c), var_0.b.b.b) | vec2<u32>(4294967295u, 27735u)) % vec2<u32>(32u))));
    let var_2 = Struct_5(Struct_3(Struct_1(!select(var_1.a, vec3<bool>(false, false, true), var_1.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(49952u, var_1.b.x), ~u_input.a.yz, vec2<u32>(u_input.a.x, var_1.b.x) ^ var_1.b)), var_0.a.d, 3927u, vec4<u32>(1855u, 4352u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 0u), select(vec4<u32>(1u, var_0.a.b.x, 0u, 4294967295u), var_0.a.b, var_0.b.b.a.x)), ~u_input.b), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_0.wzw, vec3<f32>(-564f, -1260f, var_0.a.e.a.x)))), Struct_1(var_1.a, ~vec2<u32>(var_0.b.b.b.x, 25208u)), vec3<bool>(true, all(vec2<bool>(true, false)), false & var_0.c.a.x), func_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, arg_0.x, -112f, 149f))), ~vec4<u32>(u_input.c, 26402u, var_0.b.b.b.x, 1u), 1i, Struct_1(var_0.d.a, vec2<u32>(1u, u_input.a.x))).zz)), Struct_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-683f, _wgslsmith_f_op_f32(select(-1018f, -371f, true)), var_0.a.e.a.x))), Struct_1(select(vec3<bool>(var_0.d.a.x, var_1.a.x, true), vec3<bool>(false, var_0.d.a.x, var_1.a.x), var_1.a), ~var_0.a.b.yx), vec3<bool>(_wgslsmith_dot_vec2_u32(var_0.a.a.b, var_0.a.e.b.b) >= var_0.a.b.x, !(!var_0.c.a.x), any(var_1.a)), !(!vec2<bool>(true, var_1.a.x))), var_0.d, var_0.c);
    var var_3 = _wgslsmith_clamp_u32(min(~0u, 19873u), 4294967295u, abs(~reverseBits(var_1.b.x)));
    let var_4 = _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(1i, 1i)) << (var_1.b % vec2<u32>(32u)), select(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-87238i << (var_2.a.c % 32u), ~16811i)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(34785i, -1i), min(~vec2<i32>(-2147483647i, -22196i), abs(vec2<i32>(-2147483647i, 2147483647i)))), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global0[_wgslsmith_index_u32(var_0.b.b.b.x, 15u)]))), var_0.a.b, abs(16256i), var_2.a.a).wx));
    return vec3<bool>(_wgslsmith_sub_i32(-2147483647i, -min(12049i, 2147483647i)) < -(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_4, -15892i), vec2<i32>(var_4, var_4))), !var_2.a.a.a.x, true);
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1030f);
    global0 = array<vec4<f32>, 15>();
    global0 = array<vec4<f32>, 15>();
    var var_1 = any(select(vec4<bool>(true, true, true, var_0 >= _wgslsmith_f_op_f32(floor(var_0))), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), func_2(vec4<f32>(var_0, var_0, -322f, -107f), vec4<u32>(4294967295u, u_input.a.x, 5707u, u_input.a.x), arg_0, Struct_1(vec3<bool>(true, true, false), u_input.a.xx))), vec4<bool>(!all(vec3<bool>(false, false, false)), select(true, 20945u < u_input.a.x, true), true || all(vec4<bool>(true, true, true, true)), true)));
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(~u_input.a.x, 15u)] * global0[_wgslsmith_index_u32(u_input.c, 15u)])), vec4<u32>(~(~u_input.c), 1u, 4294967295u, u_input.b | u_input.c) << (~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.c, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 4294967295u, 16058u, u_input.c))) % vec4<u32>(32u)), 1i, Struct_1(func_3(global0[_wgslsmith_index_u32(1u, 15u)]), ~(~u_input.a.zz) << (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), u_input.a), 1u) % vec2<u32>(32u))));
    return Struct_3(Struct_1(!var_2.xzw, ~_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.yx, u_input.a.xx), u_input.a.yy & vec2<u32>(u_input.c, u_input.c))), ~vec4<u32>(31259u, ~69297u, ~u_input.a.x, 41972u) ^ countOneBits(max(reverseBits(vec4<u32>(0u, u_input.c, u_input.a.x, 43206u)), ~vec4<u32>(u_input.a.x, u_input.c, 2439u, 27363u))), ~_wgslsmith_clamp_u32(~(~56441u), 12296u, ~_wgslsmith_div_u32(u_input.a.x, u_input.b)), ~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c, 5466u, u_input.c, 1u), vec4<u32>(63967u, 4294967295u, u_input.b, u_input.c)), vec4<u32>(u_input.c, ~u_input.b, ~4294967295u, u_input.c)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, 576f, 432f))) + _wgslsmith_div_vec3_f32(vec3<f32>(-1891f, var_0, 422f), vec3<f32>(363f, var_0, var_0)))), Struct_1(func_3(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(15064u, 15u)])), vec2<u32>(_wgslsmith_clamp_u32(u_input.b, 1u, u_input.c), ~4294967295u)), select(select(vec3<bool>(var_2.x, true, true), vec3<bool>(false, false, var_2.x), true), select(!vec3<bool>(var_2.x, true, true), func_2(vec4<f32>(-1258f, -1179f, 156f, var_0), vec4<u32>(u_input.a.x, 68989u, 1u, 0u), arg_0, Struct_1(var_2.zzx, vec2<u32>(u_input.b, u_input.b))).wyx, true), var_2.xzz), func_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -888f), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(select(1000f, -527f, false)), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_mod_vec4_u32(vec4<u32>(50460u, u_input.b, u_input.c, 1u) >> (vec4<u32>(u_input.b, 4294967295u, 27553u, 721u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a.x, 46907u, u_input.b), vec4<u32>(u_input.b, u_input.c, u_input.b, u_input.a.x))), 1i, Struct_1(vec3<bool>(var_2.x, var_2.x, var_2.x), vec2<u32>(50839u, u_input.a.x))).zy));
}

fn func_4(arg_0: Struct_3) -> i32 {
    global0 = array<vec4<f32>, 15>();
    let var_0 = i32(-1i) * -3700i;
    let var_1 = ~(countOneBits(func_1(-2147483647i).b.wyy >> (_wgslsmith_sub_vec3_u32(arg_0.d.xxz, vec3<u32>(u_input.b, 59520u, u_input.c)) % vec3<u32>(32u))) & vec3<u32>(~u_input.c, 45289u, 4294967295u));
    global0 = array<vec4<f32>, 15>();
    let var_2 = 4294967295u;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(func_4(func_1(~(-2147483647i))), -reverseBits(firstTrailingBit(50909i))), 1i);
    var var_1 = u_input.b;
    var_1 = u_input.c;
    var var_2 = u_input.c;
    var var_3 = ~_wgslsmith_mod_u32(1u, ~select(u_input.a.x ^ 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.c), vec2<u32>(1u, u_input.b)), true));
    global0 = array<vec4<f32>, 15>();
    let var_4 = func_2(_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(~firstTrailingBit(u_input.c), 15u)], vec4<f32>(-429f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(934f, 2009f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(floor(572f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-851f, 884f))))), vec4<u32>(select(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, 13046u), u_input.a), 1u, true), 4294967295u, select(6451u, 64242u, (1i != var_0) & true), 4294967295u), var_0, Struct_1(vec3<bool>(~var_0 >= var_0, !func_2(vec4<f32>(779f, 1000f, 432f, 515f), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), 13634i, Struct_1(vec3<bool>(true, false, true), vec2<u32>(u_input.c, u_input.c))).x, func_1(var_0 ^ -2147483647i).e.b.a.x), _wgslsmith_clamp_vec2_u32(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(48883u, u_input.a.x))), vec2<u32>(u_input.c, 0u & u_input.c), u_input.a.zy)));
    let var_5 = all(vec3<bool>(true, !var_4.x, var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_clamp_vec2_u32(~(~u_input.a.yx), reverseBits(vec2<u32>(u_input.a.x, u_input.b) ^ vec2<u32>(u_input.b, 24432u)), ~_wgslsmith_mult_vec2_u32(u_input.a.xx, u_input.a.xy))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-630f - 1880f), 1839f, _wgslsmith_f_op_f32(max(-570f, -467f)))))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(var_0, 9557i), ~var_0, i32(-1i) * -22006i, -2147483647i) << (vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(46778u, u_input.c)), ~0u, ~u_input.b, ~1u) % vec4<u32>(32u)), vec4<i32>(-1i, 0i, abs(_wgslsmith_sub_i32(var_0, var_0)), -18009i)), 1u);
}

