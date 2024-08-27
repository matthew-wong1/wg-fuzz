struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: u32,
    e: f32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: f32,
    e: f32,
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_5) -> vec4<bool> {
    let var_0 = vec2<i32>(-47244i, arg_2.a);
    let var_1 = Struct_3(arg_0.x, !select(!(!vec4<bool>(true, arg_1.x, false, false)), !(!vec4<bool>(true, arg_1.x, true, true)), true), Struct_1(!select(vec4<bool>(false, arg_1.x, true, true), vec4<bool>(false, arg_1.x, true, true), any(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x))), !arg_1, ~(~(~vec3<u32>(0u, u_input.a, 3520u))), _wgslsmith_div_vec2_u32(firstTrailingBit(~vec2<u32>(u_input.b, u_input.a)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(27296u, 27480u), vec2<u32>(u_input.b, u_input.b)))), Struct_1(vec4<bool>(true, true & (true && arg_1.x), false, all(arg_1)), arg_1, ~vec3<u32>(u_input.a, u_input.b, abs(u_input.a)), vec2<u32>(min(abs(u_input.b), 4294967295u), 4294967295u)), vec4<u32>(17365u, countOneBits(u_input.a), ~u_input.b, ~0u));
    var var_2 = Struct_2(Struct_1(vec4<bool>(true, false, any(vec2<bool>(true, true)), any(var_1.c.a.zzx)), select(arg_1, select(select(vec2<bool>(false, false), vec2<bool>(var_1.d.a.x, false), arg_1), select(var_1.c.a.wy, arg_1, arg_1), var_1.d.a.x), select(arg_1, !vec2<bool>(false, arg_1.x), !vec2<bool>(true, var_1.c.a.x))), ~var_1.c.c, vec2<u32>(max(40481u, 1u), 80666u)), var_1.c, Struct_1(var_1.b, vec2<bool>(!all(vec2<bool>(true, true)), var_1.b.x), var_1.d.c, vec2<u32>(var_1.e.x, ~var_1.c.d.x)));
    var var_3 = var_2.a.a.yyx;
    var var_4 = var_1.a;
    return !vec4<bool>(any(var_2.a.a), true, !(!arg_1.x), any(var_2.a.a.wzx));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(-289f, vec4<bool>(all(vec4<bool>(true, true, true, true)), true, false, !(u_input.b >= 4294967295u)), Struct_1(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-281f, 860f) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-332f, 1363f), vec2<f32>(-873f, 1017f)))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_5(40414i)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), min(vec3<u32>(u_input.a, ~15793u, 1u), vec3<u32>(~u_input.b, 0u, 1u)), ~vec2<u32>(u_input.a, 1u)), Struct_1(select(func_3(vec2<f32>(-575f, 915f), vec2<bool>(true, true), Struct_5(-2147483647i)), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1179f, -228f) * vec2<f32>(525f, 2544f)), vec2<bool>(true, true), Struct_5(-40604i)), vec4<bool>(all(vec2<bool>(true, false)), true, true, true)), vec2<bool>(36367u != u_input.a, true), min(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a, 1u), vec3<u32>(10126u, u_input.b, u_input.a)) & vec3<u32>(28383u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 23902u)), ~(~vec2<u32>(u_input.a, u_input.b))), ~firstTrailingBit(select(firstLeadingBit(vec4<u32>(59427u, 63656u, 55772u, 0u)), ~vec4<u32>(4294967295u, u_input.a, 16997u, u_input.a), vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_mod_vec3_i32(~vec3<i32>(_wgslsmith_div_i32(-2147483647i, select(93192i, 0i, false)), -1i, -14746i), -_wgslsmith_mult_vec3_i32(~vec3<i32>(1i, 1i, 1i), _wgslsmith_mod_vec3_i32(max(vec3<i32>(-9665i, -25545i, -2147483647i), vec3<i32>(10761i, 2147483647i, 19151i)), vec3<i32>(-25565i, -9902i, -18612i))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), !func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(324f, 2223f), vec2<f32>(var_0.a, var_0.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1437f, 682f))), vec2<bool>(false, var_1.x <= 14469i), Struct_5(var_1.x)), Struct_1(vec4<bool>(var_0.b.x, true, !select(false, var_0.c.a.x, var_0.c.b.x), true), !(!(!vec2<bool>(var_0.c.b.x, true))), ~(~var_0.e.wwy), vec2<u32>(4294967295u, u_input.a)), var_0.c, firstLeadingBit(vec4<u32>(1u, _wgslsmith_mult_u32(~u_input.b, _wgslsmith_dot_vec4_u32(var_0.e, var_0.e)), _wgslsmith_mult_u32(u_input.a << (var_0.c.c.x % 32u), ~4294967295u), 1u)));
    let var_2 = Struct_5(0i);
    let var_3 = var_0.b.zw;
    return var_0.c;
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> vec2<bool> {
    let var_0 = countOneBits(40166i);
    let var_1 = !(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_1, 33651i) & vec3<i32>(var_0, var_0, -6705i), _wgslsmith_add_vec3_i32(vec3<i32>(arg_1, var_0, var_0), vec3<i32>(var_0, -1i, -1i))) >= var_0);
    let var_2 = arg_0.d.c.x;
    let var_3 = min(arg_1 | ~var_0, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, firstLeadingBit(var_0)), vec2<i32>(1i, var_0 | 29559i)) | var_0);
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1048f * -1000f) - -251f))), 1002f));
    return !(!func_3(vec2<f32>(-2183f, arg_0.a), !arg_0.c.a.yz, Struct_5(-25650i)).yz);
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_2(Struct_1(!vec4<bool>(any(vec2<bool>(true, false)), true, true, true), func_4(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), vec4<bool>(false, false, true, false), func_2(), func_2(), vec4<u32>(34390u, 28632u, 4294967295u, u_input.b) >> (vec4<u32>(4294967295u, u_input.a, u_input.b, u_input.a) % vec4<u32>(32u))), _wgslsmith_mult_i32(1i, 0i)), _wgslsmith_sub_vec3_u32(~countOneBits(vec3<u32>(0u, 48021u, 0u)), ~vec3<u32>(u_input.b, 49179u, u_input.b)), vec2<u32>(_wgslsmith_mult_u32(u_input.a, ~u_input.b), u_input.b)), func_2(), Struct_1(!select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), true), select(!func_4(Struct_3(-1000f, vec4<bool>(false, false, false, false), Struct_1(vec4<bool>(false, false, false, true), vec2<bool>(false, true), vec3<u32>(4294967295u, 89172u, 48781u), vec2<u32>(1u, u_input.b)), Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(true, true), vec3<u32>(8605u, 1u, 23195u), vec2<u32>(u_input.a, u_input.a)), vec4<u32>(u_input.b, 0u, 49447u, u_input.a)), 32602i), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), true), _wgslsmith_mult_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 38431u, 105848u), vec3<u32>(13591u, u_input.b, u_input.a)), vec3<u32>(~u_input.b, 1u, select(119957u, 1u, false))), _wgslsmith_add_vec2_u32((vec2<u32>(4294967295u, 4294967295u) >> (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))) ^ min(vec2<u32>(1u, u_input.a), vec2<u32>(46058u, u_input.b)), ~vec2<u32>(4294967295u, u_input.a) ^ vec2<u32>(4294967295u, 0u))));
    var var_1 = ~(-vec3<i32>(-select(-1i, -1i, false), 1i >> (~u_input.b % 32u), select(-1i, -1i, false) >> (_wgslsmith_mod_u32(var_0.b.d.x, var_0.c.c.x) % 32u)));
    let var_2 = vec2<i32>(-1i) * -reverseBits(var_1.yx);
    var_1 = ~firstLeadingBit(-select(-vec3<i32>(-1i, var_2.x, var_1.x), vec3<i32>(-18667i, -76412i, 0i), var_0.c.b.x));
    var_1 = firstTrailingBit(vec3<i32>(var_1.x, -var_2.x, 2147483647i));
    return Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -215f) * _wgslsmith_f_op_f32(f32(-1f) * -1836f)))))), var_0.c.a, func_2(), var_0.a, _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(_wgslsmith_mod_u32(u_input.b, 0u), u_input.a ^ 39491u, 1u, reverseBits(u_input.a))), select((vec4<u32>(var_0.a.c.x, u_input.a, u_input.a, var_0.c.d.x) << (vec4<u32>(var_0.c.d.x, 9641u, var_0.c.c.x, 1u) % vec4<u32>(32u))) ^ ~vec4<u32>(30421u, var_0.a.d.x, u_input.a, 46835u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.c.x, 82153u, 41928u, u_input.b), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c.c.x, var_0.c.d.x, var_0.a.d.x, u_input.a), vec4<u32>(var_0.a.d.x, 3232u, 22796u, var_0.a.c.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, var_0.b.d.x, var_0.a.d.x, u_input.a), vec4<u32>(0u, u_input.b, 1u, u_input.b))), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = (abs(-1i) & (~10601i ^ ~(-46766i >> (var_0.d.c.x % 32u)))) >> (_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(41686u, u_input.b, 44116u), var_0.d.c), vec3<u32>(u_input.a, var_0.c.d.x, var_0.e.x)), u_input.b), _wgslsmith_add_u32(abs(var_0.d.c.x), ~max(58359u, var_0.e.x))) % 32u);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -172f), _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1128f)))), var_0.a, var_0.a);
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1249f), _wgslsmith_f_op_f32(var_0.a - -509f), _wgslsmith_f_op_f32(max(768f, var_2.x)), 764f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(716f, 130f, var_0.a, var_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1210f, var_0.a, var_0.a, 1470f)))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(479f, _wgslsmith_f_op_f32(min(var_2.x, var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1687f - var_2.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.a, -925f), _wgslsmith_f_op_f32(427f + 157f), _wgslsmith_f_op_f32(-874f * var_0.a), _wgslsmith_div_f32(var_2.x, var_2.x)) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, -348f, 1997f) - vec4<f32>(-1000f, -424f, -1896f, 1000f))))), vec4<bool>(true, any(!vec3<bool>(true, var_0.d.a.x, var_0.b.x)), all(vec3<bool>(true, var_0.d.b.x, false)) && (var_1 == -47363i), all(var_0.b.xwx)))));
    let var_3 = -_wgslsmith_sub_i32(max(var_1, 1i), var_1 & var_1);
    var var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_0.c.c), ~_wgslsmith_sub_vec2_i32(~firstLeadingBit(vec2<i32>(-8854i, -45107i)), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, var_3), vec2<i32>(var_3, var_3)), -vec2<i32>(var_3, var_3))), ~firstLeadingBit(~var_0.e | func_1().e), 1000f, var_2.x);
}

