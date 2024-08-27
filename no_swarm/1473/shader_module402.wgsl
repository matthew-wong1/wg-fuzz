struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<f32> {
    let var_0 = 11751i;
    let var_1 = Struct_1(~u_input.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1656f) - _wgslsmith_f_op_f32(f32(-1f) * -582f)), _wgslsmith_f_op_f32(ceil(-1178f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 564f)), _wgslsmith_f_op_f32(f32(-1f) * -759f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1203f, -2451f, -304f, 1476f) - vec4<f32>(-1005f, 1609f, -683f, 246f)))) * vec4<f32>(_wgslsmith_f_op_f32(sign(1557f)), -1202f, 842f, _wgslsmith_f_op_f32(295f - -370f))), true)), ~(_wgslsmith_div_vec4_u32(~vec4<u32>(59745u, u_input.b.x, 0u, u_input.b.x), vec4<u32>(4294967295u, 1u, u_input.b.x, u_input.b.x)) >> (vec4<u32>(0u, select(u_input.b.x, u_input.b.x, false), u_input.b.x, u_input.b.x) % vec4<u32>(32u))), firstTrailingBit(u_input.b), u_input.b);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_1.b))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_1.b, vec4<f32>(-2244f, var_1.b.x, -425f, var_1.b.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_1.b.zw)))), Struct_1(var_0, _wgslsmith_f_op_vec4_f32(var_1.b - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_1.b - vec4<f32>(-867f, -1691f, -604f, 354f))))), _wgslsmith_sub_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.d.x, 4294967295u, u_input.b.x, u_input.b.x), var_1.c)), vec4<u32>(reverseBits(var_1.c.x), 42713u, 1u, 1u)), reverseBits(select(~var_1.e, _wgslsmith_mod_vec2_u32(var_1.e, vec2<u32>(46014u, 29975u)), select(vec2<bool>(true, true), vec2<bool>(false, false), false))), ~u_input.b), Struct_1(-2147483647i, var_1.b, vec4<u32>(firstTrailingBit(4294967295u), abs(reverseBits(74022u)), _wgslsmith_mult_u32(86963u & u_input.b.x, abs(u_input.b.x)), 0u), ~var_1.d, vec2<u32>(56326u, 41871u)), -vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -3843i), vec2<i32>(2147483647i, 27232i)), -vec2<i32>(var_1.a, -2147483647i)), _wgslsmith_dot_vec3_i32(~vec3<i32>(var_0, u_input.a, -2147483647i), vec3<i32>(-25724i, -11313i, var_1.a))));
    let var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(~firstLeadingBit(4294967295u >> (1u % 32u)), (1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.x, u_input.b.x, var_1.c.x), vec3<u32>(var_2.c.c.x, 83374u, 36856u)) % 32u)) & var_2.c.d.x), vec2<u32>(~var_1.e.x, 14392u));
    var var_4 = var_2;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_4.d.b + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_4.a) - _wgslsmith_f_op_vec4_f32(-var_2.d.b))))));
}

