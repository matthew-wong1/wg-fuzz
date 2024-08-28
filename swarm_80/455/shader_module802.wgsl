struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: bool,
    d: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    let var_0 = 54665u;
    var var_1 = vec2<bool>(true, true);
    global1 = u_input.c;
    let var_2 = (vec2<u32>(1u, 4294967295u) << (~arg_0 % vec2<u32>(32u))) & ~arg_0;
    var var_3 = Struct_1(max(1i, global0.x & ~(-47655i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2060f, _wgslsmith_f_op_f32(474f + -392f), _wgslsmith_f_op_f32(-1000f - -170f), -191f)), u_input.d);
    return false;
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> f32 {
    var var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, 0u, u_input.c, arg_1), vec4<u32>(0u, u_input.c, arg_1, 16118u)), reverseBits(vec4<u32>(74459u, u_input.c, 4294967295u, 54747u)), vec4<bool>(false, true, false, false)) >> (vec4<u32>(~arg_1, abs(1u), 44981u, arg_1) % vec4<u32>(32u)), vec4<u32>(reverseBits(~15321u), ~u_input.c, ~countOneBits(4294967295u), arg_1)), ~vec4<u32>(u_input.c, _wgslsmith_add_u32(1u, 45199u >> (u_input.c % 32u)), arg_1, u_input.c));
    var var_1 = Struct_2(~arg_1, !func_3(firstTrailingBit(max(vec2<u32>(u_input.c, u_input.c), vec2<u32>(arg_1, 4294967295u)))), !select(false, true, false), ~(~_wgslsmith_mod_vec3_i32(vec3<i32>(3213i, u_input.d, u_input.a), vec3<i32>(1i, 13411i, global0.x))) >> ((vec3<u32>(u_input.c, arg_1, arg_1) & vec3<u32>(arg_1, 58067u, _wgslsmith_mult_u32(arg_1, u_input.c))) % vec3<u32>(32u)));
    var var_2 = arg_0.a;
    var var_3 = firstTrailingBit(vec4<u32>(var_1.a & _wgslsmith_sub_u32(37593u, arg_1), ~1u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, 41208u, 0u), vec3<u32>(72579u, u_input.c, 0u)), ~u_input.c), 4294967295u) ^ _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, var_1.a, var_1.a, 4294967295u), vec4<u32>(var_1.a, 38833u, var_1.a, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_1, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 4661u, 0u))));
    return arg_0.b;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global1 = 2775u;
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -3357f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))), arg_0.b.x), vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(arg_0.b.x, arg_0.b.x), 4294967295u))), _wgslsmith_f_op_f32(-arg_0.b.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(arg_0.b.xxw));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-750f, arg_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-236f * -293f)), arg_0.b.x)));
    var var_2 = 1u;
    return arg_0;
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1, arg_3: vec4<bool>) -> vec3<f32> {
    global1 = ~arg_1;
    var var_0 = func_1(Struct_1(-1i, _wgslsmith_f_op_vec4_f32(-func_1(arg_2).b), global0.x));
    var var_1 = func_1(arg_2).b.x;
    var var_2 = arg_1;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -264f);
    return arg_2.b.xyy;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: bool, arg_3: i32) -> Struct_3 {
    var var_0 = select(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-458f * arg_0.x) - _wgslsmith_f_op_f32(2378f * arg_0.x)) > _wgslsmith_f_op_f32(-arg_0.x), select(!any(vec3<bool>(true, arg_2, true)), arg_2, true), arg_2, any(select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2), vec2<bool>(true, true))) || false), select(vec4<bool>(false, true, arg_2, any(vec4<bool>(arg_2, arg_2, true, true))), vec4<bool>(all(select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, false), vec2<bool>(false, arg_2))), !(!arg_2), false, false), !(!vec4<bool>(false, true, arg_2, arg_2))), select(!(!select(vec4<bool>(false, arg_2, false, arg_2), vec4<bool>(true, true, false, arg_2), vec4<bool>(arg_2, arg_2, false, arg_2))), vec4<bool>(func_3(_wgslsmith_sub_vec2_u32(arg_1, arg_1)), false, func_3(abs(arg_1)), !arg_2), false));
    global1 = 1u;
    var var_1 = var_0.xzy;
    global0 = max(reverseBits(select(countOneBits(vec2<i32>(0i, -18950i)), -vec2<i32>(1852i, global0.x), arg_3 > arg_3)), _wgslsmith_sub_vec2_i32(~vec2<i32>(39279i, -2147483647i), ~vec2<i32>(global0.x, arg_3)) | _wgslsmith_mod_vec2_i32(vec2<i32>(arg_3, arg_3), vec2<i32>(1i, 1i))) >> (min(vec2<u32>(6556u, ~arg_1.x), select(vec2<u32>(_wgslsmith_div_u32(arg_1.x, 0u), 1u), ~firstTrailingBit(vec2<u32>(arg_1.x, 0u)), vec2<bool>(!var_1.x, any(vec4<bool>(false, false, var_0.x, true))))) % vec2<u32>(32u));
    global1 = u_input.c >> (~0u % 32u);
    return Struct_3(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x))), func_1(Struct_1(arg_3, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 728f)), arg_3)).b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -715f;
    var var_1 = func_5(_wgslsmith_f_op_vec3_f32(func_4(select(vec4<i32>(~1i, max(global0.x, 1i), 2147483647i, -54477i), vec4<i32>(firstLeadingBit(31510i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a, 1i), vec3<i32>(-1i, 0i, -2147483647i)), select(27535i, global0.x, true), 6628i), any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))), 118860u, func_1(Struct_1(67895i, vec4<f32>(var_0, -539f, -908f, var_0), -4803i)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), true)))), vec2<u32>(1u, abs(~u_input.c) ^ u_input.c), false, select(global0.x, _wgslsmith_mod_i32(3068i, global0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(-385f + -1219f))) >= -2436f));
    global0 = vec2<i32>(global0.x, ~global0.x);
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(26642u, 16104u, u_input.c, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.c, 0u), ~vec4<u32>(u_input.c, u_input.c, 18765u, u_input.c))), u_input.c >> ((u_input.c >> (0u % 32u)) % 32u), (_wgslsmith_sub_u32(u_input.c, 1u) << (1u % 32u)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 32027u), abs(vec2<u32>(0u, u_input.c))) % 32u)), _wgslsmith_add_u32(_wgslsmith_sub_u32((u_input.c << (33226u % 32u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 32407u, 58404u, 25709u), vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c)), (0u | u_input.c) ^ ~u_input.c), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(0u, u_input.c, 4294967295u) | vec3<u32>(19921u, u_input.c, 0u))));
    global1 = u_input.c;
    var var_3 = Struct_1(~(-1i), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(func_1(Struct_1(u_input.b, vec4<f32>(1000f, var_0, var_0, var_0), 0i)).b.x, var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(324f * -1214f)), _wgslsmith_f_op_f32(1471f - var_0)))), 2147483647i);
    global0 = vec2<i32>(select(1i, -(var_3.a | global0.x), false), max(_wgslsmith_dot_vec2_i32(vec2<i32>(4569i, 0i), _wgslsmith_mult_vec2_i32(vec2<i32>(19511i, var_3.c), vec2<i32>(-32939i, var_3.a))), ~reverseBits(-1i))) | vec2<i32>(var_3.c, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, global0.x, 42817i, global0.x)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -8902i, 31934i, u_input.d), vec4<i32>(1i, 1i, 5689i, -65498i), vec4<i32>(-2912i, var_3.a, var_3.c, 1887i))));
    var var_4 = ~(-firstLeadingBit(abs(vec3<i32>(2147483647i, u_input.a, 11604i))) & vec3<i32>(u_input.b, -39314i, min(-u_input.a, global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, var_4.zz, firstTrailingBit(select(vec4<u32>(u_input.c, u_input.c, 0u, u_input.c), vec4<u32>(u_input.c, 29469u, u_input.c, 6292u), vec4<bool>(false, false, false, false)) & vec4<u32>(0u, u_input.c, u_input.c, u_input.c)) << ((_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.c, 4294967295u, 4294967295u) & vec4<u32>(u_input.c, u_input.c, u_input.c, 52527u), vec4<u32>(1u, u_input.c, u_input.c, 15139u)) & ((vec4<u32>(0u, 4294967295u, u_input.c, u_input.c) ^ vec4<u32>(27689u, u_input.c, u_input.c, 20772u)) >> (~vec4<u32>(0u, 4294967295u, u_input.c, 1u) % vec4<u32>(32u)))) % vec4<u32>(32u)), -(~vec3<i32>(-var_3.a, abs(-2147483647i), _wgslsmith_mult_i32(var_4.x, 1i))));
}

