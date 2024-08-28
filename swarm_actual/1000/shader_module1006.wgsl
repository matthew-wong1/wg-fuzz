struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(-25902i, -6903i, -33935i, 43109i, -1i, i32(-2147483648), -11698i, -18341i);

var<private> global1: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = 1u;
    return select(all(vec4<bool>(false, !arg_0.d.a, select(true, true, any(vec3<bool>(true, arg_0.c, arg_0.a))), arg_0.c)), any(vec3<bool>(!(arg_0.c || arg_0.c), 17264i > ~arg_0.b, all(!vec4<bool>(false, arg_0.d.a, false, arg_0.c)))), true);
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: vec4<f32>, arg_3: vec2<i32>) -> bool {
    global0 = array<i32, 8>();
    var var_0 = Struct_2(arg_0, abs(-global0[_wgslsmith_index_u32(1u, 8u)]), arg_0, Struct_1(select(func_3(Struct_2(false, arg_1.x, arg_0, Struct_1(arg_0, -1220f, 1000f))), !arg_0, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, -539f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-829f, arg_2.x))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, var_0.d.b, _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(floor(arg_2.x)))) + arg_2.zww), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.xzy)));
    var var_2 = !((_wgslsmith_dot_vec4_i32(min(vec4<i32>(arg_1.x, 21751i, 2817i, -17977i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 8u)], arg_1.x, -2147483647i, -47133i)), ~vec4<i32>(1i, 1i, var_0.b, global0[_wgslsmith_index_u32(0u, 8u)])) < firstTrailingBit(1i)) | !(max(1i, arg_1.x) != -1i));
    var var_3 = Struct_4(1001f, Struct_2(true, arg_1.x ^ arg_3.x, true, Struct_1(!(false || var_0.a), var_0.d.b, arg_2.x)), var_0.b, Struct_2(false, -1981i, all(vec3<bool>(!arg_0, select(var_0.a, var_0.d.a, arg_0), true)), var_0.d));
    return var_3.d.d.a;
}

