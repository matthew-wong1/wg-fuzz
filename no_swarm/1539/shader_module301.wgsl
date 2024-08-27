struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
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

var<private> global0: i32 = 1i;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(true, -61989i, vec4<bool>(false, false, true, false)), Struct_1(false, 0i, vec4<bool>(false, true, true, true)), Struct_1(false, i32(-2147483648), vec4<bool>(false, false, false, true)), Struct_1(true, 12928i, vec4<bool>(true, true, false, false)), Struct_1(true, -7740i, vec4<bool>(false, true, false, false)), Struct_1(false, 2147483647i, vec4<bool>(true, true, false, false)), Struct_1(true, 1i, vec4<bool>(false, true, false, false)), Struct_1(true, -1i, vec4<bool>(false, true, false, true)), Struct_1(true, 5250i, vec4<bool>(false, true, false, false)), Struct_1(false, i32(-2147483648), vec4<bool>(true, false, true, false)), Struct_1(false, i32(-2147483648), vec4<bool>(false, true, true, false)), Struct_1(true, 1i, vec4<bool>(false, true, false, true)), Struct_1(false, -1i, vec4<bool>(false, false, true, false)), Struct_1(false, -1i, vec4<bool>(true, true, true, false)), Struct_1(true, 153i, vec4<bool>(false, false, true, true)), Struct_1(false, -1i, vec4<bool>(true, false, true, true)), Struct_1(true, -10347i, vec4<bool>(true, false, true, false)), Struct_1(true, 2147483647i, vec4<bool>(true, false, false, true)), Struct_1(true, -16530i, vec4<bool>(true, true, true, false)), Struct_1(false, 2147483647i, vec4<bool>(true, true, false, true)), Struct_1(true, 81103i, vec4<bool>(true, false, false, false)), Struct_1(true, -22565i, vec4<bool>(false, true, true, true)), Struct_1(false, -9675i, vec4<bool>(true, true, true, false)), Struct_1(true, -72566i, vec4<bool>(true, false, false, true)), Struct_1(false, 23288i, vec4<bool>(true, true, false, true)), Struct_1(true, 25314i, vec4<bool>(false, true, true, true)), Struct_1(true, 2147483647i, vec4<bool>(true, false, true, false)), Struct_1(false, -11451i, vec4<bool>(false, true, true, false)), Struct_1(true, 1i, vec4<bool>(false, false, false, true)), Struct_1(true, -16308i, vec4<bool>(false, false, false, false)), Struct_1(false, 38912i, vec4<bool>(true, false, true, false)), Struct_1(false, -39951i, vec4<bool>(false, false, false, true)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: i32) -> vec4<bool> {
    global1 = array<Struct_1, 32>();
    global1 = array<Struct_1, 32>();
    global1 = array<Struct_1, 32>();
    var var_0 = 22299u;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, arg_1, arg_1), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-969f, -147f, arg_1), vec3<f32>(338f, arg_1, arg_1), false))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1 * 111f), -251f, 330f) + vec3<f32>(1003f, 2105f, _wgslsmith_f_op_f32(trunc(-814f))))));
    return select(vec4<bool>(!(_wgslsmith_mult_u32(u_input.b, 67013u) != firstTrailingBit(u_input.a.x)), !select(true, true, true) && ((arg_1 <= var_1.x) | true), all(vec4<bool>(true, true, true, true)), true), select(!vec4<bool>(all(vec2<bool>(false, false)), any(vec4<bool>(true, true, true, false)), true, true), select(vec4<bool>(true, any(vec2<bool>(false, false)), arg_1 < arg_1, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)))), false), vec4<bool>(select(any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), true, true), true, true, true));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(false, 2147483647i, select(!vec4<bool>(true, select(true, true, false), any(vec2<bool>(false, false)), true), !(!func_3(1i, 685f, u_input.c)), select(vec4<bool>(true, true, true, true), func_3(u_input.c, _wgslsmith_f_op_f32(abs(-1556f)), u_input.c << (u_input.b % 32u)), true)));
    let var_1 = global1[_wgslsmith_index_u32(u_input.b, 32u)];
    global1 = array<Struct_1, 32>();
    let var_2 = Struct_1(var_1.c.x, _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec4_i32(max(countOneBits(vec4<i32>(var_1.b, var_1.b, var_1.b, -1i)), -vec4<i32>(0i, -47538i, var_0.b, 0i)), _wgslsmith_mult_vec4_i32(~vec4<i32>(var_1.b, 24161i, var_1.b, u_input.c), abs(vec4<i32>(1i, 2147483647i, 2147483647i, var_0.b)))), ~_wgslsmith_sub_i32(u_input.c, var_1.b) ^ var_0.b), !vec4<bool>(all(var_1.c.xyx), true, _wgslsmith_mult_i32(var_1.b, var_0.b) > -21008i, var_0.c.x));
    var_0 = Struct_1(any(var_2.c.wy), _wgslsmith_mod_i32(firstTrailingBit(max(~var_2.b, 4583i)), _wgslsmith_mod_i32(countOneBits(_wgslsmith_mod_i32(var_1.b, -18382i)), ~var_0.b)), vec4<bool>(all(vec4<bool>(true | var_2.c.x, var_1.c.x, false | var_0.c.x, true)), _wgslsmith_mult_i32(-31207i, max(42317i, u_input.c)) <= 44573i, var_2.c.x, true));
    return global1[_wgslsmith_index_u32(~(~49840u), 32u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<bool>) -> f32 {
    global0 = _wgslsmith_add_i32(select(-2147483647i, _wgslsmith_div_i32(u_input.c, ~1i), arg_0.a), ~arg_0.b) & 6643i;
    let var_0 = arg_0.b;
    var var_1 = vec2<bool>(!arg_2.x, false);
    global0 = -1i;
    var_1 = select(select(arg_2.zy, arg_2.wx, !func_2().c.xy), vec2<bool>(arg_0.c.x, true), vec2<bool>(!(!arg_2.x), arg_2.x));
    return _wgslsmith_div_f32(-1254f, -149f);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-196f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1)) * _wgslsmith_f_op_f32(func_4(func_2(), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, 47786u, 0u, 0u), vec4<u32>(31360u, u_input.b, 4294967295u, 1u) << (vec4<u32>(u_input.b, u_input.a.x, 0u, u_input.b) % vec4<u32>(32u))), select(vec4<bool>(arg_2.c.x, arg_2.a, false, arg_2.c.x), !arg_2.c, !arg_2.c)))));
    let var_1 = func_2();
    let var_2 = arg_2.c;
    let var_3 = vec4<f32>(751f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(732f * arg_1))), u_input.b < 34915u)), arg_1);
    var var_4 = _wgslsmith_mod_vec3_u32(vec3<u32>(0u, _wgslsmith_div_u32(u_input.a.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 70684u, 1u, 1u), vec4<u32>(0u, u_input.b, 1u, 31046u)), 53222u, countOneBits(u_input.b))), _wgslsmith_mod_u32(~u_input.a.x, 0u)), (((vec3<u32>(33890u, 4294967295u, u_input.a.x) & vec3<u32>(0u, u_input.b, u_input.b)) | (vec3<u32>(u_input.a.x, u_input.b, 35579u) | vec3<u32>(26238u, 8162u, u_input.a.x))) & vec3<u32>(~u_input.a.x, 1u, firstLeadingBit(19603u))) | (max(~vec3<u32>(94492u, 0u, u_input.b), min(vec3<u32>(4294967295u, 47155u, 4294967295u), vec3<u32>(4294967295u, u_input.a.x, u_input.b))) & ~select(vec3<u32>(19948u, u_input.b, 8099u), vec3<u32>(25574u, u_input.b, u_input.b), var_1.a)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = func_1(_wgslsmith_add_i32(0i, -18490i) <= u_input.c, _wgslsmith_f_op_f32(-689f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1365f)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~45340u | _wgslsmith_sub_u32(u_input.a.x, u_input.b), ~(~1u), 12464u, ~min(0u, u_input.a.x)), ~(select(vec4<u32>(u_input.b, u_input.b, 8124u, u_input.a.x), vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 15259u), vec4<bool>(false, true, false, true)) << ((vec4<u32>(u_input.a.x, 10701u, 23485u, u_input.b) >> (vec4<u32>(0u, 4294967295u, 17295u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)))), 32u)]);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 83415u, 84849u, u_input.b), vec4<u32>(u_input.a.x, 28583u, u_input.a.x, 11188u)), ~u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(23373u, u_input.b, 1u, 4294967295u))), vec4<bool>(true, true, func_3(var_1.b, -332f, u_input.c).x, u_input.b > 62934u)))), _wgslsmith_f_op_f32(step(502f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-583f, 143f, false)) * _wgslsmith_f_op_f32(f32(-1f) * -647f))))));
    global1 = array<Struct_1, 32>();
    let var_3 = Struct_1(true, -19830i, vec4<bool>(any(!var_1.c), false, all(func_3(_wgslsmith_add_i32(u_input.c, u_input.c), _wgslsmith_f_op_f32(var_2.x - var_2.x), u_input.c)), _wgslsmith_f_op_f32(var_2.x + 1000f) != 1f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(3637f, _wgslsmith_f_op_f32(step(-1470f, 424f)))), var_2.x, _wgslsmith_f_op_f32(-var_2.x), -604f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-536f, -1187f, var_2.x, var_2.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, 1097f, var_2.x) + vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))))), vec2<i32>(func_2().b, ~var_3.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(), select(vec4<u32>(1u, 1u, 4294967295u, u_input.b), vec4<u32>(1u, u_input.b, u_input.b, u_input.b), true), var_3.c))))), ~countOneBits(abs(~u_input.a.x)));
}

