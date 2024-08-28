struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: vec4<u32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: i32) -> u32 {
    global1 = vec4<u32>(global1.x, ~(~85711u), 1u, global1.x) >> (abs(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global1.x, global1.x, 4294967295u, 4294967295u), vec4<u32>(global1.x, 2894u, global1.x, 0u) << (vec4<u32>(51365u, u_input.b.x, 4294967295u, u_input.b.x) % vec4<u32>(32u))), ~(~vec4<u32>(global1.x, 8338u, u_input.a, 22047u)))) % vec4<u32>(32u));
    var var_0 = Struct_3(Struct_2(-vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.a.x, arg_1.x), arg_0.c.d.xy), arg_1.x ^ arg_1.x, _wgslsmith_mod_i32(1i, -23228i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.b - arg_0.d.b)), Struct_1(arg_2 <= _wgslsmith_mult_i32(arg_1.x, _wgslsmith_mult_i32(56553i, arg_0.d.c)), _wgslsmith_f_op_f32(-arg_0.d.b), -44901i, vec4<i32>(0i, arg_2, ~1i & _wgslsmith_clamp_i32(arg_0.c.d.x, arg_1.x, arg_0.c.d.x), arg_2)), arg_0.d);
    global1 = min(~(vec4<u32>(_wgslsmith_mod_u32(global1.x, 4294967295u), 4294967295u, u_input.b.x, 3463u) | (~vec4<u32>(u_input.b.x, 59884u, 4294967295u, global1.x) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.b.x, 18808u), vec4<u32>(58277u, u_input.a, 18353u, global1.x)))), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(90456u, global1.x), vec2<u32>(u_input.a, 1u)) | (4294967295u << (global1.x % 32u)), firstTrailingBit(global1.x) & _wgslsmith_add_u32(1u, u_input.b.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 1u, 0u), countOneBits(vec3<u32>(0u, 30482u, u_input.a))), 47661u, ~0u, global1.x & ~1u)));
    global1 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, u_input.b.x, global1.x, u_input.b.x), vec4<u32>(u_input.b.x, countOneBits(71184u), ~63957u, ~global1.x)), select(~(vec4<u32>(1u, global1.x, 4294967295u, 825u) >> (vec4<u32>(global1.x, global1.x, 1u, global1.x) % vec4<u32>(32u))), vec4<u32>(global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(15625u, 70640u, u_input.b.x, 5350u), vec4<u32>(u_input.a, global1.x, 1059u, u_input.a)), u_input.a, max(u_input.a, u_input.b.x)), select(false == arg_0.d.a, var_0.c.a & var_0.d.a, global1.x != global1.x)) & vec4<u32>(90405u, global1.x, u_input.a, 67848u), ~vec4<u32>(~4294967295u, u_input.b.x, ~global1.x, _wgslsmith_add_u32(0u, 66004u)));
    global0 = array<Struct_3, 18>();
    return 40851u;
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_4(true, -vec3<i32>(-firstTrailingBit(7448i), -43163i, 1i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(548f - 1332f))), -1546f)), 1f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-417f, -645f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1859f, 1751f, 710f) * vec3<f32>(1122f, -1388f, -671f)), true))))));
    global1 = vec4<u32>(0u, countOneBits(~(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.x), vec2<u32>(13514u, global1.x)) ^ ~4294967295u)), global1.x, _wgslsmith_add_u32(0u, ~(~func_3(Struct_3(Struct_2(var_0.b), var_0.d, Struct_1(false, var_0.d, -40737i, vec4<i32>(var_0.b.x, 2147483647i, 1301i, var_0.b.x)), Struct_1(var_0.a, -974f, -2147483647i, vec4<i32>(-12157i, -2147483647i, -47919i, var_0.b.x))), var_0.b, -16273i))));
    return _wgslsmith_div_vec4_u32(abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, u_input.a, 0u, global1.x), max(vec4<u32>(global1.x, 0u, 4294967295u, 36313u), vec4<u32>(global1.x, global1.x, 32442u, u_input.b.x)))), vec4<u32>(_wgslsmith_dot_vec3_u32(global1.zzx, global1.zzx), func_3(Struct_3(Struct_2(var_0.b), 1097f, Struct_1(var_0.a, -741f, -1260i, vec4<i32>(-2147483647i, 1i, -2147483647i, -11969i)), Struct_1(false, var_0.c, var_0.b.x, vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, -1i))), var_0.b, 0i), u_input.b.x, ~0u) | abs(select(vec4<u32>(67178u, global1.x, u_input.a, 10868u), vec4<u32>(global1.x, u_input.b.x, u_input.b.x, u_input.a), vec4<bool>(var_0.a, true, var_0.a, false)))) >> (vec4<u32>(_wgslsmith_mult_u32(~abs(u_input.b.x), 20592u), _wgslsmith_mult_u32(firstLeadingBit(u_input.b.x), ~35587u) ^ ~1u, global1.x, ~1u) % vec4<u32>(32u));
}

