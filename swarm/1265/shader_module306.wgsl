struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<bool>, 15>;

var<private> global2: array<i32, 2> = array<i32, 2>(49784i, 65752i);

var<private> global3: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(i32(-2147483648), i32(-2147483648), -24434i, 30815i), vec4<i32>(31200i, 0i, 4111i, 53745i), vec4<i32>(8085i, 23738i, 31491i, i32(-2147483648)), vec4<i32>(21851i, 7094i, -157i, -1i), vec4<i32>(-21587i, 2147483647i, -56846i, 15884i), vec4<i32>(-1i, 1i, 0i, 4499i), vec4<i32>(1i, 9421i, -13502i, 1i), vec4<i32>(4874i, 0i, 18623i, 0i), vec4<i32>(-18071i, 0i, 1i, 25808i), vec4<i32>(-6992i, 39778i, -42242i, -16123i), vec4<i32>(-1i, 1i, 1i, i32(-2147483648)), vec4<i32>(4519i, 14053i, 0i, 41293i), vec4<i32>(2147483647i, -6913i, -18792i, 29394i), vec4<i32>(2147483647i, -21114i, 41375i, -406i), vec4<i32>(2147483647i, 0i, 0i, 0i), vec4<i32>(18194i, -27541i, 1i, -35433i), vec4<i32>(20608i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<i32>(-10707i, -31200i, -6732i, 29374i), vec4<i32>(-21922i, 8108i, 0i, 0i), vec4<i32>(-26696i, -1i, i32(-2147483648), -28754i), vec4<i32>(-1i, -1i, 14896i, -31591i), vec4<i32>(1i, 2147483647i, 50045i, -1i), vec4<i32>(2147483647i, -5630i, 2147483647i, 0i), vec4<i32>(-3780i, 1i, -1i, 13190i), vec4<i32>(0i, 0i, i32(-2147483648), 36113i), vec4<i32>(2147483647i, i32(-2147483648), 0i, 2147483647i), vec4<i32>(1i, 9750i, 0i, -1i), vec4<i32>(0i, -19368i, 14047i, i32(-2147483648)), vec4<i32>(-45338i, -29668i, 0i, -14922i), vec4<i32>(57241i, -32507i, 1i, -7514i), vec4<i32>(0i, -24297i, 49400i, 33629i), vec4<i32>(i32(-2147483648), -1i, -6086i, 2147483647i));

var<private> global4: vec2<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    let var_0 = all(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(-global4.x)) + _wgslsmith_f_op_f32(global4.x - global4.x)), -870f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(119f, -388f, global4.x) - vec3<f32>(2465f, global4.x, 315f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-190f, global4.x, global4.x)))), _wgslsmith_div_f32(-829f, 1185f) == _wgslsmith_div_f32(1332f, _wgslsmith_f_op_f32(-global4.x))))));
    var var_2 = Struct_3(1611f, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d >> (1u % 32u), 10659u | u_input.d, u_input.c.x) >> (~max(vec3<u32>(24982u, u_input.c.x, 47502u), vec3<u32>(111285u, 40299u, 0u)) % vec3<u32>(32u)), firstLeadingBit(countOneBits(~vec3<u32>(4294967295u, 0u, 22997u)))), Struct_1(all(!vec3<bool>(var_0, false, false))), vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_mod_u32(u_input.d, u_input.d)) ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 25400u), vec2<u32>(u_input.d, u_input.a.x)), firstTrailingBit(41067u)), u_input.d, 1u | _wgslsmith_clamp_u32(max(4294967295u, 0u), reverseBits(u_input.c.x), ~u_input.d)));
    let var_3 = !vec3<bool>(!any(select(vec4<bool>(true, false, var_2.c.a, false), vec4<bool>(false, var_0, var_2.c.a, false), true)), -624f >= _wgslsmith_f_op_f32(-global4.x), !all(vec2<bool>(true, true)));
    var var_4 = global4.x;
    return firstLeadingBit(~1u);
}

