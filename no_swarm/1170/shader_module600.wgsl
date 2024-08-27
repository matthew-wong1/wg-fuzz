struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(-328f, vec2<bool>(false, true), true));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> f32 {
    let var_0 = vec3<u32>(firstTrailingBit(u_input.c), 1u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(~16412u, ~u_input.c), _wgslsmith_div_u32(20832u, 16336u) << (_wgslsmith_dot_vec3_u32(u_input.b.xxw, vec3<u32>(0u, u_input.a, u_input.a)) % 32u)), ~u_input.c));
    let var_1 = vec3<bool>(any(!select(!vec4<bool>(arg_0, true, false, arg_0), select(vec4<bool>(false, arg_0, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, arg_0, false, arg_0)), arg_0)), global0.a.c, arg_0);
    let var_2 = global0.a.c;
    var var_3 = !global0.a.c;
    let var_4 = ~u_input.b.x;
    return _wgslsmith_f_op_f32(round(-544f));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(global0.a.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(false, -_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(1485i, -1i, u_input.d.x, u_input.d.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global0.a.a, 411f)), _wgslsmith_f_op_f32(global0.a.a * global0.a.a))))))));
    var var_1 = 1i;
    let var_2 = countOneBits(_wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(u_input.b, firstTrailingBit(u_input.b)), firstLeadingBit(u_input.b | firstTrailingBit(vec4<u32>(u_input.c, u_input.c, 53050u, u_input.b.x)))));
    let var_3 = select(!vec4<bool>(false, false, all(vec4<bool>(global0.a.b.x, true, true, true)), false), vec4<bool>(~(~var_2.x) < var_2.x, false, any(vec4<bool>(false, all(global0.a.b), true, global0.a.c)), all(select(select(vec3<bool>(false, true, global0.a.c), vec3<bool>(global0.a.b.x, global0.a.c, global0.a.c), true), vec3<bool>(global0.a.b.x, true, false), select(vec3<bool>(global0.a.b.x, global0.a.c, global0.a.b.x), vec3<bool>(false, global0.a.b.x, global0.a.c), global0.a.c)))), true);
    let var_4 = true;
    return Struct_1(var_0, vec2<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), var_3.xw))), !global0.a.b.x);
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_3.a.a, -1466f, 825f, -607f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2426f, -281f, -1015f, 1000f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a, global0.a.a, -925f, global0.a.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.a.a, global0.a.a, arg_3.a.a, -730f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1412f, 201f, 1475f, global0.a.a))) - vec4<f32>(arg_3.a.a, -1021f, _wgslsmith_f_op_f32(arg_3.a.a - -1990f), 953f)))));
    let var_1 = ~(select(vec2<u32>(55864u, 15532u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.b.x)), vec2<bool>(true, true)) & vec2<u32>(0u, 0u)) ^ min(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_2.x), vec2<u32>(arg_2.x, arg_2.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, arg_2.x, 0u), u_input.b)), (vec2<u32>(arg_2.x, 19537u) & vec2<u32>(4294967295u, u_input.b.x)) & _wgslsmith_div_vec2_u32(u_input.b.zw, u_input.b.ww)), abs(arg_2.ww));
    var var_2 = select(-49881i, abs(-_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, 36620i, 47221i, u_input.d.x), vec4<i32>(2147483647i, 2147483647i, arg_0.x, -9950i)), u_input.d.x)), var_1.x >= 60759u);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1997f - _wgslsmith_f_op_f32(f32(-1f) * -266f)) - _wgslsmith_f_op_f32(-arg_3.a.a)), vec2<bool>(!any(arg_3.b), !((arg_1 & arg_1) & any(arg_3.a.b))), !(!(!arg_1 != true)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: u32) -> i32 {
    global0 = Struct_3(Struct_1(global0.a.a, global0.a.b, arg_1.b));
    global0 = Struct_3(func_4(u_input.d.xx, arg_1.b, _wgslsmith_mod_vec4_u32(u_input.b, select(~vec4<u32>(0u, 4294967295u, arg_1.a, arg_1.a), ~u_input.b, !vec4<bool>(global0.a.c, false, true, arg_1.b))), Struct_2(func_2(), select(select(vec4<bool>(true, false, arg_1.b, arg_1.b), vec4<bool>(arg_1.b, false, arg_1.b, global0.a.c), arg_1.b), vec4<bool>(true, true, false, false), vec4<bool>(false, arg_1.b, arg_1.b, false)))));
    global0 = Struct_3(global0.a);
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-func_4(vec2<i32>(-2147483647i, arg_0.x), false, vec4<u32>(arg_2, 102600u, arg_1.a, 86201u), Struct_2(Struct_1(726f, global0.a.b, true), vec4<bool>(false, arg_1.b, global0.a.b.x, arg_1.b))).a))), vec2<bool>(arg_1.b, all(vec2<bool>(true, false))), func_4(vec2<i32>(38174i, -1i) ^ -u_input.d.yy, !(global0.a.b.x & global0.a.c), ~firstLeadingBit(vec4<u32>(4294967295u, 1u, u_input.a, 1u)), Struct_2(func_4(arg_0.yy, arg_1.b, u_input.b, Struct_2(global0.a, vec4<bool>(global0.a.b.x, false, global0.a.c, arg_1.b))), vec4<bool>(global0.a.c, arg_1.b, true, arg_1.b))).b.x));
    global0 = Struct_3(func_4(vec2<i32>(-2492i, -41233i), true, ~u_input.b, Struct_2(func_2(), select(select(vec4<bool>(false, global0.a.c, global0.a.c, global0.a.c), vec4<bool>(arg_1.b, false, true, false), vec4<bool>(global0.a.b.x, false, false, arg_1.b)), select(vec4<bool>(false, true, false, global0.a.b.x), vec4<bool>(true, arg_1.b, true, false), vec4<bool>(true, true, true, global0.a.c)), vec4<bool>(arg_1.b, false, false, global0.a.b.x)))));
    return arg_0.x;
}

