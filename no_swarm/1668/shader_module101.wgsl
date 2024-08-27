struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(-304f, -104f), vec2<f32>(-1666f, 132f), vec2<f32>(-1000f, -368f), vec2<f32>(-655f, 184f), vec2<f32>(611f, -997f), vec2<f32>(-860f, 327f), vec2<f32>(964f, 634f), vec2<f32>(451f, 1036f), vec2<f32>(-103f, 169f), vec2<f32>(-119f, 522f), vec2<f32>(-303f, 145f), vec2<f32>(1513f, -2639f), vec2<f32>(-190f, 302f), vec2<f32>(625f, 607f), vec2<f32>(608f, -1203f), vec2<f32>(-137f, -1000f), vec2<f32>(3183f, -1376f), vec2<f32>(-1965f, -1513f), vec2<f32>(991f, 827f), vec2<f32>(-285f, -760f), vec2<f32>(-379f, 167f), vec2<f32>(-1699f, -1000f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> u32 {
    global0 = array<vec2<f32>, 22>();
    global0 = array<vec2<f32>, 22>();
    global0 = array<vec2<f32>, 22>();
    let var_0 = Struct_3(vec4<u32>(~_wgslsmith_div_u32(~u_input.a, u_input.a), u_input.a | (~4294967295u << (~u_input.a % 32u)), 4294967295u, 60538u));
    let var_1 = _wgslsmith_f_op_f32(-142f * arg_0.a.x);
    return ~var_0.a.x;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: Struct_3) -> Struct_2 {
    global0 = array<vec2<f32>, 22>();
    let var_0 = arg_0.x;
    var var_1 = 23890u;
    var var_2 = global0[_wgslsmith_index_u32(~countOneBits(_wgslsmith_dot_vec4_u32(arg_2.a, vec4<u32>(arg_1.x, 1128u, 0u, abs(31181u)))), 22u)];
    let var_3 = max(u_input.a, arg_1.x);
    return Struct_2(vec3<f32>(-1196f, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + 1000f))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: f32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(arg_1.a, arg_1.a));
    var var_1 = u_input.b | select(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(60180i, 20941i, 1i)), firstLeadingBit(u_input.b), _wgslsmith_f_op_f32(-arg_3) < -1624f);
    var var_2 = vec2<i32>(-u_input.b.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-countOneBits(vec2<i32>(-2147483647i, var_1.x)), ~arg_2), -_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b.x), arg_2), -8009i)));
    let var_3 = arg_0;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_3, arg_1.a.x)))) * vec3<f32>(var_0.x, _wgslsmith_f_op_f32(max(arg_0.a.x, _wgslsmith_div_f32(398f, 386f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_0.a.x)))))) * arg_1.a);
    return Struct_3(vec4<u32>(abs(u_input.a), ~u_input.a, u_input.a, _wgslsmith_sub_u32(26817u, u_input.a)));
}

fn func_1() -> vec2<i32> {
    var var_0 = func_4(func_3(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), false), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true)), select(vec3<u32>(~u_input.a, _wgslsmith_sub_u32(u_input.a, 1u), u_input.a), vec3<u32>(126512u, countOneBits(21171u), func_2(Struct_2(vec3<f32>(-583f, -1806f, -408f)), -180f)), false), Struct_3(~vec4<u32>(0u, 4294967295u, 0u, 3097u) << (vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a) % vec4<u32>(32u)))), Struct_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1280f)), _wgslsmith_f_op_f32(f32(-1f) * -222f)), 465f, 425f)), u_input.b.xx, _wgslsmith_f_op_f32(floor(196f)));
    var_0 = func_4(Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(260f, 1264f, 154f) * vec3<f32>(1156f, -2113f, 212f))))))), Struct_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(425f + -567f), -107f, _wgslsmith_f_op_f32(sign(191f)))))), vec2<i32>(~u_input.b.x, -(11539i >> (u_input.a % 32u))) & select(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i) | u_input.b.xz, vec2<i32>(1471i, 1i), _wgslsmith_div_vec2_i32(u_input.b.yz, u_input.b.yx)), vec2<i32>(_wgslsmith_add_i32(-1i, u_input.b.x), 18429i), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1021f, -977f, false)), 365f, true)))));
    let var_1 = abs(-u_input.b.zz);
    let var_2 = 642f;
    let var_3 = vec4<bool>(select(false, true, false), false, false, true);
    return -vec2<i32>(abs(countOneBits(_wgslsmith_clamp_i32(-17682i, var_1.x, u_input.b.x))), 1i);
}

