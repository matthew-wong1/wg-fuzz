struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec3<u32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: bool) -> vec3<u32> {
    global1 = vec3<u32>(reverseBits(~(~min(0u, 7721u))), 0u, ~_wgslsmith_add_u32(~4294967295u | firstTrailingBit(global1.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 69441u, 0u, global1.x), vec4<u32>(global1.x, global1.x, global1.x, u_input.c.x))));
    global1 = ~vec3<u32>(_wgslsmith_clamp_u32(2860u, ~global1.x, global1.x), min(u_input.a.x, global1.x) | ~global1.x, 0u) ^ vec3<u32>(u_input.a.x, 4294967295u, 87195u);
    let var_0 = !(!select(!select(vec2<bool>(false, false), vec2<bool>(true, arg_2), false), vec2<bool>(true, true), true));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1f), global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(-1109f, global0.x))), 282f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1286f - global0.x))), Struct_1(abs(-(~vec4<i32>(-2469i, u_input.d, -50683i, 3996i))), !vec3<bool>(2147483647i == u_input.b, select(arg_2, arg_2, var_0.x), u_input.a.x <= u_input.a.x), 38944u, vec4<bool>(arg_2, select(all(vec2<bool>(false, var_0.x)), all(vec4<bool>(true, true, false, true)), true), select(false, var_0.x, var_0.x), false)));
    var var_2 = 62449u;
    return countOneBits(~(~vec3<u32>(1909u, ~var_1.c.c, global1.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: i32, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = countOneBits((i32(-1i) * -10743i) << (arg_3.b.x % 32u));
    var var_1 = arg_1.c;
    var var_2 = _wgslsmith_f_op_vec3_f32(arg_1.a.xyy * vec3<f32>(_wgslsmith_f_op_f32(-1205f + global0.x), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -421f))))));
    let var_3 = Struct_1(countOneBits(reverseBits(arg_1.c.a)) ^ (vec4<i32>(arg_3.a, ~u_input.d, ~arg_3.a, max(u_input.d, u_input.d)) ^ vec4<i32>(var_1.a.x | 15057i, arg_3.a ^ -80285i, _wgslsmith_add_i32(arg_2, 61607i), ~(-2891i))), select(select(select(!vec3<bool>(arg_1.c.b.x, true, false), select(arg_1.c.b, var_1.d.zxz, vec3<bool>(var_1.b.x, var_1.d.x, arg_1.c.b.x)), select(true, arg_1.c.b.x, arg_1.c.b.x)), vec3<bool>(false, !arg_1.c.b.x, all(var_1.d.wyy)), true), vec3<bool>(true, !var_1.b.x | var_1.d.x, select(var_1.b.x, var_1.d.x, false)), var_1.c < firstTrailingBit(1u)), arg_1.c.c, !select(vec4<bool>(1u <= arg_0, true, true, any(vec3<bool>(arg_1.c.d.x, var_1.b.x, false))), arg_1.c.d, true));
    var_0 = abs(_wgslsmith_dot_vec4_i32(firstTrailingBit(arg_1.c.a << (abs(vec4<u32>(1u, arg_0, 4294967295u, arg_0)) % vec4<u32>(32u))), vec4<i32>(arg_2, arg_2, _wgslsmith_sub_i32(0i, 52873i), _wgslsmith_div_i32(arg_1.c.a.x, ~0i))));
    return var_1.b;
}

fn func_2(arg_0: vec4<f32>) -> vec3<bool> {
    global0 = vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1423f * arg_0.x)));
    let var_0 = Struct_1(abs(abs(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, u_input.b, -2147483647i, -16648i), vec4<i32>(u_input.d, -1i, -15599i, u_input.d)))), vec3<bool>(true, true, true), u_input.c.x, !select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(false, false, false, true), true), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), true));
    var var_1 = arg_0.yzy;
    var var_2 = Struct_2(vec4<f32>(360f, -1070f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1308f + _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-639f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) + global0.x))), arg_0.x, var_0);
    var var_3 = vec3<i32>(-26275i, _wgslsmith_add_i32(-2147483647i, 25554i), _wgslsmith_sub_i32(var_2.c.a.x, abs(~20963i)));
    return func_4(0u, Struct_2(arg_0, _wgslsmith_f_op_f32(var_2.a.x - global0.x), Struct_1(vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, var_0.a.x, u_input.d), 2147483647i, 72201i, 2147483647i | u_input.b), vec3<bool>(1i == var_0.a.x, !var_2.c.b.x, any(var_0.d)), 1u, vec4<bool>(!var_0.b.x, var_2.c.b.x, select(var_0.b.x, false, var_0.b.x), true))), -2147483647i, Struct_3(~min(var_0.a.x | 1i, u_input.b), func_3(min(vec4<i32>(2147483647i, var_2.c.a.x, 32494i, 32841i), var_0.a), all(vec2<bool>(var_0.d.x, false)), var_2.c.d.x & var_0.d.x) << (~(vec3<u32>(56642u, global1.x, 0u) >> (vec3<u32>(1u, 1u, 90293u) % vec3<u32>(32u))) % vec3<u32>(32u)), firstLeadingBit(func_3(vec4<i32>(u_input.d, u_input.b, 1i, 0i), true, true).x & ~1u)));
}

