struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<i32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: vec4<i32> = vec4<i32>(2147483647i, 1259i, -1i, 2147483647i);

var<private> global3: f32 = -653f;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    global1 = !vec3<bool>(all(!select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, false, global1.x))), firstTrailingBit(1u) > ~u_input.a.x, global1.x);
    var var_0 = vec3<bool>(global1.x, !all(global0[_wgslsmith_index_u32(0u, 31u)]), true);
    var_0 = select(!(!(!vec3<bool>(false, false, global1.x))), vec3<bool>(_wgslsmith_dot_vec3_i32(global2.wyz, global2.wxx) <= firstTrailingBit(_wgslsmith_add_i32(u_input.b, 9247i)), global1.x, any(vec2<bool>(true, global1.x))), !(!(!(!global1.x))));
    var var_1 = vec4<bool>(true, !(!any(global1.yy) || (~u_input.a.x == 0u)), all(select(!vec3<bool>(true, global1.x, global1.x), !vec3<bool>(true, global1.x, true), vec3<bool>(true, true, true))), global1.x);
    global0 = array<vec2<bool>, 31>();
    return -_wgslsmith_sub_i32(u_input.b, u_input.b);
}

fn func_2(arg_0: i32) -> Struct_2 {
    global0 = array<vec2<bool>, 31>();
    let var_0 = 7335u > u_input.a.x;
    global2 = -vec4<i32>(~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(0i, global2.x, -2147483647i, 1i)), -vec4<i32>(u_input.b, 1808i, arg_0, -43694i)), 1i, -10333i, _wgslsmith_clamp_i32(func_3(), arg_0, i32(-1i) * -1i));
    global3 = _wgslsmith_div_f32(-1455f, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1056f) - -747f), 1f))));
    var var_1 = 347f;
    return Struct_2(!any(select(!vec3<bool>(false, global1.x, var_0), vec3<bool>(true, var_0, false), var_0)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> f32 {
    let var_0 = true;
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -823f);
    var var_1 = vec4<u32>(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 17104u, 57783u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 19997u)), u_input.a.x), ~0u, 13838u, 1u) ^ vec4<u32>(28974u, reverseBits(89809u), 54136u, _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mod_u32(29303u, 1u) ^ u_input.a.x));
    let var_2 = Struct_1(global2.xxx, !(~var_1.x < (max(var_1.x, u_input.a.x) ^ firstTrailingBit(u_input.a.x))), firstTrailingBit(global2.wx), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, 39182i, global2.x), vec3<i32>(30506i, 25887i, -2147483647i))), firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-29836i, -37144i), vec2<i32>(-2147483647i, 1349i)), 87974i, -67768i))), !all(vec2<bool>(select(true, false, arg_0.x), !arg_0.x)));
    let var_3 = u_input.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1221f - -1294f)) * -2129f)));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(!vec4<bool>(false, global1.x, global1.x, true), func_2(1i)))))));
    let var_1 = abs(_wgslsmith_add_u32(countOneBits(~(u_input.a.x << (u_input.a.x % 32u))), u_input.a.x));
    return Struct_2(any(select(select(vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x)), vec4<bool>(global1.x, true, global1.x, global1.x), var_0 >= -171f)) && all(select(select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, global1.x), true), vec3<bool>(global1.x, true, global1.x), any(vec2<bool>(global1.x, true)))));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1360f - -376f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) - _wgslsmith_f_op_f32(select(arg_3.b.x, arg_3.b.x, global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0)))) * _wgslsmith_f_op_f32(round(arg_0))), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_3.b.x, _wgslsmith_f_op_f32(trunc(301f)))), -452f, !func_2(7160i).a)))));
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0), -114f, _wgslsmith_f_op_f32(ceil(1520f)), _wgslsmith_f_op_f32(min(arg_0, var_0.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-351f, -642f, -820f, 1268f) - vec4<f32>(-1151f, var_0.x, arg_3.b.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1023f, -1719f, arg_3.b.x, -132f)))))));
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -global2.xyz, vec3<i32>(_wgslsmith_div_i32(~2147483647i, select(max(3372i, u_input.b), i32(-1i) * -5941i, true)), 2147483647i, ~u_input.b >> (578u % 32u)));
    var var_2 = ~(vec3<i32>(-1i) * -vec3<i32>(~0i, u_input.b, global2.x));
    var var_3 = max(~(~(~var_1)), var_1);
    return Struct_1(abs(~min(_wgslsmith_mod_vec3_i32(var_1, vec3<i32>(-2147483647i, 1i, var_1.x)), vec3<i32>(26173i, var_1.x, var_1.x))), !any(vec4<bool>(true, arg_3.e.x, global1.x, !arg_1.a)), _wgslsmith_sub_vec2_i32(arg_3.a, _wgslsmith_sub_vec2_i32(~global2.xx, arg_3.d)) ^ _wgslsmith_mod_vec2_i32(global2.xx, var_3.xy), ~var_2.x << (u_input.a.x % 32u), all(arg_3.e));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(278f * 744f)) - 767f);
    global2 = ~vec4<i32>(arg_1.a.x, 0i, global2.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(-48782i, 1i), u_input.b));
    global3 = 946f;
    let var_1 = ~(-(i32(-1i) * -global2.x));
    var var_2 = func_2(global2.x);
    return ~(~(~reverseBits(vec4<u32>(35454u, u_input.a.x, arg_0.x, arg_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_6(_wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a.x, 25589u)), reverseBits(u_input.a)), func_5(_wgslsmith_div_f32(-1000f, -591f), func_1(vec3<i32>(75556i, u_input.b, -65268i)), select(global1.zx, vec2<bool>(false, global1.x), global1.x), Struct_3(vec2<i32>(u_input.b, 0i), vec2<f32>(260f, 876f), u_input.b, global2.yy, vec3<bool>(global1.x, global1.x, global1.x))), select(u_input.a, vec2<u32>(80010u, u_input.a.x), global1.yz)), ~(~firstTrailingBit(vec4<u32>(12739u, 1u, u_input.a.x, u_input.a.x))), all(vec2<bool>(u_input.b < u_input.b, true))) << (vec4<u32>(reverseBits(u_input.a.x), ~u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 1u), 7400u) % vec4<u32>(32u));
    global1 = vec3<bool>(!(!global1.x), false, global1.x);
    var var_1 = ~max(_wgslsmith_mult_i32(_wgslsmith_div_i32(52080i, global2.x), u_input.b), global2.x) <= global2.x;
    global0 = array<vec2<bool>, 31>();
    var var_2 = select(vec4<bool>(!((global1.x && true) & (var_0.x == 1u)), global1.x, true, global1.x), select(vec4<bool>(global1.x, true, true & any(vec3<bool>(true, true, global1.x)), global1.x), vec4<bool>(false, !(!global1.x), any(vec3<bool>(global1.x, global1.x, global1.x)), global1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1158f)))) <= 950f), vec4<bool>(!(~u_input.b > ~global2.x), global1.x, !(!global1.x) || true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(404f)) * _wgslsmith_div_f32(1000f, -100f)) <= 1f));
    let var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(min(586f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1405f * -620f), -433f)))), 1585f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(792f - 202f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * -365f), all(var_2.yxx))), _wgslsmith_f_op_f32(1175f - _wgslsmith_f_op_f32(f32(-1f) * -1259f))), global2.xzy);
}

