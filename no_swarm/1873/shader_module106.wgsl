struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_clamp_u32(64477u, 4294967295u, reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(21538u, 1u), vec2<u32>(1u, 0u)), ~vec2<u32>(11762u, 4294967295u), ~vec2<u32>(0u, 1u)), min(vec2<u32>(1u, 1u), min(vec2<u32>(20218u, 62546u), vec2<u32>(12571u, 20589u))))));
    var var_1 = Struct_2(select(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, var_0, var_0), (vec4<u32>(0u, var_0, 43209u, var_0) >> (vec4<u32>(31051u, var_0, var_0, var_0) % vec4<u32>(32u))) & ~vec4<u32>(29197u, 1u, 1u, var_0)), max(~(~vec4<u32>(0u, var_0, var_0, 4294967295u)), ~vec4<u32>(10865u, var_0, 0u, 4294967295u) << (~vec4<u32>(6538u, var_0, 19305u, 76475u) % vec4<u32>(32u))), 123144u >= _wgslsmith_sub_u32(abs(var_0), ~1u)), (1i | min(arg_2.b.x, u_input.a.x)) | arg_2.b.x, arg_2, arg_2, true);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-310f))));
    let var_3 = Struct_1(u_input.a.x, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1, -1i), _wgslsmith_mult_vec2_i32(countOneBits(var_1.d.b), select(vec2<i32>(-1i, -19441i), u_input.a, vec2<bool>(arg_0, true))) >> (~_wgslsmith_add_vec2_u32(vec2<u32>(52489u, var_0), vec2<u32>(var_0, 66483u)) % vec2<u32>(32u))), true & (38057i >= ~(-arg_2.b.x)));
    let var_4 = abs(select(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(var_3.a, var_1.b, var_3.a)), -vec3<i32>(arg_1, -1i, 2147483647i)) | _wgslsmith_mod_vec3_i32(-vec3<i32>(var_1.d.a, -2147483647i, var_1.d.a), ~vec3<i32>(arg_1, arg_2.b.x, u_input.a.x)), -firstLeadingBit(vec3<i32>(arg_1, var_1.d.b.x, -2147483647i)), select(select(select(vec3<bool>(var_1.c.c, arg_0, arg_0), vec3<bool>(arg_0, arg_2.c, arg_2.c), true), select(vec3<bool>(true, true, arg_0), vec3<bool>(var_1.d.c, false, false), false), !arg_0), vec3<bool>(all(vec4<bool>(arg_2.c, arg_2.c, false, arg_0)), var_3.c & true, true), !vec3<bool>(true, arg_2.c, arg_0))));
    return !select(select(select(!vec4<bool>(arg_0, true, false, false), vec4<bool>(true, true, false, true), any(vec4<bool>(arg_0, true, arg_2.c, false))), !select(vec4<bool>(arg_2.c, true, true, arg_2.c), vec4<bool>(arg_2.c, false, var_3.c, false), arg_2.c), vec4<bool>(true, !var_3.c, var_1.c.c, false)), select(vec4<bool>(!var_3.c, any(vec2<bool>(var_3.c, false)), true, var_1.e), vec4<bool>(arg_0, true, arg_2.c, arg_0 == true), vec4<bool>(true, select(false, true, false), select(arg_2.c, true, var_3.c), !arg_2.c)), select(!(!vec4<bool>(var_1.e, true, true, true)), vec4<bool>(all(vec2<bool>(var_3.c, true)), arg_0, var_1.d.c, !arg_2.c), vec4<bool>(all(vec4<bool>(var_1.e, true, arg_2.c, var_3.c)), false, true, var_3.c)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = arg_2.x;
    var var_1 = !(!func_3(any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-7528i, arg_1.x), u_input.a), Struct_1(arg_1.x & -1i, vec2<i32>(arg_1.x, 17033i) >> (arg_2.wx % vec2<u32>(32u)), all(vec3<bool>(true, false, false)))));
    var_1 = select(vec4<bool>(!(!any(var_1.zy)), true, _wgslsmith_sub_u32(~arg_2.x, _wgslsmith_dot_vec2_u32(arg_2.xz, vec2<u32>(0u, arg_2.x))) > 27908u, var_1.x), vec4<bool>(true, func_3(true, ~abs(u_input.a.x), Struct_1(arg_1.x, _wgslsmith_sub_vec2_i32(arg_1.zz, arg_1.xz), true)).x, var_1.x, true), var_1.x || (!any(var_1.xy) && all(func_3(true, u_input.a.x, Struct_1(0i, vec2<i32>(2147483647i, -2147483647i), true)))));
    var var_2 = Struct_1(-8845i, vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(arg_1.xx, u_input.a), abs(u_input.a)), any(vec2<bool>(var_1.x, func_3(var_1.x, reverseBits(arg_1.x), Struct_1(arg_1.x, arg_1.zy, var_1.x)).x)));
    var_2 = Struct_1(var_2.a, ~(~u_input.a), min(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(var_0, 12034u, 12664u, 58599u)), min(var_0, 102006u)), 1u) < 4294967295u);
    return Struct_2(abs(countOneBits(arg_2)), _wgslsmith_mult_i32(reverseBits(2147483647i), _wgslsmith_mult_i32(1i, 29467i) & var_2.a), Struct_1(-1254i, -var_2.b & u_input.a, any(var_1.yx)), Struct_1(-27822i, vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x << (var_0 % 32u), _wgslsmith_add_i32(-2147483647i, 1i), ~0i), 1i), !any(func_3(var_2.c, u_input.a.x, Struct_1(var_2.b.x, vec2<i32>(-83140i, arg_1.x), var_2.c)))), firstLeadingBit(0u) <= (~abs(arg_2.x) << (~var_0 % 32u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(~1u, arg_0.a.x, 6558u);
    let var_1 = firstTrailingBit(23133i);
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(575f * 1000f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1251f, 1623f)))), 864f)), select(arg_1.c, true, any(select(vec3<bool>(arg_1.c, false, false), vec3<bool>(arg_1.c, arg_0.d.c, true), arg_1.c))))) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -607f)));
    let var_3 = any(select(!select(vec2<bool>(arg_0.c.c, arg_0.d.c), select(vec2<bool>(false, var_2), vec2<bool>(false, arg_1.c), false), !vec2<bool>(true, arg_0.e)), vec2<bool>(true, any(select(vec2<bool>(true, var_2), vec2<bool>(true, arg_1.c), arg_0.d.c))), !all(vec2<bool>(arg_1.c, var_2))));
    let var_4 = arg_0.c;
    return arg_0.d;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>) -> u32 {
    return 1u;
}

