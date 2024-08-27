struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec2<u32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(33725u, 1u, 0u, 4294967295u);

var<private> global1: array<Struct_5, 23> = array<Struct_5, 23>(Struct_5(vec2<f32>(471f, 628f)), Struct_5(vec2<f32>(263f, -3426f)), Struct_5(vec2<f32>(-547f, -580f)), Struct_5(vec2<f32>(-106f, -562f)), Struct_5(vec2<f32>(2178f, 229f)), Struct_5(vec2<f32>(-670f, -1000f)), Struct_5(vec2<f32>(652f, 192f)), Struct_5(vec2<f32>(1293f, 1000f)), Struct_5(vec2<f32>(816f, -1000f)), Struct_5(vec2<f32>(-223f, -1230f)), Struct_5(vec2<f32>(841f, 1072f)), Struct_5(vec2<f32>(-290f, 908f)), Struct_5(vec2<f32>(-1528f, -254f)), Struct_5(vec2<f32>(-660f, -2164f)), Struct_5(vec2<f32>(-1369f, 145f)), Struct_5(vec2<f32>(-710f, -427f)), Struct_5(vec2<f32>(-247f, 1972f)), Struct_5(vec2<f32>(-1000f, -665f)), Struct_5(vec2<f32>(821f, -1000f)), Struct_5(vec2<f32>(1071f, -909f)), Struct_5(vec2<f32>(-1023f, -1241f)), Struct_5(vec2<f32>(-1000f, 1731f)), Struct_5(vec2<f32>(-518f, -678f)));

var<private> global2: bool = false;

var<private> global3: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true));

