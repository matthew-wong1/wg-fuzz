struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: vec2<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> vec4<i32> {
    var var_0 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(206f, arg_0), vec2<f32>(770f, arg_0)), vec2<f32>(arg_0, 429f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-524f - arg_0), -1812f) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-101f, -1072f))))), Struct_3(select(-31707i, min(-13312i, 1i), true) | -2147483647i, Struct_2(vec3<u32>(78441u, u_input.a.x, select(u_input.a.x, 12625u, false)), vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, 1220f, false)) + _wgslsmith_f_op_f32(f32(-1f) * -1112f)), 1u)), select(abs(u_input.a << (firstLeadingBit(u_input.a) % vec2<u32>(32u))), u_input.a, all(vec3<bool>(true, true, true))));
    var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a)), Struct_3(var_0.b.b.b.x, Struct_2(~var_0.b.b.a, firstTrailingBit(var_0.b.b.b | var_0.b.b.b), _wgslsmith_f_op_f32(-var_0.a.x), var_0.b.b.d)), ~firstTrailingBit(vec2<u32>(1u, 5317u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-179f, arg_0, _wgslsmith_div_f32(arg_0, var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 700f, var_0.a.x, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, arg_0, arg_0, var_0.a.x)))) * vec4<f32>(_wgslsmith_f_op_f32(abs(-468f)), arg_0, _wgslsmith_f_op_f32(-var_0.a.x), var_0.b.b.c)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-182f, var_0.b.b.c, -171f, arg_0)))))) - vec4<f32>(_wgslsmith_f_op_f32(-727f + -291f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.b.c, 894f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1087f) + arg_0))));
    let var_2 = Struct_3(1i, var_0.b.b);
    var var_3 = 2147483647i;
    return ((vec4<i32>(var_0.b.b.b.x, -var_2.b.b.x, -var_2.a, var_2.b.b.x) & var_0.b.b.b) ^ (select(vec4<i32>(var_2.b.b.x, -1i, 2147483647i, 1i), -vec4<i32>(1i, -33353i, 20091i, var_0.b.a), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))) ^ vec4<i32>(_wgslsmith_div_i32(-2147483647i, -13679i), -var_2.b.b.x, min(var_0.b.a, var_0.b.a), 1i))) | ~(-select(var_0.b.b.b, max(vec4<i32>(2147483647i, -1i, var_0.b.a, -1i), var_2.b.b), true));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_3(2147483647i, Struct_2(~(~select(arg_1, arg_1, vec3<bool>(true, true, true))), max(~vec4<i32>(9601i, 1i, -1i, -10450i), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(2147483647i, -33712i, 31827i, 0i))), _wgslsmith_f_op_f32(round(1839f)), ~(~(~u_input.a.x))));
    var_0 = Struct_3(_wgslsmith_add_i32((~var_0.a | var_0.a) & 21886i, -1i), var_0.b);
    var var_1 = _wgslsmith_mod_vec4_i32(var_0.b.b, vec4<i32>(var_0.b.b.x, -2147483647i, _wgslsmith_mod_i32(~var_0.a, -1i), ~(~21139i)));
    var_1 = func_3(1f);
    var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(abs(firstTrailingBit(vec4<i32>(-23000i, -8648i, -1i, -28830i))), firstLeadingBit(-var_0.b.b)) << (vec4<u32>(firstLeadingBit(1u), _wgslsmith_mod_u32(arg_1.x, 13623u) ^ var_0.b.d, u_input.a.x, _wgslsmith_sub_u32(~u_input.a.x, ~34815u)) % vec4<u32>(32u)), min(-var_0.b.b, _wgslsmith_clamp_vec4_i32(select(vec4<i32>(var_0.a, var_1.x, 37751i, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(0i, var_0.b.b.x, var_1.x, 0i), vec4<i32>(-13562i, -62751i, 7139i, var_0.b.b.x)), vec4<bool>(true, true, true, true)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b.b.x, -11162i, -2147483647i, var_1.x) | var_0.b.b, reverseBits(vec4<i32>(-729i, 1i, 2147483647i, 33516i))), var_0.b.b)), -vec4<i32>(var_1.x << (4294967295u % 32u), 1i, -var_0.b.b.x, -66490i));
    return Struct_2(~(vec3<u32>(u_input.a.x, ~var_0.b.d, _wgslsmith_add_u32(19439u, u_input.a.x)) << (var_0.b.a % vec3<u32>(32u))), vec4<i32>((var_0.a << (~0u % 32u)) | -_wgslsmith_div_i32(var_0.b.b.x, var_1.x), -2147483647i ^ var_0.b.b.x, var_1.x, _wgslsmith_sub_i32(min(-1i, var_0.a), firstTrailingBit(select(var_1.x, var_1.x, false)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f * var_0.b.c))), countOneBits(1u << (_wgslsmith_add_u32(arg_0, var_0.b.a.x) % 32u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: Struct_4) -> vec2<f32> {
    let var_0 = Struct_2(~(~vec3<u32>(~4294967295u, 4294967295u, 0u)), arg_2.b.b.b, 1000f, arg_0.x);
    let var_1 = false;
    var var_2 = Struct_5(arg_2.b, ~1u, true);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1186f, _wgslsmith_div_f32(-1485f, _wgslsmith_f_op_f32(trunc(-1067f))), _wgslsmith_f_op_f32(1236f * _wgslsmith_f_op_f32(f32(-1f) * -1366f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1662f, var_0.c, var_0.c))) + vec3<f32>(-1705f, arg_3.a.x, -504f)))));
    let var_4 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~var_2.a.b.a.xx, var_0.a.zy) << (vec2<u32>(var_2.b | u_input.a.x, _wgslsmith_clamp_u32(4294967295u, 56193u, var_0.d)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 44334u), vec2<u32>(var_2.a.b.a.x, 39311u)), var_0.a.x) << (vec2<u32>(arg_2.b.b.d & arg_0.x, ~1u) % vec2<u32>(32u)));
    return vec2<f32>(-524f, _wgslsmith_f_op_f32(ceil(arg_2.b.b.c)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(func_4(max(reverseBits(vec3<u32>(0u, 0u, arg_0.x)), ~max(vec3<u32>(5355u, u_input.a.x, 23725u), vec3<u32>(u_input.a.x, 11295u, 19996u))), arg_1.a, Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 555f))), Struct_3(-arg_1.a.x, func_2(1u, vec3<u32>(65149u, 13925u, 42975u))), ~arg_0 >> (select(vec2<u32>(u_input.a.x, arg_0.x), arg_0, true) % vec2<u32>(32u))), Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-954f, -1503f))), Struct_3(arg_1.a.x >> (arg_0.x % 32u), func_2(51043u, vec3<u32>(u_input.a.x, u_input.a.x, 234u))), vec2<u32>(firstLeadingBit(1u), arg_0.x)))), Struct_3(select(arg_1.a.x, 1i, any(vec2<bool>(true, true))), Struct_2(select(vec3<u32>(arg_0.x, u_input.a.x, u_input.a.x), vec3<u32>(arg_0.x, 1u, u_input.a.x), false), -select(vec4<i32>(25244i, 0i, -1i, arg_2), vec4<i32>(arg_2, arg_2, -1i, arg_2), vec4<bool>(false, true, true, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - -1878f))), _wgslsmith_mod_u32(~0u, 67780u))), firstTrailingBit(~_wgslsmith_mod_vec2_u32(max(u_input.a, vec2<u32>(4294967295u, 33982u)), u_input.a)));
    let var_1 = countOneBits(_wgslsmith_mult_vec3_u32(var_0.b.b.a, vec3<u32>(_wgslsmith_add_u32(0u, var_0.c.x) ^ u_input.a.x, ~_wgslsmith_dot_vec3_u32(var_0.b.b.a, var_0.b.b.a), ~u_input.a.x)));
    var_0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.b.c), 206f), Struct_3(_wgslsmith_add_i32(_wgslsmith_div_i32(arg_1.a.x, ~(-1i)), ~var_0.b.a), var_0.b.b), reverseBits(_wgslsmith_sub_vec2_u32(select(vec2<u32>(var_0.b.b.d, arg_0.x) & var_1.zy, vec2<u32>(17739u, 1u), true), ~(var_0.b.b.a.xx ^ vec2<u32>(84707u, 36980u)))));
    var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-663f, var_0.b.b.c), vec2<f32>(1334f, var_0.b.b.c), vec2<bool>(false, true))) + _wgslsmith_f_op_vec2_f32(-var_0.a))))), var_0.b, select(max(firstTrailingBit(var_1.xy >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), var_1.zy), vec2<u32>(_wgslsmith_add_u32(174405u, ~arg_0.x), arg_0.x), arg_2 < -reverseBits(0i)));
    var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.b.c, var_0.b.b.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(678f, -1671f) + var_0.a))) + var_0.a), Struct_3(~arg_1.a.x, Struct_2(var_0.b.b.a, _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(0i, arg_2, arg_1.a.x, arg_1.a.x)), var_0.b.b.b & vec4<i32>(arg_2, 29262i, arg_1.a.x, arg_1.a.x)), _wgslsmith_f_op_f32(ceil(1000f)), 4830u << (arg_0.x % 32u))), vec2<u32>(_wgslsmith_mult_u32(min(u_input.a.x, _wgslsmith_sub_u32(var_1.x, var_1.x)), ~u_input.a.x), arg_0.x));
    return func_2(var_1.x, vec3<u32>(14071u, 4294967295u, arg_0.x));
}

