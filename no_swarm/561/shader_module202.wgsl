struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(13076u, 29776u, 1u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(12769u, 34662u, 95192u), vec3<u32>(4294967295u, 1u, 28056u), vec3<u32>(1u, 326u, 4263u), vec3<u32>(5245u, 4294967295u, 2176u), vec3<u32>(186u, 79472u, 14148u), vec3<u32>(39260u, 18027u, 19105u), vec3<u32>(34643u, 86189u, 38982u), vec3<u32>(342u, 9099u, 1u), vec3<u32>(10298u, 75706u, 55119u), vec3<u32>(4294967295u, 0u, 18297u), vec3<u32>(4294967295u, 3236u, 0u), vec3<u32>(67883u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(64768u, 1u, 39686u), vec3<u32>(19024u, 4294967295u, 69973u), vec3<u32>(17473u, 5910u, 35881u), vec3<u32>(63561u, 7158u, 69217u), vec3<u32>(4943u, 32450u, 4294967295u), vec3<u32>(52019u, 0u, 21204u), vec3<u32>(4294967295u, 4088u, 4294967295u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 15823u, 4294967295u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(5812u, 1u, 67241u), vec3<u32>(47941u, 62918u, 4294967295u), vec3<u32>(5924u, 4294967295u, 4294967295u));

var<private> global1: vec3<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = arg_1;
    var var_1 = arg_1;
    var var_2 = arg_0.zz;
    var_0 = Struct_1(-select(vec2<i32>(2147483647i, 0i), arg_1.a, global1.yz) & vec2<i32>(select(-1i, _wgslsmith_add_i32(0i, 0i), select(true, false, global1.x)), abs(-65453i) & _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, -1i, u_input.c.x, var_0.d.x), vec4<i32>(var_1.b.x, 2147483647i, 0i, var_1.a.x))), arg_1.b, var_1.c, -_wgslsmith_mult_vec2_i32(reverseBits(min(var_1.b, vec2<i32>(-22192i, arg_1.b.x))), var_0.a), abs(var_1.e >> (u_input.a.xw % vec2<u32>(32u))) & _wgslsmith_mod_vec2_u32(select(u_input.a.zy, firstTrailingBit(var_0.e), global1.zy), var_0.e));
    var var_3 = Struct_1(countOneBits(vec2<i32>(-44526i, 0i) << (var_1.e % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_i32(~_wgslsmith_mod_vec2_i32(var_1.b, vec2<i32>(arg_1.d.x, u_input.c.x)), max(select(vec2<i32>(arg_1.d.x, 2147483647i), u_input.c.zz, false), vec2<i32>(2147483647i, var_0.a.x) | arg_1.d)), vec2<i32>(-8944i, ~(~firstTrailingBit(u_input.c.x))), _wgslsmith_f_op_vec4_f32(-arg_1.c), vec2<i32>(var_0.b.x, ~1i), ~abs(min(vec2<u32>(var_0.e.x, var_0.e.x), max(var_1.e, vec2<u32>(30684u, 5883u)))));
    return var_3.a;
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = Struct_1(u_input.c.xz, vec2<i32>(u_input.c.x, ~(-10126i & u_input.c.x) | _wgslsmith_add_i32(25829i, max(-1i, -1i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1436f, -507f, arg_0, -169f) - vec4<f32>(arg_0, arg_0, -177f, arg_0)) - _wgslsmith_div_vec4_f32(vec4<f32>(-1432f, 1090f, arg_0, arg_0), vec4<f32>(-431f, arg_0, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0, arg_0, -1186f))))), vec2<i32>(_wgslsmith_mod_i32(1i, -1i), u_input.c.x), vec2<u32>(~min(1u, u_input.b), u_input.b) ^ (vec2<u32>(~u_input.b, 1u) | ~(~vec2<u32>(1u, 41688u))));
    let var_1 = Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.a, func_3(vec4<f32>(var_0.c.x, arg_0, 464f, arg_0), var_0), ~vec2<i32>(var_0.d.x, -49883i) | _wgslsmith_mod_vec2_i32(var_0.b, u_input.c.xy)), vec2<i32>(26781i, _wgslsmith_div_i32(var_0.b.x, ~(-31609i)))), vec2<i32>((var_0.a.x << (u_input.a.x % 32u)) | 31898i, ~func_3(var_0.c, var_0).x) ^ (abs(u_input.c.zy) >> (vec2<u32>(u_input.b, _wgslsmith_div_u32(u_input.a.x, 41402u)) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(var_0.c)), var_0.c, true))) - _wgslsmith_f_op_vec4_f32(-var_0.c)), ~_wgslsmith_sub_vec2_i32(u_input.c.xy, vec2<i32>(-4594i, var_0.d.x)) & u_input.c.zy, _wgslsmith_div_vec2_u32(var_0.e, ~(~vec2<u32>(var_0.e.x, var_0.e.x) >> (vec2<u32>(u_input.b, 17640u) % vec2<u32>(32u)))));
    let var_2 = select(!(!vec3<bool>(global1.x, false, false)), vec3<bool>(select(!(!global1.x), global1.x, global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(floor(1000f))) <= _wgslsmith_f_op_f32(f32(-1f) * -266f), false), all(select(vec3<bool>(!global1.x, global1.x && global1.x, global1.x), vec3<bool>(arg_0 <= var_1.c.x, true, global1.x), !select(vec3<bool>(true, global1.x, false), vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, true)))));
    var var_3 = _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(~var_1.e.x, u_input.b), u_input.a.zw), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.a.x), var_0.e), _wgslsmith_mult_vec2_u32(~u_input.a.xx, u_input.a.yw)), ~(~_wgslsmith_div_vec2_u32(var_0.e, vec2<u32>(1u, 58587u))), min(vec2<u32>(1u, u_input.a.x), ~vec2<u32>(7816u, var_1.e.x))));
    var_3 = var_1.e;
    return ~abs(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_1.e.x, u_input.b), min(var_3.x, var_3.x)), var_1.e.x, abs(abs(var_1.e.x))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: f32, arg_3: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -389f), _wgslsmith_f_op_f32(abs(arg_2)), -504f, 2205f))))) - vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -792f), arg_2)), -608f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2)) - _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1099f * 438f), _wgslsmith_f_op_f32(f32(-1f) * -579f))) - -470f)));
    var var_1 = Struct_1(select(~arg_0.xy, u_input.c.zy, arg_1), vec2<i32>(u_input.c.x, u_input.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-888f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-852f * arg_2), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_0.x, -606f)), -vec2<i32>(firstTrailingBit(firstTrailingBit(u_input.c.x)), abs(39209i)), abs(vec2<u32>(~4294967295u, 0u)));
    var var_2 = Struct_1(u_input.c.xz | -arg_0.xy, min(arg_0.yz, u_input.c.zx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-493f, -243f, 1141f, var_0.x) + var_1.c))))), vec2<i32>(max(-_wgslsmith_add_i32(var_1.a.x, u_input.c.x), -reverseBits(arg_0.x)), _wgslsmith_mult_i32(-max(0i, var_1.a.x), ~(-13488i >> (0u % 32u)))), ~(~(var_1.e | u_input.a.xz)));
    let var_3 = Struct_1(firstLeadingBit(-vec2<i32>(2147483647i, _wgslsmith_div_i32(0i, u_input.c.x))), vec2<i32>(8737i, -max(arg_0.x, firstTrailingBit(-2147483647i))), _wgslsmith_f_op_vec4_f32(-var_2.c), vec2<i32>(-1i) * -vec2<i32>(43059i, -7175i), var_2.e);
    var_1 = Struct_1(vec2<i32>(var_2.b.x, var_1.b.x), vec2<i32>(_wgslsmith_mod_i32(~_wgslsmith_sub_i32(var_2.b.x, var_3.a.x), reverseBits(arg_0.x)), var_2.a.x), vec4<f32>(_wgslsmith_f_op_f32(-arg_2), var_3.c.x, -2691f, var_1.c.x), vec2<i32>(abs(_wgslsmith_mult_i32(~var_3.b.x, 18058i ^ arg_0.x)), 52396i), select(var_3.e, vec2<u32>(max(~1u, reverseBits(u_input.b)), ~(~var_1.e.x)), arg_1));
    return global1.x != all(vec2<bool>(global1.x != true, true));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: vec4<bool>) -> bool {
    global0 = array<vec3<u32>, 28>();
    global0 = array<vec3<u32>, 28>();
    global0 = array<vec3<u32>, 28>();
    let var_0 = arg_2.x;
    var var_1 = arg_1;
    return var_0;
}

