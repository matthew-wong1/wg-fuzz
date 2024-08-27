struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec2<i32> = vec2<i32>(53320i, 2147483647i);

var<private> global2: array<Struct_4, 12>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_5) -> f32 {
    global0 = abs(vec3<i32>(select(-72785i, _wgslsmith_clamp_i32(i32(-1i) * -6988i, _wgslsmith_mod_i32(2147483647i, 2147483647i), 17492i & global1.x), _wgslsmith_f_op_f32(ceil(-1875f)) != _wgslsmith_f_op_f32(min(760f, 238f))), global0.x ^ _wgslsmith_add_i32(1i | arg_2.a, 1i), abs(max(-47527i, _wgslsmith_add_i32(2147483647i, global0.x)))));
    global1 = arg_0.a;
    global2 = array<Struct_4, 12>();
    global0 = vec3<i32>(~max(-_wgslsmith_mod_i32(arg_2.a, u_input.a), min(_wgslsmith_mult_i32(-1i, arg_1.x), -536i)), 0i, -arg_2.a);
    var var_0 = min(abs(~min(vec2<u32>(u_input.b, 97269u), arg_0.b)), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_0.b.x, arg_0.b.x), ~vec2<u32>(arg_0.b.x, 11480u)), vec2<u32>(1u, 1u) & u_input.c.wz)) & u_input.d.xy;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2469f, _wgslsmith_div_f32(573f, 953f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(413f * 573f), _wgslsmith_f_op_f32(f32(-1f) * -629f), all(vec4<bool>(true, true, true, true)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2071f))))));
}

fn func_2() -> Struct_5 {
    global2 = array<Struct_4, 12>();
    let var_0 = Struct_5(_wgslsmith_mod_i32(0i, u_input.a));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(sign(2165f))) + _wgslsmith_f_op_f32(func_3(Struct_2(vec2<i32>(2147483647i, var_0.a), u_input.e.yz), abs(vec3<i32>(2147483647i, -76793i, u_input.a)), Struct_5(2147483647i)))), -660f)), 1078f, 1649f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-827f)))));
    let var_2 = var_0;
    var var_3 = vec4<u32>(u_input.d.x, u_input.c.x, ~1u, abs(0u)) ^ (vec4<u32>(_wgslsmith_mult_u32(1u, 4294967295u), 24509u, abs(0u), 5849u) ^ _wgslsmith_mod_vec4_u32(u_input.e ^ _wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(1u, 1u, 38684u, u_input.d.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 1u, 37816u, 4294967295u), u_input.d), firstLeadingBit(vec4<u32>(4294967295u, u_input.b, u_input.b, 0u)))));
    return Struct_5(-2147483647i);
}

fn func_4(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: Struct_5) -> vec2<bool> {
    global0 = firstLeadingBit(vec3<i32>(_wgslsmith_clamp_i32(1i, countOneBits(_wgslsmith_add_i32(-2147483647i, 0i)), global0.x), countOneBits(_wgslsmith_clamp_i32(i32(-1i) * -27340i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -15320i, global0.x), vec3<i32>(-77765i, -35270i, -1i)), 0i)), -u_input.a));
    let var_0 = _wgslsmith_sub_vec4_i32(~(-(~vec4<i32>(global0.x, -1i, global1.x, arg_3.a))), vec4<i32>(-u_input.a, _wgslsmith_mod_i32(-1i >> (u_input.b % 32u), _wgslsmith_mod_i32(-24527i, -5792i)), arg_0.a, -2147483647i));
    let var_1 = ~4294967295u ^ firstTrailingBit(~_wgslsmith_mod_u32(18210u, ~1u));
    var var_2 = all(!vec3<bool>(!(arg_1.x <= 256f), true & select(false, true, false), true));
    var var_3 = func_2();
    return !vec2<bool>(arg_1.x >= arg_2.x, any(vec2<bool>(true, true)));
}

fn func_1() -> i32 {
    global0 = vec3<i32>(~u_input.a, _wgslsmith_div_i32(-countOneBits(-1237i), 26363i), _wgslsmith_add_i32(17274i, i32(-1i) * -20397i));
    global0 = -(~(~vec3<i32>(min(2147483647i, u_input.a), _wgslsmith_mod_i32(54832i, global0.x), global0.x | u_input.a)));
    global1 = vec2<i32>(-1i) * -select(global0.yy, vec2<i32>(firstTrailingBit(global0.x), 1i), func_4(func_2(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-690f, -498f, -518f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1807f, -1033f, 750f, -272f) - vec4<f32>(1736f, -593f, -514f, -484f)), Struct_5(-2147483647i)));
    global1 = global0.xz | _wgslsmith_mult_vec2_i32(min(-vec2<i32>(global1.x, 0i), vec2<i32>(global1.x, 2147483647i)) & _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 1i), global0.xz), reverseBits(~global0.yz));
    var var_0 = Struct_3(u_input.c.x, Struct_2(vec2<i32>(_wgslsmith_mult_i32(u_input.a, -1i), min(global1.x, 1i)) & select(global0.yy, global0.zy, vec2<bool>(true, true)), u_input.c.wy));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), global0.zz);
    global0 = vec3<i32>(_wgslsmith_clamp_i32(7683i, _wgslsmith_add_i32(~global0.x, func_1()), global1.x), firstTrailingBit(global1.x & -24690i), _wgslsmith_mult_i32(func_1(), 1i));
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.e.x, u_input.d.x, u_input.d.x) | u_input.e.x, ~(1u >> (reverseBits(u_input.e.x) % 32u))), 76374u), 12u)];
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -866f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1255f + var_0.e.b.x) * var_0.e.b.x)), var_0.e.b.x, _wgslsmith_f_op_f32(f32(-1f) * -555f), _wgslsmith_f_op_f32(var_0.e.b.x * -583f));
    let var_2 = !(!(~var_0.c != abs(u_input.d.x)) & true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.e.b.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_1.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_1.xw, _wgslsmith_f_op_vec2_f32(var_1.wy + vec2<f32>(-1161f, 1172f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -1038f)) - vec2<f32>(-1065f, 205f)))), ~(~reverseBits(u_input.c.x)) >> (23576u % 32u), _wgslsmith_sub_u32(firstLeadingBit(4294967295u), firstTrailingBit(~var_0.a.b.x >> (_wgslsmith_div_u32(4294967295u, 10886u) % 32u))));
}

