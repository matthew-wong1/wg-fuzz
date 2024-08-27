struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = -19977i;
    let var_1 = u_input.a;
    var var_2 = arg_0.d.a.b;
    global0 = arg_0.b.a.b.x;
    return _wgslsmith_clamp_vec2_i32(arg_1, arg_1 >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 1u) ^ _wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(1u, u_input.a)), reverseBits(~vec2<u32>(var_1, u_input.a))) % vec2<u32>(32u)), ~vec2<i32>(19923i >> ((var_1 << (2861u % 32u)) % 32u), -(~arg_2.c.a.x)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(-vec2<i32>(-7014i, -1i), func_3(Struct_4(vec4<i32>(-50988i, -2147483647i, 1i, 25516i), Struct_2(Struct_1(vec2<i32>(1i, 0i), vec2<f32>(-1100f, 1495f), vec3<i32>(1i, 17729i, 1i)), vec4<bool>(true, true, false, false), Struct_1(vec2<i32>(1i, 0i), vec2<f32>(-218f, 340f), vec3<i32>(38786i, 22725i, 0i))), false, Struct_3(Struct_2(Struct_1(vec2<i32>(-2147483647i, 28898i), vec2<f32>(637f, -922f), vec3<i32>(-100i, 0i, 0i)), vec4<bool>(true, false, false, true), Struct_1(vec2<i32>(2147483647i, 1i), vec2<f32>(-518f, 1007f), vec3<i32>(2147483647i, -19874i, 33379i))))), vec2<i32>(44947i, -229i), Struct_2(Struct_1(vec2<i32>(29766i, 0i), vec2<f32>(-666f, 1870f), vec3<i32>(2147483647i, 1i, 2147483647i)), vec4<bool>(true, true, true, false), Struct_1(vec2<i32>(-34430i, 0i), vec2<f32>(-104f, -435f), vec3<i32>(0i, 0i, -1i))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(263f, -1349f)) + vec2<f32>(-520f, _wgslsmith_f_op_f32(f32(-1f) * -710f))), vec3<i32>(1i, 1i, 1i)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), all(vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, all(vec3<bool>(false, false, true))), true)), Struct_1(~(~firstTrailingBit(vec2<i32>(-20822i, 46037i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(126f, -2091f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(414f, 1308f) * vec2<f32>(-1001f, 2236f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2965f, 1869f))), select(~countOneBits(vec3<i32>(-26944i, 36419i, 1i)), -vec3<i32>(-24587i, 2147483647i, -18142i), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))));
    global0 = 886f;
    let var_1 = 0i;
    let var_2 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.a, ~u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 10166u, u_input.a), vec3<u32>(3913u, u_input.a, 40753u) & vec3<u32>(1u, u_input.a, 128598u), select(vec3<u32>(4294967295u, 19633u, 0u), vec3<u32>(u_input.a, 4294967295u, 19649u), var_0.b.zzx))) & _wgslsmith_div_vec3_u32(reverseBits(firstLeadingBit(vec3<u32>(237u, 4294967295u, 26247u))), reverseBits(vec3<u32>(0u, u_input.a, u_input.a))), vec3<u32>(u_input.a >> (~u_input.a % 32u), 41792u << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 19542u), vec2<u32>(u_input.a, u_input.a)) % 32u), u_input.a) ^ (vec3<u32>(u_input.a, u_input.a, 2477u) >> (vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(4294967295u, 60893u)), 70177u) % vec3<u32>(32u))));
    let var_3 = var_0.a;
    return Struct_2(var_3, vec4<bool>(!(var_0.b.x != true), var_0.b.x, var_0.b.x, true), Struct_1(min(max(func_3(Struct_4(vec4<i32>(var_0.c.a.x, var_1, var_1, var_1), var_0, var_0.b.x, Struct_3(Struct_2(var_0.a, var_0.b, var_0.a))), vec2<i32>(var_3.c.x, -40346i), Struct_2(var_0.a, vec4<bool>(true, false, true, true), var_0.c)), -var_0.a.c.xx), countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(72342i, 1329i), vec2<i32>(var_1, var_1)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.b.x, var_0.a.b.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(735f, var_3.b.x)))), var_3.c));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_1 {
    return Struct_1(_wgslsmith_clamp_vec2_i32(firstLeadingBit(arg_0.a.c.zy), func_2().c.c.xx, abs(~abs(vec2<i32>(-29427i, arg_0.a.a.x)))), vec2<f32>(_wgslsmith_f_op_f32(1000f + 1663f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1643f))), vec3<i32>(arg_0.a.c.x, firstTrailingBit(arg_0.c.c.x), _wgslsmith_mult_i32(~58862i, countOneBits(9987i))));
}

