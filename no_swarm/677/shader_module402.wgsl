struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec4<bool>) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-982f, 2173f))), vec2<f32>(1135f, -481f))))), 25382i, ~arg_0, u_input.a);
    var_0 = Struct_1(vec2<f32>(1f, var_0.a.x), ~firstTrailingBit(~_wgslsmith_sub_i32(-17715i, -2147483647i)), vec4<i32>(arg_0.x, max(_wgslsmith_sub_i32(var_0.c.x | -854i, 0i), var_0.c.x), -14776i, var_0.c.x), abs(_wgslsmith_div_u32(firstLeadingBit(51390u), var_0.d)));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(2177f, -110f), var_0.a)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.x)) * var_0.a.x), -1169f)), arg_0.x, -arg_0, ~_wgslsmith_mult_u32(u_input.a >> (39168u % 32u), 51328u));
    var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -113f) * var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -206f))))), ~2147483647i, min(var_0.c, var_0.c), ~abs(4294967295u >> (0u % 32u)));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(var_0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, -1076f) + vec2<f32>(var_0.a.x, var_0.a.x))))))), var_0.c.x, vec4<i32>(arg_0.x, ~arg_0.x ^ -var_0.c.x, 1i, -62346i) << (_wgslsmith_div_vec4_u32(select(~vec4<u32>(u_input.a, u_input.a, var_0.d, 0u), ~vec4<u32>(u_input.a, 59959u, var_0.d, 0u), arg_2.x), ~countOneBits(vec4<u32>(var_0.d, u_input.a, var_0.d, 1u))) % vec4<u32>(32u)), _wgslsmith_mult_u32(var_0.d, u_input.a));
    return var_0.a.x >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.x), -101f, false))));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_3(all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false))));
    let var_1 = select(select(vec4<bool>(1450f > _wgslsmith_f_op_f32(min(arg_2.x, 114f)), !(!var_0.a), func_3(vec4<i32>(arg_0, -33069i, arg_0, -2147483647i), vec2<bool>(false, var_0.a), !vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)), true), vec4<bool>(var_0.a, false, 4294967295u <= u_input.a, true), false), vec4<bool>(!(!any(vec4<bool>(false, var_0.a, var_0.a, var_0.a))), var_0.a, any(select(!vec4<bool>(true, var_0.a, var_0.a, var_0.a), !vec4<bool>(var_0.a, false, var_0.a, var_0.a), true)), !var_0.a), -_wgslsmith_sub_i32(arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1.x, arg_0, arg_1.x), vec4<i32>(arg_0, 20274i, arg_1.x, arg_0))) <= _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_div_i32(arg_1.x, arg_1.x)), i32(-1i) * -1i));
    let var_2 = arg_1.x;
    var_0 = Struct_3(!(true | var_1.x));
    let var_3 = Struct_2(max(reverseBits(vec2<u32>(28093u, 1u) ^ firstLeadingBit(vec2<u32>(u_input.a, u_input.a))), _wgslsmith_mod_vec2_u32(vec2<u32>(abs(u_input.a), ~u_input.a), ~firstLeadingBit(vec2<u32>(80394u, 23508u)))), vec2<f32>(arg_2.x, -561f));
    return Struct_1(vec2<f32>(-1324f, _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_div_i32(firstLeadingBit(-37212i), _wgslsmith_mult_i32(reverseBits(arg_1.x), select(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, -26767i), arg_1), var_0.a))), _wgslsmith_mod_vec4_i32(~firstTrailingBit(vec4<i32>(2147483647i, arg_1.x, 47818i, var_2) >> (vec4<u32>(u_input.a, var_3.a.x, var_3.a.x, u_input.a) % vec4<u32>(32u))), vec4<i32>(-15114i, arg_1.x, 1i, firstTrailingBit(_wgslsmith_mult_i32(var_2, -2147483647i)))), _wgslsmith_mult_u32(var_3.a.x, var_3.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32) -> Struct_3 {
    let var_0 = vec3<i32>(~_wgslsmith_mod_i32(arg_0.c.x, arg_0.b), arg_1.x, arg_1.x);
    var var_1 = arg_0;
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.a, vec2<f32>(var_1.a.x, -395f), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))))), firstTrailingBit(var_1.b), var_1.c, 59851u);
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.a), -19894i, vec4<i32>(firstTrailingBit(2748i) ^ var_1.c.x, -2147483647i, ~abs(-31669i), min((arg_0.b | var_0.x) & var_0.x, firstTrailingBit(i32(-1i) * -2147483647i))), func_2(~_wgslsmith_div_i32(arg_0.b, i32(-1i) * -1i), vec2<i32>(i32(-1i) * -8701i, reverseBits(~(-2147483647i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1828f, arg_0.a.x, -653f, -316f), vec4<f32>(var_1.a.x, 1000f, var_1.a.x, -828f), true))) * vec4<f32>(_wgslsmith_f_op_f32(round(-201f)), _wgslsmith_f_op_f32(trunc(var_1.a.x)), -370f, -922f))).d);
    var var_2 = Struct_3(func_3(vec4<i32>(1i, -33072i, _wgslsmith_mult_i32(2147483647i, 1i), var_0.x & -1i), vec2<bool>(true, any(vec3<bool>(false, true, true))), vec4<bool>(135f > var_1.a.x, select(false, true, false), true, true)) & all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))));
    return Struct_3(all(vec2<bool>(true, func_3(arg_0.c, vec2<bool>(var_2.a, true), vec4<bool>(var_2.a, var_2.a, var_2.a, true)))) != any(!vec3<bool>(true, var_2.a, var_2.a)));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_3 {
    var var_0 = Struct_2(select(reverseBits(vec2<u32>(57950u, func_2(-20344i, vec2<i32>(-5984i, -9753i), vec4<f32>(arg_1.x, -481f, 1523f, 533f)).d)), countOneBits(vec2<u32>(0u, _wgslsmith_mult_u32(u_input.a, u_input.a))), arg_0.a), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2414f))), arg_1.x));
    let var_1 = Struct_2(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -481f) + var_0.b) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.yz) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, 1026f))))));
    let var_2 = Struct_2(abs(vec2<u32>(4294967295u, abs(~24300u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2047f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(803f - -1000f) + var_0.b.x))));
    var_0 = var_2;
    let var_3 = select(vec4<bool>(all(select(select(vec2<bool>(true, false), vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, arg_0.a)), vec2<bool>(false, false), vec2<bool>(arg_0.a, arg_0.a))), true, true, select(arg_0.a, true, !(!arg_0.a))), !select(!select(vec4<bool>(false, arg_0.a, true, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true), arg_0.a), !select(vec4<bool>(false, true, true, arg_0.a), vec4<bool>(false, false, true, false), vec4<bool>(arg_0.a, arg_0.a, false, false)), select(true, true, !arg_0.a)), any(select(vec2<bool>(-489f > var_2.b.x, any(vec4<bool>(arg_0.a, true, false, false))), vec2<bool>(true, true), true)));
    return Struct_3(true);
}

