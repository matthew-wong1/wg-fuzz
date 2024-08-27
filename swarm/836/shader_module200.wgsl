struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: bool,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec4<u32> = vec4<u32>(32028u, 20817u, 0u, 4294967295u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec3<bool>, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = vec3<u32>(8172u, reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global1.yy, global1.wx), vec2<u32>(global1.x, _wgslsmith_div_u32(global1.x, 61361u)))), global0.x);
    global0 = ~vec2<u32>(global0.x ^ 49742u, 2567u);
    let var_1 = Struct_1(_wgslsmith_mult_u32(u_input.a.x, 47908u));
    return Struct_2(var_1.a, select(vec2<bool>(true, arg_2.x), vec2<bool>(any(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x)), all(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))), _wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, arg_0), arg_0 << (50416u % 32u)) < 1i), _wgslsmith_dot_vec3_u32(global1.www, vec3<u32>(global0.x, 10030u, 0u) << (~global1.ywx % vec3<u32>(32u))) << (~1u % 32u), var_1);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: bool, arg_3: i32) -> vec3<u32> {
    global1 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u >> (arg_0.a % 32u), 1u, u_input.a.x, 4294967295u) & vec4<u32>(u_input.a.x, abs(global0.x), ~global0.x, ~1u), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(global1.x, 1u, 0u, global0.x) << (vec4<u32>(50767u, 26474u, arg_0.a, 0u) % vec4<u32>(32u))), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 8064u, u_input.a.x, 63688u), vec4<u32>(global0.x, 0u, 1u, 21785u))), vec4<u32>(global0.x, global0.x, global0.x, _wgslsmith_sub_u32(55788u, global0.x))));
    let var_0 = abs(max(firstTrailingBit(-(~vec2<i32>(arg_3, -2147483647i))), countOneBits(~vec2<i32>(arg_3, 18980i))));
    var var_1 = func_2(-5014i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1286f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-250f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-221f)) + _wgslsmith_f_op_f32(f32(-1f) * -527f))), select(select(select(!vec3<bool>(true, false, arg_0.b.x), vec3<bool>(arg_0.b.x, arg_2, arg_2), !vec3<bool>(arg_0.b.x, false, false)), !(!vec3<bool>(false, arg_1, false)), vec3<bool>(all(vec4<bool>(true, true, false, false)), arg_3 <= 14378i, true)), vec3<bool>(func_2(arg_3, _wgslsmith_f_op_f32(select(236f, -1377f, arg_1)), select(vec3<bool>(false, false, false), vec3<bool>(arg_0.b.x, false, false), false), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-266f, -558f), vec2<f32>(484f, -1186f)))).b.x, arg_0.b.x, true), true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(696f, -844f) * vec2<f32>(_wgslsmith_f_op_f32(max(328f, -543f)), _wgslsmith_f_op_f32(max(-765f, 305f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(881f, -171f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(267f, 1131f)))))), arg_0.b))).b;
    global0 = vec2<u32>(1u, ~(~(~(~u_input.a.x))));
    global1 = firstLeadingBit(max(~(~vec4<u32>(40410u, 0u, arg_0.c, global0.x)), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(71189u, u_input.a.x, 75567u, 31673u), vec4<u32>(17631u, 0u, 92909u, global0.x), vec4<u32>(global1.x, global1.x, global0.x, u_input.a.x)) ^ firstLeadingBit(vec4<u32>(64662u, global1.x, global0.x, arg_0.d.a)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global0.x, global1.x, 17288u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_0.d.a)), !select(vec4<bool>(true, true, true, arg_0.b.x), vec4<bool>(true, true, false, false), vec4<bool>(arg_1, arg_2, false, arg_1)))));
    return ~(~global1.xzw);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec3<u32>) -> vec2<u32> {
    global1 = _wgslsmith_mult_vec4_u32(select(~(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global1.x, global1.x, 4294967295u), vec4<u32>(global1.x, 0u, 26921u, u_input.a.x)) << (~vec4<u32>(global0.x, 8719u, 48713u, global1.x) % vec4<u32>(32u))), ~(~vec4<u32>(26106u, 74926u, u_input.a.x, arg_0.a)) << (vec4<u32>(~u_input.a.x, 1u, global0.x >> (arg_3.x % 32u), u_input.a.x) % vec4<u32>(32u)), !func_2(reverseBits(11973i), -210f, select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2, -625f)))).b.x), countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(28684u, ~global1.x, firstTrailingBit(arg_3.x), u_input.a.x), abs(vec4<u32>(32862u, 4294967295u, 4294967295u, global0.x)) << (countOneBits(vec4<u32>(u_input.a.x, arg_3.x, 25189u, 1u)) % vec4<u32>(32u)))));
    global1 = reverseBits(~(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 23699u, u_input.a.x, 4294967295u) << (vec4<u32>(4294967295u, global1.x, 33482u, 1u) % vec4<u32>(32u)), max(vec4<u32>(10270u, 4294967295u, 38928u, 0u), vec4<u32>(global0.x, 4294967295u, 0u, 0u))) << ((~vec4<u32>(global0.x, arg_3.x, u_input.a.x, arg_0.a) << (vec4<u32>(0u, 1u, arg_0.a, arg_3.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
    global0 = global1.xx;
    let var_0 = Struct_3(~_wgslsmith_mod_u32(1u, reverseBits(43565u)), func_3(func_2(i32(-1i) * -1i, _wgslsmith_f_op_f32(-arg_2), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec2<f32>(arg_1, arg_1)), false, !(!(arg_1 < arg_1)), -2147483647i), true, ~(~arg_0.a & 126184u) >> (~(~(~arg_0.a)) % 32u), func_2(min(_wgslsmith_dot_vec3_i32(-vec3<i32>(21736i, 4011i, 41558i), select(vec3<i32>(-16617i, -1i, -1840i), vec3<i32>(1191i, -19874i, 2147483647i), true)), _wgslsmith_dot_vec2_i32(-vec2<i32>(-34753i, -14902i), abs(vec2<i32>(-1i, -18809i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) - _wgslsmith_div_f32(arg_1, 1896f)) - 518f), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2, 474f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-483f, arg_2)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1327f), _wgslsmith_f_op_f32(-arg_1)), true))));
    global0 = arg_3.yx ^ vec2<u32>(51959u, global1.x);
    return abs(_wgslsmith_mult_vec2_u32(~(u_input.a >> (var_0.b.xz % vec2<u32>(32u))), ~min(firstTrailingBit(vec2<u32>(0u, 15647u)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global0.x), vec2<u32>(1191u, 4569u)))));
}

