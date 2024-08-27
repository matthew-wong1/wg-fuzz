struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12>;

var<private> global1: array<i32, 13>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = !(!all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))));
    global0 = array<vec4<bool>, 12>();
    let var_1 = Struct_1(min(u_input.c, u_input.c), vec3<u32>(reverseBits(select(4294967295u, u_input.b.x >> (0u % 32u), true)), ~(~u_input.c), 86637u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(554f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-414f, -274f)))));
    global0 = array<vec4<bool>, 12>();
    var var_2 = vec2<bool>(select(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(21644u, 12u)])), all(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), !all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true))), true && (var_1.c >= var_1.c));
    return _wgslsmith_f_op_f32(-var_1.c);
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_mult_u32(~4294967295u, _wgslsmith_add_u32(u_input.c, ~u_input.b.x));
    var var_1 = Struct_2(Struct_1(u_input.b.x & _wgslsmith_mod_u32(~u_input.b.x, u_input.c), ~(~(vec3<u32>(12054u, u_input.c, 13238u) | u_input.b.wzy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(738f - _wgslsmith_f_op_f32(select(-961f, 1000f, true))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + -716f))))), select(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), vec2<bool>(!any(vec2<bool>(true, true)), true), true), !select(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(0u, 11100u, 0u, u_input.b.x)), 12u)], vec4<bool>(any(vec3<bool>(true, true, false)), true, false, true), _wgslsmith_f_op_f32(func_3()) < 380f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -423f) * _wgslsmith_f_op_f32(f32(-1f) * -133f)));
    global0 = array<vec4<bool>, 12>();
    global0 = array<vec4<bool>, 12>();
    var var_2 = Struct_3(var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * var_1.a.c), _wgslsmith_mult_vec3_i32(vec3<i32>(reverseBits(-36313i), firstLeadingBit(1i), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-26587i, 47609i, global1[_wgslsmith_index_u32(53793u, 13u)])), firstTrailingBit(vec3<i32>(1i, global1[_wgslsmith_index_u32(8633u, 13u)], 4384i)))), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x & -61401i, ~u_input.a.x, global1[_wgslsmith_index_u32(max(var_1.a.b.x, 54684u), 13u)]), vec3<i32>(arg_0.x, u_input.a.x, i32(-1i) * -17327i))), true, Struct_2(Struct_1(max(16911u, 76809u), _wgslsmith_mult_vec3_u32(var_1.a.b, var_1.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.d)) - _wgslsmith_f_op_f32(-var_1.d))), select(!vec2<bool>(true, var_1.b.x), vec2<bool>(true, !var_1.c.x), true), var_1.c, var_1.d));
    return Struct_3(true | select(var_1.b.x, 4294967295u == ~u_input.c, var_2.e.c.x), -1033f, vec3<i32>(arg_0.x, -4063i, min(-(i32(-1i) * -38567i), _wgslsmith_clamp_i32(~(-4413i), -1i, -1i))), true, var_2.e);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    var var_0 = vec2<i32>(-abs(-3795i), 2147483647i);
    var var_1 = arg_0.e.a;
    var var_2 = arg_1.c.zx;
    var var_3 = func_2(arg_0.c.xz).e;
    var_1 = var_3.a;
    return func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(reverseBits(-23737i), 3756i) ^ ~(arg_1.c.zx >> (arg_0.e.a.b.zx % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(0i, 11099i), arg_1.c.xz), arg_1.c.xx)));
}

