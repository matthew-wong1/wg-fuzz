struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = 55457u << (~(~abs(u_input.b.x) | _wgslsmith_mod_u32(~u_input.b.x, 23828u)) % 32u);
    var_0 = reverseBits(u_input.b.x);
    global0 = vec4<bool>(true, true && ((1i > _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, -1i, -19640i, 2147483647i), vec4<i32>(16805i, -1i, u_input.a.x, u_input.a.x))) && (~42317u <= ~u_input.b.x)), true, true);
    var_0 = u_input.b.x << (firstLeadingBit(~abs(_wgslsmith_mod_u32(u_input.b.x, 4294967295u))) % 32u);
    let var_1 = vec3<u32>(~((~u_input.b.x >> (u_input.b.x % 32u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(35466u, u_input.b.x), vec2<u32>(9505u, u_input.b.x) & vec2<u32>(33554u, u_input.b.x))), ~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b.x, min(u_input.b.x, 0u)), u_input.b.x), _wgslsmith_add_u32(1u, ~u_input.b.x & u_input.b.x));
    return vec4<bool>(all(select(!vec4<bool>(false, false, global0.x, global0.x), !select(vec4<bool>(global0.x, arg_2.b, arg_2.a, arg_2.b), vec4<bool>(global0.x, global0.x, arg_2.a, false), vec4<bool>(arg_2.b, false, true, global0.x)), all(global0.yy) | true)), abs(~firstTrailingBit(u_input.b.x)) <= var_1.x, any(!select(select(global0.wx, global0.wz, false), global0.wy, global0.yw)), true);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>) -> Struct_2 {
    global0 = select(select(select(select(select(vec4<bool>(true, arg_0.x, true, true), vec4<bool>(global0.x, arg_0.x, false, true), vec4<bool>(false, arg_0.x, global0.x, false)), select(vec4<bool>(false, arg_0.x, true, false), vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(false, false, arg_0.x, arg_0.x)), true || global0.x), select(!vec4<bool>(global0.x, arg_0.x, true, arg_0.x), !vec4<bool>(global0.x, arg_0.x, true, global0.x), vec4<bool>(true, arg_0.x, false, true)), select(select(vec4<bool>(global0.x, arg_0.x, true, false), vec4<bool>(false, false, true, global0.x), arg_0.x), func_3(arg_1.zyy, -1i, Struct_2(false, global0.x, vec4<f32>(arg_1.x, -623f, 1505f, arg_1.x), Struct_1(vec2<f32>(745f, -358f)))), true)), vec4<bool>(false, true, all(vec2<bool>(global0.x, arg_0.x)), any(global0.zy)), arg_0.x), vec4<bool>(any(select(global0.xzy, vec3<bool>(true, true, true), true)), select(true, true, _wgslsmith_f_op_f32(round(arg_1.x)) < -1000f), all(func_3(arg_1.yxw, 32826i, Struct_2(false, global0.x, arg_1, Struct_1(vec2<f32>(arg_1.x, arg_1.x)))).xwx), func_3(_wgslsmith_f_op_vec3_f32(step(arg_1.zyy, _wgslsmith_f_op_vec3_f32(arg_1.wxx - arg_1.wyz))), firstTrailingBit(_wgslsmith_sub_i32(-2147483647i, u_input.a.x)), Struct_2(arg_0.x && global0.x, any(vec4<bool>(true, global0.x, true, false)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-577f, -1781f, -1128f, arg_1.x))), Struct_1(arg_1.yw))).x), true);
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -752f)))));
    var var_1 = abs(~(~u_input.b.x));
    var var_2 = select(0u, ~4294967295u, false);
    var var_3 = ~_wgslsmith_clamp_vec2_u32(countOneBits(abs(u_input.b.zz) ^ _wgslsmith_add_vec2_u32(vec2<u32>(26869u, 22098u), u_input.b.zx)), select(vec2<u32>(u_input.b.x, ~4294967295u), u_input.b.yz, arg_0.x), vec2<u32>(~(~65312u), reverseBits(_wgslsmith_mult_u32(3328u, u_input.b.x))));
    return Struct_2(false, var_3.x == (~(~0u) ^ reverseBits(var_3.x)), vec4<f32>(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x))), arg_1.x, arg_1.x, 1100f), Struct_1(var_0.a));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> vec4<bool> {
    global0 = !vec4<bool>(firstLeadingBit(u_input.a.x) <= -29324i, countOneBits(~u_input.b.x) >= u_input.b.x, !func_2(vec2<bool>(arg_2.a, arg_1.b), arg_1.c).a, any(!(!vec4<bool>(arg_2.a, true, false, true))));
    global0 = vec4<bool>(false, arg_2.a, arg_1.a, true);
    var var_0 = !arg_1.b;
    global0 = !(!select(vec4<bool>(arg_1.b, true, u_input.a.x <= u_input.c, global0.x), select(!vec4<bool>(arg_1.a, arg_1.a, arg_1.b, arg_1.a), vec4<bool>(arg_1.b, global0.x, true, global0.x), arg_1.b & true), arg_1.a && arg_2.b));
    let var_1 = select(select(vec3<bool>(u_input.a.x == -9302i, true, arg_2.a), vec3<bool>(true, false, func_3(_wgslsmith_f_op_vec3_f32(max(arg_2.c.xyx, arg_2.c.yxy)), firstTrailingBit(-1i), arg_1).x), select(!(!arg_2.b), arg_1.b, global0.x)), vec3<bool>(!(!any(global0.yx)), !(!(true || global0.x)), global0.x), global0.x);
    return !func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(257f, func_2(global0.zw, arg_2.c).c.x, func_2(global0.zw, vec4<f32>(-1490f, -1211f, arg_2.c.x, arg_2.d.a.x)).c.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.c, -1305i), vec4<i32>(u_input.a.x, 1i, u_input.c, -2147483647i)), u_input.a.x), countOneBits(~vec4<i32>(-39797i, u_input.c, u_input.a.x, u_input.a.x))), Struct_2(func_2(select(var_1.yx, vec2<bool>(true, false), false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1891f, arg_1.c.x, 526f, arg_1.d.a.x))).a, !(!var_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_2.c, vec4<f32>(arg_3.a.x, arg_1.c.x, 1251f, -568f), vec4<bool>(global0.x, false, true, arg_2.b))) * _wgslsmith_f_op_vec4_f32(-arg_2.c)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, 861f) - vec2<f32>(170f, 539f)))));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: i32) -> vec4<bool> {
    global0 = !vec4<bool>(global0.x, any(select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, global0.x, arg_2.a, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, arg_2.b, global0.x)), vec4<bool>(arg_2.b, false, global0.x, global0.x))), global0.x, all(!vec2<bool>(false, global0.x)));
    var var_0 = all(select(select(!vec4<bool>(true, global0.x, global0.x, false), select(select(vec4<bool>(arg_2.b, true, true, global0.x), vec4<bool>(arg_2.a, true, arg_2.a, false), vec4<bool>(false, false, global0.x, global0.x)), !vec4<bool>(false, global0.x, false, global0.x), true), vec4<bool>(false, true, true, 1u >= arg_0)), !(!(!vec4<bool>(false, global0.x, false, false))), func_4(Struct_1(arg_2.d.a), func_2(vec2<bool>(global0.x, arg_2.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d.a.x, arg_2.c.x, arg_2.c.x, arg_2.c.x) + vec4<f32>(-451f, arg_2.d.a.x, -189f, -641f))), Struct_2(all(vec3<bool>(arg_2.b, false, arg_2.b)), any(vec2<bool>(global0.x, global0.x)), _wgslsmith_div_vec4_f32(arg_2.c, vec4<f32>(289f, -1000f, arg_2.d.a.x, 792f)), arg_2.d), func_2(global0.xw, vec4<f32>(595f, 1000f, arg_2.c.x, 130f)).d)));
    let var_1 = 1322f;
    var var_2 = Struct_2(false, global0.x, _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.d.a.x, arg_2.d.a.x, var_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, 799f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(1608f, var_1, -678f, -752f) - arg_2.c)) * _wgslsmith_f_op_vec4_f32(-arg_2.c))), func_2(select(!vec2<bool>(arg_2.b, arg_2.a), global0.zw, vec2<bool>(var_1 > arg_2.d.a.x, !arg_2.a)), arg_2.c).d);
    var var_3 = Struct_2(!var_2.b, any(!vec4<bool>(false, arg_2.b, arg_2.b, true)) & arg_2.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.d.a.x, -973f, -167f, -476f)))))), var_2.d);
    return vec4<bool>(true, all(vec4<bool>(true | var_3.b, var_3.a, arg_0 >= 100610u, true)), global0.x, func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-712f, -400f, var_2.c.x))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_3, arg_1.x) ^ arg_1, _wgslsmith_sub_vec3_i32(vec3<i32>(arg_3, 39949i, arg_1.x), arg_1)), -1286i), Struct_2(!all(vec2<bool>(var_3.b, var_3.a)), arg_3 != ~(-44125i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 522f, -163f, var_2.d.a.x) + var_3.c), var_3.c, vec4<bool>(false, true, var_3.a, false))), func_2(vec2<bool>(global0.x, global0.x), _wgslsmith_div_vec4_f32(var_2.c, var_3.c)).d)).x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!select(vec4<bool>(global0.x, global0.x | false, true, all(vec3<bool>(global0.x, global0.x, global0.x))), func_1(~u_input.b.x, u_input.a << (u_input.b % vec3<u32>(32u)), Struct_2(true, false, vec4<f32>(1094f, 326f, -161f, -170f), Struct_1(vec2<f32>(247f, 360f))), 14905i), global0.x));
    global0 = vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -520f) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -814f), -1000f)))), _wgslsmith_div_u32(23444u, firstTrailingBit(1u)) == u_input.b.x, true, select(!(select(global0.x, false, global0.x) == select(true, true, true)), (all(vec3<bool>(global0.x, true, global0.x)) && func_2(vec2<bool>(global0.x, true), vec4<f32>(694f, 215f, -798f, 1000f)).b) & func_1(~u_input.b.x, u_input.a, func_2(vec2<bool>(global0.x, global0.x), vec4<f32>(189f, -312f, 984f, -1297f)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(-1i, u_input.c, 2147483647i))).x, global0.x));
    global0 = !func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-func_2(vec2<bool>(true, false), vec4<f32>(-501f, 240f, 811f, -1000f)).c.zw)), func_2(select(global0.zy, select(vec2<bool>(global0.x, true), global0.wz, global0.x), true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(368f, -808f, -1280f, -362f) - vec4<f32>(1175f, -342f, -104f, -178f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(716f, 274f, -424f, 465f)))), Struct_2(all(func_3(vec3<f32>(1000f, -184f, -1855f), -2147483647i, Struct_2(true, global0.x, vec4<f32>(700f, 804f, -1271f, -148f), Struct_1(vec2<f32>(-1057f, -118f))))), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(1320f, -261f, -525f, 344f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-769f, 1115f, -161f, 1474f) + vec4<f32>(-1631f, -422f, -655f, 932f))), func_2(global0.zy, vec4<f32>(202f, -1577f, 814f, 1000f)).d), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -296f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(667f, 1242f))))));
    global0 = vec4<bool>(~min(countOneBits(1u), u_input.b.x) <= ~u_input.b.x, true, true | select(true, global0.x, true), false);
    global0 = select(func_4(func_2(!vec2<bool>(global0.x, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-422f, 895f, -1000f, -1695f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-3291f, 204f, -692f, 784f), vec4<f32>(252f, 1676f, -145f, 619f))), global0.x))).d, func_2(global0.yz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1139f, 979f, -913f, -598f))) + vec4<f32>(-658f, 242f, 600f, 121f))), func_2(global0.yy, vec4<f32>(822f, -948f, _wgslsmith_f_op_f32(1496f * 798f), _wgslsmith_f_op_f32(f32(-1f) * -292f))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-863f, -344f))) + vec2<f32>(-178f, 1307f)))), func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-183f, 1000f, 138f))) * vec3<f32>(-1795f, -2086f, _wgslsmith_f_op_f32(f32(-1f) * -563f))), ~u_input.c, Struct_2(global0.x, true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(406f, 456f, -602f, -1541f), vec4<f32>(427f, 211f, 1000f, -1000f)))), Struct_1(vec2<f32>(-1366f, 2505f)))), true);
    var var_0 = Struct_2(-u_input.a.x > 64i, false, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(108f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-154f * 633f) - 798f), _wgslsmith_f_op_f32(286f * _wgslsmith_f_op_f32(round(1333f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(552f * 1000f) + -1422f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(180f, -724f, 675f, 260f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-815f, 1000f, 430f, 613f), vec4<f32>(329f, -1142f, -1000f, 1000f))), !global0.x))), true)), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(1000f, -856f), _wgslsmith_f_op_f32(f32(-1f) * -931f))))));
    let var_1 = func_2(global0.zy, _wgslsmith_f_op_vec4_f32(floor(var_0.c))).d;
    global0 = !vec4<bool>(var_0.a, true & func_2(select(global0.xy, vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, global0.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.d.a.x, 1457f, var_1.a.x, var_1.a.x), vec4<f32>(var_0.d.a.x, 246f, -1000f, 1593f)))).b, true, false);
    global0 = vec4<bool>(var_0.b, true, var_0.b, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(425f, min(~(~87946u), _wgslsmith_dot_vec2_u32(reverseBits(abs(u_input.b.yz)), _wgslsmith_clamp_vec2_u32(u_input.b.yx, countOneBits(vec2<u32>(u_input.b.x, 1u)), vec2<u32>(0u, u_input.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.d.a.x)) * _wgslsmith_f_op_f32(527f + var_1.a.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1298f))));
}