fn func_5(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(arg_0, ~arg_0) == -2147483647i;
    var var_1 = !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, false, false)), true, true), select(false, select(false, false, true), true)), select(select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), any(vec2<bool>(false, false))), true));
    var var_2 = Struct_3(-1i, arg_2);
    let var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-957f - var_2.b.c), _wgslsmith_f_op_f32(arg_2.c - func_1(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.b.d, 1u), vec2<u32>(var_2.b.d, arg_2.a.x)), Struct_1(vec2<i32>(arg_0, 2147483647i)), -24072i).c), -1959f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.b.c)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1552f, -3643f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.c - -2360f)), _wgslsmith_f_op_f32(f32(-1f) * -417f), -203f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-775f, _wgslsmith_f_op_f32(step(var_2.b.c, var_2.b.c)), _wgslsmith_f_op_f32(step(var_2.b.c, arg_2.c)), _wgslsmith_f_op_f32(var_2.b.c + 1429f)))), !(_wgslsmith_add_i32(-arg_0, ~0i) > arg_0)));
    var var_4 = Struct_1(-vec2<i32>(~var_2.b.b.x, -46755i));
    return Struct_1(vec2<i32>(-2147483647i, abs(var_4.a.x) ^ arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -758f;
    var var_1 = vec2<bool>(true, _wgslsmith_div_i32(-(~(-49042i)), _wgslsmith_mod_i32(abs(5281i), i32(-1i) * -2147483647i)) <= (_wgslsmith_dot_vec3_i32(min(vec3<i32>(0i, -1i, 35047i), vec3<i32>(2147483647i, 1i, -43491i)), ~vec3<i32>(-2147483647i, 25092i, 38007i)) >> (min(0u, u_input.a.x) % 32u)));
    let var_2 = func_5(min(-9245i, _wgslsmith_sub_i32(i32(-1i) * -1i, ~1i) << (~min(1u, u_input.a.x) % 32u)), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 4294967295u)), vec4<u32>(u_input.a.x | 21852u, 37827u, u_input.a.x, 0u)) & (_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(21602u, 28964u, 1u, 76809u), vec4<u32>(10072u, 93915u, 1u, u_input.a.x), vec4<u32>(0u, 2894u, u_input.a.x, 6245u))) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(25095u, 4294967295u, u_input.a.x, 1u)) % vec4<u32>(32u))), func_1(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~u_input.a, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(0u, 4294967295u))), _wgslsmith_add_vec2_u32(vec2<u32>(67695u, 24938u), ~vec2<u32>(u_input.a.x, 0u))), Struct_1(vec2<i32>(~(-72887i), ~8186i)), 3515i));
    let var_3 = Struct_5(Struct_3(var_2.a.x >> (min(func_1(u_input.a, var_2, var_2.a.x).a.x, countOneBits(28548u)) % 32u), Struct_2(~firstLeadingBit(vec3<u32>(22807u, 80839u, u_input.a.x)), vec4<i32>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x) | (vec4<i32>(var_2.a.x, 0i, var_2.a.x, -1i) >> (vec4<u32>(49605u, 4294967295u, 0u, u_input.a.x) % vec4<u32>(32u))), 946f, 82642u)), ~(~(~func_2(4294967295u, vec3<u32>(0u, u_input.a.x, 1u)).a.x)), !(~u_input.a.x <= firstLeadingBit(_wgslsmith_add_u32(u_input.a.x, 1u))));
    let var_4 = vec4<i32>(abs(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(var_3.a.b.b.x, var_2.a.x, var_3.a.a, var_3.a.b.b.x), _wgslsmith_mod_vec4_i32(var_3.a.b.b, var_3.a.b.b)), -var_3.a.b.b & vec4<i32>(var_2.a.x, var_2.a.x, 2147483647i, 0i))), var_2.a.x, abs(~26917i), select(var_2.a.x ^ (var_3.a.a << (1u % 32u)), var_3.a.a, true) & 10117i);
    var_1 = select(select(!select(select(vec2<bool>(false, false), vec2<bool>(var_3.c, var_3.c), true), vec2<bool>(var_1.x, true), false), vec2<bool>(!select(false, true, true), (var_3.c && var_1.x) | var_3.c), false), select(vec2<bool>(!(!var_3.c), all(vec3<bool>(var_1.x, var_3.c, var_1.x))), !vec2<bool>(true, !var_1.x), select(vec2<bool>(var_0 > var_3.a.b.c, true), !(!vec2<bool>(var_3.c, false)), vec2<bool>(true, true))), !vec2<bool>(true, var_1.x));
    let var_5 = select(1u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, u_input.a.x), vec2<u32>(var_3.b, u_input.a.x)), _wgslsmith_mod_vec2_u32(var_3.a.b.a.yy, vec2<u32>(81195u, 38440u)) ^ vec2<u32>(u_input.a.x, u_input.a.x)), true);
    let var_6 = var_3.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

