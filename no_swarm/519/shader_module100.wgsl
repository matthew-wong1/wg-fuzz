struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    let var_0 = Struct_3((~1u >> (~(u_input.a.x ^ 101916u) % 32u)) >> (abs(~39529u) % 32u), Struct_2(Struct_1(~_wgslsmith_div_u32(u_input.a.x, u_input.a.x), vec4<bool>(true, true, true, true), vec2<i32>(-17914i, 20573i)), vec2<i32>(-u_input.b, -u_input.b)), vec3<bool>(all(vec4<bool>(any(vec3<bool>(true, false, true)), true, all(vec2<bool>(true, false)), true)), all(vec4<bool>(true, true, true, true)), true), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-232f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(-1613f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(785f)))))));
    var var_1 = vec2<u32>(42215u, _wgslsmith_div_u32(firstLeadingBit(35196u) ^ _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 32070u, 14711u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 50902u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u))), ~abs(1u) ^ ~var_0.b.a.a));
    var_1 = ~(~select(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(1446u, var_1.x), vec2<u32>(1u, 29344u))), firstTrailingBit(vec2<u32>(u_input.a.x, 30203u) | vec2<u32>(4294967295u, var_1.x)), var_0.c.zx));
    return var_0.b.a.a;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(-2541f));
    var var_1 = Struct_4(countOneBits(~firstLeadingBit(vec3<u32>(14726u, 0u, arg_2.a))) ^ vec3<u32>(select(arg_0.a | u_input.a.x, firstTrailingBit(u_input.a.x), arg_2.b.x | false), arg_2.a, u_input.a.x), Struct_3(arg_1, Struct_2(Struct_1(func_3(), select(vec4<bool>(arg_0.b.x, arg_2.b.x, arg_0.b.x, arg_2.b.x), vec4<bool>(true, true, true, arg_0.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, true, arg_0.b.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2.c.x, 16926i), arg_0.c, vec2<i32>(arg_2.c.x, 0i))), ~firstLeadingBit(vec2<i32>(0i, u_input.b))), select(arg_2.b.zyw, !select(arg_2.b.xyx, vec3<bool>(false, arg_2.b.x, arg_0.b.x), arg_0.b.wyw), all(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-741f, -1044f, -1488f, 280f), vec4<f32>(802f, 105f, 1000f, -1380f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(830f, -142f, 1132f, 1000f) + vec4<f32>(118f, -1000f, -225f, -355f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1445f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1534f * -286f) + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2005f)))), -(-reverseBits(vec4<i32>(arg_0.c.x, 76184i, 12589i, arg_2.c.x)) << (~vec4<u32>(54572u, arg_2.a, u_input.a.x, arg_0.a) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1418f);
    var_0 = 1f;
    let var_3 = Struct_1(_wgslsmith_dot_vec3_u32(var_1.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, ~3257u, 3739u), firstTrailingBit(select(var_1.a, vec3<u32>(4294967295u, 14381u, 4294967295u), arg_0.b.zww)), vec3<u32>(countOneBits(arg_2.a), 1u, _wgslsmith_sub_u32(var_1.a.x, 0u)))), var_1.b.b.a.b, reverseBits(min(-vec2<i32>(arg_0.c.x, arg_2.c.x), firstLeadingBit(vec2<i32>(8599i, u_input.b)))));
    return _wgslsmith_add_u32(~0u, func_3());
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = abs(-vec4<i32>(~arg_0, -12610i & _wgslsmith_mult_i32(arg_0, arg_0), u_input.b, ~(-63479i)));
    let var_1 = ~vec4<u32>(1u, u_input.a.x, ~func_2(Struct_1(21374u, vec4<bool>(true, true, true, false), vec2<i32>(u_input.b, var_0.x)), 1u, Struct_1(1u, vec4<bool>(true, true, false, false), vec2<i32>(arg_0, 21765i))), 1u);
    var_0 = vec4<i32>(u_input.b, ~reverseBits(u_input.b), var_0.x, ~(countOneBits(max(38854i, u_input.b)) << ((~79294u & var_1.x) % 32u)));
    var var_2 = 332f;
    var_0 = _wgslsmith_mod_vec4_i32(firstLeadingBit(-_wgslsmith_add_vec4_i32(select(vec4<i32>(18937i, -39616i, var_0.x, arg_0), vec4<i32>(44155i, -8828i, u_input.b, 1i), false), -vec4<i32>(var_0.x, 26755i, arg_0, arg_0))), firstTrailingBit(vec4<i32>(50033i, min(var_0.x >> (var_1.x % 32u), abs(1i)), _wgslsmith_dot_vec2_i32(-var_0.wy, min(vec2<i32>(arg_0, 2147483647i), var_0.ww)), var_0.x)));
    return _wgslsmith_f_op_f32(trunc(439f));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: i32, arg_3: i32) -> u32 {
    var var_0 = arg_2;
    var_0 = arg_2;
    var var_1 = 842f;
    let var_2 = vec2<u32>(22976u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(32514u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 68193u, 71361u)) & u_input.a.x);
    var var_3 = Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 62835u, abs(82035u), var_2.x | var_2.x), vec4<u32>(var_2.x, var_2.x, _wgslsmith_sub_u32(~var_2.x, var_2.x), 56359u)), vec4<bool>(all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)))), true, true), ~(~(-vec2<i32>(arg_3, 45594i))) & vec2<i32>(~5057i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3, u_input.b, arg_2, -3382i), vec4<i32>(u_input.b, arg_3, arg_3, arg_2)) ^ u_input.b));
    return 0u << (~(_wgslsmith_add_u32(u_input.a.x, var_2.x) << (~_wgslsmith_add_u32(var_3.a, 3057u) % 32u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(1i >> (u_input.a.x % 32u));
    var var_1 = func_4(_wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec4_i32(~(vec4<i32>(u_input.b, u_input.b, u_input.b, 0i) | vec4<i32>(45925i, 1i, u_input.b, u_input.b)), -(vec4<i32>(-50726i, -1i, u_input.b, u_input.b) >> (vec4<u32>(1u, u_input.a.x, 120191u, 1u) % vec4<u32>(32u)))))), vec4<f32>(-429f, 361f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1322f))), -1608f), u_input.b, _wgslsmith_dot_vec3_i32(firstLeadingBit(select(vec3<i32>(-1i, u_input.b, 0i), -vec3<i32>(-21220i, -26468i, 2920i), false)), max(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<i32>(-48377i, -9824i, -8777i)), firstLeadingBit(vec3<i32>(-2147483647i, 1i, 0i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(~(~(-16533i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(605f, -2323f, false))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(729f)) * 1753f))), max(-firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -23844i), vec2<i32>(25015i, 35721i))), ~abs(vec2<i32>(u_input.b, -1944i) | vec2<i32>(0i, u_input.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(u_input.b)), 715f)), -799f, _wgslsmith_f_op_f32(func_1(u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2339f * 1500f) + _wgslsmith_f_op_f32(158f + 560f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(160f, -789f, 842f, 525f))), vec4<f32>(-822f, -826f, 641f, 1331f)) + vec4<f32>(_wgslsmith_div_f32(-920f, -523f), -945f, _wgslsmith_f_op_f32(370f + -785f), _wgslsmith_f_op_f32(floor(314f))))));
}

