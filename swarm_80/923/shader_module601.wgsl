struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = vec3<i32>(-53423i, -2147483647i, -(~(-abs(u_input.d))));
    var var_1 = 1987u;
    var var_2 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1110f)) - 148f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 247f)), 1068f), select(select(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), true), vec3<bool>(true, true, global0.x), 1i >= u_input.d), vec3<bool>(true, true, true), true), select(true, true, true), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1092f)) - _wgslsmith_f_op_f32(-1096f * 1000f)), -984f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(2176f, -451f) - 596f), -748f)), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-547f, 319f, 2179f) + vec3<f32>(-444f, 1058f, -333f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1066f, 109f, 947f))), vec3<f32>(_wgslsmith_f_op_f32(floor(1033f)), -927f, _wgslsmith_f_op_f32(min(782f, 801f))), !(!vec3<bool>(global0.x, false, global0.x)))), select(!(!vec3<bool>(true, global0.x, true)), !vec3<bool>(global0.x, global0.x, global0.x), global0.x), global0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(634f)), _wgslsmith_f_op_f32(abs(-190f)), _wgslsmith_f_op_f32(select(-266f, 1001f, false)), _wgslsmith_f_op_f32(step(-939f, -165f))))));
    let var_3 = vec2<bool>(true, true);
    var_1 = abs(firstLeadingBit(u_input.a));
    return !var_2.b.c;
}

fn func_4(arg_0: bool, arg_1: i32) -> u32 {
    var var_0 = ~u_input.c.x;
    var var_1 = select(vec4<i32>(abs(_wgslsmith_sub_i32(~u_input.b.x, arg_1 >> (1u % 32u))), _wgslsmith_add_i32(u_input.d, ~select(u_input.c.x, arg_1, false)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(select(u_input.b, vec3<i32>(12535i, u_input.c.x, arg_1), global0.x), _wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(u_input.d, u_input.d, u_input.c.x))), _wgslsmith_sub_i32(u_input.c.x, u_input.b.x >> (u_input.a % 32u))), arg_1 | -25156i), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 7648i, -2147483647i, u_input.b.x), vec4<i32>(u_input.c.x, arg_1, 19603i, arg_1)), vec4<i32>(u_input.c.x, 25840i, u_input.d, 10961i) | vec4<i32>(arg_1, -7880i, 1i, u_input.b.x)), -firstTrailingBit(vec4<i32>(arg_1, arg_1, 27845i, u_input.c.x))) >> (max(select(firstLeadingBit(vec4<u32>(u_input.a, 41334u, u_input.e, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.e, 0u, 9732u), vec4<u32>(u_input.e, 1u, 4294967295u, 0u)), vec4<bool>(true, arg_0, false, false)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, 23306u, 4294967295u, 69860u), vec4<u32>(4294967295u, u_input.e, 1u, 76783u) << (vec4<u32>(u_input.e, u_input.a, u_input.e, u_input.a) % vec4<u32>(32u)))) % vec4<u32>(32u)), global0.x);
    let var_2 = firstTrailingBit(0u);
    let var_3 = vec4<i32>(45706i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(countOneBits(0i), u_input.b.x), -13132i, -1i, _wgslsmith_add_i32(-1i, 2147483647i)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 2147483647i, 1066i, u_input.d), countOneBits(vec4<i32>(2147483647i, -23845i, 0i, arg_1)), vec4<i32>(44946i, u_input.b.x, 2147483647i, 1i) ^ vec4<i32>(u_input.d, u_input.d, -2147483647i, 2147483647i))), 31615i, 0i);
    var var_4 = vec3<u32>(firstLeadingBit(~(var_2 >> (~41671u % 32u))), max(55168u, _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.a, u_input.e, u_input.a, var_2)), ~vec4<u32>(var_2, var_2, 14922u, 4294967295u))), 2369u);
    return firstLeadingBit(0u);
}

fn func_2(arg_0: f32) -> vec3<f32> {
    var var_0 = vec3<u32>(~u_input.a, _wgslsmith_mod_u32(u_input.e, 0u) >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a, 1u, u_input.e), vec3<u32>(37674u, u_input.a, 0u), vec3<bool>(true, false, true)), ~vec3<u32>(0u, u_input.e, 4294967295u)), 76904u, 83932u) % 32u), abs(~u_input.a));
    global0 = vec2<bool>(false, !(-_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.d), vec2<i32>(77102i, u_input.b.x)) >= -1i));
    var_0 = vec3<u32>(~_wgslsmith_div_u32(u_input.e, u_input.e) << (4294967295u % 32u), u_input.a, 1u);
    var_0 = vec3<u32>(var_0.x, abs(countOneBits(u_input.e)), _wgslsmith_mod_u32(countOneBits(abs(_wgslsmith_mod_u32(0u, var_0.x))), func_4(func_3(), u_input.c.x)));
    var var_1 = 1u;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) + _wgslsmith_f_op_f32(min(arg_0, -609f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-400f, arg_0)), _wgslsmith_f_op_f32(sign(398f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-981f, 2490f, arg_0) - vec3<f32>(368f, -1000f, 950f)))))));
}

fn func_1() -> f32 {
    let var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-2166f, -389f))))));
    var var_2 = ~(~abs(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, u_input.a, 1u), vec3<u32>(12606u, 0u, 0u))));
    var var_3 = max(0u, ~reverseBits(0u));
    let var_4 = u_input.e;
    return 483f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-405f))))), -1046f, -1145f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-443f * -128f), _wgslsmith_f_op_f32(floor(-444f)), -553f) - vec3<f32>(_wgslsmith_f_op_f32(func_1()), -299f, -842f))))));
    let var_1 = var_0.x;
    var var_2 = vec3<bool>(true, true && (false != !global0.x), global0.x);
    var_2 = !select(vec3<bool>(false, all(vec2<bool>(true, global0.x)) | true, _wgslsmith_f_op_vec3_f32(func_2(820f)).x < -1691f), select(vec3<bool>(any(vec3<bool>(true, true, false)), false, global0.x), !(!vec3<bool>(false, true, global0.x)), select(!var_2.x, all(vec3<bool>(var_2.x, true, global0.x)), true)), !all(vec4<bool>(false, var_2.x, true, true)));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1668f);
    var_2 = select(vec3<bool>(var_2.x, true, !select(true, var_2.x, all(vec4<bool>(true, false, global0.x, false)))), select(!select(select(vec3<bool>(global0.x, var_2.x, true), vec3<bool>(var_2.x, global0.x, var_2.x), false), vec3<bool>(var_2.x, true, true), true), vec3<bool>(false, false, true), all(!(!vec3<bool>(var_2.x, false, var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-314f))) > _wgslsmith_f_op_f32(exp2(var_0.x)));
    var var_4 = 12192u;
    let x = u_input.a;
    s_output = StorageBuffer(-2188f, firstTrailingBit(~abs(~vec2<u32>(35362u, 49540u))));
}

