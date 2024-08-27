struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    var var_0 = select(vec4<bool>(any(!vec2<bool>(global1.b, false)), global1.b, (u_input.c << (0u % 32u)) <= -2147483647i, arg_0.x & false), select(!select(select(vec4<bool>(arg_0.x, global1.c, global1.b, false), vec4<bool>(arg_0.x, false, false, global1.c), global1.b), select(vec4<bool>(arg_0.x, arg_0.x, global1.b, true), vec4<bool>(true, false, false, true), arg_0.x), vec4<bool>(global1.b, false, false, arg_0.x)), select(vec4<bool>(true, true, true, select(global1.b, true, global1.c)), !vec4<bool>(false, arg_0.x, false, false), 27864u > _wgslsmith_dot_vec2_u32(vec2<u32>(global1.e.x, 35989u), global1.e.yy)), any(vec4<bool>(!arg_0.x, global1.e.x <= u_input.e, true, true))), select(vec4<bool>(u_input.d.x >= global0[_wgslsmith_index_u32(~global1.e.x, 28u)], global1.b, all(select(arg_0, arg_0, arg_0.x)), true), select(select(vec4<bool>(global1.c, false, arg_0.x, arg_0.x), vec4<bool>(true, true, true, true), 951f != global1.a), vec4<bool>(false, true, false, global1.b), !arg_0.x), select(select(!vec4<bool>(true, false, arg_0.x, global1.c), !vec4<bool>(false, arg_0.x, true, global1.c), global1.c), select(select(vec4<bool>(false, false, global1.c, global1.b), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), true), select(vec4<bool>(false, false, arg_0.x, arg_0.x), vec4<bool>(true, true, global1.b, true), vec4<bool>(global1.b, global1.b, arg_0.x, true)), vec4<bool>(false, global1.b, false, true)), true)));
    let var_1 = abs(select(vec3<i32>(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, u_input.a.x, ~0i), 1i, ~2147483647i), -firstTrailingBit(u_input.a), (global0[_wgslsmith_index_u32(abs(4294967295u), 28u)] < abs(1i)) && global1.b));
    let var_2 = -2147483647i;
    global0 = array<i32, 28>();
    let var_3 = _wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.e.x, u_input.e), global1.e.wy), 28u)], _wgslsmith_add_i32(var_1.x, global0[_wgslsmith_index_u32(global1.e.x, 28u)]), _wgslsmith_dot_vec2_i32(var_1.yx, var_1.zy)) ^ _wgslsmith_sub_vec3_i32(u_input.d & vec3<i32>(-42986i, var_1.x, 19294i), var_1), _wgslsmith_div_vec3_i32(vec3<i32>(abs(var_1.x), -38791i, -25213i), select(countOneBits(vec3<i32>(var_1.x, -1i, var_1.x)), vec3<i32>(var_2, 42129i, var_2), var_0.yzx))) << (global1.e.wwx % vec3<u32>(32u));
    return 1565f;
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_u32(global1.e.xw, global1.e.zx);
    global1 = Struct_1(_wgslsmith_div_f32(319f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) - _wgslsmith_f_op_f32(global1.a + global1.a))), ((_wgslsmith_sub_i32(-23209i, arg_0) > global0[_wgslsmith_index_u32(0u, 28u)]) & true) | false, any(select(vec2<bool>(true, 1000f >= global1.a), vec2<bool>(false, !arg_1), (1u | var_0.x) > _wgslsmith_mod_u32(u_input.e, u_input.e))), vec2<f32>(global1.a, 412f), vec4<u32>(u_input.e, select(u_input.e, var_0.x, global1.c), global1.e.x, 10446u));
    var var_1 = Struct_1(_wgslsmith_div_f32(776f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-168f)))))), true, (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-546f - 751f) + _wgslsmith_f_op_f32(func_3(vec2<bool>(global1.c, false)))) <= _wgslsmith_f_op_f32(-1000f * 1595f)) && true, global1.d, ~(~vec4<u32>(global1.e.x, _wgslsmith_dot_vec4_u32(global1.e, vec4<u32>(global1.e.x, 47271u, 8112u, 22892u)), abs(0u), u_input.e)));
    global0 = array<i32, 28>();
    let var_2 = abs(global1.e.x) << (var_1.e.x % 32u);
    return Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_1.d.x, -858f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.d.x))), -1000f)), any(select(vec4<bool>(false, false, var_1.c, global1.c), vec4<bool>(arg_1, true, true, global1.b), vec4<bool>(false, arg_1, arg_1, arg_1))))), arg_1 & !(1i < global0[_wgslsmith_index_u32(~var_0.x, 28u)]), arg_1, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.a)), _wgslsmith_f_op_f32(860f + var_1.a)), 1586f)), var_1.d.x), select(~(~reverseBits(global1.e)), ~vec4<u32>(53227u, 4294967295u, var_0.x, var_1.e.x), !(!select(vec4<bool>(var_1.c, false, global1.c, true), vec4<bool>(false, arg_1, arg_1, global1.c), vec4<bool>(global1.c, false, global1.c, true)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_u32(~func_2(2554i, !(!arg_1.c)).e.yx, ~vec2<u32>(20997u, ~_wgslsmith_sub_u32(global1.e.x, 35645u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(200f, global1.d.x));
    var var_2 = ~((~vec4<i32>(arg_2, 64759i, arg_3.x, arg_3.x) | -vec4<i32>(arg_2, arg_2, -2147483647i, global0[_wgslsmith_index_u32(var_0.x, 28u)])) >> (vec4<u32>(abs(2198u), ~4294967295u, var_0.x, 56908u) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_i32(vec4<i32>((i32(-1i) * -19423i) & arg_2, u_input.c, 1i, ~_wgslsmith_sub_i32(1i, 37625i)), vec4<i32>(_wgslsmith_mod_i32(1i, -14153i), 0i, arg_2, _wgslsmith_dot_vec3_i32(u_input.d, arg_3)) & -(~vec4<i32>(arg_3.x, u_input.b, 2147483647i, -2147483647i)));
    var var_3 = Struct_1(-125f, !select(arg_1.c, arg_1.c, global1.b & (arg_1.b == true)), !arg_1.b, _wgslsmith_f_op_vec2_f32(global1.d + global1.d), abs(_wgslsmith_mult_vec4_u32(~arg_1.e, _wgslsmith_clamp_vec4_u32(global1.e, vec4<u32>(u_input.e, u_input.e, var_0.x, 1u), global1.e)) | ~(~arg_1.e)));
    var var_4 = ~global1.e.xz;
    return func_2(-arg_2, global1.b);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = var_0;
    let var_2 = 5350u;
    let var_3 = 1u;
    global1 = Struct_1(var_0.a, any(select(select(!vec4<bool>(var_1.b, false, arg_1.c, var_1.b), vec4<bool>(true, true, true, true), !var_1.c), select(!vec4<bool>(arg_2.c, true, var_0.b, false), !vec4<bool>(true, true, false, var_0.b), var_1.c), select(vec4<bool>(var_0.c, global1.c, false, false), !vec4<bool>(var_0.c, true, var_1.b, var_1.c), true))), any(vec3<bool>(!global1.b, true, var_0.c)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(var_1.d, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_1.d - vec2<f32>(-1251f, -408f)), _wgslsmith_f_op_vec2_f32(var_1.d * vec2<f32>(-292f, arg_1.a)), vec2<bool>(arg_1.b, arg_2.b)))))), arg_0);
    return func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, -1593f, var_1.a) + vec3<f32>(arg_1.a, 296f, arg_1.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-513f, 1302f, -284f) - vec3<f32>(global1.d.x, var_1.a, global1.a)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2139f, 826f, 1000f))))) * vec3<f32>(arg_2.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.a * 457f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(floor(308f))))), var_1, _wgslsmith_add_i32(1i, _wgslsmith_mod_i32(-2147483647i, -2147483647i)), min(~(select(u_input.d, vec3<i32>(-2147483647i, u_input.b, 0i), vec3<bool>(false, true, arg_1.c)) | u_input.a), ~(vec3<i32>(0i, 37377i, 1i) ^ u_input.d) & vec3<i32>(2147483647i << (var_3 % 32u), i32(-1i) * -45062i, i32(-1i) * -25174i)));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<u32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(221f * func_5(arg_1.e, arg_1, func_2(u_input.b, true), ~_wgslsmith_mod_vec4_u32(vec4<u32>(86858u, 1u, 1u, 4294967295u), vec4<u32>(u_input.e, arg_1.e.x, 5349u, arg_2.x))).a), true, arg_1.c, arg_0.zx, firstTrailingBit(global1.e));
    let var_1 = -(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(-12164i, 0i)), vec2<i32>(_wgslsmith_mult_i32(u_input.b, 20685i), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 3382u), 28u)])) ^ ~vec2<i32>(global0[_wgslsmith_index_u32(1u, 28u)], ~(-2147483647i)));
    var var_2 = vec3<u32>(firstLeadingBit(arg_2.x), 1u, arg_1.e.x);
    var var_3 = 2147483647i;
    let var_4 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i, max(global0[_wgslsmith_index_u32(78363u, 28u)], var_1.x)), -global0[_wgslsmith_index_u32(1u, 28u)], var_1.x) & -22225i, 39079i);
    return u_input.e;
}

