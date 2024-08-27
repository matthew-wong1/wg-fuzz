struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 28> = array<i32, 28>(0i, -30824i, -772i, i32(-2147483648), 2147483647i, 18919i, -1i, -78395i, -72666i, i32(-2147483648), -1i, 1i, i32(-2147483648), 1i, 0i, 12389i, -50029i, 0i, -39977i, 23267i, -12927i, 20543i, -40320i, -1i, -24271i, 2147483647i, 1i, -69733i);

var<private> global2: array<bool, 7> = array<bool, 7>(false, false, true, true, true, true, true);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(184f)), _wgslsmith_f_op_f32(max(1557f, 374f)))))), _wgslsmith_f_op_f32(select(-446f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(780f * 1584f))), -2147483647i == global1[_wgslsmith_index_u32(u_input.c, 28u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-459f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(866f))))));
    let var_1 = Struct_1((reverseBits(u_input.a | u_input.a) << (~(vec4<u32>(global0.c.x, 0u, 0u, u_input.d.x) >> (vec4<u32>(1u, u_input.c, 4297u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (global0.c % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1991f * var_0.x))) >= 621f, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c & u_input.c, ~6403u, _wgslsmith_sub_u32(u_input.c, 0u), ~u_input.d.x) ^ ~vec4<u32>(49848u, 1u, global0.c.x, u_input.d.x), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.d.zw, vec2<u32>(0u, 4294967295u)), ~(~1u), _wgslsmith_clamp_u32(60283u ^ global0.c.x, 1u, ~u_input.d.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(8916u, u_input.d.x), vec2<u32>(4294967295u, 1u))), vec4<u32>(4294967295u, _wgslsmith_mod_u32(~global0.c.x, ~4294967295u), _wgslsmith_clamp_u32(9601u, 30421u, u_input.c), 4294967295u)));
    var var_2 = -u_input.b.x;
    var var_3 = any(select(!select(!vec4<bool>(false, false, false, var_1.b), vec4<bool>(var_1.b, global0.b, global0.b, false), false), !vec4<bool>(u_input.d.x > 84793u, any(vec3<bool>(true, var_1.b, true)), select(var_1.b, false, false), var_1.b), var_1.b));
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(338f, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(885f, var_0.x, 842f))), vec3<f32>(var_0.x, 225f, var_0.x))))))));
    return vec3<i32>(-2147483647i, abs(global1[_wgslsmith_index_u32(global0.c.x, 28u)]), max(select(2147483647i, 96808i, true), var_1.a.x));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = ~max(countOneBits(u_input.d ^ vec4<u32>(20341u, u_input.c, 4294967295u, global0.c.x)), vec4<u32>(~arg_3.c.x, ~arg_3.c.x, u_input.d.x, select(1u, 71437u, true))) >> (max(vec4<u32>(_wgslsmith_div_u32(arg_3.c.x, 1u), _wgslsmith_div_u32(u_input.c, arg_3.c.x), arg_3.c.x, ~arg_3.c.x) >> ((u_input.d << (max(arg_3.c, global0.c) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(u_input.d, _wgslsmith_div_vec4_u32(~vec4<u32>(48530u, global0.c.x, 4294967295u, 39454u), ~global0.c))) % vec4<u32>(32u));
    let var_1 = vec3<u32>(countOneBits(firstTrailingBit(1u)), arg_2, abs(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, var_0.x, 2020u), 0u), arg_3.c.x)));
    let var_2 = (vec2<i32>(_wgslsmith_div_i32(arg_1.x >> (global0.c.x % 32u), min(global1[_wgslsmith_index_u32(var_0.x, 28u)], -26423i)), i32(-1i) * -56414i) | (select(arg_1.xz, min(u_input.a.yx, u_input.a.wy), vec2<bool>(false, global2[_wgslsmith_index_u32(51363u, 7u)])) & vec2<i32>(max(-14084i, -1i), 1i))) ^ func_3().xx;
    let var_3 = Struct_1(-((vec4<i32>(-1i, -17247i, var_2.x, global1[_wgslsmith_index_u32(global0.c.x, 28u)]) ^ vec4<i32>(global0.a.x, -33984i, 2147483647i, global1[_wgslsmith_index_u32(arg_2, 28u)])) << (~(~u_input.d) % vec4<u32>(32u))), arg_0.x, global0.c);
    var_0 = global0.c;
    return arg_2;
}

