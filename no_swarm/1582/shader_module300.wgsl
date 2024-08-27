struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global2: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(vec3<u32>(19952u, 56714u, 87551u), vec3<u32>(34638u, 0u, 36600u), vec4<i32>(61787i, 1i, -1i, 0i)), Struct_3(vec3<u32>(1u, 80967u, 0u), vec3<u32>(0u, 1u, 11780u), vec4<i32>(2147483647i, 1i, -32126i, 3369i)), Struct_3(vec3<u32>(1305u, 0u, 1u), vec3<u32>(1u, 29663u, 1u), vec4<i32>(2147483647i, i32(-2147483648), 24408i, 2147483647i)), Struct_3(vec3<u32>(70295u, 1u, 87363u), vec3<u32>(4294967295u, 0u, 51520u), vec4<i32>(1i, 45865i, -1i, 5435i)), Struct_3(vec3<u32>(756u, 1u, 4294967295u), vec3<u32>(46941u, 4294967295u, 22183u), vec4<i32>(2147483647i, i32(-2147483648), 1i, -1i)), Struct_3(vec3<u32>(1u, 1u, 27698u), vec3<u32>(22829u, 0u, 16753u), vec4<i32>(2147483647i, -1i, i32(-2147483648), -1i)), Struct_3(vec3<u32>(7041u, 4294967295u, 9130u), vec3<u32>(4294967295u, 0u, 72201u), vec4<i32>(-8124i, -37739i, 28006i, -57705i)), Struct_3(vec3<u32>(27171u, 26915u, 41686u), vec3<u32>(4294967295u, 31249u, 40981u), vec4<i32>(0i, 828i, -82435i, 53863i)), Struct_3(vec3<u32>(61828u, 42805u, 39141u), vec3<u32>(1u, 22566u, 70854u), vec4<i32>(2147483647i, i32(-2147483648), -37511i, 27800i)), Struct_3(vec3<u32>(4294967295u, 92984u, 8552u), vec3<u32>(1u, 12495u, 1u), vec4<i32>(-8715i, 12740i, -3085i, i32(-2147483648))), Struct_3(vec3<u32>(1u, 0u, 11304u), vec3<u32>(4294967295u, 57321u, 74785u), vec4<i32>(14082i, 0i, 0i, 1i)), Struct_3(vec3<u32>(24091u, 1u, 4294967295u), vec3<u32>(5573u, 0u, 4294967295u), vec4<i32>(1i, 0i, 17730i, -24262i)), Struct_3(vec3<u32>(18168u, 24359u, 19010u), vec3<u32>(1u, 41963u, 0u), vec4<i32>(-30127i, -48039i, i32(-2147483648), i32(-2147483648))), Struct_3(vec3<u32>(5223u, 20084u, 40368u), vec3<u32>(1u, 1u, 4294967295u), vec4<i32>(i32(-2147483648), -1294i, -1i, 33668i)), Struct_3(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(20921u, 0u, 1u), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 1i)), Struct_3(vec3<u32>(45502u, 25012u, 4294967295u), vec3<u32>(17200u, 4294967295u, 0u), vec4<i32>(-1i, 0i, 1i, -32788i)), Struct_3(vec3<u32>(4294967295u, 1u, 5814u), vec3<u32>(0u, 20798u, 24901u), vec4<i32>(3723i, 16223i, -71926i, i32(-2147483648))), Struct_3(vec3<u32>(1u, 115272u, 103534u), vec3<u32>(16593u, 19062u, 80565u), vec4<i32>(i32(-2147483648), -24985i, 12511i, 0i)), Struct_3(vec3<u32>(1u, 59124u, 4294967295u), vec3<u32>(106816u, 49387u, 64222u), vec4<i32>(45020i, -18849i, 22557i, 2147483647i)));

