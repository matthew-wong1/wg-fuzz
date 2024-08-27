struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    var var_0 = Struct_5(Struct_4(Struct_1(abs(_wgslsmith_add_i32(u_input.b.x, -2147483647i)), true), u_input.c));
    let var_1 = Struct_2(u_input.c.x, min(reverseBits(vec4<i32>(u_input.a, 37303i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.a.a, var_0.a.a.a, 191i), u_input.d), 27414i ^ u_input.b.x)), vec4<i32>(_wgslsmith_mod_i32(-37523i << (var_0.a.b.x % 32u), -2147483647i), 1i, u_input.d.x, abs(37526i))), abs(_wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(u_input.d.zy, vec2<i32>(var_0.a.a.a, -14981i)), u_input.b.x)), 4294967295u, ~countOneBits(_wgslsmith_div_u32(var_0.a.b.x, _wgslsmith_add_u32(0u, 4294967295u))));
    var var_2 = Struct_5(var_0.a);
    let var_3 = Struct_3(_wgslsmith_dot_vec2_u32(~vec2<u32>(111759u, var_2.a.b.x) ^ vec2<u32>(~1u, _wgslsmith_div_u32(var_0.a.b.x, var_0.a.b.x)), var_0.a.b ^ ~vec2<u32>(var_0.a.b.x, var_1.d)), -385f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - 933f)))))));
    let var_4 = 26051u;
    return -1i;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec3<i32>) -> Struct_4 {
    let var_0 = Struct_3(u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(round(-443f))) + 1173f)), _wgslsmith_f_op_f32(f32(-1f) * -130f));
    let var_1 = reverseBits(_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, ~8414u) & u_input.c.x, 4294967295u & u_input.c.x));
    var var_2 = u_input.d;
    let var_3 = vec2<i32>(reverseBits(_wgslsmith_add_i32(arg_2.x, u_input.d.x)), max(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(var_2.x, arg_2.x)), vec2<i32>(var_2.x, _wgslsmith_mod_i32(u_input.d.x, var_2.x))), select(firstLeadingBit(_wgslsmith_div_i32(814i, 2147483647i)), func_3(), all(!vec4<bool>(false, true, arg_1, true)))));
    var_2 = _wgslsmith_sub_vec3_i32(-vec3<i32>(_wgslsmith_sub_i32(var_3.x, 12027i), -12672i, ~_wgslsmith_sub_i32(u_input.a, var_2.x)), arg_2);
    return Struct_4(Struct_1(_wgslsmith_dot_vec2_i32(abs(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -24288i), vec2<i32>(2495i, -19112i))), ~u_input.d.xx), false), vec2<u32>(var_0.a << (8769u % 32u), ~(~u_input.c.x)));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: bool) -> Struct_5 {
    let var_0 = func_2(-471f, true, vec3<i32>(12459i, arg_0, 19065i));
    let var_1 = select(vec3<bool>(all(select(vec2<bool>(false, var_0.a.b), vec2<bool>(arg_2, var_0.a.b), false)), !var_0.a.b & true, true), !(!(!vec3<bool>(false, arg_2, var_0.a.b))), all(select(select(!vec2<bool>(true, arg_2), vec2<bool>(true, arg_2), select(vec2<bool>(false, true), vec2<bool>(arg_2, true), vec2<bool>(false, false))), select(select(vec2<bool>(true, false), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, false)), !vec2<bool>(var_0.a.b, arg_2), var_0.a.b), any(select(vec3<bool>(arg_2, arg_2, var_0.a.b), vec3<bool>(var_0.a.b, true, false), var_0.a.b)))));
    return Struct_5(func_2(-1629f, arg_2, ~(~vec3<i32>(-1i, u_input.a, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(i32(-1i) * -31459i, vec4<f32>(-437f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -712f)), _wgslsmith_f_op_f32(f32(-1f) * -235f), -184f), true);
    let var_1 = _wgslsmith_div_u32(0u, func_2(_wgslsmith_f_op_f32(ceil(362f)), any(vec3<bool>(var_0.a.a.b, true, false)), u_input.d).b.x << (51882u % 32u)) < ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u & var_0.a.b.x, 20079u, ~4294967295u), ~_wgslsmith_div_vec3_u32(vec3<u32>(75270u, u_input.c.x, 1u), vec3<u32>(var_0.a.b.x, u_input.c.x, 32637u)));
    var_0 = func_1(var_0.a.a.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-662f, 1899f, -573f, -1529f), vec4<f32>(-171f, -216f, 524f, 1525f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -695f) * _wgslsmith_f_op_f32(f32(-1f) * -450f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-885f, 1600f, var_0.a.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1311f) - 428f), -1167f), select(select(select(vec4<bool>(true, false, var_1, false), vec4<bool>(false, false, var_1, var_1), vec4<bool>(true, var_0.a.a.b, var_0.a.a.b, false)), vec4<bool>(false, false, true, var_0.a.a.b), vec4<bool>(true, true, true, true)), vec4<bool>(true, !var_1, !var_0.a.a.b, func_1(0i, vec4<f32>(-570f, 565f, -757f, 1269f), var_1).a.a.b), !vec4<bool>(true, var_1, var_0.a.a.b, true)))), !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(424f)), -1000f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -300f)))));
    var_0 = func_1(-u_input.b.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 254f, 919f, -325f) - vec4<f32>(526f, -1919f, -1748f, -256f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(2091f, 785f, -812f, -844f)))))), func_1(var_0.a.a.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-425f, -809f, -1189f, 227f) - vec4<f32>(1378f, -361f, 750f, -1448f))))), -(~var_0.a.a.a) != 26684i).a.a.b);
    var var_2 = Struct_2(~var_0.a.b.x, vec4<i32>(-_wgslsmith_add_i32(~1i, u_input.b.x), min(1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.a.a, 1i), u_input.d.yy)), u_input.d.x, func_1(-_wgslsmith_mult_i32(var_0.a.a.a, u_input.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-384f, -1117f, 1171f, 698f)) + vec4<f32>(779f, -337f, -318f, -1523f)), !var_0.a.a.b).a.a.a), u_input.d.x, ~_wgslsmith_mult_u32(2199u, ~_wgslsmith_mult_u32(4294967295u, var_0.a.b.x)), var_0.a.b.x);
    var_2 = Struct_2(1u, ~vec4<i32>(-var_0.a.a.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.b.x), u_input.b), _wgslsmith_div_i32(var_2.b.x, var_2.c), func_3()) << (vec4<u32>(43161u, var_0.a.b.x, 1u, var_0.a.b.x) % vec4<u32>(32u)), ~13731i >> (abs(func_2(_wgslsmith_div_f32(207f, -430f), any(vec4<bool>(var_1, true, false, var_0.a.a.b)), -vec3<i32>(var_0.a.a.a, var_2.c, -44904i)).b.x) % 32u), 1u, u_input.c.x);
    var var_3 = var_2.b.ywx;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e, vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.b.x, 0u, u_input.c.x), vec3<u32>(1u, var_2.e, u_input.c.x)), vec3<u32>(var_0.a.b.x, 26024u, var_2.e)), firstLeadingBit(9856u), func_1(0i, vec4<f32>(-539f, -797f, -1517f, -839f), any(vec4<bool>(var_0.a.a.b, var_0.a.a.b, var_1, true))).a.b.x, u_input.c.x) ^ ~_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), vec4<u32>(var_2.e, 28457u, 0u, var_2.d)), ~_wgslsmith_mod_vec3_u32(countOneBits(countOneBits(vec3<u32>(11960u, 0u, 0u))), vec3<u32>(0u, var_2.d, u_input.c.x) >> (vec3<u32>(1u, 50518u, var_2.e) % vec3<u32>(32u))));
}