var<private> global4: array<Struct_5, 32> = array<Struct_5, 32>(Struct_5(vec2<f32>(1158f, 205f)), Struct_5(vec2<f32>(2646f, -974f)), Struct_5(vec2<f32>(-726f, -1195f)), Struct_5(vec2<f32>(-1000f, 2780f)), Struct_5(vec2<f32>(113f, -1506f)), Struct_5(vec2<f32>(-362f, 1128f)), Struct_5(vec2<f32>(2177f, -721f)), Struct_5(vec2<f32>(679f, 707f)), Struct_5(vec2<f32>(594f, 415f)), Struct_5(vec2<f32>(-1664f, -401f)), Struct_5(vec2<f32>(1164f, 437f)), Struct_5(vec2<f32>(-1130f, 856f)), Struct_5(vec2<f32>(-448f, -929f)), Struct_5(vec2<f32>(409f, -1044f)), Struct_5(vec2<f32>(-247f, -1526f)), Struct_5(vec2<f32>(-1191f, -677f)), Struct_5(vec2<f32>(241f, 169f)), Struct_5(vec2<f32>(-1000f, -1000f)), Struct_5(vec2<f32>(2345f, -175f)), Struct_5(vec2<f32>(-336f, -1579f)), Struct_5(vec2<f32>(1030f, -860f)), Struct_5(vec2<f32>(569f, -1131f)), Struct_5(vec2<f32>(602f, 1312f)), Struct_5(vec2<f32>(108f, 370f)), Struct_5(vec2<f32>(235f, 1128f)), Struct_5(vec2<f32>(-263f, 598f)), Struct_5(vec2<f32>(-719f, -641f)), Struct_5(vec2<f32>(537f, 2272f)), Struct_5(vec2<f32>(1413f, 1077f)), Struct_5(vec2<f32>(481f, -1321f)), Struct_5(vec2<f32>(813f, -569f)), Struct_5(vec2<f32>(567f, 1516f)));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3) -> i32 {
    global3 = array<vec4<bool>, 22>();
    global0 = (firstTrailingBit(min(u_input.a, u_input.d)) << (abs(u_input.a) % vec4<u32>(32u))) ^ countOneBits(_wgslsmith_clamp_vec4_u32(u_input.d, select(u_input.a, u_input.d, true), u_input.d) >> (~reverseBits(vec4<u32>(global0.x, 4294967295u, arg_1.d, 65325u)) % vec4<u32>(32u)));
    var var_0 = true;
    var var_1 = Struct_1(-countOneBits(-(~(-34043i))), u_input.a.yxz, all(vec4<bool>(!arg_0.x, any(arg_0.xy), false, !arg_1.e.x)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_add_u32(1u, 1u), ~1u, ~19391u), abs(_wgslsmith_add_vec3_u32(global0.yyy, vec3<u32>(0u, global0.x, arg_1.d))), _wgslsmith_div_vec3_u32(u_input.d.ywy, u_input.d.xzx)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(849f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.b, arg_1.b), _wgslsmith_div_f32(arg_1.b, arg_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-454f + arg_1.b) - _wgslsmith_f_op_f32(trunc(1483f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.a, arg_1.b, 1729f))))))))));
    let var_2 = select(select(vec4<bool>(true, u_input.c >= ~0u, arg_1.e.x, arg_0.x), select(select(select(global3[_wgslsmith_index_u32(70504u, 22u)], global3[_wgslsmith_index_u32(var_1.d.x, 22u)], global3[_wgslsmith_index_u32(global0.x, 22u)]), select(global3[_wgslsmith_index_u32(var_1.d.x, 22u)], vec4<bool>(var_1.c, true, false, arg_0.x), arg_0.x), true), !vec4<bool>(var_1.c, false, true, var_1.c), 1120f < var_1.e.x), select(!select(global3[_wgslsmith_index_u32(var_1.d.x, 22u)], vec4<bool>(false, false, true, true), global3[_wgslsmith_index_u32(4294967295u, 22u)]), !global3[_wgslsmith_index_u32(u_input.a.x, 22u)], true)), select(select(vec4<bool>(!var_1.c, any(arg_0), true, true), global3[_wgslsmith_index_u32(4294967295u, 22u)], arg_1.e.x), select(vec4<bool>(!arg_0.x, all(arg_1.e), select(arg_0.x, true, false), arg_0.x), vec4<bool>(true, true, true, all(arg_0.zy)), global3[_wgslsmith_index_u32(global0.x | 60763u, 22u)]), true), !var_1.c);
    return _wgslsmith_clamp_i32(-(~arg_1.c) | u_input.e.x, 1i, -18129i);
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_4 {
    global4 = array<Struct_5, 32>();
    let var_0 = Struct_1(func_3(select(!(!vec3<bool>(false, false, arg_0)), vec3<bool>(false, arg_0, !arg_0), select(!vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, arg_0, true), all(vec2<bool>(arg_0, arg_0)))), Struct_3(_wgslsmith_f_op_f32(279f - _wgslsmith_f_op_f32(min(156f, 1199f))), _wgslsmith_f_op_f32(-546f + _wgslsmith_f_op_f32(-arg_1)), abs(-u_input.b), _wgslsmith_div_u32(u_input.a.x, global0.x ^ u_input.a.x), !(!vec3<bool>(true, arg_0, false)))), firstLeadingBit(u_input.d.wxz), arg_0, ~select(~abs(global0.xwz), u_input.d.zzz, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1424f, 585f, arg_1) - vec3<f32>(-183f, arg_1, arg_1)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -133f, arg_1)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_1, -818f), vec3<f32>(-391f, arg_1, -927f))), false))));
    var var_1 = Struct_3(var_0.e.x, _wgslsmith_f_op_f32(f32(-1f) * -850f), u_input.e.x, ~firstLeadingBit(17822u), vec3<bool>(!arg_0, true, false));
    global4 = array<Struct_5, 32>();
    global0 = ~_wgslsmith_mod_vec4_u32(~(~u_input.a), u_input.a);
    return Struct_4(~(~firstTrailingBit(var_1.d ^ u_input.c)), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1325f + -243f) - -504f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-628f - _wgslsmith_f_op_f32(ceil(var_1.a)))), ~(~min(2147483647i, 2147483647i)), firstLeadingBit(~0u), !(!select(var_1.e, var_1.e, var_0.c))), vec2<u32>(var_0.d.x, 82758u), !vec2<bool>(any(!vec4<bool>(var_1.e.x, var_0.c, true, false)), arg_0), abs(2147483647i));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: u32) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_i32(u_input.e.yz, max(-arg_2.xx, max(vec2<i32>(0i, -11626i), arg_2.zx))) >> (arg_1.a % 32u), _wgslsmith_mult_vec3_u32(~u_input.a.wzz, _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~u_input.a.zxw, reverseBits(vec3<u32>(37717u, 1u, 4294967295u))), vec3<u32>(~arg_1.a, ~arg_1.a, _wgslsmith_clamp_u32(u_input.c, u_input.a.x, arg_1.a)), ~vec3<u32>(65475u, arg_1.a, 4294967295u))), 1119f == _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x)), arg_0.a.x), countOneBits(u_input.d.wyx << (global0.yzz % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(343f)), arg_1.b.a, -937f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.b.a, 1510f, 710f))), select(arg_1.b.e, select(select(vec3<bool>(false, true, arg_1.b.e.x), vec3<bool>(false, arg_1.b.e.x, arg_1.b.e.x), vec3<bool>(false, false, false)), !vec3<bool>(false, arg_1.b.e.x, true), vec3<bool>(true, arg_1.d.x, true)), vec3<bool>(true, arg_1.d.x, true)))));
    var var_1 = _wgslsmith_sub_u32(u_input.d.x, ~14443u);
    var_0 = Struct_1(arg_2.x, ~abs(~countOneBits(var_0.b)), true, vec3<u32>(_wgslsmith_mod_u32(min(~global0.x, arg_1.a), firstTrailingBit(1u)), arg_1.c.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, 0u, arg_1.c.x), firstTrailingBit(u_input.a.yxy)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, arg_3), vec2<u32>(arg_1.a, 0u)), select(global0.yz, global0.wz, false)))), var_0.e);
    global0 = u_input.d;
    global0 = ~u_input.d;
    return vec4<bool>(true, any(!vec4<bool>(var_0.c, false, true, true)) && any(!func_2(arg_1.d.x, -512f).b.e.yx), true, all(!arg_1.b.e));
}

