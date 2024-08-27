struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<u32>,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<bool>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> bool {
    let var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(arg_0.a.c.x, ~4294967295u), 0u, abs(4294967295u), ~arg_2 << (firstTrailingBit(arg_1.c.x) % 32u)), vec4<u32>(_wgslsmith_add_u32(~arg_2, 1u) & _wgslsmith_mod_u32(reverseBits(arg_1.c.x), 23580u), 0u, ~arg_3, 22429u));
    let var_1 = arg_1;
    let var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>((abs(var_1.e.x) | var_1.e.x) ^ arg_1.e.x, _wgslsmith_sub_i32(-38064i, (i32(-1i) * -2147483647i) << ((var_0.x ^ u_input.d) % 32u)), arg_0.a.e.x | max(-25053i, -2146i)), vec3<i32>(-1i) * -reverseBits(-vec3<i32>(arg_1.e.x, -2147483647i, var_1.e.x)), arg_0.d);
    var var_3 = reverseBits(_wgslsmith_dot_vec2_i32(var_1.e, arg_1.e));
    let var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b))) - _wgslsmith_f_op_f32(max(var_1.b, _wgslsmith_f_op_f32(599f + 1284f))))))));
    return var_1.d.x && !all(!vec3<bool>(true, global1.x, arg_0.a.a));
}

