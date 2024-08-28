struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(-614f), Struct_2(971f), Struct_2(496f), Struct_2(-1955f), Struct_2(-937f), Struct_2(-2375f));

var<private> global1: Struct_2;

var<private> global2: array<vec3<f32>, 3>;

var<private> global3: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(round(arg_0.d.x));
    global3 = array<vec4<bool>, 24>();
    let var_1 = vec4<bool>(abs(19858i) >= ~u_input.c, arg_2.x && any(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, _wgslsmith_mod_u32(arg_0.c.x, 70888u)), 24u)]), arg_2.x, !arg_2.x);
    var var_2 = _wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(global1.a - -1496f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(step(arg_1.a, -109f))), _wgslsmith_f_op_f32(f32(-1f) * -672f)))))));
    let var_3 = arg_1.a;
    return 1000f;
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_3(Struct_1(firstTrailingBit(select(vec4<i32>(23956i, u_input.b, u_input.c, u_input.a.x), vec4<i32>(u_input.c, u_input.a.x, u_input.a.x, u_input.c), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), global3[_wgslsmith_index_u32(22811u, 24u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(0i, 43718i, 2147483647i, 0i), -842f, vec4<u32>(1u, 128153u, 1u, 1u), vec4<f32>(-595f, arg_0, -1215f, -980f)), Struct_2(248f), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)))) - _wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(567f - arg_0))), firstTrailingBit(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(36798u, 4294967295u, 32092u, 22057u)), min(vec4<u32>(27068u, 72410u, 48787u, 66950u), vec4<u32>(47357u, 4294967295u, 1u, 40551u)), vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, _wgslsmith_f_op_f32(max(-158f, arg_0)), _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(floor(global1.a))))), select(select(vec2<u32>(1u, 1u), ~max(vec2<u32>(0u, 39034u), vec2<u32>(1u, 53802u)), vec2<bool>(true, true)), vec2<u32>(1u, 1u), all(vec2<bool>(true, true))), vec2<i32>(-u_input.c, _wgslsmith_mult_i32(~firstTrailingBit(-82717i), u_input.b)));
    let var_1 = var_0.a.c.wy;
    let var_2 = 941f;
    let var_3 = abs(vec4<u32>(var_0.a.c.x, reverseBits(4294967295u), 7210u & _wgslsmith_clamp_u32(61150u, _wgslsmith_div_u32(var_1.x, var_1.x), var_1.x), var_1.x & min(var_0.a.c.x, ~var_0.a.c.x)));
    var var_4 = var_3.zyy;
    return global0[_wgslsmith_index_u32(var_0.b.x, 6u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: i32) -> vec4<i32> {
    var var_0 = Struct_2(1193f);
    let var_1 = _wgslsmith_div_i32(arg_2.c.x, ~0i);
    var var_2 = Struct_3(arg_2.a, arg_2.b ^ _wgslsmith_mod_vec2_u32(~vec2<u32>(arg_2.a.c.x, arg_2.a.c.x), _wgslsmith_add_vec2_u32(abs(vec2<u32>(arg_2.a.c.x, arg_2.a.c.x)), arg_2.b)), ~vec2<i32>(abs(1i & var_1), -1i));
    var var_3 = func_2(_wgslsmith_f_op_f32(-1021f + -1410f));
    global2 = array<vec3<f32>, 3>();
    return vec4<i32>(_wgslsmith_mod_i32(~(-10385i), -53711i), 6740i, -21009i, countOneBits(var_1));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = ~_wgslsmith_div_vec4_i32(-vec4<i32>(0i, ~u_input.a.x, u_input.c >> (33421u % 32u), ~u_input.a.x), u_input.a);
    var var_1 = !(arg_0.x | !(!arg_0.x & all(vec3<bool>(false, false, false))));
    var var_2 = max(_wgslsmith_mult_vec3_i32(u_input.a.wyx, vec3<i32>(i32(-1i) * -2147483647i, -27980i, var_0.x)), vec3<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.b), _wgslsmith_dot_vec4_i32(-var_0, func_4(func_2(global1.a), u_input.a, Struct_3(Struct_1(vec4<i32>(-2147483647i, 1i, u_input.c, 42852i), global1.a, vec4<u32>(6891u, 4294967295u, 30730u, 38627u), vec4<f32>(global1.a, -802f, 654f, global1.a)), vec2<u32>(30725u, 4294967295u), var_0.zx), _wgslsmith_add_i32(-2147483647i, var_0.x))), ~firstLeadingBit(u_input.c)));
    var var_3 = !all(select(arg_0, select(arg_0, vec2<bool>(true, true), select(arg_0, vec2<bool>(false, false), arg_0.x)), vec2<bool>(false || arg_0.x, arg_0.x)));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a, global1.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + 1000f)));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~(~1u), _wgslsmith_clamp_u32(abs(24213u), _wgslsmith_clamp_u32(1u, ~4294967295u, 1u), 1u), _wgslsmith_mult_u32(~_wgslsmith_add_u32(1u, 1u), 1u), ~1u), firstTrailingBit(vec4<u32>(abs(~85807u), ~85953u, ~firstTrailingBit(4294967295u), 1u))), 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0[_wgslsmith_index_u32(584u, 6u)];
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    global1 = func_1(vec2<bool>(!all(vec3<bool>(true, true, true)), !all(vec2<bool>(true, true))));
    let var_0 = ~(~13152u);
    var var_1 = min(_wgslsmith_mult_i32(16633i, _wgslsmith_mult_i32(1i, 31180i)), ~0i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wzy, firstLeadingBit(1u));
}

