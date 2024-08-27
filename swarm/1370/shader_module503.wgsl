struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(2896i, -19926i, 3865i, 1i), vec4<i32>(8614i, 5268i, 36187i, i32(-2147483648)), vec4<i32>(-1i, i32(-2147483648), -25788i, 944i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-194f)) - _wgslsmith_f_op_f32(sign(1420f)));
    global0 = 21855i;
    var var_1 = Struct_3(vec3<bool>(all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true))), true, any(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), false))));
    let var_2 = select(vec2<u32>(_wgslsmith_add_u32(5326u, ~17899u | u_input.a), u_input.a), min(vec2<u32>(u_input.a, 15703u), ((vec2<u32>(4294967295u, u_input.a) ^ vec2<u32>(u_input.a, u_input.a)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 2124u), vec2<u32>(1u, 25275u)) % vec2<u32>(32u))) >> (select(vec2<u32>(112499u, 0u), vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), vec2<bool>(true, var_1.a.x)) % vec2<u32>(32u))), false | var_1.a.x);
    var var_3 = !(!(!any(select(vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x), var_1.a.x))));
    return !select(select(select(vec4<bool>(false, false, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, true, true, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x)), !(!vec4<bool>(false, var_1.a.x, true, var_1.a.x)), false), select(vec4<bool>(all(var_1.a), all(var_1.a), var_1.a.x, any(var_1.a)), !vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), var_1.a.x), vec4<bool>(false, true, true, all(vec4<bool>(true, var_1.a.x, false, true))));
}

fn func_2() -> Struct_3 {
    global0 = u_input.b.x;
    var var_0 = u_input.b.yw;
    global1 = array<vec4<i32>, 3>();
    var var_1 = Struct_3(vec3<bool>(true, any(select(func_3(2147483647i), vec4<bool>(true, false, false, true), false)), all(vec4<bool>(select(true, true, false), true, false, true))));
    global0 = -25991i;
    return Struct_3(!vec3<bool>(true || all(vec4<bool>(false, var_1.a.x, false, var_1.a.x)), any(vec3<bool>(true, true, true)), true));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -367f), -873f);
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1019f)) - _wgslsmith_f_op_f32(-555f * _wgslsmith_f_op_f32(arg_1.x - -641f))), 177f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, arg_1.x))) * arg_1.x))));
    let var_1 = u_input.b.yy >> (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, _wgslsmith_clamp_u32(0u, u_input.a, u_input.a), u_input.a & u_input.a), ~(vec3<u32>(u_input.a, 30101u, u_input.a) & vec3<u32>(u_input.a, 76871u, u_input.a))), 55840u) % vec2<u32>(32u));
    let var_2 = arg_0.a.x;
    global0 = _wgslsmith_mult_i32(_wgslsmith_add_i32(~1i, -(i32(-1i) * -13446i)) & var_1.x, ~firstTrailingBit(min(~11654i, ~u_input.b.x)));
    var var_3 = _wgslsmith_div_vec2_u32(~(reverseBits(vec2<u32>(1u, u_input.a) ^ vec2<u32>(u_input.a, u_input.a)) << ((~vec2<u32>(46441u, 28840u) >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u))), max(abs(max(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 34523u))) & abs(firstTrailingBit(vec2<u32>(1u, 25588u))), vec2<u32>(u_input.a & u_input.a, u_input.a)));
    return Struct_1(_wgslsmith_clamp_vec3_u32(~abs(~vec3<u32>(3743u, 67291u, 7899u)), select(min(vec3<u32>(var_3.x, u_input.a, 2707u) << (vec3<u32>(u_input.a, var_3.x, var_3.x) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, 23877u, u_input.a)), vec3<u32>(countOneBits(0u), 62664u >> (0u % 32u), 1u), vec3<bool>(true, var_2, arg_0.a.x & arg_0.a.x)), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(113426u, var_3.x, u_input.a), vec3<u32>(4294967295u, u_input.a, 0u), vec3<u32>(var_3.x, var_3.x, 17821u)), firstLeadingBit(vec3<u32>(var_3.x, u_input.a, 4294967295u))), ~(~vec3<u32>(u_input.a, var_3.x, 40098u)))), u_input.b.zwz, ~(~var_3.x), ~(-(-1i ^ _wgslsmith_clamp_i32(var_1.x, 2147483647i, u_input.b.x))));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    global0 = arg_3.d;
    let var_0 = func_1(_wgslsmith_sub_vec3_i32((~arg_3.b << ((arg_3.a << (arg_3.a % vec3<u32>(32u))) % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_mod_u32(u_input.a, arg_2.a.x), ~arg_2.c, ~arg_2.c) % vec3<u32>(32u)), abs(arg_3.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, -500f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_1)), arg_2.d != u_input.b.x)) + vec2<f32>(arg_0, 1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_1 - 569f), arg_1))));
    global1 = array<vec4<i32>, 3>();
    global0 = 0i;
    global0 = ~(i32(-1i) * -1i) ^ reverseBits(_wgslsmith_dot_vec3_i32(u_input.b.xxz, arg_3.b));
    return Struct_2(_wgslsmith_mult_u32(arg_2.a.x, ~(~arg_3.c)), vec3<bool>(all(!vec4<bool>(true, var_0.a.x, true, true)), !var_0.a.x, var_0.a.x), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1110f - _wgslsmith_f_op_f32(f32(-1f) * -582f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - 625f), _wgslsmith_div_f32(-1078f, 742f), false)))));
    var var_1 = func_5(-568f, -2051f, func_4(func_1(u_input.b.wyz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(112f, -492f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-403f, -228f) + vec2<f32>(-506f, 1021f)))), vec2<f32>(1f, 1f)), func_4(Struct_3(func_3(i32(-1i) * -21442i).xxy), vec2<f32>(_wgslsmith_f_op_f32(-336f - _wgslsmith_f_op_f32(496f + 474f)), -1000f)));
    let var_2 = _wgslsmith_dot_vec4_u32(~select(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, 16890u, 1u)), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 54458u, 0u, 15783u)), vec4<u32>(u_input.a, 27271u, 0u, 82852u) << (vec4<u32>(26548u, 1u, 0u, 3082u) % vec4<u32>(32u))), !vec4<bool>(false, var_1.b.x, var_1.b.x, false)), ~(~(~vec4<u32>(var_1.a, u_input.a, var_1.a, u_input.a)) << (abs(select(vec4<u32>(var_1.a, u_input.a, 740u, 1u), vec4<u32>(19312u, 1u, 4294967295u, var_1.c.c), vec4<bool>(false, var_1.b.x, var_1.b.x, true))) % vec4<u32>(32u))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-667f, -1056f))) * vec2<f32>(-610f, _wgslsmith_div_f32(-1322f, 786f))), vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1276f)))))));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, vec3<i32>(u_input.b.x, ~(~(i32(-1i) * -2147483647i)), u_input.b.x), ~(~3573u));
}

