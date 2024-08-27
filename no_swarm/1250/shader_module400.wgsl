struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false);

var<private> global1: array<Struct_3, 2>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_5) -> bool {
    global0 = Struct_1(-11649i < (_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(53415i, u_input.b)), ~vec2<i32>(-10538i, u_input.b)) >> (u_input.c.x % 32u)));
    var var_0 = select(vec2<bool>(global0.a, true), !vec2<bool>(!all(vec4<bool>(true, global0.a, true, false)), select(global0.a, all(vec4<bool>(false, true, arg_0.b, false)), global0.a)), vec2<bool>(true, global0.a));
    let var_1 = ~abs(reverseBits(~(~vec2<u32>(49081u, 0u))));
    global1 = array<Struct_3, 2>();
    var_0 = vec2<bool>(any(!vec3<bool>(select(global0.a, var_0.x, var_0.x), global0.a & var_0.x, 75092u >= var_1.x)), all(!vec2<bool>(false, any(vec2<bool>(false, var_0.x)))));
    return all(select(vec4<bool>(global0.a, all(vec2<bool>(true, true)), any(vec4<bool>(true, false, global0.a, arg_0.b)), any(vec2<bool>(var_0.x, true))), vec4<bool>(all(vec2<bool>(true, global0.a)), global0.a, true, u_input.b > countOneBits(0i)), var_0.x));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_add_i32(reverseBits(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(select(u_input.b, u_input.b, arg_1), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(1i, u_input.b))), -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b)))), firstTrailingBit(~firstTrailingBit(u_input.b) << (~u_input.c.x % 32u)));
    var var_1 = ~(~u_input.c);
    let var_2 = Struct_4(_wgslsmith_mod_vec2_u32(u_input.c, u_input.c), -296f, _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(u_input.c.x, 14005u)), 1u, var_1.x), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, u_input.c.x, var_1.x), vec3<u32>(2603u, 35450u, ~52052u), _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 72060u, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, var_1.x), vec3<u32>(var_1.x, var_1.x, 4294967295u))))), ~(~(~vec3<u32>(var_1.x, 1u, u_input.c.x)) >> (~max(vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<u32>(var_1.x, 1u, var_1.x)) % vec3<u32>(32u))));
    var var_3 = !global0.a;
    let var_4 = var_2.b;
    return ~var_2.c.x;
}

fn func_2(arg_0: i32, arg_1: i32) -> vec4<bool> {
    var var_0 = func_4(Struct_1(any(vec4<bool>(func_3(Struct_5(u_input.c.x, global0.a)), any(vec3<bool>(true, global0.a, true)), global0.a, global0.a))), global0.a, Struct_1(true));
    var var_1 = Struct_4(abs(vec2<u32>(u_input.c.x, ~(~u_input.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -122f) * -672f), _wgslsmith_f_op_f32(310f - _wgslsmith_f_op_f32(-117f - -1000f))))), vec3<u32>(0u, select(~u_input.c.x, ~firstLeadingBit(0u), global0.a), ~_wgslsmith_add_u32(u_input.a, ~44101u)), vec3<u32>(u_input.a, 1u, firstLeadingBit(u_input.a)) >> (~_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(1670u, u_input.c.x, u_input.c.x)), vec3<u32>(1u, 0u, u_input.a) & vec3<u32>(12980u, 47149u, u_input.a), ~vec3<u32>(u_input.c.x, u_input.c.x, u_input.a)) % vec3<u32>(32u)));
    let var_2 = global0.a;
    var var_3 = ~select(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, u_input.b, -1815i), abs(vec3<i32>(u_input.b, u_input.b, 3905i))) & firstLeadingBit(vec3<i32>(arg_0, arg_1, 2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, _wgslsmith_div_i32(-8794i, u_input.b), -1i), vec3<i32>(select(-32367i, u_input.b, false), 0i, u_input.b)), vec3<bool>(19766i <= _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 4107i, arg_1), vec3<i32>(-1i, arg_1, u_input.b)), global0.a, all(select(vec3<bool>(true, true, false), vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(global0.a, true, global0.a)))));
    var var_4 = ~(~((abs(vec3<i32>(-2147483647i, -30882i, -2020i)) ^ -vec3<i32>(var_3.x, arg_0, arg_1)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(12365u, var_1.c.x, var_1.d.x), ~vec3<u32>(1u, var_1.d.x, u_input.c.x), select(vec3<u32>(0u, 0u, 4294967295u), var_1.c, true)) % vec3<u32>(32u))));
    return select(!select(select(!vec4<bool>(global0.a, false, global0.a, true), vec4<bool>(global0.a, global0.a, true, false), -33675i > u_input.b), !(!vec4<bool>(true, global0.a, global0.a, true)), select(!vec4<bool>(true, true, global0.a, global0.a), select(vec4<bool>(global0.a, true, true, true), vec4<bool>(true, true, false, global0.a), true), global0.a)), !(!(!vec4<bool>(false, global0.a, global0.a, global0.a))), vec4<bool>(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(max(1290f, var_1.b)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-481f + var_1.b) + _wgslsmith_f_op_f32(floor(var_1.b))), var_3.x < abs(-arg_1), global0.a, global0.a));
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    let var_0 = select(vec4<bool>((~1u >> (arg_1.a.a.x % 32u)) > (_wgslsmith_sub_u32(0u, 0u) | ~u_input.c.x), false, false, arg_1.a.c.a & (arg_0 > 179f)), select(func_2(-arg_1.a.b, (-2147483647i | u_input.b) >> (u_input.c.x % 32u)), !vec4<bool>(true & arg_1.a.c.a, true, func_3(Struct_5(4294967295u, false)), arg_1.a.c.a), func_2(-arg_1.a.b << (~u_input.c.x % 32u), -_wgslsmith_mult_i32(arg_1.a.d, -2147483647i)).x), !select(func_2(abs(arg_1.a.d), _wgslsmith_dot_vec2_i32(vec2<i32>(-11260i, 34463i), vec2<i32>(-2147483647i, -6868i))), select(!vec4<bool>(false, true, global0.a, false), select(vec4<bool>(false, false, false, global0.a), vec4<bool>(arg_1.a.c.a, global0.a, true, global0.a), global0.a), !vec4<bool>(global0.a, false, true, arg_1.a.c.a)), select(!vec4<bool>(true, arg_1.a.c.a, global0.a, arg_1.a.c.a), vec4<bool>(global0.a, false, arg_1.a.c.a, global0.a), vec4<bool>(true, true, arg_1.a.c.a, false))));
    let var_1 = Struct_1(true);
    var var_2 = ~_wgslsmith_mult_u32(u_input.c.x, 4487u);
    var var_3 = select(select(!(!vec4<bool>(var_1.a, var_0.x, false, arg_1.a.c.a)), !var_0, select(var_0, !(!vec4<bool>(false, true, arg_1.a.c.a, global0.a)), !(!vec4<bool>(global0.a, false, var_1.a, true)))), func_2(~(-arg_1.a.d >> (~4294967295u % 32u)), 29464i), vec4<bool>(var_1.a, global0.a, true, true));
    let var_4 = arg_1.a.c;
    return arg_1.a;
}

