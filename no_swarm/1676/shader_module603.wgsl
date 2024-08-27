struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(6932i, -54561i);

var<private> global1: vec4<f32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<u32>) -> vec3<i32> {
    global1 = vec4<f32>(-747f, global1.x, global1.x, 1000f);
    let var_0 = false;
    var var_1 = vec4<bool>(any(!(!vec2<bool>(true, arg_0))), 53026u < (_wgslsmith_mult_u32(40749u, ~arg_2.x) >> (~4294967295u % 32u)), true, !(global1.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(744f - -860f))));
    let var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(select(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 10436u), vec4<u32>(u_input.a.x, u_input.c.x, 0u, u_input.c.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, arg_2.x, 4294967295u, u_input.c.x), vec4<u32>(arg_2.x, 18952u, 2870u, arg_2.x)), vec4<bool>(var_0, true, true, any(vec2<bool>(true, arg_0)))), vec4<u32>(u_input.a.x, reverseBits(~u_input.a.x), _wgslsmith_add_u32(7336u, select(u_input.c.x, u_input.c.x, false)), ~u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.a.x, ~1u, 40326u, _wgslsmith_clamp_u32(0u, u_input.c.x, 82410u)), reverseBits(vec4<u32>(u_input.a.x, 1u, 5406u, u_input.a.x)) << ((vec4<u32>(arg_2.x, 0u, u_input.a.x, u_input.a.x) & vec4<u32>(arg_2.x, u_input.a.x, 4294967295u, 4294967295u)) % vec4<u32>(32u))) >> (reverseBits(abs(vec4<u32>(35735u, arg_2.x, 4294967295u, u_input.c.x))) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(~firstTrailingBit(u_input.c.x), 0u, 4294967295u, reverseBits(~arg_2.x)), firstTrailingBit(vec4<u32>(arg_2.x, ~0u, u_input.c.x, arg_2.x))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 760f, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))) * _wgslsmith_f_op_vec4_f32(-arg_1)));
    return vec3<i32>(u_input.b, u_input.b, -11742i);
}