fn func_5(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = Struct_1(~countOneBits(min(-32549i, _wgslsmith_add_i32(-401i, u_input.b.x))));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-178f * -327f), _wgslsmith_f_op_f32(687f * -572f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 638f) * func_3(vec3<bool>(true, true, false), vec3<u32>(u_input.a, 10461u, u_input.a), Struct_3(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))).a.x)))));
    var var_2 = 65437u;
    var var_3 = vec2<bool>(true, true);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -956f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(trunc(var_1.x)))))));
    return func_4(Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1340f, var_4.x, 1461f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(var_4.x, var_4.x, var_1.x), vec3<f32>(var_1.x, -1565f, var_4.x)))), false))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(333f, var_1.x, var_4.x)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(812f, var_1.x, var_1.x)))), vec2<i32>(_wgslsmith_add_i32(arg_0.x, reverseBits(~(-2147483647i))), arg_0.x), var_4.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1());
    var var_1 = firstLeadingBit(max(vec4<i32>(firstLeadingBit(0i), firstLeadingBit(u_input.b.x), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), ~u_input.b.x) >> (_wgslsmith_add_vec4_u32(var_0.a, vec4<u32>(u_input.a, u_input.a, u_input.a, var_0.a.x)) % vec4<u32>(32u)), -select(vec4<i32>(u_input.b.x, u_input.b.x, 1i, 14762i), vec4<i32>(u_input.b.x, 2147483647i, -23755i, 1i), false)));
    var var_2 = Struct_3(~_wgslsmith_sub_vec4_u32(min(var_0.a, var_0.a), ~(var_0.a ^ vec4<u32>(u_input.a, var_0.a.x, var_0.a.x, 1u))));
    var_1 = firstTrailingBit(reverseBits(-countOneBits(vec4<i32>(-4691i, u_input.b.x, -2147483647i, u_input.b.x)))) >> (~abs(~vec4<u32>(u_input.a, 4294967295u, var_2.a.x, 0u)) % vec4<u32>(32u));
    var_0 = func_5(vec2<i32>(_wgslsmith_dot_vec3_i32(~abs(var_1.wzw), vec3<i32>(2147483647i, abs(5370i), u_input.b.x)), _wgslsmith_div_i32(func_1().x, ~u_input.b.x)));
    var_1 = vec4<i32>(abs(~(_wgslsmith_mod_i32(u_input.b.x, -93906i) << (~u_input.a % 32u))), _wgslsmith_div_i32(reverseBits(u_input.b.x), -24870i), u_input.b.x | _wgslsmith_clamp_i32(var_1.x, 1i, u_input.b.x), var_1.x);
    var_1 = ~select(vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, -var_1.x), var_1.x, _wgslsmith_mult_i32(u_input.b.x, -2147483647i) & var_1.x, 0i), firstTrailingBit(vec4<i32>(var_1.x, 2147483647i, u_input.b.x, u_input.b.x) << (vec4<u32>(0u, u_input.a, 4780u, 33451u) % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(~var_2.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, var_0.a.x), var_0.a, vec4<u32>(1u, u_input.a, var_0.a.x, u_input.a))) % vec4<u32>(32u)), false);
    let var_3 = i32(-1i) * -9010i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(var_0.a.xzy, ~vec3<u32>(0u, 18309u, 65740u) << (firstLeadingBit(vec3<u32>(21907u, 23363u, var_2.a.x) & vec3<u32>(4294967295u, 0u, 1u)) % vec3<u32>(32u)), var_0.a.yzx), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_3, -1i, var_1.x, var_1.x) | -vec4<i32>(22734i, var_3, u_input.b.x, u_input.b.x), _wgslsmith_mod_vec4_i32(-vec4<i32>(13045i, -1i, var_3, 9468i), _wgslsmith_sub_vec4_i32(vec4<i32>(12205i, 0i, u_input.b.x, u_input.b.x), vec4<i32>(1i, 2147483647i, var_3, -2147483647i)))), _wgslsmith_sub_vec4_i32(min(vec4<i32>(u_input.b.x, var_1.x, 7500i, var_3), select(vec4<i32>(var_3, var_1.x, 0i, var_1.x), vec4<i32>(0i, 0i, 1i, u_input.b.x), vec4<bool>(false, true, false, true))), ~vec4<i32>(-21163i, 0i, -1i, 29321i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1350f, -414f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-548f, 1656f))), false))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(80297u, 22u)] - global0[_wgslsmith_index_u32(25481u, 22u)]), vec2<f32>(618f, -430f))))));
}

