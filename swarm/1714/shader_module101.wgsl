struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec4<bool>) -> vec2<f32> {
    var var_0 = -abs(u_input.c.x | -_wgslsmith_mod_i32(u_input.b.x, u_input.c.x));
    let var_1 = ~vec2<i32>(_wgslsmith_dot_vec3_i32(~(u_input.c.wxw | u_input.c.wwy), vec3<i32>(~u_input.b.x, select(-2147483647i, u_input.b.x, true), u_input.c.x)), 8895i);
    let var_2 = Struct_1(u_input.c, true);
    var var_3 = all(vec2<bool>(false, true || all(!vec2<bool>(true, var_2.b))));
    var_0 = u_input.c.x | reverseBits(~1i);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(arg_1, -126f), 382f), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 1416f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))), true)))));
}

fn func_2() -> vec2<f32> {
    let var_0 = Struct_3(Struct_1(vec4<i32>(u_input.b.x, ~(~29730i), u_input.b.x, u_input.b.x), all(vec2<bool>(true, all(vec4<bool>(false, true, true, true))))));
    let var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2662f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-943f + -1060f) - 759f)), _wgslsmith_sub_vec3_u32(min(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 89722u)), max(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(10785u, 1u, u_input.a))) | vec3<u32>(max(u_input.a, u_input.a), 0u, min(u_input.a, u_input.a)), vec3<u32>(~_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), abs(u_input.a), abs(0u) & ~u_input.a)), 964f, Struct_1(u_input.c, true));
    global0 = var_1.d.b;
    var var_2 = _wgslsmith_f_op_f32(-var_1.c);
    var_2 = 1000f;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f * var_1.c), var_1.c) - vec2<f32>(1f, _wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(4294967295u, var_1.a.x, !vec4<bool>(false, var_0.a.b, true, var_1.d.b))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a)), vec2<bool>(true, true)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32, arg_3: i32) -> vec4<i32> {
    var var_0 = Struct_1(firstLeadingBit(firstTrailingBit(arg_1.a.a)) << ((vec4<u32>(1u ^ u_input.a, firstTrailingBit(1u), 56978u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 63336u), vec4<u32>(arg_0.b.x, u_input.a, arg_2, 10179u))) ^ (~vec4<u32>(arg_2, u_input.a, 1u, arg_2) & ~vec4<u32>(1u, 1u, arg_0.b.x, 34168u))) % vec4<u32>(32u)), true);
    let var_1 = Struct_3(arg_0.d);
    global0 = all(!select(vec2<bool>(false, true), !vec2<bool>(var_1.a.b, false), any(vec4<bool>(false, true, true, false)))) || var_1.a.b;
    global0 = var_0.b;
    var var_2 = select(111553u, _wgslsmith_add_u32(abs(arg_2), _wgslsmith_add_u32(u_input.a, 47256u)) << (49365u % 32u), true) != ~(~max(arg_2, ~arg_0.b.x));
    return vec4<i32>(~select(select(arg_0.d.a.x, 10751i, var_0.b), arg_0.d.a.x << (0u % 32u), true) >> (u_input.a % 32u), var_1.a.a.x, i32(-1i) * -5360i, ~min(arg_1.a.a.x, var_1.a.a.x));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(0i, (i32(-1i) * -16941i) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(26613u, u_input.a), vec2<u32>(u_input.a, u_input.a)) % 32u), 1i, u_input.b.x), func_4(Struct_2(_wgslsmith_f_op_vec2_f32(func_2()), ~(~vec3<u32>(u_input.a, 1u, 17957u)), 1337f, Struct_1(~u_input.c, all(vec4<bool>(false, true, true, false)))), Struct_3(Struct_1(-vec4<i32>(arg_0, arg_0, -2147483647i, u_input.b.x), true)), reverseBits(firstLeadingBit(_wgslsmith_sub_u32(u_input.a, u_input.a))), _wgslsmith_mult_i32(reverseBits(firstTrailingBit(u_input.c.x)), _wgslsmith_mult_i32(57297i ^ arg_0, arg_0))));
    let var_1 = true;
    let var_2 = var_0.yz;
    var_0 = vec4<i32>(-41086i, var_0.x, ~(~1i), -1i);
    let var_3 = ~(~(u_input.a | 4294967295u));
    return Struct_1(-firstTrailingBit(~max(vec4<i32>(var_2.x, var_2.x, -69281i, arg_0), u_input.c)), any(select(!select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, true, true), vec3<bool>(true, var_1, false)), select(select(vec3<bool>(var_1, false, var_1), vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, var_1, var_1)), vec3<bool>(true, true, true), vec3<bool>(var_1, false, true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 1i, 11571i, u_input.c.x), u_input.c);
    let var_1 = func_1(u_input.b.x);
    let var_2 = Struct_2(vec2<f32>(-1090f, _wgslsmith_div_f32(_wgslsmith_div_f32(255f, _wgslsmith_f_op_vec2_f32(func_3(4294967295u, -1346f, vec4<bool>(var_1.b, var_1.b, var_1.b, false))).x), -244f)), vec3<u32>(5938u, _wgslsmith_clamp_u32(~(u_input.a ^ 1u), 4294967295u, 14230u >> (countOneBits(u_input.a) % 32u)), reverseBits(_wgslsmith_mod_u32(1u, u_input.a << (u_input.a % 32u)))), 1f, var_1);
    global0 = all(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(true, false))), select(!vec2<bool>(var_1.b, var_2.d.b), !vec2<bool>(var_2.d.b, false), true), select(select(vec2<bool>(var_1.b, false), vec2<bool>(var_2.d.b, true), false), select(vec2<bool>(var_1.b, var_2.d.b), vec2<bool>(var_2.d.b, var_1.b), var_1.b), true)), select(vec2<bool>(var_1.b, true), vec2<bool>(var_2.d.b, false), vec2<bool>(true, true)), select(vec2<bool>(true, var_1.b | true), vec2<bool>(var_2.d.b && true, true), select(vec2<bool>(false, var_2.d.b), !vec2<bool>(false, var_1.b), true))));
    let var_3 = _wgslsmith_sub_vec3_i32(~vec3<i32>(firstLeadingBit(var_1.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, 2147483647i, var_1.a.x) | var_2.d.a.xwz, ~var_1.a.wxx), ~(-2147483647i)), u_input.c.zyw);
    global0 = !(!var_1.b & var_2.d.b);
    var var_4 = var_3;
    var_4 = vec3<i32>(24364i, firstLeadingBit(_wgslsmith_add_i32(37501i, ~(-44044i >> (0u % 32u)))), -1i);
    var var_5 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(var_1.a.x, var_0.x, var_1.a.x, var_3.x)), ~u_input.c, -2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(284f, _wgslsmith_f_op_vec2_f32(func_2()).x, -487f, _wgslsmith_f_op_f32(-1f))));
}

