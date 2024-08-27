struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: vec2<f32>) -> u32 {
    global0 = select(arg_1.b, ~select(vec3<u32>(u_input.a, ~119637u, _wgslsmith_mod_u32(41967u, 1u)), countOneBits(arg_1.b), vec3<bool>(false, true, arg_0)), !(!vec3<bool>(false, arg_0 && arg_0, arg_0)));
    global0 = select(~abs(~vec3<u32>(global0.x, u_input.a, 17535u)), countOneBits(arg_1.b), arg_0);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-599f, arg_3.x))) * 580f);
    let var_1 = Struct_1(~firstTrailingBit(max(select(arg_1.b, vec3<u32>(13056u, 4294967295u, 39473u), true), firstLeadingBit(arg_1.b))), !vec3<bool>(arg_0, !arg_0, true), !(!any(select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), false))), vec4<u32>(0u, arg_1.b.x, countOneBits(_wgslsmith_div_u32(global0.x, 124685u)), ~select(arg_1.b.x, 1449u, true)) & vec4<u32>(firstTrailingBit(0u), 39949u, countOneBits(14770u), abs(4294967295u)));
    var var_2 = var_0;
    return var_1.d.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_1 {
    global0 = abs(_wgslsmith_sub_vec3_u32(vec3<u32>(9295u, 4294967295u, 1u), ~vec3<u32>(~0u, ~u_input.a, min(global0.x, 51927u))));
    var var_0 = arg_2;
    var var_1 = max(0u, ~_wgslsmith_div_u32(~u_input.a, 1u ^ func_3(arg_2.d.b.x, Struct_3(1i, vec3<u32>(global0.x, arg_2.d.d.x, 1u)), arg_1, arg_3.yz)));
    var var_2 = var_0.d.c;
    var var_3 = Struct_1(~firstTrailingBit(select(~arg_2.d.d.xxw, var_0.d.a, vec3<bool>(var_0.d.b.x, false, var_0.d.b.x))), select(select(select(select(vec3<bool>(arg_2.d.b.x, false, var_0.d.b.x), vec3<bool>(var_0.d.b.x, var_0.d.c, true), vec3<bool>(false, var_0.d.b.x, var_0.d.c)), !vec3<bool>(false, var_0.d.c, true), vec3<bool>(false, false, true)), select(arg_2.d.b, select(vec3<bool>(false, arg_2.d.b.x, false), var_0.d.b, arg_2.d.b), arg_2.d.b), !vec3<bool>(true, var_0.d.c, arg_2.d.b.x)), arg_2.d.b, select(!vec3<bool>(var_0.d.b.x, var_0.d.c, var_0.d.c), arg_2.d.b, !var_0.d.c)), arg_2.d.b.x, var_0.d.d);
    return arg_2.d;
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = func_2(select(global0.xy, ~(~arg_0.d.wx ^ vec2<u32>(global0.x, 24437u)), any(vec3<bool>(all(vec4<bool>(arg_0.c, arg_0.b.x, arg_0.b.x, arg_0.b.x)), !arg_0.c, true))), -(~vec2<i32>(1i, 1i)), Struct_2(1326f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1248f - -276f), _wgslsmith_f_op_f32(round(1912f)), -859f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -184f)), func_2(~_wgslsmith_clamp_vec2_u32(vec2<u32>(11745u, 48342u), global0.xx, arg_0.a.zx), vec2<i32>(_wgslsmith_mult_i32(-1i, 2147483647i), -1i), Struct_2(-1072f, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1697f, -470f, 173f) * vec3<f32>(163f, -234f, -828f)), _wgslsmith_f_op_f32(step(-1072f, -328f)), arg_0, abs(32224i)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(123f, -143f, -393f, 909f)))))), select(0i, ~(-2147483647i >> (1u % 32u)), select(true, arg_0.b.x | false, all(arg_0.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-536f, -1168f, 2161f, 198f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1597f, -1006f, 254f, -1000f) - vec4<f32>(-304f, -808f, 553f, -929f)))))));
    var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(trunc(880f)) != _wgslsmith_div_f32(-1000f, 453f);
    var_1 = arg_0.c;
    global0 = vec3<u32>(1u, 4149u, ~1u);
    return arg_0.d.xzx >> (arg_0.a % vec3<u32>(32u));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec2<i32>) -> vec3<u32> {
    var var_0 = ~_wgslsmith_mod_i32(arg_3.x, -17711i);
    var var_1 = Struct_3(_wgslsmith_dot_vec3_i32(select(max(vec3<i32>(arg_3.x, arg_3.x, 377i), vec3<i32>(arg_3.x, arg_3.x, arg_3.x)), ~abs(vec3<i32>(arg_3.x, arg_3.x, -1i)), true), (vec3<i32>(arg_3.x, arg_3.x, arg_3.x) & select(vec3<i32>(1i, 1i, arg_3.x), vec3<i32>(45157i, arg_3.x, arg_3.x), vec3<bool>(true, false, true))) >> (~vec3<u32>(arg_2.a.x, 0u, 7968u) % vec3<u32>(32u))), func_4(func_2(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.d.x, global0.x, u_input.a, 0u), vec4<u32>(1u, arg_2.a.x, 1u, 24222u)), ~1u), arg_3, Struct_2(_wgslsmith_f_op_f32(abs(373f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1303f, arg_0, 829f), vec3<f32>(arg_1.x, -1398f, -1691f)), _wgslsmith_f_op_f32(min(-397f, 141f)), arg_2, _wgslsmith_mult_i32(arg_3.x, arg_3.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1748f, arg_0, -1754f, -1660f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-284f, arg_1.x, -575f, arg_0) * vec4<f32>(arg_0, arg_1.x, arg_1.x, arg_0))))));
    var var_2 = var_1.a;
    var_0 = -abs(1i) << (firstTrailingBit(global0.x) % 32u);
    let var_3 = (0u & _wgslsmith_add_u32(u_input.a, _wgslsmith_div_u32(_wgslsmith_clamp_u32(5322u, 4294967295u, 27953u), 4294967295u))) == _wgslsmith_sub_u32(arg_2.d.x, ~(global0.x | 9271u));
    return ~_wgslsmith_clamp_vec3_u32(~(_wgslsmith_div_vec3_u32(vec3<u32>(5627u, global0.x, 1u), vec3<u32>(u_input.a, 25049u, arg_2.a.x)) & vec3<u32>(var_1.b.x, 4294967295u, u_input.a)), var_1.b, func_2(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, arg_2.d.x), abs(vec2<u32>(42309u, 4294967295u))), ~arg_3, Struct_2(_wgslsmith_f_op_f32(abs(arg_1.x)), vec3<f32>(arg_0, -203f, arg_0), -1160f, func_2(vec2<u32>(56215u, 0u), arg_3, Struct_2(171f, vec3<f32>(arg_0, arg_0, -262f), arg_1.x, arg_2, 13174i), vec4<f32>(-733f, arg_1.x, arg_1.x, arg_0)), var_1.a), vec4<f32>(1238f, -142f, -138f, _wgslsmith_f_op_f32(-347f + -2123f))).d.xwy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~select(~func_1(1808f, vec2<f32>(112f, 390f), Struct_1(vec3<u32>(global0.x, u_input.a, u_input.a), vec3<bool>(false, true, false), true, vec4<u32>(0u, 4294967295u, u_input.a, 28548u)), countOneBits(vec2<i32>(2147483647i, -30453i))), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x | 94974u, func_1(579f, vec2<f32>(-887f, 2303f), Struct_1(vec3<u32>(5710u, 0u, 0u), vec3<bool>(false, true, true), false, vec4<u32>(94306u, global0.x, global0.x, 8918u)), vec2<i32>(0i, 1i)).x, 0u), ~(~vec3<u32>(86522u, 0u, u_input.a)), min(~vec3<u32>(1u, u_input.a, u_input.a), func_4(Struct_1(vec3<u32>(u_input.a, 1u, 1u), vec3<bool>(true, false, false), false, vec4<u32>(4294967295u, u_input.a, global0.x, 47644u))))), all(vec3<bool>(all(vec3<bool>(true, true, true)), func_2(global0.yz, vec2<i32>(-1i, 4286i), Struct_2(1000f, vec3<f32>(746f, 925f, 432f), -1192f, Struct_1(vec3<u32>(global0.x, global0.x, u_input.a), vec3<bool>(true, true, true), false, vec4<u32>(19596u, u_input.a, global0.x, global0.x)), -2147483647i), vec4<f32>(1713f, 519f, 2251f, -1000f)).c, true)));
    let var_0 = u_input.a;
    global0 = ~(~(~(~vec3<u32>(3233u, 4084u, var_0))) & ~abs(vec3<u32>(40335u, var_0, 63u)));
    let var_1 = select(vec4<u32>(34926u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0.x), global0.yx), var_0, ~var_0 ^ ~72551u), vec4<u32>(func_2(global0.yz, _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(-4200i, 66317i)), vec2<i32>(-378i, 12852i) << (vec2<u32>(0u, var_0) % vec2<u32>(32u))), Struct_2(_wgslsmith_f_op_f32(sign(405f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-341f, -559f, -1218f)), -464f, func_2(vec2<u32>(4294967295u, var_0), vec2<i32>(-2147483647i, -2147483647i), Struct_2(-364f, vec3<f32>(-350f, 1080f, -443f), 886f, Struct_1(vec3<u32>(u_input.a, 63474u, 4294967295u), vec3<bool>(true, false, false), false, vec4<u32>(1u, u_input.a, 4294967295u, 11056u)), -2147483647i), vec4<f32>(1000f, 1000f, -366f, 521f)), _wgslsmith_sub_i32(-47421i, 0i)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -817f), _wgslsmith_f_op_f32(603f + -1225f), _wgslsmith_f_op_f32(max(-1000f, 2198f)), _wgslsmith_f_op_f32(ceil(495f)))).a.x, abs(u_input.a), firstTrailingBit(firstTrailingBit(global0.x)) ^ u_input.a, var_0 ^ ~func_1(2057f, vec2<f32>(207f, 256f), Struct_1(vec3<u32>(global0.x, u_input.a, 42483u), vec3<bool>(true, true, true), true, vec4<u32>(4294967295u, 4294967295u, global0.x, global0.x)), vec2<i32>(7510i, -12223i)).x), select(vec4<bool>(false, true, _wgslsmith_f_op_f32(ceil(-178f)) < _wgslsmith_f_op_f32(floor(-959f)), any(vec2<bool>(true, true))), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), true)), var_0 > 19622u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * -899f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-764f * -1664f))))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2, 1f, _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 458f, var_2) + vec3<f32>(-488f, -186f, -1000f))))))), var_2, Struct_1(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(107116u, var_0, 2837u)), (var_1.yxx ^ vec3<u32>(var_0, 4080u, u_input.a)) ^ ~vec3<u32>(var_0, var_1.x, var_1.x)), select(select(func_2(vec2<u32>(46325u, 3225u), vec2<i32>(78211i, -1i), Struct_2(var_2, vec3<f32>(493f, var_2, var_2), var_2, Struct_1(var_1.yxx, vec3<bool>(false, true, true), false, vec4<u32>(var_0, var_1.x, 0u, 9696u)), 17154i), vec4<f32>(826f, 1000f, 1147f, 1093f)).b, func_2(var_1.xy, vec2<i32>(44233i, 32724i), Struct_2(var_2, vec3<f32>(1396f, -278f, var_2), var_2, Struct_1(var_1.xyy, vec3<bool>(true, false, true), false, vec4<u32>(u_input.a, 4294967295u, 0u, 0u)), -1i), vec4<f32>(624f, -143f, -1252f, 296f)).b, select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), all(vec4<bool>(false, false, false, true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_2, var_2, true)))) >= _wgslsmith_f_op_f32(-832f - -907f), var_1), firstTrailingBit(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-1737i, 2147483647i)) >> (global0.zx % vec2<u32>(32u)), -vec2<i32>(1i, 13081i) | (vec2<i32>(2147483647i, 61152i) >> (var_1.zz % vec2<u32>(32u))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_3.b))))));
    var_4 = _wgslsmith_f_op_vec3_f32(floor(var_3.b));
    var var_5 = ~(~firstLeadingBit(var_3.d.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -1i, var_0, ~2147483647i, vec2<u32>(21155u ^ ~global0.x, min(4294967295u, _wgslsmith_clamp_u32(31577u, 66461u, 25332u))), vec4<i32>(i32(-1i) * -1i, var_3.e, var_3.e, var_3.e));
}

