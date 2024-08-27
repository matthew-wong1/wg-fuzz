struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 3>;

var<private> global2: array<Struct_2, 18>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec3<i32> {
    global1 = array<Struct_2, 3>();
    let var_0 = ~u_input.b;
    global0 = false;
    global1 = array<Struct_2, 3>();
    var var_1 = ~57811u;
    return vec3<i32>(0i, _wgslsmith_div_i32(u_input.d, 17496i), var_0.x) | _wgslsmith_mult_vec3_i32(select(_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(u_input.d, 2147483647i, -2147483647i)), vec3<i32>(-2147483647i, -2147483647i, var_0.x), -vec3<i32>(var_0.x, 40541i, u_input.b.x)), var_0 << (vec3<u32>(u_input.e, 1u, u_input.e) % vec3<u32>(32u)), vec3<bool>(any(vec2<bool>(true, true)), false, true)), u_input.a.zwz);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    global2 = array<Struct_2, 18>();
    global0 = arg_0.a.x;
    global0 = arg_2.a.x;
    var var_0 = global2[_wgslsmith_index_u32(u_input.e, 18u)];
    global0 = true;
    return Struct_1(func_3(), abs(vec3<i32>(-max(arg_2.c.c, 1i), -1i, arg_0.c.b.x)), 34393i);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    global1 = array<Struct_2, 3>();
    var var_0 = arg_1;
    var var_1 = abs(_wgslsmith_sub_u32(~(~u_input.e), 4294967295u));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 296f) - vec2<f32>(-361f, -304f)), vec2<f32>(780f, -1525f), true))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1018f, 2113f), _wgslsmith_f_op_f32(158f + -1000f)) - vec2<f32>(507f, _wgslsmith_f_op_f32(floor(1191f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1063f, _wgslsmith_f_op_f32(select(372f, -249f, false)))))), !(!vec2<bool>(true, any(vec3<bool>(true, false, true))))));
    var var_3 = Struct_1(min(~vec3<i32>(select(arg_1.a.x, -15594i, false), -11435i, _wgslsmith_clamp_i32(1i, 2731i, -77642i)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.d, 0i, 1i), -var_0.b, -vec3<i32>(-2813i, var_0.c, arg_0.x))), vec3<i32>(-arg_0.x << (u_input.e % 32u), arg_1.c, -32684i), _wgslsmith_dot_vec3_i32(var_0.a, vec3<i32>(arg_0.x, -arg_0.x, min(arg_1.c, ~474i))));
    return func_2(Struct_2(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), vec3<bool>(false, true, false), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, var_2.x) - vec3<f32>(var_2.x, var_2.x, 578f))), func_2(global1[_wgslsmith_index_u32(1u, 3u)], true, Struct_2(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<f32>(2196f, var_2.x, var_2.x), Struct_1(var_0.a, vec3<i32>(u_input.d, var_3.b.x, -34523i), arg_0.x)))), true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(4790u, u_input.e, u_input.e) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, u_input.e, 4294967295u), vec3<u32>(u_input.e, u_input.e, 0u)) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(u_input.e, 4294967295u, u_input.e)), select(var_2.x >= -1224f, select(true, true, false), true)), _wgslsmith_div_vec3_u32(vec3<u32>(5804u, 4294967295u, max(1u, u_input.e)), vec3<u32>(45231u, u_input.e, u_input.e) & vec3<u32>(10732u, u_input.e, u_input.e))), 3u)]);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> vec3<bool> {
    let var_0 = ~1i ^ _wgslsmith_mod_i32(-u_input.a.x, (arg_0.b.x ^ firstLeadingBit(arg_0.c)) ^ -1i);
    var var_1 = -(~(~(i32(-1i) * -2147483647i))) <= var_0;
    let var_2 = func_2(global2[_wgslsmith_index_u32(~min(arg_2, u_input.e << (min(4294967295u, 27395u) % 32u)), 18u)], any(vec2<bool>(true, true)), global1[_wgslsmith_index_u32(u_input.e, 3u)]);
    global2 = array<Struct_2, 18>();
    global0 = any(select(!select(select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, false, arg_1), arg_1), vec4<bool>(arg_1, arg_1, true, arg_1), true), select(!vec4<bool>(arg_1, true, arg_1, true), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_1, true, false, false), vec4<bool>(false, arg_1, arg_1, true)), select(select(vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, false)), vec4<bool>(false, arg_1, arg_1, arg_1), select(vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(true, false, arg_1, true), arg_1))), select(!(!vec4<bool>(arg_1, arg_1, false, true)), vec4<bool>(arg_1, any(vec4<bool>(false, true, arg_1, arg_1)), 1u != u_input.e, all(vec2<bool>(arg_1, false))), !select(vec4<bool>(arg_1, true, false, true), vec4<bool>(arg_1, arg_1, true, false), vec4<bool>(arg_1, arg_1, true, arg_1)))));
    return !(!vec3<bool>(all(vec3<bool>(false, arg_1, arg_1)) | true, arg_1, true));
}

