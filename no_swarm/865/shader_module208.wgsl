struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: vec2<bool>;

var<private> global2: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-2606i, 0i), vec2<i32>(-50639i, 2147483647i), vec2<i32>(2147483647i, -1670i), vec2<i32>(-60093i, -1i), vec2<i32>(26525i, -15251i), vec2<i32>(8774i, -1i), vec2<i32>(-12895i, 0i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(672i, 11503i), vec2<i32>(-11281i, -18994i), vec2<i32>(-32062i, 59045i), vec2<i32>(8469i, 0i));

var<private> global3: u32;

var<private> global4: vec2<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(!(!vec2<bool>(select(global1.x, false, true), all(vec4<bool>(false, false, true, global1.x)))), vec2<i32>(global4.x >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(74848u, 7u)], 7u)] % 32u), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global4.x, u_input.b, u_input.b), vec4<i32>(1i, u_input.b, global4.x, -22243i)))), u_input.a.x, vec2<f32>(1f, 1f));
    var var_1 = Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(true, !global1.x), select(select(vec2<bool>(true, false), vec2<bool>(global1.x, var_0.a.x), var_0.a), var_0.a, true)), var_0.a, !(!(!var_0.a))), ~_wgslsmith_div_vec2_i32(vec2<i32>(abs(var_0.b.x), -19461i), var_0.b), global0[_wgslsmith_index_u32(~abs(min(26410u, 0u)) | firstLeadingBit(reverseBits(_wgslsmith_mod_u32(1u, var_0.c))), 7u)], var_0.d);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.d.x, 202f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-239f - 916f))) - var_0.d.x), _wgslsmith_f_op_f32(1000f + 966f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -165f), var_1.d.x)))), _wgslsmith_f_op_f32(944f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x - -749f) * 2065f)));
    let var_3 = true;
    var var_4 = Struct_1(vec2<bool>(var_1.a.x, all(vec4<bool>(!var_3, true, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)] > 68682u, true))), vec2<i32>(-reverseBits(~(-2147483647i)), ~(2147483647i & (-17471i << (global0[_wgslsmith_index_u32(u_input.a.x, 7u)] % 32u)))), abs(~(~4294967295u)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(ceil(364f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-781f * var_0.d.x))))));
    return ~112976u >> (abs(var_4.c) % 32u);
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: vec4<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_1.x)), _wgslsmith_f_op_f32(arg_2.x - -809f), arg_2.x, arg_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1201f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1482f - arg_2.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_2, arg_2, vec4<bool>(true, global1.x, global1.x, global1.x)))))));
    let var_1 = ~global4.x | global4.x;
    let var_2 = Struct_1(vec2<bool>(true, true), -_wgslsmith_mult_vec2_i32(global2[_wgslsmith_index_u32(reverseBits(4294967295u), 15u)], _wgslsmith_div_vec2_i32(global2[_wgslsmith_index_u32(0u, 15u)], vec2<i32>(u_input.c, 2147483647i))), _wgslsmith_sub_u32(abs(min(60876u, func_3())), 43661u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1)));
    let var_3 = var_2.c;
    let var_4 = Struct_1(!vec2<bool>(!any(var_2.a), all(!vec3<bool>(var_2.a.x, true, true))), global2[_wgslsmith_index_u32(11009u, 15u)], u_input.a.x, arg_1);
    return vec2<bool>(!global1.x, global1.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    global1 = !vec2<bool>(false, all(select(select(arg_1.a, vec2<bool>(false, global1.x), true), select(arg_1.a, vec2<bool>(false, false), global1.x), global1.x)));
    let var_0 = arg_1;
    var var_1 = global1.x;
    var var_2 = Struct_1(func_2(3954u ^ abs(~global0[_wgslsmith_index_u32(arg_0.x, 7u)]), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(974f, -858f) + var_0.d), vec2<f32>(arg_1.d.x, -144f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.d.x, arg_1.d.x, arg_1.d.x, arg_1.d.x))))), vec2<i32>(-4906i, arg_1.b.x), ~firstLeadingBit(~0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d.x, var_0.d.x) + vec2<f32>(982f, arg_1.d.x)), _wgslsmith_f_op_vec2_f32(-var_0.d)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1387f, arg_1.d.x))))));
    global3 = _wgslsmith_dot_vec2_u32(vec2<u32>(3390u, u_input.a.x), abs(~(min(vec2<u32>(4294967295u, 4294967295u), arg_0.zy) & (vec2<u32>(u_input.a.x, 11524u) | vec2<u32>(56116u, var_2.c)))));
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: u32) -> vec2<bool> {
    var var_0 = func_4(countOneBits(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, arg_1, 7198u), u_input.a.yyx)), Struct_1(select(select(func_2(82690u, vec2<f32>(714f, arg_0), vec4<f32>(arg_0, arg_0, -1000f, arg_0)), vec2<bool>(false, false), true), vec2<bool>(global1.x, true), !func_2(u_input.a.x, vec2<f32>(arg_0, 523f), vec4<f32>(arg_0, 312f, 472f, arg_0))), ~vec2<i32>(u_input.c, 0i) >> (u_input.a.yy % vec2<u32>(32u)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.a.x), 7u)], vec2<f32>(arg_0, -1000f)));
    var var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_0.b, _wgslsmith_sub_vec2_i32(global2[_wgslsmith_index_u32(1u, 15u)], vec2<i32>(global4.x, ~43798i))), min(firstLeadingBit(_wgslsmith_add_vec2_i32(var_0.b, -vec2<i32>(global4.x, 0i))), -vec2<i32>(_wgslsmith_add_i32(75984i, -1i), global4.x)));
    var var_2 = _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~_wgslsmith_dot_vec2_i32(var_0.b, var_0.b)), global2[_wgslsmith_index_u32(var_0.c << (func_4(vec3<u32>(var_0.c, 0u, arg_1), func_4(vec3<u32>(var_0.c, u_input.a.x, 25452u), Struct_1(var_0.a, var_0.b, arg_1, vec2<f32>(var_0.d.x, arg_0)))).c % 32u), 15u)]));
    global3 = 52883u;
    global3 = var_0.c << (~_wgslsmith_clamp_u32(~32759u, _wgslsmith_mult_u32(~45978u, global0[_wgslsmith_index_u32(~var_0.c, 7u)]), 1u) % 32u);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!func_1(1f, global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, 11704u), global0[_wgslsmith_index_u32(40495u | u_input.a.x, 7u)]), 15u)], func_4(vec3<u32>(4294967295u, _wgslsmith_clamp_u32(u_input.a.x, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 7u)], ~1u), global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 7u)], 7u)], 7u)]), 7u)]), Struct_1(vec2<bool>(global1.x, global4.x > global4.x), vec2<i32>(-2147483647i, global4.x), 35678u, vec2<f32>(_wgslsmith_f_op_f32(575f - 878f), _wgslsmith_f_op_f32(f32(-1f) * -322f)))).c, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1067f, 1000f) + vec2<f32>(-1461f, -709f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -629f))))))));
    let var_1 = 4294967295u;
    var var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(~reverseBits(u_input.a.xwz)), u_input.a.wwy), ~_wgslsmith_add_vec3_u32(~u_input.a.wxw, ~(~u_input.a.zyy)));
    var var_3 = ~_wgslsmith_div_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(-21143i, 2147483647i, var_0.b.x, -1i), vec4<i32>(global4.x, u_input.c, -19215i, 42946i)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(var_0.b.x, 1561i, -32409i, 16729i)), select(vec4<i32>(var_0.b.x, var_0.b.x, u_input.b, var_0.b.x), vec4<i32>(-45204i, u_input.b, u_input.b, global4.x), var_0.a.x))) | select(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, var_0.b.x, -8809i, var_0.b.x), select(vec4<i32>(20583i, var_0.b.x, 0i, -1i), vec4<i32>(-4439i, 31144i, 2147483647i, u_input.c), true)), max(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 16950i, -1i, u_input.c), vec4<i32>(var_0.b.x, 2147483647i, -19885i, u_input.c), vec4<i32>(2147483647i, var_0.b.x, u_input.c, global4.x)), ~select(vec4<i32>(2147483647i, u_input.c, 2147483647i, 1i), vec4<i32>(global4.x, 41684i, -2147483647i, -40988i), global1.x)), true);
    var_0 = func_4(countOneBits(~vec3<u32>(29805u, ~u_input.a.x, 1u)), Struct_1(var_0.a, global2[_wgslsmith_index_u32(~(~0u), 15u)], 0u, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.d - var_0.d) * vec2<f32>(1210f, var_0.d.x))))));
    let var_4 = func_4(max(vec3<u32>(func_4(u_input.a.xww, Struct_1(vec2<bool>(false, false), global2[_wgslsmith_index_u32(var_0.c, 15u)], var_0.c, vec2<f32>(1473f, 544f))).c, global0[_wgslsmith_index_u32(4294967295u, 7u)], var_0.c) & ~(~u_input.a.ywx), vec3<u32>(var_1, ~var_1, u_input.a.x)), func_4(u_input.a.yzx, func_4(vec3<u32>(7328u, 0u, 1u ^ var_1), Struct_1(var_0.a, vec2<i32>(global4.x, -68697i), u_input.a.x, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.d.x, -1961f)))))));
    var_2 = ~(~(~1u)) & abs(~func_4(select(u_input.a.yxw, u_input.a.xyw, vec3<bool>(true, var_0.a.x, true)), func_4(u_input.a.zzw, var_4)).c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -324f), 164f), 19278u);
}