fn func_5(arg_0: i32, arg_1: vec3<u32>) -> bool {
    var var_0 = (1i == u_input.d.x) | true;
    global0 = Struct_3(global0.a);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1684f), global0.a.a, 882f);
    let var_2 = vec2<bool>(false, true);
    var_0 = select(any(vec3<bool>(select(true, var_2.x, false), func_4(u_input.d.zy, false, vec4<u32>(arg_1.x, 16040u, 33570u, arg_1.x), Struct_2(Struct_1(global0.a.a, var_2, var_2.x), vec4<bool>(global0.a.c, false, var_2.x, global0.a.b.x))).c, var_2.x || true)) | true, global0.a.c, !((-1000f >= var_1.x) & all(vec4<bool>(true, true, global0.a.c, false))) || true);
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(true, !all(!vec4<bool>(false, global0.a.c, global0.a.c, global0.a.b.x)), !func_5(func_1(vec4<i32>(u_input.d.x, -17327i, -18622i, u_input.d.x), Struct_4(u_input.c, global0.a.b.x), 18594u), ~u_input.b.yxz));
    let var_1 = global0.a.a;
    var_0 = select(!vec3<bool>(true, min(18455i, u_input.d.x) >= (4069i << (u_input.c % 32u)), true), select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(false, true, false, false)), reverseBits(u_input.d.x) <= _wgslsmith_mod_i32(-1i, u_input.d.x), false), !vec3<bool>(all(vec3<bool>(false, global0.a.c, true)), true, func_2().b.x)), false | var_0.x);
    var_0 = select(vec3<bool>(1u >= u_input.a, !(u_input.d.x <= -36491i), var_0.x), !(!(!(!vec3<bool>(global0.a.c, false, true)))), select(select(vec3<bool>(true, !global0.a.c, func_4(vec2<i32>(19185i, 9549i), var_0.x, u_input.b, Struct_2(global0.a, vec4<bool>(global0.a.b.x, var_0.x, false, global0.a.c))).b.x), vec3<bool>(any(vec3<bool>(var_0.x, true, var_0.x)), false, any(vec3<bool>(true, true, true))), !(u_input.b.x < u_input.a)), !vec3<bool>(var_0.x && var_0.x, false, func_4(vec2<i32>(2147483647i, u_input.d.x), false, vec4<u32>(1u, u_input.a, u_input.c, u_input.c), Struct_2(global0.a, vec4<bool>(global0.a.b.x, global0.a.b.x, var_0.x, var_0.x))).c), any(select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0.x, global0.a.b.x, var_0.x, var_0.x), true))));
    var var_2 = ~(-u_input.d.x);
    let var_3 = vec3<i32>(2147483647i, u_input.d.x, ~firstTrailingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, 1i, -38670i), vec3<i32>(31881i, u_input.d.x, u_input.d.x))));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(floor(-567f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.a.a + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(vec2<i32>(-2147483647i, -2147483647i), true, vec4<u32>(23355u, u_input.c, 12014u, u_input.b.x), Struct_2(global0.a, vec4<bool>(false, var_0.x, global0.a.b.x, global0.a.c))).a * _wgslsmith_f_op_f32(f32(-1f) * -162f)), 932f), true)), _wgslsmith_f_op_f32(539f - global0.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1102f + _wgslsmith_f_op_f32(step(global0.a.a, global0.a.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1054f - 1731f), _wgslsmith_f_op_f32(-global0.a.a)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_i32(u_input.d, u_input.d), -abs(~vec4<i32>(u_input.d.x, -20890i, -17066i, u_input.d.x) >> (~vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.c) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1307f, 147f, -759f, global0.a.a) * vec4<f32>(1121f, 1000f, var_4.x, global0.a.a)) * _wgslsmith_f_op_vec4_f32(var_4 + var_4)))))), vec2<u32>(_wgslsmith_sub_u32(max(~25339u, u_input.b.x << (u_input.b.x % 32u)), abs(_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(6867u, u_input.a)))), reverseBits(~_wgslsmith_dot_vec3_u32(u_input.b.zww, vec3<u32>(22426u, 1u, u_input.b.x)))), _wgslsmith_f_op_vec2_f32(ceil(var_4.zx)));
}

