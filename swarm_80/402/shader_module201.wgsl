struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec4<f32>, arg_3: vec2<bool>) -> u32 {
    var var_0 = vec4<i32>(-30456i, 1i, ~_wgslsmith_sub_i32(_wgslsmith_mult_i32(59i, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-36669i, -1i, 34700i), vec3<i32>(0i, 1i, -1i))) << (4294967295u % 32u), firstLeadingBit(-2816i));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1717f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_div_f32(1789f, 397f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + arg_2.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))))), -1378f);
    var_0 = vec4<i32>(~var_0.x, abs(~var_0.x) & (i32(-1i) * -1i), -1i, -1i);
    return ~9852u;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = vec4<u32>(~_wgslsmith_dot_vec2_u32(~(~u_input.d.wz), vec2<u32>(~u_input.c, 38235u)), 1u, 20014u, 114130u);
    let var_1 = Struct_3(vec2<i32>(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(36195i, -2147483647i)), countOneBits(vec2<i32>(0i, -56245i)) ^ select(vec2<i32>(487i, 9699i), vec2<i32>(-1i, -1i), false)), reverseBits(firstTrailingBit(_wgslsmith_mod_i32(-1i, -1i)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1334f * 423f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1041f - -1211f), -433f))), var_0.x, vec4<u32>(firstTrailingBit(1949u), 4294967295u, 1u, func_3(var_0.x, u_input.d.x, vec4<f32>(527f, 693f, 541f, 2013f), vec2<bool>(arg_0, true))) | var_0, _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.d << (u_input.d % vec4<u32>(32u)), select(vec4<u32>(u_input.b.x, 24573u, 1u, 69398u), vec4<u32>(u_input.d.x, u_input.a, var_0.x, var_0.x), vec4<bool>(arg_0, arg_0, arg_0, false))), firstLeadingBit(var_0)), !(!select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, true, arg_0), false))), Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(470f, 1000f), -581f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-448f, 765f) + vec2<f32>(-403f, -612f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(466f, 501f))))), 1491u & var_0.x, u_input.d, firstLeadingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, var_0.x, 12032u), var_0), select(vec4<u32>(u_input.b.x, u_input.d.x, 4294967295u, 1522u), vec4<u32>(var_0.x, 56387u, u_input.c, 16659u), false), abs(var_0))), select(!vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(!arg_0, all(vec2<bool>(false, arg_0)), true), arg_0 || !arg_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-887f, 504f, -441f) + vec3<f32>(1000f, 185f, 1000f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-383f, 925f, -690f))))));
    return Struct_1(vec2<f32>(var_1.e.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(314f, var_1.d.a.x)))), ~(~var_1.d.b) >> (~58223u % 32u), u_input.d, select(~var_1.c.d, _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.d.x, 7253u, var_0.x, 0u), ~firstLeadingBit(vec4<u32>(var_0.x, u_input.d.x, var_0.x, u_input.b.x))), !var_1.c.e.x), select(!select(select(vec3<bool>(arg_0, true, arg_0), var_1.d.e, true), vec3<bool>(false, arg_0, var_1.c.e.x), select(vec3<bool>(var_1.c.e.x, true, false), vec3<bool>(true, false, false), var_1.c.e.x)), select(select(!vec3<bool>(true, var_1.d.e.x, var_1.c.e.x), vec3<bool>(false, arg_0, var_1.d.e.x), select(vec3<bool>(arg_0, false, true), vec3<bool>(var_1.d.e.x, true, var_1.c.e.x), vec3<bool>(var_1.c.e.x, false, true))), !(!vec3<bool>(var_1.c.e.x, true, false)), !var_1.c.e.x), select(_wgslsmith_f_op_f32(512f * -799f) > _wgslsmith_f_op_f32(var_1.c.a.x - -989f), true, arg_0)));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = all(select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(false, false, any(vec4<bool>(false, false, true, true))), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    var_0 = !(!all(vec2<bool>(true, true))) || true;
    var_0 = true;
    let var_1 = func_2(~firstTrailingBit(i32(-1i) * -2147483647i) != -1i);
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-242f * _wgslsmith_f_op_f32(f32(-1f) * -142f)) - -4119f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.x, var_1.a.x, var_1.e.x)), var_1.a.x) + 1132f), all(select(select(var_1.e, vec3<bool>(false, true, var_1.e.x), var_1.e.x), var_1.e, !vec3<bool>(var_1.e.x, true, var_1.e.x))))) >= arg_0.x;
    return func_2(false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<f32>(2441f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(744f - -117f)), _wgslsmith_f_op_f32(f32(-1f) * -1026f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1808f * -125f)), _wgslsmith_f_op_f32(max(-905f, _wgslsmith_f_op_f32(f32(-1f) * -842f)))));
    let var_1 = vec2<u32>(func_3(var_0.d.x, var_0.c.x, vec4<f32>(var_0.a.x, _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-863f - 790f)), var_0.a.x, _wgslsmith_f_op_f32(1359f * var_0.a.x)), !(!var_0.e.zy)), 15234u);
    var var_2 = _wgslsmith_dot_vec4_i32(max(min(vec4<i32>(firstLeadingBit(23420i), 1i, 2147483647i << (var_0.d.x % 32u), _wgslsmith_div_i32(-2625i, 16450i)), -vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(firstTrailingBit(~54959i), min(~(-1i), _wgslsmith_clamp_i32(24537i, -1i, 1i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, 1i), vec3<i32>(0i, 0i, -42318i)), 18501i)), abs(reverseBits(-firstTrailingBit(vec4<i32>(-59831i, -2147483647i, 0i, 2147483647i)))));
    var_2 = abs(countOneBits(-_wgslsmith_sub_i32(17137i, 1i)));
    var var_3 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(28662u, abs(_wgslsmith_mult_u32(32928u, firstLeadingBit(_wgslsmith_div_u32(u_input.c, u_input.d.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, -878f) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0.a)))));
}

