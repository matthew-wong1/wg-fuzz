struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec4<u32>(1u, 36957u, 0u, 22877u), true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> vec4<u32> {
    return vec4<u32>(global0.b.x, firstTrailingBit(1u), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(global0.b.x, 53377u), _wgslsmith_div_vec2_u32(global0.b.wz, arg_3.b.yy)), abs(55279u)) & arg_3.b;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(17938i, u_input.b.x) & u_input.b.x, ~(-u_input.b.x)), _wgslsmith_mod_i32(0i, u_input.b.x), u_input.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1281f, 1521f, -395f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1075f, 102f, -886f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1893f, 1000f, 690f) * vec3<f32>(850f, -815f, -458f)), vec3<f32>(528f, -625f, -212f)))), Struct_1(true, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(771f + 357f) - _wgslsmith_f_op_f32(min(-1000f, 467f))), 1u, u_input.b.x, Struct_1(false, ~vec4<u32>(global0.b.x, 29358u, u_input.a, 40121u), 4294967295u > u_input.a)), true));
    return Struct_1(global0.c, vec4<u32>(4294967295u, 4294967295u, firstLeadingBit(26288u) | ~(73703u >> (u_input.a % 32u)), 1u), var_0.c.a);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: bool) -> Struct_4 {
    global0 = func_2();
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.b.x, 2147483647i), vec3<i32>(43730i, 1i, u_input.b.x)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 3299u, u_input.a), global0.b.wyz) % vec3<u32>(32u)), u_input.b), -16175i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x)), vec3<i32>(abs(u_input.b.x), -12758i, _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b.x, select(1i, u_input.b.x, false)), u_input.b.x)));
    let var_1 = u_input.a;
    global0 = func_2();
    global0 = Struct_1(true, vec4<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(global0.b, vec4<u32>(3211u, global0.b.x, 4294967295u, global0.b.x)), global0.b), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, ~global0.b.x, ~var_1), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 28399u, var_1), vec3<u32>(1u, 12436u, 79737u)) ^ global0.b.xyx), _wgslsmith_dot_vec4_u32(global0.b, global0.b)), true);
    return Struct_4(all(select(select(!vec4<bool>(true, true, arg_3, true), !vec4<bool>(false, global0.a, global0.c, arg_0.x), all(vec4<bool>(arg_0.x, arg_2.x, arg_3, true))), !vec4<bool>(global0.c, arg_0.x, true, false), select(func_2().a, arg_0.x, !global0.c))), Struct_1(global0.c, _wgslsmith_clamp_vec4_u32(vec4<u32>(~39448u, var_1, var_1, max(4294967295u, global0.b.x)), global0.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(762u, var_1, var_1, global0.b.x) | global0.b, vec4<u32>(88037u, u_input.a, u_input.a, u_input.a), global0.b)), true), Struct_2(abs(firstTrailingBit(~vec4<u32>(u_input.a, 43444u, 16456u, 6420u)))), max(vec3<u32>(u_input.a, ~global0.b.x, u_input.a), vec3<u32>(global0.b.x, abs(~0u), max(abs(8252u), abs(0u)))), select(!select(select(vec2<bool>(arg_0.x, arg_2.x), vec2<bool>(arg_3, false), arg_2.yz), !arg_0.yy, arg_2.yx), vec2<bool>(arg_2.x, true), !(max(5805i, -2147483647i) < -u_input.b.x)));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: Struct_3) -> Struct_2 {
    let var_0 = !select(select(vec3<bool>(arg_2.c.c, false == arg_2.c.c, func_1(vec3<bool>(false, global0.c, arg_0.b.c), vec2<f32>(arg_2.b.x, -113f), vec3<bool>(arg_0.e.x, true, arg_2.c.a), global0.a).e.x), !select(vec3<bool>(false, global0.a, true), vec3<bool>(false, false, arg_0.a), false), select(select(vec3<bool>(false, true, global0.a), vec3<bool>(false, true, false), false), vec3<bool>(true, true, arg_2.c.a), !arg_2.c.a)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, arg_0.e.x, false), vec3<bool>(true, true, arg_2.c.a)), vec3<bool>(true, true, false), all(func_1(vec3<bool>(arg_2.c.c, arg_0.a, true), arg_2.b.yy, vec3<bool>(arg_2.c.c, arg_0.e.x, true), global0.c).e)), true);
    var var_1 = Struct_3(vec3<i32>(~(-abs(u_input.b.x)), select(u_input.b.x, _wgslsmith_clamp_i32(arg_2.a.x, -61565i, u_input.b.x), !(arg_2.b.x > arg_1)), u_input.b.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(803f))))), _wgslsmith_f_op_f32(f32(-1f) * -573f), _wgslsmith_div_f32(arg_1, 2263f)), func_1(!(!(!vec3<bool>(arg_2.c.a, var_0.x, true))), _wgslsmith_f_op_vec2_f32(arg_2.b.yx * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.b.xy) - arg_2.b.zz)), vec3<bool>(true, (arg_2.a.x & 21857i) > 13394i, true), true).b);
    let var_2 = 725f;
    var_1 = Struct_3(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(var_1.a, vec3<i32>(arg_2.a.x, 28779i, 27865i)), ~arg_2.a) << (~vec3<u32>(global0.b.x, _wgslsmith_div_u32(4294967295u, var_1.c.b.x), _wgslsmith_clamp_u32(arg_0.d.x, arg_0.d.x, var_1.c.b.x)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(838f, -1825f)), var_2, true)), _wgslsmith_f_op_f32(f32(-1f) * -1251f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1)))), arg_2.b)), Struct_1(!(!var_0.x), var_1.c.b, false));
    var var_3 = arg_0.c.a.x;
    return func_1(vec3<bool>(!arg_2.c.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1 * 1679f))) > _wgslsmith_f_op_f32(f32(-1f) * -1510f), arg_1 <= 1308f), _wgslsmith_f_op_vec2_f32(-arg_2.b.yy), select(!vec3<bool>(var_0.x, false, false), var_0, select(vec3<bool>(!arg_0.b.a, var_0.x, global0.b.x == arg_0.b.b.x), select(var_0, !var_0, var_0), vec3<bool>(all(arg_0.e), true, true))), true).c;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-598f * _wgslsmith_f_op_f32(-293f - -709f)), _wgslsmith_div_f32(-937f, _wgslsmith_f_op_f32(-2302f - -1000f)), true && func_1(vec3<bool>(true, false, arg_0.x), vec2<f32>(-1633f, -657f), vec3<bool>(true, global0.c, true), arg_0.x).b.a)), -1877f), vec2<f32>(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-134f, -104f)))))));
    global0 = func_2();
    let var_1 = vec2<bool>(false, !(!(!(0u <= u_input.a))));
    var var_2 = Struct_4(var_1.x & var_1.x, func_2(), Struct_2(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(981f + var_0.x)), global0.b.x, u_input.b.x, Struct_1(arg_0.x, ~vec4<u32>(1u, u_input.a, 33393u, 0u), true))), vec3<u32>(1u, countOneBits(90715u), ~arg_1.a.x), arg_0.wz);
    var_2 = func_1(select(!arg_0.wyx, !(!vec3<bool>(true, var_1.x, false)), arg_2), var_0, !vec3<bool>(false, global0.c, arg_2.x), true);
    return var_2.c;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> Struct_4 {
    let var_0 = true;
    let var_1 = Struct_4(all(vec3<bool>(var_0, all(vec2<bool>(false, global0.a)), true)), func_2(), arg_1, ~global0.b.yyz, !vec2<bool>(~arg_0.b.x < 1u, any(vec2<bool>(true, true))));
    var var_2 = (vec2<i32>(2147483647i, _wgslsmith_div_i32(u_input.b.x, u_input.b.x)) | -u_input.b.yz) << (select(~(~vec2<u32>(global0.b.x, 12087u)), select(min(abs(global0.b.zx), vec2<u32>(u_input.a, 60164u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b.x, arg_0.b.x), vec2<u32>(55578u, arg_1.a.x)), !vec2<bool>(false, arg_0.a)), !select(!var_1.e, !vec2<bool>(true, var_1.a), select(var_1.e, var_1.e, true))) % vec2<u32>(32u));
    var_2 = _wgslsmith_clamp_vec2_i32(u_input.b.xy, u_input.b.xz, _wgslsmith_div_vec2_i32(select(_wgslsmith_sub_vec2_i32(u_input.b.yz, u_input.b.yy), vec2<i32>(u_input.b.x, u_input.b.x), func_1(vec3<bool>(arg_0.a, arg_0.a, var_1.a), vec2<f32>(-878f, -197f), vec3<bool>(true, true, var_1.e.x), true).e), vec2<i32>(u_input.b.x, ~(-1i)))) >> (_wgslsmith_add_vec2_u32(select(arg_0.b.xz << (_wgslsmith_div_vec2_u32(arg_1.a.ww, vec2<u32>(global0.b.x, 5654u)) % vec2<u32>(32u)), vec2<u32>(47196u >> (u_input.a % 32u), 24280u), true), _wgslsmith_mod_vec2_u32(~vec2<u32>(global0.b.x, arg_2), func_1(vec3<bool>(var_0, true, true), vec2<f32>(1f, 1f), !vec3<bool>(var_0, false, var_0), false).b.b.zz)) % vec2<u32>(32u));
    var_2 = vec2<i32>(u_input.b.x, 2147483647i);
    return Struct_4(select(var_0 != false, func_2().a & !var_0, var_1.a), func_2(), func_4(Struct_4(func_2().c, func_1(!vec3<bool>(true, arg_0.c, arg_0.c), vec2<f32>(275f, 266f), !vec3<bool>(global0.c, true, var_0), var_2.x < 2147483647i).b, func_4(Struct_4(global0.a, Struct_1(var_0, vec4<u32>(98217u, 35979u, 39459u, 1u), true), Struct_2(vec4<u32>(1u, arg_0.b.x, arg_0.b.x, 4294967295u)), vec3<u32>(21585u, 9668u, arg_2), vec2<bool>(true, global0.c)), -1464f, Struct_3(u_input.b, vec3<f32>(-1000f, 1000f, 760f), arg_0)), (vec3<u32>(var_1.d.x, 20820u, 0u) << (arg_0.b.zzw % vec3<u32>(32u))) >> (~vec3<u32>(arg_0.b.x, arg_1.a.x, 4294967295u) % vec3<u32>(32u)), var_1.e), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1045f)))), Struct_3(_wgslsmith_add_vec3_i32(-vec3<i32>(-28491i, -57524i, -36334i), abs(u_input.b)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-466f, 1000f, 356f), vec3<f32>(202f, -1841f, -1000f))), func_1(vec3<bool>(true, true, true), vec2<f32>(162f, -230f), select(vec3<bool>(arg_0.a, var_1.b.a, true), vec3<bool>(var_1.b.c, global0.a, false), var_1.a), true).b)), func_2().b.xzx, var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(global0.c == all(select(vec3<bool>(true, false, true), vec3<bool>(global0.a, global0.c, true), vec3<bool>(true, global0.c, true))), ~global0.b, ~(~global0.b.x) >= ~u_input.a), func_5(vec4<bool>(global0.a, false, false, all(!vec4<bool>(global0.a, global0.a, global0.c, global0.a))), func_4(func_1(!vec3<bool>(global0.c, false, global0.c), vec2<f32>(-1000f, -717f), vec3<bool>(true, global0.a, global0.c), global0.c), _wgslsmith_f_op_f32(f32(-1f) * -295f), Struct_3(vec3<i32>(0i, u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(957f, 960f, 1003f)), func_2())), vec3<bool>(!global0.a, global0.c, global0.a)), ~4294967295u);
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(728f, _wgslsmith_f_op_f32(1115f - _wgslsmith_div_f32(-596f, _wgslsmith_div_f32(-196f, -985f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-140f, 1000f)) - vec2<f32>(-1965f, -549f)))), !func_1(vec3<bool>(func_6(var_0.b, var_0.c, var_0.c.a.x).e.x, global0.c, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1675f, -770f), vec2<f32>(210f, 662f))), !vec3<bool>(false, var_0.e.x, global0.c), false).e));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1329f, -622f, var_1.x, var_1.x) * vec4<f32>(761f, 723f, 412f, var_1.x)), vec4<f32>(-309f, var_1.x, var_1.x, -401f), select(vec4<bool>(var_0.b.c, false, true, true), vec4<bool>(false, false, false, global0.c), true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1355f, 3452f, 2613f, -1707f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, -227f, var_1.x, var_1.x)))) - vec4<f32>(var_1.x, -294f, _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(floor(var_1.x)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, -365f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x - var_1.x))), 755f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), 594f))));
    let var_3 = vec3<f32>(1037f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1942f), 396f))), false)));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1941f, var_3.x, false))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.x))) - 267f), var_3.x), -208f, 1f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f), ~((func_3(1258f, 50096u, -49851i, var_0.b).x << (global0.b.x % 32u)) >> (~global0.b.x % 32u)), var_2.x, 1657f, ~37447u);
}

