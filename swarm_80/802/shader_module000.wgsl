struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_5) -> bool {
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, 1277f, 957f, -1235f)))) * vec4<f32>(arg_2.a.x, 1424f, arg_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), min(abs(arg_1), 9498i));
    let var_1 = !select(select(!select(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b), vec4<bool>(false, arg_0.b, false, arg_0.b), true), vec4<bool>(arg_0.b, arg_0.c, true, false), select(!vec4<bool>(true, false, false, arg_0.b), select(vec4<bool>(arg_0.c, false, arg_0.c, false), vec4<bool>(false, false, true, false), vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b)), !vec4<bool>(arg_0.b, arg_0.b, false, arg_0.c))), select(vec4<bool>(!arg_0.b, 4294967295u == u_input.b, true, false), !vec4<bool>(true, true, arg_0.b, arg_0.c), false), vec4<bool>(true, (i32(-1i) * -1i) != var_0.b, all(vec3<bool>(false, false, true)), true));
    let var_2 = arg_1;
    var var_3 = Struct_3(Struct_2(var_1.zzz, var_1.yyz, vec3<bool>(0i <= _wgslsmith_mod_i32(u_input.c, -1i), arg_0.a.x == firstTrailingBit(-1586i), false)), u_input.a);
    var var_4 = _wgslsmith_clamp_i32(18231i, -(i32(-1i) * -1097i), arg_0.a.x);
    return var_1.x;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(861f * -804f), _wgslsmith_f_op_f32(-arg_0))), arg_2.x, arg_2.x);
    let var_1 = arg_3;
    var var_2 = Struct_3(arg_3, u_input.e);
    var_2 = Struct_3(Struct_2(vec3<bool>(!(u_input.a != u_input.a), true, all(select(vec3<bool>(true, var_1.a.x, false), vec3<bool>(true, true, arg_3.b.x), vec3<bool>(arg_3.a.x, arg_3.c.x, arg_3.c.x)))), vec3<bool>(func_3(Struct_1(vec4<i32>(11324i, -2147483647i, -39258i, 47710i), var_1.b.x, var_1.a.x, vec2<u32>(0u, var_2.b)), u_input.d, Struct_5(vec4<f32>(347f, 1855f, arg_1, arg_2.x), u_input.c)), !arg_3.b.x, (arg_2.x >= 431f) || false), var_1.a), ~11097u);
    let var_3 = ~firstLeadingBit(firstTrailingBit(vec2<u32>(4294967295u, u_input.e)) & firstTrailingBit(abs(vec2<u32>(var_2.b, u_input.e))));
    return arg_3;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec3<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(-909f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1263f)), _wgslsmith_div_f32(1629f, -2660f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-676f, -216f) * vec2<f32>(1010f, 388f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-832f, -754f) - vec2<f32>(1216f, 392f))))));
    let var_1 = countOneBits(~51286u);
    let var_2 = vec2<u32>(1u, ~u_input.b);
    let var_3 = Struct_4(arg_1.a);
    var var_4 = arg_1.a.b;
    return Struct_4(Struct_2(select(var_3.a.a, !vec3<bool>(true, false, var_4.x), false), !var_3.a.b, vec3<bool>(true, var_3.a.a.x, true)));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> Struct_5 {
    var var_0 = _wgslsmith_sub_vec2_u32(abs(vec2<u32>(4294967295u, u_input.a)), abs(vec2<u32>(0u, _wgslsmith_mod_u32(4307u, _wgslsmith_add_u32(u_input.e, arg_0)))));
    let var_1 = func_4(true, Struct_4(func_2(-660f, _wgslsmith_f_op_f32(1000f + 2251f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(281f, 815f)), Struct_2(vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)))), vec3<bool>(func_3(Struct_1(select(vec4<i32>(u_input.d, u_input.d, 2147483647i, -9689i), vec4<i32>(19949i, -46706i, -1i, 54737i), true), true, true, min(vec2<u32>(23261u, var_0.x), vec2<u32>(4294967295u, u_input.b))), -1i, Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1899f, -166f, -336f, -791f)), 2147483647i)), true, true));
    var_0 = ~(~min(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(19123u, 4294967295u), vec2<u32>(arg_0, 4294967295u)), firstTrailingBit(vec2<u32>(arg_0, 0u))), select(vec2<u32>(arg_0, var_0.x) >> (vec2<u32>(u_input.e, arg_0) % vec2<u32>(32u)), vec2<u32>(14906u, u_input.a), var_1.a.c.x)));
    var_0 = vec2<u32>(u_input.b, arg_0) >> (abs(vec2<u32>(~arg_0, firstTrailingBit(~var_0.x))) % vec2<u32>(32u));
    var var_2 = Struct_4(Struct_2(vec3<bool>(!any(vec3<bool>(var_1.a.c.x, var_1.a.b.x, false)), var_1.a.a.x, var_1.a.a.x), select(select(!vec3<bool>(var_1.a.c.x, var_1.a.a.x, false), vec3<bool>(true, var_1.a.b.x, var_1.a.c.x), select(var_1.a.a, vec3<bool>(true, false, false), true)), var_1.a.b, vec3<bool>(true, var_0.x >= 4294967295u, func_4(false, Struct_4(var_1.a), var_1.a.b).a.a.x)), select(select(!vec3<bool>(var_1.a.c.x, true, false), !vec3<bool>(var_1.a.b.x, var_1.a.b.x, var_1.a.b.x), vec3<bool>(false, var_1.a.a.x, false)), !var_1.a.a, true)));
    return Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(min(1000f, -504f)), _wgslsmith_f_op_f32(208f - -124f), _wgslsmith_f_op_f32(-2290f + 1000f), _wgslsmith_f_op_f32(-1456f - -542f))))), reverseBits(u_input.c));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_5) -> vec4<f32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1(u_input.b, arg_0.yy).a.x) + 300f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1327f + 172f) * _wgslsmith_f_op_f32(-arg_1.a.x)), arg_1.a.x))), _wgslsmith_f_op_f32(max(1869f, func_1(u_input.b, -firstLeadingBit(arg_0.zx)).a.x)), arg_1.a.x);
    var var_1 = arg_1;
    var var_2 = func_4(false, func_4(false, Struct_4(func_4(true, func_4(true, Struct_4(Struct_2(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)).a), !vec3<bool>(false, true, arg_0.x > 1i)), vec3<bool>(!(false | func_2(var_1.a.x, 186f, var_0.xx, Struct_2(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))).c.x), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false)), true));
    var var_3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.a.x))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x)))), arg_1.a.xyx));
    var_2 = Struct_4(var_2.a);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1574f - -1835f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.a.x, -458f, true)) + _wgslsmith_f_op_f32(f32(-1f) * -449f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, var_0.x) * _wgslsmith_f_op_f32(410f * -1051f))), vec4<bool>(true, true, var_2.a.a.x, any(!var_2.a.b)))) - func_1(_wgslsmith_sub_u32(~u_input.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(10969u, 5064u), vec2<u32>(u_input.b, u_input.a)) % 32u), _wgslsmith_add_u32(select(0u, u_input.e, false), ~4294967295u)), arg_0.xz).a);
}