fn func_6(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global1 = select(arg_0, !vec3<bool>(u_input.a.x <= _wgslsmith_add_u32(1u, 11746u), true, all(select(vec2<bool>(global1.x, arg_3), vec2<bool>(global1.x, true), global1.zx))), vec3<bool>(true, false, !arg_0.x));
    global1 = vec3<bool>(true, arg_3, func_5(false, func_3(arg_2.c, Struct_1(-u_input.c.zy, vec2<i32>(-34078i, -1i), _wgslsmith_div_vec4_f32(arg_2.c, arg_2.c), vec2<i32>(-24317i, -6023i), ~vec2<u32>(28404u, 4294967295u))).x, vec4<bool>(true, any(vec3<bool>(true, true, false)), !any(arg_0), true)));
    let var_0 = vec4<u32>(_wgslsmith_sub_u32(5136u, reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 112792u, 33850u, 1u), ~u_input.a))), u_input.b, (min(~u_input.b, min(u_input.a.x, u_input.a.x)) ^ abs(firstTrailingBit(4294967295u))) ^ (u_input.b >> (17943u % 32u)), u_input.b);
    global0 = array<vec3<u32>, 28>();
    global1 = vec3<bool>(!any(select(vec4<bool>(false, false, arg_3, true), select(vec4<bool>(true, arg_3, arg_3, false), vec4<bool>(false, arg_0.x, false, false), false), select(vec4<bool>(arg_3, arg_3, true, true), vec4<bool>(arg_3, false, global1.x, global1.x), vec4<bool>(arg_0.x, global1.x, arg_3, arg_0.x)))), false == all(vec4<bool>(!arg_0.x, any(vec2<bool>(false, true)), true, global1.x)), !arg_0.x);
    return Struct_1(abs(max(_wgslsmith_div_vec2_i32(arg_2.b, vec2<i32>(arg_1, u_input.c.x)) & vec2<i32>(-2147483647i, arg_1), arg_2.b & arg_2.b)), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1, _wgslsmith_div_i32(~73664i, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(1i, arg_2.b.x, u_input.c.x)))), vec2<i32>(1i, firstLeadingBit(-1i)), vec2<i32>(1i, 4065i)), arg_2.c, arg_2.a >> (_wgslsmith_mult_vec2_u32(arg_2.e, vec2<u32>(4294967295u, arg_2.e.x)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(29505u, 28u)], u_input.a.zxy), 1u), 58439u | _wgslsmith_mod_u32(arg_2.e.x, arg_2.e.x)), reverseBits(~u_input.a.x)));
}

