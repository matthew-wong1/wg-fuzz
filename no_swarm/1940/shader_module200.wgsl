struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = abs(_wgslsmith_sub_i32(-_wgslsmith_clamp_i32(min(1i, 27422i), _wgslsmith_add_i32(1i, 43852i), 37518i), -(~0i) | (firstTrailingBit(-2147483647i) | _wgslsmith_mult_i32(-16350i, 1i))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -114f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -626f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(586f * 868f)))));
    let var_1 = _wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(max(~vec3<u32>(u_input.a, 0u, 36278u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 22022u, u_input.a))), vec3<u32>(u_input.a, abs(u_input.a), ~u_input.a)), firstLeadingBit(~(~_wgslsmith_mult_u32(1u, 9049u))), (_wgslsmith_div_u32(u_input.a, ~1u) << (22941u % 32u)) >> (select(57217u, 212u, all(vec3<bool>(true, false, true))) % 32u));
    var_0 = select(-_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-24608i, 2147483647i, 1i), vec3<i32>(1i, -1i, -16805i)), abs(-5940i)), countOneBits(vec2<i32>(17266i, 2147483647i))), 1i, true);
    global0 = 1f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-303f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-410f - -469f))))) - _wgslsmith_f_op_f32(f32(-1f) * -2083f));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(!vec3<bool>(any(vec3<bool>(true, false, false)) || all(vec3<bool>(true, true, false)), true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(231f, _wgslsmith_f_op_f32(func_3())) + vec2<f32>(846f, 1000f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1261f, -381f, -196f, 391f) - vec4<f32>(649f, 2468f, -2087f, 593f)))) * vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1315f, 481f, 1000f)) - vec4<f32>(_wgslsmith_f_op_f32(1229f * -1000f), -1737f, -2315f, -588f))), _wgslsmith_div_vec2_u32(vec2<u32>(firstLeadingBit(~4294967295u), countOneBits(~9730u)), vec2<u32>(4294967295u, ~u_input.a)), -2147483647i);
    let var_1 = _wgslsmith_sub_i32(var_0.e << (var_0.d.x % 32u), -64810i) & ~countOneBits(2147483647i);
    var var_2 = var_0.a.x;
    let var_3 = 19192u;
    var_2 = any(!var_0.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-726f, var_0.c.x)) + _wgslsmith_f_op_f32(step(-534f, var_0.c.x)));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> Struct_3 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2()))), -517f);
    var var_1 = Struct_3(arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -791f, var_0.x)))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(558f, _wgslsmith_f_op_f32(floor(-1333f)), _wgslsmith_f_op_f32(var_0.x * -479f)), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x), var_0.x)))), arg_1.b, ~u_input.a, Struct_1(vec3<bool>(!any(vec4<bool>(true, true, false, false)), true, false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1525f, var_0.x), _wgslsmith_f_op_vec2_f32(select(var_0, vec2<f32>(769f, 404f), vec2<bool>(true, true))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(796f, var_0.x, var_0.x, -801f))))), ~(~vec2<u32>(25422u, arg_0)), _wgslsmith_sub_i32(arg_1.a, ~_wgslsmith_mod_i32(-63959i, 2147483647i))));
    var var_2 = select(select(var_1.e.a.x, var_1.e.a.x, !((var_1.e.a.x | var_1.e.a.x) == (var_1.a.a < -2147483647i))), any(select(!select(vec2<bool>(true, true), vec2<bool>(var_1.e.a.x, var_1.e.a.x), vec2<bool>(false, var_1.e.a.x)), var_1.e.a.zx, u_input.a >= 1u)), true);
    var var_3 = Struct_3(arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(func_2())) * _wgslsmith_f_op_vec3_f32(-var_1.b))), ~_wgslsmith_mult_u32(arg_1.b, ~25704u) | countOneBits(1u), ~arg_1.b, var_1.e);
    var var_4 = _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(_wgslsmith_sub_u32(var_1.a.b, var_1.a.b), arg_1.b, 20128u, ~var_1.c), vec4<u32>(~(~6040u), var_1.e.d.x, var_3.a.b, _wgslsmith_mult_u32(select(25359u, 1u, false), ~44990u))), vec4<u32>(arg_0 >> (_wgslsmith_add_u32(arg_0, arg_1.b) % 32u), ~arg_0, 1u, ~var_1.c) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(var_1.d, u_input.a), 10265u, var_3.c, _wgslsmith_add_u32(u_input.a, 8896u)), select(select(vec4<u32>(14474u, 4294967295u, var_1.a.b, arg_0), vec4<u32>(var_1.d, u_input.a, 4294967295u, arg_0), vec4<bool>(var_1.e.a.x, var_1.e.a.x, var_1.e.a.x, false)), vec4<u32>(25390u, var_3.d, 18680u, var_1.a.b), false)) % vec4<u32>(32u)));
    return Struct_3(Struct_2(var_3.a.a, 5210u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, var_3.e.c.x, var_0.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(398f, var_1.b.x, 980f)))))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(324f, 212f, _wgslsmith_f_op_f32(trunc(var_3.b.x)))))), 29250u, 1u, Struct_1(!select(!vec3<bool>(true, var_3.e.a.x, var_3.e.a.x), var_3.e.a, all(vec3<bool>(var_1.e.a.x, var_3.e.a.x, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -359f)))), var_3.e.c, var_3.e.d, 2147483647i));
}

fn func_4(arg_0: Struct_3) -> u32 {
    global0 = _wgslsmith_f_op_f32(func_2());
    global0 = _wgslsmith_f_op_f32(func_2());
    var var_0 = arg_0;
    var var_1 = var_0.e;
    let var_2 = func_1(15720u, Struct_2(~select(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_1.e), vec2<i32>(var_1.e, 1i)), false), ~u_input.a)).a;
    return 21221u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1000f;
    let var_0 = ~u_input.a;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(107f)) - 1000f))) < _wgslsmith_f_op_f32(floor(1580f));
    let var_2 = Struct_2(~countOneBits(-1i), func_4(func_1(min(abs(6066u), var_0), Struct_2(~(-1i), var_0))));
    let var_3 = func_1(~56203u, Struct_2(-_wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, -7589i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_2.a, 0i), vec3<i32>(-6603i, var_2.a, -37635i)), ~var_2.a), ~var_2.b)).e;
    let var_4 = _wgslsmith_sub_i32(var_3.e, -(~var_3.e));
    let var_5 = var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(-var_2.a >> (~var_3.d.x % 32u)), select(max(~vec4<u32>(var_0, 4294967295u, var_2.b, var_0), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_2.b, 4294967295u, 8825u), vec4<u32>(4294967295u, 1u, 18543u, 9284u)), vec4<u32>(var_2.b, var_0, var_3.d.x, var_2.b))), _wgslsmith_sub_vec4_u32(countOneBits(countOneBits(vec4<u32>(var_2.b, var_2.b, 4294967295u, 15527u))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, var_3.d.x, 4294967295u), vec4<u32>(u_input.a, var_2.b, 57893u, var_2.b)), ~vec4<u32>(u_input.a, u_input.a, var_0, 2244u))), !((-291f > var_3.b.x) || true)), vec2<f32>(-470f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.x))), -1681i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.c) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.c + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.x, 1178f, -2122f, var_3.c.x))) - vec4<f32>(var_3.c.x, 1f, _wgslsmith_f_op_f32(var_3.b.x - 1567f), _wgslsmith_div_f32(var_3.c.x, var_3.c.x)))));
}