fn func_1(arg_0: vec4<f32>) -> bool {
    let var_0 = Struct_2(func_4(func_2(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1196f, -841f, 1550f))) * vec4<f32>(arg_0.x, -838f, _wgslsmith_div_f32(arg_0.x, arg_0.x), 1689f))), select(vec4<bool>(1i <= (1i >> (u_input.a % 32u)), false, true, true), func_2().b, true), Struct_1(abs(max(firstLeadingBit(vec2<i32>(1i, -16389i)), func_4(Struct_2(Struct_1(vec2<i32>(20325i, -1i), arg_0.yz, vec3<i32>(-77260i, 1959i, 0i)), vec4<bool>(false, true, false, false), Struct_1(vec2<i32>(-2147483647i, -1i), vec2<f32>(arg_0.x, arg_0.x), vec3<i32>(8265i, 22914i, -1i))), arg_0).c.zy)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.xw), arg_0.yz, vec2<bool>(arg_0.x == arg_0.x, false))), min(firstLeadingBit(-vec3<i32>(3313i, 0i, 113i)), vec3<i32>(1i, 1i, 1i))));
    var var_1 = max(105i, 50298i);
    var var_2 = _wgslsmith_mod_i32(-1i, var_0.c.a.x);
    let var_3 = var_0;
    var var_4 = var_0.a;
    return false;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    return arg_2;
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -773i), firstTrailingBit(vec2<i32>(arg_0.a.c.x, arg_0.a.a.x))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_0.a.b - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_0.a.b.x) * _wgslsmith_f_op_vec2_f32(-arg_2.zy))))), -abs(vec3<i32>(arg_0.a.a.x ^ 1i, arg_0.a.a.x, _wgslsmith_div_i32(0i, -52567i))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b.x * func_2().a.b.x));
    let var_1 = vec4<u32>(0u, 1u, ~(~55327u), u_input.a >> (4294967295u % 32u)) | vec4<u32>(1u, 1u, _wgslsmith_div_u32(~_wgslsmith_mult_u32(u_input.a, arg_1), 27796u), 1u);
    var var_2 = var_0.c;
    return func_4(func_2(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, _wgslsmith_div_f32(-601f, -1584f), 1794f, var_0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_2(func_5(firstLeadingBit(vec4<i32>(0i, 2147483647i, -2147483647i, -5078i)), vec3<bool>(true, func_1(vec4<f32>(-186f, 906f, -1036f, 1936f)), true), func_2().c), func_2().b, Struct_1(abs(~vec2<i32>(1i, 1i)), vec2<f32>(1317f, _wgslsmith_f_op_f32(f32(-1f) * -260f)), -(vec3<i32>(-2147483647i, -1i, -41956i) << (vec3<u32>(4294967295u, u_input.a, 0u) % vec3<u32>(32u))))), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u) | vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, 34220u, 0u)) & ~max(u_input.a, 1u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-147f, -1000f) - _wgslsmith_f_op_f32(max(-1105f, -198f))) * 105f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-554f * 1370f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-127f + _wgslsmith_f_op_f32(-429f * 714f))))));
    var var_1 = true;
    var var_2 = any(vec2<bool>(true, true)) & !any(vec3<bool>(true, true, true));
    var var_3 = 634f;
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-557f, 632f)) + _wgslsmith_div_f32(var_0.b.x, 1063f))))));
    let var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(45406i << (1u % 32u), _wgslsmith_add_i32(0i, -19073i)), ~firstLeadingBit(~vec2<i32>(-1i, var_0.c.x))), ~u_input.a);
}