var<private> global3: bool;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: vec4<f32>) -> vec4<bool> {
    var var_0 = Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -38813i, 2147483647i, u_input.b.x) & select(vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, 36241i, -1i, u_input.a.x) >> (u_input.c % vec4<u32>(32u)), select(vec4<bool>(true, true, true, global1.x), vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(true, true, true, false))), select(vec4<i32>(u_input.b.x, i32(-1i) * -28130i, u_input.b.x >> (global0.a % 32u), -1i), vec4<i32>(~(-1i), -1i, _wgslsmith_mod_i32(-1i, -2147483647i), u_input.a.x), select(vec4<bool>(arg_0, true, global1.x, false), !vec4<bool>(global1.x, false, arg_0, false), any(vec2<bool>(arg_0, global1.x))))), select(select(vec2<bool>(u_input.b.x != -2147483647i, arg_0), global1.wy, select(!vec2<bool>(false, global1.x), !vec2<bool>(arg_0, true), true)), vec2<bool>(u_input.c.x <= global0.a, !(!arg_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 + 1714f))) >= arg_2), Struct_1(~_wgslsmith_div_u32(0u, 36219u) >> (_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, global0.a), 8430u) % 32u)), Struct_1(global0.a ^ (~global0.a ^ ~41875u)), all(select(global1.xzy, vec3<bool>(global1.x, !global1.x, true), true)));
    var_0 = Struct_4(~(~(~abs(-2147483647i))), !vec2<bool>(any(!global1.wx), !(var_0.b.x | arg_0)), var_0.c, var_0.d, !arg_0);
    let var_1 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(-16144i), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, var_0.a, 15161i), vec4<i32>(-1i, -17167i, u_input.a.x, u_input.a.x)), min(vec4<i32>(var_0.a, 41440i, var_0.a, 2147483647i), vec4<i32>(var_0.a, u_input.b.x, 1i, u_input.a.x))), ~7633i), -vec3<i32>(-27729i, ~var_0.a, countOneBits(10623i))), Struct_1(_wgslsmith_dot_vec2_u32(max(u_input.c.xw, ~vec2<u32>(21096u, global0.a)), ~vec2<u32>(0u, 0u))), Struct_1(_wgslsmith_div_u32(~0u, ~(~10456u))));
    global3 = _wgslsmith_mod_i32(_wgslsmith_div_i32(-(~(-2147483647i)), ~_wgslsmith_mult_i32(var_1.a, var_1.a)), ~(~(i32(-1i) * -2147483647i))) > countOneBits(24861i);
    var var_2 = vec4<bool>(select(true, !any(!global1.yz), false), arg_0, false, arg_0);
    return vec4<bool>(false, var_0.b.x, global1.x, var_1.b.a >= firstLeadingBit(14622u));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>) -> vec2<bool> {
    global1 = !func_3((84962u >= (arg_0.a.x >> (0u % 32u))) | true, _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(156f, -845f, arg_1.x, 3137f))))))));
    var var_0 = Struct_2(arg_0.c.x, Struct_1(1u), Struct_1(1u));
    let var_1 = (true && !global1.x) && (!(!(global1.x && false)) & true);
    var_0 = Struct_2(_wgslsmith_add_i32(1i, firstLeadingBit(~var_0.a << (_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 1u, 29580u, 4294967295u)) % 32u))), var_0.c, Struct_1(var_0.c.a));
    var var_2 = var_0.b;
    return !vec2<bool>(func_3(true || any(vec2<bool>(true, var_1)), _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)), -489f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(771f, 1341f, arg_1.x, -1711f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))), select(vec4<bool>(true, false, var_1, global1.x), vec4<bool>(false, var_1, var_1, global1.x), false)))).x, !all(!global1.zwz));
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = arg_2.x;
    let var_1 = u_input.c.x;
    var var_2 = arg_0.xww;
    var var_3 = Struct_3(u_input.c.yzw, u_input.c.zwz & vec3<u32>(u_input.c.x, global0.a, _wgslsmith_clamp_u32(var_1, max(global0.a, 63948u), 1u)), arg_0);
    var var_4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(743f)))), _wgslsmith_f_op_f32(abs(1f)), -553f, -784f) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1652f, -178f, 1365f, -115f) * vec4<f32>(398f, -501f, 1283f, 170f)))))))));
    return Struct_1(33501u);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: vec2<u32>) -> Struct_3 {
    var var_0 = Struct_1(70260u);
    let var_1 = ~firstLeadingBit(55920u) == (u_input.c.x ^ arg_2.c.a);
    var var_2 = Struct_1(_wgslsmith_dot_vec2_u32(~(~u_input.c.xz << ((vec2<u32>(0u, arg_0.a) >> (arg_3 % vec2<u32>(32u))) % vec2<u32>(32u))), select((vec2<u32>(4313u, global0.a) ^ vec2<u32>(arg_2.c.a, arg_2.c.a)) | select(vec2<u32>(24481u, 1u), vec2<u32>(arg_0.a, arg_2.d.a), arg_2.b), vec2<u32>(4294967295u, 4294967295u) >> (arg_3 % vec2<u32>(32u)), vec2<bool>(true, true))));
    var var_3 = ~u_input.c.zwx;
    var_2 = func_4(~_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(arg_2.a, 0i, 39816i, -37083i)), vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.b.x), ~(-2147483647i), _wgslsmith_add_i32(-30602i, -1i), u_input.b.x)), max(-2147483647i, -(~(-2147483647i))), !vec2<bool>(!(!global1.x), global1.x));
    return global2[_wgslsmith_index_u32(4294967295u, 19u)];
}

