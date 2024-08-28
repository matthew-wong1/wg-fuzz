struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1047f * -368f)), -634f, _wgslsmith_f_op_f32(f32(-1f) * -670f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(584f, -985f) - _wgslsmith_f_op_f32(-362f + 560f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1376f - -431f))))));
    let var_1 = _wgslsmith_dot_vec2_u32(~((u_input.d << (countOneBits(vec2<u32>(u_input.d.x, u_input.d.x)) % vec2<u32>(32u))) << (countOneBits(u_input.d & vec2<u32>(u_input.d.x, 88603u)) % vec2<u32>(32u))), u_input.d);
    var var_2 = Struct_3(-_wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.b.x, 0i), u_input.c), Struct_2(1i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-168f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))), firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(14046u, u_input.d.x, 7339u), firstLeadingBit(54778u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, 9702u, u_input.d.x), vec4<u32>(1u, 4294967295u, var_1, u_input.d.x)), ~var_1)), _wgslsmith_mod_vec3_i32(select(vec3<i32>(u_input.c.x, -9973i, 78525i), vec3<i32>(u_input.b.x, -2147483647i, u_input.c.x), true), ~vec3<i32>(87999i, 1i, -4253i)) ^ max(vec3<i32>(u_input.c.x, -20090i, u_input.a.x), ~vec3<i32>(-23148i, u_input.c.x, u_input.c.x))), 10181u);
    var var_3 = u_input.b.x;
    let var_4 = var_0.x;
    return !(!(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true))));
}

