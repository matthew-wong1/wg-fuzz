struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec4<i32>(57989i, 0i, -1i, 2147483647i)), Struct_2(vec4<i32>(i32(-2147483648), 10923i, 15098i, -1i)), Struct_2(vec4<i32>(-1i, 45849i, -1i, -1i)), Struct_2(vec4<i32>(0i, -1i, 30848i, 25876i)), Struct_2(vec4<i32>(-22328i, -10962i, -25119i, 2147483647i)), Struct_2(vec4<i32>(40630i, i32(-2147483648), i32(-2147483648), -16422i)), Struct_2(vec4<i32>(2147483647i, 395i, 0i, 0i)), Struct_2(vec4<i32>(1i, -49131i, -5193i, 56780i)), Struct_2(vec4<i32>(16455i, 2147483647i, 19146i, 2581i)), Struct_2(vec4<i32>(-10905i, 2147483647i, i32(-2147483648), 2147483647i)), Struct_2(vec4<i32>(i32(-2147483648), -2473i, -2314i, 54657i)), Struct_2(vec4<i32>(0i, 1i, 0i, 2147483647i)), Struct_2(vec4<i32>(9140i, 4048i, -4875i, 2147483647i)), Struct_2(vec4<i32>(-32452i, -52153i, -10550i, -12126i)), Struct_2(vec4<i32>(1i, 10487i, 1286i, -1i)), Struct_2(vec4<i32>(2147483647i, 0i, -1i, 2147483647i)), Struct_2(vec4<i32>(-21007i, 2147483647i, 19314i, -16210i)), Struct_2(vec4<i32>(10494i, 2147483647i, 11955i, -23495i)), Struct_2(vec4<i32>(i32(-2147483648), -1i, 0i, 24145i)), Struct_2(vec4<i32>(-5245i, 2147483647i, i32(-2147483648), 2147483647i)), Struct_2(vec4<i32>(-1i, 16480i, 58024i, 1i)), Struct_2(vec4<i32>(39111i, 0i, -1i, 2147483647i)), Struct_2(vec4<i32>(45668i, 56872i, 2147483647i, -36373i)), Struct_2(vec4<i32>(18540i, i32(-2147483648), 24078i, -1i)));

var<private> global1: bool = false;

