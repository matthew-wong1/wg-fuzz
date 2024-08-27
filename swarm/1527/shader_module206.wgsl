struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 32823u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec2<bool>) -> vec2<f32> {
    let var_0 = max(_wgslsmith_add_vec4_i32(abs(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(59084i, -18466i, u_input.d, -2147483647i)), vec4<i32>(u_input.d, u_input.d, -1i, 24580i))), vec4<i32>(~(-36336i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -40446i), vec2<i32>(u_input.d, -2147483647i)) ^ -u_input.d, firstLeadingBit(~2147483647i), _wgslsmith_mod_i32(u_input.d, u_input.d))), ~_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(u_input.d, -51911i, -2147483647i, -1i)), vec4<i32>(u_input.d, 6116i, 0i, 0i)), vec4<i32>(u_input.d, u_input.d ^ u_input.d, -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 25078i), vec2<i32>(-64744i, u_input.d)))));
    let var_1 = vec3<f32>(-1565f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-141f * _wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), arg_0)));
    global0 = select(0u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(u_input.e, u_input.b, u_input.a, 1u), vec4<u32>(u_input.a, u_input.b, 32329u, u_input.e)), vec4<u32>(4294967295u, 69625u, u_input.a, 17523u)), select(~vec4<u32>(0u, 0u, u_input.e, u_input.c), ~vec4<u32>(u_input.a, u_input.e, 0u, 0u), any(vec3<bool>(arg_1, arg_1, arg_1)))), vec4<u32>(u_input.c, countOneBits(u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.e), vec2<u32>(0u, 17098u) | vec2<u32>(u_input.a, 8371u)), ~u_input.c)), any(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, false, arg_1), vec3<bool>(false, true, arg_1))));
    var var_2 = Struct_1(var_0.x ^ 0i);
    var_2 = Struct_1(~23232i);
    return var_1.xx;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: i32, arg_3: bool) -> u32 {
    var var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~max(min(vec2<u32>(4294967295u, 9897u), vec2<u32>(u_input.c, 10696u)), firstTrailingBit(vec2<u32>(u_input.c, 4294967295u))), select(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(4294967295u, u_input.a)), ~vec2<u32>(u_input.c, u_input.b)), vec2<u32>(~22281u, u_input.e), arg_0.xz)), ~(~firstLeadingBit(abs(vec2<u32>(u_input.e, 47075u)))));
    var_0 = vec2<u32>(~u_input.a, ~var_0.x);
    var var_1 = abs(~max(~reverseBits(vec4<u32>(var_0.x, var_0.x, u_input.c, 1u)), ~vec4<u32>(4910u, var_0.x, 20294u, 4294967295u) >> (firstLeadingBit(vec4<u32>(71181u, u_input.a, 63215u, u_input.a)) % vec4<u32>(32u))));
    var var_2 = arg_1;
    var_1 = _wgslsmith_mod_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(0u, u_input.c), ~var_0.x, ~1u, u_input.a), vec4<u32>(var_0.x, var_1.x, firstLeadingBit(var_0.x), var_1.x)), ~(~abs(vec4<u32>(0u, 82372u, u_input.a, u_input.b))), arg_0), firstTrailingBit(~_wgslsmith_mod_vec4_u32(~vec4<u32>(28512u, 32965u, var_1.x, var_0.x), reverseBits(vec4<u32>(var_1.x, var_1.x, u_input.b, 1u)))));
    return u_input.e;
}

