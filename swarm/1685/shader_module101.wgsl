struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: bool,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_3 = Struct_3(vec4<u32>(96738u, 34509u, 19366u, 4294967295u), vec2<u32>(1u, 18504u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>) -> bool {
    var var_0 = Struct_4(global0.a, vec4<bool>(!(!select(true, global0.b.x, global0.b.x)), !(global0.b.x && global0.b.x) & (!global0.b.x && false), !any(!vec3<bool>(true, global0.b.x, true)), true), ~global1.a);
    global0 = Struct_4(global0.a, !select(global0.b, vec4<bool>(any(vec3<bool>(false, global0.b.x, false)), !var_0.b.x, !global0.b.x, true | var_0.b.x), !select(global0.b, var_0.b, var_0.b.x)), firstLeadingBit(global1.a));
    global0 = Struct_4(vec2<u32>(4294967295u, arg_1.x), !global0.b, vec4<u32>(4294967295u, global1.b.x, 9334u, ~4294967295u));
    global1 = Struct_3(vec4<u32>(var_0.c.x, 33374u, ~min(min(1u, arg_1.x), ~arg_1.x), _wgslsmith_mod_u32(0u, global1.a.x)), u_input.a.zx);
    global0 = Struct_4(vec2<u32>((_wgslsmith_dot_vec2_u32(var_0.c.yy, u_input.a.zy) >> (~var_0.c.x % 32u)) | _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, arg_1.x, 1u), select(global0.c.zyx, vec3<u32>(89023u, 0u, arg_1.x), var_0.b.x)), firstTrailingBit(_wgslsmith_clamp_u32(116903u, ~4294967295u, ~4294967295u))), select(!global0.b, vec4<bool>(global0.b.x, true, !any(vec2<bool>(global0.b.x, global0.b.x)), global0.b.x), vec4<bool>(false, global0.b.x, any(!global0.b.xw), var_0.b.x)), ~vec4<u32>(~arg_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, 29138u) ^ vec2<u32>(var_0.a.x, arg_1.x), ~vec2<u32>(0u, 4294967295u)), ~global1.a.x, firstTrailingBit(reverseBits(92067u))));
    return select(global0.b.x, _wgslsmith_div_u32(4294967295u, select(min(global1.b.x, arg_1.x), 1u, !var_0.b.x)) >= ~arg_1.x, 1u > global1.b.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>) -> f32 {
    var var_0 = Struct_4(vec2<u32>(reverseBits(_wgslsmith_clamp_u32(global1.b.x, 44303u, u_input.d)), ~_wgslsmith_mod_u32(global0.a.x, 0u)) << (vec2<u32>(~0u, global1.b.x) % vec2<u32>(32u)), select(select(select(vec4<bool>(true, global0.b.x, global0.b.x, true), global0.b, global0.b), vec4<bool>(true, false || global0.b.x, true, true), all(global0.b.yx)), global0.b, !vec4<bool>(select(true, global0.b.x, global0.b.x), 1847f < arg_1.x, func_3(vec4<i32>(-1i, -10154i, u_input.b, u_input.b), global0.a), any(global0.b))), ~global0.c);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(413f * arg_1.x))))) + 297f);
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = u_input.c.yz;
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b, var_0.x ^ var_0.x), _wgslsmith_sub_i32(-u_input.c.x, select(var_0.x, u_input.b, false))), -6599i) != u_input.b;
    return Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(~u_input.c, reverseBits(u_input.c), -u_input.c ^ u_input.c), reverseBits(vec3<i32>(0i, _wgslsmith_clamp_i32(u_input.c.x, 2147483647i, var_0.x), 0i))), global1.a, arg_0.x, var_0.x, vec3<bool>(func_3(vec4<i32>(1i, 39653i & u_input.b, -46247i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, var_0.x, -25417i, u_input.b), vec4<i32>(28618i, u_input.b, 2147483647i, u_input.b))), global1.b >> (global1.b % vec2<u32>(32u))), (all(vec4<bool>(false, true, true, global0.b.x)) | all(global0.b)) && arg_0.x, arg_0.x));
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = func_4(vec4<bool>(global0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1413f), _wgslsmith_f_op_f32(func_2(vec4<u32>(4294967295u, 0u, global0.c.x, 18503u), vec3<f32>(1055f, 840f, -528f)))) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(224f, 2154f)), arg_0, _wgslsmith_f_op_f32(sign(1000f)) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1196f))))));
    global0 = Struct_4(var_0.b.wz, global0.b, global1.a);
    return Struct_3(vec4<u32>(0u, _wgslsmith_mod_u32(var_0.b.x, global1.a.x), ~55564u, max(firstTrailingBit(_wgslsmith_mult_u32(27224u, 71653u)), ~global1.b.x ^ 50382u)), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(global0.c.wy, vec2<u32>(u_input.a.x, u_input.a.x)), max(~u_input.a.zx, u_input.a.xz)) | u_input.a.xy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~min(vec2<u32>(global1.b.x, 6979u), ~max(vec2<u32>(global1.b.x, 1u), vec2<u32>(global1.a.x, global1.a.x) << (global0.c.xw % vec2<u32>(32u))));
    var var_1 = func_1(~u_input.a.x < _wgslsmith_clamp_u32(34605u, 0u, firstTrailingBit(~var_0.x)));
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(906f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-119f, 213f) + -972f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(601f)) * _wgslsmith_f_op_f32(520f + 891f))), 1337f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(global0.c, vec3<f32>(1565f, -152f, -716f))), _wgslsmith_f_op_f32(sign(-257f)), -729f, _wgslsmith_f_op_f32(-942f * 701f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-814f, -358f, -456f, 1652f)), vec4<f32>(827f, -534f, -1171f, 175f), select(vec4<bool>(global0.b.x, false, global0.b.x, false), vec4<bool>(true, global0.b.x, global0.b.x, true), false))))));
    var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), var_2.x, _wgslsmith_f_op_f32(-911f + _wgslsmith_f_op_f32(-501f * var_2.x))) - vec4<f32>(_wgslsmith_f_op_f32(floor(var_2.x)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -464f), _wgslsmith_f_op_f32(abs(-491f))));
    var var_3 = !global0.b.wx;
    let var_4 = 2147483647i << (global0.a.x % 32u);
    let var_5 = Struct_3(_wgslsmith_add_vec4_u32(global1.a, ~(~(~vec4<u32>(27674u, 49691u, global1.a.x, 1u)))), reverseBits((vec2<u32>(global1.a.x, global0.c.x) << (var_1.a.wz % vec2<u32>(32u))) << (_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(var_0.x, var_0.x)), var_0 ^ vec2<u32>(var_1.b.x, var_0.x)) % vec2<u32>(32u))));
    global1 = var_5;
    let var_6 = _wgslsmith_f_op_f32(round(var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1265f, -653f, 1116f))) * vec3<f32>(var_2.x, var_2.x, var_6))))), -firstLeadingBit(_wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, var_4), _wgslsmith_div_vec2_i32(u_input.c.xz, vec2<i32>(-13025i, 0i)), _wgslsmith_mult_vec2_i32(u_input.c.yx, u_input.c.zx))), global0.a.x, global0.c.zy);
}

