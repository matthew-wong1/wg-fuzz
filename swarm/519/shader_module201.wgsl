struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<u32> {
    global1 = _wgslsmith_dot_vec4_i32(select(abs(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b, 39396i, 25156i, arg_0.b), arg_0.c)), min(abs(vec4<i32>(u_input.b, u_input.b, u_input.b, arg_0.b)), arg_0.c ^ arg_0.c), (-51161i << (arg_0.d.x % 32u)) <= (-2327i >> (1u % 32u))), arg_0.c) ^ -2147483647i;
    global1 = -u_input.b;
    let var_0 = _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(1f))))))));
    var var_1 = Struct_4(arg_0.c.yy, Struct_2(arg_0.d.x, arg_0, Struct_1(!arg_0.a, select(arg_0.e.x, u_input.b >> (u_input.a % 32u), arg_0.a || false), arg_0.c, vec3<u32>(4294967295u, select(1u, arg_0.d.x, false), _wgslsmith_sub_u32(73076u, arg_0.d.x)), vec3<i32>(u_input.b, firstLeadingBit(arg_0.b), -9067i)), ~abs(arg_0.e & vec3<i32>(u_input.b, 1i, -1i))), 19744i, Struct_3(Struct_2(reverseBits(arg_0.d.x), Struct_1(true, 2147483647i, -vec4<i32>(-38351i, u_input.b, 2147483647i, 2147483647i), ~arg_0.d, _wgslsmith_mod_vec3_i32(arg_0.c.yzx, arg_0.e)), arg_0, select(arg_0.e, arg_0.e, vec3<bool>(arg_1, true, true)) ^ (vec3<i32>(15652i, arg_0.c.x, u_input.b) >> (vec3<u32>(103182u, u_input.a, u_input.a) % vec3<u32>(32u))))));
    global0 = ~_wgslsmith_mod_u32(28000u, ~(~(13704u ^ arg_0.d.x)));
    return reverseBits(var_1.b.b.d.xy);
}

