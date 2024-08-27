struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(true, false, vec2<u32>(22134u, 115665u), 714f), Struct_1(false, false, vec2<u32>(0u, 48154u), -328f), Struct_1(false, true, vec2<u32>(26025u, 0u), 445f), Struct_1(true, false, vec2<u32>(0u, 17944u), 524f), Struct_1(true, true, vec2<u32>(29893u, 45792u), 260f), Struct_1(true, true, vec2<u32>(4294967295u, 21434u), -306f), Struct_1(true, false, vec2<u32>(32680u, 2681u), -1461f), Struct_1(true, false, vec2<u32>(19260u, 7379u), -1431f), Struct_1(true, false, vec2<u32>(0u, 0u), 1218f), Struct_1(false, true, vec2<u32>(8126u, 34648u), 741f), Struct_1(true, false, vec2<u32>(2439u, 4294967295u), 504f), Struct_1(true, true, vec2<u32>(34352u, 4294967295u), -1981f));

var<private> global3: array<Struct_5, 8> = array<Struct_5, 8>(Struct_5(vec3<i32>(i32(-2147483648), -14591i, -20739i), -1144f), Struct_5(vec3<i32>(1166i, -1i, -61601i), 1050f), Struct_5(vec3<i32>(2147483647i, -21177i, -1i), -400f), Struct_5(vec3<i32>(-10633i, 55736i, -27919i), 955f), Struct_5(vec3<i32>(83395i, 1i, -9361i), 1053f), Struct_5(vec3<i32>(2147483647i, -18279i, -27302i), -797f), Struct_5(vec3<i32>(0i, 0i, 11505i), -1570f), Struct_5(vec3<i32>(-7794i, 24026i, 30415i), 1246f));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> vec4<u32> {
    return _wgslsmith_add_vec4_u32(countOneBits(select((vec4<u32>(52063u, 0u, 0u, u_input.c.x) | vec4<u32>(0u, u_input.a, u_input.b, 4294967295u)) & abs(vec4<u32>(u_input.a, u_input.a, 17577u, u_input.a)), _wgslsmith_mod_vec4_u32(~vec4<u32>(13322u, 63481u, u_input.d, 12132u), ~vec4<u32>(10131u, u_input.d, u_input.d, 59352u)), true)), (~(~vec4<u32>(27424u, 17183u, u_input.d, 0u)) >> (select(select(vec4<u32>(u_input.b, u_input.d, u_input.a, u_input.b), vec4<u32>(u_input.c.x, 54693u, 30351u, u_input.b), true), vec4<u32>(u_input.c.x, u_input.b, 0u, u_input.a), all(vec4<bool>(true, false, false, true))) % vec4<u32>(32u))) >> (vec4<u32>(37137u, reverseBits(~u_input.d), u_input.b, firstLeadingBit(firstLeadingBit(u_input.b))) % vec4<u32>(32u)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global0 = array<vec3<bool>, 16>();
    global3 = array<Struct_5, 8>();
    var var_0 = vec3<u32>(arg_0.c.x, ~(~u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 44639u, _wgslsmith_dot_vec2_u32(arg_0.c & vec2<u32>(u_input.d, 63384u), vec2<u32>(58012u, u_input.d)), _wgslsmith_mult_u32(1u, max(7089u, arg_0.c.x))), _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 1u, 4294967295u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, arg_0.c.x, u_input.a), vec4<u32>(u_input.b, 0u, 0u, arg_0.c.x))) ^ _wgslsmith_div_vec4_u32(func_2(), ~vec4<u32>(4294967295u, u_input.c.x, arg_0.c.x, u_input.d))));
    var var_1 = arg_0.d;
    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(262f * arg_0.d) + _wgslsmith_f_op_f32(arg_0.d + arg_0.d))), _wgslsmith_f_op_f32(-arg_0.d)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-131f, arg_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1960f - -1283f))))), ~(-vec2<i32>(i32(-1i) * -1i, 1i)), Struct_1(arg_0.b, all(select(select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), global0[_wgslsmith_index_u32(var_0.x, 16u)], arg_0.b), select(vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, true, false), true), !arg_0.a)), vec2<u32>(arg_0.c.x, _wgslsmith_dot_vec3_u32(u_input.c, ~vec3<u32>(0u, 16868u, 8233u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.d, arg_0.d)) + arg_0.d) * 265f)), max(var_0.x, ~func_2().x));
    return var_2.c.x;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3) -> i32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1279f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f)))));
    global1 = -570f;
    var var_0 = vec2<i32>(~_wgslsmith_add_i32(~select(23254i, 2147483647i, arg_0.x), ~abs(0i)), (~(~(-65506i)) ^ firstTrailingBit(~27170i)) << (u_input.c.x % 32u));
    let var_1 = countOneBits(~(~vec4<u32>(u_input.d, u_input.d, ~0u, ~43496u)));
    let var_2 = true | arg_0.x;
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~44537i & _wgslsmith_dot_vec3_i32(-firstTrailingBit(vec3<i32>(1i, 1i, 1i)), vec3<i32>(0i, -(~43998i), -_wgslsmith_mod_i32(-32331i, -2147483647i)));
    let var_1 = _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(_wgslsmith_div_i32(2147483647i, 1i), i32(-1i) * -2147483647i)), vec2<i32>(~(-2147483647i), max(func_1(global2[_wgslsmith_index_u32(u_input.d, 12u)]), -1i))) | -vec2<i32>(-(~(-68232i)), -1i);
    global2 = array<Struct_1, 12>();
    let var_2 = global2[_wgslsmith_index_u32(~u_input.c.x, 12u)];
    global2 = array<Struct_1, 12>();
    var var_3 = var_1.x;
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.d))), -632f, all(!vec2<bool>(false, var_2.b)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -3239f))))), func_2().x != min(var_2.c.x, ~1u)))));
    let var_5 = Struct_2(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_div_vec3_f32(vec3<f32>(-1398f, var_2.d, -1000f), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_2.d, var_2.d))), var_2.d, _wgslsmith_f_op_f32(round(var_2.d)))), (-vec2<i32>(var_1.x, 1i) >> (vec2<u32>(u_input.d >> (u_input.a % 32u), u_input.a) % vec2<u32>(32u))) & -(var_1 >> (~u_input.c.zx % vec2<u32>(32u))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_div_u32(~28781u, _wgslsmith_mod_u32(27810u, u_input.b)), 5593u), 12u)], ~u_input.b << (4294967295u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-select(var_5.c, ~var_1, select(vec2<bool>(var_5.d.b, var_2.a), vec2<bool>(false, true), false))), 0i, func_3(global0[_wgslsmith_index_u32(46160u, 16u)], Struct_3(!var_5.d.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d, var_2.d) + var_5.b.yz))), var_5.b.yx));
}

