struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2) -> bool {
    var var_0 = !vec2<bool>(any(vec3<bool>(true, all(arg_0), true)), arg_0.x);
    let var_1 = -1069f;
    return arg_1.a != (u_input.a << (1u % 32u));
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: u32, arg_3: u32) -> i32 {
    let var_0 = Struct_2(~u_input.b.x);
    var var_1 = any(select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true)), !vec3<bool>(false, false, arg_0), vec3<bool>(true, arg_0, arg_0)), vec3<bool>(all(vec4<bool>(false, arg_0, false, true)), !arg_0, arg_0), vec3<bool>(!arg_0, true, arg_0)), select(!select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0)), select(vec3<bool>(arg_0, true, false), vec3<bool>(false, false, arg_0), 57437u >= arg_3), vec3<bool>(any(vec3<bool>(arg_0, arg_0, true)), select(arg_0, arg_0, arg_0), true)), any(vec4<bool>(arg_0, any(vec4<bool>(arg_0, false, arg_0, true)), !arg_0, true))));
    var var_2 = u_input.b.x;
    var var_3 = Struct_4(Struct_1(~abs(~vec4<u32>(1u, 16108u, arg_2, 4294967295u)), ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, 4294967295u, 7138u), vec3<u32>(arg_3, 4294967295u, 1u)), ~arg_2)), !select(vec4<bool>(true & arg_0, func_3(vec2<bool>(true, true), Struct_2(u_input.a)), arg_0, true), select(!vec4<bool>(arg_0, arg_0, arg_0, arg_0), !vec4<bool>(true, false, arg_0, false), true), arg_0));
    let var_4 = (~var_0.a ^ -27431i) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(~4294967295u, reverseBits(arg_2), ~arg_2), var_3.a.a.wwy) % 32u);
    return ~abs(_wgslsmith_mult_i32(-(~arg_1.x), -52879i));
}

fn func_2() -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(232f, 706f, -1364f), vec3<f32>(-434f, 2076f, -1063f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-502f, 1117f, -103f), vec3<f32>(459f, 991f, -358f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-846f, 127f, 555f))), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))) * vec3<f32>(-479f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -290f) + 391f), -965f)), func_4(func_3(vec2<bool>(false, false), Struct_2(0i)), u_input.b.wwy, 1u, abs(countOneBits(0u))) < _wgslsmith_dot_vec2_i32(vec2<i32>(select(u_input.a, 33147i, false), 7895i), vec2<i32>(1i, 1i)), firstLeadingBit(u_input.b >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) | vec4<i32>(_wgslsmith_dot_vec3_i32(min(u_input.b.xwz, vec3<i32>(u_input.b.x, u_input.a, u_input.b.x)), ~vec3<i32>(u_input.a, u_input.b.x, 1i)), -2147483647i, u_input.a, max(~u_input.a, abs(u_input.b.x))));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(var_0.a.x, 1476f, var_0.a.x))))), var_0.b, var_0.c);
    let var_1 = Struct_3(var_0.a, var_0.b | false, ~u_input.b);
    let var_2 = Struct_4(Struct_1(min(max(select(vec4<u32>(4348u, 60895u, 20702u, 1u), vec4<u32>(67964u, 18689u, 115583u, 12728u), var_1.b), vec4<u32>(1u, 1u, 1u, 1u)), ~countOneBits(vec4<u32>(40075u, 0u, 4294967295u, 1u))), _wgslsmith_mult_vec2_u32(max(vec2<u32>(1u, 17771u), _wgslsmith_add_vec2_u32(vec2<u32>(5299u, 66556u), vec2<u32>(5672u, 42318u))), vec2<u32>(0u, 0u))), select(select(!vec4<bool>(false, var_0.b, var_1.b, true), select(!vec4<bool>(false, var_0.b, var_0.b, true), select(vec4<bool>(var_0.b, var_0.b, var_1.b, true), vec4<bool>(true, true, false, var_0.b), vec4<bool>(false, var_0.b, true, false)), !vec4<bool>(true, false, var_0.b, true)), any(vec2<bool>(true, true))), !(!vec4<bool>(false, true, true, var_0.b)), !any(select(vec2<bool>(true, true), vec2<bool>(true, var_1.b), true))));
    var_0 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x));
}