fn func_6(arg_0: vec2<f32>, arg_1: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(round(arg_1.x))));
    let var_1 = Struct_3(func_2(arg_0.x, 1145f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 - vec2<f32>(arg_0.x, arg_1.x)) + arg_0)), func_4(false, Struct_4(func_2(565f, arg_1.x, vec2<f32>(-1000f, arg_0.x), Struct_2(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), vec3<bool>(true, false, false)).a), ~(~_wgslsmith_clamp_u32(0u, _wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.e), 16673u)));
    var var_2 = !var_1.a.b.yy;
    var var_3 = -23111i;
    var_2 = vec2<bool>(true, any(func_4(arg_0.x <= _wgslsmith_f_op_f32(abs(arg_0.x)), Struct_4(var_1.a), vec3<bool>(var_2.x, any(var_1.a.c.xx), var_2.x)).a.a));
    return _wgslsmith_f_op_f32(arg_1.x * func_1(var_1.b, select(firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, 0i), vec2<i32>(u_input.d, 3625i))), _wgslsmith_sub_vec2_i32(abs(vec2<i32>(-21561i, u_input.c)), vec2<i32>(u_input.d, -1i) ^ vec2<i32>(-2147483647i, 1i)), any(vec4<bool>(var_2.x, false, var_2.x, true)))).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(u_input.b << (0u % 32u), _wgslsmith_add_u32(u_input.b, u_input.e));
    let var_1 = _wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -330f), vec2<f32>(443f, 1325f)))))))), _wgslsmith_div_vec4_f32(vec4<f32>(543f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -295f), -446f), 1100f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1373f))))), _wgslsmith_f_op_vec4_f32(func_5(vec3<i32>(-u_input.c, ~2147483647i, u_input.d), func_1(~var_0, ~vec2<i32>(u_input.d, -1i)))))));
    var var_2 = func_1(4294967295u, vec2<i32>(-u_input.c, min(u_input.c, 37663i)));
    var var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(~vec4<u32>(var_0, 4294967295u, 6529u, 4294967295u), vec4<u32>(11751u, u_input.b, ~1u, ~6394u), vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, true)))), abs(vec4<u32>(max(4294967295u, var_0), firstTrailingBit(77918u), 1u, u_input.b >> (0u % 32u)))), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(u_input.e, u_input.e, u_input.e, var_0) & vec4<u32>(38065u, 0u, 1u, u_input.a)), vec4<u32>(~var_0, _wgslsmith_clamp_u32(32495u, 0u, u_input.e), _wgslsmith_add_u32(24165u, var_0), u_input.a), max(vec4<u32>(u_input.a, 49504u, u_input.b, 2723u), vec4<u32>(59477u, u_input.a, u_input.b, u_input.a)) >> (vec4<u32>(0u, u_input.a, u_input.b, 0u) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(var_0, 29862u, 82091u, 1u)) | countOneBits(vec4<u32>(var_0, 1u, 61997u, 109326u)), firstLeadingBit(vec4<u32>(var_0, var_0, 31120u, u_input.e) >> (vec4<u32>(u_input.b, 0u, 4294967295u, u_input.a) % vec4<u32>(32u))))));
    var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_2.a))) * func_1(u_input.b, vec2<i32>(-1i, -47795i) & vec2<i32>(-34762i, u_input.d)).a) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-448f, -518f, -950f, var_1) + var_2.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-978f, 1271f, var_1, var_1) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.a.x, -333f, var_2.a.x, -116f)))))), u_input.c);
    var var_4 = 522f;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec2<u32>(max(u_input.a, 12470u), 61475u)), -vec2<i32>(-40412i, 0i), var_2.a.x, countOneBits(~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 1u, var_0), vec4<u32>(var_0, u_input.e, var_0, 80600u)))));
}