fn func_1() -> Struct_1 {
    var var_0 = (~select(u_input.e, select(99268u, 4294967295u, true), false) & 0u) | func_6(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.a, 505f, 1382f), vec3<f32>(881f, -1100f, global1.d.x))))), func_5(firstLeadingBit(max(global1.e, vec4<u32>(global1.e.x, global1.e.x, global1.e.x, u_input.e))), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-311f, global1.a, 468f) - vec3<f32>(global1.d.x, -289f, global1.d.x)), func_2(-1i, global1.b), _wgslsmith_clamp_i32(u_input.d.x, -2147483647i, global0[_wgslsmith_index_u32(4294967295u, 28u)]), u_input.a ^ vec3<i32>(global0[_wgslsmith_index_u32(global1.e.x, 28u)], -36657i, u_input.c)), Struct_1(_wgslsmith_f_op_f32(-global1.a), false, any(vec2<bool>(global1.b, true)), global1.d, countOneBits(global1.e)), ~(~vec4<u32>(4294967295u, u_input.e, 4294967295u, 62199u))), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 113591u, 60056u, global1.e.x ^ 0u), select(vec4<u32>(u_input.e, 18978u, 47744u, global1.e.x), vec4<u32>(4294967295u, 1u, 36044u, global1.e.x) << (global1.e % vec4<u32>(32u)), select(vec4<bool>(global1.b, true, true, false), vec4<bool>(true, false, global1.b, global1.b), global1.b))));
    var_0 = ~1u;
    var_0 = u_input.e;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(355f, _wgslsmith_f_op_f32(step(1389f, -1599f)), any(!vec2<bool>(false, global1.c)))), global1.d.x, -657f);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(188f * global1.a)), global1.b, func_2(reverseBits(35352i), !(false & (16863i > u_input.a.x))).c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.x, -492f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(810f, 1127f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-553f, global1.a) - _wgslsmith_f_op_vec2_f32(floor(global1.d)))), _wgslsmith_f_op_vec2_f32(global1.d + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1022f, 184f) * _wgslsmith_div_vec2_f32(vec2<f32>(-2359f, var_1.x), vec2<f32>(-1297f, var_1.x))))), vec4<u32>(global1.e.x, ~countOneBits(global1.e.x), 6421u, 1u));
    return Struct_1(_wgslsmith_f_op_f32(func_3(select(select(vec2<bool>(global1.c, true), vec2<bool>(false, true), select(vec2<bool>(var_2.b, var_2.c), vec2<bool>(var_2.b, var_2.c), global1.b)), !vec2<bool>(true, var_2.b), func_4(var_1, Struct_1(255f, true, var_2.b, var_2.d, vec4<u32>(u_input.e, 4294967295u, var_2.e.x, var_2.e.x)), global0[_wgslsmith_index_u32(0u, 28u)], vec3<i32>(8149i, u_input.d.x, u_input.a.x)).b | true))), var_2.c, ~0i < select(-2147483647i, u_input.b, !(!global1.c)), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.a, -1196f, -245f), vec3<f32>(-221f, var_1.x, -1000f)), _wgslsmith_f_op_vec3_f32(var_1 * vec3<f32>(-530f, var_1.x, -1097f)), select(vec3<bool>(true, global1.c, var_2.c), vec3<bool>(false, true, global1.c), vec3<bool>(true, true, var_2.b)))), func_2(global0[_wgslsmith_index_u32(func_6(vec3<f32>(global1.a, global1.a, 622f), Struct_1(-596f, false, false, vec2<f32>(465f, var_2.a), var_2.e), var_2.e), 28u)], global1.b), countOneBits(-u_input.c), vec3<i32>(_wgslsmith_mod_i32(1i, global0[_wgslsmith_index_u32(3725u, 28u)]), u_input.d.x, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(39138u, 28u)], -69305i))).d * var_1.yz), vec4<u32>(var_2.e.x, ~u_input.e, var_2.e.x, func_2(-select(global0[_wgslsmith_index_u32(var_2.e.x, 28u)], global0[_wgslsmith_index_u32(0u, 28u)], false), false).e.x));
}