fn func_2() -> Struct_1 {
    let var_0 = ~(u_input.a ^ ~_wgslsmith_mod_u32(~1u, u_input.c));
    let var_1 = vec4<bool>(var_0 >= func_4(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(false, false, false, false), true), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(159f, 1777f) + vec2<f32>(-195f, -1379f)), _wgslsmith_f_op_vec2_f32(func_3(-536f, false, vec2<bool>(true, false))))), u_input.d, false), true, all(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), 0u > var_0)), any(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), u_input.d > 16653i), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))));
    global0 = var_0;
    var var_2 = var_1.x;
    var var_3 = vec2<i32>(-1i) * -vec2<i32>(abs(-u_input.d), abs(-2147483647i));
    return Struct_1(countOneBits(-2147483647i));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(203f, 1000f, 1018f) * vec3<f32>(arg_0.x, 142f, -863f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -262f, arg_0.x))))))));
    var var_1 = abs(func_2().a);
    global0 = _wgslsmith_mod_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 8697u, u_input.e), max(vec3<u32>(10286u, 30766u, u_input.c), vec3<u32>(u_input.b, 1204u, u_input.b)))) ^ 4294967295u, 73892u);
    let var_2 = ~max(~(~vec2<u32>(u_input.e, u_input.c)), abs(~vec2<u32>(0u, u_input.e)));
    let var_3 = true;
    return func_2();
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec3<u32>(_wgslsmith_div_u32(u_input.b, 4294967295u), (u_input.c << (1u % 32u)) >> (select(u_input.c, ~min(u_input.e, 85152u), false) % 32u), 0u);
    let var_1 = max(~var_0.x, ~0u);
    var var_2 = Struct_1(arg_0.a);
    return func_2();
}

fn func_1() -> Struct_1 {
    let var_0 = ~(~(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.c, 16042u), vec3<u32>(u_input.e, 36704u, 31391u)), 1u, 1u, 0u)));
    var var_1 = u_input.d;
    var var_2 = func_6(func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(291f, -1014f) + vec2<f32>(-1613f, 195f)) - vec2<f32>(-449f, 101f))), func_2()), Struct_1(u_input.d), !select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)), select(true, true, all(vec2<bool>(true, true)))), Struct_1(i32(-1i) * -56523i));
    var var_3 = select(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(false, false, all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), true)), any(vec2<bool>(true, true))), any(!select(vec2<bool>(false, false), vec2<bool>(true, true), true))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true)), select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(false, true, false, false)), false), !(true && select(true, true, true)) | ((~49742i != u_input.d) && any(vec4<bool>(false, true, false, false))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(627f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1302f))), 987f));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~1u;
    var var_0 = ~u_input.d;
    var var_1 = 28567u;
    let var_2 = func_1();
    var var_3 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), vec3<bool>(false, all(vec4<bool>(false, false, true, false)), true), any(vec3<bool>(all(vec3<bool>(true, false, false)), any(vec2<bool>(true, true)), select(true, false, true))));
    global0 = u_input.a;
    var var_4 = i32(-1i) * -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(-abs(vec3<i32>(-44894i, -29077i, 7132i)), _wgslsmith_add_vec3_i32(vec3<i32>(var_2.a, -18510i, -40965i) | (vec3<i32>(var_2.a, var_2.a, var_2.a) << (vec3<u32>(u_input.a, 4294967295u, u_input.a) % vec3<u32>(32u))), -vec3<i32>(var_2.a, u_input.d, u_input.d) | vec3<i32>(u_input.d, 29336i, 1i)), ((vec3<i32>(u_input.d, -1055i, u_input.d) ^ vec3<i32>(u_input.d, 20126i, var_2.a)) << (firstTrailingBit(vec3<u32>(0u, u_input.c, 4294967295u)) % vec3<u32>(32u))) >> (vec3<u32>(~u_input.a, 6322u, 44023u) % vec3<u32>(32u))), -(vec3<i32>(-27744i, ~u_input.d, 1i) ^ ~vec3<i32>(-25300i, u_input.d, -1425i)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(countOneBits(u_input.c), _wgslsmith_sub_u32(1u, u_input.e), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, 16933u, 0u), vec4<u32>(18845u, u_input.b, 5371u, u_input.c))), vec3<u32>(u_input.a, 0u, 1u >> (0u % 32u)), vec3<u32>(countOneBits(u_input.a), ~0u, _wgslsmith_div_u32(4294967295u, u_input.e))), u_input.b, firstTrailingBit(_wgslsmith_mod_vec3_u32(firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(16323u, 32554u, u_input.b), vec3<u32>(12891u, u_input.c, 15651u))), vec3<u32>(82847u, firstLeadingBit(u_input.e), _wgslsmith_mod_u32(u_input.b, 20461u)))));
}

