struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> bool {
    let var_0 = arg_0.c.c.a;
    var var_1 = arg_0.c.c;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1324f), -808f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1073f, -1343f) + -271f), 654f);
    var_1 = arg_1.c.c;
    var_2 = vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1357f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, arg_1.c.c.a.x, arg_1.b.x)), var_0.x))), -364f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x - var_0.x)))))));
    return _wgslsmith_f_op_f32(max(-400f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.c.a, -167f), _wgslsmith_f_op_f32(f32(-1f) * -550f)))))) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.c.c.a.x * 816f))), _wgslsmith_f_op_f32(-1f)))));
}

fn func_2(arg_0: vec3<i32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(225f * -974f))), -923f, !func_3(Struct_4(_wgslsmith_mod_u32(4945u, 1u), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), Struct_3(-225f, arg_0, Struct_1(vec2<f32>(746f, 1000f), vec2<i32>(-2147483647i, u_input.a)))), Struct_4(~63959u, select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), Struct_3(753f, arg_0, Struct_1(vec2<f32>(870f, 1940f), vec2<i32>(u_input.a, arg_0.x)))))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-283f, 315f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(131f, 1218f)))), arg_0.zz), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(973f, 1110f))), vec2<f32>(_wgslsmith_f_op_f32(1309f + 1498f), -108f)), arg_0.xx), _wgslsmith_sub_i32(1i, (arg_0.x | _wgslsmith_dot_vec3_i32(arg_0, arg_0)) ^ u_input.a));
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(0u, 70025u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4507u, 69441u, 0u), vec4<u32>(80627u, 16490u, 0u, 13688u)), 1998u), ~vec4<u32>(_wgslsmith_add_u32(111256u, 1545u), ~4294967295u, countOneBits(0u), countOneBits(1u))) | 65261u;
    let var_3 = Struct_3(var_1.b.a.x, ~vec3<i32>(-var_1.c | -1i, arg_0.x, 2147483647i), var_1.a);
    let var_4 = _wgslsmith_add_vec2_i32(min(_wgslsmith_mult_vec2_i32(var_1.b.b, arg_0.yz), vec2<i32>(-83171i, var_1.a.b.x >> (4294967295u % 32u)) | vec2<i32>(45712i & u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_3.c.b.x, 1i, -2147483647i), vec4<i32>(var_3.c.b.x, var_3.b.x, u_input.a, u_input.a)))), firstLeadingBit(var_3.b.yz));
    return -vec4<i32>(62528i & abs(arg_0.x), ~(~1i), var_1.a.b.x >> (4294967295u % 32u), -24747i) & countOneBits(vec4<i32>(9695i, _wgslsmith_div_i32(8140i, var_3.c.b.x), -1i, i32(-1i) * -3061i) | ~(-vec4<i32>(u_input.a, arg_0.x, u_input.a, -1571i)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: i32) -> bool {
    var var_0 = 1u;
    return all(select(arg_2.zz, arg_2.yy, arg_2.x));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: f32) -> Struct_4 {
    let var_0 = func_4(~firstLeadingBit(-func_2(vec3<i32>(arg_2, arg_2, u_input.a))), vec2<i32>(u_input.a, 13972i), vec3<bool>(func_3(Struct_4(1u, vec3<bool>(true, true, true), Struct_3(arg_3, vec3<i32>(arg_2, arg_2, 12955i), Struct_1(vec2<f32>(2019f, arg_3), vec2<i32>(arg_2, -25720i)))), Struct_4(select(27783u, arg_1, true), vec3<bool>(false, true, false), Struct_3(-433f, vec3<i32>(u_input.a, -4617i, -1i), Struct_1(vec2<f32>(arg_3, -1222f), vec2<i32>(-20862i, arg_2))))), ~arg_0 <= arg_1, true), arg_2);
    let var_1 = var_0;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(606f, arg_3) + vec2<f32>(280f, -825f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, -1214f))), vec2<f32>(-369f, arg_3))))), ~_wgslsmith_mod_vec2_i32(firstLeadingBit(select(vec2<i32>(arg_2, 16627i), vec2<i32>(u_input.a, arg_2), vec2<bool>(var_0, var_1))), -(~vec2<i32>(1i, arg_2))));
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-var_2.a.x)))), _wgslsmith_mult_vec2_i32(var_2.b, vec2<i32>(15446i, func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 3240i, 1i), vec3<i32>(u_input.a, var_2.b.x, u_input.a))).x)));
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(-717f - var_2.a.x)))), select(abs(select(max(var_2.b, vec2<i32>(var_2.b.x, 1i)), var_2.b, !vec2<bool>(false, var_0))), var_2.b, select(all(vec4<bool>(true, var_0, var_1, false)), var_1, _wgslsmith_f_op_f32(select(var_2.a.x, arg_3, var_0)) < arg_3)));
    return Struct_4(~arg_0 >> (_wgslsmith_div_u32(4294967295u, ~arg_0) % 32u), select(vec3<bool>(var_0, any(select(vec3<bool>(true, true, false), vec3<bool>(var_1, var_1, true), false)), all(select(vec2<bool>(var_1, var_0), vec2<bool>(false, var_1), vec2<bool>(false, true)))), select(select(vec3<bool>(var_0, false, false), select(vec3<bool>(var_1, var_0, var_1), vec3<bool>(false, var_1, true), vec3<bool>(false, false, false)), true), !(!vec3<bool>(var_1, true, false)), any(!vec3<bool>(var_0, false, var_1))), !select(!vec3<bool>(var_0, false, false), select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, true, true), var_0), !var_0)), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3, _wgslsmith_f_op_f32(abs(1081f))))), _wgslsmith_mod_vec3_i32(-(vec3<i32>(1i, arg_2, 1i) & vec3<i32>(25123i, var_2.b.x, -6782i)), vec3<i32>(1i, _wgslsmith_add_i32(18877i, var_2.b.x), arg_2 >> (70979u % 32u))), Struct_1(var_2.a, -vec2<i32>(3792i, 1i))));
}

