struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0u, Struct_1(vec2<i32>(i32(-2147483648), 34920i), vec4<u32>(1u, 63216u, 27123u, 1u)), vec4<u32>(4294967295u, 28430u, 1u, 1u));

var<private> global1: bool;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    var var_0 = Struct_3(vec4<bool>(select(true, true, !all(vec3<bool>(true, false, true))), all(select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))), true, all(vec4<bool>(all(vec4<bool>(true, true, true, false)), 4294967295u >= global0.c.x, true, false))), ~_wgslsmith_sub_vec2_i32(vec2<i32>(min(20116i, 2147483647i), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)), _wgslsmith_div_vec2_i32(global0.b.a, vec2<i32>(global0.b.a.x, global0.b.a.x) >> (vec2<u32>(63776u, global0.c.x) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-363f, _wgslsmith_f_op_f32(round(-858f)), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-610f * 1787f))), _wgslsmith_f_op_f32(1632f + _wgslsmith_f_op_f32(floor(-1851f))), 1f)), 4294967295u, ~vec4<u32>(~(~global0.a), 1u, 0u, global0.b.b.x));
    var var_1 = global0.b;
    var var_2 = Struct_3(!(!var_0.a), _wgslsmith_mod_vec2_i32(~vec2<i32>(reverseBits(var_1.a.x), firstTrailingBit(-1i)), vec2<i32>(u_input.b.x ^ -global0.b.a.x, ~(-19652i) >> (global0.b.b.x % 32u))), _wgslsmith_div_vec4_f32(var_0.c, var_0.c), global0.a, ~(countOneBits(vec4<u32>(0u, 30047u, 4294967295u, 1u)) >> (global0.c % vec4<u32>(32u))));
    var_0 = Struct_3(select(vec4<bool>(true, var_2.a.x, any(var_2.a.xyz), true), var_0.a, select(select(!var_0.a, !var_0.a, var_0.a), var_0.a, vec4<bool>(false, select(false, false, false), true, var_0.a.x))), abs(abs(_wgslsmith_clamp_vec2_i32(~var_0.b, ~vec2<i32>(1i, -1i), ~global0.b.a))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -382f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2388f, var_0.c.x) - var_2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x * var_0.c.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.c.x)))))), ~_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(global0.c.x, 4294967295u), _wgslsmith_div_u32(1u >> (1u % 32u), 1u), 81456u), select(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.e.x, var_0.e.x, 0u, 19437u), var_0.e) ^ ~vec4<u32>(var_0.e.x, var_2.e.x, var_2.d, global0.a), ~var_0.e, vec4<bool>(false || var_0.a.x, true | var_2.a.x, _wgslsmith_div_f32(451f, var_2.c.x) >= var_0.c.x, (1i >> (global0.a % 32u)) <= -1i)));
    let var_3 = global0.b;
    return var_0.a.x;
}

fn func_2(arg_0: vec2<i32>) -> bool {
    global1 = true;
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_div_f32(-1312f, _wgslsmith_f_op_f32(f32(-1f) * -1459f)))), -417f);
    var var_1 = func_3();
    let var_2 = reverseBits(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a >> (global0.c % vec4<u32>(32u)), -u_input.a), _wgslsmith_sub_i32(~0i, -global0.b.a.x), _wgslsmith_sub_i32(-(i32(-1i) * -6368i), -19983i), 66645i));
    let var_3 = vec3<f32>(var_0.x, var_0.x, -525f);
    return all(select(select(vec2<bool>(true, select(false, false, true)), vec2<bool>(true, true), countOneBits(global0.b.b.x) > 1u), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), any(vec4<bool>(true, false, false, true)))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(false, true)), ~arg_0.x >= 4360i)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: Struct_3) -> vec3<f32> {
    let var_0 = firstLeadingBit(global0.b.a.x);
    var var_1 = Struct_2(global0.c.x, global0.b, ~arg_3.e);
    var var_2 = Struct_1(firstTrailingBit(firstLeadingBit(-(~u_input.a.wz))), var_1.c);
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.c.zyy * arg_3.c.yzx))));
}

fn func_5(arg_0: vec3<f32>) -> vec4<bool> {
    global0 = Struct_2(global0.a, global0.b, abs(vec4<u32>(70831u, 33467u, global0.c.x, countOneBits(global0.c.x | 33479u))));
    global1 = !(func_2(-(~vec2<i32>(6672i, 4547i))) || true);
    var var_0 = vec4<bool>(true, true, true, true);
    return !select(select(select(select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false), true), select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(false, true, true, var_0.x)), false), !vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(true, true, !var_0.x, true)), vec4<bool>(true && all(var_0.ww), !var_0.x || (global0.a <= 17369u), var_0.x, var_0.x), true);
}

