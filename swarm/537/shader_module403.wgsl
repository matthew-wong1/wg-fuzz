struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(200f, 311f, -382f);

var<private> global1: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(33366u, 0u, 167357u, 4294967295u), vec4<u32>(10627u, 4294967295u, 27353u, 0u), vec4<u32>(4294967295u, 64946u, 1u, 31401u), vec4<u32>(1u, 0u, 1u, 1u), vec4<u32>(0u, 4294967295u, 1u, 96094u), vec4<u32>(1u, 4294967295u, 52766u, 20348u), vec4<u32>(3317u, 0u, 15660u, 0u), vec4<u32>(43021u, 4665u, 4294967295u, 2816u), vec4<u32>(0u, 39745u, 22382u, 1u), vec4<u32>(72587u, 0u, 314u, 1u), vec4<u32>(1u, 6056u, 4294967295u, 0u), vec4<u32>(4294967295u, 14532u, 1u, 45408u), vec4<u32>(6721u, 69343u, 11413u, 49445u), vec4<u32>(33865u, 4294967295u, 1u, 4294967295u), vec4<u32>(4294967295u, 82614u, 49851u, 0u), vec4<u32>(33771u, 44377u, 3564u, 30927u), vec4<u32>(4294967295u, 39703u, 26505u, 4294967295u), vec4<u32>(51389u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(17379u, 4294967295u, 59228u, 79911u), vec4<u32>(14355u, 40585u, 41533u, 3368u), vec4<u32>(4294967295u, 30598u, 54840u, 4294967295u), vec4<u32>(0u, 32712u, 125928u, 11831u), vec4<u32>(0u, 1u, 70814u, 1u), vec4<u32>(27587u, 57805u, 0u, 0u), vec4<u32>(4294967295u, 80227u, 1u, 1u), vec4<u32>(53354u, 31484u, 4294967295u, 11154u), vec4<u32>(51279u, 4294967295u, 0u, 0u), vec4<u32>(4294967295u, 44500u, 65872u, 0u), vec4<u32>(0u, 37819u, 0u, 6270u), vec4<u32>(4294967295u, 23079u, 27902u, 27996u), vec4<u32>(88287u, 0u, 39776u, 4294967295u));

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<i32>(0i, -65218i, 16155i), false, -104f), Struct_1(vec3<i32>(1i, i32(-2147483648), 28223i), false, -336f), Struct_1(vec3<i32>(37599i, 12282i, 33446i), true, 531f));

var<private> global3: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(0u, 9711u, 4294967295u), vec3<u32>(17290u, 4294967295u, 39102u), vec3<u32>(583u, 30223u, 4294967295u), vec3<u32>(80132u, 4294967295u, 53338u), vec3<u32>(4294967295u, 37104u, 1u), vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 1u, 86390u), vec3<u32>(14844u, 1u, 1u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(2949u, 1u, 45243u), vec3<u32>(0u, 17462u, 0u), vec3<u32>(1326u, 4294967295u, 25469u), vec3<u32>(1u, 41761u, 4294967295u), vec3<u32>(28089u, 0u, 19386u), vec3<u32>(3111u, 647u, 50100u), vec3<u32>(1u, 4214u, 0u), vec3<u32>(4294967295u, 13053u, 0u), vec3<u32>(4294967295u, 4294967295u, 5045u), vec3<u32>(4294967295u, 16996u, 1u), vec3<u32>(4294967295u, 4294967295u, 42596u), vec3<u32>(37404u, 4294967295u, 1u), vec3<u32>(21476u, 44443u, 1u), vec3<u32>(1u, 51005u, 30379u));

var<private> global4: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> bool {
    var var_0 = true;
    var var_1 = ~1u;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1254f, _wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(global0.x, global0.x, -635f)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -235f) + vec3<f32>(559f, 611f, 923f))))));
    var_0 = ((global0.x < -919f) != any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false)))) || true;
    global2 = array<Struct_1, 3>();
    return all(!select(vec4<bool>(all(vec3<bool>(true, false, true)), any(vec4<bool>(true, true, false, true)), any(vec2<bool>(true, true)), true), vec4<bool>(true, true, true, any(vec2<bool>(true, false))), global0.x < -119f));
}

