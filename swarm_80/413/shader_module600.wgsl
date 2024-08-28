struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(true, 88904u, 21605u), -1i, vec4<u32>(0u, 0u, 122061u, 14424u), vec2<i32>(74794i, i32(-2147483648)));

var<private> global1: Struct_1;

var<private> global2: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(global0.a, ~(~0i), abs(vec4<u32>(firstLeadingBit(abs(1u)), 0u, 25774u << (_wgslsmith_dot_vec2_u32(vec2<u32>(69381u, 1u), global0.c.yy) % 32u), firstTrailingBit(1u) << (~4294967295u % 32u))), vec2<i32>(global0.b, 2147483647i));
    let var_1 = Struct_3(global0.a, ~(-1i), global0.c, vec2<i32>(_wgslsmith_mult_i32(abs(-var_0.d.x), global0.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(abs(42409i), 1i), _wgslsmith_add_vec2_i32(var_0.d, select(var_0.d, global0.d, vec2<bool>(var_0.a.a, global1.a))))));
    var var_2 = _wgslsmith_mod_vec3_u32(global0.c.yyy, _wgslsmith_clamp_vec3_u32(~_wgslsmith_add_vec3_u32(~vec3<u32>(var_0.a.b, 16753u, var_0.a.c), var_0.c.wwy), max(vec3<u32>(96584u, var_1.c.x, 1u), ~vec3<u32>(0u, 5280u, 15289u)) | vec3<u32>(u_input.b << (0u % 32u), _wgslsmith_mod_u32(15821u, global1.b), _wgslsmith_clamp_u32(var_1.a.c, global1.c, var_0.c.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.b, u_input.b, 4294967295u) | var_1.c.yzz, abs(var_0.c.xzy)) >> (var_1.c.xwx % vec3<u32>(32u))));
    var_2 = _wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.b, var_2.x, 4294967295u), var_0.c.xzw ^ ~(~vec3<u32>(u_input.b, global1.b, 28373u)), true), ~(~(~abs(u_input.a))));
    return var_0.a.b;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(!(any(!vec3<bool>(global1.a, global0.a.a, global1.a)) || !global1.a), ~(global1.c << (36300u % 32u)), global0.c.x);
    global2 = select(false, !var_0.a & !(!(false == global0.a.a)), true);
    var var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(abs(global0.c.zxz) & (global0.c.zww << (u_input.a % vec3<u32>(32u))), max(abs(global0.c.yzw), vec3<u32>(46121u, 14660u, u_input.a.x))) | ~abs(u_input.a), vec3<u32>(func_3(), var_0.c, _wgslsmith_sub_u32(179444u, ~var_0.c)));
    let var_2 = Struct_2(~vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(~2134u, global0.c.x)));
    var var_3 = ~(~u_input.a.x);
    return Struct_3(global0.a, _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-10415i, -10435i, global0.b, global0.d.x), vec4<i32>(global0.d.x, 1i, global0.b, global0.b)), reverseBits(2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-61685i, global0.b, global0.b) >> (u_input.a % vec3<u32>(32u)), select(vec3<i32>(-1i, 0i, global0.b), vec3<i32>(global0.b, global0.b, global0.b), vec3<bool>(global0.a.a, var_0.a, global0.a.a)))), -1652i, global0.d.x), (global0.c & firstLeadingBit(global0.c)) >> (~global0.c % vec4<u32>(32u)), global0.d);
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> vec2<f32> {
    global0 = func_2();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1481f)))));
    var var_1 = !all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(arg_1, arg_1, false)), select(vec3<bool>(false, global1.a, true), select(vec3<bool>(true, false, arg_1), vec3<bool>(global1.a, true, global0.a.a), false), select(vec3<bool>(global1.a, false, global0.a.a), vec3<bool>(true, arg_1, global0.a.a), arg_1)), select(vec3<bool>(false, arg_1, false), vec3<bool>(true, true, true), !vec3<bool>(arg_1, false, arg_1))));
    var var_2 = 843f;
    var var_3 = vec4<bool>(global1.a, all(vec2<bool>(true, false)), global0.a.a, !all(vec4<bool>(-227f >= var_0, 2147483647i < global0.d.x, arg_1 && false, arg_1 == global1.a)));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * 304f)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(floor(var_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-160f * _wgslsmith_f_op_f32(-854f + var_0)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0 * var_0))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = Struct_3(arg_3.a, func_2().d.x, global0.c, vec2<i32>(global0.b, _wgslsmith_dot_vec2_i32(select(vec2<i32>(global0.b, 0i), arg_3.d, true), reverseBits(global0.d)) | ~1i));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 126f)) + vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -755f), 2431f)));
    var_0 = func_2();
    global1 = Struct_1(true, _wgslsmith_add_u32(~(~arg_1.b), ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_1.b, 3402u), 13757u)), _wgslsmith_mod_u32(61248u, ~_wgslsmith_clamp_u32(u_input.b & 2183u, 4294967295u, var_0.a.b)));
    global0 = func_2();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(_wgslsmith_f_op_vec2_f32(func_1(vec4<u32>(u_input.a.x ^ 3518u, global1.b, ~global1.b, u_input.b) << (vec4<u32>(_wgslsmith_div_u32(0u, global0.c.x), 0u, ~4294967295u, select(global1.c, global0.c.x, true)) % vec4<u32>(32u)), any(vec3<bool>(true, global0.a.b <= 0u, any(vec2<bool>(global1.a, global0.a.a)))))), Struct_1(all(select(select(vec4<bool>(global0.a.a, global1.a, true, global1.a), vec4<bool>(global0.a.a, true, global0.a.a, global1.a), vec4<bool>(false, global1.a, global1.a, global1.a)), select(vec4<bool>(false, true, false, false), vec4<bool>(global1.a, global1.a, global1.a, global1.a), true), vec4<bool>(true, true, true, true))), 4294967295u, _wgslsmith_div_u32(max(u_input.b, global0.a.c) | ~31500u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.c, global0.a.b, 0u), global0.c.zxw))), select(select(!select(vec2<bool>(true, false), vec2<bool>(global0.a.a, true), vec2<bool>(false, global1.a)), !(!vec2<bool>(false, global1.a)), select(select(vec2<bool>(global0.a.a, global0.a.a), vec2<bool>(global1.a, true), vec2<bool>(false, false)), vec2<bool>(false, true), vec2<bool>(global1.a, global1.a))), vec2<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, global1.a), vec4<bool>(true, global1.a, global0.a.a, false))), false | (1u <= u_input.b)), true), Struct_3(global0.a, 34330i, ~vec4<u32>(_wgslsmith_add_u32(global0.a.c, u_input.b), 1u, 23580u, _wgslsmith_clamp_u32(u_input.a.x, u_input.b, 1u)), -vec2<i32>(_wgslsmith_mult_i32(global0.b, 2147483647i), 2147483647i)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1456f, _wgslsmith_f_op_f32(-397f * -2207f))));
    var var_1 = func_2();
    let var_2 = func_2();
    var var_3 = func_2();
    global1 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -939f)) - vec2<f32>(328f, -1000f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1847f, 753f))), vec2<bool>(all(vec3<bool>(global0.a.a, global0.a.a, true)), true))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-831f, var_0) + vec2<f32>(1895f, 933f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-959f, 2077f), vec2<f32>(var_0, -559f), vec2<bool>(var_1.a.a, global0.a.a)))))), func_4(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -543f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(652f, 415f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -286f)))), var_3.a, select(select(vec2<bool>(var_3.a.a, var_3.a.a), vec2<bool>(global1.a, global1.a), !vec2<bool>(false, var_3.a.a)), vec2<bool>(true, true), !var_1.a.a), Struct_3(Struct_1(global1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c.x, var_2.a.b, var_1.c.x, 1u), var_2.c), firstLeadingBit(var_1.a.c)), var_2.b, global0.c, vec2<i32>(~(-2147483647i), 0i))), select(!select(vec2<bool>(false, true), select(vec2<bool>(global0.a.a, var_3.a.a), vec2<bool>(var_1.a.a, false), vec2<bool>(global0.a.a, var_3.a.a)), var_0 <= var_0), vec2<bool>(var_1.d.x >= global0.b, true), var_2.a.a), Struct_3(Struct_1(u_input.b <= 69486u, 87389u ^ u_input.b, _wgslsmith_sub_u32(global0.a.b, 4294967295u & var_2.a.c)), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, -2147483647i, -1i)) | ~vec3<i32>(8676i, var_2.d.x, var_2.d.x), select(vec3<i32>(1i, 2147483647i, var_3.b), vec3<i32>(3728i, var_3.b, 32928i), vec3<bool>(var_3.a.a, true, global1.a)) ^ vec3<i32>(var_2.d.x, var_3.d.x, 6552i)), min(abs(select(var_2.c, vec4<u32>(1u, 57727u, 4294967295u, global1.b), vec4<bool>(var_2.a.a, true, false, false))), abs(_wgslsmith_mod_vec4_u32(var_2.c, vec4<u32>(u_input.b, 0u, global0.a.b, var_1.a.b)))), var_1.d));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.c.x, var_3.d, vec2<u32>(33400u, _wgslsmith_div_u32(16411u, min(var_3.a.c, global1.b))));
}