fn func_1(arg_0: vec2<i32>) -> vec4<f32> {
    var var_0 = select(func_2(vec4<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(f32(-1f) * -571f)), -1562f, -821f, 1000f)), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -643f), 2929f, _wgslsmith_f_op_f32(f32(-1f) * -512f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1343f, global0.x, global0.x, 492f), vec4<f32>(-1421f, -1451f, -496f, -544f), vec4<bool>(true, false, true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, -597f) + vec4<f32>(global0.x, global0.x, -719f, -219f))))), !any(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true)));
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, 281f, var_0.x)) - _wgslsmith_f_op_f32(floor(global0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-583f, -627f)));
    var var_2 = Struct_3(~firstLeadingBit(-2147483647i), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(39646u, 19985u | global1.x, 0u), vec3<u32>(0u, ~u_input.a.x, min(1u, 4294967295u)), vec3<u32>(u_input.c.x ^ global1.x, func_3(vec4<i32>(-7797i, u_input.b, arg_0.x, u_input.b), var_0.x, var_0.x).x, global1.x)), u_input.c.x);
    var_0 = vec3<bool>(-1i < _wgslsmith_dot_vec2_i32(select(vec2<i32>(var_2.a, var_2.a), arg_0, 17981i == arg_0.x), arg_0), var_0.x, !(!all(vec3<bool>(var_0.x, false, var_0.x))));
    let var_3 = firstTrailingBit(_wgslsmith_mod_i32(select(~(arg_0.x & 14723i), arg_0.x, !all(var_0.zx)), min(-16729i, 0i)));
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1946f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(177f, global0.x)), _wgslsmith_f_op_f32(276f - -320f), _wgslsmith_div_f32(-963f, _wgslsmith_f_op_f32(1128f + global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -981f, -810f, var_1.x)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(776f, -1197f, -649f, 387f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1074f, 1640f))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(-548f)), global0.x)), vec2<f32>(-179f, _wgslsmith_f_op_f32(f32(-1f) * -972f))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec2<i32>(firstLeadingBit(u_input.b), _wgslsmith_div_i32(2147483647i, 98703i)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, -1521f), vec4<f32>(global0.x, 1633f, -142f, global0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.x, 1000f, global0.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-705f, global0.x, -1067f, 180f))))))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(930f + -666f), _wgslsmith_f_op_f32(f32(-1f) * -1009f), 340f)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1(vec2<i32>(50987i, u_input.b))), _wgslsmith_f_op_vec4_f32(max(var_0, vec4<f32>(global0.x, -120f, var_0.x, var_0.x))), vec4<bool>(true, true, true, true)))))), _wgslsmith_f_op_f32(-var_0.x), Struct_1(~vec4<i32>(-17984i >> (global1.x % 32u), 5363i, 0i, i32(-1i) * -2147483647i), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global0.x, 446f, global0.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1068f, -515f, var_0.x, 131f)))), u_input.a.x, vec4<bool>(false, true, true, false)));
    let var_2 = Struct_3(min(countOneBits(_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -54036i), _wgslsmith_div_vec2_i32(var_1.c.a.yx, vec2<i32>(-13479i, -2147483647i)))), var_1.c.a.x), ~max(~(~vec3<u32>(var_1.c.c, 1u, u_input.c.x)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, 15318u, 22565u), vec3<u32>(0u, global1.x, global1.x), vec3<u32>(u_input.a.x, 18308u, 1u))), global1.x);
    global1 = vec3<u32>(u_input.a.x, 17093u, 36341u);
    let x = u_input.a;
    s_output = StorageBuffer(~0u, ~_wgslsmith_add_vec4_u32(select(vec4<u32>(22625u, 21409u, 4294967295u, global1.x), vec4<u32>(var_2.c, 2024u, var_1.c.c, 54680u), vec4<bool>(false, true, true, true)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 33836u, 0u, u_input.c.x), vec4<u32>(6713u, u_input.c.x, u_input.c.x, var_1.c.c))) | _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(global1.x, var_1.c.c, 0u, var_1.c.c)), firstTrailingBit(vec4<u32>(19502u, 4294967295u, 23645u, 0u)) ^ reverseBits(vec4<u32>(var_1.c.c, 0u, var_2.b.x, var_2.c))));
}