fn func_1() -> u32 {
    var var_0 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1023f, -1214f)), vec4<bool>(all(vec3<bool>(false, false, false)), func_2(vec2<i32>(u_input.b.x, -1i)), all(vec3<bool>(true, true, false)), true), Struct_3(vec4<bool>(true, true, false, true), -global0.b.a, vec4<f32>(-1000f, 376f, 884f, 1390f), global0.c.x, global0.b.b))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-444f, -627f, 1106f) - _wgslsmith_f_op_vec3_f32(func_4(select(vec2<bool>(false, false), vec2<bool>(true, true), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1779f, -1000f, 652f)), vec4<bool>(false, false, false, true), Struct_3(vec4<bool>(false, false, false, true), u_input.a.yx, vec4<f32>(1415f, 944f, 1000f, -504f), global0.c.x, global0.b.b))))));
    let var_1 = u_input.a;
    var var_2 = Struct_2(max(global0.c.x, global0.b.b.x | ~(~global0.b.b.x)), global0.b, _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(10043u, global0.c.x, global0.c.x, 4294967295u), countOneBits(global0.c)), ~global0.b.b) << (vec4<u32>(1u, min(_wgslsmith_dot_vec2_u32(global0.c.yy, global0.c.zy), global0.b.b.x), ~abs(global0.b.b.x), abs(1u)) % vec4<u32>(32u)));
    var var_3 = Struct_3(select(!(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, false, true))), vec4<bool>(all(var_0.zy), var_0.x, u_input.b.x != _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b.a.x, -86097i), var_1.ww), !(!var_0.x)), !(!var_0.x)), _wgslsmith_mult_vec2_i32(var_1.xx, ~u_input.b.xz), vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-409f)), _wgslsmith_f_op_f32(482f + 324f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-921f)) + -157f)), _wgslsmith_div_f32(-976f, 1542f), -475f), ~(~(~1u) | firstLeadingBit(~var_2.c.x)), var_2.c);
    let var_4 = func_5(_wgslsmith_f_op_vec3_f32(-var_3.c.wzx)).zz;
    return 23123u;
}

fn func_6(arg_0: u32) -> Struct_2 {
    global1 = select(func_3(), true, true);
    global1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-304i, global0.b.a.x, 1i & u_input.a.x), vec3<i32>(-(~u_input.a.x), global0.b.a.x, 1i)) >= (-(u_input.b.x ^ (1i | u_input.b.x)) >> (_wgslsmith_mult_u32(36452u, 1u) % 32u));
    global1 = func_2(firstTrailingBit(vec2<i32>(u_input.a.x, -16410i)));
    var var_0 = !(!vec4<bool>(true, any(vec2<bool>(true, true)), !any(vec2<bool>(true, false)), true));
    var var_1 = vec4<u32>(global0.a, ~(firstTrailingBit(global0.c.x) & _wgslsmith_mult_u32(~arg_0, arg_0)), global0.a, 0u);
    return Struct_2(~1u, global0.b, vec4<u32>(4294967295u, global0.b.b.x, 47077u, ~global0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -u_input.a.x;
    global0 = func_6(func_1());
    let var_1 = global0.b.b.yy;
    let var_2 = func_6(countOneBits(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(0u, 4294967295u, global0.a), ~firstLeadingBit(var_1.x)))).b;
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1096f, _wgslsmith_f_op_f32(-1531f * 243f), 10335i <= u_input.b.x)), -1857f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(560f)))), 1f));
    var var_4 = ~_wgslsmith_sub_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(2026i, u_input.b.x, 2147483647i, 2147483647i)), -var_2.a.x, u_input.b.x), -_wgslsmith_clamp_vec3_i32(u_input.b, u_input.b, u_input.b));
    let var_5 = Struct_3(select(vec4<bool>(true & select(false, true, false), true, _wgslsmith_f_op_f32(floor(1140f)) <= _wgslsmith_f_op_f32(select(-941f, -184f, true)), true), !func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-500f, -1715f, 1000f) - vec3<f32>(102f, 1114f, 1284f))), vec4<bool>(func_2(var_4.xx), select(false, true, true), true, true)), select(var_2.a, _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(~u_input.b.zy, reverseBits(u_input.a.ww), -global0.b.a), _wgslsmith_sub_vec2_i32(~vec2<i32>(var_2.a.x, u_input.a.x), ~vec2<i32>(-1837i, var_4.x))), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2720f, -179f, 1173f, -2174f), vec4<f32>(648f, 774f, 622f, 291f), vec4<bool>(true, false, true, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-551f, 817f, 1962f, -536f) - vec4<f32>(628f, -268f, 508f, 1571f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -331f, 1054f, -1818f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(268f, -186f, 402f, 1000f))))), global0.a, _wgslsmith_mod_vec4_u32(min(vec4<u32>(var_2.b.x, 12392u, 0u, 4294967295u) ^ vec4<u32>(1u, global0.a, 26875u, 0u), global0.c), global0.b.b) & min(~(~vec4<u32>(global0.a, 0u, var_2.b.x, 37824u)), var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(100802u, -u_input.a, -439f, var_5.c.x, -2147483647i);
}

