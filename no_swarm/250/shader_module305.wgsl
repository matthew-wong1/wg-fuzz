struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> i32 {
    let var_0 = Struct_2(~_wgslsmith_dot_vec2_u32(arg_1.a.xz, vec2<u32>(u_input.b.x, arg_1.a.x) | vec2<u32>(arg_1.a.x, 0u)) & 1u);
    return u_input.a;
}

fn func_2(arg_0: i32) -> vec4<i32> {
    var var_0 = firstLeadingBit(func_3(!any(vec2<bool>(true, true)), Struct_1(firstTrailingBit(vec4<u32>(u_input.c, u_input.c, 28633u, u_input.d))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-719f, -897f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-309f, 1060f)), true)))) < ~(-9597i);
    var var_1 = select(vec2<bool>(true, true), select(!vec2<bool>(true, all(vec4<bool>(true, false, false, false))), vec2<bool>(select(false, all(vec3<bool>(true, true, true)), false), all(vec2<bool>(true, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), false)), vec2<bool>(all(vec4<bool>(true, true, true, true)), !all(vec3<bool>(false, false, true)) || true));
    var_0 = _wgslsmith_div_f32(717f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -928f) - _wgslsmith_f_op_f32(step(-351f, 1000f))))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -619f) - _wgslsmith_f_op_f32(f32(-1f) * -829f)) * -1091f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-564f * 471f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1253f)) * -1190f)));
    var_1 = vec2<bool>(var_1.x == select(any(vec4<bool>(var_1.x, var_1.x, var_1.x, true)), -arg_0 > 0i, true), 0i > (u_input.a << ((19932u >> (max(u_input.d, u_input.b.x) % 32u)) % 32u)));
    var var_2 = any(vec4<bool>(any(vec3<bool>(!var_1.x, !var_1.x, any(vec3<bool>(true, true, var_1.x)))), var_1.x && (true & var_1.x), true, !var_1.x == any(!vec4<bool>(var_1.x, false, var_1.x, false))));
    return -(~(-(~_wgslsmith_add_vec4_i32(vec4<i32>(arg_0, -12772i, arg_0, arg_0), vec4<i32>(28027i, arg_0, u_input.a, 34891i)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<i32>) -> i32 {
    var var_0 = Struct_2(reverseBits(reverseBits(countOneBits(21841u))));
    let var_1 = Struct_2(~min(~(u_input.b.x | var_0.a), 755u));
    let var_2 = var_1;
    var_0 = var_1;
    let var_3 = !(!select(vec2<bool>(true, true), vec2<bool>(select(true, false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))));
    return 43946i;
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.b;
    let var_1 = func_4(vec4<i32>(1i, 0i, u_input.a, u_input.a), u_input.c, ~(_wgslsmith_add_vec4_i32(vec4<i32>(1i, -2147483647i, -19848i, u_input.a) << (vec4<u32>(4294967295u, var_0.x, u_input.d, var_0.x) % vec4<u32>(32u)), ~vec4<i32>(-35755i, u_input.a, u_input.a, u_input.a)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(-47102i, u_input.a, -2739i, -1i) >> (vec4<u32>(var_0.x, 9988u, 104095u, var_0.x) % vec4<u32>(32u)), func_2(-30302i))));
    var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(firstLeadingBit(u_input.b), reverseBits(~(~vec3<u32>(0u, u_input.b.x, 1u))), ~vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 1u), vec4<u32>(u_input.b.x, var_0.x, 69527u, var_0.x)), 34508u)), u_input.b);
    let var_2 = Struct_2(reverseBits(_wgslsmith_add_u32(_wgslsmith_sub_u32(min(u_input.d, 69964u), var_0.x), abs(max(19331u, 4294967295u)))));
    var_0 = ~(~(~select(abs(vec3<u32>(47191u, u_input.c, 0u)), countOneBits(vec3<u32>(77580u, var_0.x, var_0.x)), false)));
    return Struct_1(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 35217u, 1740u, 1u), min(_wgslsmith_add_vec4_u32(vec4<u32>(27736u, 0u, 78452u, var_0.x), vec4<u32>(1624u, 4294967295u, 4294967295u, var_0.x)), ~vec4<u32>(var_0.x, 8143u, u_input.d, 85499u)), vec4<u32>(~var_2.a, var_2.a, u_input.b.x, countOneBits(4294967295u))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = -_wgslsmith_div_i32(-2147483647i & u_input.a, 62506i);
    let var_1 = reverseBits(_wgslsmith_mod_i32(2147483647i, ~var_0 >> (_wgslsmith_mult_u32(~u_input.d, ~arg_0.a.x) % 32u)));
    var var_2 = Struct_1(vec4<u32>(~select(arg_0.a.x, _wgslsmith_mult_u32(u_input.b.x, 57708u), true), firstLeadingBit(1u), ~_wgslsmith_dot_vec3_u32(~u_input.b, _wgslsmith_add_vec3_u32(arg_0.a.wwy, u_input.b)), arg_0.a.x));
    let var_3 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(min(vec4<i32>(~(-890i), func_4(vec4<i32>(2147483647i, 0i, var_1, -61896i), var_2.a.x, vec4<i32>(var_0, 0i, u_input.a, 0i)), _wgslsmith_add_i32(var_0, var_1), _wgslsmith_clamp_i32(var_1, var_1, u_input.a)), vec4<i32>(2147483647i, 0i, var_1, select(var_0, 42823i, false))), max(_wgslsmith_mod_vec4_i32(max(vec4<i32>(var_0, u_input.a, var_0, var_1), vec4<i32>(var_0, -2147483647i, var_0, u_input.a)), ~vec4<i32>(21498i, 14571i, u_input.a, var_1)), vec4<i32>(_wgslsmith_add_i32(var_0, u_input.a), _wgslsmith_clamp_i32(u_input.a, u_input.a, var_1), -2147483647i, var_0))), i32(-1i) * -40946i);
    var var_4 = func_1();
    return Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(24903u, var_4.a.x, ~423u, _wgslsmith_add_u32(13777u, u_input.b.x >> (1u % 32u))), max(countOneBits(vec4<u32>(18915u, 80697u, arg_0.a.x, 7718u) >> (var_2.a % vec4<u32>(32u))), reverseBits(vec4<u32>(1u, u_input.c, u_input.d, 2396u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~vec4<u32>(u_input.c, ~(~u_input.b.x), 47666u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(67030u, 4294967295u, u_input.b.x, 0u), vec4<u32>(21963u, 21684u, 88046u, 6950u))));
    var_0 = func_5(func_1());
    let var_1 = 62041u;
    var_0 = func_1();
    var_0 = Struct_1(vec4<u32>(1u, _wgslsmith_add_u32(0u, u_input.c), (0u << (~var_1 % 32u)) & ~(~var_0.a.x), ~(_wgslsmith_div_u32(u_input.b.x, var_0.a.x) & (4294967295u >> (u_input.d % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(func_1().a.x, select(~var_1, 0u, all(vec3<bool>(false, false, false)))), vec3<u32>(~var_1 >> (~1u % 32u), u_input.c, var_0.a.x), -9528i ^ u_input.a, i32(-1i) * -1i);
}

