struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> bool {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(762f + global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -275f), global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-275f * arg_1.x), _wgslsmith_div_f32(global0.x, global0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(708f)))), ~(~(~(~vec3<u32>(u_input.b.x, u_input.a.x, 24493u)))), ~vec3<i32>(arg_0, 1i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, arg_0, -81286i), vec3<i32>(arg_0, arg_0, arg_0), false), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, arg_0, 36374i), vec3<i32>(arg_0, 0i, arg_0)))), abs(u_input.b.xw) ^ vec2<u32>(_wgslsmith_clamp_u32(abs(u_input.b.x), 4294967295u, ~u_input.b.x), _wgslsmith_sub_u32(u_input.b.x, 2720u) << (_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.b.x)) % 32u)));
    var var_1 = firstLeadingBit(vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(var_0.d.x, arg_0, arg_0, var_0.d.x))) << (_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(0u), firstLeadingBit(u_input.a.x), var_0.c.x, u_input.b.x), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 6814u, u_input.a.x, u_input.a.x), u_input.b), vec4<u32>(0u, var_0.e.x, 1683u, var_0.e.x) ^ ~vec4<u32>(1u, u_input.b.x, 6594u, 1u)), _wgslsmith_sub_vec4_u32(u_input.b, _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, var_0.c.x, 1u), u_input.b), ~vec4<u32>(0u, 80113u, u_input.a.x, 1u)))) % vec4<u32>(32u));
    global0 = arg_1.zx;
    var_1 = vec4<i32>(_wgslsmith_mult_i32(var_0.d.x, ~(var_0.d.x & var_0.d.x)), _wgslsmith_clamp_i32(max(var_1.x, -26516i), var_0.d.x, -21375i), -arg_0, arg_0 & _wgslsmith_dot_vec3_i32(select(_wgslsmith_div_vec3_i32(var_0.d, vec3<i32>(var_0.d.x, var_1.x, 1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, var_0.d.x, arg_0), vec3<i32>(arg_0, 1i, arg_0)), true), var_0.d));
    var var_2 = select(!(!vec3<bool>(var_1.x != -19858i, true, false)), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), any(vec2<bool>(false, true))), vec3<bool>(-688f >= global0.x, any(vec4<bool>(false, false, false, false)), true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false)), true);
    return _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(var_0.e.x, 4294967295u), _wgslsmith_clamp_u32(2750u, 16626u, u_input.a.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 59803u, u_input.b.x, 5249u), u_input.b), 1u), ~vec4<u32>(firstTrailingBit(u_input.b.x), select(var_0.c.x, u_input.b.x, var_2.x), 1u, ~11837u)) < ~0u;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<u32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-695f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1267f, global0.x))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-504f, -270f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-746f, global0.x), vec2<f32>(1111f, 872f))), func_3(_wgslsmith_dot_vec2_i32(arg_0.yy, vec2<i32>(-19112i, arg_0.x)), vec3<f32>(global0.x, 2054f, -227f)))))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -683f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
    global0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(select(-1038f, _wgslsmith_f_op_f32(min(-1207f, global0.x)), true)), global0.x)))));
    let var_0 = !(1f == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1257f, global0.x))) && func_3(arg_0.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1000f, global0.x)) + vec3<f32>(global0.x, global0.x, 268f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -774f, -267f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(206f, -1880f, 1371f))))));
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, global0.x))) - vec2<f32>(1093f, _wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1872f, 1810f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x - 544f)))))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * 645f), _wgslsmith_f_op_f32(f32(-1f) * -713f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) - 1500f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, global0.x, global0.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-749f, 257f, global0.x))) - vec3<f32>(_wgslsmith_f_op_f32(sign(-744f)), _wgslsmith_f_op_f32(global0.x - global0.x), -1252f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-156f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(-1800f * global0.x)))), ~vec3<u32>(u_input.a.x, ~1u, firstTrailingBit(u_input.b.x)), ~arg_0.xzy, _wgslsmith_div_vec2_u32(~(u_input.a & u_input.a), vec2<u32>(~u_input.a.x, _wgslsmith_mult_u32(u_input.b.x, 4294967295u))) | _wgslsmith_add_vec2_u32(abs(vec2<u32>(arg_1.x, arg_1.x)), vec2<u32>(~0u, _wgslsmith_mod_u32(u_input.b.x, arg_1.x))));
}

fn func_1() -> vec3<i32> {
    let var_0 = func_2(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-24791i << (u_input.b.x % 32u), 1i, _wgslsmith_clamp_i32(5385i, -1286i, 28881i)), reverseBits(-vec3<i32>(-2169i, -2147483647i, -1i))), _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(2147483647i, 52185i, -23914i), min(1i, -27281i)), ~(~(-2147483647i))), 2147483647i, ~firstLeadingBit(_wgslsmith_mult_i32(-32293i, -1i))), ~(~u_input.b.zxz));
    let var_1 = abs(_wgslsmith_add_vec3_u32(var_0.c, ~vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, 17759u), 1u, ~u_input.b.x)));
    let var_2 = _wgslsmith_sub_i32(var_0.d.x, -_wgslsmith_mod_i32(var_0.d.x, abs(var_0.d.x | var_0.d.x)));
    let var_3 = var_0;
    var var_4 = var_0;
    return select(var_0.d, var_4.d & ~select(vec3<i32>(18048i, var_3.d.x, 1i), vec3<i32>(2147483647i, 1i, var_4.d.x), true), vec3<bool>(385f >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(3186f, 1868f) - var_4.a.x), var_4.d.x == 2147483647i, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(206f - 685f), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -397f)))) + vec3<f32>(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.x, global0.x), 610f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(946f + global0.x)))), _wgslsmith_f_op_f32(-global0.x), select(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 9007u, u_input.b.x) & vec3<u32>(0u, 19905u, u_input.a.x), vec3<u32>(~u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b.yxw, select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), false)))), func_1(), _wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(u_input.b.x, _wgslsmith_div_u32(u_input.a.x, u_input.b.x)) & vec2<u32>(47317u, u_input.a.x), u_input.b.xx));
    global0 = _wgslsmith_f_op_vec2_f32(-var_0.a.xy);
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_0.c), _wgslsmith_mult_i32(-1i, 2147483647i), _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(-70604i, var_0.d.x), var_0.d.x) ^ 0i, 1i), func_1().xx);
}

