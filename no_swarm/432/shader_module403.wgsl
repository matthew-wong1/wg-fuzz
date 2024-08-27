struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 13> = array<i32, 13>(2147483647i, i32(-2147483648), -24318i, -2245i, -39714i, 40871i, 1i, 0i, i32(-2147483648), -24762i, 38849i, 1i, -28785i);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>) -> vec4<u32> {
    var var_0 = Struct_2(Struct_1(reverseBits(_wgslsmith_clamp_u32(~global0.d.x, global0.d.x, 4294967295u ^ arg_1.a)), select(global0.c, global0.b, _wgslsmith_div_f32(743f, arg_0.e) != _wgslsmith_f_op_f32(-global0.e))), 21747i, arg_1.b, ~_wgslsmith_add_vec2_u32(vec2<u32>(global0.a.a, ~24828u), u_input.a), 388f);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.e, global0.e, global0.e, -906f), vec4<f32>(-221f, global0.e, -1110f, global0.e)))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-931f, var_0.e, -558f, 538f), vec4<f32>(arg_0.e, 1298f, 1352f, global0.e)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.e, 294f, 1761f, -101f), vec4<f32>(680f, 595f, var_0.e, 713f), vec4<bool>(false, true, false, true)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.e, -1628f, -249f, global0.e), vec4<f32>(-1000f, -136f, arg_0.e, -1698f)))))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1038f, var_0.e, false)))), _wgslsmith_f_op_f32(f32(-1f) * -398f), _wgslsmith_f_op_f32(abs(-875f)), _wgslsmith_f_op_f32(f32(-1f) * -521f))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), true), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false), vec4<bool>(false, true, true, true), select(true, false, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, all(vec3<bool>(false, true, true)), true, all(vec4<bool>(true, true, true, true)))), true)));
    let var_2 = var_0.a;
    var_0 = arg_0;
    var var_3 = global0.e;
    return vec4<u32>(~firstTrailingBit(var_2.a), arg_0.d.x, ~max(_wgslsmith_dot_vec2_u32(vec2<u32>(18091u, arg_2.x), global0.d), 0u), 0u) << (reverseBits(vec4<u32>(16041u, ~var_2.a, ~29489u, 65227u)) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: i32) -> u32 {
    global0 = Struct_2(global0.a, firstTrailingBit(reverseBits(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(0u, 13u)], 44029i))), ~(-(-41187i & _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(global0.b, 1i)))), min(_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(global0.d.x, 6806u)) << (~vec2<u32>(u_input.e, 32305u) % vec2<u32>(32u)), u_input.c.yx), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x)))))));
    var var_0 = Struct_2(Struct_1(firstTrailingBit(arg_0.x), _wgslsmith_add_i32(0i, -27246i)), abs(global0.b), 1i, vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(global0.a.a, global0.a.a, 34307u), arg_0.wxy), select(arg_0.zxx, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global0.a.a, 38793u), arg_0.xxx), true)), ~0u), _wgslsmith_f_op_f32(select(1000f, global0.e, true)));
    let var_1 = Struct_2(Struct_1(4294967295u, -25804i), ~global1[_wgslsmith_index_u32(1u, 13u)], max(_wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(~u_input.b.x, -var_0.b)), 30021i), vec2<u32>(var_0.d.x, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1334f, arg_1.x), 119f)))));
    var_0 = var_1;
    global1 = array<i32, 13>();
    return ~reverseBits(68591u);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32) -> Struct_2 {
    var var_0 = u_input.c.zz;
    var_0 = vec2<u32>(~(~select(~10224u, 3596u, true)), func_4(_wgslsmith_mult_vec4_u32(~func_3(Struct_2(arg_0.a, u_input.b.x, u_input.b.x, arg_0.d, global0.e), arg_0.a, vec4<u32>(0u, 8556u, u_input.e, var_0.x)), firstTrailingBit(~vec4<u32>(30054u, 4294967295u, 28235u, var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(352f, arg_0.e, -1078f, 749f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e, 1000f, arg_0.e, global0.e))) - vec4<f32>(-360f, 1246f, arg_0.e, global0.e)), -_wgslsmith_sub_i32(abs(58340i), -arg_0.a.b)));
    global1 = array<i32, 13>();
    global0 = arg_0;
    global1 = array<i32, 13>();
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    global0 = func_2(arg_3, select(vec2<bool>(!all(vec3<bool>(true, true, true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true))), vec2<bool>(true, !all(vec4<bool>(true, true, false, true))), true || !any(vec3<bool>(false, true, true))), abs(_wgslsmith_mult_u32(~20312u, arg_0.a) & firstLeadingBit(arg_1)));
    global0 = Struct_2(Struct_1(4294967295u, -16968i), 0i << (reverseBits(u_input.c.x) % 32u), _wgslsmith_sub_i32(arg_3.b, arg_2), ~vec2<u32>(4294967295u, 22685u), -495f);
    global1 = array<i32, 13>();
    var var_0 = abs(vec3<i32>(-12620i, arg_0.b, _wgslsmith_mod_i32(countOneBits(0i), global0.b)));
    var var_1 = arg_3.a;
    return arg_3;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = ~(vec3<u32>(41690u, _wgslsmith_sub_u32(u_input.e, 10276u) & ~638u, ~(~arg_2.x)) >> (vec3<u32>(8832u, ~reverseBits(47087u), ~arg_2.x) % vec3<u32>(32u)));
    let var_1 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, false), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), false)));
    var_0 = abs(vec3<u32>(arg_2.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_2, vec2<u32>(var_0.x, 1u)), ~4294967295u) & _wgslsmith_div_u32(global0.d.x, global0.d.x << (global0.a.a % 32u)), _wgslsmith_add_u32(_wgslsmith_mod_u32(func_3(Struct_2(arg_1.a, 5289i, 2147483647i, var_0.yy, arg_1.e), global0.a, vec4<u32>(58173u, 88407u, 4294967295u, arg_1.a.a)).x, abs(global0.a.a)), var_0.x)));
    let var_2 = firstLeadingBit(vec3<i32>(34078i, max(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~global0.a.a, _wgslsmith_add_u32(arg_2.x, 0u)), 13u)], 0i), global0.b));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.e))), global0.e) + arg_0.yw);
    return Struct_2(Struct_1(global0.a.a, _wgslsmith_mod_i32(u_input.b.x, ~(2147483647i | var_2.x))), func_5(global0.a, _wgslsmith_dot_vec2_u32(func_3(arg_1, Struct_1(4294967295u, 1i), vec4<u32>(41212u, 48332u, arg_1.a.a, global0.d.x)).xz, _wgslsmith_div_vec2_u32(vec2<u32>(0u, arg_2.x), arg_2)) | 11582u, global0.a.b, Struct_2(func_5(global0.a, func_5(Struct_1(arg_1.a.a, arg_1.b), 18352u, global0.a.b, Struct_2(arg_1.a, 2147483647i, global1[_wgslsmith_index_u32(arg_1.a.a, 13u)], u_input.a, var_3.x)).d.x, 0i ^ var_2.x, Struct_2(Struct_1(u_input.e, global1[_wgslsmith_index_u32(arg_2.x, 13u)]), -72308i, 59534i, arg_1.d, arg_1.e)).a, -1i, countOneBits(func_5(Struct_1(21636u, -1i), 4294967295u, arg_1.c, arg_1).a.b), vec2<u32>(u_input.e, ~31642u), -209f)).c, firstTrailingBit(-2147483647i), vec2<u32>(var_0.x, (var_0.x << (u_input.a.x % 32u)) ^ _wgslsmith_mod_u32(~var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, arg_1.d.x, arg_2.x, 23860u), vec4<u32>(4294967295u, u_input.e, 0u, 4294967295u)))), 1898f);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> vec4<i32> {
    global0 = func_6(vec4<f32>(arg_0.e, _wgslsmith_f_op_f32(f32(-1f) * -520f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e)), 767f), func_5(Struct_1(_wgslsmith_sub_u32(79833u, reverseBits(u_input.e)), arg_1.a.b), ~(~(~1u)), global0.a.b, func_2(arg_0, select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, false)), arg_1.a.a & arg_2)), u_input.a);
    global0 = func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global0.e, -452f, -828f) - vec4<f32>(arg_1.e, arg_1.e, arg_0.e, -620f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 309f, -1074f, -299f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.e, arg_1.e, -804f, -276f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e, 1238f, 751f, -660f))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1860f, arg_0.e, global0.e, 1000f) * vec4<f32>(270f, 1062f, -282f, -529f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e, 136f, global0.e, global0.e)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(748f, arg_1.e, -983f, -459f))))))), func_2(arg_0, !select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), true), abs(~arg_0.a.a >> (26436u % 32u))), ~u_input.d.yy);
    global0 = Struct_2(func_5(arg_1.a, _wgslsmith_sub_u32(~arg_1.a.a, arg_1.a.a), global0.b, Struct_2(global0.a, firstLeadingBit(0i), u_input.b.x, func_2(func_6(vec4<f32>(arg_0.e, arg_0.e, -190f, global0.e), arg_0, u_input.a), select(vec2<bool>(true, false), vec2<bool>(false, true), true), arg_0.a.a).d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e) + _wgslsmith_f_op_f32(max(global0.e, global0.e))))).a, 0i, -1i, ~(countOneBits(~global0.d) << (u_input.c.xy % vec2<u32>(32u))), arg_0.e);
    let var_0 = arg_1;
    let var_1 = firstLeadingBit(u_input.c);
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -func_2(func_5(arg_0.a, global0.a.a, 0i, arg_0), vec2<bool>(true, false), max(var_1.x, var_0.d.x)).b, func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.e, 851f, global0.e, -872f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(830f, -171f, 351f, arg_0.e))), Struct_2(Struct_1(4294967295u, u_input.b.x), arg_0.c, u_input.b.x, u_input.c.xz, _wgslsmith_f_op_f32(floor(-121f))), ~(vec2<u32>(u_input.d.x, var_0.a.a) ^ vec2<u32>(arg_1.d.x, 0u))).c, firstTrailingBit(_wgslsmith_div_i32(func_5(Struct_1(var_0.d.x, 2147483647i), arg_0.d.x, 15837i, var_0).b, _wgslsmith_add_i32(var_0.c, u_input.b.x)))), vec4<i32>(reverseBits(func_6(vec4<f32>(global0.e, var_0.e, global0.e, global0.e), func_6(vec4<f32>(-1639f, global0.e, -2908f, arg_0.e), arg_0, vec2<u32>(1u, 831u)), ~arg_1.d).c), 2147483647i, 1i, i32(-1i) * -1i), vec4<i32>(_wgslsmith_mult_i32((i32(-1i) * -1i) | _wgslsmith_dot_vec2_i32(u_input.b, u_input.b), global1[_wgslsmith_index_u32(~(~arg_1.d.x), 13u)]), _wgslsmith_div_i32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(var_0.a.a, 0u)), 13u)], 15754i & firstTrailingBit(11973i)), ~firstLeadingBit(arg_1.b), -_wgslsmith_dot_vec3_i32(-vec3<i32>(global0.a.b, -2147483647i, 0i), vec3<i32>(arg_1.a.b, arg_1.c, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(abs(-2147483647i), 1i, abs(1i), ~(-1i)), (vec4<i32>(-14724i, global1[_wgslsmith_index_u32(44492u, 13u)], global0.a.b, 5237i) & vec4<i32>(global0.a.b, 8626i, global1[_wgslsmith_index_u32(1u, 13u)], 0i)) << (~vec4<u32>(1u, u_input.e, global0.d.x, u_input.c.x) % vec4<u32>(32u))), func_1(Struct_2(Struct_1(u_input.d.x, -12865i), -47588i, u_input.b.x, ~global0.d, _wgslsmith_f_op_f32(-global0.e)), Struct_2(global0.a, select(global0.c, -2147483647i, false), -2147483647i, vec2<u32>(global0.d.x, 27427u), _wgslsmith_f_op_f32(global0.e - global0.e)), ~_wgslsmith_mult_u32(u_input.e, 53631u)), func_1(Struct_2(global0.a, -1i, global0.a.b, select(vec2<u32>(global0.a.a, 1u), global0.d, vec2<bool>(true, false)), 526f), Struct_2(func_6(vec4<f32>(-543f, 561f, global0.e, global0.e), Struct_2(global0.a, u_input.b.x, 1i, u_input.a, global0.e), vec2<u32>(44272u, 28633u)).a, global1[_wgslsmith_index_u32(u_input.c.x, 13u)], global1[_wgslsmith_index_u32(global0.a.a, 13u)], select(global0.d, global0.d, true), _wgslsmith_f_op_f32(global0.e - -1165f)), 45672u << (global0.a.a % 32u))) >> (vec4<u32>(~27456u, (_wgslsmith_mod_u32(u_input.a.x, global0.a.a) ^ min(65611u, 57292u)) | (u_input.c.x ^ min(58823u, u_input.d.x)), u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(global0.d.x, 38317u), max(0u, 43355u)), global0.d)) % vec4<u32>(32u));
    let var_2 = global0.d.x;
    let var_3 = func_5(global0.a, 97973u << (1u % 32u), var_1.x, func_2(Struct_2(func_2(Struct_2(global0.a, u_input.b.x, -15535i, vec2<u32>(u_input.d.x, global0.d.x), global0.e), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), 1u).a, func_2(Struct_2(global0.a, u_input.b.x, 8241i, vec2<u32>(45578u, global0.d.x), -853f), vec2<bool>(true, true), _wgslsmith_mult_u32(1u, 79051u)).b, ~_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, -1i)), _wgslsmith_sub_vec2_u32(~vec2<u32>(global0.d.x, global0.a.a), _wgslsmith_clamp_vec2_u32(u_input.d.xx, vec2<u32>(u_input.c.x, global0.d.x), vec2<u32>(global0.d.x, u_input.a.x))), -558f), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_sub_u32(u_input.e, countOneBits(u_input.d.x))));
    let var_4 = global0.e;
    var var_5 = select(vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), true, true, select(true, select(any(vec4<bool>(true, false, false, false)), true, false), true)), !vec4<bool>(true, true, true, select(true, var_3.e == var_3.e, false)), vec4<bool>(true, select(false, all(vec4<bool>(false, true, false, false)) && select(true, true, false), true), any(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(countOneBits(firstTrailingBit(global0.b) | _wgslsmith_dot_vec2_i32(var_1.yw, u_input.b)), u_input.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(866f, global0.e), vec2<f32>(var_3.e, global0.e))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.e, 893f)))), vec2<f32>(var_3.e, _wgslsmith_f_op_f32(select(var_3.e, global0.e, false)))))), u_input.a.x);
}

