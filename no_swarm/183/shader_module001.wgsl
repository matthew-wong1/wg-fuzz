struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<bool>,
    d: Struct_4,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<f32> {
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(0i, -_wgslsmith_add_i32(-u_input.e.x, -1i), u_input.d.x, u_input.a << (_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b, u_input.b), 19360u >> (u_input.c.x % 32u)) % 32u)), -vec4<i32>(2147483647i, -2147483647i, _wgslsmith_add_i32(-33618i, u_input.d.x & u_input.e.x), -u_input.d.x));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1594f, 540f, _wgslsmith_div_f32(-1069f, -1892f), -542f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1456f) + _wgslsmith_f_op_f32(step(1015f, -115f))), _wgslsmith_f_op_f32(max(655f, _wgslsmith_f_op_f32(f32(-1f) * -347f))), _wgslsmith_f_op_f32(1333f * -1161f), _wgslsmith_f_op_f32(1497f * -256f)))));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    let var_0 = u_input.d;
    var var_1 = ~u_input.c;
    var var_2 = !(!(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), true))));
    var var_3 = Struct_5(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 323f, 422f, -1447f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(1405f, -1103f)), _wgslsmith_f_op_f32(762f - -1406f), _wgslsmith_f_op_f32(404f - -1557f)), vec3<f32>(_wgslsmith_f_op_f32(ceil(-244f)), _wgslsmith_f_op_f32(ceil(-2480f)), _wgslsmith_f_op_f32(trunc(1486f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1135f, 163f, 1118f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-948f, -2075f, 316f), vec3<f32>(1000f, -928f, -1270f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(330f, 1054f, 271f)), select(select(vec3<bool>(var_2.x, var_2.x, true), var_2.wzx, var_2.yxw), select(var_2.yxz, vec3<bool>(false, true, true), vec3<bool>(false, var_2.x, false)), var_2.xxy)))), vec2<f32>(-1000f, 1692f), !vec4<bool>(any(!vec4<bool>(var_2.x, false, true, true)), false, true, false & var_2.x), Struct_4(Struct_3(_wgslsmith_f_op_f32(max(-610f, 1f)), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(507f, 614f, 667f, -2354f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-212f, 255f, -722f)), vec3<f32>(1f, 1f, 1f))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1219f, 1101f, 413f, 311f) * vec4<f32>(-1301f, -365f, 635f, 947f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(2684f, 159f, 1146f), vec3<f32>(-1000f, 939f, -333f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-193f, 411f, -362f), vec3<f32>(-221f, -2187f, 118f), vec3<bool>(true, var_2.x, false))))), Struct_2(arg_0, Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(297f, 663f, -1000f, -106f))), vec3<f32>(-1558f, -1053f, 822f), _wgslsmith_f_op_vec3_f32(vec3<f32>(202f, 1388f, 1000f) * vec3<f32>(1385f, -1464f, 446f))), Struct_1(vec4<f32>(-713f, 1502f, 729f, -122f), vec3<f32>(349f, 1658f, -786f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1169f, -152f, 138f) * vec3<f32>(1630f, 478f, -623f))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-170f, 684f, -1184f, -623f) - vec4<f32>(1353f, 1480f, -151f, 715f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-817f, -247f, 293f) + vec3<f32>(859f, 1000f, -1476f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1219f, 1353f, -637f))))), i32(-1i) * -32768i);
    let var_4 = Struct_2(var_3.d.c.a, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_3.d.a.b.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1361f, -729f, var_3.a.a.x, -1458f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d.b.a.x, 2617f, var_3.a.c.x, var_3.a.a.x) + vec4<f32>(-1355f, var_3.b.x, var_3.b.x, -1375f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_3.a.c), var_3.d.b.b)))), var_3.d.b.c), var_3.d.a.b, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(773f, 514f)), _wgslsmith_div_f32(953f, var_3.a.a.x), _wgslsmith_f_op_f32(min(1000f, var_3.b.x)), 149f)), _wgslsmith_f_op_vec3_f32(-var_3.d.b.b), var_3.a.a.xxw));
    return var_3.b.x;
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = u_input.c.wzw;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(vec2<u32>(20109u, 4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-127f * 648f)))), 1046f)));
    var_1 = -627f;
    let var_2 = !all(vec2<bool>(true, true));
    var var_3 = vec3<i32>(select(u_input.e.x, abs(u_input.d.x), var_2), -1i, 2147483647i);
    return Struct_3(_wgslsmith_f_op_f32(func_2(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(abs(var_0.zx), min(var_0.xz, vec2<u32>(20752u, 90345u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(75865u, 50634u), var_0.yz, u_input.c.xx) >> (~vec2<u32>(29284u, arg_0) % vec2<u32>(32u))))), Struct_1(vec4<f32>(1f, 1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(316f, -102f))), _wgslsmith_f_op_f32(-366f - _wgslsmith_f_op_f32(-512f + -669f)), -847f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(344f, 1000f, -881f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-785f, 215f, 298f))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    var var_0 = 31199u;
    let var_1 = Struct_4(arg_2, arg_2.b, Struct_2(~abs(~u_input.c.ww), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.b.a * arg_2.b.a)), arg_2.b.b, vec3<f32>(_wgslsmith_div_f32(-1252f, arg_2.a), 1276f, _wgslsmith_f_op_f32(479f - arg_2.a))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -314f), arg_2.b.a.x, -1094f, _wgslsmith_f_op_f32(abs(-1379f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.b.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, arg_2.a, 705f) + vec3<f32>(1292f, arg_2.b.b.x, arg_2.a))), Struct_1(arg_2.b.a, _wgslsmith_f_op_vec3_f32(arg_2.b.c * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-886f, arg_2.a, arg_2.b.a.x))), vec3<f32>(arg_2.b.c.x, _wgslsmith_div_f32(arg_2.a, arg_2.a), _wgslsmith_div_f32(-1000f, 900f)))));
    var_0 = _wgslsmith_div_u32(~(max(_wgslsmith_dot_vec2_u32(u_input.c.yy, var_1.c.a), var_1.c.a.x) | arg_0.x), firstTrailingBit(~_wgslsmith_sub_u32(abs(4294967295u), ~arg_0.x)));
    let var_2 = abs(firstLeadingBit(4294967295u)) > _wgslsmith_add_u32(~4294967295u, arg_0.x);
    var_0 = 4294967295u;
    return Struct_1(var_1.c.b.a, vec3<f32>(-499f, _wgslsmith_f_op_f32(func_1(~arg_0.x).b.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.b.a.x, -1000f)) + -988f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2188f * var_1.a.b.b.x))), var_1.a.b.a.zxz);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: u32) -> Struct_2 {
    var var_0 = arg_0.d.a.zy;
    let var_1 = select(true, true, !(!(-1098f < _wgslsmith_f_op_f32(arg_0.b.b.x - var_0.x))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_0.b.c.zy)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 1f)), func_4(_wgslsmith_mod_vec3_u32(u_input.c.xxx, vec3<u32>(4294967295u, 1u, arg_0.a.x)), true, func_1(_wgslsmith_sub_u32(arg_2, 39199u) ^ 0u)).c.x);
    let var_3 = Struct_5(arg_0.d, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(arg_0.c.b.xy)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(arg_0.c.b.x, 1647f), 1842f))), select(vec2<bool>(true, select(var_1, true, var_1)), select(select(vec2<bool>(true, var_1), vec2<bool>(false, var_1), var_1), vec2<bool>(var_1, true), all(vec3<bool>(true, false, true))), vec2<bool>(true, var_1)))), select(vec4<bool>(var_1, var_1, !(!var_1), true), vec4<bool>(!(68537u <= arg_1.x), any(vec4<bool>(true, false, true, var_1)) == !var_1, true, !var_1), !vec4<bool>(true, true, true, var_1)), Struct_4(func_1(1u), arg_0.d, Struct_2(arg_1, Struct_1(_wgslsmith_f_op_vec4_f32(abs(arg_0.d.a)), vec3<f32>(var_2.x, arg_0.c.c.x, 187f), vec3<f32>(var_0.x, -1349f, -552f)), func_4(firstLeadingBit(u_input.c.yzx), any(vec2<bool>(true, var_1)), func_1(arg_0.a.x)), arg_0.b)), u_input.a);
    return Struct_2(select(vec2<u32>(4294967295u, arg_0.a.x), u_input.c.wy, !select(!var_3.c.xx, select(vec2<bool>(var_3.c.x, false), vec2<bool>(var_1, var_1), var_3.c.zw), true)), func_1(arg_0.a.x).b, func_4(select(firstTrailingBit(u_input.c.wzy), u_input.c.zxz, select(select(vec3<bool>(var_3.c.x, var_1, false), var_3.c.ywz, vec3<bool>(var_1, var_3.c.x, var_3.c.x)), select(var_3.c.yxy, var_3.c.xzz, var_3.c.wyz), !var_3.c.zxx)), false, var_3.d.a), arg_0.d);
}