fn func_2() -> i32 {
    var var_0 = true;
    let var_1 = Struct_2(vec4<f32>(-2667f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1334f))), -463f, -760f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(316f, -1121f) + -1002f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(287f, _wgslsmith_f_op_f32(390f - 862f))))), Struct_1(2496i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1520f, 1323f, -1347f, -1193f), vec4<f32>(-1837f, -1100f, -508f, -1350f)) * vec4<f32>(760f, -1000f, -557f, 1468f))), vec4<u32>(~u_input.b.x | abs(62702u), ~4294967295u >> (u_input.b.x % 32u), u_input.b.x, 4294967295u), ~u_input.b, abs(u_input.b)), Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1245f, -698f, 439f, -269f)))))), reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(7798u, 4294967295u, 4570u, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x))), abs(min(~vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.b.x, 54451u))), u_input.b), select(vec2<i32>(u_input.a, ~(62398i ^ u_input.a)), -(-vec2<i32>(0i, -37793i) << (firstTrailingBit(vec2<u32>(u_input.b.x, 80167u)) % vec2<u32>(32u))), true));
    var var_2 = select(~_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(var_1.c.c.x, 4294967295u)), var_1.d.e), 0u, -846i > _wgslsmith_mult_i32(2147483647i, ~u_input.a));
    var_2 = 0u;
    var_0 = true;
    return _wgslsmith_clamp_i32(var_1.c.a, -2147483647i, u_input.a);
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> Struct_1 {
    var var_0 = func_2() ^ -2147483647i;
    var_0 = firstLeadingBit(-_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.a, -72177i), vec4<i32>(u_input.a, 2147483647i, u_input.a, 1i)), _wgslsmith_add_i32(u_input.a, 0i)), -vec2<i32>(u_input.a, u_input.a)));
    var var_1 = _wgslsmith_mult_i32(~(-25314i), -(~reverseBits(firstTrailingBit(0i))));
    var_1 = ~_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a, ~max(u_input.a, u_input.a)), -u_input.a);
    let var_2 = select(select(!select(select(arg_0, vec4<bool>(true, arg_1, false, arg_1), arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1), arg_1), vec4<bool>(!arg_1, true, false, !all(vec4<bool>(false, arg_1, true, true))), arg_0), select(vec4<bool>(true, !(true & arg_1), true, !any(vec4<bool>(arg_1, false, arg_1, arg_0.x))), select(!(!vec4<bool>(arg_1, false, arg_1, true)), arg_0, select(!vec4<bool>(arg_1, true, false, false), !vec4<bool>(arg_0.x, arg_1, true, false), 1i >= u_input.a)), !arg_0), arg_1);
    return Struct_1(~(~u_input.a), vec4<f32>(-1185f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1623f + 705f)) + 1221f), 861f, _wgslsmith_f_op_f32(ceil(-256f))), ~vec4<u32>(0u, _wgslsmith_add_u32(~u_input.b.x, ~u_input.b.x), max(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, 0u))), ~u_input.b.x), _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(u_input.b.x, 21107u)), vec2<u32>(0u, u_input.b.x >> (u_input.b.x % 32u)), min(vec2<u32>(u_input.b.x, 57375u), countOneBits(u_input.b))) ^ ~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x)), ~u_input.b.x), ~_wgslsmith_add_vec2_u32(~(vec2<u32>(u_input.b.x, 15523u) | u_input.b), ~select(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(4294967295u, u_input.b.x), arg_0.wz)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), vec3<bool>(true, any(vec4<bool>(true, false, false, false)), true)), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), any(vec3<bool>(false, true, true))), true);
    var var_1 = arg_2;
    var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_vec3_f32(-arg_1.b.zyw);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1731f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1259f * arg_2.a.x) * arg_1.b.x), var_1.d.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(230f - 979f))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1634f, -601f, arg_0) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, 448f, arg_1.b.x, 324f) - arg_1.b))))), vec2<f32>(arg_1.b.x, -1280f), Struct_1(var_1.c.a | (-u_input.a | var_1.e.x), vec4<f32>(_wgslsmith_f_op_f32(-881f + _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(floor(func_1(vec4<bool>(var_0.x, var_0.x, true, false), var_0.x).b.x)), -1387f, 1f), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, 104472u, 4294967295u, 10800u), arg_1.c), vec2<u32>(0u, _wgslsmith_mult_u32(69967u << (arg_2.c.e.x % 32u), ~var_1.c.e.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.d.x, arg_1.e.x), _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.b.x), vec2<u32>(12357u, 20762u))) & arg_1.d), arg_1, ~select(~vec2<i32>(27544i, 5494i), vec2<i32>(0i, -u_input.a), !(!var_0.yy)));
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = select(all(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), false)) && (false == all(vec2<bool>(true, true))), true, false);
    let var_1 = arg_0.d;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -789f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1213f, _wgslsmith_f_op_f32(max(1118f, _wgslsmith_f_op_f32(arg_1.x + arg_0.c.b.x))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + 1088f) * _wgslsmith_f_op_f32(arg_0.b.x * -607f)))), _wgslsmith_f_op_f32(arg_0.d.b.x + _wgslsmith_f_op_f32(ceil(556f))));
    var var_3 = arg_0.d.c;
    var_3 = ~var_1.c ^ func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_1.x, -1716f)))) - var_2.x), var_1, Struct_2(func_4(var_2.x, Struct_1(u_input.a, var_1.b, var_1.c, vec2<u32>(8445u, 8102u), vec2<u32>(30726u, 17199u)), arg_0).c.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_2.x) + vec2<f32>(-1000f, 859f)) * var_2.yy), func_4(-317f, Struct_1(0i, arg_0.a, vec4<u32>(11669u, 4294967295u, 8912u, 1u), var_3.xz, vec2<u32>(var_3.x, 44606u)), arg_0).d, Struct_1(select(var_1.a, var_1.a, var_0), _wgslsmith_f_op_vec4_f32(abs(arg_0.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(64866u, 4294967295u, var_1.c.x, var_3.x), var_1.c), vec2<u32>(var_3.x, 0u), select(arg_0.c.e, vec2<u32>(var_3.x, 4294967295u), var_0)), -arg_0.e)).c.c;
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(1534f, Struct_1(51151i, arg_3.d.b, vec4<u32>(arg_0.c.c.x, u_input.b.x, arg_2, 1u), u_input.b, vec2<u32>(1u, 1u)), Struct_2(vec4<f32>(-147f, arg_3.c.b.x, 1853f, 879f), arg_3.c.b.zx, arg_0.c, arg_3.c, arg_0.e)).d.b + vec4<f32>(arg_1, arg_0.b.x, 1077f, arg_1)), _wgslsmith_div_vec4_f32(arg_0.d.b, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-617f, arg_3.d.b.x, arg_3.b.x, -267f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_3()).ww * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_3.c.b.zy))) - _wgslsmith_f_op_vec2_f32(-arg_0.a.zy))), func_5(Struct_2(_wgslsmith_f_op_vec4_f32(arg_0.d.b + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1211f, arg_3.b.x, -719f, arg_3.c.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.d.b.x, arg_1)) + arg_3.b), func_4(_wgslsmith_div_f32(arg_3.b.x, -121f), func_1(vec4<bool>(true, false, true, false), true), Struct_2(vec4<f32>(1000f, arg_1, arg_3.b.x, -411f), vec2<f32>(arg_3.b.x, arg_1), Struct_1(arg_3.e.x, arg_0.d.b, vec4<u32>(arg_0.c.e.x, arg_2, arg_2, arg_2), arg_0.d.e, vec2<u32>(u_input.b.x, 4294967295u)), Struct_1(arg_0.d.a, vec4<f32>(arg_1, -1971f, arg_1, arg_3.c.b.x), vec4<u32>(arg_3.c.c.x, arg_3.d.d.x, 1u, arg_2), arg_0.d.d, vec2<u32>(1u, arg_2)), arg_0.e)).c, Struct_1(0i, arg_0.c.b, reverseBits(arg_3.c.c), countOneBits(arg_3.d.e), select(arg_0.d.d, vec2<u32>(u_input.b.x, arg_2), vec2<bool>(true, true))), -reverseBits(vec2<i32>(2147483647i, u_input.a))), vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) * func_4(-1225f, Struct_1(2147483647i, vec4<f32>(arg_3.c.b.x, arg_0.c.b.x, arg_0.a.x, -115f), arg_0.c.c, vec2<u32>(0u, 37067u), u_input.b), Struct_2(arg_3.d.b, vec2<f32>(1122f, -586f), Struct_1(0i, arg_0.a, vec4<u32>(13637u, 1u, u_input.b.x, 1u), arg_3.d.c.yw, arg_3.d.c.zx), Struct_1(arg_3.d.a, arg_0.c.b, vec4<u32>(52399u, 24748u, 0u, 1u), u_input.b, vec2<u32>(arg_3.c.e.x, arg_3.d.c.x)), vec2<i32>(0i, 2147483647i))).a.x), _wgslsmith_f_op_f32(612f * -1216f), arg_3.b.x)).d, func_5(func_5(func_5(func_4(360f, Struct_1(11658i, vec4<f32>(arg_0.b.x, arg_0.a.x, arg_0.d.b.x, -564f), vec4<u32>(0u, 4294967295u, arg_0.c.e.x, 11972u), vec2<u32>(1u, 0u), u_input.b), Struct_2(arg_0.a, vec2<f32>(1000f, 380f), arg_0.d, arg_0.d, arg_0.e)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.b.x, 602f, 803f, arg_0.c.b.x)))), arg_0.a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a.x, 535f)) + arg_0.d.b.x), func_4(_wgslsmith_f_op_f32(-278f + arg_1), Struct_1(u_input.a, vec4<f32>(213f, arg_3.d.b.x, 1598f, arg_1), arg_3.c.c, u_input.b, arg_3.c.e), func_5(Struct_2(arg_3.d.b, vec2<f32>(arg_3.b.x, arg_0.c.b.x), arg_0.c, Struct_1(arg_3.d.a, vec4<f32>(arg_1, arg_0.a.x, 2010f, 481f), arg_3.d.c, vec2<u32>(58404u, 18538u), vec2<u32>(arg_2, arg_3.d.c.x)), arg_0.e), arg_0.a)).b.x, arg_0.a.x, 342f)).c, vec2<i32>(_wgslsmith_mult_i32(~arg_3.c.a, _wgslsmith_add_i32(-4061i, u_input.a)) | -55731i, -36849i));
    let var_1 = var_0.d;
    let var_2 = -463f;
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(577f, arg_0.c.b.x, 1017f, var_1.b.x))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2 * 435f), _wgslsmith_f_op_f32(sign(var_1.b.x)))), _wgslsmith_f_op_f32(func_4(-138f, Struct_1(u_input.a, arg_0.d.b, arg_0.c.c, var_0.c.e, u_input.b), Struct_2(var_0.a, arg_3.a.xx, var_0.d, Struct_1(1i, vec4<f32>(var_2, 189f, 1000f, var_0.b.x), var_1.c, vec2<u32>(1u, u_input.b.x), arg_0.c.d), vec2<i32>(2147483647i, var_0.d.a))).c.b.x - var_1.b.x)), _wgslsmith_f_op_vec2_f32(-var_0.b)), arg_3.d, func_5(Struct_2(_wgslsmith_f_op_vec4_f32(-arg_3.c.b), _wgslsmith_f_op_vec2_f32(var_0.a.zw * _wgslsmith_f_op_vec2_f32(abs(arg_0.d.b.ww))), arg_3.d, func_1(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false), false), vec2<i32>(~(-43908i), -590i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(var_1.b, vec4<f32>(arg_3.d.b.x, 1330f, var_2, -653f), vec4<bool>(false, true, false, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c.b.x, var_0.b.x, 491f, var_0.c.b.x)))), _wgslsmith_f_op_vec4_f32(-var_0.d.b))).c, arg_0.e);
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(var_0.d.b)))) - vec4<f32>(-308f, 551f, arg_1, -229f))), vec2<f32>(_wgslsmith_f_op_f32(arg_0.c.b.x + var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -866f))), arg_0.c, Struct_1(func_1(vec4<bool>(true, true, false, true), all(vec4<bool>(true, true, true, true))).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-133f, 284f, 1645f, arg_3.d.b.x), vec4<f32>(arg_0.a.x, -332f, 1000f, -308f), vec4<bool>(true, true, true, true)))), ~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(arg_3.d.c, arg_3.d.c), ~vec4<u32>(24713u, 41689u, arg_3.c.d.x, 50938u)), _wgslsmith_sub_vec2_u32(reverseBits(arg_0.c.e), _wgslsmith_mult_vec2_u32(arg_3.c.e, arg_0.d.c.wz >> (vec2<u32>(58722u, 72847u) % vec2<u32>(32u)))), ~select(_wgslsmith_mult_vec2_u32(var_0.d.d, vec2<u32>(0u, u_input.b.x)), arg_0.d.d, select(vec2<bool>(false, true), vec2<bool>(true, false), true))), vec2<i32>(_wgslsmith_add_i32(var_0.c.a, firstTrailingBit(u_input.a)), countOneBits(var_0.d.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1557f + -1187f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_1(vec4<bool>(true, true, true, true), u_input.a < u_input.a), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 184f, 1825f, -1031f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(498f, 1279f))), Struct_1(-2147483647i, vec4<f32>(-464f, -576f, -832f, 405f), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u), vec2<u32>(u_input.b.x, 1u), vec2<u32>(u_input.b.x, u_input.b.x)), Struct_1(-2147483647i, vec4<f32>(-1019f, 1560f, 377f, -201f), vec4<u32>(1u, u_input.b.x, 34260u, u_input.b.x), vec2<u32>(47770u, 1u), vec2<u32>(1u, 0u)), firstLeadingBit(vec2<i32>(u_input.a, -70471i)))), vec4<f32>(_wgslsmith_div_f32(-520f, _wgslsmith_f_op_f32(round(2707f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-799f + _wgslsmith_div_f32(302f, -1083f)))), _wgslsmith_div_f32(func_1(vec4<bool>(true, true, true, u_input.a >= -29809i), true).b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1008f - -452f))))), u_input.b.x, func_4(-1107f, Struct_1(_wgslsmith_mod_i32(u_input.a << (u_input.b.x % 32u), 1i), vec4<f32>(1f, 1f, 1f, 1f), vec4<u32>(u_input.b.x, firstLeadingBit(u_input.b.x), 7690u, ~82127u), u_input.b, ~firstLeadingBit(u_input.b)), func_4(_wgslsmith_f_op_f32(f32(-1f) * -545f), Struct_1(max(u_input.a, -1i), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -1000f, -172f, 1218f))), vec4<u32>(22480u, u_input.b.x, 15338u, 35068u), u_input.b | u_input.b, ~u_input.b), func_5(func_5(Struct_2(vec4<f32>(-1000f, 290f, -223f, 436f), vec2<f32>(1016f, 1979f), Struct_1(-6357i, vec4<f32>(3387f, 536f, 244f, 271f), vec4<u32>(13292u, u_input.b.x, 4294967295u, 0u), u_input.b, u_input.b), Struct_1(u_input.a, vec4<f32>(1258f, -2017f, 879f, -665f), vec4<u32>(4294967295u, 1u, 69228u, u_input.b.x), u_input.b, vec2<u32>(4294967295u, 5215u)), vec2<i32>(u_input.a, 2147483647i)), vec4<f32>(-693f, -611f, 656f, -196f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(333f, 749f, -479f, 732f))))));
    var var_1 = func_4(1f, func_4(_wgslsmith_f_op_f32(-var_0.d.b.x), Struct_1(abs(min(var_0.e.x, 33465i)), _wgslsmith_f_op_vec4_f32(-func_6(Struct_2(var_0.c.b, vec2<f32>(-735f, 1051f), var_0.d, Struct_1(-580i, vec4<f32>(1007f, var_0.c.b.x, 1574f, 610f), vec4<u32>(0u, var_0.c.d.x, u_input.b.x, 4294967295u), vec2<u32>(1u, var_0.d.d.x), vec2<u32>(4294967295u, 99221u)), var_0.e), var_0.c.b.x, u_input.b.x, Struct_2(var_0.d.b, var_0.b, Struct_1(-1i, var_0.c.b, var_0.c.c, vec2<u32>(u_input.b.x, var_0.c.c.x), vec2<u32>(u_input.b.x, var_0.c.d.x)), var_0.d, vec2<i32>(u_input.a, var_0.d.a))).c.b), ~(~vec4<u32>(var_0.c.e.x, 0u, var_0.d.e.x, var_0.d.c.x)), u_input.b, reverseBits(max(vec2<u32>(u_input.b.x, 47357u), vec2<u32>(var_0.c.e.x, 79001u)))), func_5(func_4(578f, Struct_1(1i, var_0.c.b, vec4<u32>(32500u, u_input.b.x, 4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u), u_input.b), Struct_2(var_0.a, vec2<f32>(var_0.d.b.x, 932f), Struct_1(1i, vec4<f32>(477f, 2484f, 728f, 487f), vec4<u32>(u_input.b.x, 4294967295u, 12558u, 0u), u_input.b, u_input.b), Struct_1(0i, var_0.c.b, vec4<u32>(8341u, var_0.c.d.x, 0u, u_input.b.x), u_input.b, vec2<u32>(u_input.b.x, var_0.d.c.x)), var_0.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-640f, 273f, var_0.c.b.x, var_0.b.x)))).d, Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.d.b - var_0.d.b), vec4<f32>(func_1(vec4<bool>(false, true, false, false), false).b.x, _wgslsmith_f_op_f32(-var_0.b.x), var_0.c.b.x, -284f), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true))), _wgslsmith_f_op_vec2_f32(-func_6(Struct_2(var_0.a, vec2<f32>(576f, 109f), Struct_1(-53364i, var_0.a, var_0.d.c, vec2<u32>(u_input.b.x, u_input.b.x), u_input.b), Struct_1(-20442i, vec4<f32>(var_0.c.b.x, var_0.c.b.x, 1850f, -1000f), vec4<u32>(0u, u_input.b.x, 3508u, u_input.b.x), vec2<u32>(var_0.c.c.x, 65317u), vec2<u32>(u_input.b.x, var_0.c.e.x)), vec2<i32>(var_0.d.a, var_0.d.a)), _wgslsmith_f_op_vec4_f32(func_3()).x, ~4294967295u, Struct_2(var_0.d.b, vec2<f32>(-1000f, -1152f), Struct_1(var_0.d.a, var_0.c.b, var_0.c.c, u_input.b, u_input.b), var_0.d, vec2<i32>(u_input.a, u_input.a))).a.zy), var_0.c, Struct_1(min(u_input.a, ~0i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c.b - var_0.c.b)), ~(~vec4<u32>(var_0.d.e.x, u_input.b.x, 43348u, u_input.b.x)), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.c.d.x, var_0.c.e.x), vec2<u32>(0u, var_0.c.d.x)), u_input.b), u_input.b), ~(~(~vec2<i32>(u_input.a, u_input.a)))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(752f, _wgslsmith_f_op_f32(-var_1.b.x), func_5(Struct_2(vec4<f32>(1383f, -949f, 455f, 1301f), vec2<f32>(var_0.a.x, -247f), Struct_1(-2147483647i, vec4<f32>(var_1.b.x, -339f, 1000f, var_0.b.x), vec4<u32>(41382u, u_input.b.x, var_1.d.e.x, 1u), u_input.b, vec2<u32>(u_input.b.x, var_1.d.c.x)), Struct_1(4678i, vec4<f32>(1000f, 172f, var_1.d.b.x, var_1.a.x), vec4<u32>(71605u, 34487u, var_0.d.d.x, 0u), vec2<u32>(var_1.c.e.x, 4294967295u), vec2<u32>(var_1.c.e.x, 20314u)), vec2<i32>(2147483647i, var_0.e.x)), func_5(Struct_2(var_1.d.b, vec2<f32>(var_1.d.b.x, var_0.d.b.x), Struct_1(u_input.a, vec4<f32>(389f, 808f, -1427f, var_1.d.b.x), vec4<u32>(u_input.b.x, u_input.b.x, var_0.d.e.x, var_0.c.c.x), vec2<u32>(50984u, 54257u), vec2<u32>(var_1.d.d.x, 4294967295u)), Struct_1(20868i, var_1.d.b, var_0.c.c, var_0.c.c.yw, vec2<u32>(4294967295u, var_0.c.c.x)), var_0.e), var_1.d.b).a).c.b.x, 979f)), var_1.d.b.wx, Struct_1(var_1.d.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_5(Struct_2(var_0.d.b, vec2<f32>(617f, var_0.d.b.x), var_1.d, Struct_1(-2147483647i, var_1.a, vec4<u32>(54588u, 4294967295u, u_input.b.x, 41604u), u_input.b, vec2<u32>(var_0.c.d.x, 51280u)), var_1.e), var_1.a).d.b.x, var_1.a.x, var_1.b.x, func_1(vec4<bool>(true, false, false, false), false).b.x)), firstLeadingBit(~vec4<u32>(var_1.c.e.x, 1077u, var_0.c.d.x, u_input.b.x)), func_6(Struct_2(vec4<f32>(250f, 348f, -1118f, var_0.d.b.x), var_0.a.xz, var_1.d, var_1.c, var_0.e), _wgslsmith_f_op_f32(768f - var_0.a.x), u_input.b.x, Struct_2(var_0.d.b, vec2<f32>(1495f, var_1.d.b.x), var_0.d, var_0.d, var_1.e)).d.d ^ ~var_0.d.e, min(~(vec2<u32>(u_input.b.x, 0u) >> (var_0.d.d % vec2<u32>(32u))), vec2<u32>(2877u, var_0.d.e.x))), var_0.c, countOneBits(var_0.e));
    var var_3 = vec4<bool>(true, true, true, true);
    let var_4 = abs(vec4<i32>(abs(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(11908i, 0i, var_2.e.x, 42979i), vec4<i32>(var_1.d.a, var_0.c.a, var_2.e.x, -1i)), abs(vec4<i32>(1i, var_0.e.x, 0i, u_input.a)))), -11433i, 1i, -(~67889i)));
    let var_5 = -select(var_4.x, select(var_4.x, -func_2(), any(select(var_3.wz, var_3.xy, var_3.zz))), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(822f + _wgslsmith_div_f32(_wgslsmith_div_f32(388f, var_2.c.b.x), _wgslsmith_f_op_f32(f32(-1f) * -411f))), _wgslsmith_f_op_f32(441f + _wgslsmith_div_f32(var_0.c.b.x, 1284f)))), var_0.e, vec2<f32>(-979f, _wgslsmith_div_f32(-1562f, _wgslsmith_f_op_f32(round(177f)))), var_2.e.x);
}

