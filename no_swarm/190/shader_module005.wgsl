struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(0i, 5708i), vec2<i32>(32424i, 0i), vec2<i32>(-36041i, 0i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-14674i, 12859i), vec2<i32>(-44168i, 68972i), vec2<i32>(46341i, 1i), vec2<i32>(-1i, 2147483647i), vec2<i32>(80608i, -9175i), vec2<i32>(i32(-2147483648), -104327i), vec2<i32>(24738i, -59226i));

var<private> global1: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: u32) -> Struct_3 {
    var var_0 = -_wgslsmith_sub_i32(1i, u_input.c) << (~arg_2 % 32u);
    let var_1 = Struct_1(arg_0.a.a.a, ~min(_wgslsmith_add_u32(~0u, _wgslsmith_clamp_u32(u_input.b, arg_0.a.b.b, 0u)), _wgslsmith_sub_u32(~arg_0.a.b.b, u_input.a)), _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(10104u, 11u)] | vec2<i32>(-2147483647i, 0i), abs(_wgslsmith_div_vec2_i32(vec2<i32>(-21168i, arg_0.a.a.c), ~vec2<i32>(0i, 1i)))));
    var_0 = 74253i;
    var var_2 = arg_0.a.b;
    var var_3 = 2147483647i;
    return arg_0;
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_dot_vec3_u32(~abs(~vec3<u32>(0u, 2881u, 1u)), _wgslsmith_sub_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a, 0u), vec3<u32>(u_input.b, u_input.b, u_input.a)) & ~vec3<u32>(u_input.a, 4294967295u, 0u)), select(~vec3<u32>(u_input.a, u_input.b, 0u) & firstTrailingBit(vec3<u32>(0u, 20004u, u_input.a)), countOneBits(vec3<u32>(1u, 26136u, u_input.b)) << (vec3<u32>(1u, u_input.b, u_input.b) % vec3<u32>(32u)), func_1(Struct_3(Struct_2(Struct_1(vec2<f32>(517f, -1026f), 4294967295u, -66814i), Struct_1(vec2<f32>(-580f, -640f), u_input.b, 45808i)), vec4<bool>(true, false, true, true)), vec3<bool>(false, true, true), ~1u).b.zxx)));
    let var_1 = Struct_3(func_1(func_1(Struct_3(Struct_2(Struct_1(vec2<f32>(1000f, -1259f), u_input.b, u_input.c), Struct_1(vec2<f32>(743f, -306f), u_input.a, u_input.c)), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), func_1(func_1(Struct_3(Struct_2(Struct_1(vec2<f32>(-1353f, -288f), u_input.a, u_input.d), Struct_1(vec2<f32>(1122f, -215f), u_input.b, u_input.e.x)), vec4<bool>(true, arg_0.x, true, arg_0.x)), vec3<bool>(arg_0.x, true, false), 4294967295u), !vec3<bool>(arg_0.x, true, arg_0.x), ~u_input.b).b.xxx, 0u), func_1(Struct_3(func_1(Struct_3(Struct_2(Struct_1(vec2<f32>(661f, 689f), u_input.b, 34670i), Struct_1(vec2<f32>(-603f, -730f), 1u, 13295i)), vec4<bool>(false, arg_0.x, arg_0.x, false)), vec3<bool>(true, true, false), u_input.b).a, vec4<bool>(true, true, true, true)), !func_1(Struct_3(Struct_2(Struct_1(vec2<f32>(-1241f, 131f), u_input.a, -7449i), Struct_1(vec2<f32>(-333f, -1939f), 0u, u_input.e.x)), vec4<bool>(arg_0.x, arg_0.x, false, false)), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), u_input.a).b.wyz, 0u >> (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u)).b.yww, min(u_input.b, u_input.b)).a, !vec4<bool>(any(vec4<bool>(false, arg_0.x, false, false)) || true, !arg_0.x, true, _wgslsmith_mod_u32(u_input.a, u_input.a) >= 0u));
    let var_2 = Struct_2(Struct_1(var_1.a.a.a, _wgslsmith_div_u32(_wgslsmith_clamp_u32(~54476u, _wgslsmith_sub_u32(4294967295u, 45633u), firstTrailingBit(var_1.a.a.b)), _wgslsmith_div_u32(~u_input.b, _wgslsmith_sub_u32(29237u, var_1.a.a.b))), -55371i), var_1.a.b);
    global0 = array<vec2<i32>, 11>();
    global0 = array<vec2<i32>, 11>();
    return var_1.a.b.b;
}

