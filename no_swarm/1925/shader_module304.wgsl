struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<f32>,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>) -> f32 {
    var var_0 = 4294967295u;
    var_0 = _wgslsmith_mod_u32(~u_input.c.x, u_input.c.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-770f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1158f)))))));
    let var_2 = ~(firstLeadingBit(abs(vec4<i32>(u_input.b.x, -36100i, -17405i, -789i))) >> (u_input.c % vec4<u32>(32u)));
    return _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(trunc(637f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> i32 {
    var var_0 = Struct_2(arg_0, arg_2, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1234f, _wgslsmith_f_op_f32(arg_2 * 104f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), arg_2)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -515f), 100f, arg_2) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_2, 324f), arg_2, _wgslsmith_f_op_f32(-1203f - -328f), -161f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-120f, arg_2, arg_2, arg_2), vec4<f32>(arg_2, 925f, arg_2, 1917f), arg_0.b.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1175f, arg_2, -409f, 749f))))));
    var var_1 = Struct_3(u_input.c ^ u_input.c, 0i);
    var_1 = Struct_3(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(var_1.a, vec4<u32>(89808u, 4294967295u, 1u, 0u)), u_input.c), ~u_input.c.x, _wgslsmith_clamp_u32(44811u << (var_1.a.x % 32u), min(var_1.a.x, var_1.a.x), 1u), 0u), var_1.a), select(_wgslsmith_mult_i32(~u_input.a, var_1.b), _wgslsmith_clamp_i32(u_input.b.x, 0i, _wgslsmith_sub_i32(u_input.b.x, 23057i)), any(arg_0.a)) >> (firstLeadingBit(~(~var_1.a.x)) % 32u));
    var var_2 = arg_0.b.x;
    var_1 = Struct_3(~u_input.c, max(max(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-16020i, -11335i, 0i, -2147483647i), vec4<i32>(2147483647i, arg_1, -2147483647i, -1i))), firstLeadingBit(_wgslsmith_sub_i32(1i, var_1.b))), max(var_1.b, arg_1)));
    return i32(-1i) * -arg_1;
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: bool, arg_3: i32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1 * arg_1)));
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var var_2 = any(!vec3<bool>(!(!arg_2), true, firstTrailingBit(4294967295u) == (u_input.c.x >> (6746u % 32u))));
    var var_3 = Struct_3(u_input.c, -max(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(392i, arg_0, 0i), vec3<i32>(20356i, -9504i, u_input.a)), ~arg_3), arg_3));
    let var_4 = ~min(abs(var_3.b), abs(var_3.b));
    return vec4<i32>(_wgslsmith_sub_i32(-_wgslsmith_mod_i32(_wgslsmith_clamp_i32(2147483647i, var_4, arg_3), _wgslsmith_mult_i32(-7906i, arg_0)), -2147483647i), -_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b.x, 2147483647i, arg_0, arg_3) & vec4<i32>(69595i, var_4, arg_3, -31931i), ~vec4<i32>(-2147483647i, 1i, 3774i, 5078i), all(vec4<bool>(arg_2, arg_2, true, arg_2))), abs(vec4<i32>(var_3.b, -22691i, 5997i, u_input.a))), -abs(_wgslsmith_add_i32(-2147483647i, u_input.a)), _wgslsmith_dot_vec2_i32(countOneBits(~firstTrailingBit(vec2<i32>(arg_0, arg_3))), ~(~_wgslsmith_clamp_vec2_i32(u_input.b, vec2<i32>(var_4, arg_0), u_input.b))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> bool {
    var var_0 = 4294967295u;
    let var_1 = select(0i, u_input.b.x << (arg_3 % 32u), arg_0.a.a.x);
    var var_2 = func_4(func_3(arg_2, 0i, arg_0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.x, 665f))), arg_1.c)), !(!all(select(arg_1.a.a.wyy, arg_1.a.a.wwy, arg_1.a.a.zxw))), var_1);
    var_0 = ~(arg_3 << (4294967295u % 32u));
    var_2 = vec4<i32>(var_2.x, u_input.a, ~_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~u_input.b, func_4(-16290i, arg_0.c, false, var_1).ww), ~u_input.b), -2110i);
    return any(arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.yy;
    let var_1 = vec4<i32>(_wgslsmith_clamp_i32(u_input.b.x, firstTrailingBit(select(-230i, -78471i, false) ^ -1i), _wgslsmith_sub_i32(1i, 13960i)), -2147483647i << (_wgslsmith_dot_vec2_u32(reverseBits(var_0), ~var_0 & vec2<u32>(var_0.x, u_input.c.x)) % 32u), u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, 40280i), select(vec4<i32>(-28250i, 1i, 2147483647i, -1i), vec4<i32>(-24831i, -516i, 30494i, u_input.a), true)) & ~(vec4<i32>(1i, 2147483647i, -85559i, 21933i) << (u_input.c % vec4<u32>(32u))), vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a) & min(~vec4<i32>(-2147483647i, 10075i, u_input.b.x, u_input.b.x), vec4<i32>(-1i, -73174i, 2147483647i, u_input.b.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -2533f, _wgslsmith_f_op_f32(func_1(Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(false, true)), var_1.x, vec3<bool>(true, false, false)))))));
    var var_3 = Struct_1(select(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, var_2.x != var_2.x, all(vec2<bool>(true, false)), false), true), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), true), !vec4<bool>(true, var_0.x < 61062u, func_2(Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(true, false)), -457f, var_2.yy, vec4<f32>(var_2.x, 617f, 1000f, var_2.x)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(false, false)), var_2.x, var_2.xx, vec4<f32>(var_2.x, -894f, var_2.x, 1040f)), Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(false, true)), 0u), true)), vec2<bool>(all(vec4<bool>(true, true, true, true)), true));
    var var_4 = Struct_3(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, countOneBits(var_0.x), var_0.x, var_0.x), ~(~vec4<u32>(u_input.c.x, var_0.x, 4575u, 30680u))), max(firstLeadingBit(u_input.b.x), func_3(Struct_1(!var_3.a, !vec2<bool>(var_3.a.x, false)), ~select(0i, var_1.x, true), var_2.x)));
    var var_5 = Struct_3(var_4.a, -(~reverseBits(max(-23373i, var_4.b))));
    let var_6 = vec4<f32>(var_2.x, _wgslsmith_f_op_f32(round(1148f)), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, 401f, var_3.a.x))));
    var var_7 = Struct_3(vec4<u32>(4294967295u, ~(u_input.c.x ^ 26854u), var_0.x, u_input.c.x), _wgslsmith_div_i32(33904i, _wgslsmith_add_i32(1i, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_6, vec2<u32>(42736u, u_input.c.x), ~u_input.b.x, var_6);
}

