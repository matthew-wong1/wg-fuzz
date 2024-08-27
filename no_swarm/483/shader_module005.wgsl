struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(Struct_2(187f, Struct_1(2298i, 0i, vec2<i32>(38073i, 1676i), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), vec2<bool>(true, true), true, Struct_1(22863i, 52330i, vec2<i32>(38604i, -27639i), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))), 22523i, vec3<i32>(39808i, 48954i, 0i)));

var<private> global2: array<Struct_3, 6>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3) -> vec2<i32> {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~26010u, ~u_input.b), 6u)];
    global2 = array<Struct_3, 6>();
    global1 = array<Struct_3, 1>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_0 - vec2<f32>(-559f, -463f))))) * arg_0) * vec2<f32>(arg_1.a.a, _wgslsmith_f_op_f32(437f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-664f, arg_1.a.a)), -498f))));
    var var_2 = arg_1.a.e.e.yw;
    return ~abs(vec2<i32>(17964i, u_input.a.x) << ((vec2<u32>(75349u, u_input.b) ^ max(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.b, u_input.b))) % vec2<u32>(32u)));
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    global2 = array<Struct_3, 6>();
    let var_0 = 1u;
    var var_1 = arg_0.x;
    global2 = array<Struct_3, 6>();
    var var_2 = ~vec4<u32>(~(~(var_0 & var_0)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(var_0, 4294967295u), u_input.b, ~var_0, 4294967295u & u_input.b), ~vec4<u32>(1u, 4294967295u, 69579u, var_0)), 4294967295u, _wgslsmith_div_u32(var_0, _wgslsmith_add_u32(u_input.c, ~4294967295u)));
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * 921f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(arg_0.x + 1167f))), Struct_1(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 69675i), vec3<i32>(34155i, u_input.a.x, 1i))), 8826i, func_3(vec2<f32>(arg_0.x, arg_0.x), Struct_3(Struct_2(arg_0.x, Struct_1(-42632i, u_input.a.x, u_input.a, vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), vec2<bool>(false, true), true, Struct_1(3228i, u_input.a.x, vec2<i32>(-40825i, u_input.a.x), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true))), u_input.a.x, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), select(false, false, true)), vec4<bool>(true, true, all(vec4<bool>(false, true, false, false)), select(true, true, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(all(vec2<bool>(true, false)), true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), true, Struct_1(_wgslsmith_div_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -36555i, u_input.a.x, 2147483647i), vec4<i32>(u_input.a.x, 0i, -1i, u_input.a.x))), u_input.a.x, ~vec2<i32>(u_input.a.x, u_input.a.x), vec4<bool>(true, true, true, true), vec4<bool>(u_input.c > var_2.x, true, true, true))), _wgslsmith_mod_i32(-u_input.a.x, func_3(arg_0, Struct_3(Struct_2(arg_0.x, Struct_1(u_input.a.x, u_input.a.x, u_input.a, vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), vec2<bool>(false, false), false, Struct_1(-10169i, u_input.a.x, u_input.a, vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false))), u_input.a.x, select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-1i, u_input.a.x, u_input.a.x), vec3<bool>(false, true, false)))).x), min(_wgslsmith_sub_vec3_i32(vec3<i32>(func_3(vec2<f32>(1000f, 1000f), Struct_3(Struct_2(arg_0.x, Struct_1(u_input.a.x, -22546i, u_input.a, vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), vec2<bool>(false, false), false, Struct_1(u_input.a.x, u_input.a.x, u_input.a, vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), 2147483647i, vec3<i32>(u_input.a.x, u_input.a.x, 63397i))).x, i32(-1i) * -14269i, 0i), select(vec3<i32>(u_input.a.x, -45450i, 35812i), vec3<i32>(9149i, u_input.a.x, -1928i), arg_0.x >= arg_0.x)), -abs(_wgslsmith_sub_vec3_i32(vec3<i32>(63964i, -1i, u_input.a.x), vec3<i32>(2147483647i, u_input.a.x, -15080i)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = true;
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, firstTrailingBit(~(u_input.b ^ u_input.b))), countOneBits(vec3<u32>(1u, 23642u, ~15852u)));
    let var_2 = u_input.c;
    var var_3 = !vec3<bool>(arg_3.d.x, true, all(arg_2.e.yzx));
    return vec3<u32>(firstTrailingBit(4294967295u), 66145u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(u_input.b, var_1, var_1, 1u), vec4<u32>(8597u, 67111u, 1u, 4294967295u), arg_3.d), vec4<u32>(countOneBits(22532u), 22020u, ~4294967295u, 1u >> (0u % 32u))), vec4<u32>(u_input.c, 0u, var_1, var_2)));
}

