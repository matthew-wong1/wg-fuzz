struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32 = 40421u;

var<private> global2: vec4<i32> = vec4<i32>(2147483647i, 34857i, 11407i, 0i);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<bool>) -> u32 {
    let var_0 = min(_wgslsmith_add_i32(global2.x, u_input.a.x), -1i);
    let var_1 = Struct_2(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)));
    global1 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(reverseBits(1u), 67106u, 1u), 1u);
    global1 = ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(~0u, _wgslsmith_clamp_u32(20955u, 22505u, 27286u), 1u, firstTrailingBit(50600u))), reverseBits(abs(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 41069u, 1u, 1u), vec4<u32>(1u, 0u, 0u, 0u)))));
    var var_2 = -1485f;
    return 4294967295u;
}

fn func_2(arg_0: i32) -> Struct_3 {
    global1 = _wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(~func_3(_wgslsmith_f_op_f32(trunc(667f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-702f, -1015f, 250f)), vec2<bool>(true, true)), 99284u, ~_wgslsmith_clamp_u32(~32873u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 23743u, 74944u), vec3<u32>(0u, 0u, 106818u)), 4294967295u)));
    var var_0 = vec3<bool>((false & all(vec3<bool>(true, true, true))) || true, false, !select(true, any(vec3<bool>(true, true, false)), all(vec3<bool>(false, false, false))) | any(vec2<bool>(true, true)));
    let var_1 = Struct_1(vec3<u32>(0u << (~_wgslsmith_dot_vec4_u32(vec4<u32>(26521u, 1u, 2416u, 0u), vec4<u32>(185u, 2688u, 0u, 0u)) % 32u), 75861u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(46354u, 4294967295u), vec2<u32>(40276u, 36127u)), vec2<u32>(1u, 1u)) >> (~1u % 32u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-469f + _wgslsmith_f_op_f32(1192f + -531f))), 720f, 197f), select(select(select(!vec3<bool>(var_0.x, false, var_0.x), !vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), true)), select(!vec3<bool>(true, false, var_0.x), select(vec3<bool>(false, true, false), vec3<bool>(true, var_0.x, var_0.x), var_0.x), vec3<bool>(true, var_0.x, var_0.x)), true), vec3<bool>(false, any(!var_0.xy), false), !(!(!var_0.x))), _wgslsmith_mod_u32(1u, firstLeadingBit(11857u)));
    var var_2 = ~vec4<u32>(79592u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1u, 0u, 4294967295u, 4294967295u)), ~vec4<u32>(43177u, 0u, var_1.d, 50276u), vec4<u32>(var_1.a.x, 0u, 15636u, 4294967295u) >> (vec4<u32>(var_1.a.x, var_1.a.x, 1u, var_1.a.x) % vec4<u32>(32u))), ~vec4<u32>(0u, 1u, var_1.a.x, var_1.a.x)), 57590u, ~_wgslsmith_clamp_u32(~35406u, _wgslsmith_clamp_u32(2922u, 1u, 24933u), 54183u));
    global0 = all(var_1.c);
    return Struct_3(any(var_1.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-454f)), var_1.b.x, _wgslsmith_f_op_f32(ceil(706f))) + vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(var_1.b.x - -322f), 401f))), var_1, Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -458f) * _wgslsmith_div_f32(921f, var_1.b.x))))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec4<i32>) -> bool {
    let var_0 = select(~arg_1.c.a, ~vec3<u32>(abs(arg_0.x), ~arg_1.c.d, _wgslsmith_add_u32(arg_1.c.a.x, 4294967295u)) | vec3<u32>(_wgslsmith_sub_u32(abs(arg_1.c.d), _wgslsmith_mod_u32(arg_0.x, 0u)), 37225u, ~(~arg_1.c.a.x)), !arg_1.c.c);
    let var_1 = arg_1.c.b.x;
    global2 = (_wgslsmith_mod_vec4_i32(-u_input.a, ~vec4<i32>(global2.x, u_input.a.x, u_input.a.x, arg_2.x)) >> (vec4<u32>(0u, 1u, ~4294967295u, var_0.x) % vec4<u32>(32u))) | _wgslsmith_div_vec4_i32(vec4<i32>(-_wgslsmith_mod_i32(global2.x, 1i), global2.x | select(-6748i, u_input.a.x, arg_1.a), u_input.a.x, ~(~(-12114i))), u_input.a);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1365f));
    global0 = func_2(-(firstLeadingBit(23952i) & (58195i << (var_0.x % 32u)))).c.d > ~4294967295u;
    return (arg_1.c.a.x << (_wgslsmith_add_u32(select(func_2(26129i).c.d, 1u, false), _wgslsmith_add_u32(0u, ~var_0.x)) % 32u)) <= 0u;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> vec4<f32> {
    let var_0 = ((~select(4294967295u, 2703u, false) >= ~(~4294967295u)) && func_4(vec2<u32>(1u, ~1u), func_2(u_input.a.x), -_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(arg_1, -1i, u_input.a.x, -1i)))) | (any(vec3<bool>(true, true, true)) & !(!all(vec3<bool>(true, true, true))));
    let var_1 = Struct_3(true, vec3<f32>(-1090f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_0.x)))) + arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 1176f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), Struct_1(vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(355f, arg_0.x, arg_0.x) * vec3<f32>(-1094f, 2136f, -2797f))) + _wgslsmith_f_op_vec3_f32(-arg_0)), vec3<bool>(any(vec4<bool>(var_0, false, var_0, false)), func_4(~vec2<u32>(1u, 28469u), Struct_3(var_0, arg_0, Struct_1(vec3<u32>(1u, 19169u, 0u), vec3<f32>(arg_0.x, -727f, -397f), vec3<bool>(true, var_0, false), 1u), Struct_2(arg_0.x)), vec4<i32>(0i, arg_1, -1i, u_input.a.x)), true), func_2(_wgslsmith_clamp_i32(~4694i, arg_1, -44540i)).c.d), Struct_2(arg_0.x));
    var var_2 = ~var_1.c.a.xx << (~var_1.c.a.zz % vec2<u32>(32u));
    let var_3 = func_2(global2.x);
    var_2 = ~abs(~var_3.c.a.yy);
    return vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(297f, _wgslsmith_f_op_f32(round(494f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.x, 1f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(max(559f, -796f)), var_1.c.c.x))))), var_3.c.b.x, _wgslsmith_f_op_f32(floor(-714f)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = ~select(~select(global2.yw, global2.ww, arg_2.xx), vec2<i32>(abs(-1i), global2.x), any(vec3<bool>(arg_3.c.x, arg_0.c.x, arg_0.c.x)) && false) >> (~arg_0.a.xz % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-728f, arg_0.b.x, 428f, arg_3.b.x), arg_1));
    var var_2 = Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(arg_3.a, select(vec3<u32>(33845u, arg_3.d, arg_3.a.x), arg_0.a, arg_3.c) << (~vec3<u32>(arg_0.a.x, 17683u, arg_3.d) % vec3<u32>(32u))), arg_3.a), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.wzy) + vec3<f32>(arg_1.x, 633f, 2056f))), vec3<f32>(-1000f, -737f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(666f, arg_0.b.x) * _wgslsmith_f_op_f32(floor(arg_1.x)))))), arg_2.zzw, ~func_2(-var_0.x).c.a.x);
    var var_3 = global2.xxw;
    var var_4 = !(~arg_3.d <= var_2.d);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(547f, arg_3.b.x, true || arg_3.c.x)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(834f - 591f) * _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_0.b.x))))), !(!arg_0.c.x && all(vec4<bool>(false, arg_3.c.x, false, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(-1210f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(372f, 230f, false)), _wgslsmith_div_f32(624f, -644f), false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_1(~vec3<u32>(4294967295u, 0u, 20678u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-867f, 1000f, -1411f) - vec3<f32>(224f, -103f, 129f)), vec3<bool>(true, false, false), _wgslsmith_mod_u32(16333u, 1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(911f, -1941f, -250f), global2.x)) + vec4<f32>(-1470f, 2407f, -851f, 2266f)), select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), func_2(_wgslsmith_clamp_i32(global2.x, global2.x, -3085i)).c)) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(Struct_1(vec3<u32>(26314u, 4294967295u, 4294967295u), vec3<f32>(-304f, -2145f, 1000f), vec3<bool>(true, true, true), 1u), vec4<f32>(-1000f, 296f, 1016f, -444f), vec4<bool>(false, false, false, false), Struct_1(vec3<u32>(18877u, 5404u, 1u), vec3<f32>(-1853f, 425f, 794f), vec3<bool>(true, true, false), 0u))), -251f)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-3313f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -679f)), func_2(u_input.a.x).b.x) + _wgslsmith_f_op_f32(903f * -714f)));
    global2 = u_input.a;
    var var_1 = func_2(u_input.a.x);
    let var_2 = !select(vec4<bool>(var_1.a, all(!var_1.c.c), false, global2.x != countOneBits(23619i)), vec4<bool>(true, true, func_4(~vec2<u32>(527u, var_1.c.d), Struct_3(var_1.c.c.x, var_1.b, Struct_1(var_1.c.a, var_1.c.b, var_1.c.c, 1u), Struct_2(-926f)), vec4<i32>(-2831i, 1i, -19460i, 9092i)), var_1.a), !(!vec4<bool>(var_1.a, false, var_1.a, var_1.a)));
    var_0 = -715f;
    let var_3 = func_2(_wgslsmith_sub_i32(firstTrailingBit(-40395i), u_input.a.x)).c;
    var var_4 = _wgslsmith_div_vec2_u32(var_3.a.zy, vec2<u32>(firstTrailingBit(firstTrailingBit(55838u >> (1u % 32u))), var_3.a.x));
    let var_5 = ~(~vec4<i32>(0i, 1i, global2.x, 1i)) << (~vec4<u32>(35887u | _wgslsmith_sub_u32(var_3.a.x, var_1.c.a.x), var_1.c.a.x, 0u, ~firstLeadingBit(var_4.x)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_3.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_1.c.b, vec3<f32>(var_1.d.a, _wgslsmith_f_op_f32(step(var_1.b.x, var_3.b.x)), _wgslsmith_f_op_f32(var_3.b.x - -1081f))))), vec3<u32>(72295u, var_4.x, _wgslsmith_add_u32(var_1.c.d, func_2(-27004i).c.d)), var_1.c.a);
}