fn func_1(arg_0: i32) -> u32 {
    global0 = func_4(Struct_1(global1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -533f), _wgslsmith_f_op_f32(f32(-1f) * -165f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(634f)) * -267f)), -1000f, _wgslsmith_mod_vec3_u32(~(vec3<u32>(92018u, u_input.a.x, u_input.a.x) >> (vec3<u32>(87904u, 7223u, global1.x) % vec3<u32>(32u))), func_3(func_2(arg_0, -2125f, vec3<bool>(false, true, false), vec2<f32>(-1039f, -978f)), true, true, 1i))) ^ ~u_input.a;
    var var_0 = Struct_3(_wgslsmith_mod_u32(max(global1.x, global0.x), min(u_input.a.x, u_input.a.x) << (0u % 32u)), select(global1.yyw, global1.zwz, !vec3<bool>(any(vec3<bool>(false, true, true)), true, true)), all(vec2<bool>(true, false)), global1.x >> (~23501u % 32u), func_2(1817i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-785f, -320f)), vec3<bool>(arg_0 <= abs(arg_0), true, global0.x != _wgslsmith_dot_vec4_u32(vec4<u32>(32991u, 4294967295u, u_input.a.x, global1.x), vec4<u32>(global1.x, 9155u, global1.x, 0u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, 599f))))))));
    global1 = _wgslsmith_mod_vec4_u32(vec4<u32>(func_4(Struct_1(1u), _wgslsmith_f_op_f32(f32(-1f) * -297f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_0.b).x, global0.x, var_0.d, _wgslsmith_dot_vec4_u32(vec4<u32>(6808u, ~1u, var_0.e.c, _wgslsmith_mod_u32(global1.x, 2088u)), ~select(vec4<u32>(global1.x, global0.x, 4294967295u, global0.x), vec4<u32>(var_0.b.x, var_0.e.a, 0u, global0.x), vec4<bool>(var_0.c, false, var_0.c, true)))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(abs(var_0.a), 53u & global0.x, ~global0.x, var_0.e.d.a), max(select(vec4<u32>(61593u, 79527u, 0u, global0.x), vec4<u32>(53288u, u_input.a.x, 67199u, 6687u), vec4<bool>(true, true, var_0.e.b.x, false)), vec4<u32>(global0.x, u_input.a.x, 4294967295u, global1.x))));
    let var_1 = Struct_1((abs(_wgslsmith_mult_u32(var_0.a, 15330u)) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 1u), vec3<u32>(41431u, global1.x, 0u))) & func_2(arg_0, -1000f, select(!vec3<bool>(var_0.c, false, var_0.e.b.x), !vec3<bool>(var_0.c, true, false), arg_0 == 28394i), vec2<f32>(1f, 1f)).a);
    let var_2 = Struct_2(_wgslsmith_sub_u32(var_1.a, ~1u), select(vec2<bool>(true, false), vec2<bool>(var_0.e.b.x, 26896i < max(229i, arg_0)), select(true, !(!var_0.c), all(vec2<bool>(var_0.c, false)))), u_input.a.x, Struct_1(51540u));
    return min(var_1.a, ~(~global0.x << (1u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -168f;
    global1 = vec4<u32>(global1.x, min(global0.x, abs(~func_1(-2147483647i))), ~abs(func_4(Struct_1(1u), 295f, 1990f, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)).x) | countOneBits(countOneBits(u_input.a.x)), 1u);
    var var_1 = global0.x <= reverseBits(global0.x ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.x, global1.x, u_input.a.x, 40391u), vec4<u32>(0u, 40231u, 1u, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -246f));
}

