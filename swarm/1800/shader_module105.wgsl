struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(~firstLeadingBit(_wgslsmith_mult_u32(u_input.b.x, 44339u)), u_input.b.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-223f, 1446f, 341f, -435f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-190f, 910f, 1000f, -659f) * vec4<f32>(-223f, -1101f, 225f, -1106f)))), vec4<f32>(1f, 1f, 1f, 1f)));
    let var_1 = u_input.a & _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-2147483647i, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x)), abs(-u_input.a.x)), firstTrailingBit(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, vec2<i32>(u_input.a.x, u_input.a.x)), abs(u_input.a))));
    var var_2 = vec3<u32>(120390u, 28065u << (var_0.a % 32u), ~(max(min(var_0.a, var_0.a), 1u) | min(~u_input.b.x, 1u)));
    var_2 = vec3<u32>(_wgslsmith_clamp_u32(~(~(~1u)), ~4294967295u, var_0.a), _wgslsmith_dot_vec4_u32(select(vec4<u32>(~var_0.a, _wgslsmith_add_u32(0u, var_2.x), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 76292u, var_2.x), u_input.b)), ~abs(vec4<u32>(101370u, 74268u, 1u, var_2.x)), !all(vec3<bool>(true, true, false))), max(firstLeadingBit(~vec4<u32>(1u, var_0.a, 74526u, var_2.x)), ~select(vec4<u32>(4294967295u, var_0.b, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 0u, u_input.b.x, 0u), vec4<bool>(false, true, true, true)))), 4294967295u);
    let var_3 = Struct_1(select(u_input.b.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_0.b, 4294967295u, u_input.b.x)) >> (firstTrailingBit(u_input.b) % vec3<u32>(32u)), abs(firstTrailingBit(vec3<u32>(var_0.a, var_0.a, 20943u)))), true && (abs(u_input.b.x) > ~var_2.x)), var_2.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1434f, var_0.c.x))))), -219f, var_0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_0.c.x, var_0.c.x)))), -1678f)));
    return u_input.b.x | var_0.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    let var_1 = Struct_1(arg_1.x >> (arg_1.x % 32u), min(firstLeadingBit(arg_1.x), 4294967295u), vec4<f32>(-1149f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2232f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(-arg_3.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - _wgslsmith_f_op_f32(min(arg_3.c.x, -297f))), true)), arg_3.c.x));
    global0 = ~_wgslsmith_mod_u32(abs(5872u), arg_3.b);
    let var_2 = Struct_1(~func_3(), ~(0u & func_3()), arg_3.c);
    let var_3 = arg_0;
    return Struct_1(~1u, ~u_input.b.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.c.x, 1805f, -2251f, var_0.c.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-208f, arg_0.c.x, 651f, var_2.c.x), var_1.c)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(754f, 1000f, var_1.c.x, -1000f)))));
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(-2147483647i, u_input.a.x)), u_input.a) | -11821i, 1i);
    global0 = reverseBits(0u);
    global0 = ~1u;
    let var_1 = Struct_1(arg_0.a, 11321u, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(arg_0.c)))));
    var var_2 = Struct_1(min(~var_1.b, arg_0.b), 1u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.c.x, arg_0.c.x))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_0.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -324f)), var_1.c.x, _wgslsmith_f_op_f32(1366f - -1616f)));
    return 4294967295u;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_1(1u ^ func_4(func_2(Struct_1(25271u, 0u, vec4<f32>(1057f, -1217f, -1349f, -1339f)), vec4<u32>(u_input.b.x, 23392u, u_input.b.x, 0u) >> (vec4<u32>(42863u, 4294967295u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), arg_0, Struct_1(4294967295u, 10571u, vec4<f32>(606f, 1190f, -773f, 923f)))), firstLeadingBit((_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) ^ max(u_input.b.x, u_input.b.x)) >> ((1u ^ u_input.b.x) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(965f, 244f, -801f, 385f)))))));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1744f + _wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(f32(-1f) * -308f))) - var_0.c.x)));
    var_0 = func_2(func_2(func_2(func_2(Struct_1(31501u, var_0.b, var_0.c), abs(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 0u)), var_1, Struct_1(20071u, u_input.b.x, vec4<f32>(-127f, var_0.c.x, var_0.c.x, -919f))), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.b, u_input.b.x, 1422u, 1u), select(vec4<u32>(0u, 0u, 23968u, u_input.b.x), vec4<u32>(5451u, var_0.b, 70097u, 14240u), arg_0)), false, func_2(func_2(Struct_1(70740u, var_0.b, vec4<f32>(-494f, var_0.c.x, var_0.c.x, var_0.c.x)), vec4<u32>(u_input.b.x, 35542u, var_0.a, 10373u), arg_0, Struct_1(1u, var_0.b, vec4<f32>(-622f, 685f, var_0.c.x, 246f))), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x), all(vec2<bool>(arg_0, var_1)), func_2(Struct_1(8498u, 34887u, var_0.c), vec4<u32>(var_0.b, var_0.a, 3340u, 0u), var_1, Struct_1(var_0.b, u_input.b.x, vec4<f32>(545f, var_0.c.x, var_2, -1482f))))), select(vec4<u32>(_wgslsmith_div_u32(1u, 33723u), ~67534u, u_input.b.x, 19086u << (u_input.b.x % 32u)), ~reverseBits(vec4<u32>(var_0.b, var_0.b, u_input.b.x, u_input.b.x)), vec4<bool>(true, u_input.a.x < u_input.a.x, all(vec2<bool>(false, var_1)), true)), !arg_0, Struct_1(~u_input.b.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 11886u, var_0.a, 0u), vec4<u32>(var_0.a, u_input.b.x, 0u, u_input.b.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_0.c))))), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, 0u, var_0.a, u_input.b.x), ~vec4<u32>(u_input.b.x, 1u, 34994u, u_input.b.x), ~vec4<u32>(21523u, var_0.b, 35332u, 30993u))) >> (vec4<u32>(1u, _wgslsmith_div_u32(var_0.b, ~84854u), _wgslsmith_sub_u32(29996u >> (0u % 32u), u_input.b.x ^ var_0.b), var_0.b) % vec4<u32>(32u)), (abs(firstTrailingBit(4294967295u)) < 472u) != !(!(!var_1)), Struct_1(~max(abs(var_0.a), var_0.a), 1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c * var_0.c) + var_0.c)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(exp2(var_2)), _wgslsmith_f_op_f32(f32(-1f) * -124f), 868f, _wgslsmith_f_op_f32(max(172f, _wgslsmith_f_op_f32(trunc(-815f)))));
    return func_2(Struct_1(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, func_4(func_2(Struct_1(var_0.a, 68746u, var_0.c), vec4<u32>(4294967295u, 27556u, u_input.b.x, u_input.b.x), arg_0, Struct_1(var_0.b, 11739u, var_0.c)))), u_input.b.x, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -996f), _wgslsmith_f_op_f32(2088f * var_0.c.x), var_0.c.x, _wgslsmith_f_op_f32(var_3.x - var_3.x))), vec4<u32>(var_0.a, u_input.b.x, max(_wgslsmith_add_u32(~34930u, u_input.b.x), ~var_0.a), u_input.b.x), false, func_2(Struct_1(~_wgslsmith_mod_u32(0u, 4294967295u), 6764u, vec4<f32>(173f, _wgslsmith_f_op_f32(trunc(464f)), 1485f, var_2)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(44310u, u_input.b.x, 1u, 17798u), reverseBits(vec4<u32>(37211u, u_input.b.x, 92791u, 5643u))), false, Struct_1(~(88518u << (0u % 32u)), 0u, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-660f, var_0.c.x, -909f, var_2)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 0u;
    global0 = u_input.b.x;
    let var_0 = false;
    let var_1 = func_1(true);
    var var_2 = _wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_mod_vec2_i32(reverseBits(reverseBits(-u_input.a)), ~firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, -9157i), vec2<i32>(-13881i, -6125i), u_input.a))));
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(636f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1113f);
}