fn func_2(arg_0: f32) -> u32 {
    global1 = array<i32, 28>();
    global0 = Struct_1(-_wgslsmith_add_vec4_i32(abs(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(global1[_wgslsmith_index_u32(0u, 28u)], 1i, u_input.b.x, -2147483647i))), abs(global0.a)), global2[_wgslsmith_index_u32(func_4(vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.d.x, 7u)]), ~(~func_3()), 4294967295u, Struct_1(u_input.a | vec4<i32>(-2147483647i, u_input.a.x, 0i, 1437i), global2[_wgslsmith_index_u32(global0.c.x, 7u)], global0.c)), 7u)], ~vec4<u32>(abs(~45008u), ~4294967295u, ~global0.c.x, abs(global0.c.x)));
    global1 = array<i32, 28>();
    let var_0 = Struct_1(~global0.a, true, global0.c);
    var var_1 = global0.c.x;
    return ~25584u;
}

fn func_1() -> Struct_1 {
    var var_0 = firstTrailingBit(~func_2(186f));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1634f, 1140f)) * 496f), -1000f)));
    var var_2 = max(-_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-14318i, 42807i), min(u_input.b.zz, global0.a.ww)), ~(-u_input.a.yy)), ~_wgslsmith_sub_i32(_wgslsmith_mod_i32(-24219i, 2147483647i), _wgslsmith_add_i32(3236i, global0.a.x)));
    global2 = array<bool, 7>();
    var var_3 = Struct_1(u_input.a ^ ~(~(~vec4<i32>(1i, global1[_wgslsmith_index_u32(4294967295u, 28u)], 2147483647i, global0.a.x))), true, firstTrailingBit(global0.c) >> (~vec4<u32>(~19638u, ~4294967295u, 30007u >> (1u % 32u), _wgslsmith_add_u32(u_input.d.x, 4294967295u)) % vec4<u32>(32u)));
    return Struct_1(u_input.a | abs(global0.a), !var_3.b, vec4<u32>(min(func_2(var_1), ~981u), ~4380u, _wgslsmith_add_u32(_wgslsmith_mod_u32(~var_3.c.x, func_2(var_1)), _wgslsmith_add_u32(global0.c.x & 1u, ~global0.c.x)), 1u));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = firstLeadingBit(_wgslsmith_div_u32(~(~arg_0.c.x), _wgslsmith_dot_vec3_u32(~(arg_0.c.zyw ^ arg_2.yxz), ~arg_3)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-617f * 147f), _wgslsmith_f_op_f32(round(-1782f)), _wgslsmith_f_op_f32(f32(-1f) * -531f)))));
    var var_2 = arg_0.c.x;
    var_2 = arg_0.c.x;
    let var_3 = arg_0;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), u_input.a.x, vec4<u32>(_wgslsmith_sub_u32(reverseBits(global0.c.x) ^ select(u_input.d.x, 58993u, false), abs(global0.c.x)), _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(140528u, 1u, global0.c.x, u_input.c)) ^ u_input.d.x, _wgslsmith_mod_u32(15121u, u_input.c), ~(~max(u_input.d.x, u_input.c))), reverseBits(vec3<u32>(_wgslsmith_mult_u32(global0.c.x, _wgslsmith_mod_u32(u_input.c, 25087u)), 1u, 1u)));
    global2 = array<bool, 7>();
    let var_1 = func_1();
    let var_2 = !select(func_1().b, !global0.b || !select(var_0.b, false, true), !(!var_1.b & true));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-171f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1380f, -970f, var_0.b))), _wgslsmith_f_op_f32(-1324f * _wgslsmith_div_f32(-373f, 675f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-595f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(2304f)))))), 1036f, 2432f);
    var var_4 = func_5(var_0, 1i, ~(~vec4<u32>(~u_input.c, 1u, 23354u >> (global0.c.x % 32u), func_2(960f))), var_0.c.xzz);
    let var_5 = -countOneBits(vec4<i32>(-1i) * -vec4<i32>(41446i, -81513i, u_input.b.x, var_4.a.x)) | _wgslsmith_mult_vec4_i32(u_input.a, -func_5(func_1(), ~global1[_wgslsmith_index_u32(global0.c.x, 28u)], var_4.c, vec3<u32>(var_1.c.x, var_0.c.x, var_0.c.x)).a);
    var var_6 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -555f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.xyw, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-640f, var_3.x, var_3.x, 1000f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_3)))), var_1.a, _wgslsmith_mult_u32(~reverseBits(33769u), func_4(vec3<bool>(!var_2, func_1().b, all(vec3<bool>(var_4.b, var_4.b, var_0.b))), var_0.a.wwy >> (~var_4.c.wwx % vec3<u32>(32u)), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(20653u, 4294967295u)), global0.c.wy | vec2<u32>(var_1.c.x, 0u)), Struct_1(abs(u_input.a), !var_2, var_4.c))));
}