fn func_7(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: u32) -> Struct_1 {
    global1 = arg_0;
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.yzz * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.ywz, vec3<f32>(-1963f, global1.d.x, global1.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_1.www)))), func_2(firstTrailingBit(-(~0i)), global1.b), u_input.d.x, arg_2).e.x;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(-775f * arg_1.x)) + -186f) + -1390f)));
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, arg_0.a))), var_1), func_1().c, (arg_3 != firstLeadingBit(22232u)) && true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -547f))), vec4<u32>(0u, u_input.e, arg_0.e.x, 1u));
    global1 = func_5(select(vec4<u32>(var_2.e.x, u_input.e, 1u, var_0), countOneBits(var_2.e), vec4<bool>(var_2.b, true, false, arg_0.b & global1.c)) | abs(vec4<u32>(~global1.e.x, var_0, arg_0.e.x << (var_2.e.x % 32u), 1u)), Struct_1(_wgslsmith_div_f32(func_4(arg_1.xzy, func_4(arg_1.wyw, arg_0, -86612i, u_input.d), ~u_input.d.x, vec3<i32>(0i, 2147483647i, global0[_wgslsmith_index_u32(var_2.e.x, 28u)])).a, var_2.a), true, true, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(arg_1.xy, var_2.d)))), ~(vec4<u32>(1u, u_input.e, var_2.e.x, 1u) & global1.e)), func_2(_wgslsmith_dot_vec3_i32(arg_2, u_input.d), global1.b), vec4<u32>(arg_3, _wgslsmith_mult_u32(u_input.e, 26954u) & func_5(var_2.e, arg_0, arg_0, var_2.e).e.x, ~(~arg_0.e.x), 1u) << (vec4<u32>(_wgslsmith_clamp_u32(~4294967295u, reverseBits(arg_3), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_3), vec2<u32>(global1.e.x, 1u))), arg_3, abs(26368u), ~(~29654u)) % vec4<u32>(32u)));
    return func_5(vec4<u32>(countOneBits(max(1u, 34551u)) ^ arg_0.e.x, 21844u, 1u >> ((var_2.e.x ^ ~17352u) % 32u), ~global1.e.x >> ((0u | arg_0.e.x) % 32u)), arg_0, func_2(-5282i, arg_0.c), var_2.e);
}