fn func_1(arg_0: f32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, -156f), _wgslsmith_f_op_f32(abs(-258f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -854f) * _wgslsmith_f_op_f32(-arg_0))))) + vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1119f, arg_0))))));
    var var_1 = min(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(38366u, 96640u, 0u)), vec3<u32>(15589u, 1u, 4294967295u)), firstLeadingBit(54851u)), 1u);
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 619f, arg_0, 939f), vec4<f32>(var_0.x, arg_0, arg_0, -1706f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1076f, -836f, var_0.x, -1000f) + vec4<f32>(-663f, var_0.x, -318f, -1000f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, var_0.x, 1444f), vec4<f32>(arg_0, 158f, arg_0, var_0.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, var_0.x, arg_0, var_0.x))))), vec4<bool>(true, true, 1136f > var_0.x, true))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(600f, var_0.x, var_0.x, arg_0) * vec4<f32>(596f, var_0.x, -492f, -763f)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, -641f, -707f), vec4<f32>(var_0.x, -345f, var_0.x, -245f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2194f, 1120f, 209f, -760f)) + vec4<f32>(-1118f, -742f, arg_0, arg_0)))))));
    var_1 = _wgslsmith_add_u32(80007u, ~select(1u, 1u, 634f != _wgslsmith_f_op_f32(-arg_0)));
    let var_3 = ~(~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<u32>(81196u, 4348u, 45682u, 67706u), vec4<u32>(1u, 1u, 0u, 3549u)) | vec4<u32>(68566u, 4579u, 66522u, 0u), ~select(vec4<u32>(4294967295u, 117104u, 1u, 20697u), vec4<u32>(18432u, 15827u, 87538u, 48920u), true)));
    return select(!vec3<bool>(true, _wgslsmith_f_op_f32(sign(707f)) != _wgslsmith_f_op_f32(max(var_0.x, arg_0)), var_3.x < _wgslsmith_add_u32(1589u, 9108u)), select(vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1142f) > _wgslsmith_f_op_f32(var_2.x - -1359f), any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), any(select(vec2<bool>(false, false), vec2<bool>(true, false), false))), !vec3<bool>(all(vec4<bool>(false, false, false, true)), any(vec3<bool>(false, false, false)), true), vec3<bool>(true, true, true)), !(!func_3(vec2<bool>(true, true), Struct_2(u_input.b.x))));
}

fn func_5(arg_0: vec3<bool>, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = select(!vec2<bool>(1u >= ~arg_2.x, false), vec2<bool>(false, any(!func_1(-634f))), !arg_0.x);
    let var_1 = ~_wgslsmith_mult_vec4_u32(~(arg_2 & arg_3.a) >> (vec4<u32>(_wgslsmith_div_u32(80239u, 15320u), ~1u, reverseBits(4294967295u), 19975u) % vec4<u32>(32u)), arg_3.a);
    let var_2 = Struct_1(vec4<u32>(21999u, var_1.x, countOneBits(4294967295u), (select(4842u, 0u, false) ^ 5590u) << (reverseBits(94721u) % 32u)), abs(arg_3.a.xw));
    let var_3 = reverseBits(~_wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(arg_2.wxy, arg_2.xww), max(var_1.xzz, vec3<u32>(45632u, var_1.x, arg_2.x))));
    var var_4 = !(!vec2<bool>(var_0.x, !all(vec3<bool>(false, true, arg_0.x))));
    return func_1(_wgslsmith_f_op_f32(2316f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1423f + _wgslsmith_f_op_f32(677f * -765f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -266f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(~((u_input.a ^ -1i) | _wgslsmith_mult_i32(~u_input.a, u_input.a)), -11426i);
    var var_1 = func_5(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), func_1(_wgslsmith_f_op_f32(-1622f * -315f))), u_input.a, vec4<u32>(5881u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 25584u), firstLeadingBit(vec2<u32>(0u, 31911u))), ~max(0u, 0u)), ~firstTrailingBit(1u), ~(~3375u)), Struct_1(firstLeadingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 27429u, 11289u, 5463u), vec4<u32>(58869u, 17484u, 52378u, 0u))), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(3438u, 79406u)))));
    let var_2 = _wgslsmith_sub_i32(~(-5721i), 439i);
    var_1 = vec3<bool>(var_1.x, true, true);
    var_1 = !func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1613f + _wgslsmith_f_op_f32(f32(-1f) * -436f))));
    var var_3 = Struct_1(~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(0u, 1u, 35419u, 18073u)), vec4<u32>(1u, 19115u, 4887u, 0u)), vec4<u32>(24329u, ~32635u, _wgslsmith_mod_u32(31745u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(53730u, 15637u), vec2<u32>(41489u, 3393u)))), vec2<u32>(1u, 1u));
    var_3 = Struct_1(reverseBits(~vec4<u32>(_wgslsmith_sub_u32(var_3.b.x, var_3.a.x), ~var_3.a.x, ~var_3.a.x, 1u)), var_3.b);
    var_1 = !vec3<bool>(var_1.x, (26247i << ((var_3.a.x | 4294967295u) % 32u)) == u_input.a, _wgslsmith_mult_i32(countOneBits(u_input.a), var_0.x << (16401u % 32u)) == -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-1476f, _wgslsmith_f_op_f32(floor(-892f)));
}