fn func_6(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_4(Struct_3(arg_0.c.a.x, arg_0.b), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(arg_0.d.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.c.b - arg_0.c.b) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.b.x, arg_0.d.c.x, arg_0.c.b.x) - arg_0.b.b)), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c.a.x), _wgslsmith_f_op_f32(1004f + 923f), _wgslsmith_f_op_f32(arg_0.b.c.x + 1000f))), _wgslsmith_f_op_vec3_f32(func_5(func_5(Struct_2(u_input.c.yz, Struct_1(vec4<f32>(arg_0.d.b.x, arg_0.b.c.x, 179f, -590f), vec3<f32>(arg_0.d.a.x, arg_0.d.c.x, arg_0.c.c.x), arg_0.c.b), arg_0.b, Struct_1(vec4<f32>(-765f, arg_0.c.c.x, arg_0.c.b.x, -2015f), vec3<f32>(1000f, 1386f, arg_0.b.c.x), vec3<f32>(arg_0.d.c.x, -333f, -1028f))), vec2<u32>(u_input.b, arg_1), u_input.b), ~u_input.c.yx, u_input.b).b.a.wwz * vec3<f32>(-574f, _wgslsmith_f_op_f32(-arg_0.b.a.x), arg_0.c.b.x))), arg_0);
    let var_1 = true;
    let var_2 = Struct_5(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.d.a - var_0.b.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.d.a.x, 257f, 776f, -539f) - _wgslsmith_f_op_vec4_f32(-var_0.a.b.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.d.b)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_0.c.c.c), func_4(u_input.c.wxx, true, Struct_3(var_0.a.b.b.x, Struct_1(arg_0.b.a, vec3<f32>(var_0.a.b.b.x, -183f, var_0.c.d.c.x), arg_0.c.c))).a.wxx))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1174f, var_0.b.b.x, 1107f)))), arg_0.c.a.yx, vec4<bool>(var_1, true, true, !var_1), Struct_4(var_0.a, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a, arg_0.b.b.x, 510f, 136f) - vec4<f32>(arg_0.b.b.x, -157f, -1141f, -315f)) + _wgslsmith_div_vec4_f32(vec4<f32>(1834f, -948f, var_0.a.a, 527f), var_0.b.a)), arg_0.c.b, _wgslsmith_f_op_vec3_f32(arg_0.c.c + vec3<f32>(-1000f, 1000f, arg_0.b.c.x))), Struct_2(firstLeadingBit(u_input.c.ww), func_1(arg_1 & 40192u).b, func_1(~1u).b, func_5(var_0.c, firstLeadingBit(vec2<u32>(0u, arg_0.a.x)), ~13327u).b)), -15129i);
    let var_3 = func_1(var_2.d.c.a.x);
    let var_4 = var_2.c.wzx;
    return func_5(Struct_2(countOneBits(var_2.d.c.a ^ reverseBits(arg_0.a)), var_3.b, arg_0.b, Struct_1(arg_0.d.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1263f, var_3.a, 2348f), vec3<f32>(var_0.b.b.x, -651f, var_3.b.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(383f, var_3.b.a.x, var_2.a.c.x) + var_2.d.a.b.c), select(vec3<bool>(var_1, var_4.x, true), vec3<bool>(var_4.x, true, false), var_2.c.yzy))), vec3<f32>(_wgslsmith_f_op_f32(var_0.a.b.c.x * var_0.a.b.a.x), -299f, func_4(u_input.c.xyx, var_4.x, var_2.d.a).a.x))), _wgslsmith_add_vec2_u32(~(arg_0.a | min(var_0.c.a, var_2.d.c.a)), ~arg_0.a << (vec2<u32>(_wgslsmith_add_u32(arg_1, 0u), ~0u) % vec2<u32>(32u))), ~(~u_input.c.x)).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e.x;
    var_0 = select(-4735i, max(u_input.d.x, u_input.e.x), select(false, true, false & !select(true, false, true)));
    var_0 = -2147483647i;
    var var_1 = func_6(func_5(Struct_2(vec2<u32>(u_input.c.x & u_input.c.x, u_input.c.x), Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1849f, 539f, 405f, -203f), vec4<f32>(-838f, -131f, 1573f, -1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1683f, 1202f, -825f) + vec3<f32>(-144f, -1534f, 1000f)), vec3<f32>(1f, 1f, 1f)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-769f, 441f, -743f, 294f)), vec3<f32>(637f, -1603f, -150f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-435f, 741f, 1000f))), func_4(vec3<u32>(4294967295u, 3569u, u_input.b), true, func_1(u_input.c.x))), ~reverseBits(vec2<u32>(u_input.b, u_input.b)), u_input.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), func_5(func_5(Struct_2(vec2<u32>(85186u, 4294967295u), Struct_1(vec4<f32>(-362f, -884f, -477f, -1000f), vec3<f32>(-679f, 607f, 1056f), vec3<f32>(-394f, -721f, 726f)), Struct_1(vec4<f32>(-426f, -1055f, 380f, -1365f), vec3<f32>(829f, 2381f, 129f), vec3<f32>(494f, -853f, -1431f)), Struct_1(vec4<f32>(1154f, 1801f, -2314f, -1000f), vec3<f32>(969f, -1933f, -352f), vec3<f32>(-232f, -1000f, -2008f))), u_input.c.xy, ~u_input.b), u_input.c.wx, abs(32690u)).a));
    let var_2 = var_1.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(3602i, u_input.d.x), abs(u_input.d.x), select(u_input.e.x, 0i, true)), u_input.d.ywy)), u_input.d, select(max(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c.xxy, vec3<u32>(1u, 4294967295u, u_input.c.x)), u_input.b), ~u_input.c.xw), u_input.c.xz, !select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true))), u_input.d.xwz);
}