fn func_5(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = true;
    return func_1(_wgslsmith_f_op_f32(trunc(-716f)), global1[_wgslsmith_index_u32(1u & arg_2.a.x, 2u)]).c;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<f32>) -> f32 {
    let var_0 = select(!func_2(arg_2.d << (min(arg_0, 89145u) % 32u), u_input.b).ywx, select(!select(vec3<bool>(arg_2.c.a, global0.a, false), select(vec3<bool>(true, true, false), vec3<bool>(true, global0.a, arg_1.a), true), true), func_2(-(~arg_2.d), _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, 0i, u_input.b), ~vec3<i32>(1i, arg_2.b, -2147483647i))).yzy, vec3<bool>(false, true, abs(arg_2.a.x) > ~arg_0)), select(select(select(vec3<bool>(arg_1.a, global0.a, arg_2.c.a), vec3<bool>(false, arg_1.a, global0.a), any(vec4<bool>(global0.a, false, arg_1.a, true))), vec3<bool>(1i <= arg_2.b, all(vec4<bool>(true, false, false, arg_1.a)), !arg_2.c.a), false), vec3<bool>(!func_1(-1044f, Struct_3(Struct_2(vec4<u32>(u_input.a, arg_0, 58994u, arg_0), 0i, Struct_1(true), 18796i))).c.a, true, arg_2.c.a), func_2(_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, -35412i, arg_2.d, -1i), vec4<i32>(u_input.b, -318i, 1i, -20373i)), arg_2.b).yyz));
    let var_1 = Struct_4(firstTrailingBit(vec2<u32>(0u, ~130u | u_input.c.x)), -671f, arg_2.a.yww, arg_2.a.zwy);
    global1 = array<Struct_3, 2>();
    return -429f;
}

