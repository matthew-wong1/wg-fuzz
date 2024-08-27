struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(84639u, 17432u, 4294967295u), vec3<u32>(4294967295u, 0u, 58597u), vec3<u32>(40044u, 0u, 2125u), vec3<u32>(4294967295u, 4294967295u, 92798u), vec3<u32>(2300u, 19019u, 4294967295u), vec3<u32>(41021u, 62728u, 1u), vec3<u32>(0u, 0u, 0u), vec3<u32>(12731u, 0u, 28954u), vec3<u32>(1u, 1u, 44479u), vec3<u32>(0u, 40268u, 77599u), vec3<u32>(0u, 59874u, 22503u));

var<private> global2: u32;

var<private> global3: i32 = -1i;

var<private> global4: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(40652i, 0i), vec2<i32>(30315i, 3058i), vec2<i32>(-11380i, -7662i), vec2<i32>(13179i, i32(-2147483648)), vec2<i32>(21364i, -64452i), vec2<i32>(-11481i, 1i), vec2<i32>(0i, -1i), vec2<i32>(17370i, 23294i));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = array<vec3<u32>, 12>();
    let var_0 = arg_0;
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(96926u, select(var_0.a.x, var_0.a.x, true), 91317u, countOneBits(26761u)), vec4<u32>(firstTrailingBit(4294967295u), max(arg_0.a.x, 0u), countOneBits(0u), 4294967295u)), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(1u, arg_0.a.x, arg_0.a.x, 0u)) << (abs(vec4<u32>(u_input.a.x, 4294967295u, 0u, 67870u)) % vec4<u32>(32u)), ~(~vec4<u32>(97191u, var_0.a.x, var_0.a.x, var_0.a.x))), ~(~abs(vec4<u32>(u_input.a.x, 1u, 5349u, 69321u)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~var_0.a.x, _wgslsmith_div_u32(var_0.a.x, 26988u)), (u_input.a.x << (11413u % 32u)) >> (124742u % 32u), u_input.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(7000u, u_input.a.x, var_0.a.x), global1[_wgslsmith_index_u32(16835u, 12u)])), ~(vec4<u32>(0u, 1u, 0u, var_0.a.x) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.x, 12047u, u_input.a.x, var_0.a.x), vec4<u32>(var_0.a.x, var_0.a.x, 47813u, 1u))), ~(~vec4<u32>(arg_0.a.x, 120996u, u_input.a.x, arg_0.a.x) & abs(vec4<u32>(40097u, 1094u, var_0.a.x, var_0.a.x)))));
    var var_2 = Struct_1(arg_0.a);
    var_2 = Struct_1(vec2<u32>(~(0u | u_input.a.x), 4294967295u) ^ ~countOneBits(vec2<u32>(var_0.a.x, 22603u)));
    return var_0;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-484f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -906f))))));
    global3 = arg_0;
    global3 = -23824i;
    global0 = !vec3<bool>(!global0.x, !(!all(global0.yy)), global0.x);
    var var_1 = _wgslsmith_add_i32(-20044i, u_input.b ^ arg_0) >> (arg_1.a.x % 32u);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), -269f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0 + 940f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: u32) -> i32 {
    global3 = 1i;
    var var_0 = func_2(func_2(func_2(Struct_1(countOneBits(u_input.a.zz)))));
    var_0 = arg_0;
    global2 = 3976u;
    let var_1 = -1422f;
    return _wgslsmith_div_i32(-530i, 2147483647i);
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    global2 = arg_0.a.x;
    global3 = func_4(arg_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-728f, -1459f, 1000f)), global0.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2384f, 759f, 725f) - vec3<f32>(-732f, -1000f, -2503f)) - vec3<f32>(1386f, -1690f, -383f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(552f, 421f, -361f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(461f, 494f, -1964f))), vec3<f32>(-1383f, _wgslsmith_div_f32(670f, 567f), _wgslsmith_f_op_f32(min(-1458f, 665f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1049f, 679f, -284f)) * _wgslsmith_f_op_vec4_f32(func_3(19180i, func_2(arg_0)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-235f, 1000f, 580f, -1647f)), vec4<f32>(-2131f, _wgslsmith_f_op_f32(-144f + 852f), _wgslsmith_f_op_f32(trunc(-1635f)), _wgslsmith_f_op_f32(-1585f - 1018f))))), min(~func_2(arg_0).a.x, max(~_wgslsmith_mult_u32(arg_0.a.x, u_input.a.x), 43011u)));
    let var_0 = func_2(Struct_1(select(vec2<u32>(_wgslsmith_mod_u32(arg_0.a.x, u_input.a.x), ~arg_0.a.x), ~select(u_input.a.yx, vec2<u32>(1u, 28386u), global0.x), false)));
    let var_1 = !(!(global0.x == any(!vec3<bool>(true, false, global0.x))));
    var var_2 = _wgslsmith_add_vec3_u32(~(~(~vec3<u32>(u_input.a.x, 0u, arg_0.a.x)) | _wgslsmith_add_vec3_u32(~global1[_wgslsmith_index_u32(var_0.a.x, 12u)], abs(u_input.a))), ~(~u_input.a));
    return abs(firstTrailingBit(vec2<u32>(var_2.x, ~65133u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 12>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2110f, 914f, -297f) - vec3<f32>(-1000f, -621f, -2334f)) * vec3<f32>(370f, 164f, -1539f)))));
    var var_1 = Struct_1(_wgslsmith_mod_vec2_u32(~(func_1(Struct_1(vec2<u32>(52134u, 1u))) << (_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(1u, u_input.a.x)) % vec2<u32>(32u))), vec2<u32>(u_input.a.x, u_input.a.x)));
    global3 = 2147483647i;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-409f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -322f)))))));
    var var_2 = 54676u;
    global0 = vec3<bool>(all(global0.zy), any(!select(!vec4<bool>(global0.x, global0.x, false, global0.x), !vec4<bool>(false, global0.x, global0.x, true), true)), true);
    global0 = vec3<bool>(global0.x, any(select(!vec4<bool>(global0.x, global0.x, global0.x, true), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x)), select(vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(global0.x, global0.x, true, global0.x), global0.x))) | global0.x, true);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(76380i, 2757i, u_input.b) & vec3<i32>(-2147483647i, u_input.b, u_input.b), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, -1i, 0i))), func_2(Struct_1(vec2<u32>(0u, u_input.a.x))))).yzz) * vec3<f32>(-515f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -513f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x - 268f)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, select(reverseBits(select(vec4<i32>(u_input.b, 4332i, 2147483647i, u_input.b), vec4<i32>(13361i, -54598i, u_input.b, -2147483647i), true)), -(vec4<i32>(1i, u_input.b, 0i, 31636i) << (vec4<u32>(0u, u_input.a.x, var_1.a.x, u_input.a.x) % vec4<u32>(32u))), global0.x) << (reverseBits(~_wgslsmith_add_vec4_u32(vec4<u32>(5709u, u_input.a.x, u_input.a.x, var_1.a.x), vec4<u32>(65333u, 4294967295u, 4294967295u, var_1.a.x))) % vec4<u32>(32u)), vec2<i32>(u_input.b, max(~5064i, u_input.b) >> (~firstLeadingBit(113853u) % 32u)));
}

