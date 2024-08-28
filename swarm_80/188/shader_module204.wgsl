struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(278f, -446f, -1095f), true, vec4<f32>(-658f, 1558f, -821f, 527f), vec2<u32>(16628u, 4294967295u));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = select(select(select(vec2<bool>(global0.b | true, all(vec3<bool>(arg_1.b, false, arg_1.b))), select(select(vec2<bool>(true, true), vec2<bool>(arg_1.b, arg_1.b), global0.b), vec2<bool>(arg_0.b, false), !vec2<bool>(false, arg_0.b)), select(vec2<bool>(arg_1.b, global0.b), !vec2<bool>(arg_0.b, false), true)), vec2<bool>(false, all(select(vec4<bool>(global0.b, false, arg_1.b, false), vec4<bool>(true, global0.b, arg_1.b, arg_1.b), vec4<bool>(true, true, false, true)))), false), vec2<bool>(-591f == _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.x, 139f) * _wgslsmith_f_op_f32(-arg_1.c.x)), select(global0.b, false, (0u & arg_1.d.x) > ~global0.d.x)), select(vec2<bool>(false & any(vec2<bool>(arg_0.b, arg_1.b)), true), select(!select(vec2<bool>(arg_1.b, false), vec2<bool>(global0.b, arg_0.b), vec2<bool>(global0.b, true)), vec2<bool>(arg_1.b, true), !vec2<bool>(global0.b, global0.b)), false));
    var var_1 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_0.c.yyx + _wgslsmith_f_op_vec3_f32(-arg_1.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0.a.x, 575f)) * arg_0.a)), firstLeadingBit(-86971i), arg_1.a.x, Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.x, -854f, global0.a.x) * arg_0.c.xww))), global0.c.wyw, true)), (u_input.b < _wgslsmith_clamp_i32(0i, u_input.b, u_input.b)) & !(!arg_0.b), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(632f, -1546f, arg_0.c.x, arg_0.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, arg_1.c.x, global0.a.x, arg_0.a.x) - vec4<f32>(global0.a.x, global0.a.x, arg_1.a.x, global0.a.x)), any(var_0))))), ~global0.d), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(642f))), -256f, -1051f), !(!(!arg_1.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(443f, 500f, arg_0.a.x, 622f)), global0.c, select(select(vec4<bool>(arg_1.b, var_0.x, false, false), vec4<bool>(false, arg_0.b, false, arg_0.b), global0.b), vec4<bool>(false, arg_0.b, true, arg_1.b), vec4<bool>(true, true, true, arg_0.b)))), select(firstTrailingBit(arg_0.d) >> (vec2<u32>(20085u, global0.d.x) % vec2<u32>(32u)), min(vec2<u32>(u_input.a.x, arg_1.d.x), ~arg_0.d), global0.b)));
    var var_2 = select(vec2<i32>(-(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, -28589i, -3773i), vec3<i32>(0i, 2147483647i, 1i)) ^ (var_1.b & u_input.b)), _wgslsmith_dot_vec2_i32(~(vec2<i32>(2147483647i, -1i) >> (arg_1.d % vec2<u32>(32u))), vec2<i32>(-1i) * -vec2<i32>(2147483647i, u_input.b))), abs(vec2<i32>(var_1.b << (~arg_0.d.x % 32u), u_input.b >> (~36485u % 32u))), vec2<bool>(true, false));
    let var_3 = _wgslsmith_sub_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(~u_input.a, select(vec4<u32>(4294967295u, 33222u, 0u, global0.d.x), u_input.a, vec4<bool>(true, false, true, arg_1.b)))), u_input.a);
    let var_4 = vec3<bool>(arg_0.b, true, !(!(!var_0.x)));
    return _wgslsmith_div_vec2_u32(countOneBits(global0.d), vec2<u32>(51497u, 0u & _wgslsmith_add_u32(var_3.x, firstLeadingBit(4294967295u))));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-475f, global0.a.x))), global0.a.x, 1f)), global0.b, global0.c, vec2<u32>(1u, global0.d.x) << (_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(global0.d, ~vec2<u32>(0u, u_input.a.x)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yx) | ~global0.d) % vec2<u32>(32u)));
    let var_0 = firstLeadingBit(~abs(abs(func_3(Struct_1(global0.c.zxx, false, vec4<f32>(440f, 287f, global0.a.x, global0.a.x), global0.d), Struct_1(global0.c.zyw, global0.b, global0.c, vec2<u32>(1u, u_input.a.x))))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(step(global0.c.zzx, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-121f - global0.c.x), 859f, -708f))))), any(vec4<bool>(global0.b, all(vec2<bool>(global0.b, global0.b)), any(select(vec3<bool>(true, true, true), vec3<bool>(global0.b, global0.b, true), vec3<bool>(true, global0.b, global0.b))), global0.b)), global0.c, _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(var_0.x, u_input.a.x)), global0.d, u_input.a.ww >> (vec2<u32>(u_input.a.x, 37908u) % vec2<u32>(32u))), var_0, var_0), max(~global0.d, u_input.a.zz)));
    global0 = Struct_1(global0.a, all(select(!(!vec2<bool>(global0.b, true)), !(!vec2<bool>(true, global0.b)), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-200f, -144f, 190f, -534f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1239f, -1339f, 1621f, global0.a.x), global0.c, false)), vec4<f32>(1639f, global0.c.x, -656f, 535f)))), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(select(u_input.a, vec4<u32>(20509u, 0u, global0.d.x, global0.d.x), global0.b), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 0u, 21603u, u_input.a.x), vec4<u32>(var_0.x, 4294967295u, u_input.a.x, global0.d.x))), global0.d.x), _wgslsmith_add_u32(reverseBits(u_input.a.x), global0.d.x) & (~97634u >> (reverseBits(u_input.a.x) % 32u))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(global0.c.x * 292f), global0.a.x)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(global0.a, vec3<f32>(-1264f, global0.a.x, 1085f)), _wgslsmith_div_vec3_f32(global0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1103f, global0.a.x, global0.c.x)))))), any(vec2<bool>(global0.b, false)), _wgslsmith_f_op_vec4_f32(exp2(global0.c)), ~var_0);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-196f, _wgslsmith_f_op_f32(f32(-1f) * -1752f)), -449f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x - global0.a.x)))), false, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(global0.c.x, -288f, global0.c.x, global0.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, 2719f, -671f, global0.a.x) - vec4<f32>(global0.a.x, -1196f, global0.a.x, global0.c.x))))))), global0.d);
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    global0 = arg_2.e;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(632f)), _wgslsmith_f_op_f32(-arg_1.x)), arg_2.d.c.x) * 549f));
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-var_0)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), var_0), arg_1.x), arg_2.c), true && !arg_2.e.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(arg_2.c)), arg_2.c, global0.c.x, -332f)), arg_2.e.d);
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a), global0.b, vec4<f32>(1229f, -341f, 939f, _wgslsmith_f_op_f32(ceil(-192f))), ~_wgslsmith_div_vec2_u32(~max(vec2<u32>(0u, 20127u), arg_2.e.d), u_input.a.xz));
    global0 = arg_2.e;
    return func_2();
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_2 {
    global0 = func_1(global0.a.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1105f + func_2().a.x) - arg_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1906f - 882f))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, arg_1.a.x, -2403f)))), 1i, -1129f, Struct_1(func_1(293f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, arg_1.c.x)), Struct_2(vec3<f32>(arg_1.a.x, 647f, global0.c.x), 2147483647i, arg_1.c.x, arg_1, Struct_1(vec3<f32>(-1378f, arg_1.a.x, -770f), true, vec4<f32>(global0.a.x, arg_1.c.x, -536f, -441f), global0.d))).c.zzz, true, vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(floor(-154f)), -488f, arg_1.c.x), vec2<u32>(17430u | u_input.a.x, 1u)), arg_1));
    var var_0 = u_input.a.x;
    let var_1 = 24284i;
    return Struct_2(arg_1.c.zxz, _wgslsmith_dot_vec3_i32(vec3<i32>(abs(u_input.b), u_input.b, -15778i), select(~arg_2, -vec3<i32>(u_input.b, arg_0, -25027i), vec3<bool>(false, true, false)) & -vec3<i32>(arg_0, arg_0, 25172i)), 1829f, arg_1, arg_1);
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = ~firstLeadingBit(u_input.a.zz);
    return func_4(~(-2147483647i), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-469f, arg_0, global0.c.x) * func_2().a), global0.a)), !(!global0.b || arg_2.e.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1012f, arg_2.d.c.x, global0.c.x, global0.a.x))), arg_2.e.c) + func_4(~u_input.b, arg_2.e, vec3<i32>(arg_2.b, -36598i, -1i)).d.c), arg_2.d.d), vec3<i32>(-_wgslsmith_add_i32(~u_input.b, firstLeadingBit(arg_2.b)), firstTrailingBit(-_wgslsmith_sub_i32(u_input.b, u_input.b)), firstTrailingBit(min(1i, arg_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a), global0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.a.x, 557f, _wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(sign(global0.a.x)), false)))), abs(vec2<u32>(66829u, _wgslsmith_mult_u32(~u_input.a.x, 1u))));
    let var_1 = func_5(_wgslsmith_f_op_f32(f32(-1f) * -892f), -80588i, func_4(firstLeadingBit(_wgslsmith_clamp_i32(36152i, 0i, 0i)) << (min(var_0.d.x, _wgslsmith_add_u32(u_input.a.x, var_0.d.x)) % 32u), func_1(-1172f, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, 728f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-347f, global0.a.x))), Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 602f, var_0.a.x), var_0.c.yyx, vec3<bool>(var_0.b, var_0.b, true))), 5951i, _wgslsmith_f_op_f32(f32(-1f) * -395f), Struct_1(var_0.c.xxx, false, vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, -461f), u_input.a.xz), Struct_1(vec3<f32>(global0.a.x, global0.a.x, var_0.c.x), false, vec4<f32>(1932f, global0.a.x, var_0.a.x, 1726f), global0.d))), _wgslsmith_add_vec3_i32(vec3<i32>(~5470i, 1i, u_input.b), countOneBits(-vec3<i32>(-75192i, u_input.b, u_input.b)))));
    var var_2 = vec4<u32>(var_0.d.x, ~abs(global0.d.x ^ ~var_1.d.d.x), var_1.d.d.x << (func_2().d.x % 32u), func_1(var_1.d.c.x, func_5(-1000f, reverseBits(~var_1.b), Struct_2(_wgslsmith_f_op_vec3_f32(var_1.d.a - var_0.a), -var_1.b, _wgslsmith_div_f32(var_0.c.x, -871f), Struct_1(vec3<f32>(-1917f, var_0.a.x, -151f), var_1.e.b, global0.c, vec2<u32>(global0.d.x, u_input.a.x)), Struct_1(global0.c.www, var_1.d.b, global0.c, u_input.a.xz))).d.a.zz, func_5(-1318f, _wgslsmith_mod_i32(var_1.b, var_1.b) << (1u % 32u), var_1)).d.x);
    var_0 = var_1.d;
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.x, 998f, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1876f + var_1.c) * global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.e.a.x)))), var_0.c.x), var_1.e.b && func_2().b, _wgslsmith_f_op_vec4_f32(-func_1(var_1.d.c.x, vec2<f32>(705f, -1263f), func_5(global0.a.x, var_1.b, func_5(-694f, -9127i, Struct_2(global0.c.zyx, -1i, global0.a.x, Struct_1(var_1.e.c.xzz, true, vec4<f32>(var_0.c.x, -823f, -1537f, global0.a.x), var_1.e.d), Struct_1(global0.a, false, vec4<f32>(global0.a.x, -442f, -1000f, var_1.d.c.x), vec2<u32>(var_2.x, 1u)))))).c), ~vec2<u32>((0u ^ global0.d.x) << (_wgslsmith_clamp_u32(global0.d.x, 4294967295u, 1u) % 32u), ~2592u));
    var var_3 = !(!var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(~(~(vec3<i32>(var_1.b, 7935i, 1i) | vec3<i32>(var_1.b, var_1.b, 76834i))), ~firstTrailingBit(~vec3<i32>(u_input.b, -2147483647i, u_input.b))));
}