fn func_7(arg_0: f32, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_3) -> Struct_1 {
    let var_0 = arg_1.d.x;
    global1 = array<Struct_3, 2>();
    let var_1 = select(~var_0, var_0, !(all(vec4<bool>(arg_3.a.c.a, global0.a, arg_3.a.c.a, false)) & false)) < max(arg_1.c.x, 36237u);
    let var_2 = Struct_4(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0, ~countOneBits(arg_3.a.a.x)), abs(min(firstLeadingBit(vec2<u32>(var_0, 35041u)), arg_1.a))), -599f, ~vec3<u32>(func_1(_wgslsmith_f_op_f32(-arg_0), global1[_wgslsmith_index_u32(arg_3.a.a.x, 2u)]).a.x, ~(~2032u), u_input.a), vec3<u32>(49235u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~arg_3.a.a, _wgslsmith_add_vec4_u32(arg_3.a.a, vec4<u32>(4294967295u, 1u, var_0, 19242u))), 0u, ~4294967295u), _wgslsmith_mult_u32(arg_3.a.a.x, ~1u)));
    var var_3 = Struct_1(true);
    return Struct_1(arg_2.a & arg_3.a.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 2>();
    let var_0 = all(vec3<bool>(any(vec3<bool>(global0.a, false, true)), global0.a, !global0.a)) || any(select(!(!vec3<bool>(global0.a, global0.a, false)), vec3<bool>(any(vec4<bool>(false, false, true, false)), true & global0.a, false), true));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-277f, 286f, -975f, -1106f) + vec4<f32>(1000f, 280f, 563f, -963f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1094f, -646f, 1000f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1115f, 653f, 544f, 777f) * vec4<f32>(-795f, -1162f, 529f, 1149f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-176f, 228f, 1121f, -2299f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1082f - _wgslsmith_f_op_f32(f32(-1f) * -506f))), _wgslsmith_f_op_f32(258f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-352f + 2693f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(330f + -145f)) + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-127f - -1272f) - _wgslsmith_f_op_f32(min(-289f, -1011f)))))));
    global0 = func_7(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(872f, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1347f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, var_1.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-154f + -683f)))), Struct_4(u_input.c, _wgslsmith_f_op_f32(func_6(abs(min(0u, 1u)), func_5(true, firstTrailingBit(vec4<u32>(u_input.a, 48311u, 4294967295u, 1u)), func_1(1000f, Struct_3(Struct_2(vec4<u32>(u_input.a, 59974u, u_input.a, u_input.c.x), u_input.b, Struct_1(global0.a), 43287i)))), Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(35383u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.c.x, 0u, 0u, 44582u)), u_input.b, func_5(true, vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, u_input.c.x), Struct_2(vec4<u32>(4294967295u, 4294967295u, u_input.c.x, u_input.c.x), u_input.b, Struct_1(var_0), 2147483647i)), u_input.b), var_1.xy)), ~_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, 1159u, u_input.a)), vec3<u32>(u_input.a, 12743u, u_input.a), ~vec3<u32>(u_input.c.x, 4294967295u, u_input.a)), vec3<u32>(~u_input.a, 14832u, 69088u ^ u_input.a) & vec3<u32>(0u, ~u_input.a, u_input.a ^ 26742u)), func_5(!global0.a, vec4<u32>(4294967295u, u_input.a, 1u, ~(~u_input.a)), Struct_2(vec4<u32>(19556u, _wgslsmith_add_u32(u_input.c.x, u_input.c.x), 58866u, u_input.c.x), -2147483647i, func_5(1u > u_input.a, firstLeadingBit(vec4<u32>(126430u, 4294967295u, u_input.a, u_input.c.x)), func_1(var_1.x, global1[_wgslsmith_index_u32(u_input.a, 2u)])), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b, u_input.b), u_input.b))), global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(~(~u_input.a), _wgslsmith_add_u32(43950u, u_input.c.x))), 2u)]);
    global1 = array<Struct_3, 2>();
    let var_2 = -firstLeadingBit(vec4<i32>(~(-u_input.b), countOneBits(~0i), u_input.b, _wgslsmith_sub_i32(~u_input.b, 1i)));
    var var_3 = -countOneBits(-12187i);
    var var_4 = func_5(!any(vec2<bool>(all(vec2<bool>(true, true)), false)), abs(~vec4<u32>(abs(103330u), u_input.a, firstLeadingBit(74366u), _wgslsmith_dot_vec4_u32(vec4<u32>(23417u, u_input.a, u_input.a, u_input.a), vec4<u32>(91781u, 1u, 4294967295u, 0u)))), Struct_2(vec4<u32>(max(4294967295u, 86744u), ~(~25017u), _wgslsmith_div_u32(u_input.c.x << (u_input.c.x % 32u), 86484u & u_input.a), ~0u), _wgslsmith_mult_i32(-2147483647i, var_2.x), Struct_1(select(true, var_0 != var_0, func_2(10260i, -2147483647i).x)), -26461i)).a;
    let x = u_input.a;
    s_output = StorageBuffer(~min(vec4<u32>(abs(u_input.a), u_input.a, 11238u | u_input.c.x, ~20981u), _wgslsmith_mod_vec4_u32(vec4<u32>(9002u, 1u, u_input.a, u_input.c.x), ~vec4<u32>(u_input.c.x, 1u, 17705u, u_input.a))), ~reverseBits(vec3<u32>(~u_input.a, reverseBits(u_input.a), reverseBits(20788u))), 16511u);
}