fn func_1() -> i32 {
    var var_0 = func_5(func_4(func_2(firstLeadingBit(-1i) >> (u_input.a % 32u), min(vec2<i32>(-24121i, 1i), vec2<i32>(2147483647i, 32052i)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(798f, 138f, -1467f, 270f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(383f, 415f, 1470f, -282f), vec4<f32>(-325f, 2225f, -764f, -924f)))))), ~abs(-vec3<i32>(2147483647i, -2147483647i, -1i)), func_2(max(i32(-1i) * -2147483647i, 9748i), max(vec2<i32>(-1i, 22988i), vec2<i32>(0i, 1i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-469f, 161f, -1118f, -1088f))).d), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(202f, 380f, 302f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-297f, -554f, -1142f)), true)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(sign(-1161f)), _wgslsmith_f_op_f32(f32(-1f) * -543f)))), vec3<f32>(-987f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -414f)), 929f))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-402f, 1386f)))))), abs(_wgslsmith_clamp_i32(min(~43i, _wgslsmith_dot_vec3_i32(vec3<i32>(234i, 1i, -1115i), vec3<i32>(32820i, 1i, 47736i))), reverseBits(~(-23413i)), 1i)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 1i, -countOneBits(36157i), _wgslsmith_mod_i32(i32(-1i) * -23149i, 1i)), _wgslsmith_mod_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -1i, 0i, 2147483647i), vec4<i32>(0i, 43725i, -15295i, -34520i)), vec4<i32>(i32(-1i) * -2147483647i, 0i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-6240i, 1i, -1i, -2147483647i), vec4<i32>(-2147483647i, -1i, 1i, 61958i))))), u_input.a);
    var var_2 = ~vec2<u32>(~(~abs(101737u)), _wgslsmith_sub_u32(~(~4294967295u), 4294967295u));
    var var_3 = ~(-(~firstLeadingBit(_wgslsmith_add_i32(18816i, var_1.b))));
    let var_4 = select(min(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 14435u & var_1.d), u_input.a & (13889u | var_2.x), ~1595u, _wgslsmith_sub_u32(u_input.a ^ 60422u, reverseBits(29602u))), ~(~vec4<u32>(32144u, u_input.a, var_2.x, var_2.x))), ~select(select(~vec4<u32>(var_1.d, 99872u, 4294967295u, 14356u), vec4<u32>(1u, var_1.d, var_2.x, 4294967295u), !vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.d, var_1.d, 4294967295u, 4294967295u), vec4<u32>(25643u, u_input.a, 4294967295u, 0u)), select(!vec4<bool>(var_0.a, true, true, false), !vec4<bool>(false, var_0.a, false, var_0.a), true)), !vec4<bool>(true || select(var_0.a, var_0.a, true), false, true, true & (var_1.c.x != var_1.b)));
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1146f))))), ~(~(0i >> (u_input.a % 32u))) | _wgslsmith_sub_i32(-func_1(), func_1()), ~select(reverseBits(vec4<i32>(16202i, -60584i, -2147483647i, -2147483647i)), firstLeadingBit(select(vec4<i32>(2147483647i, -29107i, -2147483647i, -1i), vec4<i32>(-10860i, 8014i, -16406i, 640i), vec4<bool>(false, true, false, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false))), ~(~(~u_input.a)));
    var_0 = func_2(var_0.b, var_0.c.xw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x) * vec4<f32>(var_0.a.x, var_0.a.x, 287f, var_0.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-256f, 473f, var_0.a.x, -1024f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1089f, var_0.a.x, var_0.a.x, var_0.a.x) + vec4<f32>(-1524f, var_0.a.x, 267f, -2634f)))))));
    let var_1 = vec4<f32>(var_0.a.x, var_0.a.x, -155f, 702f);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-130f, var_0.a.x)), var_0.a.x) + _wgslsmith_f_op_vec2_f32(var_0.a + _wgslsmith_div_vec2_f32(var_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-923f, var_0.a.x))))), var_0.c.x, ~(var_0.c & (_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c.x, -19861i, -2147483647i, var_0.b), var_0.c) >> (~vec4<u32>(u_input.a, 4294967295u, u_input.a, var_0.d) % vec4<u32>(32u)))), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.d, var_0.d, u_input.a), vec3<u32>(4294967295u, var_0.d, 15728u)))), ~u_input.a | reverseBits(u_input.a)));
    let var_2 = func_2(var_0.c.x, abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.b & var_0.b, var_0.c.x << (17109u % 32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(-8190i, var_0.c.x), vec2<i32>(-14245i, 35841i) | var_0.c.wx), _wgslsmith_sub_vec2_i32(vec2<i32>(-32538i, var_0.b), var_0.c.yw) << ((vec2<u32>(23429u, u_input.a) ^ vec2<u32>(1u, var_0.d)) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1) + vec4<f32>(var_0.a.x, 217f, var_1.x, -881f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(770f, var_1.x, var_1.x, var_1.x) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-815f, 1059f, -1000f, 920f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x) - vec4<f32>(-1177f, var_0.a.x, -639f, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_0.a.x, var_1.x, 487f) * var_1), var_0.d != 34515u)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, select(~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 27361u, var_0.d), vec3<u32>(43485u, 0u, 37095u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.d, u_input.a, var_0.d), vec3<u32>(var_2.d, var_0.d, 28211u))), abs(~vec3<u32>(u_input.a, 40358u, var_2.d)) >> (vec3<u32>(abs(0u), 0u, select(1u, var_2.d, false)) % vec3<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.x), -307f) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), -1647f))));
}