fn func_1() -> bool {
    var var_0 = func_6(vec3<bool>(global1.x, global1.x, func_5(func_4(u_input.c, !vec2<bool>(false, global1.x), _wgslsmith_f_op_f32(844f * 806f), func_2(-973f)), u_input.c.x, vec4<bool>(any(global1.yy), true, false, false))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(~u_input.c.yz, vec2<i32>(u_input.c.x, -1i)), max(u_input.c.yy, u_input.c.yy) << (~u_input.a.xz % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(firstTrailingBit(u_input.c.yz) << (u_input.a.ww % vec2<u32>(32u)), u_input.c.zz)), Struct_1(reverseBits(~(vec2<i32>(8189i, 32683i) | u_input.c.yz)), u_input.c.yz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1130f, -1230f, 701f, 507f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, -233f, 198f, -1181f))), select(vec4<bool>(true, global1.x, false, global1.x), vec4<bool>(true, false, global1.x, true), global1.x)))), abs(u_input.c.xz), u_input.a.yw), all(select(vec2<bool>(global1.x && global1.x, false), vec2<bool>(false && global1.x, global1.x | true), global1.x)));
    var_0 = Struct_1(~_wgslsmith_div_vec2_i32(-vec2<i32>(var_0.a.x, u_input.c.x), vec2<i32>(4389i, ~0i)), ~var_0.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(var_0.c)), _wgslsmith_f_op_vec4_f32(-var_0.c))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1182f), _wgslsmith_f_op_f32(-1000f * var_0.c.x), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-2029f + -1407f))), vec4<f32>(func_6(select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, true, true), global1.x), u_input.c.x, func_6(vec3<bool>(global1.x, false, global1.x), var_0.b.x, Struct_1(vec2<i32>(u_input.c.x, 23984i), vec2<i32>(var_0.b.x, 2147483647i), var_0.c, vec2<i32>(44441i, var_0.a.x), var_0.e), global1.x), global1.x).c.x, -2060f, _wgslsmith_f_op_f32(ceil(-542f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-693f, var_0.c.x))))), _wgslsmith_div_vec2_i32(u_input.c.zy, u_input.c.zy), abs(abs(~vec2<u32>(1u, var_0.e.x)) ^ vec2<u32>(_wgslsmith_sub_u32(u_input.b, 46115u), reverseBits(43240u))));
    let var_1 = Struct_1(func_6(vec3<bool>(global1.x, 758f == var_0.c.x, global1.x), u_input.c.x | (abs(u_input.c.x) << (abs(u_input.b) % 32u)), func_6(select(!vec3<bool>(global1.x, global1.x, global1.x), select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, false)), vec3<bool>(global1.x, global1.x, true)), 18399i, func_6(!vec3<bool>(global1.x, global1.x, global1.x), ~(-39625i), Struct_1(var_0.a, u_input.c.xy, vec4<f32>(2331f, -1079f, -717f, -994f), vec2<i32>(u_input.c.x, u_input.c.x), vec2<u32>(0u, 0u)), func_4(vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x), global1.xx, var_0.c.x, var_0.e.x)), !all(vec4<bool>(true, true, global1.x, global1.x))), func_4(-u_input.c, select(vec2<bool>(global1.x, true), global1.zx, !global1.xx), -1350f, u_input.a.x)).a, var_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)), vec4<f32>(_wgslsmith_f_op_f32(sign(2480f)), _wgslsmith_f_op_f32(-218f - var_0.c.x), _wgslsmith_f_op_f32(ceil(var_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1265f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(633f, var_0.c.x, -1000f, 499f) + var_0.c) * _wgslsmith_f_op_vec4_f32(trunc(var_0.c))))), vec2<i32>(~var_0.d.x ^ 0i, var_0.b.x), (vec2<u32>(_wgslsmith_mod_u32(var_0.e.x, var_0.e.x), u_input.b) >> (_wgslsmith_clamp_vec2_u32(u_input.a.zz, vec2<u32>(4294967295u, 4294967295u), _wgslsmith_div_vec2_u32(var_0.e, var_0.e)) % vec2<u32>(32u))) | _wgslsmith_clamp_vec2_u32(~max(vec2<u32>(8401u, 3789u), vec2<u32>(1262u, u_input.b)), max(min(var_0.e, var_0.e), vec2<u32>(u_input.b, u_input.a.x)), ~var_0.e));
    var var_2 = abs(_wgslsmith_sub_i32(-_wgslsmith_mod_i32(-2147483647i, func_6(vec3<bool>(true, global1.x, global1.x), -19866i, Struct_1(vec2<i32>(u_input.c.x, 42020i), u_input.c.zy, vec4<f32>(883f, -174f, var_1.c.x, var_1.c.x), vec2<i32>(1i, 38150i), var_0.e), global1.x).d.x), (i32(-1i) * -u_input.c.x) & u_input.c.x));
    return all(vec4<bool>(all(select(vec2<bool>(false, false), global1.xy, false)) || (_wgslsmith_f_op_f32(-var_0.c.x) >= 1f), global1.x, ~_wgslsmith_add_u32(1u, u_input.a.x) == ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e.x, 35240u), vec2<u32>(36177u, var_1.e.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 28>();
    global0 = array<vec3<u32>, 28>();
    global1 = select(vec3<bool>(all(vec3<bool>(false, all(vec3<bool>(global1.x, false, false)), !global1.x)), all(!vec3<bool>(global1.x, true, global1.x)) & func_1(), any(select(vec2<bool>(false, false), select(global1.xx, global1.yz, true), global1.xx))), !(!select(select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, global1.x, false), false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), vec3<bool>(global1.x, u_input.c.x > _wgslsmith_add_i32(-14487i, ~(-2147483647i)), false));
    global1 = select(!vec3<bool>(global1.x, !func_4(vec3<i32>(u_input.c.x, u_input.c.x, 7215i), global1.zy, -181f, 0u), global1.x), !(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, global1.x, global1.x), global1.x))), global1.x);
    let var_0 = Struct_1(u_input.c.zy, _wgslsmith_div_vec2_i32((~vec2<i32>(u_input.c.x, 0i) >> (u_input.a.yz % vec2<u32>(32u))) | vec2<i32>(u_input.c.x, 2147483647i), ~(vec2<i32>(u_input.c.x, 1i) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, -1i), vec2<i32>(u_input.c.x, -2147483647i)))), vec4<f32>(_wgslsmith_f_op_f32(375f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(116f, -1000f) + -154f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1261f + _wgslsmith_f_op_f32(-696f + 1904f)))), _wgslsmith_f_op_f32(-333f + _wgslsmith_f_op_f32(-1316f * -766f)), _wgslsmith_div_f32(-253f, _wgslsmith_f_op_f32(-1065f + _wgslsmith_f_op_f32(min(1256f, -520f))))), (vec2<i32>(-1i) * -u_input.c.yz) | vec2<i32>(firstTrailingBit(~1i), u_input.c.x), ~vec2<u32>(1u, 42690u));
    var var_1 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(var_0.c.zyy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c.zww)), select(select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, false, global1.x)), !vec3<bool>(true, false, global1.x), false))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c.x)) + _wgslsmith_f_op_f32(step(-305f, var_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(719f + 526f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2193f)))));
}

