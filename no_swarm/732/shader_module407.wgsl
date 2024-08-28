struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: u32;

var<private> global2: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(2147483647i, 2147483647i, -36722i, -3389i), vec4<i32>(55618i, 31204i, -18095i, 12121i), vec4<i32>(28663i, 65840i, -1i, -1i), vec4<i32>(1i, i32(-2147483648), 1i, 42858i), vec4<i32>(10397i, -96285i, 1i, 36300i), vec4<i32>(1i, -1332i, -1i, i32(-2147483648)), vec4<i32>(15420i, 31283i, 39340i, -5734i), vec4<i32>(0i, -5035i, -47005i, -1i), vec4<i32>(2147483647i, 1i, 24503i, i32(-2147483648)), vec4<i32>(2147483647i, -64440i, 22365i, 2147483647i), vec4<i32>(-6556i, 2147483647i, 70927i, 0i), vec4<i32>(-1i, 0i, -44781i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -10045i, 33935i, -1i), vec4<i32>(86547i, 2147483647i, -3712i, 3886i), vec4<i32>(-4367i, 16988i, 61288i, 36413i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> f32 {
    var var_0 = 1170f;
    var var_1 = _wgslsmith_f_op_f32(1000f - 341f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global0.x)))));
    var var_2 = ~u_input.d;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -565f);
    return -451f;
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> i32 {
    var var_0 = true;
    var var_1 = arg_3.b;
    var var_2 = _wgslsmith_dot_vec4_u32(~(~firstTrailingBit(firstTrailingBit(vec4<u32>(19322u, 4294967295u, 4294967295u, 0u)))), (vec4<u32>(abs(var_1.d.x), ~u_input.a.x, select(1u, 0u, false), firstTrailingBit(12979u)) << (countOneBits(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 15173u) >> (vec4<u32>(var_1.d.x, u_input.e, 7518u, u_input.d.x) % vec4<u32>(32u))) % vec4<u32>(32u))) | ~vec4<u32>(~22233u, ~arg_2, arg_0.x ^ var_1.d.x, _wgslsmith_div_u32(arg_3.b.d.x, 0u)));
    var var_3 = arg_3.b;
    let var_4 = -17598i;
    return ~select(_wgslsmith_dot_vec4_i32(firstLeadingBit(arg_3.b.a | vec4<i32>(var_3.a.x, 2147483647i, 0i, arg_3.b.a.x)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 81488u), var_3.d.zz), 15u)]), var_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) != _wgslsmith_f_op_f32(f32(-1f) * -872f));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> Struct_2 {
    var var_0 = vec4<u32>(_wgslsmith_clamp_u32(128135u, u_input.e, _wgslsmith_add_u32(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.e) << ((24924u | u_input.e) % 32u))), 0u, _wgslsmith_mod_u32(max(_wgslsmith_dot_vec2_u32(u_input.d, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.e), u_input.a)), 39629u), 9694u), _wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 1u), u_input.a.x));
    var var_1 = Struct_1(vec4<i32>(2677i, u_input.c.x, (u_input.c.x | (-23710i & u_input.b.x)) | u_input.b.x, _wgslsmith_sub_i32(-1i, func_3(var_0.ww, !arg_1, u_input.a.x, Struct_2(global0.x, Struct_1(u_input.b, arg_0.xzw, vec3<i32>(u_input.c.x, 0i, u_input.c.x), vec3<u32>(41381u, var_0.x, 27958u)))))), arg_0.xxy, vec3<i32>(_wgslsmith_mult_i32(u_input.c.x, -reverseBits(-8175i)), u_input.c.x >> (firstLeadingBit(u_input.a.x) % 32u), -u_input.c.x), _wgslsmith_sub_vec3_u32(abs(~var_0.yzy), var_0.zzy));
    global1 = var_1.d.x | _wgslsmith_mult_u32(abs(56324u), countOneBits(~u_input.e & ~77127u));
    let var_2 = Struct_2(-1470f, Struct_1(vec4<i32>(u_input.c.x ^ u_input.b.x, -2147483647i, -22356i, 2147483647i) ^ countOneBits(vec4<i32>(u_input.c.x, var_1.c.x, 30755i, -20716i)), var_1.b, abs(var_1.a.yyx), var_1.d << (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d.x, u_input.a.x, 1u, var_0.x), vec4<u32>(var_1.d.x, var_0.x, var_0.x, 48054u)), u_input.e, 1u) % vec3<u32>(32u))));
    var var_3 = Struct_1(vec4<i32>(-u_input.c.x << (var_0.x % 32u), _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_1.a.x >> (var_1.d.x % 32u), var_1.a.x >> (var_2.b.d.x % 32u)), 2147483647i), var_2.b.a.x, 2147483647i), var_1.b, _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.a.x, func_3(~vec2<u32>(1u, var_0.x), arg_1, var_2.b.d.x, var_2), -(~var_1.c.x)), -(~_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, var_2.b.a.x, 2147483647i), var_1.a.zxx))), vec3<u32>(0u, ~var_0.x, 84879u));
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = func_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2302f), _wgslsmith_f_op_f32(func_1()), global0.x, _wgslsmith_f_op_f32(-arg_0.a)), all(vec2<bool>(true, true))).b;
    global2 = array<vec4<i32>, 15>();
    let var_1 = reverseBits(vec2<i32>(~func_3(min(var_0.d.yz, vec2<u32>(50258u, var_0.d.x)), arg_0.a == global0.x, func_2(vec4<f32>(1000f, var_0.b.x, arg_0.b.b.x, global0.x), true).b.d.x, Struct_2(-1710f, arg_2.b)), 35671i));
    var var_2 = arg_2;
    global1 = firstTrailingBit(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.d.x, var_0.d.x, 4294967295u)), arg_1.d ^ vec3<u32>(arg_2.b.d.x, u_input.d.x, 0u)), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, -2428f, arg_0.a, -1509f)), select(true, false, true)).b.d.x));
    return vec2<bool>(~_wgslsmith_add_u32(10605u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, var_2.b.d.x)) != ~((var_0.d.x | arg_0.b.d.x) << (0u % 32u)), all(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(614f - global0.x)), true)) * -2118f), Struct_1(vec4<i32>(u_input.c.x, select(u_input.b.x >> (u_input.a.x % 32u), ~(-2147483647i), true), 36500i, u_input.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, 1000f, global0.x), vec3<f32>(1092f, -1579f, global0.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-554f, global0.x, 565f) + vec3<f32>(-1984f, global0.x, global0.x)))), ~u_input.b.zwz, ~(~(~vec3<u32>(4294967295u, 2726u, u_input.e)))));
    global0 = var_0.b.b.yy;
    let var_1 = ~(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.c.x << (u_input.a.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, u_input.c.x, var_0.b.a.x), u_input.b)), ~vec2<i32>(u_input.c.x, 2147483647i)) ^ _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(10210i, u_input.b.x, var_0.b.c.x), u_input.b.x), abs(var_0.b.c.x), _wgslsmith_add_i32(u_input.c.x, -41388i) | var_0.b.c.x));
    var var_2 = abs(countOneBits(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.c.x >> (0u % 32u), -39870i), var_0.b.a.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_0.b.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.b * vec3<f32>(-1100f, var_0.b.b.x, -223f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.b * var_0.b.b))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.b.x), _wgslsmith_f_op_f32(step(-307f, 1000f)), _wgslsmith_f_op_f32(ceil(global0.x)))))));
    var var_4 = vec2<f32>(global0.x, global0.x);
    var var_5 = Struct_2(_wgslsmith_f_op_f32(func_1()), var_0.b);
    let var_6 = select(!func_4(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1370f, 3091f, 1000f, 391f)), true), Struct_1(~global2[_wgslsmith_index_u32(var_5.b.d.x, 15u)], _wgslsmith_f_op_vec3_f32(-var_5.b.b), -u_input.b.wwz, var_0.b.d), Struct_2(var_3.x, var_5.b)), !select(vec2<bool>(any(vec4<bool>(true, true, true, false)), true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), true), 183f < func_2(vec4<f32>(var_0.b.b.x, 761f, -913f, var_4.x), true).a), false);
    global0 = _wgslsmith_f_op_vec2_f32(var_5.b.b.yy + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), global0.x))), global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(var_3.x)), func_3(min(var_5.b.d.yx, var_5.b.d.yx), true, ~var_5.b.d.x, Struct_2(var_4.x, Struct_1(-vec4<i32>(-12059i, var_5.b.c.x, 2147483647i, var_1), _wgslsmith_div_vec3_f32(vec3<f32>(var_3.x, 207f, 1399f), vec3<f32>(-1000f, -1332f, var_5.b.b.x)), -var_0.b.c, max(var_5.b.d, vec3<u32>(var_0.b.d.x, u_input.e, 4294967295u))))), _wgslsmith_clamp_u32(1u, max(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 12219u), var_5.b.d), firstTrailingBit(u_input.e)) | _wgslsmith_sub_u32(~4294967295u, ~u_input.d.x), var_0.b.d.x));
}

