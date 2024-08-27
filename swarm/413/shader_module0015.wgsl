struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6>;

var<private> global1: vec4<i32> = vec4<i32>(-1i, -24671i, -34850i, -36163i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    global1 = _wgslsmith_mult_vec4_i32(~(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, global1.x, -2147483647i, -2147483647i), vec4<i32>(global1.x, -24983i, -31776i, 0i))), vec4<i32>(max(select(u_input.c.x, -32533i, true), ~(-u_input.a)), 10828i, -(~_wgslsmith_mod_i32(global1.x, 0i)), u_input.b));
    global0 = array<Struct_3, 6>();
    let var_0 = ~(~_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(u_input.d, u_input.d)), vec2<u32>(4294967295u, 0u), ~firstLeadingBit(vec2<u32>(38687u, u_input.d))));
    let var_1 = 1u;
    var var_2 = u_input.b;
    return select(select(vec4<bool>(select(true, true, true), u_input.c.x < -2244i, -42301i == ~u_input.c.x, true), select(vec4<bool>(true, true, true, all(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, true), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)))), any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))) & true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), true)), !(!(_wgslsmith_dot_vec3_i32(global1.zwy, vec3<i32>(u_input.a, -737i, 0i)) > (u_input.b & u_input.c.x))));
}

fn func_2() -> vec4<i32> {
    global0 = array<Struct_3, 6>();
    var var_0 = Struct_4(Struct_3(Struct_2(vec2<f32>(1f, _wgslsmith_f_op_f32(864f * -1000f))), vec4<bool>(!any(vec4<bool>(false, false, true, true)), any(vec3<bool>(true, true, true)), all(vec2<bool>(true, false)), all(func_3()))), global0[_wgslsmith_index_u32(u_input.d, 6u)]);
    return vec4<i32>(~firstTrailingBit(_wgslsmith_mult_i32(-45243i, 1i)), abs(~(-min(u_input.c.x, u_input.a))), global1.x, 1i >> (~_wgslsmith_div_u32(u_input.d, ~4294967295u) % 32u));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(0i, 1i, -11873i)), ~0i, select(u_input.c.x, global1.x, all(vec3<bool>(false, false, true))), -(~u_input.a)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(countOneBits(u_input.d), _wgslsmith_mult_u32(u_input.d, 1085u), ~42557u, 1u), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.d)), vec4<u32>(u_input.d, u_input.d, u_input.d, 21612u))) % vec4<u32>(32u)), func_2());
    var_0 = _wgslsmith_add_vec4_i32(-(~vec4<i32>(u_input.c.x, u_input.c.x, -global1.x, 2147483647i)), abs(vec4<i32>(countOneBits(var_0.x), 9263i, 2147483647i, firstLeadingBit(-2675i))) >> ((_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d, 57992u, u_input.d, u_input.d), select(vec4<u32>(0u, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), false)) & vec4<u32>(max(u_input.d, 3478u), u_input.d, 28866u, ~u_input.d)) % vec4<u32>(32u)));
    var_0 = vec4<i32>(reverseBits(-1i | ~firstTrailingBit(1i)), 16877i, -1i, ~(-(~0i)));
    let var_1 = vec3<u32>(select(select(abs(1u), 1u, true), max(_wgslsmith_add_u32(abs(100422u), u_input.d), u_input.d), any(func_3().wy) | true), u_input.d, 4294967295u);
    global1 = _wgslsmith_mod_vec4_i32(vec4<i32>(min(_wgslsmith_sub_i32(-31898i, var_0.x), _wgslsmith_mod_i32(var_0.x, u_input.c.x)), 54867i << (~u_input.d % 32u), ~global1.x ^ countOneBits(u_input.c.x), _wgslsmith_dot_vec4_i32(min(vec4<i32>(global1.x, u_input.c.x, -10121i, -48701i), vec4<i32>(0i, 1i, var_0.x, 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, global1.x, -11601i, global1.x), vec4<i32>(var_0.x, var_0.x, 1869i, 1i)))), _wgslsmith_clamp_vec4_i32(~(vec4<i32>(-1i, -8529i, global1.x, global1.x) & vec4<i32>(-5112i, 1i, 66049i, u_input.a)), min(vec4<i32>(u_input.b, 27926i, -27978i, 2147483647i), ~vec4<i32>(45001i, global1.x, 46842i, -9169i)), abs(abs(vec4<i32>(-1i, 2147483647i, -2147483647i, -2709i))))) ^ select(~func_2(), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -1i, -1i, -29902i), vec4<i32>(53475i, -1i, -17554i, global1.x) << (vec4<u32>(56644u, var_1.x, var_1.x, 0u) % vec4<u32>(32u))), vec4<i32>(-1i, ~u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(12741i, 57411i), var_0.yz), global1.x)), true);
    return ~var_1.x;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> u32 {
    global1 = ~vec4<i32>(u_input.a, -global1.x, u_input.c.x, countOneBits(_wgslsmith_clamp_i32(abs(u_input.b), u_input.b, abs(-1i))));
    let var_0 = _wgslsmith_dot_vec4_u32(~min(vec4<u32>(~4294967295u, ~arg_0, 0u, ~85612u), vec4<u32>(1u | arg_0, 12045u, select(arg_0, arg_0, arg_1.e.x), 88472u)), _wgslsmith_clamp_vec4_u32(~select(vec4<u32>(u_input.d, 44501u, u_input.d, 23213u), vec4<u32>(arg_0, u_input.d, 1u, 1u), true), min(_wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.d, u_input.d, 1u, 1u), vec4<u32>(100762u, 0u, arg_0, 1673u)), vec4<u32>(arg_0, 0u, arg_0, arg_0)), vec4<u32>(~arg_0, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.d, 1673u), vec4<u32>(arg_0, 1u, u_input.d, arg_0)), reverseBits(0u))), vec4<u32>(~(~arg_0), 4294967295u, u_input.d, arg_0)));
    let var_1 = !func_3().wz;
    var var_2 = vec2<bool>(all(vec3<bool>(true, any(arg_1.e), var_1.x)), arg_1.b.x);
    global1 = abs(-vec4<i32>(u_input.b ^ _wgslsmith_dot_vec3_i32(global1.zyx, vec3<i32>(0i, 1i, -43284i)), -38499i, _wgslsmith_dot_vec4_i32(func_2(), vec4<i32>(-42167i, u_input.c.x, -45706i, u_input.c.x)), 0i));
    return ~var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 1i, 1i, -2147483647i) & vec4<i32>(u_input.c.x, u_input.b, 44346i, 6349i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, 14310i, 2147483647i), vec4<i32>(31188i, global1.x, -1i, -2147483647i)))), ~(~firstLeadingBit(vec4<i32>(u_input.a, global1.x, u_input.b, 28812i))) | _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 1i, global1.x, u_input.a) & abs(vec4<i32>(-12932i, global1.x, u_input.c.x, 42845i)), _wgslsmith_add_vec4_i32(vec4<i32>(global1.x, 2147483647i, 11308i, 18018i), vec4<i32>(-16383i, global1.x, 0i, -3364i) ^ vec4<i32>(global1.x, u_input.b, u_input.a, u_input.c.x))), false);
    var var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(41455u, func_4(func_1(), Struct_1(max(global1.x, var_0.x), vec2<bool>(true, true), vec4<bool>(true, true, false, true), var_0.wyx, vec3<bool>(true, false, true))), max(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.d, u_input.d)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, 1u))), 1u), 0u), firstLeadingBit(_wgslsmith_div_vec4_u32(countOneBits(min(vec4<u32>(u_input.d, u_input.d, 4294967295u, 1u), vec4<u32>(1u, u_input.d, 0u, 31668u))), _wgslsmith_add_vec4_u32(select(vec4<u32>(11069u, 0u, u_input.d, 4886u), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), true), vec4<u32>(1u, u_input.d, 9683u, 12056u)))));
    var var_2 = var_0.zzz;
    let var_3 = Struct_3(Struct_2(vec2<f32>(-649f, _wgslsmith_f_op_f32(1270f - _wgslsmith_f_op_f32(abs(-858f))))), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true))));
    var_2 = abs(vec3<i32>(var_0.x, 32700i, -1i));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, firstLeadingBit(17121i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(515f, -572f, _wgslsmith_f_op_f32(ceil(-144f))) - vec3<f32>(-429f, _wgslsmith_f_op_f32(-var_3.a.a.x), _wgslsmith_f_op_f32(abs(var_3.a.a.x))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(var_3.a.a)))) - var_3.a.a))), ~_wgslsmith_mod_u32(~_wgslsmith_sub_u32(u_input.d, var_1.x), ~u_input.d));
}