fn func_1(arg_0: Struct_4, arg_1: bool) -> Struct_3 {
    var var_0 = 1u;
    global1 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global1.xx, u_input.b.yz), 1u), ~(~_wgslsmith_mod_u32(u_input.a, u_input.b.x))), func_2() >> (max(~vec4<u32>(u_input.b.x, 29652u, global1.x, 21012u), _wgslsmith_div_vec4_u32(vec4<u32>(24835u, u_input.a, 23627u, 89834u) << (vec4<u32>(global1.x, global1.x, u_input.b.x, global1.x) % vec4<u32>(32u)), vec4<u32>(global1.x, global1.x, global1.x, 0u))) % vec4<u32>(32u)));
    let var_1 = vec4<i32>(45956i, 2147483647i & -arg_0.b.x, ~(-724i), 0i);
    let var_2 = _wgslsmith_add_u32(~u_input.b.x, firstLeadingBit(18291u));
    var_0 = var_2;
    return Struct_3(Struct_2(abs(max(var_1.yzx, var_1.yzw)) | -(~var_1.xxy)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.c, _wgslsmith_f_op_f32(trunc(arg_0.d)), all(vec3<bool>(false, true, arg_1))))))), Struct_1((_wgslsmith_mod_u32(35971u, 31120u) << (u_input.a % 32u)) >= 0u, arg_0.e.x, _wgslsmith_sub_i32(~(-var_1.x), -2147483647i), -vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x) | -var_1), Struct_1(true, 541f, 42517i, ~firstLeadingBit(var_1)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: u32) -> vec4<u32> {
    let var_0 = firstLeadingBit(~vec4<u32>(abs(1u), 0u, global1.x, _wgslsmith_mult_u32(1u, ~39068u)));
    var var_1 = arg_0.a;
    var var_2 = func_1(Struct_4(any(arg_1.zx), vec3<i32>(countOneBits(var_1.a.x) | -arg_0.a.a.x, i32(-1i) * -75102i, _wgslsmith_div_i32(19347i, var_1.a.x)), 733f, arg_0.d.b, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), arg_0.c.b, _wgslsmith_div_f32(arg_0.b, 515f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(658f, -302f, 146f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.d.b, arg_0.b, arg_0.b))))))), false).d;
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -514f), _wgslsmith_f_op_f32(-var_2.b)), -743f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d.b, -375f))))));
    var_1 = func_1(Struct_4(true, arg_0.d.d.xzy << (~vec3<u32>(u_input.a, 18540u, 4294967295u) % vec3<u32>(32u)), var_2.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(665f - 2667f))))), _wgslsmith_f_op_vec3_f32(var_3.yxw + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-239f, 177f, var_3.x)))), true).a;
    return vec4<u32>(u_input.a, firstLeadingBit(~min(var_0.x, 65187u)), _wgslsmith_mod_u32(arg_2, func_3(func_1(Struct_4(false, vec3<i32>(10683i, 5305i, var_1.a.x), 873f, var_3.x, var_3.xzx), false), vec3<i32>(1i, arg_0.a.a.x, -2147483647i | var_2.d.x), -40016i)), ~(~_wgslsmith_dot_vec3_u32(global1.zxy, var_0.wyz) & 72080u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    global1 = func_4(func_1(Struct_4(true, vec3<i32>(var_0, -2147483647i, -21533i), -740f, 1f, vec3<f32>(191f, 1487f, -839f)), all(vec2<bool>(true, true))), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), true), _wgslsmith_dot_vec2_u32(u_input.b.yx, ~_wgslsmith_mult_vec2_u32(global1.wz, vec2<u32>(u_input.b.x, u_input.a)))) | vec4<u32>(global1.x >> (u_input.a % 32u), ~(~global1.x) ^ _wgslsmith_sub_u32(~u_input.a, u_input.b.x), ~(~(~1u)), ~1u);
    var var_1 = Struct_4(!all(vec3<bool>(true, any(vec3<bool>(true, true, true)), true)), func_1(Struct_4(true, firstLeadingBit(vec3<i32>(var_0, var_0, var_0)), _wgslsmith_f_op_f32(-680f * -632f), func_1(Struct_4(false, vec3<i32>(var_0, 29874i, var_0), -558f, -693f, vec3<f32>(-1355f, 1068f, 235f)), false).b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-430f, 105f, -390f) + vec3<f32>(1008f, 114f, 1801f))), true).d.d.yyx << (_wgslsmith_mod_vec3_u32(~(~global1.yww), ~reverseBits(vec3<u32>(16244u, global1.x, u_input.a))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(Struct_4(false, vec3<i32>(var_0, var_0, var_0), -1828f, -206f, vec3<f32>(698f, -564f, -334f)), false).b - _wgslsmith_f_op_f32(sign(-1229f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-402f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2007f + 594f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(628f, 2213f, 150f) - vec3<f32>(162f, 1020f, -259f)))) * vec3<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-689f * -1971f)), func_1(Struct_4(true, vec3<i32>(var_0, var_0, 5680i), -140f, -1346f, vec3<f32>(-270f, 722f, 971f)), true).c.b, -723f)));
    var var_2 = reverseBits(-20624i);
    var var_3 = Struct_1(false, _wgslsmith_f_op_f32(-1314f * 498f), 0i, -(~(reverseBits(vec4<i32>(var_0, 16353i, 20724i, -3423i)) << (vec4<u32>(global1.x, u_input.a, global1.x, 0u) % vec4<u32>(32u)))));
    var_3 = Struct_1(var_1.a, _wgslsmith_div_f32(var_1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.d + var_1.c))))), abs(-1i), vec4<i32>(_wgslsmith_mod_i32(countOneBits(45900i), -1634i), 0i, 2147483647i << (select(1u, 0u, false) % 32u), -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(5579u, 0u, 62252u, global1.x) ^ vec4<u32>(global1.x, 0u, global1.x, global1.x), vec4<u32>(1u, u_input.a, u_input.a, 1u) << (vec4<u32>(0u, 13434u, 14314u, 11200u) % vec4<u32>(32u))) ^ vec4<u32>(abs(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, 34065u, global1.x), vec4<u32>(global1.x, 69370u, 5579u, u_input.b.x)), _wgslsmith_mod_u32(u_input.b.x, global1.x), 12307u)));
}

