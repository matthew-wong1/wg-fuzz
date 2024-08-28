struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    let var_0 = ~(~u_input.a);
    var var_1 = Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], _wgslsmith_add_i32(1i, _wgslsmith_div_i32(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.c, 13u)], global0[_wgslsmith_index_u32(u_input.c, 13u)]), -2147483647i)), select(~_wgslsmith_dot_vec2_i32(u_input.d.yy, u_input.d.yz), _wgslsmith_div_i32(select(global0[_wgslsmith_index_u32(var_0.x, 13u)], u_input.d.x, true), global0[_wgslsmith_index_u32(0u, 13u)] | 24796i), all(vec3<bool>(true, true, true)) | true), ~abs(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(var_0.x, 13u)], -1694i))), -(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 69719u, var_0.x, 45127u), vec4<u32>(var_0.x, 10422u, 1u, 1u)), 13u)] | _wgslsmith_dot_vec2_i32(u_input.d.zz, vec2<i32>(-35926i, global0[_wgslsmith_index_u32(53182u, 13u)]))) ^ (i32(-1i) * -2147483647i), ~(-22780i), ~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x | 4294967295u, ~4294967295u), firstLeadingBit(vec2<u32>(u_input.a.x, u_input.c))), _wgslsmith_div_i32(abs(global0[_wgslsmith_index_u32(u_input.a.x, 13u)]) ^ (global0[_wgslsmith_index_u32(u_input.c, 13u)] & -10530i), firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a.x << (11189u % 32u), 13u)])) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 7491u), min(_wgslsmith_mod_vec2_u32(var_0.xz, vec2<u32>(1u, 45295u)), var_0.wz)) % 32u));
    global0 = array<i32, 13>();
    var var_2 = 1u;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(504f)), _wgslsmith_f_op_f32(ceil(-686f))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 639f) + 748f), _wgslsmith_f_op_f32(238f - _wgslsmith_f_op_f32(-488f - -1121f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -161f)))), -250f);
    return _wgslsmith_f_op_f32(step(var_3.x, _wgslsmith_f_op_f32(-var_3.x))) <= -887f;
}

fn func_2() -> Struct_5 {
    global0 = array<i32, 13>();
    let var_0 = 2147483647i;
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    let var_1 = Struct_5(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(func_3(), true, true)), true), true);
    return var_1;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_5) -> u32 {
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    let var_0 = -(reverseBits(-(vec2<i32>(49403i, arg_0.x) | vec2<i32>(-10895i, -29583i))) | u_input.d.wz);
    var var_1 = reverseBits(u_input.a.yz | (_wgslsmith_sub_vec2_u32(u_input.a.zy >> (vec2<u32>(0u, 62371u) % vec2<u32>(32u)), vec2<u32>(1u, u_input.c)) >> (u_input.a.yy % vec2<u32>(32u))));
    global0 = array<i32, 13>();
    return ~u_input.c;
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    global0 = array<i32, 13>();
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, 930f, 1052f) - _wgslsmith_f_op_vec3_f32(-arg_0.d.zyw)))))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 108f) + arg_0.d.x)));
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    return arg_0;
}