fn func_2() -> Struct_1 {
    global0 = u_input.a;
    var var_0 = _wgslsmith_div_u32(u_input.a, _wgslsmith_mod_u32(~(u_input.a >> (u_input.a % 32u)), ~27768u));
    let var_1 = ~func_3(Struct_1(all(vec4<bool>(false, true, false, true)), u_input.b, vec4<i32>(u_input.b, -5759i, u_input.b, u_input.b), ~vec3<u32>(u_input.a, 28379u, u_input.a), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<i32>(u_input.b, u_input.b, -14475i))), all(vec2<bool>(false, false))) | ~vec2<u32>(~countOneBits(52992u), u_input.a);
    var var_2 = u_input.a << (~max(abs(22980u), u_input.a) % 32u);
    var var_3 = _wgslsmith_div_i32(reverseBits(select(-u_input.b & u_input.b, min(reverseBits(u_input.b), ~u_input.b), false)), 2147483647i);
    return Struct_1(true || any(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)), _wgslsmith_add_i32(~u_input.b, -(~(-1i))), countOneBits(-((vec4<i32>(-32417i, -15044i, 23899i, u_input.b) >> (vec4<u32>(var_1.x, u_input.a, 4294967295u, u_input.a) % vec4<u32>(32u))) << (vec4<u32>(11289u, 4294967295u, 0u, 4294967295u) % vec4<u32>(32u)))), ~abs(vec3<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), 0u, reverseBits(var_1.x))), reverseBits(firstLeadingBit(~(-vec3<i32>(u_input.b, 32727i, -2147483647i)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<f32>) -> vec2<f32> {
    let var_0 = func_2();
    var var_1 = var_0;
    let var_2 = Struct_1(true, func_2().b, vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b, _wgslsmith_dot_vec3_i32(var_0.c.wxy, var_1.c.yzy)), firstLeadingBit(-u_input.b)), -_wgslsmith_mod_i32(var_0.e.x, ~31669i), -125i, ~var_1.b), var_0.d, vec3<i32>(-1i, 5494i, i32(-1i) * -1i));
    var var_3 = ~abs(max(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, 2123u, var_2.d.x), max(vec3<u32>(1u, var_0.d.x, var_2.d.x), var_1.d)), ~vec3<u32>(54442u, 0u, 1u)));
    var var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -197f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-723f * arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-286f, arg_2.x)), arg_2.x)))));
    return vec2<f32>(577f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.x)))) + var_4.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(any(vec4<bool>(false, false, true, false)), false), true, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-588f, -1313f, 325f))))))));
    var var_1 = Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 0u), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(9788u, 4294967295u, 18541u), vec3<u32>(u_input.a, u_input.a, 51596u)), vec3<u32>(u_input.a, u_input.a, 21331u) << (vec3<u32>(1u, 6726u, u_input.a) % vec3<u32>(32u)), reverseBits(vec3<u32>(75390u, u_input.a, 0u))))), Struct_1(true, -((i32(-1i) * -2147483647i) & u_input.b), vec4<i32>(1i ^ (u_input.b ^ u_input.b), u_input.b, _wgslsmith_add_i32(~179i, u_input.b), _wgslsmith_mult_i32(u_input.b, -u_input.b)), ~(~(~vec3<u32>(47278u, 4032u, u_input.a))), vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, u_input.b, 1i, -33255i)), ~vec4<i32>(u_input.b, -57822i, 6800i, u_input.b)), ~(-27661i), 1i)), func_2(), -firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 2147483647i, 23406i), vec3<i32>(u_input.b, -25451i, u_input.b)) & (vec3<i32>(u_input.b, -2147483647i, 35529i) & vec3<i32>(u_input.b, -2147483647i, -5857i))));
    var var_2 = min(vec2<i32>(_wgslsmith_dot_vec4_i32(-countOneBits(var_1.c.c), ~(-var_1.c.c)), _wgslsmith_mult_i32(-u_input.b, _wgslsmith_mult_i32(var_1.d.x, -2147483647i)) | ~firstLeadingBit(u_input.b)), countOneBits(vec2<i32>(-_wgslsmith_dot_vec4_i32(var_1.b.c, var_1.b.c), u_input.b)));
    var_2 = select(~vec2<i32>(max(_wgslsmith_div_i32(var_1.c.e.x, 19456i), -2147483647i), min(countOneBits(var_1.d.x), reverseBits(-2147483647i))), ((_wgslsmith_mult_vec2_i32(vec2<i32>(3961i, var_1.c.c.x), var_1.d.xy) ^ firstLeadingBit(vec2<i32>(33937i, var_1.b.e.x))) | ((vec2<i32>(u_input.b, var_1.d.x) | var_1.d.xy) ^ vec2<i32>(var_1.c.c.x, u_input.b))) >> ((~func_2().d.yy & vec2<u32>(~u_input.a, _wgslsmith_add_u32(16784u, 36333u))) % vec2<u32>(32u)), !select(!vec2<bool>(var_1.c.a, var_1.c.a), select(select(vec2<bool>(var_1.c.a, var_1.c.a), vec2<bool>(var_1.b.a, var_1.b.a), vec2<bool>(var_1.c.a, var_1.b.a)), select(vec2<bool>(var_1.b.a, var_1.c.a), vec2<bool>(true, false), var_1.b.a), !vec2<bool>(true, var_1.b.a)), !(var_0.x < var_0.x)));
    global0 = var_1.a;
    var var_3 = var_1.b.d;
    var var_4 = var_0;
    global1 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(109f, var_4.x, var_0.x), vec3<f32>(516f, var_4.x, var_4.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, var_0.x, 503f) + vec3<f32>(var_0.x, var_0.x, var_4.x))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(182f, -244f, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -189f, var_4.x)))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x + 1332f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_4.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_4.x + 699f))), 187f))), func_2().d);
}

