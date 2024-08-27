struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: i32,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -16069i;

var<private> global1: vec3<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>) -> vec2<bool> {
    let var_0 = true;
    let var_1 = 1i;
    var var_2 = min(vec2<i32>(21044i, var_1), vec2<i32>(-44231i, _wgslsmith_mult_i32(-(-6043i | global1.x), abs(_wgslsmith_mod_i32(var_1, global1.x)))));
    let var_3 = Struct_1(vec2<bool>(true, any(select(select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(true, false, false, var_0), var_0), select(vec4<bool>(var_0, true, var_0, true), vec4<bool>(true, var_0, true, var_0), true), !vec4<bool>(var_0, var_0, true, var_0)))), _wgslsmith_mod_vec2_u32(u_input.b, u_input.b), var_1, vec3<bool>(true, true, true), _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mult_u32(~_wgslsmith_div_u32(u_input.a, 16040u), min(_wgslsmith_mult_u32(u_input.a, 6119u), u_input.a))));
    var var_4 = vec4<i32>(firstTrailingBit(-35702i) << (~_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a, u_input.b.x), ~var_3.b.x, 4294967295u) % 32u), reverseBits(-7376i), var_2.x, global1.x);
    return vec2<bool>(true, -20789i > var_3.c);
}

fn func_2() -> vec3<f32> {
    var var_0 = Struct_1(!func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_div_vec2_f32(vec2<f32>(-452f, -329f), vec2<f32>(-552f, 497f)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))))), ~abs(~vec2<u32>(51589u, 1u)) ^ ~vec2<u32>(u_input.b.x, u_input.b.x), -37070i, vec3<bool>(all(vec3<bool>(true, all(vec3<bool>(true, false, true)), all(vec4<bool>(true, false, false, true)))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), false))), !any(vec2<bool>(true, true)) == ((global1.x <= -25006i) && func_3(vec2<f32>(1846f, -155f)).x)), firstTrailingBit(1u));
    global0 = _wgslsmith_add_i32(~(_wgslsmith_mod_i32(2147483647i, global1.x) >> (u_input.b.x % 32u)), -_wgslsmith_mult_i32(global1.x, ~0i));
    var_0 = Struct_1(vec2<bool>(any(vec4<bool>(var_0.e <= 1u, all(var_0.d), select(var_0.d.x, var_0.d.x, true), true)), !var_0.d.x), min(countOneBits(vec2<u32>(13385u, 1u)), var_0.b >> (u_input.b % vec2<u32>(32u))), var_0.c, var_0.d, ~(~firstTrailingBit(~var_0.b.x)));
    let var_1 = Struct_1(select(var_0.d.zy, vec2<bool>(any(var_0.d), all(vec4<bool>(false, var_0.d.x, var_0.d.x, var_0.d.x))), var_0.d.x), ~var_0.b, var_0.c, vec3<bool>(var_0.a.x, true, any(!(!var_0.a))), 1u);
    global1 = -abs(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, global1.x, var_0.c, var_0.c), vec4<i32>(51581i, var_1.c, -34122i, -1i)), -vec4<i32>(-38006i, global1.x, 20017i, var_1.c)), reverseBits(select(var_0.c, global1.x, false)), 0i));
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(276f, -419f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-192f))))), 826f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 103f, 388f)) - vec3<f32>(_wgslsmith_f_op_f32(-1000f - -1015f), _wgslsmith_div_f32(1714f, -510f), 125f))), vec3<bool>(true, var_1.d.x, select(_wgslsmith_add_u32(21453u, var_0.e), ~76579u, var_0.a.x || false) == ~(~0u))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1848f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-262f - -1000f) + 228f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -146f), _wgslsmith_f_op_f32(-691f - 1000f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1341f, 287f, -193f))))) * _wgslsmith_f_op_vec3_f32(func_2()));
    let var_1 = firstLeadingBit(_wgslsmith_sub_u32(arg_0.x, arg_1.e));
    var var_2 = u_input.a;
    var var_3 = all(arg_1.a);
    var var_4 = firstLeadingBit(u_input.b);
    return ~15376u;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec3<f32>) -> i32 {
    global0 = arg_2.c;
    let var_0 = 44358u;
    global0 = -arg_2.c & arg_2.c;
    let var_1 = arg_2;
    var var_2 = ~68816u;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mod_vec3_i32(max(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, -14017i, global1.x), ~vec4<i32>(-1i, global1.x, -15515i, global1.x)), -4615i, firstLeadingBit(-1i)), -(~(~vec3<i32>(-2147483647i, -12174i, 2147483647i)))), -vec3<i32>(_wgslsmith_dot_vec2_i32(global1.xz, ~global1.yy), ~_wgslsmith_mod_i32(1i, -17024i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 43311i, global1.x, -1i), max(vec4<i32>(-15756i, -10729i, -2147483647i, -39552i), vec4<i32>(-20224i, -2147483647i, 1i, global1.x)))));
    global0 = func_4(vec4<u32>(min(abs(~u_input.b.x), ~(~31619u)), ~min(max(0u, 18494u), _wgslsmith_clamp_u32(1u, u_input.a, u_input.a)), 65305u >> (min(~u_input.a, ~17572u) % 32u), 84192u), vec4<u32>(~1u, ~(u_input.b.x << (u_input.a % 32u)), u_input.b.x, func_1(vec2<u32>(~11774u, _wgslsmith_sub_u32(2278u, 0u)), Struct_1(vec2<bool>(true, true), u_input.b, -1i, vec3<bool>(true, true, true), firstLeadingBit(u_input.a)))), Struct_1(vec2<bool>(true, false), abs(~vec2<u32>(u_input.a, u_input.b.x)), _wgslsmith_add_i32(global1.x, _wgslsmith_mod_i32(global1.x, global1.x) ^ 25828i), vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), (global1.x & global1.x) >= _wgslsmith_add_i32(33821i, 56823i), _wgslsmith_dot_vec2_u32(u_input.b, u_input.b) < _wgslsmith_sub_u32(u_input.b.x, 1660u)), ~u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1350f, _wgslsmith_f_op_f32(-633f - 3466f), _wgslsmith_f_op_f32(-424f * _wgslsmith_f_op_f32(abs(-1000f))))));
    var var_0 = 4294967295u;
    var var_1 = select(_wgslsmith_div_vec2_u32(~(~u_input.b), _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(31661u, 44133u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, 8928u), u_input.b))), countOneBits(vec2<u32>(u_input.b.x, _wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(u_input.b.x, 3800u, 4294967295u))))), select(!select(func_3(vec2<f32>(-1192f, 628f)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false)), vec2<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), false)), false), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_2 = vec4<bool>(func_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1335f, -1360f))))))).x, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec3_f32(func_2()).x, -2067f))).x, true, true);
    let var_3 = -global1.x;
    var_0 = u_input.b.x;
    var var_4 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(-vec4<i32>(var_3, -24477i, var_3, global1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1595f) * 162f) - -1194f))), vec3<i32>(-1i, max(0i, _wgslsmith_mult_i32(global1.x, -2147483647i)), 0i) & (vec3<i32>(-1i) * -vec3<i32>(global1.x, var_3, global1.x)));
}