fn func_1() -> u32 {
    let var_0 = func_5(Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(-38652i, u_input.e, u_input.b, -12207i), vec4<i32>(23451i, u_input.e, global0[_wgslsmith_index_u32(u_input.c, 13u)], 0i)) | ~vec4<i32>(2147483647i, u_input.d.x, -12432i, global0[_wgslsmith_index_u32(30497u, 13u)]), firstTrailingBit(-2147483647i), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, 2862u), 13u)], ~firstLeadingBit(u_input.a.xx), u_input.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2037f, 698f))), func_4(~vec3<i32>(global0[_wgslsmith_index_u32(18044u, 13u)], -16552i, u_input.b), func_2()), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1009f, 191f, 223f, -1733f) * vec4<f32>(-1033f, -693f, 1037f, 109f)), vec4<f32>(1420f, -1600f, 302f, 1667f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-775f, 418f, 930f, 117f))))), _wgslsmith_div_i32(_wgslsmith_div_i32(~u_input.e, ~0i), 1i)), ~u_input.c);
    var var_1 = select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(any(vec2<bool>(false, true)), true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)), true), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), false), vec4<bool>(false, false, true, true)), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, true, true))), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, false)), vec4<bool>(true, var_0.a.d.x <= 1u, select(func_2().b, func_2().b, all(vec4<bool>(true, true, true, false)) && true), false));
    var var_2 = Struct_4(-619f);
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(select(102f, 1000f, var_0.e != 62055i)))))));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3 - -330f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) - -1211f));
    return ~49726u;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_2) -> bool {
    global0 = array<i32, 13>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.x * _wgslsmith_f_op_f32(sign(517f))));
    var var_1 = -1i;
    global0 = array<i32, 13>();
    var var_2 = arg_2;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1349u;
    let var_1 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), any(vec2<bool>(true, false))), true), vec3<bool>(all(vec2<bool>(true, true)), all(vec2<bool>(false, all(vec4<bool>(false, true, true, true)))), func_6(Struct_3(func_1()), func_2(), func_5(func_5(Struct_2(Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], -25907i, 2147483647i), global0[_wgslsmith_index_u32(5795u, 13u)], -33412i, vec2<u32>(u_input.c, 0u), global0[_wgslsmith_index_u32(55227u, 13u)]), 1310f, u_input.c, vec4<f32>(556f, -623f, 549f, 1000f), -18232i), u_input.a.x), u_input.a.x))), !(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false))));
    var var_2 = reverseBits(~vec3<u32>(25209u, 1u, u_input.c));
    var var_3 = Struct_1(select(~(~u_input.d), -select(u_input.d, -vec4<i32>(20722i, 2147483647i, global0[_wgslsmith_index_u32(var_2.x, 13u)], u_input.e), select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(false, true, false, true))), vec4<bool>(var_1.x, true, true, select(var_1.x, var_1.x, true))), global0[_wgslsmith_index_u32(var_2.x, 13u)], -2147483647i, u_input.a.zz, ~_wgslsmith_add_i32(select(-23200i, global0[_wgslsmith_index_u32(var_2.x, 13u)], var_1.x) | firstLeadingBit(21591i), -abs(5951i)));
    var var_4 = Struct_3(0u);
    var var_5 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, -12971i, 41682i, 2147483647i) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 48783u, 107522u, 1u), u_input.a, u_input.a) % vec4<u32>(32u)), u_input.d), i32(-1i) * -(reverseBits(global0[_wgslsmith_index_u32(var_3.d.x, 13u)]) & u_input.b), -2147483647i | var_3.a.x, countOneBits(_wgslsmith_clamp_vec2_u32(u_input.a.zx, var_2.xy, var_2.xz)), -8688i);
    var var_6 = Struct_2(Struct_1(-vec4<i32>(_wgslsmith_mod_i32(-34591i, var_5.e), _wgslsmith_add_i32(var_3.c, 0i), -2147483647i, _wgslsmith_div_i32(var_5.e, var_3.c)), global0[_wgslsmith_index_u32(var_2.x, 13u)], var_5.c, _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_2.x, 1u), func_5(Struct_2(Struct_1(var_5.a, var_3.c, var_3.a.x, vec2<u32>(1u, 20777u), var_3.b), -101f, u_input.a.x, vec4<f32>(-422f, 1198f, 405f, 220f), var_5.a.x), 28903u).c), _wgslsmith_clamp_vec2_u32(vec2<u32>(108722u, 0u), var_2.yx, u_input.a.xz) >> (select(u_input.a.wz, var_3.d, true) % vec2<u32>(32u))), var_5.c), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - 1086f))), u_input.a.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(414f, 585f, 304f, 527f))))))), var_5.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_6.d.x * var_6.b)), var_6.d.x, _wgslsmith_f_op_vec2_f32(-func_5(func_5(Struct_2(Struct_1(vec4<i32>(u_input.e, var_6.a.b, u_input.e, 0i), -26947i, -2147483647i, var_3.d, 2147483647i), var_6.d.x, var_3.d.x, var_6.d, global0[_wgslsmith_index_u32(u_input.c, 13u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, var_5.d.x), u_input.a.wxx)), countOneBits(~1662u)).d.xx), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_5.d, ~_wgslsmith_add_vec2_u32(vec2<u32>(32196u, u_input.a.x) >> (var_2.xx % vec2<u32>(32u)), vec2<u32>(20902u, 7751u))), 13u)]);
}