var<private> global2: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec4<i32>(1i, -24892i, 0i, -34216i)), Struct_2(vec4<i32>(0i, 4475i, 9128i, 62703i)), Struct_2(vec4<i32>(i32(-2147483648), -5456i, 0i, 0i)), Struct_2(vec4<i32>(-40660i, 4205i, -39907i, 2147483647i)), Struct_2(vec4<i32>(16512i, 28336i, 0i, 2147483647i)), Struct_2(vec4<i32>(1i, -6033i, 31907i, 40607i)), Struct_2(vec4<i32>(2147483647i, -3394i, -23606i, 5714i)), Struct_2(vec4<i32>(i32(-2147483648), -4691i, 1i, -44509i)), Struct_2(vec4<i32>(-16835i, 0i, 0i, 0i)), Struct_2(vec4<i32>(1i, 23005i, -53619i, -1i)), Struct_2(vec4<i32>(2147483647i, 41340i, 1i, -21259i)), Struct_2(vec4<i32>(1i, 0i, -27327i, i32(-2147483648))), Struct_2(vec4<i32>(i32(-2147483648), i32(-2147483648), -19954i, 68031i)), Struct_2(vec4<i32>(1i, -8262i, -1i, -13022i)), Struct_2(vec4<i32>(-1i, 7058i, 1i, 1i)), Struct_2(vec4<i32>(54312i, -22308i, -62013i, 10701i)), Struct_2(vec4<i32>(12781i, 0i, 2147483647i, 8902i)), Struct_2(vec4<i32>(i32(-2147483648), -39329i, 56936i, -10491i)), Struct_2(vec4<i32>(-1i, -33410i, -1i, 1i)), Struct_2(vec4<i32>(0i, 2147483647i, 0i, -1i)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> bool {
    global2 = array<Struct_2, 20>();
    var var_0 = Struct_2(-vec4<i32>(1i, 1i, 1i, 1i));
    return !any(vec3<bool>(false, true, true));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = -vec2<i32>(-43965i, ~(-1i));
    var_0 = _wgslsmith_clamp_vec2_i32(arg_1.a.wy, select(firstLeadingBit(min(arg_1.a.ww, vec2<i32>(var_0.x, var_0.x))), arg_1.a.xw, !arg_0), vec2<i32>(_wgslsmith_mod_i32(~1i, -var_0.x), var_0.x));
    let var_1 = vec3<u32>(~1u, abs(~(max(u_input.b.x, u_input.a) << (4294967295u % 32u))), u_input.a);
    global2 = array<Struct_2, 20>();
    global0 = array<Struct_2, 24>();
    return Struct_1(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, countOneBits(u_input.b.x)), vec2<u32>(_wgslsmith_mult_u32(var_1.x, ~4294967295u), var_1.x)), _wgslsmith_f_op_f32(-2292f * _wgslsmith_f_op_f32(1176f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-670f * 633f))))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(109108u, 28154u, u_input.b.x, 72616u)) | vec4<u32>(4294967295u, reverseBits(1u), u_input.b.x, ~4294967295u), _wgslsmith_sub_vec4_u32(u_input.b, u_input.b)));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: i32) -> vec3<i32> {
    let var_0 = func_3(any(!vec3<bool>(func_2(), true, true)), Struct_2(_wgslsmith_mult_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2, arg_1.x, 16007i, 1i), vec4<i32>(31428i, 0i, -2147483647i, -22398i))), vec4<i32>(-arg_1.x, arg_1.x, _wgslsmith_add_i32(arg_2, arg_2), max(arg_1.x, 0i)))), vec2<bool>(true, select(true, any(vec3<bool>(true, true, true)), any(vec3<bool>(false, true, true)) && any(vec2<bool>(false, true)))));
    var var_1 = vec2<i32>(arg_1.x, _wgslsmith_div_i32(~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(arg_1.x, arg_2, 2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, arg_1.x, arg_2, arg_1.x), vec4<i32>(arg_1.x, 34530i, -1i, 27445i))), _wgslsmith_add_i32(arg_2, max(21069i, ~15656i))));
    var var_2 = arg_1.x;
    return firstTrailingBit(vec3<i32>(arg_2, ~(-2147483647i), arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-1000f, -(vec3<i32>(1i, 1i, 1i) | vec3<i32>(11297i << (u_input.b.x % 32u), 1i, 1i)), ~(-41687i));
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~(~u_input.a), 1u, 0u, _wgslsmith_add_u32(4294967295u, u_input.a) >> ((u_input.a | u_input.a) % 32u)), firstTrailingBit(vec4<u32>(u_input.a, u_input.b.x, 48477u, 1u) | (vec4<u32>(u_input.a, 0u, 0u, u_input.b.x) ^ vec4<u32>(u_input.a, 34646u, 1u, 28292u)))), u_input.b);
    var var_2 = 1927f;
    var var_3 = func_3(!(!(!any(vec2<bool>(true, true)))), global0[_wgslsmith_index_u32(max(u_input.a, ~0u), 24u)], select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), any(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), vec2<bool>(true, true)), vec2<bool>(true, true)));
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(min(894u, var_3.a.x ^ 0u), firstTrailingBit(37559u)), var_3.a), 20u)];
    global1 = any(vec4<bool>(false, true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true))), func_2()));
    global0 = array<Struct_2, 24>();
    let var_5 = ~reverseBits(vec3<u32>(~(~var_3.a.x), 4294967295u, abs(~96024u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1611f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.b)) * _wgslsmith_div_f32(var_3.b, -1052f)), var_3.b)), -963f, _wgslsmith_f_op_f32(-var_3.b), select(~select(u_input.b, _wgslsmith_mult_vec4_u32(vec4<u32>(90667u, 0u, 28650u, var_1), vec4<u32>(var_5.x, var_5.x, var_1, 16005u)), vec4<bool>(false, false, false, true)), min(u_input.b, select(_wgslsmith_add_vec4_u32(vec4<u32>(21170u, var_1, 50779u, 44525u), u_input.b), max(u_input.b, u_input.b), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, false)), false, all(vec3<bool>(true, true, true)), select(true, false, false)), vec4<bool>(true, true, true, true))), 20122u);
}

