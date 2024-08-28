struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: Struct_4,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_sub_vec2_i32(select(vec2<i32>(~(i32(-1i) * -2147483647i), countOneBits(0i << (u_input.a.x % 32u))), _wgslsmith_mod_vec2_i32(~vec2<i32>(1i, 1i), -vec2<i32>(1i, 1i)), arg_0 <= _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(870f - 1096f))), ~(-countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 28509i), vec2<i32>(-25311i, 61246i)))));
    global0 = arg_1.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2024f));
    return 2147483647i;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = ~(~_wgslsmith_mod_u32(u_input.a.x, arg_1.b.x));
    var var_1 = vec4<i32>(arg_1.a, reverseBits(arg_1.c.x), -1282i, arg_1.a) ^ _wgslsmith_mod_vec4_i32(-(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.c.x, arg_1.a, -2147483647i, -25706i), vec4<i32>(arg_1.a, arg_1.a, arg_1.a, 2147483647i)) | vec4<i32>(arg_1.c.x, arg_1.a, arg_1.a, arg_1.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(-arg_1.a, ~arg_1.a, abs(13566i), -arg_1.a), (vec4<i32>(1i, arg_1.a, arg_1.c.x, arg_1.c.x) & vec4<i32>(arg_1.a, arg_1.a, arg_1.c.x, arg_1.a)) << (abs(vec4<u32>(arg_1.b.x, 4667u, u_input.b.x, 55071u)) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_add_i32(var_1.x, 9311i);
    var var_3 = vec2<u32>(~(~(countOneBits(u_input.b.x) << (arg_1.b.x % 32u))), ~(_wgslsmith_clamp_u32(u_input.a.x | 601u, firstTrailingBit(1u), u_input.a.x) << (38500u % 32u)));
    let var_4 = _wgslsmith_mult_i32(2147483647i, _wgslsmith_add_i32(75408i, var_2));
    return _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1u, 1u) & arg_1.b.xx), select(u_input.a, ~vec2<u32>(63887u, var_3.x), select(arg_1.d.x, arg_1.d.x, true))), 43119u), _wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 47714u, var_3.x), arg_1.b), 1547u, u_input.a.x), ~countOneBits(vec4<u32>(arg_1.b.x, 1u, 4294967295u, 37749u))) & _wgslsmith_mod_vec4_u32(vec4<u32>(var_3.x, ~27726u, abs(1u), 1u), ~select(vec4<u32>(63968u, 53449u, var_3.x, 4294967295u), vec4<u32>(var_3.x, u_input.a.x, u_input.a.x, 0u), false)));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: Struct_3, arg_3: vec4<u32>) -> vec4<u32> {
    var var_0 = true;
    let var_1 = min(reverseBits(vec4<i32>(func_2(2611f, arg_0), 1i, arg_1.b.d.a, arg_2.d.b.a) >> (func_3(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1000f, arg_1.e, -1699f), vec4<f32>(-1000f, -278f, arg_1.e, arg_1.e)), arg_1.c.c.a) % vec4<u32>(32u))), arg_1.c.a);
    let var_2 = arg_1.c.c.a;
    var var_3 = vec2<i32>(_wgslsmith_mult_i32(~abs(arg_2.d.a.c.x), _wgslsmith_clamp_i32(arg_2.b.x, i32(-1i) * -var_1.x, _wgslsmith_add_i32(1i, firstTrailingBit(arg_1.c.d.c.x)))), select(-1761i, var_1.x, all(arg_2.a.d.zyz)) | var_1.x);
    let var_4 = vec3<u32>(36452u, arg_3.x, 0u);
    return func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1571f * -1000f), _wgslsmith_f_op_f32(arg_1.a + arg_1.a), -1000f, _wgslsmith_f_op_f32(-arg_1.e)) * vec4<f32>(1834f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(arg_1.e)), _wgslsmith_div_f32(arg_1.e, arg_1.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1044f, -349f, arg_1.a, arg_1.e), vec4<f32>(arg_1.a, arg_1.a, arg_1.a, 2189f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-608f, -483f, 978f, arg_1.a) * vec4<f32>(arg_1.a, 1202f, 110f, arg_1.a))))), Struct_1(9723i, var_2.b, vec2<i32>(var_1.x, -1i) << (max(abs(vec2<u32>(0u, 19327u)), ~u_input.b) % vec2<u32>(32u)), arg_2.a.d));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec4<u32>, arg_3: vec2<f32>) -> Struct_1 {
    global0 = u_input.b.x;
    let var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-604f - -713f)), Struct_4(~max(vec4<i32>(2147483647i, -2147483647i, -16588i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-30549i, 2147483647i), vec2<i32>(-1i, 2147483647i)), ~vec3<u32>(u_input.b.x, 36667u, arg_2.x), min(vec2<i32>(-14129i, 6503i), vec2<i32>(-14842i, -79458i)), vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_clamp_i32(-1i, -24114i, 2147483647i), _wgslsmith_div_vec3_u32(arg_2.yyy, arg_2.yyw), select(vec2<i32>(0i, 1i), vec2<i32>(0i, 2147483647i), vec2<bool>(false, false)), vec4<bool>(true, true, true, true))), Struct_2(Struct_1(-33441i, vec3<u32>(0u, 0u, u_input.b.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 5921i), vec2<i32>(0i, 1i), vec2<i32>(0i, -23377i)), vec4<bool>(true, true, true, true)), Struct_1(-13291i, vec3<u32>(arg_2.x, arg_2.x, 1u), abs(vec2<i32>(2147483647i, 43762i)), vec4<bool>(true, false, false, false))), Struct_1(_wgslsmith_clamp_i32(1i, reverseBits(-1i), ~1i), min(max(vec3<u32>(arg_2.x, arg_2.x, 47321u), arg_2.yxz), vec3<u32>(1u, arg_2.x, 15820u)), vec2<i32>(2147483647i, 2147483647i), vec4<bool>(true, true, true, true))), Struct_4(-vec4<i32>(-21071i, ~7118i, max(1i, 0i), i32(-1i) * -18557i), Struct_2(Struct_1(_wgslsmith_mult_i32(2344i, -23837i), arg_2.zzw, vec2<i32>(9379i, 27316i), vec4<bool>(true, true, true, true)), Struct_1(-31789i, ~vec3<u32>(11809u, 35545u, 0u), reverseBits(vec2<i32>(19957i, 1i)), vec4<bool>(false, false, true, false))), Struct_2(Struct_1(1i, arg_2.wyz, countOneBits(vec2<i32>(-2147483647i, 0i)), vec4<bool>(true, true, true, false)), Struct_1(-1i >> (1u % 32u), select(vec3<u32>(arg_2.x, 1u, 57955u), vec3<u32>(0u, 3758u, u_input.a.x), vec3<bool>(false, false, true)), vec2<i32>(-580i, -1i), vec4<bool>(false, false, false, false))), Struct_1(countOneBits(69142i) >> (~arg_2.x % 32u), firstLeadingBit(~arg_2.yyz), -abs(vec2<i32>(28403i, 0i)), vec4<bool>(true, false, true, true))), vec4<i32>(17840i, func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), arg_0)), vec4<u32>(24365u | arg_2.x, reverseBits(arg_2.x), abs(2405u), 23088u)), -16574i >> ((~u_input.b.x | arg_2.x) % 32u), firstTrailingBit(~1i)), -311f);
    let var_1 = -var_0.b.a;
    global0 = (~(~var_0.b.c.a.b.x) << (~0u % 32u)) | (4294967295u << (_wgslsmith_add_u32(u_input.a.x, var_0.b.c.a.b.x) % 32u));
    var var_2 = Struct_4(min(var_0.d, select(min(var_0.d, var_0.d), vec4<i32>(-var_0.d.x, _wgslsmith_clamp_i32(var_1.x, -2147483647i, var_0.b.a.x), -2147483647i, _wgslsmith_mod_i32(11404i, var_0.b.d.a)), !select(vec4<bool>(var_0.c.c.a.d.x, var_0.b.d.d.x, var_0.c.d.d.x, true), vec4<bool>(var_0.c.c.b.d.x, var_0.b.c.b.d.x, var_0.c.d.d.x, var_0.b.b.b.d.x), var_0.b.d.d))), var_0.c.b, var_0.c.b, Struct_1(select(-var_1.x, ~2147483647i, var_0.c.b.b.d.x), _wgslsmith_div_vec3_u32(arg_2.yzx, max(vec3<u32>(arg_2.x, u_input.b.x, 0u), arg_2.wzy)) & var_0.b.b.a.b, vec2<i32>(0i, _wgslsmith_clamp_i32(var_0.c.d.a, -35923i, 2147483647i)) >> (firstLeadingBit(countOneBits(vec2<u32>(1260u, 3503u))) % vec2<u32>(32u)), !var_0.b.b.a.d));
    return var_0.b.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a.x;
    var var_0 = -2772f;
    var var_1 = ~34685u;
    let var_2 = Struct_2(func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-385f, -861f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -383f))), _wgslsmith_div_vec4_u32(~vec4<u32>(19868u, 24858u, u_input.a.x, 0u), func_1(~vec4<u32>(u_input.b.x, u_input.b.x, 19187u, u_input.b.x), Struct_5(1335f, Struct_4(vec4<i32>(-25653i, 49549i, -34959i, 2147483647i), Struct_2(Struct_1(-2147483647i, vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x), vec2<i32>(2147483647i, 1i), vec4<bool>(false, true, false, true)), Struct_1(-2147483647i, vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x), vec2<i32>(2147483647i, 57324i), vec4<bool>(false, true, false, true))), Struct_2(Struct_1(33774i, vec3<u32>(u_input.a.x, 4294967295u, 35584u), vec2<i32>(7828i, 2147483647i), vec4<bool>(true, true, true, true)), Struct_1(-14737i, vec3<u32>(u_input.b.x, 0u, 14897u), vec2<i32>(0i, -2147483647i), vec4<bool>(true, false, false, true))), Struct_1(1i, vec3<u32>(17414u, 0u, u_input.b.x), vec2<i32>(0i, 2147483647i), vec4<bool>(false, true, false, false))), Struct_4(vec4<i32>(2147483647i, -32181i, 2147483647i, 1i), Struct_2(Struct_1(0i, vec3<u32>(45181u, u_input.a.x, 4294967295u), vec2<i32>(1i, 9591i), vec4<bool>(false, true, false, false)), Struct_1(-28724i, vec3<u32>(4294967295u, 1u, u_input.b.x), vec2<i32>(0i, -13923i), vec4<bool>(true, false, false, false))), Struct_2(Struct_1(2147483647i, vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x), vec2<i32>(1i, 1i), vec4<bool>(true, false, true, false)), Struct_1(-13670i, vec3<u32>(u_input.b.x, u_input.a.x, 51751u), vec2<i32>(44566i, 20021i), vec4<bool>(false, false, false, false))), Struct_1(1i, vec3<u32>(u_input.a.x, 4294967295u, 12517u), vec2<i32>(4677i, -10974i), vec4<bool>(true, false, false, true))), vec4<i32>(11624i, 0i, -8485i, -1i), -406f), Struct_3(Struct_1(11269i, vec3<u32>(u_input.b.x, 16299u, 30910u), vec2<i32>(-1i, 1801i), vec4<bool>(true, true, false, false)), vec3<i32>(-117506i, -2147483647i, 1i), 29314u, Struct_2(Struct_1(-11377i, vec3<u32>(4294967295u, u_input.a.x, 0u), vec2<i32>(-1970i, 2147483647i), vec4<bool>(false, true, false, false)), Struct_1(-1i, vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x), vec2<i32>(2147483647i, -22625i), vec4<bool>(true, true, false, false)))), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1113f, 230f) * vec2<f32>(1509f, 119f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2553f, 1496f))))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(2068f))))), _wgslsmith_f_op_f32(194f * _wgslsmith_f_op_f32(f32(-1f) * -1615f)), ~vec4<u32>(_wgslsmith_mod_u32(1u, u_input.b.x), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), _wgslsmith_add_u32(2864u, 1u), 1u), vec2<f32>(1136f, _wgslsmith_f_op_f32(round(-166f)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-543f + -803f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1276f * _wgslsmith_f_op_f32(692f - -985f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1056f, 1087f))))) * _wgslsmith_f_op_f32(-777f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1461f)))));
    let var_3 = Struct_1(-_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.b.a, var_2.a.a, -1i, var_2.a.a), vec4<i32>(-6776i, var_2.a.c.x, var_2.a.c.x, var_2.b.c.x)), max(select(vec4<i32>(20872i, var_2.a.c.x, 2147483647i, var_2.a.c.x), vec4<i32>(var_2.b.c.x, -2147483647i, -5540i, -2147483647i), var_2.a.d), ~vec4<i32>(-1i, var_2.b.c.x, 2147483647i, -34354i))), ~_wgslsmith_sub_vec3_u32(var_2.b.b, var_2.a.b), vec2<i32>(var_2.a.c.x, -2147483647i) ^ reverseBits(~var_2.b.c), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1014f, 826f)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(747f, 1393f))))), -727f, vec4<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 41791u, u_input.b.x), firstTrailingBit(vec4<u32>(67757u, var_2.b.b.x, 0u, u_input.b.x))), 55211u, func_1(vec4<u32>(var_2.b.b.x, 73454u, 47646u, 19529u), Struct_5(-233f, Struct_4(vec4<i32>(var_2.a.c.x, -1i, var_2.a.a, var_2.a.c.x), var_2, Struct_2(var_2.b, var_2.b), Struct_1(-2147483647i, var_2.a.b, vec2<i32>(1i, var_2.a.c.x), var_2.b.d)), Struct_4(vec4<i32>(var_2.a.c.x, var_2.b.c.x, var_2.b.c.x, var_2.b.a), Struct_2(var_2.a, var_2.a), Struct_2(Struct_1(61192i, vec3<u32>(u_input.b.x, 0u, var_2.a.b.x), var_2.b.c, vec4<bool>(var_2.a.d.x, true, false, false)), Struct_1(-5370i, var_2.b.b, var_2.b.c, vec4<bool>(false, var_2.b.d.x, true, var_2.a.d.x))), Struct_1(var_2.b.a, vec3<u32>(var_2.a.b.x, 922u, u_input.a.x), vec2<i32>(-8605i, var_2.b.c.x), vec4<bool>(var_2.a.d.x, var_2.b.d.x, var_2.a.d.x, var_2.a.d.x))), vec4<i32>(var_2.a.c.x, var_2.a.a, var_2.a.c.x, var_2.a.a), 1580f), Struct_3(Struct_1(var_2.b.c.x, var_2.b.b, vec2<i32>(1434i, -2147483647i), var_2.b.d), vec3<i32>(var_2.a.c.x, 218i, 1i), 4294967295u, var_2), ~vec4<u32>(1u, u_input.b.x, u_input.a.x, 0u)).x), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -872f))), 109f)).d);
    let var_4 = Struct_4(-(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(var_3.a, var_3.c.x, 18162i, var_3.a)), ~vec4<i32>(2147483647i, -61920i, 2147483647i, -2147483647i), -vec4<i32>(0i, 0i, var_2.a.a, 14393i)) << (_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.a.x)), ~vec4<u32>(u_input.b.x, 1u, 4294967295u, 1u), vec4<u32>(1u, 92234u, var_2.a.b.x, var_2.b.b.x) << (vec4<u32>(4294967295u, u_input.a.x, var_3.b.x, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_2(var_3, Struct_1(var_3.a, ~vec3<u32>(u_input.b.x, 0u, var_2.a.b.x), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(var_3.c, var_3.c), vec2<i32>(2147483647i, var_3.a)), select(vec4<bool>(var_2.a.d.x, var_2.b.d.x, var_2.a.d.x, var_3.d.x), vec4<bool>(var_2.b.d.x, var_2.a.d.x, false, true), !vec4<bool>(false, var_2.a.d.x, true, var_3.d.x)))), Struct_2(func_4(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-375f - -243f) - -106f), ~(~vec4<u32>(41861u, 50467u, var_2.b.b.x, var_2.a.b.x)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-475f, 402f)))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-513f, -1336f)), 742f, func_1(vec4<u32>(var_3.b.x, var_3.b.x, var_2.a.b.x, 6821u), Struct_5(878f, Struct_4(vec4<i32>(var_3.c.x, var_2.b.a, -2147483647i, 88319i), var_2, var_2, Struct_1(var_2.b.c.x, vec3<u32>(u_input.a.x, var_2.a.b.x, 0u), var_2.a.c, var_3.d)), Struct_4(vec4<i32>(-48730i, -2147483647i, 22519i, var_2.a.a), var_2, Struct_2(var_3, var_3), var_3), vec4<i32>(-1i, -5216i, var_3.a, var_2.b.c.x), -376f), Struct_3(Struct_1(var_3.a, vec3<u32>(var_2.b.b.x, 21565u, var_2.a.b.x), vec2<i32>(0i, var_3.c.x), var_3.d), vec3<i32>(var_3.a, -10479i, 10170i), 34416u, Struct_2(Struct_1(var_2.a.c.x, vec3<u32>(var_2.b.b.x, 68848u, u_input.a.x), var_3.c, var_3.d), var_2.b)), ~vec4<u32>(var_3.b.x, var_3.b.x, u_input.b.x, u_input.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(494f, 1558f)))), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -442f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-137f, _wgslsmith_div_f32(-980f, 1839f)) * _wgslsmith_f_op_f32(f32(-1f) * -613f))), abs(1u));
}

