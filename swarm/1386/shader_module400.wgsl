struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32) -> bool {
    var var_0 = _wgslsmith_dot_vec4_u32(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(7466u, u_input.b, u_input.b, 4294967295u), vec4<u32>(1u, u_input.b, 18892u, u_input.b), vec4<u32>(u_input.b, 4294967295u, 1u, u_input.b)) & countOneBits(vec4<u32>(u_input.b, u_input.b, 26693u, u_input.b)), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 16051u, u_input.b, u_input.b), ~vec4<u32>(u_input.b, 1u, u_input.b, 1u))) >> (vec4<u32>(firstLeadingBit(0u), select(1u, firstLeadingBit(u_input.b), u_input.a != u_input.a), 1u, ~(~1u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(abs(u_input.b), u_input.b), ~max(~u_input.b, ~0u), u_input.b, 0u));
    let var_1 = -669f;
    var var_2 = Struct_1(!select(select(select(vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(true, arg_0, true, true), arg_0), vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(true, false, arg_0, true), arg_0)), !vec4<bool>(true, true, arg_0, false), !(!vec4<bool>(false, arg_0, false, true))), abs(vec4<i32>(-1i, -_wgslsmith_mod_i32(-6746i, u_input.a), -15522i, u_input.a)), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b & u_input.b, reverseBits(51103u)), u_input.b), _wgslsmith_dot_vec2_u32(select(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, 0u) ^ vec2<u32>(39909u, u_input.b), vec2<bool>(true, false)), ~vec2<u32>(u_input.b, 1u) >> (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))), -1815f);
    var var_3 = firstLeadingBit(var_2.c);
    var_0 = ~u_input.b;
    return !any(var_2.a.zzw);
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = vec3<bool>(true, arg_0.a.x && true, false);
    let var_1 = Struct_1(select(select(vec4<bool>(false, true, var_0.x, true), arg_0.a, !(!arg_0.a.x)), arg_0.a, select(u_input.b < 44390u, !select(true, true, arg_0.a.x), !func_3(var_0.x, -485f))), -arg_0.b, vec2<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), arg_0.c.x), _wgslsmith_f_op_f32(ceil(arg_0.d)));
    var_0 = select(arg_0.a.zyy, !vec3<bool>(true, arg_0.a.x, arg_0.a.x), all(!vec2<bool>(true, !arg_0.a.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.d, -1244f, _wgslsmith_f_op_f32(round(var_1.d))), vec3<f32>(_wgslsmith_f_op_f32(-1318f + arg_0.d), _wgslsmith_f_op_f32(exp2(arg_0.d)), var_1.d))));
    let var_3 = var_1;
    return select(vec4<bool>(var_1.a.x, !(!all(vec3<bool>(true, false, true))), var_0.x, 27625u > (firstLeadingBit(1u) & arg_0.c.x)), var_1.a, select(false, func_3(any(select(var_0.yx, arg_0.a.yw, vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3.d, var_1.d)) - _wgslsmith_f_op_f32(-arg_0.d))), var_3.a.x || var_0.x));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: f32) -> vec4<f32> {
    let var_0 = Struct_1(select(vec4<bool>(any(func_2(Struct_1(vec4<bool>(false, false, false, arg_0), vec4<i32>(u_input.a, 16423i, u_input.a, 2054i), arg_1.xz, arg_2))), false, arg_0, true), func_2(Struct_1(func_2(Struct_1(vec4<bool>(true, false, arg_0, arg_0), vec4<i32>(2147483647i, u_input.a, 2147483647i, u_input.a), arg_1.zx, arg_2)), max(vec4<i32>(26921i, -14882i, u_input.a, 0i), vec4<i32>(-14529i, 44207i, 53765i, u_input.a)), ~arg_1.yz, _wgslsmith_f_op_f32(620f + -2607f))), !(all(vec2<bool>(arg_0, true)) && false)), _wgslsmith_mod_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), -1i, u_input.a, i32(-1i) * -19952i), select(min(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), vec4<i32>(2147483647i, u_input.a, -24904i, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), arg_0 && arg_0) ^ firstTrailingBit(vec4<i32>(u_input.a, 23822i, u_input.a, 6071i) >> (arg_1 % vec4<u32>(32u)))), _wgslsmith_clamp_vec2_u32(arg_1.zz, vec2<u32>(firstLeadingBit(~65593u), 0u), arg_1.wy & min(~vec2<u32>(u_input.b, u_input.b), ~arg_1.wx)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(743f - _wgslsmith_f_op_f32(min(-367f, _wgslsmith_f_op_f32(-346f * arg_2)))))));
    var var_1 = var_0.b.zx;
    var_1 = countOneBits(~var_0.b.xx);
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~select(var_0.b.wz, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.b.x, u_input.a), vec2<i32>(-1i, -1i), vec2<i32>(-53534i, var_0.b.x)), var_0.a.yy), ~(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(18126i, 1i)) >> (~vec2<u32>(65453u, 35783u) % vec2<u32>(32u)))), abs(~(~vec2<i32>(-21460i, var_0.b.x))));
    var var_3 = any(func_2(Struct_1(func_2(var_0), vec4<i32>(var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, var_2), vec3<i32>(var_2, u_input.a, 2147483647i)), -var_0.b.x, _wgslsmith_div_i32(var_0.b.x, 56864i)), arg_1.xw | var_0.c, _wgslsmith_f_op_f32(round(-179f)))).wxw);
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-115f, var_0.d, arg_2, -1072f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-704f, var_0.d)), 1215f, -636f, _wgslsmith_f_op_f32(max(var_0.d, _wgslsmith_f_op_f32(var_0.d + var_0.d)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1139f, 1385f, arg_2, var_0.d)))) + vec4<f32>(_wgslsmith_div_f32(var_0.d, arg_2), _wgslsmith_f_op_f32(f32(-1f) * -213f), _wgslsmith_f_op_f32(max(-1775f, arg_2)), _wgslsmith_f_op_f32(min(var_0.d, -399f)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(min(1861f, 665f)), _wgslsmith_f_op_f32(var_0.d + arg_2), _wgslsmith_f_op_f32(f32(-1f) * -657f)), vec4<f32>(175f, _wgslsmith_f_op_f32(871f - -1000f), _wgslsmith_f_op_f32(ceil(-1197f)), arg_2), var_0.a))), var_0.b.x < firstTrailingBit(firstTrailingBit(9336i) ^ ~var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(func_1(!all(vec2<bool>(true, true)), vec4<u32>(~_wgslsmith_mult_u32(0u, 4294967295u), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), u_input.b << (u_input.b % 32u)), ~u_input.b, _wgslsmith_add_u32(4294967295u ^ u_input.b, 0u)), -266f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1537f * -1449f), _wgslsmith_f_op_f32(494f * 1100f)))), u_input.a, ~1u, vec4<i32>(-8474i, _wgslsmith_sub_i32(i32(-1i) * -48407i, 0i), u_input.a, -u_input.a));
}

