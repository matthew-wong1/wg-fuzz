struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec2<i32> {
    var var_0 = Struct_2(Struct_1(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), abs(vec3<i32>(-2147483647i, -1i, -1i)))), -1i, 893f, Struct_1(1i));
    var var_1 = ~_wgslsmith_dot_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1, u_input.a), vec2<u32>(arg_1, u_input.a))), ~firstLeadingBit(~vec2<u32>(63602u, u_input.a)));
    var_0 = Struct_2(Struct_1(_wgslsmith_mult_i32(reverseBits(select(var_0.d.a, var_0.a.a, false)), _wgslsmith_mult_i32(var_0.a.a, abs(var_0.b)))), var_0.a.a, -716f, Struct_1(25694i));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -815f));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 154f, 536f)), vec3<f32>(-1583f, -436f, arg_0))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, -123f, global0.x))), vec3<f32>(var_0.c, arg_0, 890f)), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))))));
    return min(select(vec2<i32>(var_0.d.a ^ 1i, var_0.b), vec2<i32>(-30586i | var_0.a.a, select(var_0.b, -1i, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), select(true, true, true))) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.a, u_input.a), vec2<u32>(~u_input.a, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, u_input.a), vec2<u32>(0u, 4933u)) >> (~vec2<u32>(arg_1, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.a, var_0.d.a, 0i, var_0.d.a), vec4<i32>(2147483647i, var_0.b, var_0.d.a, -6682i))) & vec2<i32>(abs(1i), _wgslsmith_mod_i32(var_0.d.a, var_0.d.a)), max(abs(~vec2<i32>(var_0.a.a, 26074i)), ~(~vec2<i32>(1i, 49975i)))));
}

fn func_2() -> i32 {
    let var_0 = Struct_3(select(~vec4<u32>(23595u, u_input.a, 32846u, 1u) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(54566u, u_input.a, u_input.a, 63109u), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), max(vec4<u32>(u_input.a, 4294967295u, u_input.a, 7772u), vec4<u32>(0u, u_input.a, 4294967295u, u_input.a))) % vec4<u32>(32u)), vec4<u32>(1u ^ abs(u_input.a), u_input.a ^ u_input.a, u_input.a, u_input.a), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(514f, global0.x) - vec2<f32>(global0.x, global0.x)))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-550f, -1539f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1644f, global0.x))))), vec2<f32>(global0.x, _wgslsmith_f_op_f32(round(539f)))));
    let var_1 = Struct_1(-_wgslsmith_dot_vec2_i32(func_3(global0.x, 0u) & _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(5580i, -2147483647i), vec2<i32>(-29710i, 32416i)), vec2<i32>(-24570i, 2147483647i)));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(380f, global0.x))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-271f, -353f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1587f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, global0.x), vec2<f32>(1519f, global0.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-989f, -1895f))))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.a, var_1.a, var_1.a), vec3<i32>(2147483647i, -2147483647i, var_1.a)), _wgslsmith_div_vec3_i32(vec3<i32>(-19167i, -1i, var_1.a), vec3<i32>(-24622i, var_1.a, 1i))) != _wgslsmith_add_i32(6565i, ~var_1.a))), vec2<f32>(_wgslsmith_f_op_f32(297f - global0.x), global0.x), vec2<bool>(false, !(any(vec4<bool>(true, true, true, false)) & any(vec3<bool>(true, false, false))))));
    var var_2 = var_1.a << (min(~(~(~var_0.a.x)), 0u ^ _wgslsmith_mod_u32(u_input.a << (1u % 32u), 51508u)) % 32u);
    return select(2071i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, -1i, 1i), vec3<i32>(6329i, var_1.a, 1i)), abs(var_1.a), var_1.a, _wgslsmith_sub_i32(33316i, -1i)), firstTrailingBit(vec4<i32>(var_1.a, var_1.a, var_1.a, var_1.a))), -2147483647i), select(all(vec2<bool>(true, true)), false, false) && all(vec2<bool>(true, all(vec4<bool>(true, false, true, false)))));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec2<f32>, arg_3: u32) -> f32 {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(59778i, reverseBits(~(-20691i >> (u_input.a % 32u))), _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(287i, -2147483647i, 10323i, 1i), vec4<i32>(8403i, -34478i, 866i, 1i)), vec4<i32>(0i, 0i, -19728i, ~1i)), 1i), countOneBits(-(vec4<i32>(-1i) * -vec4<i32>(26944i, -2147483647i, 6495i, -1i))));
    var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec2_f32(select(arg_2, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(arg_2)))), select(vec2<bool>(any(select(vec4<bool>(true, arg_1, true, true), vec4<bool>(false, false, arg_1, arg_1), false)), arg_1), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(arg_1, true)), vec2<bool>(any(vec4<bool>(arg_1, arg_1, arg_1, true)), -1205f == global0.x), vec2<bool>(true, true)), any(vec2<bool>(false, false && arg_1)))));
    global0 = _wgslsmith_f_op_vec2_f32(select(var_1, arg_2, vec2<bool>(true, !any(vec3<bool>(true, false, false)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-869f * var_1.x)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.x), 508f)));
    return _wgslsmith_f_op_f32(-921f + var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-631f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, 959f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(global0.x, false, vec2<f32>(global0.x, 959f), 1u)))) - -795f)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1777f, global0.x)))))))));
    var var_0 = vec4<f32>(-1301f, -1000f, -165f, _wgslsmith_f_op_f32(sign(global0.x)));
    var var_1 = global0.x;
    let var_2 = Struct_2(Struct_1(-82i), ~(-1i) | _wgslsmith_dot_vec3_i32(vec3<i32>(func_3(var_0.x, 47334u).x, 2147483647i, i32(-1i) * -30266i), -vec3<i32>(1i, 1i, 1i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))))), Struct_1(2147483647i));
    var var_3 = vec4<bool>(true, !any(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)), false, true);
    let var_4 = ~(vec3<i32>(var_2.b, -min(var_2.b, var_2.b), func_3(_wgslsmith_f_op_f32(f32(-1f) * -117f), ~12158u).x) & vec3<i32>(_wgslsmith_add_i32(-var_2.b, reverseBits(var_2.d.a)), _wgslsmith_mod_i32(16640i, firstLeadingBit(var_2.d.a)), var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 1i, -2147483647i, 37370i), vec4<i32>(var_2.b, 15195i, 1i, -2743i)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), -129f, _wgslsmith_f_op_f32(f32(-1f) * -309f), _wgslsmith_f_op_f32(f32(-1f) * -202f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -336f), -172f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 985f) - _wgslsmith_f_op_f32(exp2(global0.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(616f, -1000f))))));
}

