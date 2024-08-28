struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(~u_input.a, ~(~vec3<u32>(4294967295u, _wgslsmith_add_u32(u_input.a.x, 1u), _wgslsmith_mult_u32(4294967295u, u_input.a.x))), 837f, vec2<i32>(1i, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-62319i, 45756i, 0i, -1i) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 37689u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -1i, 38004i, -42400i), vec4<i32>(55761i, -71306i, 1i, -2147483647i)), vec4<i32>(-1i, -13405i, -1414i, -50449i)))), Struct_1(firstLeadingBit(max(-2147483647i, abs(-18232i))), vec4<u32>(~(u_input.a.x ^ 4294967295u), 4294967295u, ~_wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.a.xy), 1u), vec4<u32>(~(~44322u), ~u_input.a.x, 4294967295u, ~u_input.a.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1502f - 696f) + var_0.c), var_0.c, 1f) * vec3<f32>(_wgslsmith_f_op_f32(341f + _wgslsmith_f_op_f32(round(var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), 1007f)));
    let var_2 = var_0;
    let var_3 = Struct_2(~countOneBits(firstLeadingBit(reverseBits(vec3<u32>(43967u, var_0.e.c.x, 90186u)))), ~u_input.a, _wgslsmith_f_op_f32(var_2.c - 539f), select(var_2.d, vec2<i32>(var_0.d.x, var_0.e.a), vec2<bool>(select(true, any(vec4<bool>(true, true, false, true)), var_2.c < 1405f), true)), var_0.e);
    let var_4 = Struct_2(~firstLeadingBit(var_2.a), u_input.a, _wgslsmith_f_op_f32(min(var_0.c, -126f)), -var_0.d, Struct_1(_wgslsmith_dot_vec4_i32(~vec4<i32>(5999i, var_3.d.x, var_2.d.x, var_3.e.a), ~max(vec4<i32>(var_2.e.a, -9501i, var_3.e.a, -1i), vec4<i32>(var_2.e.a, -22925i, var_0.d.x, 0i))), ~(~vec4<u32>(var_2.b.x, var_0.e.c.x, 4294967295u, var_2.b.x)), max(var_0.e.c, var_2.e.b)));
    return var_3;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1113f, -300f, false)), arg_2), arg_2, true)), _wgslsmith_f_op_f32(366f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1126f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-331f, 1032f, false)), _wgslsmith_f_op_f32(878f - -1000f))))));
    return Struct_1(-5614i, vec4<u32>(0u, ~3263u, u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(arg_0.a.x, arg_0.b.x), 7326u), max(~arg_1.b.zz, vec2<u32>(4294967295u, arg_1.a.x)))), vec4<u32>(~arg_1.e.b.x, ~_wgslsmith_div_u32(~arg_0.a.x, arg_0.a.x), 33899u, u_input.a.x));
}

