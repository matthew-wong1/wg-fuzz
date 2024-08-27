struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec3<bool>) -> i32 {
    let var_0 = arg_0.x | ~_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(arg_0 >> (arg_0 % vec3<u32>(32u)), arg_0));
    return arg_1.c;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = 39826i | max(max(_wgslsmith_mult_i32(-2147483647i, -1i), -func_3(vec3<u32>(24648u, 0u, 8407u), Struct_1(vec2<i32>(-1i, 41133i), vec2<bool>(false, arg_0), -12712i, vec3<i32>(28722i, 0i, -1i)), vec4<bool>(true, true, arg_0, true), vec3<bool>(arg_0, true, arg_0))), -2147483647i);
    let var_1 = Struct_1(vec2<i32>(~var_0, 30552i), !select(!vec2<bool>(true, arg_0), !(!vec2<bool>(arg_0, arg_0)), false), min(var_0, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0, ~39468i), abs(firstLeadingBit(vec3<i32>(0i, var_0, 2147483647i))))), vec3<i32>(-46450i, 1i, -_wgslsmith_sub_i32(var_0, var_0)) << (_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, 59018u, u_input.b), max(vec3<u32>(4294967295u, 47554u, u_input.a.x), vec3<u32>(12623u, u_input.b, 38434u)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, 133716u), vec3<u32>(u_input.b, 1u, 46211u))), select(~vec3<u32>(4294967295u, 7638u, u_input.a.x), min(vec3<u32>(113414u, 23606u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.b, 37754u)), vec3<bool>(false, false, arg_0))) % vec3<u32>(32u)));
    let var_2 = -1759f;
    var var_3 = var_1;
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -844f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - var_2)))), -1023f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(f32(-1f) * -691f))))));
    return var_1;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = Struct_2(true, min(~(~vec3<i32>(arg_1.a.x, -363i, 0i)), max(abs(arg_1.d), max(vec3<i32>(16784i, -68002i, -55850i), vec3<i32>(2147483647i, arg_1.d.x, arg_1.d.x)) << ((vec3<u32>(1u, 39345u, u_input.b) >> (vec3<u32>(0u, 0u, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u)))), ~_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.a.x, 54497u, 81775u, u_input.b)), vec4<u32>(1u, 12691u, u_input.a.x, 73831u) | _wgslsmith_mult_vec4_u32(vec4<u32>(115352u, u_input.b, u_input.b, 15620u), vec4<u32>(0u, 74940u, u_input.b, 0u))));
    var var_1 = arg_1;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(880f * _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), 220f);
    let var_3 = u_input.b;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-394f, 1000f) + vec2<f32>(-608f, 1332f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -507f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1027f, -188f), vec2<f32>(-1148f, -531f))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(886f * -1281f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1893f)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(505f, 909f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(522f, -378f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(406f, 482f) * vec2<f32>(370f, 379f))))))));
    return select(select(vec4<bool>(all(vec4<bool>(true, false, true, true)), any(vec3<bool>(true, arg_0, arg_0)), 54220u == (15320u << (u_input.a.x % 32u)), arg_1.b.x), select(select(!vec4<bool>(false, true, var_1.b.x, true), vec4<bool>(true, false, true, true), select(vec4<bool>(true, var_0.a, true, false), vec4<bool>(false, arg_1.b.x, true, var_0.a), vec4<bool>(false, false, var_1.b.x, arg_0))), vec4<bool>(select(true, var_1.b.x, var_0.a), !arg_1.b.x, any(vec4<bool>(var_0.a, arg_0, var_1.b.x, false)), false), select(false, all(vec3<bool>(true, false, var_0.a)), 14669i != arg_1.a.x)), vec4<bool>(true, !arg_1.b.x, false, true)), vec4<bool>(false, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_4.x + var_4.x))) == _wgslsmith_f_op_f32(var_4.x - 319f), (arg_0 || true) | true, any(vec3<bool>(false, var_1.b.x | arg_1.b.x, any(vec2<bool>(var_1.b.x, arg_1.b.x))))), !select(false, var_1.b.x, !arg_0));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<u32>) -> i32 {
    var var_0 = vec4<bool>(!any(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), 49537i >= ~arg_0, !all(vec2<bool>(true, true)), any(vec2<bool>(true, true)));
    var_0 = !select(func_4(true, func_2(true)), !(!(!vec4<bool>(true, var_0.x, false, true))), select(vec4<bool>(true, !var_0.x, var_0.x && false, var_0.x), vec4<bool>(false, var_0.x, false, true), var_0.x));
    let var_1 = Struct_1(vec2<i32>(arg_0, _wgslsmith_dot_vec4_i32(~vec4<i32>(-64371i, 2147483647i, arg_0, 2147483647i) | -vec4<i32>(-25326i, -12553i, arg_0, -26447i), max(vec4<i32>(-2147483647i, arg_0, arg_0, 2147483647i), vec4<i32>(0i, -2147483647i, arg_0, -29543i)) & (vec4<i32>(arg_0, arg_0, arg_0, arg_0) & vec4<i32>(0i, arg_0, arg_0, arg_0)))), var_0.ww, -24469i, max(vec3<i32>(-1i, arg_0 ^ arg_0, -arg_0), vec3<i32>(_wgslsmith_mult_i32(18055i, 0i), arg_0, arg_0)));
    var var_2 = select(vec4<bool>(true, var_0.x, all(var_0.zz), func_2(u_input.a.x == firstLeadingBit(1u)).b.x), func_4(false, Struct_1(vec2<i32>(min(-1i, arg_0), var_1.a.x), select(!var_1.b, var_0.xy, var_1.b), reverseBits(arg_0), -var_1.d)), true);
    var_0 = vec4<bool>(any(var_0.yx), func_4(!(!var_1.b.x), var_1).x, !var_0.x && true, var_1.d.x < _wgslsmith_clamp_i32(-1i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-14786i, var_1.d.x), -1i, 2147483647i), var_1.a.x));
    return _wgslsmith_sub_i32(~25964i, ~2147483647i);
}

