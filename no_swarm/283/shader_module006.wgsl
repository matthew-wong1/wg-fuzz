struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> vec2<u32> {
    global0 = select(vec4<bool>(arg_0.b.c.x | global0.x, !(!arg_0.b.c.x), true, false), vec4<bool>(false, _wgslsmith_dot_vec2_i32(arg_1.a.yz, vec2<i32>(2147483647i, 14726i)) <= _wgslsmith_div_i32(~(-23277i), 2147483647i), true, global0.x), all(select(select(select(arg_0.b.c, vec2<bool>(true, arg_1.c.x), true), select(global0.yz, arg_1.c, false), select(vec2<bool>(global0.x, false), global0.yx, arg_0.b.c.x)), vec2<bool>(!arg_0.b.c.x, all(vec4<bool>(global0.x, global0.x, false, false))), arg_0.b.c.x)));
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(abs(~select(arg_0.e, arg_0.e, vec4<bool>(arg_1.c.x, global0.x, global0.x, arg_1.c.x))), abs(arg_0.e) ^ vec4<i32>(38927i, ~1i, ~arg_0.b.a.x, 1i)), 1i);
    var var_1 = arg_0.e.xxx;
    var_1 = firstTrailingBit(_wgslsmith_div_vec3_i32(~firstTrailingBit(~vec3<i32>(u_input.b, var_1.x, 0i)), firstTrailingBit(~vec3<i32>(var_1.x, 1i, arg_0.e.x)) >> (vec3<u32>(_wgslsmith_add_u32(arg_0.b.b, arg_1.b), ~4294967295u, 4294967295u) % vec3<u32>(32u))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-292f, 2122f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(155f, arg_0.d) - vec2<f32>(arg_0.d, arg_0.d))))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1455f, _wgslsmith_f_op_f32(f32(-1f) * -1371f)))));
    return vec2<u32>(~_wgslsmith_dot_vec3_u32(select(reverseBits(vec3<u32>(9660u, 68340u, 1u)), firstTrailingBit(u_input.c), arg_0.e.x < u_input.b), u_input.c), arg_0.a);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec2_u32(u_input.a.yx, min(~firstTrailingBit(~vec2<u32>(1003u, u_input.c.x)), ~func_3(Struct_2(u_input.c.x, Struct_1(vec3<i32>(u_input.b, u_input.b, u_input.b), 0u, global0.yx), 1069f, -696f, vec4<i32>(u_input.b, 1i, u_input.b, u_input.b)), Struct_1(vec3<i32>(-1i, 27277i, u_input.b), u_input.c.x, global0.wx), _wgslsmith_f_op_f32(f32(-1f) * -960f))), _wgslsmith_clamp_vec2_u32(u_input.c.yy, _wgslsmith_mult_vec2_u32(select(u_input.a.xz, vec2<u32>(55081u, 0u), false) ^ firstLeadingBit(vec2<u32>(1u, 1u)), u_input.a.zz), ~vec2<u32>(u_input.c.x << (292u % 32u), firstTrailingBit(53775u))));
    let var_1 = ~(~reverseBits(var_0.x));
    var var_2 = Struct_2(var_1, Struct_1(-vec3<i32>(u_input.b, -46274i, u_input.b | 2147483647i), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, var_0.x), 1u), ~u_input.c.yx), vec2<bool>(all(vec2<bool>(false, global0.x)) || true, true)), _wgslsmith_f_op_f32(step(-1343f, _wgslsmith_f_op_f32(f32(-1f) * -526f))), -1490f, vec4<i32>(-max(firstLeadingBit(u_input.b), u_input.b), abs(select(max(1i, 0i), -u_input.b, global0.x)), firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.b, -29504i), u_input.b)), u_input.b));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(266f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_2.c))))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_2.d)), _wgslsmith_f_op_f32(-var_2.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.d, 772f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d, var_2.c))), !(!vec2<bool>(true, var_2.b.c.x))))));
    global0 = select(select(vec4<bool>(global0.x, true && var_2.b.c.x, any(!global0.xwz), all(vec4<bool>(var_2.b.c.x, var_2.b.c.x, false, var_2.b.c.x)) | true), select(select(select(vec4<bool>(true, false, false, var_2.b.c.x), vec4<bool>(false, var_2.b.c.x, true, true), vec4<bool>(true, var_2.b.c.x, false, true)), vec4<bool>(true, global0.x, false, var_2.b.c.x), true), select(select(vec4<bool>(false, var_2.b.c.x, true, false), vec4<bool>(false, true, true, global0.x), false), !vec4<bool>(false, global0.x, global0.x, global0.x), true), !vec4<bool>(false, true, true, var_2.b.c.x)), vec4<bool>(true, any(vec3<bool>(false, true, var_2.b.c.x)), false, false)), vec4<bool>(false || all(vec3<bool>(false, global0.x, false)), true, false, !var_2.b.c.x), true);
    return Struct_1(abs(-var_2.b.a), u_input.c.x, select(!select(select(vec2<bool>(true, global0.x), global0.xz, global0.x), select(vec2<bool>(var_2.b.c.x, true), global0.xx, global0.x), select(global0.yz, var_2.b.c, true)), select(global0.wy, select(var_2.b.c, global0.ww, 54178u <= var_0.x), !var_2.b.c), global0.yy));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> f32 {
    var var_0 = u_input.b;
    var var_1 = Struct_2(u_input.c.x, func_2(), 1302f, -174f, vec4<i32>(-firstLeadingBit(func_2().a.x), -15247i, u_input.b, abs(_wgslsmith_add_i32(u_input.b, min(1i, u_input.b)))));
    global0 = !select(select(vec4<bool>(!arg_1, true, true, true), !select(vec4<bool>(false, false, arg_1, false), vec4<bool>(true, var_1.b.c.x, var_1.b.c.x, global0.x), var_1.b.c.x), all(!arg_0.xy)), vec4<bool>(true || global0.x, true, !any(arg_0), false != var_1.b.c.x), false);
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, -1177f, var_1.c, 1313f) - vec4<f32>(707f, 718f, var_1.c, 1000f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-694f, -936f, var_1.d, var_1.d) + vec4<f32>(-944f, var_1.c, var_1.c, -394f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-279f, var_1.c, -766f, var_1.c) + vec4<f32>(var_1.c, var_1.d, var_1.c, -1763f))))), Struct_2(u_input.a.x, Struct_1(_wgslsmith_div_vec3_i32(-vec3<i32>(var_1.e.x, -36654i, var_1.e.x), abs(vec3<i32>(u_input.b, u_input.b, u_input.b))), u_input.c.x, global0.wx), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1658f), -229f), _wgslsmith_div_vec4_i32(-(var_1.e & var_1.e), var_1.e)), -u_input.b);
    var var_3 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(select(1274f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), false)), -991f));
    return _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1589f * var_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-769f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(207f - 1429f), 3164f)) - _wgslsmith_f_op_f32(func_1(global0.xxy, all(vec2<bool>(false, global0.x))))), 516f));
    global0 = !(!(!select(vec4<bool>(global0.x, false, false, true), select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(false, true, global0.x, true), true), select(vec4<bool>(true, global0.x, true, true), vec4<bool>(false, false, true, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x)))));
    let var_1 = ~_wgslsmith_sub_vec3_i32(select(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-1623i, u_input.b, u_input.b)), vec3<i32>(-1i) * -vec3<i32>(u_input.b, -2147483647i, u_input.b), global0.yzz), vec3<i32>(_wgslsmith_div_i32(u_input.b << (u_input.c.x % 32u), firstLeadingBit(u_input.b)), u_input.b, 2147483647i));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1365f - -915f));
    let var_3 = Struct_2(_wgslsmith_clamp_u32(u_input.a.x, 1u, _wgslsmith_mult_u32(~u_input.a.x << (_wgslsmith_mult_u32(17914u, u_input.a.x) % 32u), 1u)), Struct_1(var_1, u_input.a.x, select(select(func_2().c, vec2<bool>(true, global0.x), any(global0.wwx)), global0.zw, select(!vec2<bool>(global0.x, global0.x), !global0.zx, !global0.x))), -468f, -786f, ~vec4<i32>(select(select(var_1.x, u_input.b, true), -67751i, u_input.a.x == u_input.c.x), -1i, var_1.x, 45246i >> (u_input.c.x % 32u)));
    var var_4 = Struct_2(~u_input.c.x, Struct_1(min(var_1, min(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_3.b.a.x, var_1.x, var_3.b.a.x), var_3.e.zyw, vec3<i32>(2147483647i, -3041i, 19957i)), abs(vec3<i32>(-48249i, -53091i, -14729i)))), max(~var_3.a, ~29837u) & ~abs(42801u), select(vec2<bool>(any(vec4<bool>(false, false, var_3.b.c.x, true)), true), vec2<bool>(var_3.b.c.x && var_3.b.c.x, 0i != u_input.b), !vec2<bool>(var_3.b.c.x, false))), 1000f, var_0, vec4<i32>((var_3.b.a.x >> (var_3.b.b % 32u)) << (func_3(var_3, func_2(), -127f).x % 32u), var_3.b.a.x, var_1.x, ~(-(~var_3.b.a.x))));
    var var_5 = firstLeadingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(32563u, 0u, 46685u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_4.b.b, var_3.a, 1u, 44291u), vec4<u32>(119299u, var_3.b.b, var_4.b.b, var_4.a)), vec4<u32>(var_3.b.b, var_3.a, var_3.b.b, 30417u)) << (~firstLeadingBit(vec4<u32>(11818u, var_3.a, var_4.a, 20829u)) % vec4<u32>(32u))) & vec4<u32>(u_input.a.x, ~var_4.a, var_3.b.b, (abs(2807u) & firstLeadingBit(var_4.a)) & ~(~u_input.c.x));
    let var_6 = var_3.e;
    let var_7 = ~reverseBits(firstLeadingBit(vec4<u32>(u_input.a.x, var_5.x ^ 46617u, u_input.c.x, var_3.b.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, u_input.b, var_3.e.x), var_6.wyw) >> (_wgslsmith_sub_u32(~(~var_5.x), abs(_wgslsmith_sub_u32(0u, var_7.x))) % 32u), ~abs(var_6.x ^ (var_1.x | var_4.b.a.x)), vec2<i32>(-1i) * -((var_4.b.a.yx & vec2<i32>(u_input.b, -58640i)) & vec2<i32>(34294i, 22293i)), -1000f);
}