fn func_1() -> i32 {
    var var_0 = func_5(func_4(reverseBits(firstLeadingBit(vec4<i32>(u_input.a.x, 2147483647i, 35299i, 9275i))) << (~(vec4<u32>(33635u, 4294967295u, global0.a, global0.a) & u_input.c) % vec4<u32>(32u)), ~countOneBits(u_input.b.x), select(select(global1.xz, global1.yw, func_2(Struct_3(vec3<u32>(global0.a, global0.a, 4294967295u), vec3<u32>(21383u, 30818u, u_input.c.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.b.x, -2147483647i)), vec3<f32>(-1284f, 1292f, 261f))), global1.zw, all(vec2<bool>(false, false)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -838f) * _wgslsmith_f_op_f32(f32(-1f) * -1048f)) + 621f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1550f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(524f - -486f)), 1019f, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1240f, 1899f))), 817f, any(func_3(false, 382f, -898f, vec4<f32>(600f, 511f, -560f, -351f)))))), Struct_4(i32(-1i) * -12050i, vec2<bool>(true, func_3(global1.x, -205f, _wgslsmith_f_op_f32(min(1014f, -324f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1208f, -464f, 131f, -1127f) - vec4<f32>(1214f, -1175f, -1000f, 1024f))).x), Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), _wgslsmith_div_u32(31101u, u_input.c.x))), func_4(countOneBits(vec4<i32>(u_input.a.x, 5396i, u_input.b.x, -3587i)), -(u_input.a.x ^ u_input.a.x), vec2<bool>(true, true)), !all(global1.xyw)), ~abs(_wgslsmith_mod_vec2_u32(~vec2<u32>(47069u, 13317u), vec2<u32>(u_input.c.x, global0.a))));
    return -abs(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(38989u & _wgslsmith_div_u32(_wgslsmith_div_u32(global0.a, 12058u), _wgslsmith_mult_u32(global0.a, global0.a)));
    let var_1 = ~u_input.c;
    var var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(0i >> (var_1.x % 32u), u_input.a.x, func_1()), vec3<i32>(abs(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, 1i), vec3<i32>(-14719i, 2147483647i, -1i)), 2147483647i)), u_input.b.x, 6051i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x >> (global0.a % 32u), 1i, min(21196i, 2147483647i)), vec3<i32>(-24436i, min(u_input.a.x, u_input.b.x), func_1())) >> (vec3<u32>(func_5(Struct_1(global0.a), vec4<f32>(173f, -157f, 1520f, 953f), Struct_4(1i, global1.wz, Struct_1(var_0.a), Struct_1(u_input.c.x), global1.x), var_1.wx).b.x >> (1u % 32u), 1u, var_0.a) % vec3<u32>(32u)));
    var var_3 = Struct_1((~u_input.c.x >> (_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_dot_vec3_u32(var_1.yxy, u_input.c.www), reverseBits(global0.a)) % 32u)) ^ ~_wgslsmith_sub_u32(~0u, 0u));
    var_2 = vec3<i32>(1i, ~var_2.x, -var_2.x);
    global3 = u_input.a.x == var_2.x;
    global2 = array<Struct_3, 19>();
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-859f, -1160f))) - _wgslsmith_f_op_f32(774f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(149f)), _wgslsmith_f_op_f32(abs(104f)))))));
    let var_5 = select(~(~var_1.zyx), (_wgslsmith_sub_vec3_u32(u_input.c.yzw, ~vec3<u32>(var_1.x, 13356u, u_input.c.x)) >> (vec3<u32>(u_input.c.x, 4294967295u, 1u) % vec3<u32>(32u))) >> ((~var_1.zxx >> (vec3<u32>(_wgslsmith_sub_u32(var_0.a, 0u), 0u, abs(u_input.c.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1474f, -270f, -1924f)))))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(390f - 612f), -1245f, true)), _wgslsmith_f_op_f32(select(-366f, _wgslsmith_f_op_f32(f32(-1f) * -133f), all(vec2<bool>(true, global1.x)))), _wgslsmith_f_op_f32(abs(-715f))))), -1568f, func_5(func_4(~vec4<i32>(-20786i, var_2.x, u_input.a.x, -2147483647i) >> (vec4<u32>(1u, 59213u, var_3.a, var_0.a) % vec4<u32>(32u)), _wgslsmith_mult_i32(u_input.a.x, 70181i), !func_3(global1.x, -1407f, 202f, vec4<f32>(-1350f, -851f, -1775f, -832f)).zz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(989f, -1734f, 482f, -1597f)))), Struct_4(2147483647i, func_2(Struct_3(var_1.xxx, u_input.c.zyx, vec4<i32>(1i, var_2.x, u_input.a.x, -41441i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(388f, 583f, -1171f))), Struct_1(func_4(vec4<i32>(var_2.x, u_input.a.x, var_2.x, 4028i), u_input.b.x, global1.wx).a), Struct_1(global0.a), var_2.x <= u_input.b.x), var_5.yy).a);
}