fn func_5(arg_0: Struct_4) -> bool {
    let var_0 = vec4<bool>(arg_0.b.x, arg_0.b.x, !arg_0.b.x, arg_0.b.x);
    var var_1 = func_1(abs(0u | arg_0.a), ~_wgslsmith_mult_u32(arg_0.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(21164u, 1u, 1u, 4294967295u), ~vec4<u32>(4294967295u, arg_0.a, 0u, arg_0.a))), _wgslsmith_dot_vec3_i32(-arg_0.c.b | vec3<i32>(37323i | u_input.a, reverseBits(u_input.a), 1i), vec3<i32>(1i << (_wgslsmith_mult_u32(arg_0.a, 1u) % 32u), _wgslsmith_mult_i32(u_input.a, -1i | arg_0.c.c.b.x), select(_wgslsmith_div_i32(u_input.a, arg_0.c.b.x), u_input.a, arg_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-307f * arg_0.c.c.a.x)))))));
    let var_2 = ~vec3<u32>(arg_0.a, _wgslsmith_mult_u32(reverseBits(arg_0.a), ~_wgslsmith_mult_u32(var_1.a, var_1.a)), 26601u);
    var_1 = func_1(_wgslsmith_div_u32(arg_0.a, 1u), _wgslsmith_sub_u32(countOneBits(var_2.x), max((0u >> (arg_0.a % 32u)) ^ ~4870u, arg_0.a)), ~var_1.c.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.c.a * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(158f))))))));
    let var_3 = ~(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.x, 20498u, 0u, var_2.x), ~vec4<u32>(var_2.x, 31098u, var_1.a, 110531u)), reverseBits(_wgslsmith_add_u32(var_1.a, 18887u))) & abs(~vec2<u32>(5278u, 7399u) & var_2.xy));
    return false;
}

fn func_6(arg_0: i32, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec2_u32(abs(~(~vec2<u32>(0u, 1u))), ~(~vec2<u32>(0u, 1u)));
    return Struct_1(arg_2.c.a, vec2<i32>(reverseBits(func_1(~2872u, _wgslsmith_div_u32(var_0.x, 24573u), ~u_input.a, 486f).c.b.x), reverseBits(reverseBits(i32(-1i) * -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(~_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a, u_input.a), -31396i), !func_5(func_1(~74344u, abs(30402u), ~(-1i), _wgslsmith_f_op_f32(abs(-461f)))), Struct_3(625f, vec3<i32>(-1i, -32759i, _wgslsmith_div_i32(-4240i, u_input.a)) & (-vec3<i32>(u_input.a, u_input.a, u_input.a) & vec3<i32>(u_input.a, -21115i, 0i)), func_1(28056u, 10043u, u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-408f * 1539f) - _wgslsmith_f_op_f32(trunc(-364f)))).c.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, ~32332u, 4294967295u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~8513u, 1u, 21249u), func_1(8738u, 34072u, var_0.b.x, var_0.a.x).a ^ ~13849u, countOneBits(1u))));
}