fn func_2() -> Struct_1 {
    let var_0 = ~_wgslsmith_add_i32(-17902i, ~_wgslsmith_add_i32(u_input.c, -4008i) & ~(-u_input.c));
    var var_1 = select(select(!vec2<bool>(func_3(Struct_2(Struct_1(global1.x, 611f, vec2<u32>(4294967295u, u_input.e), global1.zy, vec2<i32>(u_input.a, u_input.c)), vec3<i32>(1i, 17002i, u_input.a), -1128f, vec3<i32>(u_input.a, 1i, -2147483647i)), Struct_1(false, -2239f, vec2<u32>(u_input.e, u_input.e), global1.xx, vec2<i32>(2362i, 1i)), 0u, 7468u), true), vec2<bool>(!(!global1.x), _wgslsmith_f_op_f32(-392f * 915f) < _wgslsmith_f_op_f32(sign(1000f))), global1.zz), vec2<bool>(false, false), !any(!(!vec4<bool>(true, global1.x, global1.x, true))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(928f, -374f, 652f, 386f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1502f, 1000f, 168f, 531f) + vec4<f32>(1681f, 387f, 911f, -627f))), select(select(vec4<bool>(false, var_1.x, global1.x, var_1.x), vec4<bool>(false, global1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, true, global1.x)), select(vec4<bool>(false, false, false, global1.x), vec4<bool>(true, false, var_1.x, false), true), !vec4<bool>(false, var_1.x, true, true))))));
    let var_3 = firstLeadingBit(~u_input.b);
    return Struct_1(false | (u_input.c <= var_0), -1341f, ~(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 99381u), vec2<u32>(var_3, 4294967295u)))), vec2<bool>(var_1.x, false), max(firstTrailingBit(-max(vec2<i32>(-33283i, var_0), vec2<i32>(-32365i, u_input.c))), -select(vec2<i32>(u_input.a, 13033i), vec2<i32>(-3731i, var_0), false) & (~vec2<i32>(2670i, 21236i) << (~vec2<u32>(0u, var_3) % vec2<u32>(32u)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: vec2<f32>) -> vec3<i32> {
    global0 = 166f;
    let var_0 = arg_1.b.x;
    global0 = _wgslsmith_f_op_f32(min(arg_1.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.c.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)) * arg_1.c.b))));
    let var_1 = Struct_2(func_2(), min(~arg_1.a, vec3<i32>(_wgslsmith_sub_i32(0i, u_input.a >> (arg_2.x % 32u)), ~2229i, -1i)), _wgslsmith_div_f32(178f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.x))), 539f)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -33396i, arg_1.a.x, _wgslsmith_add_i32(u_input.a, u_input.c), 2147483647i), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, arg_1.a.x, u_input.a, 1i), vec4<i32>(-49607i, u_input.a, -2147483647i, u_input.c))), reverseBits(arg_1.c.e.x), arg_1.a.x));
    let var_2 = ~1u;
    return var_1.b;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: vec2<bool>) -> bool {
    global1 = arg_0;
    var var_0 = Struct_2(Struct_1(select(!arg_3.x, global1.x, false), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.x * arg_1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x * -216f))))), vec2<u32>(16213u, u_input.d), global1.yx, _wgslsmith_clamp_vec2_i32(-_wgslsmith_mult_vec2_i32(arg_2.xy, vec2<i32>(u_input.c, -1504i)), firstLeadingBit(arg_2.xy << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))), vec2<i32>(countOneBits(-10862i), -arg_2.x))), min(max(arg_2, abs(arg_2)), arg_2 ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 45147i, arg_2.x), _wgslsmith_mod_vec3_i32(arg_2, vec3<i32>(-1i, -1i, arg_2.x)), ~arg_2)), -1055f, ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, i32(-1i) * -46227i, 1073i), vec3<i32>(1i, func_2().e.x, u_input.a)));
    let var_1 = reverseBits(var_0.a.c.x) & var_0.a.c.x;
    var var_2 = Struct_4(var_0.b, vec4<bool>((!var_0.a.d.x & false) || true, any(select(!arg_3, select(vec2<bool>(true, true), vec2<bool>(arg_3.x, false), true), arg_3.x && true)), false, !all(select(vec4<bool>(arg_0.x, true, var_0.a.a, true), vec4<bool>(arg_3.x, arg_3.x, false, global1.x), vec4<bool>(arg_3.x, arg_0.x, arg_3.x, false)))), Struct_1(!(!arg_3.x) | any(vec4<bool>(false, false, true, true)), _wgslsmith_div_f32(496f, func_2().b), abs(countOneBits(~var_0.a.c)), vec2<bool>(!any(arg_3), !arg_0.x), _wgslsmith_mod_vec2_i32(min(var_0.a.e, arg_2.zz) & ~arg_2.zy, ~_wgslsmith_div_vec2_i32(vec2<i32>(var_0.a.e.x, var_0.a.e.x), var_0.a.e))), !(!(!select(vec4<bool>(global1.x, global1.x, var_0.a.a, var_0.a.a), vec4<bool>(var_0.a.a, true, false, var_0.a.a), var_0.a.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_1.xyw)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_1.wwx, arg_1.xyx)))));
    let var_3 = Struct_2(var_0.a, _wgslsmith_div_vec3_i32(-(~select(vec3<i32>(var_2.a.x, -10497i, 0i), vec3<i32>(-2147483647i, 13703i, 2147483647i), false)), var_0.b), -1505f, firstLeadingBit(var_2.a));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<bool>(!all(select(global1.xz, global1.xy, global1.zx)), global1.x, global1.x);
    var var_0 = _wgslsmith_mod_vec2_i32(~vec2<i32>(-2147483647i, u_input.c), _wgslsmith_mult_vec2_i32(-max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.c, 2147483647i)), countOneBits(vec2<i32>(-1i) * -vec2<i32>(-1i, 76559i))));
    let var_1 = Struct_1(func_4(vec3<bool>(!(!global1.x), !(!global1.x), global1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-525f, 844f, 1675f, 1183f))), -func_1(!global1.zz, Struct_4(vec3<i32>(1i, var_0.x, u_input.c), vec4<bool>(false, global1.x, global1.x, global1.x), Struct_1(global1.x, 1498f, vec2<u32>(35605u, 4294967295u), global1.yz, vec2<i32>(-20296i, var_0.x)), vec4<bool>(true, true, true, false), vec3<f32>(-3473f, 1000f, 839f)), vec4<u32>(57510u, u_input.e, u_input.b, 13806u) & vec4<u32>(30241u, 44130u, 1u, u_input.b), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1316f, 1109f)))), !vec2<bool>(false, all(global1.xy))), -1055f, vec2<u32>(_wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(u_input.b, u_input.d, 31541u)), vec3<u32>(_wgslsmith_mod_u32(1u, u_input.e), _wgslsmith_clamp_u32(u_input.b, u_input.e, u_input.e), ~4294967295u)), _wgslsmith_div_u32(~4294967295u, 1u)), global1.xz, vec2<i32>(u_input.c, (var_0.x & u_input.a) << ((1u >> (u_input.d % 32u)) % 32u)) | func_2().e);
    var_0 = -vec2<i32>(-29363i & _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, 2147483647i), ~vec3<i32>(var_1.e.x, var_1.e.x, 2147483647i)), ~(-11254i ^ -var_0.x));
    let var_2 = countOneBits(-_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-14882i, u_input.c, var_1.e.x), -vec3<i32>(1i, -32379i, -34992i)), min(~vec3<i32>(var_1.e.x, u_input.c, -2147483647i), ~vec3<i32>(-55300i, var_1.e.x, var_1.e.x))));
    let var_3 = Struct_3(max(-1i, select(u_input.c, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, -3365i, -1i, -45187i), vec4<i32>(12932i, -12922i, var_1.e.x, 2868i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 0i, -2147483647i, 1i), vec4<i32>(var_2.x, var_1.e.x, -2147483647i, -2147483647i))), global1.x)), var_1.e, Struct_2(func_2(), vec3<i32>(var_2.x, _wgslsmith_div_i32(var_0.x, u_input.a), -(var_1.e.x & -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -430f), var_1.b) - _wgslsmith_f_op_f32(-var_1.b)), var_2), vec4<f32>(-1000f, 560f, var_1.b, 308f));
    var_0 = -_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(var_2.xy, ~vec2<i32>(1i, 1i)), ~vec2<i32>(min(-1i, -2147483647i), ~1i));
    var_0 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, var_3.d.wx);
}