fn func_4(arg_0: Struct_3) -> bool {
    var var_0 = 750u;
    var_0 = abs(_wgslsmith_div_u32(min(0u, countOneBits(~arg_0.c.x)), _wgslsmith_dot_vec2_u32(abs(select(arg_0.c.zw, arg_0.c.wy, true)), arg_0.c.zy)));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~arg_0.a, arg_0.c.x), 3u)];
    global0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -558f), -1000f, var_1.c)));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.c.x, arg_0.c.x), 3u)];
    return !(!(127f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-210f)))));
}

fn func_2() -> Struct_1 {
    var var_0 = ~u_input.b;
    let var_1 = ~abs(-8167i) == u_input.a.x;
    var var_2 = func_4(Struct_3(0u, func_3(), global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(943u, 1u, 39251u, 50078u), vec4<u32>(61990u, 4294967295u, 37106u, 15208u)), _wgslsmith_mod_u32(13836u, 1u), _wgslsmith_clamp_u32(7635u, 4294967295u, 48080u))), 31u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1719f, -1227f)) + vec3<f32>(718f, global0.x, global0.x))), global0.yx));
    let var_3 = Struct_2(Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a.xzw ^ vec3<i32>(-2147483647i, 54476i, -2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.b)), u_input.a.xwx), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-7855i, u_input.b, -2147483647i, 43098i) & ~u_input.a, u_input.a, ~abs(vec4<i32>(u_input.a.x, 47982i, u_input.a.x, -37412i))));
    global4 = _wgslsmith_clamp_u32(max(0u, 1u >> (min(1u, select(57642u, 4294967295u, var_3.a.b)) % 32u)), firstLeadingBit(1u), ~(~firstTrailingBit(1u)));
    return var_3.a;
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = Struct_2(func_2(), -(~(-vec4<i32>(-2147483647i, 15556i, -1i, 1i))) | -(vec4<i32>(-58045i, 21093i, -2147483647i, arg_0) >> (global1[_wgslsmith_index_u32(1u, 31u)] % vec4<u32>(32u))));
    global3 = array<vec3<u32>, 23>();
    global4 = ~max(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), ~(~vec2<u32>(4294967295u, 52239u))), ~(~94162u));
    var var_1 = Struct_3(~4510u, !var_0.a.b, vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(37081u, ~27269u), 94422u), _wgslsmith_sub_u32(~(~4294967295u), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 30509u, 19552u), countOneBits(global3[_wgslsmith_index_u32(1u, 23u)]))), ~_wgslsmith_clamp_u32(4815u, min(7585u, 76985u), _wgslsmith_div_u32(6475u, 12973u)), ~(~firstTrailingBit(1u))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, var_0.a.c, 348f))), vec3<f32>(global0.x, var_0.a.c, var_0.a.c), true)))))), global0.xx);
    let var_2 = var_0.a.c;
    return reverseBits(abs(_wgslsmith_mod_u32(var_1.c.x, ~70942u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 23>();
    let var_0 = _wgslsmith_mult_vec3_u32(global3[_wgslsmith_index_u32(select(func_1(select(18412i, u_input.b, any(vec3<bool>(true, false, false)))), 1u << (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(1u, 0u, 20571u, 50177u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 48224u, 46796u), global3[_wgslsmith_index_u32(24274u, 23u)])) % 32u), !any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true))), 23u)], ~vec3<u32>(abs(~1u), 89969u, firstLeadingBit(1u)));
    let var_1 = global2[_wgslsmith_index_u32(var_0.x, 3u)];
    var var_2 = Struct_2(func_2(), ~vec4<i32>(_wgslsmith_add_i32(0i, 2147483647i), var_1.a.x, min(u_input.b, 2147483647i) << (1u % 32u), ~var_1.a.x));
    global4 = countOneBits(73030u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(global0.xx)));
}