fn func_5(arg_0: u32, arg_1: i32) -> Struct_2 {
    var var_0 = -(func_2(true).d.x << ((_wgslsmith_add_u32(~31148u, firstTrailingBit(u_input.a.x)) >> (~arg_0 % 32u)) % 32u));
    let var_1 = vec2<i32>(1i, _wgslsmith_clamp_i32(-1i, 0i, 49153i));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -127f);
    var_0 = 1i;
    var var_3 = true;
    return Struct_2(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(true, true))))), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.x & arg_1, ~2147483647i, 1345i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, 36906i, -23005i), vec3<i32>(14571i, 13251i, var_1.x) | vec3<i32>(arg_1, arg_1, -21204i), vec3<i32>(-1i, var_1.x, 39693i) ^ vec3<i32>(0i, 2147483647i, arg_1))), vec3<i32>(-_wgslsmith_add_i32(var_1.x, arg_1), countOneBits(min(-15371i, arg_1)), select(-16118i, func_3(vec3<u32>(4294967295u, arg_0, 3720u), Struct_1(var_1, vec2<bool>(true, false), -65496i, vec3<i32>(-1i, var_1.x, 39848i)), vec4<bool>(false, false, true, true), vec3<bool>(false, false, true)), arg_1 < -1i))), countOneBits(firstLeadingBit(reverseBits(vec4<u32>(14163u, 61157u, u_input.b, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_mult_u32(_wgslsmith_add_u32(~u_input.b, 36801u), _wgslsmith_div_u32(1u, 1u)), func_1(_wgslsmith_sub_i32(11287i, _wgslsmith_mult_i32(0i, 1i)), vec3<f32>(1f, 1f, 1f), u_input.a));
    var var_1 = Struct_1((_wgslsmith_add_vec2_i32(vec2<i32>(var_0.b.x, 17081i), countOneBits(var_0.b.xy)) & var_0.b.yz) ^ var_0.b.yz, !vec2<bool>(var_0.a, true), ~(-2147483647i), countOneBits(vec3<i32>(var_0.b.x, firstTrailingBit(var_0.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, 2147483647i, var_0.b.x, 20537i), abs(vec4<i32>(0i, var_0.b.x, -1i, var_0.b.x))))));
    let var_2 = ~vec3<u32>(_wgslsmith_clamp_u32(8215u, 4294967295u, firstLeadingBit(_wgslsmith_sub_u32(43452u, 7818u))), reverseBits(1u) >> (((0u | u_input.b) & u_input.b) % 32u), 4294967295u);
    var var_3 = func_2(var_1.b.x);
    var_1 = Struct_1(vec2<i32>(countOneBits(min(var_0.b.x, 37357i)), 44032i) >> (max(~(~vec2<u32>(4294967295u, var_2.x)), ~vec2<u32>(1u, u_input.b)) % vec2<u32>(32u)), var_3.b, 0i, var_1.d);
    var var_4 = vec3<i32>(-select(var_0.b.x, var_3.c, true), -2147483647i, min(var_3.c, var_1.c));
    var var_5 = func_5(~1u, -var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(0i, var_1.a.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(422f, -352f)))))), var_5.c.www, var_3.d.x, _wgslsmith_f_op_f32(ceil(-1187f)));
}