fn func_2(arg_0: f32) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-1056f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-411f - 158f))))), vec2<bool>(all(!func_3()), !select(true, true, arg_0 < -713f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1166f, -198f, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-983f, 1081f)))), ~vec2<u32>(u_input.d.x, u_input.d.x));
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~min(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, 1u, 0u, 74114u), vec4<u32>(u_input.d.x, 74043u, 1u, 35164u)), vec4<u32>(28658u, var_0.d.x, 1u, u_input.d.x)), select(vec4<u32>(0u, 17484u, 54839u, 0u) | vec4<u32>(u_input.d.x, 4294967295u, 0u, u_input.d.x), abs(vec4<u32>(var_0.d.x, u_input.d.x, u_input.d.x, u_input.d.x)), u_input.c.x != u_input.a.x) | _wgslsmith_div_vec4_u32(max(vec4<u32>(26527u, 36239u, var_0.d.x, 4294967295u), vec4<u32>(var_0.d.x, 11602u, 30421u, 4294967295u)), ~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, var_0.d.x))), ~(~u_input.d.x & 77217u));
    let var_2 = -(i32(-1i) * -(~20742i));
    var var_3 = ~(1u ^ (~reverseBits(u_input.d.x) | ~u_input.d.x));
    var_3 = var_0.d.x;
    return ~abs(_wgslsmith_clamp_vec4_u32(min(~vec4<u32>(var_1, var_1, u_input.d.x, u_input.d.x), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1, var_0.d.x, var_1, var_0.d.x), vec4<u32>(u_input.d.x, 1251u, var_1, var_1))), vec4<u32>(var_0.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, var_0.d.x, 79893u), vec3<u32>(var_0.d.x, u_input.d.x, var_0.d.x)), var_0.d.x, 1u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.d.x, var_0.d.x, var_1, 4294967295u), vec4<u32>(4294967295u, var_0.d.x, 0u, var_1))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(245f, -250f)))), _wgslsmith_f_op_f32(f32(-1f) * -1179f)))));
    let var_1 = Struct_5(!select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(arg_2.x, true, arg_2.x)), true, false), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, arg_2.x), false), func_3().xxz, any(vec4<bool>(true, true, false, arg_2.x)))), !vec2<bool>(arg_2.x, func_3().x));
    let var_2 = 944f;
    var var_3 = Struct_3(~select(arg_3.x, ~_wgslsmith_dot_vec2_i32(arg_3, u_input.c), func_3().x | false), Struct_2(u_input.c.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(456f, var_2))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1021f, var_0))))), func_2(var_0), -(~vec3<i32>(-11536i, 7876i, arg_3.x))), _wgslsmith_div_u32(abs(arg_1.x) | 5798u, _wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, u_input.d.x) ^ arg_1.x, 1u & firstTrailingBit(u_input.d.x))));
    let var_4 = -153f;
    return var_3.b;
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(vec4<u32>(u_input.d.x, 1u, ~_wgslsmith_add_u32(1u, u_input.d.x), 2021u) & vec4<u32>(firstTrailingBit(u_input.d.x), 12391u | u_input.d.x, 4294967295u, u_input.d.x), (firstLeadingBit(min(vec4<u32>(u_input.d.x, 4294967295u, 0u, 35332u), vec4<u32>(113549u, 31452u, 1u, 1u))) ^ abs(reverseBits(vec4<u32>(u_input.d.x, u_input.d.x, 1u, 0u)))) ^ func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-916f - -823f))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, false)), all(vec3<bool>(false, false, true))), all(vec3<bool>(false, true, true))), true), vec2<i32>(~1i, 235i));
    let var_1 = countOneBits(u_input.d.x | ~_wgslsmith_dot_vec4_u32(var_0.c, vec4<u32>(6228u, 0u, u_input.d.x, 1u))) >> (76394u % 32u);
    let var_2 = var_0.c.x;
    let var_3 = select(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), select(vec2<bool>(u_input.d.x >= (var_1 >> (var_0.c.x % 32u)), all(vec4<bool>(true, false, false, true))), vec2<bool>(select(func_3().x, true, true), var_1 >= var_1), false), true && func_3().x);
    let var_4 = vec3<bool>(var_0.b.x >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(func_4(vec4<u32>(647u, u_input.d.x, 3487u, var_1), var_0.c, vec2<bool>(var_3.x, var_3.x), var_0.d.zy).b.x)), 377f, var_3.x)), all(var_3), all(!vec4<bool>(var_3.x, true, true, false)));
    return Struct_1(_wgslsmith_f_op_f32(max(1f, var_0.b.x)), !var_3, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, 1000f, -373f), vec4<f32>(-1000f, var_0.b.x, var_0.b.x, 417f))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x + 676f), _wgslsmith_div_f32(var_0.b.x, -1383f)), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b.x, -367f))), _wgslsmith_f_op_f32(round(var_0.b.x))))), vec2<u32>(~(_wgslsmith_mod_u32(var_0.c.x, 78411u) << (1u % 32u)), _wgslsmith_mod_u32(~abs(u_input.d.x), var_1)));
}