fn func_8(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_f_op_f32(sign(-1364f)), any(vec3<bool>(true, func_5(arg_1.e, arg_2, Struct_1(arg_2.a, true, false, arg_2.d, global1.e), arg_1.e).c, true)), false, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(func_5(vec4<u32>(0u, u_input.e, 1u, 4294967295u), Struct_1(127f, false, arg_2.b, vec2<f32>(1004f, arg_1.a), vec4<u32>(arg_1.e.x, arg_2.e.x, global1.e.x, arg_1.e.x)), Struct_1(-427f, arg_1.b, true, arg_1.d, global1.e), vec4<u32>(u_input.e, arg_1.e.x, arg_2.e.x, 39282u)).d.x - arg_1.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.d.x - -540f)))))), arg_1.e);
    let var_0 = select(arg_1.e.yzw, ~vec3<u32>(1702u, ~global1.e.x, 39562u), !arg_0.wxy) << (min(vec3<u32>(4294967295u, select(4294967295u, 4294967295u, arg_2.c), 1u) & abs(select(vec3<u32>(arg_1.e.x, 5159u, u_input.e), global1.e.wxw, vec3<bool>(true, arg_1.b, arg_1.b))), arg_2.e.wzw << (~(arg_2.e.wzw << (vec3<u32>(91743u, arg_1.e.x, arg_1.e.x) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = u_input.e & 1u;
    let var_2 = -248f;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.d.x)) - _wgslsmith_div_f32(-425f, arg_1.d.x)), var_2)), false, true, _wgslsmith_f_op_vec2_f32(select(global1.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1064f, 1000f), arg_1.d)), _wgslsmith_f_op_vec2_f32(-arg_1.d)) * arg_2.d), func_2(firstTrailingBit(abs(-1i)), all(arg_0)).c)), ~vec4<u32>(max(global1.e.x, ~29757u), 4294967295u, ~_wgslsmith_mult_u32(4333u, u_input.e), global1.e.x));
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -976f), false, true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(func_7(Struct_1(var_3.d.x, arg_2.c, arg_1.b, global1.d, arg_1.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.x, -1000f, arg_2.d.x, -483f) + vec4<f32>(arg_1.d.x, arg_2.d.x, -1300f, arg_2.d.x)), vec3<i32>(1i, 99471i, u_input.c), firstTrailingBit(global1.e.x)).d)) - arg_1.d), ~arg_2.e);
}

