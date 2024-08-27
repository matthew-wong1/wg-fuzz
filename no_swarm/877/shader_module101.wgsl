struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: bool,
    e: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(vec4<i32>(0i, 19321i, 2147483647i, -1i), false), vec3<u32>(0u, 0u, 12185u));

var<private> global1: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(4294967295u, 27497u, 0u, 10430u), vec4<u32>(0u, 1u, 9279u, 84648u), vec4<u32>(4294967295u, 24266u, 25222u, 1u), vec4<u32>(42039u, 497u, 12695u, 32449u), vec4<u32>(0u, 4294967295u, 1u, 50774u), vec4<u32>(0u, 1u, 11258u, 137369u), vec4<u32>(21849u, 48678u, 56376u, 114155u), vec4<u32>(43177u, 11830u, 0u, 117329u), vec4<u32>(28572u, 26569u, 2379u, 4294967295u), vec4<u32>(4294967295u, 24966u, 90396u, 4294967295u), vec4<u32>(8727u, 14014u, 1u, 39940u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = Struct_2(global0.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * -1177f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0)), arg_0), _wgslsmith_f_op_f32(f32(-1f) * -865f))), Struct_1(vec4<i32>(_wgslsmith_sub_i32(global0.a.a.x, ~global0.a.a.x), firstLeadingBit(~global0.a.a.x), u_input.a.x, global0.a.a.x), !any(!vec4<bool>(true, global0.a.b, global0.a.b, global0.a.b))), -firstTrailingBit(~30258i) == ~(-1i), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(select(363f, arg_0, global0.a.b && false)), _wgslsmith_f_op_f32(abs(arg_0)), -2380f, 1000f))));
    var var_1 = Struct_4(Struct_1(vec4<i32>(-(u_input.a.x ^ 5080i), ~(-42527i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c.a.x, var_0.c.a.x, 2147483647i, 47866i), global0.a.a), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a.x, -2874i, u_input.a.x), var_0.a.a)), _wgslsmith_mult_i32(1i, i32(-1i) * -38487i)), true), max(~vec3<u32>(11572u, 62736u, u_input.b) ^ global0.b, ~vec3<u32>(_wgslsmith_sub_u32(global0.b.x, u_input.b), 13320u, ~18196u)));
    global0 = Struct_4(var_0.c, vec3<u32>(~_wgslsmith_mult_u32(~3438u, global0.b.x), 30840u, 1u));
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(-153f, 587f), var_0.e.wy);
    global1 = array<vec4<u32>, 11>();
    return any(vec4<bool>(var_1.a.b, true, !(all(vec4<bool>(false, var_0.d, global0.a.b, true)) & false), true));
}

fn func_2() -> Struct_4 {
    global0 = Struct_4(Struct_1(-global0.a.a, func_3(_wgslsmith_f_op_f32(1449f + 345f))), ~global0.b);
    let var_0 = Struct_5(Struct_3(1u, Struct_1(global0.a.a, global0.a.b), Struct_2(Struct_1(reverseBits(vec4<i32>(global0.a.a.x, global0.a.a.x, global0.a.a.x, u_input.a.x)), global0.a.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(557f, 1302f), vec2<f32>(440f, -515f))), global0.a, all(vec3<bool>(true, false, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-361f, -1797f, -1793f, 1183f) - vec4<f32>(-441f, -411f, 634f, 1695f)))), _wgslsmith_dot_vec4_i32(-global0.a.a, global0.a.a)), Struct_4(Struct_1(global0.a.a, !(global0.a.b == global0.a.b)), global0.b), _wgslsmith_f_op_f32(f32(-1f) * -568f), abs(vec2<u32>(u_input.b, global0.b.x)));
    var var_1 = Struct_5(var_0.a, Struct_4(Struct_1(-vec4<i32>(28828i, var_0.a.c.a.a.x, 18558i, 0i), var_0.a.b.b), var_0.b.b), 281f, reverseBits(abs(vec2<u32>(firstLeadingBit(var_0.a.a), var_0.b.b.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a.c.e - var_1.a.c.e) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1298f, 624f, var_1.c, 1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c, var_0.a.c.b.x, var_1.a.c.b.x, var_0.a.c.e.x), vec4<f32>(var_1.a.c.b.x, var_1.a.c.b.x, var_1.c, 1882f)))) - vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.c.b.x), _wgslsmith_f_op_f32(f32(-1f) * -349f), var_1.c, 1895f))));
    var_1 = Struct_5(var_1.a, var_0.b, var_2.x, ~_wgslsmith_sub_vec2_u32(var_0.d, min(var_0.b.b.zz ^ var_0.b.b.xz, ~vec2<u32>(0u, 18155u))));
    return var_0.b;
}