fn func_2(arg_0: vec3<bool>) -> bool {
    global0 = ~(~(reverseBits(4294967295u >> (u_input.a.x % 32u)) | u_input.d));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1169f))))), vec2<i32>(19446i, _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 2u)] << (u_input.c.x % 32u), -2147483647i, global2[_wgslsmith_index_u32(1u, 2u)]), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 0i, global2[_wgslsmith_index_u32(4294967295u, 2u)]), vec3<i32>(2833i, -1i, -24579i)), -vec3<i32>(u_input.b, u_input.b, u_input.e)))), vec2<i32>(1808i, abs(i32(-1i) * -2147483647i)) << (vec2<u32>(func_3(), 1u) % vec2<u32>(32u)));
    var var_1 = all(select(select(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), !arg_0.x), select(!vec4<bool>(true, false, true, arg_0.x), vec4<bool>(false, false, false, arg_0.x), true), vec4<bool>(25288i > var_0.b.x, !arg_0.x, arg_0.x, arg_0.x))) && arg_0.x;
    let var_2 = !(!arg_0);
    var var_3 = Struct_1(any(!vec4<bool>(arg_0.x && arg_0.x, all(vec4<bool>(true, var_2.x, false, arg_0.x)), var_2.x, false)));
    return arg_0.x;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> f32 {
    global1 = array<vec3<bool>, 15>();
    global0 = max(u_input.d, ~abs(_wgslsmith_add_u32(firstLeadingBit(u_input.a.x), 4294967295u)));
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, -1472f)), _wgslsmith_div_vec2_f32(vec2<f32>(global4.x, 739f), vec2<f32>(global4.x, -623f))) * vec2<f32>(_wgslsmith_f_op_f32(-1538f + global4.x), _wgslsmith_f_op_f32(-global4.x)))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-561f, 378f) + vec2<f32>(_wgslsmith_div_f32(global4.x, 3641f), _wgslsmith_f_op_f32(global4.x * global4.x))))));
    global2 = array<i32, 2>();
    global0 = _wgslsmith_add_u32(~func_3(), u_input.c.x) << (0u % 32u);
    return global4.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: u32) -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(func_4(Struct_1(func_2(vec3<bool>(false, arg_0.a, arg_0.a))), u_input.a.x)), vec3<u32>(~_wgslsmith_mult_u32(~arg_3, arg_1.x >> (18503u % 32u)), abs(~9538u ^ arg_1.x), arg_1.x), Struct_1(-9007i != reverseBits(arg_2.x >> (arg_3 % 32u))), ~reverseBits(vec3<u32>(reverseBits(20851u), ~arg_1.x, arg_1.x)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -946f)))), arg_2.yy, arg_2.wz);
    var var_2 = arg_0;
    let var_3 = var_1.a;
    let var_4 = select(select(false || (var_1.a == _wgslsmith_f_op_f32(min(-1084f, 1000f))), arg_1.x < u_input.c.x, !((arg_2.x | 37592i) >= _wgslsmith_mod_i32(29465i, var_1.c.x))), false, func_2(!vec3<bool>(false, var_0.a == 135f, true)));
    return var_4 & (_wgslsmith_add_i32(min(global2[_wgslsmith_index_u32(arg_1.x, 2u)], -53586i) ^ countOneBits(arg_2.x), i32(-1i) * -16521i) >= -2147483647i);
}

fn func_5(arg_0: vec2<bool>) -> u32 {
    var var_0 = vec2<i32>(1i, 0i);
    var var_1 = Struct_2(global4.x, max(firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(u_input.e, -28653i)), -vec2<i32>(var_0.x >> (u_input.c.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(50128i, 0i, 15697i), vec3<i32>(2147483647i, var_0.x, global2[_wgslsmith_index_u32(98460u, 2u)])))), firstLeadingBit(firstTrailingBit(-(vec2<i32>(0i, -1i) >> (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))))));
    var var_2 = Struct_1(all(select(select(select(vec4<bool>(true, true, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, true), true), !vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), select(vec4<bool>(true, true, false, false), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))), !(!vec4<bool>(true, arg_0.x, arg_0.x, false)), true)));
    var_1 = Struct_2(_wgslsmith_f_op_f32(-var_1.a), var_1.c, _wgslsmith_mult_vec2_i32(var_1.c, abs(var_1.b)));
    let var_3 = _wgslsmith_div_u32(~u_input.c.x >> (_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, 20922u), vec3<u32>(u_input.c.x, 0u, u_input.d)), ~firstLeadingBit(vec3<u32>(u_input.c.x, u_input.a.x, 8744u))) % 32u), 4294967295u);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(vec2<bool>(true, select(func_1(Struct_1(false), u_input.c, vec4<i32>(-2147483647i, 0i, 0i, 0i), 0u), func_2(global1[_wgslsmith_index_u32(u_input.a.x, 15u)]), true))) | _wgslsmith_dot_vec3_u32(~vec3<u32>(abs(u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 83764u, 25653u), vec3<u32>(u_input.a.x, u_input.d, u_input.a.x)), ~39157u), vec3<u32>(4294967295u, ~u_input.a.x ^ u_input.a.x, ~u_input.d));
    global3 = array<vec4<i32>, 32>();
    global3 = array<vec4<i32>, 32>();
    var var_0 = Struct_1(true);
    let var_1 = ~u_input.c.x;
    let var_2 = Struct_3(-890f, vec3<u32>(abs(~_wgslsmith_add_u32(var_1, 1u)), abs(~abs(14354u)), ~u_input.d), Struct_1((var_0.a || false) || var_0.a), ~vec3<u32>(min(18371u, abs(u_input.d)), var_1, _wgslsmith_clamp_u32(func_3(), abs(u_input.d), _wgslsmith_sub_u32(u_input.a.x, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(), _wgslsmith_div_i32(~_wgslsmith_sub_i32(2147483647i, u_input.e) & u_input.e, ~1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(931f, 343f, var_2.a)) * vec3<f32>(552f, -615f, var_2.a)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.a, var_2.a, -149f), _wgslsmith_f_op_vec3_f32(vec3<f32>(411f, 1526f, -375f) * vec3<f32>(var_2.a, 245f, var_2.a))))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 322f, -752f) - vec3<f32>(-924f, var_2.a, global4.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, global4.x, -1066f)))))), var_1, vec3<i32>(-20655i, -u_input.e, countOneBits(~firstLeadingBit(-19362i))));
}

