struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(4294967295u, 1u, 50422u), vec3<u32>(69876u, 0u, 0u), vec3<u32>(12312u, 18719u, 31461u), vec3<u32>(5164u, 0u, 4294967295u), vec3<u32>(96636u, 0u, 4294967295u), vec3<u32>(63717u, 43092u, 4294967295u), vec3<u32>(4294967295u, 13833u, 1u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(79177u, 4294967295u, 1979u), vec3<u32>(1u, 1u, 23083u), vec3<u32>(25171u, 16758u, 1u), vec3<u32>(0u, 3073u, 4294967295u), vec3<u32>(0u, 35011u, 4294967295u), vec3<u32>(30116u, 43594u, 49739u), vec3<u32>(4294967295u, 0u, 88191u), vec3<u32>(27377u, 1u, 71092u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<i32> {
    global1 = array<vec3<u32>, 16>();
    global1 = array<vec3<u32>, 16>();
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-575f, _wgslsmith_f_op_f32(-456f - -459f)))))));
    var var_0 = Struct_2(Struct_1(-vec2<i32>(u_input.d.x, u_input.d.x) ^ min(select(vec2<i32>(1i, u_input.d.x), u_input.d, vec2<bool>(true, true)), _wgslsmith_clamp_vec2_i32(u_input.d, u_input.d, u_input.d)), !vec4<bool>(true, true, true, select(true, false, true)), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(select(-1436f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1885f * -1191f), -115f)), all(vec3<bool>(true, true, false))))), Struct_1(~(~vec2<i32>(u_input.d.x, u_input.d.x)) | -_wgslsmith_add_vec2_i32(u_input.d, vec2<i32>(2147483647i, u_input.d.x)), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), true)), _wgslsmith_clamp_u32(u_input.b, 42690u, u_input.c) >= ~u_input.b), vec2<bool>(true, 1u >= _wgslsmith_div_u32(9649u, u_input.c))));
    var_0 = Struct_2(Struct_1(u_input.d & var_0.c.a, !var_0.a.b, select(var_0.a.b.zz, var_0.a.c, select(select(vec2<bool>(var_0.a.b.x, true), vec2<bool>(false, var_0.a.c.x), var_0.a.c), var_0.a.b.zz, !vec2<bool>(var_0.a.c.x, var_0.a.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b)) * _wgslsmith_f_op_f32(abs(-973f))), var_0.a);
    return vec2<i32>(u_input.d.x, u_input.d.x);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> u32 {
    global1 = array<vec3<u32>, 16>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(540f)), -1048f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1637f) + 106f))));
    global0 = -606f;
    var var_1 = Struct_2(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(673f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1110f)) - -297f), Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), -u_input.d), func_3()), !(!vec4<bool>(true, true, arg_1.c.x, arg_3.b.x)), vec2<bool>(true, true)));
    global0 = _wgslsmith_f_op_f32(var_1.b + var_1.b);
    return 1u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> vec4<i32> {
    let var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, func_2(arg_0.a.x, arg_0, false, arg_1.a)), ~vec2<u32>(0u, u_input.c)) | countOneBits(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(3107u, 1u)))), vec2<u32>(64553u, 36139u), ~select(max(vec2<u32>(u_input.b, u_input.a), vec2<u32>(u_input.a, 4294967295u)) << (vec2<u32>(u_input.b, 11030u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(8266u, 1u), vec2<u32>(4294967295u, 46791u), reverseBits(vec2<u32>(u_input.c, u_input.c))), !select(vec2<bool>(arg_3.a.b.x, arg_3.a.c.x), vec2<bool>(arg_3.c.c.x, arg_1.a.c.x), vec2<bool>(arg_3.a.b.x, false))));
    let var_1 = !(!select(vec4<bool>(arg_1.a.c.x, all(vec3<bool>(arg_3.c.c.x, true, false)), arg_1.a.b.x, !arg_3.c.b.x), select(!vec4<bool>(arg_3.c.b.x, false, arg_2.a.c.x, arg_1.a.b.x), arg_3.c.b, arg_1.a.b), !arg_2.c.b));
    var var_2 = countOneBits(min(-_wgslsmith_div_vec3_i32(select(vec3<i32>(1i, 1i, arg_0.a.x), vec3<i32>(arg_0.a.x, -27719i, arg_3.a.a.x), vec3<bool>(arg_3.a.b.x, var_1.x, arg_3.a.b.x)), firstLeadingBit(vec3<i32>(46453i, -11528i, arg_0.a.x))), vec3<i32>(arg_0.a.x, -21778i, _wgslsmith_sub_i32(2147483647i, 2147483647i)) ^ (vec3<i32>(-1i) * -vec3<i32>(arg_2.a.a.x, -11777i, arg_1.c.a.x))));
    let var_3 = arg_2.a;
    global1 = array<vec3<u32>, 16>();
    return ~min(abs(select(abs(vec4<i32>(arg_2.c.a.x, arg_3.c.a.x, var_2.x, arg_3.c.a.x)), -vec4<i32>(-20805i, 39135i, -13993i, -1i), !arg_2.a.b.x)), -(~vec4<i32>(var_2.x, -1i, arg_2.c.a.x, arg_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_i32(-(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, -25874i, u_input.d.x), vec3<i32>(u_input.d.x, -1i, -7540i) ^ vec3<i32>(-59577i, u_input.d.x, u_input.d.x), reverseBits(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x)))), vec3<i32>(-2147483647i, u_input.d.x, ~_wgslsmith_div_i32(1i, u_input.d.x >> (u_input.c % 32u))));
    let var_1 = firstLeadingBit(_wgslsmith_mult_vec4_i32(-func_1(Struct_1(vec2<i32>(u_input.d.x, u_input.d.x), vec4<bool>(true, true, true, true), vec2<bool>(false, false)), Struct_2(Struct_1(u_input.d, vec4<bool>(true, true, true, true), vec2<bool>(true, false)), 987f, Struct_1(var_0.yx, vec4<bool>(true, true, false, false), vec2<bool>(true, true))), Struct_2(Struct_1(var_0.zx, vec4<bool>(true, true, false, true), vec2<bool>(false, false)), 1307f, Struct_1(vec2<i32>(-1i, -37856i), vec4<bool>(true, false, false, true), vec2<bool>(false, false))), Struct_2(Struct_1(u_input.d, vec4<bool>(false, true, true, false), vec2<bool>(false, true)), 701f, Struct_1(vec2<i32>(2147483647i, 48337i), vec4<bool>(false, false, false, true), vec2<bool>(true, true)))), ~(~vec4<i32>(-946i, 1i, u_input.d.x, 0i))) << (~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.b, 4294967295u, u_input.a))) % vec4<u32>(32u)));
    var var_2 = Struct_1(select(u_input.d, vec2<i32>(~(-38865i), 0i) | var_0.zz, !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true))), !vec4<bool>(true, true, all(vec4<bool>(true, false, true, true)), true), select(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), true), true));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-719f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -891f) * -503f))));
    var var_4 = vec3<bool>(var_2.c.x, var_2.b.x & (!(u_input.c == u_input.b) && false), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_1.wzz | var_1.yzx, abs(var_1.xzz), vec3<i32>(u_input.d.x, -2071i, 21569i)), vec3<i32>(_wgslsmith_mult_i32(67776i, 4037i), var_0.x, 1i)) == _wgslsmith_add_i32(9911i, max(-u_input.d.x, i32(-1i) * -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(firstLeadingBit(35502u), 1u, ~u_input.a, ~13342u) >> (_wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.a, u_input.c, u_input.b, u_input.b), vec4<u32>(4294967295u, 76716u, u_input.a, 905u), var_2.b) >> (abs(vec4<u32>(20794u, 6497u, 3348u, u_input.b)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.b, 4294967295u, u_input.b) & vec4<u32>(u_input.b, u_input.b, 4294967295u, 14309u)), vec4<u32>(~4294967295u, u_input.c, u_input.c, 4294967295u)) % vec4<u32>(32u)));
}

