struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(641f, -1685f, -517f), -53948i, 1690f, vec4<i32>(i32(-2147483648), -1i, 75821i, 2147483647i));

var<private> global2: bool;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<f32> {
    global2 = !((true | !global0.x) | !global0.x) || all(!vec2<bool>(true, u_input.a.x < 33792u));
    var var_0 = firstLeadingBit(firstLeadingBit(_wgslsmith_mult_u32(29985u, u_input.a.x | 1u)));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(511f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c, -1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global1.a.x, 132f, false)), global1.a.x))))), -_wgslsmith_clamp_i32(-2147483647i, -8819i >> (u_input.a.x % 32u), ~global1.d.x), 1f, global1.d);
    var var_1 = Struct_1(vec3<f32>(global1.a.x, 831f, global1.a.x), -abs(~_wgslsmith_mult_i32(0i, -34633i)), _wgslsmith_f_op_f32(f32(-1f) * -459f), -(~countOneBits(max(global1.d, vec4<i32>(-12712i, -26718i, -1i, global1.d.x)))));
    var var_2 = 0i;
    return global1.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool) -> vec3<f32> {
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, 380f, global1.a.x) * vec3<f32>(-448f, -1991f, global1.c)) + vec3<f32>(global1.c, 1092f, global1.a.x)), _wgslsmith_f_op_vec3_f32(func_3()))) + arg_1.a), firstTrailingBit(_wgslsmith_clamp_i32(global1.d.x, 0i, -17470i) | -18974i) << (~u_input.a.x % 32u), arg_1.a.x, -vec4<i32>(arg_0.x, _wgslsmith_div_i32(max(arg_1.d.x, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(6855i, arg_1.b, arg_1.b), arg_0)), 2147483647i, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(arg_1.d.x, -25406i, -2147483647i), arg_1.b, max(-2147483647i, 2147483647i))));
    global2 = true;
    var var_0 = Struct_1(global1.a, max(arg_0.x, ~_wgslsmith_sub_i32(arg_1.b, 0i) & 0i), _wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(43969i, 1i, arg_1.d.x), _wgslsmith_dot_vec2_i32(global1.d.xz, arg_1.d.zz), reverseBits(-12130i), _wgslsmith_add_i32(2147483647i, global1.d.x)) ^ vec4<i32>(arg_1.d.x | arg_1.b, arg_1.b, max(arg_0.x, -20043i), 2147483647i), -vec4<i32>(arg_0.x, 4153i, 1i, 9511i)));
    global2 = arg_2;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(794f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(abs(var_0.c)), u_input.a.x == u_input.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.c, _wgslsmith_f_op_f32(-405f + 151f))))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(707f, _wgslsmith_f_op_f32(f32(-1f) * -124f), _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_vec3_f32(global1.a + vec3<f32>(-1144f, 484f, arg_1.a.x)))), var_0.a);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1190f, arg_3.a.x, arg_3.a.x)))), _wgslsmith_f_op_vec3_f32(-global1.a)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_3.a);
    let var_2 = any(select(vec4<bool>(false, !(46789u <= u_input.a.x), (global1.c == arg_3.a.x) || all(vec4<bool>(true, arg_1, arg_1, arg_1)), global0.x), select(select(!vec4<bool>(arg_1, false, global0.x, arg_1), select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(false, global0.x, global0.x, arg_1), arg_1), !vec4<bool>(arg_1, true, arg_1, false)), vec4<bool>(true && arg_1, false, 1686f >= var_0.x, any(vec4<bool>(arg_1, true, false, true))), vec4<bool>(global0.x, true, all(vec3<bool>(false, false, true)), all(vec2<bool>(global0.x, false)))), !select(!vec4<bool>(arg_1, true, false, false), select(vec4<bool>(arg_1, true, global0.x, false), vec4<bool>(arg_1, true, global0.x, global0.x), vec4<bool>(true, global0.x, true, global0.x)), !global0.x)));
    global2 = !(!any(select(!vec2<bool>(var_2, true), vec2<bool>(true, arg_1), !global0.x)));
    var var_3 = arg_0 << (~countOneBits(_wgslsmith_add_u32(u_input.a.x, u_input.a.x)) % 32u);
    return arg_3.d.yw;
}

fn func_1() -> vec2<u32> {
    var var_0 = func_4(46360i, true, 59000u, Struct_1(_wgslsmith_f_op_vec3_f32(func_2(firstTrailingBit(global1.d.wzx | vec3<i32>(0i, global1.b, global1.b)), Struct_1(vec3<f32>(1324f, -1456f, global1.a.x), -21858i, _wgslsmith_div_f32(-1092f, -1958f), vec4<i32>(-2147483647i, 2147483647i, global1.d.x, -1640i)), true & global0.x)), reverseBits(max(1i, 0i)), _wgslsmith_f_op_f32(abs(-1195f)), _wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -46355i, -global1.b, -2147483647i, ~(-30176i)), global1.d)));
    global1 = Struct_1(global1.a, var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.c)) - global1.a.x))), abs(global1.d) >> (select(~(~u_input.a), u_input.a, all(select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), global0.x))) % vec4<u32>(32u)));
    var var_1 = select(!(!vec2<bool>(global1.a.x >= -518f, any(vec2<bool>(global0.x, false)))), !vec2<bool>(false, global0.x), select(!vec2<bool>(true, global0.x), select(vec2<bool>(!global0.x, u_input.a.x <= u_input.a.x), vec2<bool>(global0.x | global0.x, true), any(vec3<bool>(global0.x, global0.x, global0.x))), global0.x));
    var var_2 = reverseBits(global1.d.x);
    var var_3 = global1.a.zy;
    return u_input.a.xw;
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: Struct_1) -> StorageBuffer {
    global2 = true;
    let var_0 = vec4<bool>(select(select(all(vec3<bool>(global0.x, global0.x, global0.x)), false, global0.x), any(vec2<bool>(true, true)) | (arg_2.x <= (global1.d.x >> (4294967295u % 32u))), global0.x), all(select(!(!vec3<bool>(global0.x, true, global0.x)), !select(vec3<bool>(true, false, true), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, false, global0.x)), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, true, true), vec3<bool>(global0.x, global0.x, global0.x)))), global0.x, any(vec2<bool>(any(!vec3<bool>(global0.x, false, global0.x)), global0.x)));
    return StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-409f - _wgslsmith_div_f32(825f, -592f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(u_input.a.x, u_input.a.x);
    let x = u_input.a;
    s_output = func_5(_wgslsmith_dot_vec2_u32(~func_1(), u_input.a.wz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(793f, global1.c, global1.c, 765f))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.a.x, -2497f, global1.a.x, global1.c)))))), -vec3<i32>(min(-7008i, global1.b) ^ -1i, global1.d.x, reverseBits(0i)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(426f - global1.c))), global1.c, _wgslsmith_div_f32(640f, _wgslsmith_f_op_f32(global1.a.x * 744f))), 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-982f, global1.c) - -284f)), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-28662i, 2985i, -2147483647i, global1.b)), global1.d << (u_input.a % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(global1.d, global1.d), _wgslsmith_add_vec4_i32(vec4<i32>(global1.b, 38626i, 0i, -8848i), global1.d)))));
}