fn func_1(arg_0: u32) -> f32 {
    global0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, ~0u, ~arg_0), func_4(func_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-734f, 274f)))), abs(vec3<i32>(u_input.a.x, 56618i, u_input.a.x)), Struct_1(u_input.a.x, -u_input.a.x, vec2<i32>(-813i, 0i), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), func_2(vec2<f32>(-229f, -430f)).a.e) & (vec3<u32>(u_input.b, ~4294967295u, ~1u) >> (_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(1u, arg_0, u_input.b)), ~vec3<u32>(u_input.b, 26848u, u_input.b)) % vec3<u32>(32u))));
    global2 = array<Struct_3, 6>();
    let var_0 = u_input.a;
    global2 = array<Struct_3, 6>();
    let var_1 = -2147483647i > ~u_input.a.x;
    return _wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1102f, -1000f)))))).a.a);
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: u32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-336f, -1000f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(arg_0, arg_0)))));
    let var_1 = ~firstTrailingBit(~vec4<i32>(u_input.a.x, abs(-1i), u_input.a.x << (arg_2 % 32u), countOneBits(u_input.a.x)));
    var var_2 = ~var_1.x;
    var var_3 = ~(~select(vec4<u32>(select(4294967295u, arg_2, false), u_input.b, countOneBits(10215u), 52672u), abs(~vec4<u32>(0u, 0u, u_input.b, u_input.c)), vec4<bool>(true, any(vec3<bool>(true, arg_1, false)), arg_1 | arg_1, func_2(vec2<f32>(var_0.x, var_0.x)).a.d)));
    let var_4 = 1559f;
    return func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1898f, arg_0))))));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2) -> vec2<bool> {
    global0 = _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(u_input.b, 4294967295u) | (vec2<u32>(u_input.c, u_input.b) ^ vec2<u32>(u_input.b, 45174u))) | reverseBits(~vec2<u32>(6083u, u_input.b) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.b), vec2<u32>(0u, 55578u))), _wgslsmith_mod_vec2_u32(abs(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.c, u_input.b), ~vec2<u32>(u_input.c, 43918u))), _wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 4294967295u) << ((vec2<u32>(58844u, 3523u) | vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(min(vec2<u32>(12161u, u_input.b), vec2<u32>(12553u, 0u)), vec2<u32>(u_input.b, u_input.b) & vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(4294967295u, 2193u)))));
    var var_0 = arg_0.a;
    var var_1 = min(_wgslsmith_sub_vec3_i32((vec3<i32>(arg_0.c.x, 0i, var_0.b.b) & arg_0.c) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 66160u, u_input.c), vec3<u32>(u_input.c, 0u, 42550u)) % vec3<u32>(32u)), vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, arg_0.b), u_input.a)), _wgslsmith_mod_i32(1i, arg_0.b), 2147483647i)), _wgslsmith_add_vec3_i32(arg_0.c, arg_0.c >> ((~vec3<u32>(1u, 40400u, 1u) | (vec3<u32>(40158u, 4294967295u, u_input.b) >> (vec3<u32>(1u, u_input.b, 4294967295u) % vec3<u32>(32u)))) % vec3<u32>(32u))));
    var var_2 = arg_1;
    return func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.a)) + _wgslsmith_div_f32(var_2.a, -1301f)))), any(!vec2<bool>(true, true & var_2.b.d.x)), _wgslsmith_div_u32(u_input.c, ~(~_wgslsmith_div_u32(1u, 4294967295u)))).a.e.d.xz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = func_6(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(countOneBits(u_input.c)))), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-733f, 213f), vec2<f32>(-965f, -976f))) - _wgslsmith_div_vec2_f32(vec2<f32>(-789f, 513f), vec2<f32>(-402f, 1013f)))).a.d, 4294967295u), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.c)))), true, ~(~4294967295u)).a);
    var var_2 = ~_wgslsmith_mult_vec4_i32(~firstTrailingBit(vec4<i32>(24791i, u_input.a.x, u_input.a.x, 27639i)), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i)) | (vec4<i32>(-u_input.a.x ^ _wgslsmith_mult_i32(u_input.a.x, 1i), -1i, u_input.a.x, 3427i) >> (vec4<u32>(~u_input.b, 4294967295u, _wgslsmith_clamp_u32(16099u, firstTrailingBit(u_input.c), ~4294967295u), ~_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.c)) % vec4<u32>(32u)));
    let var_3 = 1i;
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(895f, -399f))).a.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(423f + -293f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(180f, 2840f) - vec2<f32>(-1141f, -706f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(532f, -895f)), vec2<f32>(-1000f, -155f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2465f, -251f), vec2<f32>(1366f, 142f), var_1)) - vec2<f32>(668f, 899f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-3618f, 566f)))))));
    var var_5 = ~vec3<u32>(reverseBits(u_input.b), 3660u, u_input.b);
    let var_6 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_4)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_4.x, 631f), vec2<f32>(207f, var_4.x)) - _wgslsmith_f_op_vec2_f32(sign(var_4)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1649f, -1018f)), vec2<f32>(-290f, var_4.x), all(vec3<bool>(false, false, false))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.x, 1000f) - vec2<f32>(var_4.x, var_4.x))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_4.x, var_4.x))), false)), !(true | any(vec3<bool>(var_0, var_1.x, var_0))))));
    global2 = array<Struct_3, 6>();
    var var_7 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-_wgslsmith_div_i32(func_2(var_6).a.b.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_add_i32(-func_2(vec2<f32>(var_6.x, -1421f)).b, -1i)), var_4.x, ~(~vec4<u32>(abs(1u), u_input.c, _wgslsmith_sub_u32(32758u, 1u), u_input.c)), var_2.xzx, vec3<f32>(var_6.x, _wgslsmith_f_op_f32(var_4.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_6.x), 954f)), _wgslsmith_f_op_f32(max(-1281f, _wgslsmith_f_op_f32(737f * var_4.x)))));
}