fn func_5(arg_0: Struct_1) -> Struct_5 {
    var var_0 = Struct_4(min(_wgslsmith_clamp_vec3_u32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -466f)).yyw, vec3<u32>(61116u, u_input.d.x, u_input.d.x) & (vec3<u32>(u_input.d.x, 38208u, 48428u) ^ vec3<u32>(0u, 45237u, u_input.d.x)), _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(u_input.d.x, u_input.d.x, 33098u)), ~vec3<u32>(1u, arg_0.d.x, u_input.d.x))), vec3<u32>(~(33462u | arg_0.d.x), 1u, ~(~u_input.d.x))), Struct_2(u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, arg_0.c.x)) + vec2<f32>(arg_0.c.x, arg_0.a))), vec4<u32>(arg_0.d.x, ~arg_0.d.x, 25600u, _wgslsmith_mult_u32(4294967295u, u_input.d.x >> (1u % 32u))), vec3<i32>(1i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.c.x, u_input.c.x, 52286i), vec3<i32>(-2147483647i, 2147483647i, 0i)), _wgslsmith_add_vec3_i32(vec3<i32>(30921i, 0i, u_input.b.x), vec3<i32>(u_input.a.x, -33430i, u_input.a.x))), ~(-1i))));
    var_0 = Struct_4(~var_0.a, func_4(reverseBits(~(vec4<u32>(55166u, var_0.b.c.x, u_input.d.x, var_0.b.c.x) | var_0.b.c)), max(countOneBits(min(var_0.b.c, vec4<u32>(4294967295u, 60876u, var_0.a.x, u_input.d.x))), ~firstLeadingBit(var_0.b.c)), func_3().xw, _wgslsmith_clamp_vec2_i32(vec2<i32>(-u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 35386i, u_input.c.x, var_0.b.d.x), vec4<i32>(var_0.b.d.x, var_0.b.d.x, 4117i, u_input.b.x))), firstTrailingBit(var_0.b.d.zz), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.a, 0i), vec2<i32>(-2147483647i, var_0.b.a)), 18325i))));
    let var_1 = 1000f;
    var var_2 = arg_0;
    var var_3 = abs(i32(-1i) * -2147483647i);
    return Struct_5(select(vec3<bool>(func_1().b.x, false, true && var_2.b.x), select(!(!vec3<bool>(var_2.b.x, arg_0.b.x, var_2.b.x)), func_3().zyw, func_3().yyz), !select(vec3<bool>(arg_0.b.x, var_2.b.x, true), vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), vec3<bool>(true, true, true))), vec2<bool>(false, arg_0.b.x));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_5) -> vec2<f32> {
    let var_0 = func_4(vec4<u32>(~_wgslsmith_mod_u32(~57780u, u_input.d.x), u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x & 30560u, 1u, 37760u | _wgslsmith_add_u32(1u, u_input.d.x), _wgslsmith_dot_vec2_u32(vec2<u32>(44251u, 87015u), vec2<u32>(firstTrailingBit(u_input.d.x), 4294967295u))), !arg_1.b, (countOneBits(u_input.b) << (u_input.d % vec2<u32>(32u))) & countOneBits(countOneBits(countOneBits(u_input.a))));
    var var_1 = Struct_3(-56988i, func_4(var_0.c, reverseBits(_wgslsmith_sub_vec4_u32(var_0.c, ~vec4<u32>(26794u, u_input.d.x, 0u, 0u))), vec2<bool>(arg_1.b.x && (4294967295u >= u_input.d.x), !(!arg_1.a.x)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, -26413i, arg_0.x), vec4<i32>(1i, u_input.a.x, var_0.a, -1i)), 93269i >> (_wgslsmith_sub_u32(u_input.d.x, u_input.d.x) % 32u))), 23283u);
    let var_2 = _wgslsmith_clamp_u32(var_1.c, func_1().d.x << (~_wgslsmith_mult_u32(u_input.d.x, u_input.d.x) % 32u), var_1.b.c.x) >= abs(select(firstLeadingBit(var_0.c.x), ~0u, false));
    let var_3 = ~(~(~(~var_1.b.c.xwx << ((vec3<u32>(u_input.d.x, var_0.c.x, 0u) | vec3<u32>(var_1.b.c.x, 0u, 20354u)) % vec3<u32>(32u)))));
    var var_4 = func_4(vec4<u32>(~var_3.x, 31614u, func_1().d.x, var_1.c), vec4<u32>(var_3.x & var_0.c.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, countOneBits(44305u), var_1.b.c.x >> (var_1.b.c.x % 32u)), _wgslsmith_dot_vec4_u32(var_1.b.c & vec4<u32>(40307u, u_input.d.x, 27775u, var_1.c), vec4<u32>(33087u, var_1.b.c.x, var_1.c, var_3.x))), ~firstLeadingBit(var_0.c.x ^ var_0.c.x), 1u), func_5(Struct_1(-303f, !select(arg_1.b, arg_1.b, var_2), _wgslsmith_f_op_vec4_f32(vec4<f32>(1004f, 345f, 1769f, var_1.b.b.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(218f, 200f, -695f, var_1.b.b.x) - vec4<f32>(-1420f, -541f, var_0.b.x, var_0.b.x))), _wgslsmith_add_vec2_u32(vec2<u32>(var_3.x, 99194u), ~var_0.c.yy))).b, firstLeadingBit(var_1.b.d.yy));
    return var_1.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1221f, 529f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-330f, -398f)))))) + _wgslsmith_f_op_vec2_f32(func_6(_wgslsmith_div_vec2_i32(u_input.c, u_input.b), func_5(func_1()))));
    let var_1 = vec2<bool>(all(!func_3()), any(select(vec2<bool>(true, true), !func_3().wy, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false))))));
    let var_2 = true;
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, 1163f))) * vec2<f32>(_wgslsmith_f_op_f32(1238f * -1235f), 242f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(_wgslsmith_f_op_vec2_f32(func_6(u_input.b, Struct_5(vec3<bool>(true, var_1.x, var_2), var_1))).x, _wgslsmith_f_op_f32(select(var_0.x, var_0.x, var_2)))), true))));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(func_4(vec4<u32>(u_input.d.x, u_input.d.x << (0u % 32u), countOneBits(40956u), _wgslsmith_add_u32(u_input.d.x, 45717u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.d.x, u_input.d.x, u_input.d.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 34628u, u_input.d.x), vec4<u32>(1u, 0u, u_input.d.x, 9249u), vec4<u32>(u_input.d.x, u_input.d.x, 77008u, u_input.d.x))), vec2<bool>(u_input.d.x <= 4294967295u, var_2), _wgslsmith_sub_vec2_i32(u_input.a, ~vec2<i32>(u_input.b.x, u_input.a.x))).b, func_4(~(~vec4<u32>(12567u, 0u, 58388u, u_input.d.x)), ~vec4<u32>(u_input.d.x, 62090u, 0u, u_input.d.x) | ~vec4<u32>(27077u, u_input.d.x, u_input.d.x, 19543u), func_3().xw, u_input.c).b)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-829f, var_0.x))));
    var var_3 = Struct_4(vec3<u32>(u_input.d.x, ~u_input.d.x, 1u), Struct_2(-33753i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(646f, var_0.x) - vec2<f32>(-1586f, -151f)))), vec4<u32>(42703u, _wgslsmith_dot_vec2_u32(u_input.d & vec2<u32>(2623u, u_input.d.x), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 97349u), u_input.d)), ~(0u >> (u_input.d.x % 32u)), func_1().d.x), vec3<i32>(16006i, 1i, u_input.c.x >> (~u_input.d.x % 32u))));
    var var_4 = _wgslsmith_f_op_f32(-var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x - 1000f), var_3.b.b.x, _wgslsmith_f_op_vec2_f32(func_6(u_input.c, func_5(Struct_1(var_0.x, vec2<bool>(true, var_1.x), vec4<f32>(var_3.b.b.x, var_0.x, 1095f, 686f), u_input.d)))).x, -1846f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(737f, -489f, var_0.x, var_3.b.b.x)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, var_0.x, var_3.b.b.x), vec4<f32>(-988f, 1000f, 2753f, var_0.x)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(128f, var_3.b.b.x, var_3.b.b.x, var_0.x)))))), func_4(var_3.b.c, vec4<u32>(firstTrailingBit(1u) << (firstTrailingBit(4294967295u) % 32u), max(~var_3.b.c.x, countOneBits(u_input.d.x)), _wgslsmith_add_u32(u_input.d.x, 8220u), firstTrailingBit(var_3.b.c.x) | 4294967295u), vec2<bool>(var_1.x, _wgslsmith_f_op_f32(-var_0.x) <= _wgslsmith_f_op_f32(max(-1067f, 1637f))), select(~reverseBits(vec2<i32>(27502i, 2147483647i)), reverseBits(abs(vec2<i32>(-8179i, 3627i))), var_1)).d);
}

