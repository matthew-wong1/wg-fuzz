struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: bool, arg_3: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_sub_i32(-24269i, u_input.b.x) ^ 1i;
    let var_1 = vec4<i32>(min(var_0, var_0), 19852i << (_wgslsmith_clamp_u32(countOneBits(arg_3.x), arg_3.x, ~(~1u)) % 32u), _wgslsmith_div_i32((13333i >> (~4294967295u % 32u)) & var_0, ~_wgslsmith_mod_i32(-u_input.b.x, reverseBits(8797i))), i32(-1i) * -1i);
    global0 = array<Struct_2, 2>();
    var var_2 = abs(0u);
    var_2 = 97464u;
    return -6911i;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_2) -> i32 {
    let var_0 = vec4<bool>(true, true, false, all(vec3<bool>(false, arg_1.x, true)));
    let var_1 = func_3(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 10742u), vec4<u32>(arg_2.c, 4294967295u, arg_2.c, 12757u) << (vec4<u32>(753u, 2109u, 4294967295u, 28765u) % vec4<u32>(32u))), false, true, vec3<u32>(u_input.a, min(0u, ~82173u), ~u_input.a)) << (1u % 32u);
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    var var_2 = all(var_0.zwy);
    return 44032i;
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<u32>(1u, ~1u);
    let var_1 = -1423f;
    var var_2 = Struct_1(false, select(vec4<i32>(select(_wgslsmith_div_i32(0i, u_input.b.x), u_input.b.x ^ u_input.b.x, false), u_input.b.x, u_input.b.x, ~1i << (1u % 32u)), vec4<i32>(~func_2(52403i, vec2<bool>(false, false), global0[_wgslsmith_index_u32(var_0.x, 2u)]), u_input.b.x, u_input.b.x, firstLeadingBit(_wgslsmith_clamp_i32(2147483647i, -1i, -4392i))), !vec4<bool>(any(vec3<bool>(true, false, false)), true, false, true)), !vec2<bool>(true, !any(vec4<bool>(true, true, true, true))), vec4<bool>(false, any(vec2<bool>(true, true)), (u_input.b.x <= min(u_input.b.x, -21814i)) || true, true), true);
    var_0 = vec2<u32>(_wgslsmith_add_u32(firstTrailingBit(max(~var_0.x, ~18984u)), 23067u), ~(~1u) & ~u_input.a);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1 + 146f), 1169f, _wgslsmith_f_op_f32(exp2(var_1)), var_1)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(389f, _wgslsmith_f_op_f32(198f + var_1), -1333f, var_1))));
    return Struct_1(all(!(!vec2<bool>(true, var_2.c.x))), _wgslsmith_sub_vec4_i32(~vec4<i32>(var_2.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b.x, -1i), u_input.b), abs(var_2.b.x), u_input.b.x >> (u_input.a % 32u)), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(var_2.b >> (vec4<u32>(74915u, 0u, u_input.a, 4294967295u) % vec4<u32>(32u)), -vec4<i32>(2147483647i, var_2.b.x, var_2.b.x, 1i)), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, var_2.b.x, var_2.b.x, u_input.b.x))), var_2.d.zz, !var_2.d, all(var_2.d.yx));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-145f - _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(max(1000f, arg_3.a))))), vec4<i32>(_wgslsmith_dot_vec4_i32((arg_3.b | vec4<i32>(u_input.b.x, arg_2.b.x, -1i, arg_3.b.x)) ^ arg_3.b, ~min(arg_3.b, vec4<i32>(u_input.b.x, arg_2.b.x, -3322i, -12538i))), u_input.b.x, -33458i, ~(arg_3.b.x | 2147483647i) << (firstTrailingBit(~arg_3.c) % 32u)), 1u >> ((~(~u_input.a) << (4294967295u % 32u)) % 32u));
    let var_1 = func_1();
    global0 = array<Struct_2, 2>();
    var var_2 = func_1();
    var var_3 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(firstTrailingBit(4294967295u), ~1u, max(var_0.c, 40155u)), vec3<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.c, var_0.c, var_0.c, arg_3.c), vec4<u32>(69557u, arg_3.c, arg_3.c, 8829u)), arg_3.c << (u_input.a % 32u))), reverseBits(~vec3<u32>(var_0.c, u_input.a, 1u))), ~_wgslsmith_div_vec3_u32(vec3<u32>(52364u, arg_3.c, ~0u), _wgslsmith_div_vec3_u32(vec3<u32>(arg_3.c, u_input.a, 0u), select(vec3<u32>(0u, 1u, arg_3.c), vec3<u32>(14478u, u_input.a, 91336u), vec3<bool>(var_2.c.x, false, false)))), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~u_input.a, firstTrailingBit(u_input.a), var_0.c), u_input.a), ~1u, var_0.c));
    return vec2<bool>(select(!(1i >= select(16248i, -15067i, false)), all(select(var_2.d, vec4<bool>(true, true, true, false), !vec4<bool>(arg_2.c.x, var_1.d.x, var_1.c.x, true))), func_1().c.x), all(var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, _wgslsmith_clamp_vec4_i32(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(21558i, 55973i, 2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -1i))), max(vec4<i32>(~u_input.b.x, abs(-21998i), ~4913i, 2147483647i), ~(~vec4<i32>(u_input.b.x, -36068i, u_input.b.x, -2147483647i))), firstTrailingBit(-(vec4<i32>(609i, 1i, u_input.b.x, u_input.b.x) | vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x)))), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-743f, 123f, 988f, -1539f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-957f, 2795f, 1408f, 1964f))))) * vec4<f32>(_wgslsmith_f_op_f32(abs(-930f)), _wgslsmith_f_op_f32(-337f * -203f), _wgslsmith_f_op_f32(ceil(-738f)), -297f)), vec2<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(44206u, u_input.a), vec2<u32>(u_input.a, 44061u)) < u_input.a, false), func_1(), global0[_wgslsmith_index_u32(~(~u_input.a | ~1u), 2u)]), !func_1().d, !all(func_1().d));
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    var var_1 = 0u;
    var var_2 = !var_0.e;
    var_2 = u_input.b.x == func_3(select(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(43143u, 1u, 110041u, 5675u), vec4<u32>(65007u, u_input.a, 9782u, 17738u)), reverseBits(vec4<u32>(u_input.a, 0u, u_input.a, 0u))), vec4<u32>(u_input.a, u_input.a, u_input.a, firstLeadingBit(u_input.a)), select(func_1().d, var_0.d, !vec4<bool>(false, var_0.a, true, var_0.a))), !func_1().d.x, var_0.a, _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4295u, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, 55966u), vec3<u32>(u_input.a, 0u, 0u))) ^ ~(~vec3<u32>(1u, 4294967295u, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(var_0.b.x, -10538i));
}