fn func_1(arg_0: vec4<bool>) -> Struct_3 {
    let var_0 = ~_wgslsmith_dot_vec2_i32(u_input.a, select(firstLeadingBit(vec2<i32>(0i, u_input.a.x)), ~(vec2<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], 1i) << (vec2<u32>(59547u, u_input.b.x) % vec2<u32>(32u))), arg_0.x));
    var var_1 = func_4(func_2(vec2<i32>(_wgslsmith_mod_i32(1i, ~0i), var_0)), func_2(-(~(vec2<i32>(-47058i, u_input.a.x) ^ vec2<i32>(u_input.a.x, 8492i)))));
    var var_2 = 1i;
    let var_3 = func_4(Struct_3(any(arg_0.yzy), _wgslsmith_f_op_f32(var_1.e.d * _wgslsmith_f_op_f32(ceil(1304f))), vec3<i32>(min(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), _wgslsmith_mult_i32(var_0, -1i)), 1i, abs(-9140i)), true, func_4(Struct_3(var_1.a | var_1.d, 1473f, ~vec3<i32>(u_input.a.x, -62013i, 1i), all(vec3<bool>(arg_0.x, true, var_1.d)), var_1.e), Struct_3(true, var_1.b, func_2(var_1.c.zy).c, true, var_1.e)).e), func_4(Struct_3(any(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, false, var_1.e.b.x), true)), var_1.b, vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], ~global1[_wgslsmith_index_u32(47897u, 13u)], i32(-1i) * -14582i), countOneBits(var_1.e.a.b.x) >= abs(0u), var_1.e), Struct_3(func_4(Struct_3(true, 1029f, vec3<i32>(-26811i, u_input.a.x, global1[_wgslsmith_index_u32(u_input.b.x, 13u)]), false, var_1.e), Struct_3(false, var_1.e.a.c, vec3<i32>(33317i, var_0, var_1.c.x), false, Struct_2(var_1.e.a, vec2<bool>(var_1.a, true), global0[_wgslsmith_index_u32(0u, 12u)], -673f))).d && arg_0.x, 2044f, _wgslsmith_mult_vec3_i32(~vec3<i32>(global1[_wgslsmith_index_u32(55073u, 13u)], global1[_wgslsmith_index_u32(var_1.e.a.a, 13u)], 0i), var_1.c), 1f < _wgslsmith_f_op_f32(-var_1.e.a.c), Struct_2(func_2(vec2<i32>(1i, var_1.c.x)).e.a, !vec2<bool>(false, var_1.d), func_2(vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(var_1.e.a.b.x, 13u)])).e.c, var_1.e.a.c))));
    let var_4 = ~(~var_3.e.a.a);
    return var_3;
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    let var_0 = func_1(!(!vec4<bool>(arg_0.a, func_4(arg_0, Struct_3(arg_0.d, arg_0.e.d, vec3<i32>(arg_0.c.x, -2147483647i, arg_0.c.x), arg_0.a, arg_0.e)).a, arg_0.a & arg_0.e.c.x, true))).a;
    let var_1 = arg_0.e;
    let var_2 = var_1;
    var var_3 = 413f;
    var_3 = var_2.d;
    return Struct_2(var_2.a, var_2.c.yz, var_1.c, func_4(Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, 2147483647i), vec3<i32>(-99573i, -25912i, arg_0.c.x)) > 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -113f) - _wgslsmith_f_op_f32(-var_2.d)), ~(vec3<i32>(-1i, arg_0.c.x, u_input.a.x) << (var_1.a.b % vec3<u32>(32u))), var_1.b.x, Struct_2(var_1.a, vec2<bool>(true, false), vec4<bool>(true, false, false, true), _wgslsmith_f_op_f32(-116f + 352f))), Struct_3(false, var_1.d, arg_0.c, !func_1(arg_0.e.c).d, Struct_2(Struct_1(var_2.a.b.x, var_2.a.b, -1103f), vec2<bool>(var_0, false), vec4<bool>(true, var_0, true, var_1.b.x), _wgslsmith_f_op_f32(var_1.a.c + var_2.d)))).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global1 = array<i32, 13>();
    global1 = array<i32, 13>();
    var var_1 = func_5(func_1(global0[_wgslsmith_index_u32(u_input.c, 12u)]));
    var_1 = func_4(Struct_3(var_1.c.x, -603f, func_2(countOneBits(vec2<i32>(u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 13u)]))).c << (_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.x, 7706u, var_0.x), _wgslsmith_mult_vec3_u32(var_1.a.b, vec3<u32>(29925u, u_input.b.x, 13475u))) % vec3<u32>(32u)), true, func_4(Struct_3(false, _wgslsmith_f_op_f32(select(var_1.d, -252f, var_1.c.x)), max(vec3<i32>(global1[_wgslsmith_index_u32(var_1.a.a, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], u_input.a.x), vec3<i32>(2147483647i, -2147483647i, u_input.a.x)), all(var_1.c.yyw), Struct_2(var_1.a, var_1.c.zz, var_1.c, var_1.a.c)), Struct_3(true, 1f, vec3<i32>(-2147483647i, -1i, u_input.a.x) << (vec3<u32>(u_input.b.x, u_input.c, var_0.x) % vec3<u32>(32u)), true, func_1(vec4<bool>(false, var_1.c.x, var_1.b.x, false)).e)).e), func_2(u_input.a)).e;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