fn func_2(arg_0: vec4<f32>) -> Struct_4 {
    var var_0 = vec3<bool>(true, true, true);
    var var_1 = Struct_3(-8224i, Struct_1(-u_input.d, 318f), _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(-global0.x, 11723i, -2147483647i)), func_3(false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1005f, -1400f, 1392f)), u_input.a.yx)), -_wgslsmith_dot_vec2_i32(vec2<i32>(func_3(var_0.x, arg_0, vec2<u32>(20320u, 28722u)).x, -1i), ~(~vec2<i32>(global0.x, global0.x))), Struct_1(_wgslsmith_div_i32(countOneBits(-2147483647i) | global0.x, i32(-1i) * -global0.x), 1000f));
    let var_2 = 1u;
    let var_3 = arg_0.wzx;
    var_1 = Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -select(var_1.c, vec3<i32>(1i, global0.x, -1i), false), -var_1.c), var_1.e, max(var_1.c, -vec3<i32>(_wgslsmith_dot_vec3_i32(var_1.c, vec3<i32>(27253i, -20829i, u_input.d)), abs(var_1.b.a), 15879i)), -1i, var_1.e);
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-271f, -383f))), vec3<u32>(reverseBits(_wgslsmith_sub_u32(~var_2, u_input.c.x | 59887u)), ~abs(18506u & var_2), abs(3062u)), false, Struct_2(arg_0, arg_0.x, Struct_1(global0.x, _wgslsmith_f_op_f32(-var_3.x))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_2.a)))))).d;
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c.b, 385f, -460f, -257f), var_0.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.b, -1000f, var_0.a.x, 884f) * vec4<f32>(arg_1.x, -1000f, arg_0.a, var_0.c.b))) + _wgslsmith_f_op_vec4_f32(min(arg_2.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(462f, var_0.b, var_0.c.b, arg_2.a.x)))))).d.c);
    var var_1 = vec3<bool>(arg_0.c, (_wgslsmith_dot_vec4_i32(~vec4<i32>(global0.x, u_input.b, 1i, global0.x), vec4<i32>(arg_0.d.c.a, 14341i, 0i, 547i)) << (max(17068u, arg_0.b.x) % 32u)) >= (~arg_2.c.a ^ ~(-21162i)), !(!arg_0.c));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d.a.xx + _wgslsmith_f_op_vec2_f32(var_0.a.xy * vec2<f32>(arg_0.d.c.b, -1182f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.a.xy * vec2<f32>(-376f, arg_0.a)) + vec2<f32>(arg_2.b, -807f))), _wgslsmith_f_op_vec2_f32(-global1.yw))) - global1.zy);
    var_1 = select(select(!select(!vec3<bool>(var_1.x, false, arg_0.c), !vec3<bool>(var_1.x, arg_0.c, arg_0.c), select(vec3<bool>(arg_0.c, true, false), vec3<bool>(arg_0.c, arg_0.c, arg_0.c), var_1.x)), !select(!vec3<bool>(var_1.x, false, true), select(vec3<bool>(false, true, false), vec3<bool>(arg_0.c, arg_0.c, false), vec3<bool>(var_1.x, arg_0.c, arg_0.c)), arg_0.c), !(!vec3<bool>(arg_0.c, var_1.x, arg_0.c))), select(!select(!vec3<bool>(arg_0.c, false, true), vec3<bool>(var_1.x, arg_0.c, var_1.x), vec3<bool>(false, var_1.x, true)), !select(select(vec3<bool>(arg_0.c, arg_0.c, var_1.x), vec3<bool>(false, var_1.x, arg_0.c), arg_0.c), !vec3<bool>(arg_0.c, false, var_1.x), var_1.x & false), select(arg_0.b.x, ~44570u, 2214f == var_0.b) > _wgslsmith_dot_vec3_u32(~u_input.c, vec3<u32>(u_input.c.x, 30743u, 55118u))), select(select(select(!vec3<bool>(arg_0.c, arg_0.c, var_1.x), select(vec3<bool>(arg_0.c, arg_0.c, var_1.x), vec3<bool>(false, arg_0.c, arg_0.c), arg_0.c), arg_0.c), !vec3<bool>(var_1.x, true, true), false && !arg_0.c), vec3<bool>(arg_0.c, arg_0.c, true), !vec3<bool>(func_2(vec4<f32>(var_0.a.x, arg_0.a, -574f, -629f)).c, arg_0.c, true)));
    return Struct_3(80082i, arg_2.c, ~_wgslsmith_add_vec3_i32(reverseBits(-vec3<i32>(var_0.c.a, arg_2.c.a, 1i)), ~vec3<i32>(arg_2.c.a, 2147483647i, global0.x)), _wgslsmith_mod_i32(-1i, var_0.c.a) << (1u % 32u), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.d.c.b, 1000f, global1.x, 1000f))) * arg_0.d.a)).d.c);
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> vec4<f32> {
    var var_0 = func_4(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, global1.x, -1700f, global1.x)) - vec4<f32>(global1.x, global1.x, arg_1, -828f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 436f, arg_1, 386f))))), global1.xyw, func_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(744f, arg_1, global1.x, arg_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -232f, global1.x, arg_1), vec4<f32>(-2304f, arg_1, global1.x, 1044f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, global1.x, 1015f, 360f) + vec4<f32>(arg_1, 155f, -2308f, arg_1)))))).d);
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, global1.x))) * _wgslsmith_div_f32(-135f, arg_1)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -568f), _wgslsmith_f_op_f32(round(1000f)), true)), _wgslsmith_f_op_f32(f32(-1f) * -103f), -1119f));
    var_0 = Struct_3(min(~(-func_4(Struct_4(arg_0.x, u_input.a, true, Struct_2(vec4<f32>(global1.x, var_0.b.b, var_0.e.b, -1000f), 1009f, var_0.b)), global1.yzx, Struct_2(vec4<f32>(arg_0.x, arg_0.x, global1.x, global1.x), -1624f, var_0.b)).c.x), global0.x), var_0.b, func_3(!(!any(vec3<bool>(false, false, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(404f, 716f, arg_0.x, arg_0.x) - vec4<f32>(-451f, 707f, arg_0.x, -461f))))), vec2<u32>(0u, ~u_input.a.x)), ~(-(global0.x | _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, -1i, var_0.e.a), vec4<i32>(var_0.c.x, 0i, 61i, u_input.d)))), var_0.b);
    global0 = -_wgslsmith_sub_vec2_i32(vec2<i32>(-156i, ~(-1553i)), vec2<i32>(-50295i | _wgslsmith_dot_vec2_i32(var_0.c.zy, vec2<i32>(global0.x, var_0.e.a)), _wgslsmith_mod_i32(~global0.x, 1i)));
    var var_1 = vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, 37834u) & 13941u, u_input.c.x, _wgslsmith_mod_u32(4294967295u, ~1u)) & ~(~max(u_input.a, ~u_input.a));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, _wgslsmith_f_op_f32(arg_0.x - -2390f), _wgslsmith_f_op_f32(-872f + _wgslsmith_div_f32(597f, 1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(542f, 1810f, _wgslsmith_f_op_f32(-554f * arg_0.x), -763f) + vec4<f32>(273f, _wgslsmith_f_op_f32(trunc(553f)), _wgslsmith_f_op_f32(arg_0.x * arg_1), var_0.e.b)) * vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-arg_0.x), var_0.b.b, global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-12895i, 1299f);
    global0 = vec2<i32>(u_input.b, ~(-2147483647i));
    var var_1 = ~u_input.c.x;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2367f, var_0.b, -345f, var_0.b) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(990f, -1000f, 670f, 1092f)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1632f, var_0.b, global1.x, -478f)), _wgslsmith_f_op_vec4_f32(func_1(global1.ww, 1166f)))))));
    var_1 = select(abs(0u), 1u, true) | _wgslsmith_dot_vec3_u32(func_2(vec4<f32>(_wgslsmith_f_op_f32(select(var_0.b, global1.x, false)), _wgslsmith_f_op_f32(261f + global1.x), _wgslsmith_f_op_f32(global1.x * global1.x), -1000f)).b, ~vec3<u32>(u_input.c.x << (4294967295u % 32u), u_input.c.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)));
    let var_2 = _wgslsmith_add_vec4_u32(~select(~vec4<u32>(u_input.c.x, u_input.a.x, 4294967295u, u_input.c.x), vec4<u32>(u_input.a.x, 0u, 0u, 0u), vec4<bool>(true, true, true, true)) | vec4<u32>(func_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(824f, var_0.b, 738f, var_0.b), vec4<f32>(802f, var_0.b, global1.x, global1.x)))).b.x, ~select(u_input.c.x, 23250u, false), 7975u, 4294967295u), vec4<u32>(0u, firstTrailingBit(u_input.c.x), u_input.c.x, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec2_u32(var_2.zz, firstLeadingBit(vec2<u32>(4294967295u, var_2.x)), _wgslsmith_div_vec2_u32(u_input.c.zz, var_2.xz)) & (vec2<u32>(min(var_2.x, var_2.x), _wgslsmith_mod_u32(4294967295u, u_input.a.x)) | ~countOneBits(vec2<u32>(41447u, u_input.c.x))));
}