fn func_1(arg_0: vec2<f32>) -> vec3<bool> {
    global1 = true & (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x + arg_0.x))))) == _wgslsmith_f_op_f32(-arg_0.x));
    global1 = true || all(select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(0u >= u_input.a, vec3<i32>(-65732i, 66527i, global0[_wgslsmith_index_u32(u_input.a, 8u)]), vec4<f32>(arg_0.x, -1521f, arg_0.x, arg_0.x), firstLeadingBit(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 8u)], -3172i)))));
    let var_0 = ~max(~(~0u), 55034u);
    var var_1 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), vec3<bool>(true, true, true), vec3<bool>(false, func_2(false, vec3<i32>(1i, -10687i, global0[_wgslsmith_index_u32(u_input.a, 8u)]), vec4<f32>(-741f, 2322f, arg_0.x, -1540f), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 8u)], 2147483647i)), func_3(Struct_2(false, global0[_wgslsmith_index_u32(var_0, 8u)], false, Struct_1(false, 605f, arg_0.x))))), any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), false))), vec3<bool>(all(vec4<bool>(all(vec2<bool>(true, true)), true, any(vec4<bool>(true, true, true, false)), true)), !(_wgslsmith_f_op_f32(step(arg_0.x, 849f)) <= _wgslsmith_f_op_f32(-arg_0.x)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), vec3<bool>(false, true, false)))), vec3<bool>(true, all(vec4<bool>(true, false, true, all(vec4<bool>(true, false, true, false)))), true));
    var var_2 = (min(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(87826u, 1u), vec2<u32>(12168u, 61638u)), ~vec2<u32>(59521u, var_0), _wgslsmith_clamp_vec2_u32(vec2<u32>(18588u, 25391u), vec2<u32>(4294967295u, 41717u), vec2<u32>(u_input.a, u_input.a))), ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(var_0, 34723u))) ^ _wgslsmith_sub_vec2_u32(min(abs(vec2<u32>(u_input.a, var_0)), ~vec2<u32>(var_0, u_input.a)), ~(~vec2<u32>(1u, 33807u)))) & firstLeadingBit(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, var_0) ^ vec2<u32>(1u, 16189u), vec2<u32>(var_0, 30367u)));
    return !(!select(!vec3<bool>(true, var_1.x, var_1.x), !vec3<bool>(var_1.x, var_1.x, false), true));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: i32) -> Struct_3 {
    global0 = array<i32, 8>();
    var var_0 = -(~vec4<i32>(arg_0, arg_2, -1i, -(~global0[_wgslsmith_index_u32(u_input.a, 8u)])));
    global0 = array<i32, 8>();
    let var_1 = arg_1.x || func_2(any(!select(vec4<bool>(false, false, false, arg_1.x), vec4<bool>(arg_1.x, true, false, true), vec4<bool>(arg_1.x, true, false, arg_1.x))), var_0.zzw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(218f, -938f, 558f, 1546f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1678f, 831f, -768f, -922f) - vec4<f32>(-1028f, -959f, -536f, -641f)))), abs(-var_0.yz));
    var_0 = countOneBits(vec4<i32>(abs(_wgslsmith_sub_i32(arg_2, var_0.x)) | -2147483647i, ~min(global0[_wgslsmith_index_u32(u_input.a & 1u, 8u)], 0i), i32(-1i) * -2147483647i, arg_0));
    return Struct_3(-var_0.wxz, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(632f, 151f, 1000f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1298f, -1695f, 341f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-984f, -1501f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-377f - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -636f)))), Struct_2(all(select(vec4<bool>(true, var_1, false, var_1), !vec4<bool>(arg_1.x, var_1, false, true), true)), min(global0[_wgslsmith_index_u32(1u, 8u)], var_0.x), false, Struct_1(!(u_input.a != u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -1829f), -1104f)), Struct_2(arg_1.x || all(arg_1.xx), arg_0, func_3(Struct_2(arg_1.x, arg_0, false, Struct_1(arg_1.x, 574f, -1998f))), Struct_1(arg_1.x, _wgslsmith_f_op_f32(1246f - -451f), 1f)), abs(2147483647i));
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(1775f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(arg_0.a.x, vec3<bool>(true, true, arg_0.d.c), -62573i).b.x - _wgslsmith_f_op_f32(f32(-1f) * -468f)) - -500f)), arg_0.c, -_wgslsmith_mod_i32(-32057i, global0[_wgslsmith_index_u32(u_input.a ^ ~1u, 8u)]), Struct_2(true, arg_0.e, true, func_4(-firstTrailingBit(2147483647i), !(!vec3<bool>(arg_0.d.d.a, arg_0.c.c, arg_0.c.a)), min(1i, -10003i)).d.d));
    let var_1 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(54213u, _wgslsmith_dot_vec4_u32(vec4<u32>(13083u, u_input.a, 38533u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), 1u), ~(~(~abs(u_input.a))), u_input.a, select(_wgslsmith_div_u32(_wgslsmith_mult_u32(~u_input.a, ~0u), firstTrailingBit(select(1u, u_input.a, false))), u_input.a | 43303u, var_0.d.c & true));
    var var_2 = Struct_2(all(select(vec2<bool>(any(vec4<bool>(arg_0.c.d.a, arg_0.c.c, arg_0.c.c, arg_0.d.a)), arg_0.d.a), func_1(arg_0.b.zy).xx, vec2<bool>(true != arg_0.c.c, true))), _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.b, arg_0.c.b, 2147483647i, arg_0.a.x), vec4<i32>(-15221i, arg_0.c.b, 22392i, 2147483647i)), ~arg_0.a.x)), _wgslsmith_dot_vec4_i32(firstTrailingBit(abs(vec4<i32>(arg_0.e, 0i, -1i, global0[_wgslsmith_index_u32(0u, 8u)]))), vec4<i32>(-1i, var_0.b.b, 2147483647i, firstLeadingBit(-1i)))), true, var_0.d.d);
    global0 = array<i32, 8>();
    return Struct_1(!(!(_wgslsmith_f_op_f32(-113f * var_2.d.c) == 2592f)), _wgslsmith_f_op_f32(select(-966f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(-var_2.d.c)))), 2077f == _wgslsmith_f_op_f32(ceil(465f)))), -497f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(i32(-1i) * -(global0[_wgslsmith_index_u32(u_input.a, 8u)] >> (u_input.a % 32u)), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), func_1(vec2<f32>(1000f, 544f))), max(max(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(20842u, 8u)], 439i, global0[_wgslsmith_index_u32(23431u, 8u)]), vec3<i32>(-5984i, global0[_wgslsmith_index_u32(u_input.a, 8u)], -12574i)), -global0[_wgslsmith_index_u32(u_input.a, 8u)]), firstLeadingBit(29905i))));
    global1 = var_0.a;
    global1 = false;
    global1 = true;
    global0 = array<i32, 8>();
    let var_1 = -global0[_wgslsmith_index_u32(u_input.a, 8u)];
    var var_2 = ~_wgslsmith_add_vec3_u32(min(vec3<u32>(0u, u_input.a, u_input.a) | vec3<u32>(115142u, u_input.a, u_input.a), firstLeadingBit(vec3<u32>(u_input.a, u_input.a, u_input.a))), max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(4294967295u, 14125u, u_input.a)), vec3<u32>(19371u, 4294967295u, u_input.a))) | vec3<u32>(~4294967295u, u_input.a, 30622u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, ~_wgslsmith_mod_u32(~4294967295u, var_2.x), ~abs(var_2.x)), _wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, var_2.x, u_input.a)), ~abs(vec3<u32>(u_input.a, var_2.x, 2525u))), vec3<i32>(var_1, -2332i, global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(2997u, 0u, u_input.a, u_input.a), vec4<u32>(4294967295u, 1u, var_2.x, 0u))), 8u)]));
}

