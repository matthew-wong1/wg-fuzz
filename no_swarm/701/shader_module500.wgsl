struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_4,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_3 = Struct_3(vec2<i32>(-1i, 1i), Struct_2(false, 1798f, 0i), Struct_1(-9336i, 713f, -276f), vec2<bool>(true, true), Struct_1(17087i, 782f, -1000f));

var<private> global2: array<Struct_5, 10>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = vec4<bool>(all(select(select(!vec4<bool>(false, global1.d.x, true, global1.b.a), vec4<bool>(false, true, false, false), false), vec4<bool>(global1.d.x, true, u_input.d <= 6136u, !global1.b.a), true)), !all(select(select(vec2<bool>(false, global1.b.a), vec2<bool>(global1.b.a, global1.b.a), true), vec2<bool>(true, true), all(vec3<bool>(false, false, false)))), !global1.d.x, any(vec2<bool>(true, true)));
    global1 = Struct_3(_wgslsmith_div_vec2_i32(u_input.c, _wgslsmith_mult_vec2_i32(vec2<i32>(global0.x ^ global1.e.a, u_input.e), vec2<i32>(firstLeadingBit(-1i), 0i))), global1.b, Struct_1(26117i, global1.b.b, 143f), global1.d, global1.c);
    var var_1 = global1.b.b;
    let var_2 = -1026f;
    var var_3 = Struct_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2)) - _wgslsmith_f_op_f32(ceil(-1130f))), ~(-(~u_input.e)) >> (1u % 32u));
    return -1518f;
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    let var_0 = Struct_4(global1.e.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(func_3())))));
    var var_1 = 779f;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-544f * 561f) - global1.c.c) + var_0.a) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-447f, -690f)) + _wgslsmith_f_op_f32(var_0.b * 1972f)))), _wgslsmith_f_op_f32(f32(-1f) * -1159f), 2147483647i);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.c * _wgslsmith_f_op_f32(-global1.e.c)))), arg_0.x);
    var var_4 = Struct_5(Struct_3(-vec2<i32>(global1.b.c, u_input.b), var_2, global1.c, vec2<bool>(true, all(vec3<bool>(global1.b.a, true, true))), global1.e), Struct_3(reverseBits(vec2<i32>(~(-1i), abs(u_input.c.x))), Struct_2(_wgslsmith_f_op_f32(func_3()) < _wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b)) - var_3.b), firstTrailingBit(-42371i)), global1.c, !select(vec2<bool>(true, true), vec2<bool>(true, false), var_2.a), Struct_1(global0.x, _wgslsmith_f_op_f32(min(-742f, -1324f)), var_2.b)), Struct_4(-337f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) + _wgslsmith_div_f32(-423f, -1914f))), -(vec3<i32>(77767i, -1i, -2147483647i) | firstTrailingBit(abs(vec3<i32>(global0.x, u_input.e, -11996i)))));
    return -710f;
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: f32) -> f32 {
    let var_0 = Struct_2(any(select(select(vec3<bool>(global1.d.x, global1.b.a, true), select(vec3<bool>(true, global1.d.x, global1.b.a), vec3<bool>(global1.d.x, global1.d.x, false), vec3<bool>(false, false, global1.d.x)), global1.d.x), select(vec3<bool>(false, false, global1.d.x), vec3<bool>(global1.b.a, false, global1.d.x), !vec3<bool>(global1.b.a, true, true)), vec3<bool>(global1.d.x, global1.b.a || global1.b.a, all(vec3<bool>(global1.b.a, false, global1.d.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2, arg_2, -162f, arg_1)))))))), _wgslsmith_mod_i32(-(31753i << (arg_0.x % 32u)), i32(-1i) * -_wgslsmith_sub_i32(u_input.c.x, 1i)));
    global2 = array<Struct_5, 10>();
    let var_1 = abs((~u_input.a >> ((arg_0.x >> (1u % 32u)) % 32u)) >> (~0u % 32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.b, global1.b.b) * vec2<f32>(-623f, 1000f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1490f, var_0.b) * vec2<f32>(arg_1, var_0.b))), _wgslsmith_div_vec2_f32(vec2<f32>(1812f, global1.b.b), _wgslsmith_div_vec2_f32(vec2<f32>(-1750f, -773f), vec2<f32>(arg_2, arg_2))), all(global1.d))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1148f, -762f)))) * vec2<f32>(_wgslsmith_f_op_f32(global1.c.c - _wgslsmith_f_op_f32(-741f * var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_0.b)))))));
    global2 = array<Struct_5, 10>();
    return -465f;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>) -> vec3<bool> {
    let var_0 = arg_1.x;
    var var_1 = Struct_3(vec2<i32>(abs(_wgslsmith_div_i32(firstLeadingBit(global0.x), arg_0.a)), _wgslsmith_div_i32(abs(-2997i), _wgslsmith_div_i32(1i, u_input.c.x)) << (33731u % 32u)), global1.b, global1.c, arg_1, global1.c);
    var var_2 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.c + global1.c.c))), -392f)), var_1.b.b);
    var_2 = Struct_1(-1i, arg_0.c, _wgslsmith_f_op_f32(select(arg_0.c, _wgslsmith_f_op_f32(-global1.c.b), false)));
    var_1 = Struct_3(_wgslsmith_mod_vec2_i32(global0.xz, firstLeadingBit(var_1.a)), Struct_2(arg_1.x | !any(vec3<bool>(true, global1.d.x, arg_1.x)), -557f, abs(_wgslsmith_dot_vec2_i32(u_input.c, _wgslsmith_add_vec2_i32(var_1.a, u_input.c)))), var_1.e, !(!vec2<bool>(global1.b.a, true)), arg_0);
    return select(select(!vec3<bool>(global1.d.x & var_0, !global1.b.a, !var_0), !select(vec3<bool>(true, true, true), vec3<bool>(true, arg_1.x, true), u_input.d > u_input.a), true), vec3<bool>(global1.b.a, !var_1.d.x, !var_0), all(select(select(vec4<bool>(var_1.d.x, var_1.d.x, true, true), select(vec4<bool>(var_1.d.x, var_1.b.a, true, arg_1.x), vec4<bool>(false, false, false, arg_1.x), false), true), select(!vec4<bool>(true, true, var_1.d.x, var_0), select(vec4<bool>(arg_1.x, true, var_1.b.a, true), vec4<bool>(var_1.b.a, global1.d.x, true, global1.d.x), vec4<bool>(true, true, false, false)), vec4<bool>(global1.b.a, true, false, false)), all(var_1.d))));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: u32) -> vec2<i32> {
    let var_0 = func_5(Struct_1(reverseBits(global0.x), _wgslsmith_f_op_f32(func_4(countOneBits(vec2<u32>(30996u, arg_0)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(global1.c.b + global1.e.c)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(438f, 1890f, global1.c.b, global1.b.b)))))), 1384f), select(select(select(select(global1.d, vec2<bool>(global1.b.a, true), global1.b.a), !global1.d, !global1.d), select(global1.d, !global1.d, vec2<bool>(true, true)), select(vec2<bool>(global1.b.a, true), select(vec2<bool>(true, false), global1.d, false), global1.b.a)), vec2<bool>(false, true), true));
    let var_1 = (~(reverseBits(vec2<u32>(arg_2, 4294967295u)) << (~vec2<u32>(arg_2, 99186u) % vec2<u32>(32u))) << (vec2<u32>(16082u, ~(~0u)) % vec2<u32>(32u))) << (((_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2, 10542u), vec2<u32>(arg_2, 0u), vec2<u32>(u_input.d, 4294967295u)), min(vec2<u32>(arg_0, 1u), vec2<u32>(1u, 4294967295u))) | (vec2<u32>(15482u, 1u) ^ vec2<u32>(0u, arg_0))) ^ select(firstLeadingBit(vec2<u32>(arg_2, arg_2)) & vec2<u32>(15187u, u_input.a), abs(reverseBits(vec2<u32>(arg_0, 34349u))), all(vec4<bool>(true, true, false, global1.d.x)))) % vec2<u32>(32u));
    global2 = array<Struct_5, 10>();
    let var_2 = global1.b;
    var var_3 = 1u;
    return vec2<i32>(i32(-1i) * -abs(-var_2.c), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(abs(-u_input.c), _wgslsmith_mult_vec2_i32(-u_input.c & u_input.c, func_1(u_input.a & 4294967295u, -2147483647i, ~111108u & u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global1.c.c * _wgslsmith_f_op_f32(f32(-1f) * -137f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(global1.e.c - global1.e.b), _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-739f, global1.b.b), vec2<f32>(global1.b.b, global1.c.b)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.e.b, global1.c.b)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(481f, global1.e.b)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.c.b, 1490f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.b, 1465f))))), _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), ~vec2<u32>(4294967295u, u_input.d)), u_input.d | u_input.a), ~max(abs(1u), firstTrailingBit(u_input.a))), -1i, _wgslsmith_div_vec2_i32(u_input.c, -u_input.c));
}

