struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 15261u, 44636u, 1756u);

var<private> global1: array<f32, 7>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    let var_0 = vec2<u32>(1u, 1u);
    var var_1 = ~(arg_2.e.x ^ _wgslsmith_dot_vec3_i32(arg_2.e, abs(~vec3<i32>(-17645i, 4148i, -10438i))));
    let var_2 = Struct_4(-722f, Struct_3(arg_2.d.d, _wgslsmith_div_f32(arg_0.x, arg_0.x), true, Struct_2(Struct_1(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), vec3<bool>(false, false, true)), ~arg_2.d.b, _wgslsmith_mult_vec2_i32(arg_2.e.yx, select(arg_2.d.c, vec2<i32>(arg_2.e.x, arg_3.d.c.x), arg_3.a.a.x)), arg_3.d.a, abs(_wgslsmith_mult_u32(global0.x, 97855u))), _wgslsmith_sub_vec3_i32(arg_2.e, max(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -19208i, -16282i), arg_2.e), arg_3.e))));
    let var_3 = false;
    let var_4 = true;
    return arg_3.c;
}

fn func_2() -> Struct_3 {
    var var_0 = !(!select(vec4<bool>(false, func_3(vec3<f32>(1833f, -521f, global1[_wgslsmith_index_u32(u_input.c.x, 7u)]), false, Struct_3(Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, false, false)), global1[_wgslsmith_index_u32(89536u, 7u)], true, Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, true, false)), u_input.c, vec2<i32>(u_input.b, u_input.a), Struct_1(vec3<bool>(false, false, false), vec3<bool>(false, true, false)), 1u), vec3<i32>(u_input.d, u_input.d, 1i)), Struct_3(Struct_1(vec3<bool>(false, true, false), vec3<bool>(true, false, false)), global1[_wgslsmith_index_u32(858u, 7u)], true, Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec2<u32>(4294967295u, u_input.c.x), vec2<i32>(-2147483647i, u_input.a), Struct_1(vec3<bool>(false, true, false), vec3<bool>(true, true, true)), 76935u), vec3<i32>(2147483647i, 23620i, 8942i))), u_input.a < u_input.b, all(vec2<bool>(false, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), true), any(vec2<bool>(true, false))));
    let var_1 = global0.yx;
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(global0.x, 7u)], global1[_wgslsmith_index_u32(global0.x, 7u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(608f, 1000f) + vec2<f32>(677f, global1[_wgslsmith_index_u32(1u, 7u)]))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-834f)), 591f)))));
    var var_3 = Struct_5(select(select(var_0.yzw, select(select(var_0.wzy, var_0.yxz, false), vec3<bool>(false, true, var_0.x), true), false), select(var_0.yyx, select(var_0.zzx, !vec3<bool>(true, true, var_0.x), select(var_0.wwz, var_0.zyx, var_0.www)), true), select(false, true, var_0.x)), var_0.xx, vec4<i32>((u_input.d >> (166478u % 32u)) << (var_1.x % 32u), -48522i, countOneBits(u_input.d), _wgslsmith_mod_i32(u_input.a, u_input.d)) ^ -vec4<i32>(~11402i, -14738i, u_input.d, -1i));
    var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-175f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(40708u, 7u)], -1395f))), global1[_wgslsmith_index_u32(406u, 7u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2248f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-592f, -327f)))))));
    return Struct_3(Struct_1(select(vec3<bool>(true, true, 0u > global0.x), vec3<bool>(true, false == var_0.x, !var_0.x), true), select(select(!vec3<bool>(false, false, var_3.a.x), vec3<bool>(var_3.a.x, true, true), true), select(!var_3.a, vec3<bool>(true, false, var_0.x), vec3<bool>(true, var_0.x, var_0.x)), false)), var_2.x, !var_3.b.x, Struct_2(Struct_1(vec3<bool>(false, var_0.x, true & var_3.b.x), vec3<bool>(var_2.x != -698f, var_0.x && true, var_0.x && var_3.a.x)), ~(vec2<u32>(u_input.c.x, var_1.x) & firstTrailingBit(vec2<u32>(45556u, global0.x))), vec2<i32>(_wgslsmith_sub_i32(u_input.d, u_input.a) << (23942u % 32u), var_3.c.x), Struct_1(var_0.xzy, !var_0.yzx), _wgslsmith_mod_u32(~(~u_input.c.x), min(firstLeadingBit(8493u), ~var_1.x))), vec3<i32>(1i, -_wgslsmith_mult_i32(-42429i, var_3.c.x), ~(i32(-1i) * -3382i)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: vec4<f32>) -> vec4<u32> {
    global0 = ~countOneBits(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(1u, global0.x, 4801u, 1u) >> (vec4<u32>(2877u, global0.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), vec4<u32>(u_input.c.x, 1u, u_input.c.x, global0.x) >> (vec4<u32>(4294967295u, 4294967295u, global0.x, 0u) % vec4<u32>(32u)), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 32253u, u_input.c.x, global0.x), vec4<u32>(13657u, global0.x, 70826u, 18857u), vec4<u32>(41680u, global0.x, 0u, 1u)), ~vec4<u32>(4294967295u, global0.x, 1u, global0.x)), vec4<u32>(~0u, global0.x & global0.x, firstLeadingBit(1u), _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(42694u, u_input.c.x)))));
    var var_0 = func_2();
    global1 = array<f32, 7>();
    return vec4<u32>(4294967295u, _wgslsmith_mod_u32(13115u, global0.x), _wgslsmith_mult_u32(~global0.x, ~(global0.x >> (firstLeadingBit(var_0.d.b.x) % 32u))), var_0.d.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = global1[_wgslsmith_index_u32(38438u, 7u)];
    global1 = array<f32, 7>();
    global0 = vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, ~98419u) << ((~global0.x | global0.x) % 32u), 87995u, ~(~_wgslsmith_add_u32(u_input.c.x, u_input.c.x)), ~(~_wgslsmith_add_u32(global0.x, u_input.c.x))) << ((select(func_1(vec3<bool>(true, true, true), ~vec4<i32>(u_input.b, 0i, var_0, 2147483647i), vec4<f32>(117f, global1[_wgslsmith_index_u32(u_input.c.x, 7u)], -2001f, -690f)), ~(~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 33296u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)) | func_1(vec3<bool>(true, true, true), ~(-vec4<i32>(u_input.a, 6553i, var_0, var_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1245f, 212f, -785f, global1[_wgslsmith_index_u32(global0.x, 7u)]))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-191f, global1[_wgslsmith_index_u32(19493u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)], -154f))))) % vec4<u32>(32u));
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, _wgslsmith_mult_i32(var_0, u_input.a))), vec2<i32>(-34496i, firstLeadingBit(1i))), _wgslsmith_add_vec2_i32(-select(~vec2<i32>(var_0, u_input.d), -vec2<i32>(0i, 23775i), all(vec2<bool>(false, true))), vec2<i32>(_wgslsmith_add_i32(39306i, u_input.b), select(var_0, u_input.b, true)) | (vec2<i32>(1i, -24427i) & ~vec2<i32>(var_0, 19602i))));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2018f + -1056f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -396f) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 7u)] - global1[_wgslsmith_index_u32(22242u, 7u)]))))), 15882i, countOneBits(-_wgslsmith_div_vec2_i32(vec2<i32>(var_2, 1i) & vec2<i32>(2147483647i, var_0), reverseBits(vec2<i32>(u_input.a, var_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(global0.x, 7u)], global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(u_input.c.x, 7u)]) + vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(u_input.c.x, 7u)], global1[_wgslsmith_index_u32(62531u, 7u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(global0.x, 7u)], 209f, 856f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(372f, 277f, -294f))))), -293f);
}