fn func_5(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1) -> Struct_3 {
    global1 = array<Struct_5, 23>();
    global1 = array<Struct_5, 23>();
    let var_0 = func_2(func_2(all(vec3<bool>(arg_0.x, arg_2.c, true)) | !select(arg_2.c, arg_2.c, arg_1), arg_2.e.x).d.x, _wgslsmith_f_op_f32(min(-1131f, arg_2.e.x)));
    let var_1 = vec4<i32>(abs(_wgslsmith_add_i32(-2147483647i, arg_2.a)) & 41809i, ~(-(arg_2.a >> (arg_2.b.x % 32u))), _wgslsmith_clamp_i32(var_0.e, 1i, ~(-1i << (0u % 32u))), arg_2.a) >> (select(_wgslsmith_mult_vec4_u32(u_input.d, ~abs(vec4<u32>(u_input.d.x, var_0.a, 66974u, 23276u))), vec4<u32>(~(~119275u), arg_2.b.x, arg_2.d.x, arg_2.b.x), all(vec4<bool>(true, false, var_0.d.x & arg_2.c, !arg_2.c))) % vec4<u32>(32u));
    var var_2 = vec2<bool>(arg_2.c, !(any(!global3[_wgslsmith_index_u32(arg_2.b.x, 22u)]) | true));
    return Struct_3(-833f, _wgslsmith_f_op_f32(-arg_2.e.x), _wgslsmith_mult_i32(-arg_2.a, -u_input.e.x), 1u, !vec3<bool>(!(true | var_2.x), true, var_2.x));
}

fn func_1() -> Struct_2 {
    let var_0 = ~u_input.e.x;
    global3 = array<vec4<bool>, 22>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -911f);
    var var_2 = ~var_0;
    var var_3 = func_5(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, true, true)))), all(func_4(Struct_5(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-798f, 1037f)))), func_2(-44030i < u_input.e.x, _wgslsmith_f_op_f32(f32(-1f) * -790f)), abs(~vec3<i32>(24664i, 25834i, var_0)), 0u)), Struct_1(-38952i, ~vec3<u32>(_wgslsmith_clamp_u32(u_input.c, 4294967295u, global0.x), u_input.d.x, max(2721u, global0.x)), true, ~global0.zzw, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(693f, -1000f, 368f) + vec3<f32>(var_1, 1401f, 392f)) - vec3<f32>(662f, var_1, 332f))))));
    return Struct_2(max(~(-2147483647i), -7217i), true, func_4(Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a, var_3.b) + vec2<f32>(1464f, var_1)))), func_2(all(!vec4<bool>(true, true, false, var_3.e.x)), var_3.b), u_input.e, 1u).wy, select(var_3.e.zy, vec2<bool>(true, false), var_3.e.x));
}

