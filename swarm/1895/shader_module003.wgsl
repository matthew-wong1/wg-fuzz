struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = firstTrailingBit(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(abs(u_input.a.x), -3567i, -51883i, arg_0.d ^ arg_0.d)), vec4<i32>(10250i, _wgslsmith_add_i32(countOneBits(-1i), min(u_input.a.x, -1i)), arg_0.d, 0i)));
    let var_1 = firstTrailingBit(-select(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, arg_0.d, u_input.a.x), vec3<i32>(-1i, 2147483647i, 0i)), ~vec3<i32>(0i, 2147483647i, var_0.x), vec3<bool>(false, true, false))) << (~(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.b, arg_0.b.x) << (vec3<u32>(7260u, arg_0.b.x, u_input.b) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(arg_0.b.xxw, arg_0.b.yyz)) >> (arg_0.b.ywx % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_2 = abs(var_0.x);
    var var_3 = -var_1.x;
    var_2 = _wgslsmith_add_i32(var_0.x, -32447i);
    return true;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>) -> vec2<f32> {
    let var_0 = Struct_1(34538i, vec4<u32>(u_input.b, ~(4294967295u | ~u_input.c), firstLeadingBit(0u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(u_input.c, u_input.b) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), vec2<u32>(u_input.c, 4294967295u) << (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u)), vec2<u32>(0u, 0u) & vec2<u32>(u_input.c, 4294967295u)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -525f) * _wgslsmith_f_op_f32(f32(-1f) * -1559f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1033f * -1120f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(620f, 1589f) + _wgslsmith_f_op_f32(f32(-1f) * -138f))), _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(292f)), 107f)))), select(u_input.a.x, -11523i, false), 922f);
    var var_1 = Struct_2(u_input.a.zz ^ (u_input.a.yy | _wgslsmith_div_vec2_i32(min(vec2<i32>(0i, var_0.a), u_input.a.xz), -u_input.a.zy)), -8618i, var_0, var_0);
    let var_2 = vec2<f32>(_wgslsmith_div_f32(var_1.c.e, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.c.e - var_0.e)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_0.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.e + 688f), _wgslsmith_f_op_f32(var_1.d.e - 1464f)))))));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.d.c.x * 1000f), _wgslsmith_f_op_f32(var_2.x + var_1.c.c.x)) + _wgslsmith_f_op_vec2_f32(-var_1.c.c.yz)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1684f, 1289f) * var_1.d.c.zw)), _wgslsmith_div_vec2_f32(var_1.c.c.wx, _wgslsmith_f_op_vec2_f32(round(var_2))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.d.e), var_1.c.e) - _wgslsmith_f_op_vec2_f32(ceil(var_1.c.c.xy))))));
    var var_4 = Struct_1(var_1.b, var_0.b, vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(-691f, _wgslsmith_f_op_f32(var_3.x - 1063f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x))), -1081f, _wgslsmith_f_op_f32(var_0.e - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -579f), _wgslsmith_f_op_f32(exp2(var_3.x))))), -54468i ^ _wgslsmith_mult_i32(var_0.d, _wgslsmith_dot_vec2_i32(~u_input.a.yx, u_input.a.xx)), _wgslsmith_f_op_f32(select(-893f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1926f))), !arg_0.x)));
    return var_4.c.xx;
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(true, true, true, false), vec2<bool>(false, false))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-553f, -1287f))))), vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(true, true, true, true), vec2<bool>(true, true))).x, -706f))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_div_f32(125f, _wgslsmith_div_f32(var_0.x, var_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(328f - -209f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(167f, -1243f, var_0.x) - vec3<f32>(-1000f, var_0.x, -1200f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 479f, var_0.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-281f, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1009f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), 860f) * vec3<f32>(-972f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1457f)))), var_0.x)));
    var_1 = vec3<f32>(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), 114f)))), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(ceil(var_0.x))));
    var var_2 = _wgslsmith_mod_vec3_i32(countOneBits(max(u_input.a, u_input.a)), (~vec3<i32>(0i, 0i, arg_0) & select(reverseBits(u_input.a), vec3<i32>(arg_0, 60478i, arg_0), false)) ^ vec3<i32>(-59582i, -(i32(-1i) * -2147483647i), 2147483647i));
    var_2 = ((select(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.x, 0i, arg_0), u_input.a, u_input.a), vec3<i32>(2147483647i, var_2.x, u_input.a.x), vec3<bool>(true, true, true)) << (abs(~vec3<u32>(u_input.b, u_input.b, u_input.c)) % vec3<u32>(32u))) >> (vec3<u32>(u_input.c, 48511u, 39927u) % vec3<u32>(32u))) & (((u_input.a << (vec3<u32>(60034u, u_input.b, 19252u) % vec3<u32>(32u))) | vec3<i32>(1i, i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-39516i, arg_0, u_input.a.x, 36336i), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -30100i)))) >> (_wgslsmith_add_vec3_u32(vec3<u32>(35040u, u_input.b, ~u_input.b), abs(vec3<u32>(u_input.c, u_input.c, u_input.c) << (vec3<u32>(u_input.b, 0u, u_input.b) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), false)), select(vec4<bool>(func_1(Struct_1(u_input.a.x, vec4<u32>(9205u, u_input.c, u_input.b, u_input.c), vec4<f32>(357f, -1116f, 613f, -1068f), u_input.a.x, -1226f)), true, true, all(vec2<bool>(true, true))), vec4<bool>(true, true, true, 0i < u_input.a.x), true), vec4<bool>(false, all(vec2<bool>(true, false)), true, func_1(Struct_1(u_input.a.x, vec4<u32>(0u, 4294967295u, 12561u, 8967u), vec4<f32>(-652f, -714f, 275f, -1000f), u_input.a.x, -1334f)))), vec4<bool>(true, false, true, true), true);
    var var_1 = Struct_1(-_wgslsmith_sub_i32(~2434i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(-1i, u_input.a.x) | vec2<i32>(u_input.a.x, -32140i))), vec4<u32>(func_2(u_input.a.x | max(u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.c, 66026u)), vec2<u32>(abs(1u), u_input.c)), abs(1u), max(~(~u_input.b), ~u_input.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(183f, 390f, 2060f, -237f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-255f, 746f, -1000f, -1220f))))), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-440f * -638f)) * _wgslsmith_f_op_f32(step(-729f, -474f)))));
    let var_2 = -1i;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -414f);
    let var_4 = Struct_2(~vec2<i32>(var_1.a, ~(~u_input.a.x)), abs(var_2), Struct_1(6806i, ~select(firstLeadingBit(vec4<u32>(u_input.c, u_input.c, var_1.b.x, u_input.c)), vec4<u32>(var_1.b.x, 1u, 60771u, 4294967295u) | var_1.b, var_0.x), vec4<f32>(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(step(var_3, _wgslsmith_f_op_f32(var_1.e + 811f))), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(144f - var_3)))), u_input.a.x, var_1.c.x), Struct_1(var_2, _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(23098u, 0u, 26889u, 12386u), vec4<u32>(28342u, 1u, 16555u, 0u), vec4<u32>(36538u, var_1.b.x, var_1.b.x, u_input.c)) << (~var_1.b % vec4<u32>(32u)), abs(vec4<u32>(u_input.b, 0u, 3197u, var_1.b.x) >> (var_1.b % vec4<u32>(32u)))), var_1.c, var_2, -764f));
    let var_5 = max(2147483647i, var_4.d.a);
    let var_6 = var_3;
    var_0 = select(vec4<bool>(var_0.x, true, var_0.x, false), !select(select(vec4<bool>(true, false, var_0.x, true), !vec4<bool>(true, false, var_0.x, var_0.x), var_0.x), vec4<bool>(all(vec3<bool>(false, true, false)), true, var_0.x, any(vec4<bool>(var_0.x, var_0.x, false, true))), !vec4<bool>(false, var_0.x, false, var_0.x)), var_0.x);
    let var_7 = 25277u;
    let x = u_input.a;
    s_output = StorageBuffer(~2679u, u_input.a << (select(~min(vec3<u32>(var_4.d.b.x, var_1.b.x, 63254u), var_1.b.yyw), countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(var_7, var_4.c.b.x, var_4.d.b.x), vec3<u32>(var_1.b.x, 0u, var_7))), _wgslsmith_f_op_f32(1792f * var_4.d.c.x) >= var_6) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_1.c.yzy))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_4.d.c.zyz - vec3<f32>(-919f, -634f, -1313f)), _wgslsmith_f_op_vec3_f32(max(var_4.d.c.zyx, var_4.c.c.yyx)))) * vec3<f32>(_wgslsmith_f_op_f32(var_1.e * _wgslsmith_f_op_f32(-276f - var_6)), var_4.d.e, var_4.d.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e, -217f, -188f, _wgslsmith_f_op_f32(-var_4.c.e))));
}

