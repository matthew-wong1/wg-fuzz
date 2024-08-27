struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, 107767u, vec2<u32>(4294967295u, 91465u), -476f, 1000f);

var<private> global1: Struct_2 = Struct_2(Struct_1(1u, 0u, vec2<u32>(1u, 1u), 193f, -1588f), Struct_1(32590u, 27567u, vec2<u32>(4819u, 62092u), -1627f, 1000f), vec4<f32>(-425f, 355f, -378f, -143f), vec2<i32>(i32(-2147483648), 18428i), vec3<f32>(1082f, -1271f, 1210f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: f32) -> vec4<bool> {
    var var_0 = arg_2.b;
    var var_1 = Struct_3(arg_2, Struct_2(Struct_1(~(arg_2.a.a ^ 4294967295u), 1u, vec2<u32>(_wgslsmith_mod_u32(global0.c.x, 1u), firstTrailingBit(1u)), arg_3, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global0.e))))), global1.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(799f, arg_2.e.x, arg_1.x, arg_1.x))), global1.c)), global1.d, _wgslsmith_f_op_vec3_f32(floor(arg_1))), global1.d, arg_2.b, arg_2);
    var var_2 = var_1.b;
    let var_3 = (true && (all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), false)) & (all(vec3<bool>(false, true, false)) && any(vec2<bool>(false, true))))) || false;
    global0 = Struct_1(abs(global0.a), 1u, select(abs(_wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_2.a.c.x) & global0.c, firstLeadingBit(vec2<u32>(var_2.b.a, 4294967295u)))), vec2<u32>(~_wgslsmith_add_u32(47243u, var_1.d.b), countOneBits(global1.a.a)), vec2<bool>(var_3, !(arg_2.d.x == -1i))), global0.d, arg_2.c.x);
    return vec4<bool>(var_3, !(-789f >= global1.b.e), !((-683f < _wgslsmith_f_op_f32(arg_1.x + global0.d)) && var_3), true);
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = -46813i;
    let var_1 = !select(!select(!vec4<bool>(arg_2.x, true, true, true), !vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), !vec4<bool>(true, false, false, arg_2.x)), func_3(_wgslsmith_f_op_vec4_f32(global1.c - _wgslsmith_f_op_vec4_f32(global1.c - global1.c)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global1.c.xyw), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1607f, arg_1.x, 1035f)))), Struct_2(Struct_1(24035u, 4294967295u, global0.c, -233f, global1.a.e), global1.b, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1382f, global0.e, -696f, arg_1.x), vec4<f32>(global0.e, arg_1.x, -653f, global0.d))), select(vec2<i32>(u_input.d.x, -21988i), vec2<i32>(global1.d.x, global1.d.x), false), _wgslsmith_f_op_vec3_f32(-global1.e)), 100f), vec4<bool>(false, true, !arg_2.x, any(vec2<bool>(false, arg_2.x))));
    let var_2 = var_1;
    let var_3 = Struct_3(Struct_2(Struct_1(1u, 4294967295u, vec2<u32>(global1.a.b, countOneBits(u_input.a)), _wgslsmith_f_op_f32(trunc(-437f)), global0.d), global1.b, _wgslsmith_f_op_vec4_f32(min(global1.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e, global1.e.x, global0.e, global1.e.x)))), vec2<i32>(~reverseBits(-35985i), 0i), vec3<f32>(-389f, _wgslsmith_f_op_f32(global1.a.e - -849f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-490f, 145f))))), Struct_2(Struct_1(global0.a, ~0u, ~firstLeadingBit(vec2<u32>(4294967295u, 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e + 788f) + _wgslsmith_f_op_f32(f32(-1f) * -2166f)), global0.d), global1.b, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-410f, -511f, arg_1.x, global1.a.d))), vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1.x)), -790f, 1656f, _wgslsmith_f_op_f32(-1809f * arg_1.x)))), vec2<i32>(1i, -2147483647i), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_1)))), vec2<i32>(2147483647i, u_input.d.x), Struct_1(~65068u, 24030u, countOneBits(vec2<u32>(0u, ~1u)), global1.a.d, _wgslsmith_div_f32(-2041f, _wgslsmith_f_op_f32(-global1.c.x))), Struct_2(Struct_1(arg_0, global1.b.b, ~(~global0.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global0.d)), _wgslsmith_f_op_f32(1904f * global1.b.d))), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(step(global0.d, -1865f)))), Struct_1(_wgslsmith_dot_vec3_u32(u_input.b << (u_input.b % vec3<u32>(32u)), u_input.b), global1.b.c.x, abs(vec2<u32>(0u, u_input.e)), _wgslsmith_f_op_f32(max(366f, _wgslsmith_f_op_f32(round(442f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(234f * arg_1.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, -691f, arg_1.x, -111f))))), u_input.d.wx | global1.d, _wgslsmith_f_op_vec3_f32(-arg_1)));
    global0 = global1.a;
    return global1.a;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = -firstLeadingBit(u_input.c.wxz);
    let var_1 = global0.a;
    var var_2 = u_input.c;
    var_2 = u_input.d;
    var_2 = u_input.c;
    return func_2(reverseBits(abs(global1.b.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global1.e, vec3<f32>(global0.e, global1.c.x, _wgslsmith_f_op_f32(min(581f, 551f)))))), vec3<bool>(arg_0.x, true, !arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.a;
    global0 = func_1(vec4<bool>(false, false, -2147483647i == (global1.d.x | ~u_input.d.x), true & all(vec4<bool>(true, false, true, false))));
    global1 = Struct_2(Struct_1(firstTrailingBit(28009u), ~52964u, ~global0.c, _wgslsmith_f_op_f32(f32(-1f) * -196f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e))), func_2(_wgslsmith_mult_u32(min(~global1.b.b, 47262u), ~(~0u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global1.e, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(586f, global0.d, global0.e))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.x, -884f, global0.d))), vec3<bool>(false, true, all(vec4<bool>(true, true, true, true)))), global1.c, min(vec2<i32>(10341i, 2147483647i), vec2<i32>(u_input.d.x, select(u_input.d.x, global1.d.x, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.e, _wgslsmith_f_op_vec3_f32(max(global1.c.zzz, vec3<f32>(global1.c.x, global0.e, 231f))), any(vec4<bool>(false, false, false, true))))) - _wgslsmith_f_op_vec3_f32(ceil(global1.e))));
    var var_0 = Struct_3(Struct_2(Struct_1(0u, countOneBits(~global1.b.b), ~u_input.b.zx & ~vec2<u32>(5913u, global1.a.a), global0.d, _wgslsmith_f_op_f32(304f - 573f)), Struct_1(_wgslsmith_sub_u32(firstTrailingBit(global1.b.c.x), u_input.b.x & 14774u), 6339u, countOneBits(vec2<u32>(u_input.a, u_input.e)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1212f - global0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x - global1.b.e))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.c + _wgslsmith_f_op_vec4_f32(vec4<f32>(475f, -569f, global0.e, global0.e) - global1.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1101f, global0.e, 1890f))), ~vec2<i32>(reverseBits(12752i), select(0i, u_input.d.x, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.e))), Struct_2(Struct_1(firstTrailingBit(u_input.a), ~21188u, global0.c, global0.e, global0.e), Struct_1(14439u, (u_input.b.x << (83276u % 32u)) >> (global0.c.x % 32u), min(vec2<u32>(global1.b.c.x, 0u), global1.a.c) ^ vec2<u32>(1u, global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-531f * -210f)), global1.a.d), vec4<f32>(_wgslsmith_f_op_f32(1729f - -1013f), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -702f))), global0.e), global1.d, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1176f), _wgslsmith_f_op_f32(abs(global1.a.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-352f, global1.e.x)) * _wgslsmith_f_op_f32(-global1.b.e)), -1168f)), select(select(reverseBits(max(u_input.c.zy, vec2<i32>(u_input.c.x, 3963i))), -select(vec2<i32>(13613i, u_input.c.x), vec2<i32>(global1.d.x, u_input.c.x), vec2<bool>(true, true)), !any(vec4<bool>(true, false, false, false))), select(-global1.d, global1.d >> (vec2<u32>(u_input.a, global0.b) % vec2<u32>(32u)), true) ^ vec2<i32>(0i, _wgslsmith_dot_vec3_i32(u_input.d.zyx, vec3<i32>(-43015i, global1.d.x, u_input.c.x))), vec2<bool>(true, true)), func_1(vec4<bool>(true, all(func_3(vec4<f32>(-303f, global1.a.e, 1300f, 777f), vec3<f32>(global1.c.x, 865f, global1.a.d), Struct_2(global1.a, global1.b, global1.c, u_input.d.xw, global1.c.xzy), 170f).xw), _wgslsmith_f_op_f32(global1.b.e + global1.b.d) == global0.e, select(true, true, global1.d.x < global1.d.x))), Struct_2(Struct_1(u_input.a, ~(~u_input.e), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.b, 24460u, u_input.e), u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(37426u, 27297u, global0.b, u_input.e), vec4<u32>(u_input.e, global1.b.c.x, u_input.e, 6562u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -895f)), global0.e), global1.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(777f, 652f, 1000f, global0.d))), _wgslsmith_f_op_vec4_f32(vec4<f32>(129f, -1382f, -463f, global1.e.x) - _wgslsmith_f_op_vec4_f32(floor(global1.c))))), firstLeadingBit(vec2<i32>(u_input.c.x ^ -34228i, -global1.d.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c.zxy)))));
    var_0 = Struct_3(var_0.e, Struct_2(func_2(firstTrailingBit(4294967295u) ^ u_input.a, _wgslsmith_f_op_vec3_f32(round(global1.e)), vec3<bool>(true, true, any(vec4<bool>(true, true, true, true)))), func_2(~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4294967295u, 4294967295u, 4294967295u)), var_0.b.e, vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.d, 1000f, 916f, var_0.e.e.x) + vec4<f32>(248f, -425f, global1.c.x, global1.a.d))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1305f, -4139f, 246f, -1945f)), var_0.b.c, true)), false)), max(select(select(u_input.c.xx, vec2<i32>(u_input.c.x, 24353i), false), vec2<i32>(1i, global1.d.x), vec2<bool>(true, true)), -var_0.c), _wgslsmith_f_op_vec3_f32(var_0.a.c.zww * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e, -552f, var_0.e.c.x) - global1.c.ywx))), vec2<i32>(var_0.e.d.x, abs(u_input.d.x)), func_2(1u, global1.e, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), Struct_2(Struct_1(1u, reverseBits(~40418u), _wgslsmith_mult_vec2_u32(global1.a.c, ~global0.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.e.x), var_0.a.a.e), -1000f), func_2(~firstTrailingBit(0u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.e) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 796f, -173f) + vec3<f32>(-411f, 212f, -793f))), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1629f, var_0.d.e), _wgslsmith_div_f32(global1.e.x, global1.b.d), -599f, _wgslsmith_f_op_f32(-global0.d))), vec2<i32>(-_wgslsmith_dot_vec2_i32(var_0.c, u_input.d.xw), ~1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1378f, 249f, -938f)))) + var_0.b.e)));
    var var_1 = _wgslsmith_dot_vec4_i32(u_input.c, -_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(1i, u_input.d.x, 12029i, global1.d.x)), vec4<i32>(~var_0.a.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-30236i, u_input.d.x, -21941i), vec3<i32>(0i, global1.d.x, 1i)), global1.d.x, ~var_0.a.d.x)));
    let var_2 = global1.a.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_0.a.e), reverseBits(vec2<i32>(u_input.c.x | -4190i, -global1.d.x) ^ min(abs(global1.d), ~vec2<i32>(var_0.a.d.x, -3844i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-292f, _wgslsmith_f_op_f32(ceil(-1706f))) + var_0.e.e.zy) + var_0.e.e.yy), firstTrailingBit(_wgslsmith_sub_i32(1i, 1i)));
}