fn func_6(arg_0: bool, arg_1: Struct_5, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = global0.xz;
    global2 = all(select(vec4<bool>(!(arg_0 == arg_3.b), false, arg_3.b, true), !select(vec4<bool>(arg_0, false, arg_0, arg_3.d.x), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(57492u, 1u, 1u), 22u)], global3[_wgslsmith_index_u32(~0u, 22u)]), select(select(vec4<bool>(arg_3.d.x, arg_0, arg_0, arg_3.d.x), !vec4<bool>(arg_3.b, false, arg_0, false), select(global3[_wgslsmith_index_u32(var_0.x, 22u)], vec4<bool>(arg_3.c.x, arg_3.d.x, false, true), true)), vec4<bool>(-1000f < arg_2.x, !arg_3.c.x, arg_3.c.x & arg_0, true), global3[_wgslsmith_index_u32(20940u, 22u)])));
    var var_1 = u_input.e.xy ^ vec2<i32>(u_input.b, _wgslsmith_mult_i32(arg_3.a, _wgslsmith_add_i32(u_input.e.x, -12035i)));
    var var_2 = u_input.e;
    let var_3 = Struct_5(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.a), _wgslsmith_f_op_vec2_f32(-arg_1.a), select(false, true, arg_3.d.x))))))));
    return Struct_1(-29516i, firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(global0.wz, vec2<u32>(0u, var_0.x)), ~53738u, ~global0.x)) >> (vec3<u32>(25583u, var_0.x, reverseBits(~1u)) % vec3<u32>(32u)), !(all(global3[_wgslsmith_index_u32(~15398u, 22u)]) & arg_3.d.x), max(u_input.a.yzx << (u_input.a.xyx % vec3<u32>(32u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, 1u), global0.xwx, ~global0.zwy)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(arg_2.zxw, vec3<f32>(arg_2.x, 1590f, arg_2.x)))))))));
}

fn func_7(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> bool {
    var var_0 = vec3<bool>(!(!arg_1), arg_0.c, func_6(arg_1, Struct_5(arg_0.e.yz), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.x, arg_0.e.x, 1294f, 406f) * vec4<f32>(784f, arg_0.e.x, 140f, arg_0.e.x)), vec4<f32>(-1607f, -256f, arg_0.e.x, -1838f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.x, 1697f, 187f, 600f)))), Struct_2(-4499i, true, vec2<bool>(true, false), vec2<bool>(true, false))).c);
    global0 = u_input.a;
    var var_1 = func_3(select(func_5(var_0.xz, false, Struct_1(~0i, select(vec3<u32>(95038u, 68054u, 41980u), arg_0.b, true), true, vec3<u32>(122388u, 0u, arg_0.b.x), vec3<f32>(-295f, arg_0.e.x, arg_0.e.x))).e, !(!(!vec3<bool>(arg_1, arg_0.c, arg_0.c))), !vec3<bool>(1u < u_input.a.x, all(vec3<bool>(false, false, false)), var_0.x)), func_5(var_0.yy, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.e.x, -567f), 1f) < _wgslsmith_f_op_f32(trunc(arg_0.e.x)), arg_0));
    let var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(arg_0.e.zz)))));
    var_1 = arg_0.a;
    return true;
}