fn func_1() -> Struct_1 {
    let var_0 = ~func_5(Struct_2(~abs(vec4<u32>(24939u, 28155u, 4294967295u, 1u)), 0i, Struct_1(u_input.a.x, _wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, -1i)), true), func_4(func_2(vec2<f32>(465f, -636f), vec3<i32>(u_input.a.x, 1i, -1i), vec4<u32>(0u, 0u, 34010u, 1u)), func_2(vec2<f32>(1257f, -502f), vec3<i32>(7755i, u_input.a.x, 2147483647i), vec4<u32>(84161u, 0u, 4294967295u, 4294967295u)).c), false), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(885f, -569f))), vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, -21585i), 1i, countOneBits(20194i)), ~select(vec4<u32>(0u, 26455u, 28864u, 0u), vec4<u32>(5898u, 4294967295u, 19402u, 3244u), false)), max(-(~vec4<i32>(u_input.a.x, 0i, -60609i, u_input.a.x)), vec4<i32>(u_input.a.x, 1i, -20450i, abs(-2147483647i))));
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2293f, -1602f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-611f, -1139f), vec2<f32>(-394f, -666f), true))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(max(-1167f, -1390f)), _wgslsmith_f_op_f32(-1278f + 1271f))))), vec3<i32>(u_input.a.x, -1i, 0i), ~(~firstLeadingBit(vec4<u32>(6436u, 22508u, var_0, var_0))));
    var var_2 = -vec3<i32>(-u_input.a.x, ~(_wgslsmith_add_i32(u_input.a.x, 48440i) & u_input.a.x), _wgslsmith_clamp_i32(_wgslsmith_div_i32(21292i, var_1.b), ~func_4(var_1, var_1.c).b.x, _wgslsmith_clamp_i32(u_input.a.x ^ -2147483647i, 1i, -var_1.d.b.x)));
    var var_3 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-760f, 150f) - vec2<f32>(1000f, -1492f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-599f, 1000f)))))), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(firstTrailingBit(-vec3<i32>(-2147483647i, -2147483647i, var_1.c.a)), _wgslsmith_add_vec3_i32(select(vec3<i32>(-1i, var_1.d.a, var_1.d.a), vec3<i32>(12019i, var_1.d.b.x, var_2.x), var_1.c.c), firstLeadingBit(vec3<i32>(-1i, var_1.b, u_input.a.x)))), vec3<i32>(-1i) * -vec3<i32>(36021i, u_input.a.x, 1i)), ~var_1.a).c.b;
    var var_4 = Struct_1(abs(firstLeadingBit(-2147483647i)), vec2<i32>(-_wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_3.x, u_input.a.x, 1i), _wgslsmith_add_i32(u_input.a.x, 2147483647i)), -17598i), false);
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_4(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1168f, 1126f), vec2<f32>(377f, 503f), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -1448f), vec2<f32>(1000f, 350f)))))), firstTrailingBit(vec3<i32>(abs(var_0.b.x), -8033i, 1i)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(4294967295u, 32864u, 4294967295u, 4294967295u)), ~(~vec4<u32>(44329u, 63404u, 28421u, 106544u)))), func_1());
    let var_1 = 73309i;
    var_0 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(566f, -251f))))))), abs(-vec3<i32>(var_0.a, 30998i, 21434i)) >> (~vec3<u32>(10927u, 1u, 1u) % vec3<u32>(32u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(40123u, 1u, 4294967295u, 46896u)) >> (min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~0u, ~10299u, abs(4294967295u), ~1u)) % vec4<u32>(32u))).c;
    var var_2 = Struct_2(~(~vec4<u32>(1u, func_5(Struct_2(vec4<u32>(44792u, 0u, 24116u, 41042u), u_input.a.x, Struct_1(-1i, u_input.a, false), Struct_1(29434i, vec2<i32>(var_1, -2147483647i), var_0.c), false), Struct_2(vec4<u32>(18322u, 69588u, 4294967295u, 47031u), -2147483647i, Struct_1(2147483647i, vec2<i32>(1i, u_input.a.x), true), Struct_1(-1i, vec2<i32>(-20117i, -20624i), true), true), vec4<i32>(-23289i, -1i, var_0.a, var_1)), _wgslsmith_add_u32(42379u, 4846u), 1u)), u_input.a.x, func_4(Struct_2(func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(149f, 215f), vec2<f32>(-575f, -270f), vec2<bool>(false, var_0.c))), vec3<i32>(-11575i, u_input.a.x, u_input.a.x), ~vec4<u32>(20391u, 1u, 0u, 4294967295u)).a, var_0.b.x, Struct_1(~(-2147483647i), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 1i), u_input.a, vec2<i32>(-5613i, 2147483647i)), false), func_4(Struct_2(vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), var_1, Struct_1(-13744i, var_0.b, true), Struct_1(u_input.a.x, vec2<i32>(var_1, u_input.a.x), true), true), func_2(vec2<f32>(-573f, 530f), vec3<i32>(u_input.a.x, 1i, 5927i), vec4<u32>(32808u, 4294967295u, 0u, 51675u)).c), false && any(vec2<bool>(var_0.c, var_0.c))), Struct_1(~var_0.a | (i32(-1i) * -52634i), _wgslsmith_mod_vec2_i32(vec2<i32>(57095i, 60506i) | vec2<i32>(-19762i, var_1), select(vec2<i32>(-5934i, var_1), var_0.b, true)), any(vec3<bool>(false, false, var_0.c)))), Struct_1(u_input.a.x, select(countOneBits(u_input.a), u_input.a, vec2<bool>(true, true)), !func_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(153f, -714f))), -vec3<i32>(var_0.b.x, var_1, u_input.a.x), ~vec4<u32>(1u, 51298u, 4294967295u, 20287u)).c.c), var_0.c);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(671f * _wgslsmith_f_op_f32(-411f + -1720f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-455f - 1246f)))))) - _wgslsmith_f_op_f32(-784f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    var_0 = Struct_1(38101i, var_2.c.b, all(vec4<bool>(var_0.c, var_0.c, !(!var_0.c), all(func_3(var_2.e, 46740i, var_2.c).xzx))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(765f, _wgslsmith_f_op_f32(754f - _wgslsmith_f_op_f32(abs(-766f)))), var_3, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3 - 694f), _wgslsmith_f_op_f32(var_3 - var_3)))));
}

