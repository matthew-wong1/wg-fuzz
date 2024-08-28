struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4> = array<f32, 4>(-1350f, -547f, -244f, -805f);

var<private> global1: i32;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: Struct_1) -> i32 {
    global0 = array<f32, 4>();
    global0 = array<f32, 4>();
    global0 = array<f32, 4>();
    var var_0 = Struct_2(arg_0, abs(39217u), ~countOneBits(abs(~vec3<i32>(0i, u_input.e, -74655i))));
    let var_1 = ~select(vec3<i32>(_wgslsmith_clamp_i32(~var_0.c.x, ~u_input.e, max(-1i, var_0.c.x)), var_0.c.x, u_input.e ^ ~u_input.e), -var_0.c, true);
    return var_1.x;
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: vec4<u32>) -> i32 {
    let var_0 = select(2147483647i, 1i, false);
    var var_1 = Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(arg_2, arg_2), abs(4294967295u), _wgslsmith_mod_u32(u_input.a, 1u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.x, 33087u, u_input.b), arg_0.a.a), arg_0.a.a), _wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.b, 4294967295u), u_input.d.zx, false) ^ ~arg_2.xz, vec2<u32>(arg_2.x & 40910u, ~0u))), arg_0.a.a.x, ~(-vec3<i32>(var_0, ~arg_1, u_input.e)));
    global0 = array<f32, 4>();
    let var_2 = Struct_2(Struct_1(~select(vec3<u32>(1u, 4294967295u, arg_2.x), var_1.a.a, vec3<bool>(true, false, false)) >> (vec3<u32>(var_1.b, ~u_input.a, u_input.d.x ^ 1u) % vec3<u32>(32u)), ~(~(~u_input.d.zz))), _wgslsmith_mult_u32(countOneBits(~arg_0.a.b.x), ~arg_0.a.b.x) >> (u_input.a % 32u), ~(~var_1.c));
    global1 = _wgslsmith_mult_i32(0i, ~_wgslsmith_add_i32(_wgslsmith_div_i32(0i, 26394i), -1i));
    return var_1.c.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3) -> Struct_3 {
    global1 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.e, u_input.e) | _wgslsmith_sub_i32(u_input.e, 2147483647i), func_2(Struct_1(_wgslsmith_clamp_vec3_u32(u_input.d, ~vec3<u32>(1u, arg_1.a, arg_1.a), vec3<u32>(76576u, 179u, u_input.b)), vec2<u32>(u_input.d.x, 1u))), max(_wgslsmith_sub_i32(1i, -_wgslsmith_div_i32(-25107i, u_input.e)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(17497i, -u_input.e, func_3(Struct_4(Struct_1(vec3<u32>(4294967295u, 72260u, arg_1.a), vec2<u32>(arg_1.a, 0u))), 2147483647i, vec4<u32>(arg_1.a, 1u, arg_1.a, 41404u))), 0i)));
    global1 = u_input.e | (i32(-1i) * -2147483647i);
    var var_0 = Struct_2(Struct_1(firstTrailingBit(abs(~vec3<u32>(23120u, 21072u, arg_1.a))), firstTrailingBit(~vec2<u32>(arg_1.a, 26887u) << (~vec2<u32>(arg_1.a, 15570u) % vec2<u32>(32u)))), u_input.d.x, _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, u_input.e, 2147483647i) ^ select(vec3<i32>(u_input.e, u_input.e, u_input.e), vec3<i32>(u_input.e, u_input.e, u_input.e), vec3<bool>(false, arg_0.x, arg_0.x)), -(vec3<i32>(2147483647i, u_input.e, 16713i) | vec3<i32>(u_input.e, 25199i, 1i))), -_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.e, u_input.e, u_input.e), reverseBits(vec3<i32>(1i, u_input.e, u_input.e)))));
    var_0 = Struct_2(var_0.a, 46599u & arg_1.a, ~max(_wgslsmith_add_vec3_i32(var_0.c, -vec3<i32>(39749i, 2351i, var_0.c.x)), abs(~vec3<i32>(u_input.e, 1i, -2147483647i))));
    var_0 = Struct_2(Struct_1(abs(vec3<u32>(arg_1.a, 54673u, _wgslsmith_clamp_u32(1u, u_input.c, arg_1.a))), vec2<u32>(var_0.b, ~countOneBits(u_input.b))), firstTrailingBit(firstLeadingBit(reverseBits(1u))), -_wgslsmith_div_vec3_i32(var_0.c, firstTrailingBit(max(vec3<i32>(-14129i, 2147483647i, var_0.c.x), vec3<i32>(39117i, -13430i, -9748i)))));
    return Struct_3(~_wgslsmith_add_u32(36698u, u_input.d.x));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3) -> u32 {
    global0 = array<f32, 4>();
    global0 = array<f32, 4>();
    let var_0 = vec2<i32>(_wgslsmith_clamp_i32(-27106i, func_3(Struct_4(Struct_1(vec3<u32>(33065u, arg_0.x, arg_1.a), arg_0.xw)), min(38246i, -28007i), ~_wgslsmith_mult_vec4_u32(arg_0, arg_0)), u_input.e), _wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(699i, u_input.e, 1i)), vec3<i32>(u_input.e, 31817i, 1i), vec3<i32>(-44445i, 59248i, u_input.e) << (vec3<u32>(4294967295u, 4294967295u, arg_1.a) % vec3<u32>(32u))), vec3<i32>(u_input.e, abs(-1i), -40695i)));
    let var_1 = Struct_1(vec3<u32>(_wgslsmith_mult_u32(reverseBits(_wgslsmith_div_u32(69568u, u_input.a)), max(abs(u_input.c), abs(arg_0.x))), arg_1.a, func_1(vec3<bool>(select(true, false, false), true, true), Struct_3(u_input.b)).a), min(_wgslsmith_div_vec2_u32(min(vec2<u32>(arg_0.x, u_input.d.x), vec2<u32>(4294967295u, arg_1.a) << (arg_0.zw % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(u_input.d.yz, u_input.d.xz)), countOneBits(~u_input.d.xz)));
    var var_2 = Struct_4(var_1);
    return _wgslsmith_dot_vec3_u32((~(~u_input.d) & select(vec3<u32>(1u, 1u, 4294967295u), _wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(39719u, u_input.a, u_input.d.x)), any(vec3<bool>(false, true, true)))) << (arg_0.wzz % vec3<u32>(32u)), u_input.d >> (vec3<u32>(_wgslsmith_mod_u32(1u, 1u) >> (arg_0.x % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.x, 4294967295u), vec2<u32>(u_input.d.x, var_1.a.x)), 21868u), reverseBits(_wgslsmith_clamp_u32(4294967295u, var_2.a.a.x, var_2.a.a.x))) % vec3<u32>(32u)));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_1) -> Struct_3 {
    global0 = array<f32, 4>();
    var var_0 = max(abs((84637u | u_input.d.x) << (~0u % 32u)), (9995u >> (func_1(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), func_1(vec3<bool>(false, true, false), Struct_3(u_input.b))).a % 32u)) >> (_wgslsmith_mult_u32(~28950u, u_input.a) % 32u));
    let var_1 = Struct_4(Struct_1(~vec3<u32>(32389u, ~arg_3.a.x, ~0u), ~vec2<u32>(4294967295u, 0u)));
    let var_2 = var_1;
    var var_3 = ~_wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_sub_u32(1u, ~4294967295u)), max(min(0u >> (u_input.b % 32u), _wgslsmith_dot_vec3_u32(arg_3.a, u_input.d)), ~var_1.a.a.x), abs(~(u_input.d.x >> (4294967295u % 32u))));
    return Struct_3(18998u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(-u_input.e);
    global1 = u_input.e;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2780f));
    let var_1 = func_5(min(vec3<i32>(u_input.e, -u_input.e, _wgslsmith_add_i32(u_input.e, u_input.e)), vec3<i32>(u_input.e, 2147483647i, 1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-255f, var_0, var_0))), -2147483647i, Struct_1(reverseBits(~u_input.d), vec2<u32>(func_4(vec4<u32>(u_input.c, 108919u, 0u, u_input.d.x), func_1(vec3<bool>(true, false, false), Struct_3(u_input.c))), u_input.d.x | u_input.a)));
    global1 = u_input.e;
    var var_2 = ~((_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.e, u_input.e, -3242i, u_input.e), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.e, u_input.e, u_input.e), vec4<i32>(u_input.e, 1i, 0i, 15278i), vec4<i32>(u_input.e, -7518i, -13355i, 17946i))) << (select(~vec4<u32>(u_input.b, 1u, u_input.a, 1u), vec4<u32>(77416u, var_1.a, 0u, 60419u), true) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.b, 4294967295u, 8267u, 91405u)), ~(vec4<u32>(0u, 50767u, 50232u, 52276u) & vec4<u32>(1u, u_input.d.x, 44616u, 48773u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_2.wx), abs(~(~(~vec4<u32>(0u, var_1.a, u_input.c, 1u)))), vec2<u32>(u_input.a, _wgslsmith_mod_u32(var_1.a | _wgslsmith_div_u32(u_input.d.x, 25508u), (var_1.a ^ 4294967295u) ^ u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.d.x, 4u)], 253f)) - 466f)), global0[_wgslsmith_index_u32(~var_1.a, 4u)], -512f, var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 4u)], var_0, -209f)));
}