fn func_1(arg_0: i32) -> vec3<bool> {
    global2 = array<Struct_2, 18>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -443f), -676f, -167f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2579f), _wgslsmith_f_op_f32(f32(-1f) * -1370f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f)))));
    let var_1 = 4294967295u;
    global0 = (i32(-1i) * -5723i) >= u_input.d;
    var var_2 = arg_0;
    return select(!func_5(func_4(vec3<i32>(-16280i, arg_0, 0i), func_2(global1[_wgslsmith_index_u32(var_1, 3u)], false, Struct_2(vec3<bool>(true, true, true), vec3<f32>(var_0.x, var_0.x, var_0.x), Struct_1(vec3<i32>(0i, u_input.b.x, arg_0), vec3<i32>(1i, u_input.b.x, 1i), -1i)))), any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), 0u), vec3<bool>(true, true, true), _wgslsmith_sub_u32(0u, u_input.e ^ abs(3915u)) > 48261u);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_0.a;
    var var_1 = _wgslsmith_div_vec2_u32(abs(~(~vec2<u32>(u_input.e, 0u))), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.e), vec2<u32>(u_input.e, u_input.e)), ~u_input.e), 61788u));
    let var_2 = true;
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, _wgslsmith_clamp_u32(var_1.x, _wgslsmith_add_u32(var_1.x, max(u_input.e, var_1.x)), var_1.x), 22445u, abs(1u)), _wgslsmith_mod_vec4_u32(~(~min(vec4<u32>(var_1.x, var_1.x, 71170u, 1u), vec4<u32>(0u, 1u, 4294967295u, 0u))), abs(max(~vec4<u32>(1u, var_1.x, u_input.e, 31866u), abs(vec4<u32>(var_1.x, 52181u, var_1.x, var_1.x))))));
    global0 = arg_0.a.x;
    return Struct_1(vec3<i32>(_wgslsmith_sub_i32(10082i, -25669i), func_4(_wgslsmith_mult_vec3_i32(arg_0.c.a, arg_1.c.b) ^ abs(vec3<i32>(-1i, arg_3.c, -48905i)), Struct_1(vec3<i32>(44692i, 1i, arg_3.c), arg_0.c.a, _wgslsmith_mult_i32(1i, arg_1.c.b.x))).b.x, -(arg_1.c.c & arg_3.a.x) | 10316i), u_input.b, -22949i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = all(!select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    var var_2 = vec4<i32>(-24173i, ~11479i, u_input.b.x, u_input.a.x ^ _wgslsmith_add_i32(u_input.d, -20650i));
    let var_3 = func_6(Struct_2(!vec3<bool>(!var_1, any(vec3<bool>(false, var_1, var_1)), u_input.c.x >= 0i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(452f, 727f, 789f)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -165f), 239f, 112f)), Struct_1(~abs(vec3<i32>(u_input.a.x, u_input.c.x, var_2.x)), ~vec3<i32>(u_input.d, -1i, -1i) << (~vec3<u32>(0u, 95206u, u_input.e) % vec3<u32>(32u)), _wgslsmith_div_i32(1i, -31683i))), Struct_2(!func_1(-2147483647i), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-255f, 1000f, -371f))))), Struct_1(countOneBits(var_2.xwz), firstLeadingBit(_wgslsmith_clamp_vec3_i32(var_2.wxw, var_2.xwx, vec3<i32>(2147483647i, 0i, var_2.x))), i32(-1i) * -var_2.x)), true, Struct_1((reverseBits(vec3<i32>(u_input.d, u_input.c.x, u_input.c.x)) | select(var_2.zyz, vec3<i32>(-51638i, u_input.c.x, 2147483647i), vec3<bool>(var_1, var_1, var_1))) | (~u_input.a.zxx << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, 67903u, u_input.e), vec3<u32>(10042u, 13082u, 1u), vec3<u32>(1u, u_input.e, 67124u)) % vec3<u32>(32u))), var_2.xxy, select(1i, func_3().x, var_1)));
    var_2 = vec4<i32>(i32(-1i) * -1i, 1i, u_input.b.x, -u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(u_input.e, (u_input.e << (u_input.e % 32u)) & (14031u & u_input.e)) | (u_input.e | u_input.e), ((~u_input.e << (select(u_input.e, 1u, false) % 32u)) & select(2102u, u_input.e, true)) >> ((9516u & u_input.e) % 32u), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -(~reverseBits(var_2.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * -1982f))), _wgslsmith_f_op_f32(f32(-1f) * -965f)))));
}