fn func_9(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = 0i;
    var var_1 = vec3<bool>(arg_0.c, func_8(!(!select(vec4<bool>(true, arg_0.b, true, true), vec4<bool>(false, true, arg_0.c, global1.c), vec4<bool>(false, false, true, false))), Struct_1(_wgslsmith_f_op_f32(step(-715f, _wgslsmith_f_op_f32(select(-598f, global1.d.x, true)))), (u_input.b >= u_input.b) | any(vec3<bool>(arg_0.b, arg_0.b, true)), global1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(249f, -339f) + vec2<f32>(global1.a, 152f))), ~(vec4<u32>(1u, 4294967295u, 46992u, global1.e.x) | arg_0.e)), arg_0).b, any(!(!vec4<bool>(arg_0.b, global1.c, arg_0.c, true))) | !all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))));
    var var_2 = -max(-49196i, 1i);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1637f), global1.b, func_7(func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(551f, 185f, -2433f, -424f) * vec4<f32>(-1197f, global1.d.x, global1.a, global1.d.x)) - vec4<f32>(-862f, global1.d.x, global1.d.x, arg_0.a))), u_input.d, 1u).c, _wgslsmith_f_op_vec2_f32(select(arg_0.d, func_4(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.d.x, global1.a, arg_0.a))), arg_0, _wgslsmith_mult_i32(max(global0[_wgslsmith_index_u32(arg_0.e.x, 28u)], global0[_wgslsmith_index_u32(u_input.e, 28u)]), ~global0[_wgslsmith_index_u32(39539u, 28u)]), vec3<i32>(2147483647i, ~32092i, -2147483647i)).d, false)), _wgslsmith_mod_vec4_u32(vec4<u32>(abs(_wgslsmith_mult_u32(1u, 12583u)), _wgslsmith_div_u32(arg_0.e.x, ~0u), 0u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(global1.e.x, 40270u), 0u)), (global1.e >> (vec4<u32>(global1.e.x, 1u, 87573u, arg_0.e.x) % vec4<u32>(32u))) << (arg_0.e % vec4<u32>(32u))));
    return vec3<i32>(~u_input.b, ~47924i, _wgslsmith_sub_i32(~_wgslsmith_mult_i32(2147483647i, global0[_wgslsmith_index_u32(13664u, 28u)] ^ 52815i), firstLeadingBit(_wgslsmith_clamp_i32(u_input.d.x, reverseBits(u_input.b), -global0[_wgslsmith_index_u32(u_input.e, 28u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec3_i32(select(select(u_input.a, vec3<i32>(-25150i, -2147483647i, 0i), select(vec3<bool>(global1.b, global1.b, global1.c), vec3<bool>(global1.b, global1.c, true), global1.c)), vec3<i32>(abs(20126i), 1i, global0[_wgslsmith_index_u32(global1.e.x, 28u)]), global1.b), _wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, global0[_wgslsmith_index_u32(global1.e.x, 28u)], u_input.c), vec3<i32>(u_input.b, -u_input.d.x, _wgslsmith_mult_i32(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 28u)]))));
    var_0 = func_9(func_8(!select(vec4<bool>(global1.c, global1.b, global1.b, true), vec4<bool>(true, true, false, global1.b), false), func_7(func_1(), vec4<f32>(global1.a, global1.a, -397f, global1.d.x), ~vec3<i32>(51524i, 0i, 60828i), reverseBits(global1.e.x)), func_5(~global1.e, func_5(vec4<u32>(1u, global1.e.x, 24650u, 4294967295u), Struct_1(global1.a, true, global1.b, global1.d, vec4<u32>(u_input.e, global1.e.x, global1.e.x, 31377u)), Struct_1(-980f, false, false, vec2<f32>(global1.a, 1000f), global1.e), global1.e), Struct_1(-410f, global1.b, true, vec2<f32>(282f, 1309f), global1.e), vec4<u32>(u_input.e, 4294967295u, global1.e.x, 0u)))) ^ _wgslsmith_mod_vec3_i32(-_wgslsmith_div_vec3_i32(-vec3<i32>(-1i, var_0.x, 20086i), -vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 28u)], -14520i)), vec3<i32>(11789i, -2147483647i, var_0.x));
    let var_1 = u_input.e;
    var_0 = vec3<i32>(~_wgslsmith_div_i32(~(~var_0.x), -15648i), abs(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_clamp_i32(24244i, u_input.d.x, u_input.c)) >> (func_5(vec4<u32>(1u, 0u, u_input.e, var_1), Struct_1(global1.a, false, global1.c, vec2<f32>(global1.d.x, global1.a), global1.e), func_5(vec4<u32>(4294967295u, 13888u, 2824u, 8732u), Struct_1(-1176f, true, global1.c, vec2<f32>(global1.a, 490f), global1.e), Struct_1(-477f, true, true, vec2<f32>(526f, global1.d.x), vec4<u32>(77772u, var_1, 1u, 52050u)), global1.e), ~global1.e).e.x % 32u)), 1i);
    let var_2 = Struct_1(-1294f, true, func_8(select(select(vec4<bool>(global1.b, global1.b, true, false), vec4<bool>(global1.b, global1.b, global1.b, false), vec4<bool>(false, global1.b, global1.b, true)), !vec4<bool>(global1.b, global1.c, true, global1.c), global1.c), func_5(global1.e ^ global1.e, Struct_1(global1.d.x, global1.b, global1.c, vec2<f32>(global1.d.x, global1.a), global1.e), Struct_1(global1.a, false, global1.b, vec2<f32>(global1.a, -869f), vec4<u32>(4294967295u, global1.e.x, 4012u, 1u)), vec4<u32>(81400u, var_1, var_1, global1.e.x)), func_2(~u_input.d.x, u_input.a.x == global0[_wgslsmith_index_u32(1u, 28u)])).b != all(select(select(vec3<bool>(global1.b, global1.c, false), vec3<bool>(true, global1.b, true), vec3<bool>(false, false, true)), !vec3<bool>(global1.c, true, global1.c), !vec3<bool>(true, global1.b, global1.b))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)), -782f), vec4<u32>(1u, ~((0u & u_input.e) << (4294967295u % 32u)), u_input.e, 0u));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, func_7(func_5(vec4<u32>(var_2.e.x, 1u, global1.e.x, var_1), Struct_1(-180f, var_3, true, vec2<f32>(var_2.a, var_2.a), global1.e), var_2, var_2.e), vec4<f32>(-1000f, 979f, 1412f, -435f), ~vec3<i32>(global0[_wgslsmith_index_u32(11925u, 28u)], -1i, u_input.d.x), ~0u).d.x, -2102f)), _wgslsmith_div_u32(~global1.e.x, var_1), _wgslsmith_add_vec3_u32(global1.e.xxx, _wgslsmith_sub_vec3_u32(func_2(global0[_wgslsmith_index_u32(0u, 28u)], true).e.yyy, vec3<u32>(var_1 & 1u, u_input.e | var_1, _wgslsmith_mult_u32(global1.e.x, global1.e.x)))));
}