fn func_1(arg_0: bool) -> vec4<bool> {
    let var_0 = Struct_1(global0.a.a, arg_0);
    global0 = func_2();
    var var_1 = Struct_2(func_2().a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -661f), _wgslsmith_f_op_f32(1914f - 344f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(649f)), 998f)))), func_2().a, !(global0.a.b != all(vec4<bool>(global0.a.b, var_0.b, true, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-454f, 466f, 971f, 1000f), vec4<f32>(-202f, 498f, 456f, 895f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 1227f, 1498f, 602f), vec4<f32>(268f, 478f, -1225f, -551f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-665f, 264f, -632f, 1718f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-552f, -1000f, 917f, -1183f), vec4<f32>(-168f, 1314f, 1000f, -170f))) - vec4<f32>(1503f, _wgslsmith_f_op_f32(761f - -229f), -636f, _wgslsmith_f_op_f32(ceil(997f))))));
    var var_2 = vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, 74490i | var_0.a.x), vec2<i32>(~var_0.a.x, var_1.a.a.x)), -countOneBits(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.a.x, global0.a.a.x), var_1.c.a.zx))), global0.a.a.x, -var_0.a.x);
    let var_3 = all(select(!select(!vec4<bool>(global0.a.b, true, global0.a.b, global0.a.b), !vec4<bool>(var_0.b, var_0.b, true, var_0.b), select(vec4<bool>(true, var_1.d, false, global0.a.b), vec4<bool>(var_0.b, arg_0, global0.a.b, var_1.a.b), vec4<bool>(global0.a.b, var_1.d, true, false))), vec4<bool>(all(vec3<bool>(var_1.a.b, arg_0, true)), !var_0.b, !(46199u < u_input.b), false), true));
    return !(!vec4<bool>(any(!vec4<bool>(false, var_3, global0.a.b, global0.a.b)), select(var_0.b & var_0.b, true, var_1.d), func_3(_wgslsmith_f_op_f32(-527f * var_1.e.x)), false));
}

fn func_4(arg_0: vec4<f32>) -> Struct_3 {
    var var_0 = arg_0;
    var var_1 = 384f;
    global0 = func_2();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2928f);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) + arg_0)))));
    return Struct_3(global0.b.x ^ u_input.b, Struct_1(global0.a.a, select(!(u_input.a.x >= global0.a.a.x), !select(global0.a.b, false, global0.a.b), global0.a.b)), Struct_2(func_2().a, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_3.x) * var_3.xx)))), func_2().a, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(27187u, u_input.b, u_input.b)), func_2().b) == 20112u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0.x, var_0.x, var_2) - vec4<f32>(var_2, var_0.x, var_0.x, -361f)))), ~(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b.x;
    let var_1 = ~abs(global1[_wgslsmith_index_u32(u_input.b, 11u)] << (~firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 0u, global0.b.x)) % vec4<u32>(32u)));
    let var_2 = Struct_5(func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(979f, -952f, 408f, 771f), vec4<f32>(-124f, 446f, -1732f, -655f))), vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(351f, -1749f, -140f, -313f), vec4<f32>(421f, -551f, 102f, -768f)))), !func_1(false)))), Struct_4(global0.a, vec3<u32>(u_input.b, 0u, _wgslsmith_sub_u32(0u, var_1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -476f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1469f, -1000f, global0.a.b))))))), firstLeadingBit(_wgslsmith_clamp_vec2_u32(~vec2<u32>(3854u, 0u) | vec2<u32>(u_input.b, u_input.b), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(var_1.zy, var_1.wx), firstTrailingBit(vec2<u32>(1u, 0u))), vec2<u32>(var_1.x, 0u) << ((global0.b.xy & global0.b.xz) % vec2<u32>(32u)))));
    let var_3 = global0.b.x;
    let var_4 = select(vec2<bool>(var_2.b.a.b, !global0.a.b), select(vec2<bool>(false, global0.b.x != abs(22067u)), select(!vec2<bool>(var_2.b.a.b, true), vec2<bool>(true, true), func_1(!var_2.b.a.b).xx), true), !vec2<bool>(!var_2.b.a.b || true, var_2.b.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_2.a.c.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1240f, 1062f, var_2.c)), _wgslsmith_f_op_vec3_f32(floor(var_2.a.c.e.yxx))) - var_2.a.c.e.zxx) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.a.c.b.x, 1733f, var_2.c), vec3<f32>(var_2.c, -1140f, var_2.a.c.b.x))), var_2.a.c.e.yyx)), 8194u, _wgslsmith_mod_u32(_wgslsmith_div_u32(firstLeadingBit(var_2.a.a), 4294967295u) ^ (~u_input.b >> (firstLeadingBit(var_2.a.a) % 32u)), select(~var_2.a.a >> (~11478u % 32u), ~u_input.b, !var_4.x == !var_2.a.b.b)));
}