fn func_8(arg_0: vec3<i32>, arg_1: bool, arg_2: vec2<u32>) -> vec4<f32> {
    var var_0 = Struct_4(func_2(!func_2(arg_1, -1077f).b.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1019f) * 1000f)).b.d >> (arg_2.x % 32u), Struct_3(370f, _wgslsmith_f_op_f32(-func_6(true, Struct_5(vec2<f32>(169f, -402f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1325f, 1138f, -547f, 236f)), func_1()).e.x), 31761i, ~min(0u, ~11605u), func_4(global1[_wgslsmith_index_u32(69260u, 23u)], Struct_4(countOneBits(1u), Struct_3(-1000f, 830f, u_input.b, global0.x, vec3<bool>(arg_1, false, false)), ~u_input.d.zx, func_2(arg_1, -830f).d, func_6(false, global4[_wgslsmith_index_u32(2811u, 32u)], vec4<f32>(-753f, 384f, 1000f, 447f), Struct_2(arg_0.x, arg_1, vec2<bool>(arg_1, false), vec2<bool>(arg_1, true))).a), _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(-35990i, -1i, arg_0.x)), vec3<i32>(0i, -4273i, u_input.e.x)), _wgslsmith_clamp_u32(~global0.x, 1u, 0u)).zwz), func_6(!(-2147483647i <= firstTrailingBit(arg_0.x)), global4[_wgslsmith_index_u32(~1u, 32u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(266f - 769f), _wgslsmith_f_op_f32(sign(-977f)), 1705f, -289f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(689f, -558f, 2867f, 1299f)))), func_1()).b.xz, func_1().d, max(-28200i, func_2(func_4(global1[_wgslsmith_index_u32(u_input.d.x, 23u)], Struct_4(global0.x, Struct_3(569f, 217f, arg_0.x, global0.x, vec3<bool>(arg_1, arg_1, true)), vec2<u32>(arg_2.x, 29536u), vec2<bool>(arg_1, arg_1), 67337i), ~vec3<i32>(arg_0.x, u_input.b, u_input.e.x), 1u).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(2180f, 821f)), _wgslsmith_f_op_f32(-1582f - -622f))).b.c));
    global2 = false;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-267f, var_0.b.b, var_0.b.a, var_0.b.a))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.a, var_0.b.b, 619f, var_0.b.b), vec4<f32>(var_0.b.a, var_0.b.b, var_0.b.a, var_0.b.a), global3[_wgslsmith_index_u32(40517u, 22u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1170f, var_0.b.a, 891f, var_0.b.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1019f, -949f, var_0.b.b, var_0.b.a) - vec4<f32>(-1013f, var_0.b.b, var_0.b.b, 1180f))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.b.b)), var_0.b.a, _wgslsmith_f_op_f32(-var_0.b.b), _wgslsmith_f_op_f32(-var_0.b.a)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.b, var_0.b.b, 964f, var_0.b.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-171f, 449f, 485f, var_0.b.b) - vec4<f32>(-1010f, -1101f, var_0.b.a, 1096f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1072f, -995f, 390f, var_0.b.a)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.b, -1231f, 757f, var_0.b.b) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-211f, 1910f, var_0.b.b, var_0.b.a))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 23>();
    let var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(1244f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-783f)))), _wgslsmith_f_op_f32(sign(-726f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(max(-211f, 152f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -473f) + -889f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_8(u_input.e >> (vec3<u32>(countOneBits(global0.x), 34688u, 1u) % vec3<u32>(32u)), func_7(func_6(!any(vec2<bool>(false, true)), Struct_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1053f, var_0.x, -2952f, var_0.x), vec4<f32>(-831f, var_0.x, 106f, var_0.x))), func_1()), select(true, true, true), func_1().a), ~u_input.d.ww));
    let var_2 = -abs(u_input.e.x);
    global2 = false | (true && ((33221i <= u_input.b) | false));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, u_input.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, ~(-4252i), var_2, ~14843i) >> (vec4<u32>(select(u_input.c, global0.x, false), ~49405u, 33746u, global0.x) % vec4<u32>(32u)), min(~vec4<i32>(u_input.e.x, 2147483647i, 2147483647i, var_2), firstTrailingBit(vec4<i32>(1i, u_input.e.x, u_input.b, u_input.e.x) >> (u_input.d % vec4<u32>(32u)))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2, -33046i, -4060i, -62558i), vec4<i32>(-2147483647i, -2756i, 2147483647i, 0i) & vec4<i32>(2147483647i, u_input.b, 2147483647i, 0i)) << (~select(vec4<u32>(1u, global0.x, u_input.c, u_input.d.x), vec4<u32>(global0.x, 17813u, 38259u, 0u), vec4<bool>(true, true, true, true)) % vec4<u32>(32u))));
}

