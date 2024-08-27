struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> i32 {
    var var_0 = abs(u_input.a) & -16277i;
    var_0 = -firstTrailingBit(u_input.a);
    var_0 = _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b.x, u_input.b.x, 0i), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(firstLeadingBit(u_input.a), u_input.a, ~u_input.a), (vec3<i32>(-2147483647i, u_input.b.x, u_input.a) | vec3<i32>(-2147483647i, u_input.b.x, u_input.a)) >> (vec3<u32>(36011u, 85785u, 1u) % vec3<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(128f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1103f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-2414f, 1000f))) - _wgslsmith_f_op_f32(232f * 1f)), _wgslsmith_f_op_f32(ceil(-291f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-770f, -1213f))))))));
    var_0 = ~(~abs(1i));
    return 0i;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: bool) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -183f))) + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -598f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -945f))))), -1172f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1154f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1279f), -981f, true)) + _wgslsmith_f_op_f32(-131f - -483f)))));
    var var_1 = Struct_2(Struct_1(select(arg_0, ~(arg_0 >> (arg_0 % 32u)), 1f < _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_mod_i32(abs(u_input.b.x), -u_input.a) < (-17429i << (0u % 32u))), Struct_1(~select(~arg_0, arg_0, true), all(select(vec4<bool>(arg_2, arg_2, arg_2, true), select(vec4<bool>(arg_2, true, true, true), vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(arg_2, false, true, true)), vec4<bool>(arg_2, arg_2, true, arg_2)))), arg_0, select(vec3<bool>(arg_2, all(vec2<bool>(true, true)), -1000f >= _wgslsmith_f_op_f32(round(-249f))), vec3<bool>(select(!arg_2, arg_1 >= -7654i, u_input.a <= -19532i), !arg_2 || any(vec4<bool>(arg_2, arg_2, arg_2, true)), select(any(vec3<bool>(arg_2, true, arg_2)), true, !arg_2)), select(select(vec3<bool>(false, true, arg_2), select(vec3<bool>(true, false, true), vec3<bool>(false, arg_2, true), arg_2), vec3<bool>(arg_2, false, false)), vec3<bool>(true, true, false), true)), Struct_1(arg_0, !all(select(vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(false, false, true, true), vec4<bool>(true, false, arg_2, arg_2)))));
    var_1 = Struct_2(var_1.a, var_1.a, min(arg_0, 27983u) & ((~arg_0 << (_wgslsmith_clamp_u32(14394u, var_1.e.a, 0u) % 32u)) & 11583u), vec3<bool>(arg_2, arg_2, !arg_2), Struct_1(_wgslsmith_div_u32(_wgslsmith_mult_u32(~var_1.e.a, _wgslsmith_mod_u32(arg_0, arg_0)), ~_wgslsmith_mult_u32(var_1.e.a, 0u)), _wgslsmith_sub_i32(arg_1, u_input.b.x) != arg_1));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(var_0.x + -732f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))) * 1070f) - var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-613f - var_0.x)), var_0.x), _wgslsmith_f_op_f32(-var_0.x));
    var_1 = Struct_2(var_1.a, Struct_1(19463u, all(!(!vec4<bool>(var_1.e.b, false, true, var_1.d.x)))), arg_0, select(select(var_1.d, select(vec3<bool>(var_1.d.x, arg_2, false), select(var_1.d, var_1.d, arg_2), arg_2), all(select(vec4<bool>(true, var_1.b.b, arg_2, arg_2), vec4<bool>(arg_2, var_1.e.b, arg_2, true), true))), var_1.d, var_1.d.x), var_1.e);
    return arg_0 & var_1.e.a;
}

fn func_1(arg_0: vec3<i32>) -> vec3<i32> {
    var var_0 = _wgslsmith_clamp_i32(0i, _wgslsmith_sub_i32(u_input.a, func_2()), _wgslsmith_mult_i32(max(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, u_input.a, arg_0.x, arg_0.x), vec4<i32>(-6167i, -15544i, arg_0.x, 24118i)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, -2147483647i, u_input.b.x, u_input.a), vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, 0i))), arg_0.x >> (1u % 32u)), -arg_0.x));
    var_0 = 20167i;
    var_0 = ~(1i & ~u_input.a) ^ ~(arg_0.x | ~48698i);
    let var_1 = Struct_3(vec2<i32>(reverseBits(1i), _wgslsmith_add_i32(_wgslsmith_sub_i32(-1i, -24945i), _wgslsmith_add_i32(~(-9797i), arg_0.x))));
    var_0 = ~0i;
    return -(~reverseBits(vec3<i32>(10195i, u_input.a, -2147483647i) ^ arg_0)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(30033u, 24566u), 0u << (1u % 32u)), 23710u, func_3(4294967295u, _wgslsmith_mult_i32(-2147483647i, u_input.a), true)), vec3<u32>(firstTrailingBit(select(54904u, 23943u, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(93715u, 5718u, 0u)), _wgslsmith_add_u32(1u, 4488u))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec2<i32>(u_input.a, _wgslsmith_dot_vec2_i32(~vec2<i32>(8247i, -18614i), u_input.b)));
    let var_1 = u_input.b.x <= -reverseBits(-_wgslsmith_add_i32(u_input.b.x, u_input.b.x));
    var var_2 = ~func_1(_wgslsmith_mod_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.b.x, -1i), vec3<i32>(24348i, u_input.b.x, var_0.a.x)), vec3<i32>(var_0.a.x, u_input.a, 44389i) >> (vec3<u32>(53965u, 81119u, 25872u) % vec3<u32>(32u))));
    var var_3 = u_input.a;
    let var_4 = max(~vec2<u32>(~(~73988u), abs(abs(1u))), vec2<u32>(~1u, firstTrailingBit(53641u)));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1887f, _wgslsmith_f_op_f32(ceil(-1342f)), 1098f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-526f, -714f, -865f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1241f, 329f, -1754f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(807f, -2204f, 1186f))))), var_1)), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(var_0.a.x, var_0.a.x, var_2.x)), func_1(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, 27866i, u_input.a), vec3<i32>(18173i, 26011i, u_input.a)))), vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, -51272i), vec3<i32>(var_0.a.x, var_2.x, u_input.b.x) & vec3<i32>(u_input.b.x, 13123i, u_input.b.x)), func_2())));
}

