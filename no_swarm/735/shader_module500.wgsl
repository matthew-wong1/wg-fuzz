struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_4,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(153f, -645f), vec2<f32>(-2229f, -930f), vec2<f32>(1149f, 1162f));

var<private> global2: array<vec2<i32>, 13>;

var<private> global3: bool = false;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: bool, arg_3: vec2<u32>) -> vec3<u32> {
    global2 = array<vec2<i32>, 13>();
    global1 = array<vec2<f32>, 3>();
    global0 = select(false, arg_1.x, any(arg_1.xy));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1f)))), _wgslsmith_div_f32(1085f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(510f))))) - _wgslsmith_div_f32(-872f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -276f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -144f)), true))));
    var var_1 = 1u;
    return ~select(~(~vec3<u32>(40429u, 4294967295u, 27649u)), vec3<u32>(arg_3.x, 14751u, arg_3.x) | ~vec3<u32>(arg_3.x, 13123u, 4294967295u), vec3<bool>(arg_0.x, false, false)) << (abs(vec3<u32>(~6089u, arg_3.x, _wgslsmith_sub_u32(0u ^ arg_3.x, ~arg_3.x))) % vec3<u32>(32u));
}

fn func_2() -> Struct_4 {
    var var_0 = 1f;
    let var_1 = max(func_3(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec4<bool>(true, false, false, false)), true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false))), true, vec2<u32>(1u, 1u)), vec3<u32>(4294967295u, 28387u, func_3(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), false), any(vec3<bool>(false, false, true))), vec4<bool>(true, true, true, true), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), abs(vec2<u32>(0u, 41234u)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(0u, 30232u), vec2<u32>(4070u, 4294967295u)) % vec2<u32>(32u))).x));
    var var_2 = vec2<u32>(func_3(vec4<bool>(true, false, false, true), !vec4<bool>(true, any(vec2<bool>(true, false)), true, all(vec4<bool>(false, true, true, true))), true, ~_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, var_1.x), func_3(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), false, var_1.yz).xx)).x, ~(~(~var_1.x)));
    let var_3 = !(_wgslsmith_div_f32(1241f, -1578f) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2212f))), _wgslsmith_f_op_f32(floor(1096f)))));
    var var_4 = !vec2<bool>(!(var_3 & var_3), true);
    return Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3031f * 603f)), var_1.x, i32(-1i) * -1i), _wgslsmith_div_vec4_u32(~(vec4<u32>(var_2.x, 53457u, var_2.x, 17541u) >> (vec4<u32>(var_2.x, var_1.x, 59585u, var_1.x) % vec4<u32>(32u))) | vec4<u32>(var_2.x >> (var_2.x % 32u), _wgslsmith_div_u32(1u, var_2.x), ~var_2.x, firstTrailingBit(var_2.x)), ~(~vec4<u32>(var_1.x, 1u, 0u, var_1.x) ^ (vec4<u32>(var_1.x, 48681u, 32079u, var_2.x) << (vec4<u32>(var_2.x, var_2.x, 1u, 32747u) % vec4<u32>(32u))))));
}

fn func_1() -> u32 {
    var var_0 = func_2();
    global0 = true;
    let var_1 = Struct_2(4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(895f, _wgslsmith_f_op_f32(sign(417f)), _wgslsmith_f_op_f32(min(-727f, -428f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.a, -400f, -409f), vec3<f32>(var_0.a.a, 1631f, 1000f)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a, 1033f, 2764f) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-651f, -1178f, var_0.a.a))))))));
    global3 = (_wgslsmith_f_op_f32(-var_0.a.a) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a * _wgslsmith_f_op_f32(-var_1.b.x)) - -305f)) && all(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true));
    return var_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(~1u, select(~_wgslsmith_dot_vec2_u32(vec2<u32>(56463u, 1559u), vec2<u32>(1u, 38578u)), 4294967295u, all(vec2<bool>(true, true))), 1u), select(min(1u, ~4294967295u), ~reverseBits(40670u), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))) << ((_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 45261u, 1u), vec3<u32>(1u, 60182u, 42433u)) | countOneBits(~4294967295u)) % 32u));
    var var_1 = u_input.b.x == _wgslsmith_mult_i32(7766i, u_input.b.x);
    var var_2 = Struct_4(Struct_3(183f, func_1(), -55258i), vec4<u32>(_wgslsmith_dot_vec4_u32(min(~vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(4294967295u, 48971u, 12248u, 59590u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 28836u, 3878u), vec4<u32>(76701u, 39430u, 1u, 20u))), ~(~4294967295u), 64334u, 1u));
    let var_3 = _wgslsmith_sub_vec3_u32(var_2.b.zzy, ~vec3<u32>(func_1(), var_2.b.x, _wgslsmith_add_u32(~1u, var_2.a.b)));
    let var_4 = var_2.a.b;
    global2 = array<vec2<i32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~(~countOneBits(vec2<u32>(85273u, 5960u))), vec2<u32>(~38950u, _wgslsmith_mod_u32(~16335u, func_3(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), true, var_3.zy).x))), _wgslsmith_clamp_vec2_u32(var_3.xz, _wgslsmith_mod_vec2_u32(vec2<u32>(12039u, 76436u), vec2<u32>(var_2.a.b, var_2.a.b)) ^ var_2.b.yz, vec2<u32>(func_3(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), true, vec2<u32>(1u, var_2.a.b)).x, _wgslsmith_clamp_u32(var_3.x, var_3.x, 34449u))) ^ firstTrailingBit(~var_2.b.xz), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(518f * var_2.a.a))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(838f + -1587f)))), -658f, var_2.a.a));
}