fn func_1() -> Struct_1 {
    var var_0 = 335f > _wgslsmith_f_op_f32(select(-739f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-267f - -817f))), !(select(false, false, true) & all(vec2<bool>(false, true)))));
    var var_1 = Struct_2(vec3<u32>(_wgslsmith_sub_u32(firstLeadingBit(0u), u_input.a.x), ~4294967295u & min(~27113u, countOneBits(u_input.a.x)), 1u), firstLeadingBit(abs(~vec3<u32>(1u, u_input.a.x, u_input.a.x) ^ vec3<u32>(25037u, 76530u, 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2232f - 1000f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-426f * 710f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1105f, 1029f))), true))), vec2<i32>(2147483647i, _wgslsmith_add_i32(_wgslsmith_sub_i32(i32(-1i) * -45126i, 2147483647i), 34477i)), func_3(Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(76092u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) & _wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, vec3<u32>(u_input.a.x, 61126u, 4294967295u)), _wgslsmith_sub_vec3_u32(~u_input.a, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 28499u, 25794u), u_input.a)), -822f, max(countOneBits(vec2<i32>(21377i, 1i)), -vec2<i32>(17779i, 2147483647i)), Struct_1(~1i, vec4<u32>(0u, 9793u, 45797u, u_input.a.x) >> (vec4<u32>(4294967295u, 0u, 31270u, u_input.a.x) % vec4<u32>(32u)), max(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(1u, u_input.a.x, 23491u, 0u)))), func_2(), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1589f)), -1040f, false))));
    var var_2 = func_2();
    var_2 = Struct_2(vec3<u32>(12721u, min(~1u, u_input.a.x), firstTrailingBit(~var_2.b.x)), max(u_input.a, ~vec3<u32>(33791u >> (1u % 32u), u_input.a.x, var_2.b.x | var_1.b.x)), _wgslsmith_f_op_f32(var_2.c + var_1.c), vec2<i32>(var_1.e.a, 1i), var_2.e);
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c, var_1.c)), 712f, var_2.c))), vec3<f32>(var_2.c, var_1.c, var_2.c));
    return func_3(Struct_2(vec3<u32>(_wgslsmith_add_u32(54720u, var_1.a.x), ~(0u >> (u_input.a.x % 32u)), u_input.a.x), func_2().b, 1000f, -abs(vec2<i32>(var_1.e.a, -14448i)), var_1.e), Struct_2(vec3<u32>(~firstTrailingBit(0u), _wgslsmith_mod_u32(var_2.b.x, _wgslsmith_clamp_u32(5087u, u_input.a.x, 0u)), var_2.a.x), ~_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(var_2.e.b.x, var_1.e.c.x, u_input.a.x)), vec3<u32>(2863u, var_1.e.c.x, 28770u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1004f * var_1.c) * _wgslsmith_div_f32(943f, 2433f)), -1531f), var_1.d, func_3(func_2(), Struct_2(var_2.a >> (var_2.b % vec3<u32>(32u)), max(var_2.a, var_2.e.b.wyx), -1607f, var_2.d & var_2.d, func_3(Struct_2(vec3<u32>(u_input.a.x, var_1.b.x, u_input.a.x), vec3<u32>(var_2.b.x, u_input.a.x, 32340u), var_2.c, var_2.d, Struct_1(var_2.e.a, vec4<u32>(u_input.a.x, 1u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, var_1.b.x, 102742u))), Struct_2(vec3<u32>(11663u, var_1.a.x, var_2.a.x), vec3<u32>(u_input.a.x, 5207u, var_2.b.x), -1532f, var_2.d, var_1.e), var_2.c)), -490f)), 1496f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~firstTrailingBit(_wgslsmith_div_i32(58526i, 8503i)), ~vec4<u32>(u_input.a.x, u_input.a.x ^ 104187u, 4294967295u, firstLeadingBit(u_input.a.x)) ^ max(firstTrailingBit(~vec4<u32>(6516u, 1u, 28079u, 4294967295u)), min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 20121u, u_input.a.x, u_input.a.x)) | abs(vec4<u32>(1u, u_input.a.x, 4294967295u, 28286u))), vec4<u32>(_wgslsmith_div_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 12909u, 4294967295u, 21049u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), ~75968u), 1u), 45484u & max(min(0u, u_input.a.x), min(4294967295u, u_input.a.x)), firstTrailingBit(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x << (1u % 32u))), ~30872u));
    var_0 = func_1();
    let var_1 = Struct_1(var_0.a, _wgslsmith_add_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(10764u, u_input.a.x, 0u, var_0.b.x), var_0.c), (vec4<u32>(0u, 16183u, 12684u, 38150u) | var_0.c) & vec4<u32>(u_input.a.x, var_0.b.x, var_0.c.x, var_0.c.x)), _wgslsmith_div_vec4_u32(max(var_0.b, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 4294967295u), vec4<u32>(var_0.c.x, u_input.a.x, u_input.a.x, var_0.c.x))), ~(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)))), vec4<u32>(u_input.a.x, 4294967295u, 0u, ~19635u));
    let var_2 = false;
    let var_3 = Struct_2(u_input.a, var_1.c.wwz, _wgslsmith_f_op_f32(sign(1288f)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a, var_0.a), vec2<i32>(var_1.a, var_0.a), ~vec2<i32>(-11294i, var_0.a)) >> (var_1.b.zx % vec2<u32>(32u)), var_1);
    var var_4 = 56349u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(189f))))))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -100f), _wgslsmith_f_op_f32(-var_3.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1300f * var_3.c), 341f), var_3.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c + var_3.c))))), ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, var_3.e.b.x), select(vec3<u32>(69671u, var_1.b.x, var_0.c.x), vec3<u32>(var_3.e.c.x, u_input.a.x, 0u), vec3<bool>(true, var_2, var_2))), var_0.c.x), 241f);
}