fn func_2(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = abs(arg_0.a.b.c);
    var var_1 = Struct_2(Struct_1(arg_0.a.b.a, ~(~4294967295u), -arg_0.a.b.c), func_1(arg_0, arg_0.b.xzy, firstLeadingBit(4294967295u)).a.a);
    global0 = array<vec2<i32>, 11>();
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(func_3(!arg_0.b.wy), 4294967295u), _wgslsmith_div_vec2_u32(select(vec2<u32>(u_input.b, arg_0.a.a.b), vec2<u32>(var_1.a.b, var_1.b.b), true), vec2<u32>(7311u, 49404u)) | reverseBits(abs(vec2<u32>(u_input.a, 4294967295u)))) < _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.a.b, var_1.a.b, var_1.b.b), vec3<u32>(var_1.a.b, arg_0.a.a.b, arg_0.a.b.b)), _wgslsmith_clamp_u32(var_1.b.b, u_input.b, arg_0.a.a.b), reverseBits(4294967295u), 25539u), vec4<u32>(abs(max(var_1.a.b, 31851u)), u_input.a << (14606u % 32u), arg_0.a.b.b, ~_wgslsmith_add_u32(arg_0.a.b.b, 18528u)));
    let var_3 = ~vec3<u32>(~reverseBits(24850u), ~4294967295u, 1u);
    return -vec4<i32>(~1i, i32(-1i) * -72461i, arg_0.a.a.c, func_1(func_1(Struct_3(Struct_2(var_1.a, var_1.a), arg_0.b), select(arg_0.b.zwx, vec3<bool>(false, arg_0.b.x, arg_0.b.x), arg_0.b.yzw), _wgslsmith_mod_u32(0u, arg_0.a.a.b)), select(vec3<bool>(true, arg_0.b.x, true), !vec3<bool>(arg_0.b.x, true, arg_0.b.x), !arg_0.b.ywx), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, arg_0.a.a.b, 0u), vec4<u32>(1u, 4294967295u, 67576u, arg_0.a.a.b))).a.b.c);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: vec4<i32>) -> Struct_2 {
    global1 = true;
    var var_0 = -1i;
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a.b.a.x), _wgslsmith_f_op_f32(-arg_1.a.a.a.x), arg_1.b.x));
    var var_2 = all(arg_0.b.yx) | (func_3(!(!arg_1.b.yx)) <= arg_1.a.a.b);
    global1 = arg_1.b.x;
    return arg_1.a;
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    var var_0 = vec4<i32>(min(~arg_0, -arg_2.c), arg_0, 11030i, countOneBits(func_2(arg_1).x & ~28479i)) << (~(~(~vec4<u32>(0u, arg_2.b, 1u, 2722u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(8316u, 55095u, arg_2.b, u_input.a), vec4<u32>(u_input.b, 82995u, 7465u, 0u))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, _wgslsmith_sub_i32(~(arg_0 | 53381i), arg_0)), u_input.d);
    var_0 = vec4<i32>(~var_0.x, u_input.c, countOneBits(var_0.x) & 24835i, _wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(u_input.e, u_input.e)), reverseBits(_wgslsmith_mult_vec2_i32(var_0.zz, global0[_wgslsmith_index_u32(arg_1.a.b.b, 11u)])))) ^ -_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(-2147483647i, arg_2.c, 113i, var_0.x)), ~vec4<i32>(-2147483647i, arg_1.a.a.c, arg_0, -2147483647i)), -vec4<i32>(29641i, -2498i, 65684i, 46645i));
    let var_2 = Struct_2(func_1(arg_1, vec3<bool>(arg_1.b.x, false, any(vec2<bool>(arg_1.b.x, arg_1.b.x))), _wgslsmith_sub_u32(abs(~1u), arg_1.a.a.b)).a.a, arg_2);
    let var_3 = select(firstLeadingBit(var_0.yzz), select(vec3<i32>(var_0.x, -reverseBits(-2147483647i), reverseBits(_wgslsmith_div_i32(6231i, var_1))), vec3<i32>(-2147483647i, var_1, _wgslsmith_div_i32(u_input.d | 38376i, i32(-1i) * -2147483647i)), arg_1.b.zxy), all(arg_1.b));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1315f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var_0 = u_input.b;
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_f32(func_5(countOneBits(2147483647i), Struct_3(func_4(Struct_3(Struct_2(Struct_1(vec2<f32>(-468f, 615f), u_input.b, u_input.d), Struct_1(vec2<f32>(-405f, -217f), u_input.a, u_input.e.x)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false))), Struct_3(Struct_2(Struct_1(vec2<f32>(-204f, -470f), 4294967295u, u_input.e.x), Struct_1(vec2<f32>(1983f, 236f), u_input.a, 33779i)), vec4<bool>(false, true, true, true)), ~(~vec3<i32>(u_input.c, u_input.c, u_input.e.x)), func_2(func_1(Struct_3(Struct_2(Struct_1(vec2<f32>(-1253f, -1000f), u_input.b, u_input.e.x), Struct_1(vec2<f32>(-2506f, 991f), 58322u, -2147483647i)), vec4<bool>(true, false, true, true)), vec3<bool>(true, false, true), 59610u))), !vec4<bool>(false, any(vec4<bool>(false, true, false, false)), true, true)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-342f, 1000f), vec2<f32>(-685f, 368f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1566f, 1500f), vec2<f32>(-770f, -333f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2117f, -2222f)))), 4294967295u, reverseBits(~(-2147483647i)))));
    let var_3 = func_1(Struct_3(func_4(Struct_3(func_4(Struct_3(Struct_2(Struct_1(vec2<f32>(1000f, 1134f), 0u, -2147483647i), Struct_1(vec2<f32>(1431f, -1895f), u_input.a, u_input.c)), vec4<bool>(false, true, false, true)), Struct_3(Struct_2(Struct_1(vec2<f32>(-1752f, 799f), u_input.a, -2147483647i), Struct_1(vec2<f32>(-296f, -247f), 4294967295u, -8565i)), vec4<bool>(true, false, false, true)), vec3<i32>(u_input.c, u_input.c, 1i), vec4<i32>(-29543i, u_input.e.x, -2147483647i, 2697i)), vec4<bool>(true, true, true, true)), func_1(Struct_3(Struct_2(Struct_1(vec2<f32>(851f, 674f), u_input.b, -1i), Struct_1(vec2<f32>(-479f, 701f), 4570u, 7735i)), vec4<bool>(false, true, false, true)), vec3<bool>(true, true, true), _wgslsmith_mod_u32(u_input.b, 20769u)), vec3<i32>(_wgslsmith_clamp_i32(u_input.c, u_input.c, -36125i), ~u_input.e.x, -85266i), ~(~vec4<i32>(2147483647i, 0i, u_input.c, 24176i))), !vec4<bool>(any(vec2<bool>(true, false)), true, func_1(Struct_3(Struct_2(Struct_1(vec2<f32>(-1000f, 513f), 1u, -6505i), Struct_1(vec2<f32>(955f, 1941f), 0u, 37142i)), vec4<bool>(true, false, true, true)), vec3<bool>(false, true, true), 48768u).b.x, any(vec4<bool>(false, true, false, false)))), vec3<bool>(false, true | (true || func_1(Struct_3(Struct_2(Struct_1(vec2<f32>(-691f, -635f), u_input.b, u_input.e.x), Struct_1(vec2<f32>(1539f, 2097f), u_input.a, u_input.c)), vec4<bool>(false, true, true, false)), vec3<bool>(true, false, true), u_input.b).b.x), true), 62626u | u_input.a).a;
    let var_4 = var_3.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-505f, _wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(Struct_1(var_4, 81160u, -39799i), Struct_1(var_4, 85843u, var_3.b.c)), vec4<bool>(false, false, true, true)), vec3<bool>(true, true, false), u_input.b).a.b.a.x * -134f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_3.a.a);
}

