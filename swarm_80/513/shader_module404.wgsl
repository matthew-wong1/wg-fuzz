struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec2<u32>) -> i32 {
    let var_0 = vec4<bool>(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e + global0.e)) < _wgslsmith_f_op_f32(f32(-1f) * -990f)), !(!(187f < _wgslsmith_f_op_f32(abs(global0.c)))), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-716f, -1154f, 1063f)))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1474f)), _wgslsmith_f_op_f32(exp2(global0.e)))), global0.c));
    let var_2 = !(!(_wgslsmith_f_op_f32(round(var_1.x)) != global0.e));
    let var_3 = ~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(max(0u, 94554u), 4294967295u), max(~1u, global0.b)), ~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(47803u, global0.b, 4294967295u, 73391u), vec4<u32>(4294967295u, arg_2.x, 44555u, global0.b))), ~40581u);
    global0 = Struct_1(-global0.a, firstTrailingBit(reverseBits(firstTrailingBit(u_input.b.x)) >> (0u % 32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-816f * global0.e), _wgslsmith_f_op_f32(global0.d.x * global0.c)) - -1698f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.c, var_1.x, var_0.x)) + -302f))), global0.e);
    return _wgslsmith_mult_i32(arg_1.x, arg_1.x);
}

fn func_2() -> Struct_3 {
    global0 = Struct_1(vec4<i32>(-22807i, global0.a.x, -global0.a.x, -1i), firstTrailingBit(u_input.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-800f - global0.c))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.d, global0.d, vec2<bool>(true, true))) + vec2<f32>(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.c, 1308f))))), -1465f);
    var var_0 = Struct_2(Struct_1(select(~(-global0.a), vec4<i32>(global0.a.x, func_3(global0.a.wxz, vec3<i32>(global0.a.x, -8322i, 1i), u_input.b), _wgslsmith_mod_i32(0i, 1i), reverseBits(-22200i)), all(vec2<bool>(true, true))), _wgslsmith_mult_u32(global0.b, global0.b), -2003f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1405f, _wgslsmith_f_op_f32(floor(global0.e)))), global0.e));
    var var_1 = Struct_3(abs(~vec3<u32>(53034u, global0.b, ~11046u)), ~vec2<u32>(_wgslsmith_sub_u32(4294967295u, global0.b) >> (abs(4294967295u) % 32u), _wgslsmith_div_u32(abs(28046u), u_input.a | 1u)));
    return Struct_3(~(min(vec3<u32>(10473u, 4294967295u, var_1.b.x), ~vec3<u32>(4294967295u, 4294967295u, 9086u)) >> ((min(var_1.a, var_1.a) ^ _wgslsmith_add_vec3_u32(var_1.a, var_1.a)) % vec3<u32>(32u))), var_1.b);
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = func_2();
    let var_1 = ~(~min(_wgslsmith_div_u32(firstLeadingBit(4294967295u), var_0.a.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.b.x, u_input.d), vec2<u32>(14272u, global0.b) ^ vec2<u32>(129495u, 54182u))));
    var var_2 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 97654u, global0.b), var_0.a), var_0.a), abs(var_1), _wgslsmith_mult_u32(u_input.c & 32072u, u_input.a), var_1 | countOneBits(4294967295u)), ~(~(~(~vec4<u32>(27750u, var_0.a.x, var_1, 19581u)))), vec4<u32>(abs(~_wgslsmith_sub_u32(0u, var_1)), countOneBits(firstTrailingBit(_wgslsmith_dot_vec2_u32(var_0.a.zz, vec2<u32>(global0.b, 0u)))), countOneBits(_wgslsmith_mod_u32(countOneBits(4294967295u), 4294967295u)), _wgslsmith_clamp_u32((11093u >> (var_1 % 32u)) << (global0.b % 32u), 1u, ~(var_1 | var_1))));
    var_2 = ~(~(~select(vec4<u32>(var_2.x, global0.b, var_2.x, var_2.x), countOneBits(vec4<u32>(global0.b, global0.b, var_0.b.x, 43394u)), vec4<bool>(true, true, true, true))));
    var var_3 = vec2<bool>(true, all(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), false)) == all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false))));
    return func_2();
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = Struct_1(min(-vec4<i32>(abs(arg_2.a.x), -65674i, -1i, i32(-1i) * -58899i), -reverseBits(vec4<i32>(arg_2.a.x, -2147483647i, -2147483647i, 41992i))), 16854u, _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.d)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, arg_2.d.x) + global0.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.d)), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.e, 248f, true)))))));
    var var_1 = arg_1;
    var var_2 = Struct_2(Struct_1(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.x, global0.a.x, -7013i, global0.a.x), var_0.a) >> (select(vec4<u32>(14923u, 4294967295u, 0u, 1u), firstTrailingBit(vec4<u32>(var_0.b, arg_0.x, var_0.b, 0u)), vec4<bool>(false, true, false, true)) % vec4<u32>(32u)), _wgslsmith_mod_u32((var_0.b | u_input.d) << ((8413u | var_1.a.x) % 32u), func_1(_wgslsmith_f_op_f32(arg_2.d.x + -982f)).b.x), _wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(min(-2622f, -2063f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.c * -208f), 205f)), -802f));
    var_1 = func_2();
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(600f, arg_2.e, global0.c) * vec3<f32>(arg_2.c, var_2.a.c, -1309f)))))))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.a.c), _wgslsmith_f_op_f32(round(1000f)), true)), 290f))));
    return vec2<i32>(-_wgslsmith_dot_vec3_i32(var_2.a.a.yyy, max(arg_2.a.wxw, max(vec3<i32>(14313i, var_0.a.x, var_2.a.a.x), vec3<i32>(arg_2.a.x, -1i, 3336i)))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(firstLeadingBit(~var_0.a.x), ~(global0.a.x & var_2.a.a.x)), firstTrailingBit(var_2.a.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(vec2<u32>(13085u, u_input.b.x), u_input.b, true);
    var var_1 = func_4(u_input.b, func_1(_wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-633f - global0.e) - 2668f))), Struct_1(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(-2147483647i, -54806i, 0i, global0.a.x)) ^ (global0.a << (vec4<u32>(0u, global0.b, global0.b, u_input.d) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mult_i32(52447i, global0.a.x), 0i | global0.a.x, countOneBits(-2147483647i), _wgslsmith_div_i32(global0.a.x, -46299i))), ~func_1(_wgslsmith_f_op_f32(-global0.e)).b.x, _wgslsmith_f_op_f32(-global0.c), vec2<f32>(_wgslsmith_f_op_f32(-592f + _wgslsmith_f_op_f32(min(-1080f, 647f))), _wgslsmith_f_op_f32(-852f + _wgslsmith_f_op_f32(abs(-518f)))), -102f));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.d.x, _wgslsmith_f_op_f32(-global0.c)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(305f)))));
    var var_3 = func_2();
    var_0 = firstLeadingBit(~firstTrailingBit(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstTrailingBit(firstTrailingBit(vec4<u32>(var_0.x, var_3.b.x, global0.b, global0.b)))) << ((_wgslsmith_div_vec4_u32(abs(vec4<u32>(var_0.x, u_input.b.x, var_3.a.x, var_0.x)), vec4<u32>(global0.b, var_0.x, global0.b, 1u) >> (vec4<u32>(global0.b, global0.b, u_input.d, 1u) % vec4<u32>(32u))) & vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, global0.b), vec2<u32>(u_input.a, var_0.x)), 43483u, 1631u, ~0u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.c * 1804f), _wgslsmith_f_op_f32(-1102f - _wgslsmith_f_op_f32(global0.c + 438f)), _wgslsmith_f_op_f32(f32(-1f) * -353f), global0.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1247f, global0.d.x, 137f, 1095f) + vec4<f32>(global0.e, global0.d.x, global0.c, -2048f)), _wgslsmith_div_vec4_f32(vec4<f32>(890f, global0.d.x, global0.c, global0.e), vec4<f32>(global0.e, global0.e, 656f, global0.d.x)))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.e, 1204f, -1000f, 1293f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-358f, -729f, -664f, global0.d.x))))))), -(~(~46897i)));
}

