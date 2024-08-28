struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(-498f, -875f);

var<private> global1: array<Struct_1, 21>;

var<private> global2: array<Struct_3, 21>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    global1 = array<Struct_1, 21>();
    let var_0 = -31190i;
    global1 = array<Struct_1, 21>();
    global2 = array<Struct_3, 21>();
    global2 = array<Struct_3, 21>();
    return 6575u;
}

fn func_3(arg_0: bool, arg_1: f32) -> vec4<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(566f, global0[_wgslsmith_index_u32(u_input.b.x, 2u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 2u)])), arg_0))), func_2(_wgslsmith_div_vec3_u32(vec3<u32>(24257u, abs(u_input.b.x), 1u << (u_input.b.x % 32u)), abs(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) & vec3<u32>(1u, u_input.b.x, 1u))), u_input.b.x, Struct_1(abs(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 2411i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 0i, u_input.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-898f, -134f, -563f))))), Struct_1(countOneBits(~vec4<i32>(0i, u_input.a, -7801i, 12661i) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(65156u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 16485u, 1u), vec4<u32>(61624u, 0u, u_input.b.x, 7704u)) % vec4<u32>(32u)))), global1[_wgslsmith_index_u32(u_input.b.x, 21u)]);
    global1 = array<Struct_1, 21>();
    let var_1 = global2[_wgslsmith_index_u32(1u, 21u)];
    var var_2 = var_0;
    global0 = array<f32, 2>();
    return vec4<u32>(_wgslsmith_add_u32(~_wgslsmith_mod_u32(0u, u_input.b.x), firstTrailingBit(_wgslsmith_add_u32(0u, u_input.b.x))) & var_2.b, var_2.b, var_0.b, 0u);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_3) -> Struct_2 {
    global1 = array<Struct_1, 21>();
    global1 = array<Struct_1, 21>();
    let var_0 = abs(vec4<u32>(0u, (arg_3.b.x << (35954u % 32u)) & 0u, 0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, 89993u, arg_3.b.x) ^ ~vec3<u32>(27137u, 15754u, 14934u), vec3<u32>(u_input.b.x, func_2(vec3<u32>(arg_3.a.x, 4294967295u, arg_3.a.x), u_input.b.x, global1[_wgslsmith_index_u32(arg_0.b.x, 21u)], vec3<f32>(-1087f, 815f, arg_2)), 1u))));
    let var_1 = arg_1.x;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2))), _wgslsmith_dot_vec4_u32(func_3(false, -533f), ~(func_3(true, 958f) ^ _wgslsmith_div_vec4_u32(vec4<u32>(arg_3.b.x, 19059u, var_0.x, 1505u), var_0))), global1[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(~14771u, 4294967295u << (var_0.x % 32u)) ^ ~u_input.b.x), 21u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_0 ^ vec4<u32>(arg_3.a.x, var_0.x << (0u % 32u), ~1u, arg_0.a.x), firstTrailingBit(max(_wgslsmith_add_vec4_u32(vec4<u32>(11357u, 4294967295u, arg_0.a.x, var_0.x), var_0), var_0 << (var_0 % vec4<u32>(32u))))), 21u)]);
    return Struct_2(global0[_wgslsmith_index_u32(~reverseBits(_wgslsmith_dot_vec2_u32(abs(var_0.wy), ~vec2<u32>(u_input.b.x, arg_3.a.x))), 2u)], 4294967295u, Struct_1(~vec4<i32>(min(-1i, var_2.d.a.x), _wgslsmith_sub_i32(56446i, -41682i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -35196i), var_2.c.a.zy), -25320i)), Struct_1(vec4<i32>(-(8655i | u_input.a), -20398i, -11810i << (var_0.x % 32u), var_2.d.a.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: f32) -> vec3<bool> {
    let var_0 = u_input.a;
    global1 = array<Struct_1, 21>();
    let var_1 = Struct_1(~vec4<i32>(var_0, ~var_0, (arg_0.c.a.x ^ u_input.a) << (26666u % 32u), min(-var_0, _wgslsmith_dot_vec2_i32(arg_0.d.a.zw, arg_0.d.a.zw))));
    let var_2 = Struct_1(arg_0.d.a);
    var var_3 = Struct_1(select(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(abs(var_2.a), firstTrailingBit(var_1.a)), var_1.a), ~vec4<i32>(2147483647i, _wgslsmith_add_i32(-51510i, -11920i), -2147483647i, var_0 | var_2.a.x), true));
    return select(!(!vec3<bool>(false, var_2.a.x < var_0, any(vec2<bool>(true, true)))), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), any(vec4<bool>(false, true, true, true))), select(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), select(select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), vec3<bool>(true, true, true), true), !all(vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec2<u32>(u_input.b.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b.x, min(4294967295u, 26766u)), ~u_input.b.x)), ~(~u_input.b), !func_4(func_1(Struct_3(vec2<u32>(4294967295u, 49230u), u_input.b, vec3<bool>(true, false, false)), vec3<bool>(true, false, true), 821f, Struct_3(u_input.b, u_input.b, vec3<bool>(true, true, true))), vec4<f32>(_wgslsmith_f_op_f32(floor(2199f)), _wgslsmith_f_op_f32(-194f - global0[_wgslsmith_index_u32(40129u, 2u)]), -739f, global0[_wgslsmith_index_u32(0u, 2u)]), -602f));
    let var_1 = func_1(Struct_3(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(27803u, 6894u), min(vec2<u32>(41044u, 1u), var_0.a)), _wgslsmith_sub_vec2_u32(firstTrailingBit(var_0.a), ~u_input.b)), var_0.a, var_0.c), func_4(func_1(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(25600u, u_input.b.x, 34104u), 21u)], !vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(var_0.a.x, 2u)], -553f)), _wgslsmith_div_f32(-1341f, -601f))), Struct_3(u_input.b, vec2<u32>(var_0.b.x, u_input.b.x) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), vec3<bool>(true, true, var_0.c.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(95395u, 2u)], global0[_wgslsmith_index_u32(6215u, 2u)])), -377f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-393f * global0[_wgslsmith_index_u32(u_input.b.x, 2u)])), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(130f, global0[_wgslsmith_index_u32(55317u, 2u)])))), _wgslsmith_f_op_f32(abs(-435f))), 1047f, Struct_3(~func_3(true, global0[_wgslsmith_index_u32(var_0.b.x, 2u)]).xy | countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(2064u, u_input.b.x), vec2<u32>(var_0.a.x, u_input.b.x))), u_input.b, var_0.c));
    let var_2 = countOneBits(~var_0.b);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(134f + -1000f)))), var_1.a);
    let var_4 = u_input.a;
    let var_5 = Struct_1(-func_1(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(42937u, 0u), 21u)], var_0.c, 256f, global2[_wgslsmith_index_u32(var_2.x ^ 48929u, 21u)]).c.a | var_1.d.a);
    let var_6 = !(!(!var_0.c.x));
    global1 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.a.x | var_0.b.x, ~var_2.x, var_2.x, abs(u_input.b.x)), vec4<u32>(var_0.a.x, func_1(Struct_3(vec2<u32>(var_0.b.x, 1u), vec2<u32>(4294967295u, u_input.b.x), var_0.c), var_0.c, var_3, Struct_3(var_2, var_0.a, var_0.c)).b, max(12439u, var_2.x | 1u), _wgslsmith_mult_u32(4294967295u, var_0.a.x))), _wgslsmith_div_u32(_wgslsmith_mult_u32(var_1.b, var_2.x), reverseBits(93314u) ^ u_input.b.x), 4294967295u);
}

