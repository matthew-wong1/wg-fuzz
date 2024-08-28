struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: vec3<u32>,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32;

var<private> global2: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(-1i, vec2<f32>(1000f, 646f), vec2<bool>(false, true), 25322i), Struct_4(11513i, vec2<f32>(596f, 788f), vec2<bool>(true, true), 34333i), Struct_4(-58838i, vec2<f32>(-158f, 619f), vec2<bool>(true, true), -20939i), Struct_4(i32(-2147483648), vec2<f32>(560f, -166f), vec2<bool>(true, true), -14880i), Struct_4(i32(-2147483648), vec2<f32>(576f, -1154f), vec2<bool>(false, false), 0i), Struct_4(-16069i, vec2<f32>(-962f, -792f), vec2<bool>(true, false), -31297i), Struct_4(-37701i, vec2<f32>(-795f, 111f), vec2<bool>(false, true), 2147483647i));

var<private> global3: i32;

var<private> global4: Struct_2;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: f32, arg_3: u32) -> i32 {
    global3 = -27697i;
    var var_0 = Struct_2(_wgslsmith_sub_vec3_u32(global4.e.d.yzy, (vec3<u32>(44615u, 4294967295u, u_input.a) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), global4.d) % vec3<u32>(32u))) ^ _wgslsmith_clamp_vec3_u32(global4.e.d.wzy, vec3<u32>(49355u, 1u, u_input.a), ~global4.a)), arg_0.b.x, arg_0.c.x, global4.e.d.yyz, global4.e);
    global2 = array<Struct_4, 7>();
    global3 = -21115i;
    let var_1 = Struct_3(global4.e, ~46890i, Struct_2(_wgslsmith_mult_vec3_u32(abs(~vec3<u32>(var_0.e.b.x, global4.a.x, global4.a.x)), vec3<u32>(var_0.a.x ^ u_input.a, ~113527u, 0u)), _wgslsmith_f_op_f32(round(-1201f)), global4.c | arg_0.c.x, global4.d >> (global4.e.d.yxw % vec3<u32>(32u)), var_0.e), vec3<u32>(1u, 1u, 38728u), arg_0.d ^ _wgslsmith_dot_vec3_i32(vec3<i32>(~arg_0.d, i32(-1i) * -19459i, arg_1.x), firstLeadingBit(vec3<i32>(u_input.b, 13529i, -15988i) >> (vec3<u32>(var_0.d.x, var_0.a.x, u_input.a) % vec3<u32>(32u)))));
    return arg_0.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: i32) -> vec2<bool> {
    global0 = select(_wgslsmith_mod_i32(firstLeadingBit(9571i), _wgslsmith_add_i32(u_input.b, max(13374i, ~arg_3))), arg_3, false);
    var var_0 = max(vec4<i32>(-46624i, ~u_input.b, arg_1.d, _wgslsmith_sub_i32(func_3(Struct_4(arg_1.d, vec2<f32>(1238f, 1111f), vec2<bool>(false, arg_1.c.x), -28405i), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_3, 1i), vec2<i32>(-47302i, arg_1.a), vec2<i32>(10810i, arg_3)), _wgslsmith_f_op_f32(f32(-1f) * -161f), arg_2.x | arg_2.x), abs(-arg_3))), _wgslsmith_sub_vec4_i32(countOneBits(~(-vec4<i32>(-1i, 80059i, -27500i, 30889i))), vec4<i32>(min(arg_1.a, 2147483647i) << (arg_0.x % 32u), arg_3, _wgslsmith_mult_i32(arg_1.a, ~(-2147483647i)), u_input.b)));
    let var_1 = 881f;
    let var_2 = !select(select(_wgslsmith_div_u32(4294967295u, 13296u) < ~global4.d.x, global4.c, global4.e.c), false, true);
    var var_3 = -abs(firstTrailingBit(var_0.x));
    return !vec2<bool>(true, all(!(!vec3<bool>(true, false, global4.c))));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec2<bool>) -> Struct_3 {
    global2 = array<Struct_4, 7>();
    var var_0 = arg_2;
    let var_1 = vec3<bool>(true, var_0.x, -u_input.b < ~_wgslsmith_div_i32(55959i, u_input.b | -21146i));
    let var_2 = ~_wgslsmith_sub_vec2_u32(select(~global4.e.d.yz, global4.d.xy, var_1.yx), vec2<u32>(~0u, _wgslsmith_div_u32(arg_1, arg_1)));
    global0 = 14895i;
    return Struct_3(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(711f, global4.b, global4.b)) + vec3<f32>(global4.b, global4.b, global4.e.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global4.e.a, global4.e.a))), abs((vec2<u32>(38255u, var_2.x) ^ vec2<u32>(arg_1, 1u)) ^ _wgslsmith_add_vec2_u32(global4.d.zz, global4.a.xy)), arg_2.x, ~(~vec4<u32>(1u, global4.a.x, 3601u, 0u))), 2147483647i, Struct_2(global4.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(594f - global4.b) + -1528f) - global4.e.a.x), -1186f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.e.a.x))), reverseBits(global4.a), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(global4.b, global4.b, var_1.x)), -1725f, _wgslsmith_f_op_f32(ceil(global4.e.a.x))), _wgslsmith_div_vec2_u32(select(var_2, global4.e.b, vec2<bool>(arg_2.x, true)), var_2), var_0.x, global4.e.d)), countOneBits(vec3<u32>(arg_1 >> (26317u % 32u), 0u, _wgslsmith_mult_u32(u_input.a, ~var_2.x))), max(arg_0, -_wgslsmith_clamp_i32(u_input.b, reverseBits(1i), reverseBits(u_input.b))));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> Struct_4 {
    global3 = ~0i;
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(203f - -147f), 878f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -607f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.b, -316f) + global4.e.a.yz))))));
    global1 = 14340i;
    var var_1 = ~global4.d.x;
    let var_2 = func_4(0i, _wgslsmith_add_u32(21230u, _wgslsmith_sub_u32(32730u, global4.e.d.x)), select(!vec2<bool>(any(vec4<bool>(false, arg_1, true, true)), all(vec3<bool>(global4.e.c, false, global4.c))), !func_2(arg_0.xx, Struct_4(u_input.b, vec2<f32>(-645f, 1172f), vec2<bool>(global4.e.c, false), u_input.b), arg_0, ~u_input.b), vec2<bool>(global4.e.c, true)));
    return global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(22670u | max(u_input.a, 47237u), ~global4.d.x, var_2.a.b.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(global4.e.b.x, 67002u, 71801u) << (var_2.c.e.d.wwy % vec3<u32>(32u)), vec3<u32>(1u, 12554u, 4294967295u) >> (_wgslsmith_div_vec3_u32(var_2.d, vec3<u32>(12371u, var_2.c.a.x, u_input.a)) % vec3<u32>(32u)), max(_wgslsmith_sub_vec3_u32(var_2.d, var_2.d), vec3<u32>(10617u, 1u, 45649u))))), 7u)];
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: i32) -> Struct_2 {
    global0 = u_input.b & u_input.b;
    global1 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(_wgslsmith_sub_i32(u_input.b, arg_3)), _wgslsmith_div_i32(func_4(33045i, 0u, vec2<bool>(arg_1.c.x, arg_0.x)).e, 34581i & arg_3), arg_1.a), abs(vec3<i32>(-63690i ^ arg_3, func_1(global4.e.d, arg_1.c.x).d, 0i)));
    var var_0 = _wgslsmith_add_u32(firstTrailingBit(58731u & u_input.a), abs(50549u));
    let var_1 = Struct_4(-1i, _wgslsmith_f_op_vec2_f32(round(func_4(-38343i, 1u, select(func_1(global4.e.d, global4.e.c).c, vec2<bool>(global4.c, global4.c), !vec2<bool>(false, arg_0.x))).c.e.a.zy)), vec2<bool>(arg_0.x, any(vec4<bool>(true, !arg_0.x, true, 4294967295u <= u_input.a))), _wgslsmith_div_i32(_wgslsmith_add_i32(arg_3, arg_3), func_4(-25538i, firstLeadingBit(u_input.a), !arg_1.c).b));
    let var_2 = global4.e;
    return func_4(firstLeadingBit(~abs(-arg_1.d)), ~68181u, !arg_1.c).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(global4.d.x, 25708u >> (~firstLeadingBit(global4.d.x) % 32u), ~u_input.a, ~4294967295u);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.e.a)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global4.b, -668f, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b, global4.e.a.x, global4.b))) + _wgslsmith_f_op_vec3_f32(global4.e.a + _wgslsmith_f_op_vec3_f32(exp2(global4.e.a))))), vec2<u32>(~global4.e.b.x, 33380u), !global4.c, _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(firstLeadingBit(1u), var_0.x, 0u, u_input.a), firstLeadingBit(vec4<u32>(global4.e.d.x, 1u, 4294967295u, 38951u))), global4.e.d));
    let var_2 = func_5(vec4<bool>(true, true, !any(!vec3<bool>(true, false, global4.e.c)), true), func_1(_wgslsmith_clamp_vec4_u32(var_1.d, var_1.d, ~vec4<u32>(var_1.d.x, u_input.a, global4.e.d.x, 80658u)), any(vec3<bool>(var_1.c, false, global4.c))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-252f, var_1.a.x))), -557f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, -647f, -104f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1081f, global4.e.a.x, var_1.a.x), var_1.a, var_1.c)), global4.c & var_1.c))))), u_input.b);
    let var_3 = Struct_2(countOneBits(~(max(vec3<u32>(var_0.x, 5053u, var_1.b.x), vec3<u32>(var_0.x, u_input.a, global4.e.d.x)) >> (~vec3<u32>(var_0.x, var_2.a.x, 69768u) % vec3<u32>(32u)))), -838f, true, ~(~var_2.a), global4.e);
    let var_4 = func_4(0i >> (_wgslsmith_div_u32(~(~var_0.x), 4294967295u) % 32u), _wgslsmith_sub_u32(reverseBits(30459u), countOneBits(~var_3.e.b.x)) << (_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(982u, 1u, u_input.a, 4294967295u), global4.e.d) | (0u << (var_3.a.x % 32u)), var_1.d.x) % 32u), vec2<bool>(true, true)).a;
    let var_5 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4.e.a.x, 677f)) + 685f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(133f, -156f) * global4.b)) - var_1.a.yy)));
    var var_6 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(u_input.b, u_input.b) ^ ~(u_input.b >> (func_5(vec4<bool>(true, var_2.e.c, false, var_1.c), Struct_4(u_input.b, vec2<f32>(1651f, var_5.x), vec2<bool>(var_3.e.c, true), u_input.b), vec3<f32>(2109f, var_2.e.a.x, var_4.a.x), -1i).d.x % 32u)), -52994i, -457f);
}

