struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(1u, 3154u), vec2<u32>(86802u, 5144u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 51606u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(39107u, 1u), vec2<u32>(62897u, 0u), vec2<u32>(4294967295u, 76785u), vec2<u32>(1u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(10173u, 4294967295u), vec2<u32>(15110u, 40393u), vec2<u32>(1u, 6007u), vec2<u32>(7940u, 0u), vec2<u32>(0u, 0u), vec2<u32>(1143u, 27190u), vec2<u32>(52454u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 10800u), vec2<u32>(1u, 10554u), vec2<u32>(24771u, 74493u));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: vec3<i32>, arg_3: vec2<i32>) -> i32 {
    let var_0 = abs(~u_input.a.x);
    let var_1 = Struct_1(1f, ~firstLeadingBit((vec4<i32>(arg_2.x, 2147483647i, 9753i, arg_2.x) >> (vec4<u32>(1u, u_input.a.x, 0u, var_0) % vec4<u32>(32u))) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u))), arg_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-121f, -883f)), _wgslsmith_f_op_f32(-157f - -260f)))), u_input.a.x);
    global0 = array<vec2<u32>, 23>();
    let var_2 = !(!(!vec3<bool>(true, all(vec4<bool>(false, false, true, false)), true)));
    let var_3 = arg_1;
    return _wgslsmith_mult_i32(-42472i, ~_wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(-969i, arg_3.x), vec2<i32>(58615i, 0i)), select(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, arg_3.x), var_1.b.yx), _wgslsmith_div_vec2_i32(vec2<i32>(var_1.c.x, var_1.b.x), arg_3), var_2.zy)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_0.a))));
    var_0 = 1000f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(204f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -628f), _wgslsmith_f_op_f32(-arg_0.d.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-273f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-542f))), _wgslsmith_div_f32(-1176f, _wgslsmith_f_op_f32(-arg_0.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.d.x, arg_0.a, true)), arg_0.d.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.d.x - 661f), _wgslsmith_f_op_f32(ceil(arg_0.a)), _wgslsmith_div_f32(-294f, arg_0.a), _wgslsmith_f_op_f32(arg_0.a + arg_0.d.x)))));
    global0 = array<vec2<u32>, 23>();
    return select(!vec4<bool>(true, true, true | any(vec3<bool>(true, true, true)), true), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), true)), true);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> f32 {
    let var_0 = vec2<bool>(true, true);
    let var_1 = func_3(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -345f), 1740f)), _wgslsmith_sub_vec4_i32(select(arg_2.b, arg_1.b, vec4<bool>(true, false, true, false)) & abs(vec4<i32>(arg_1.c.x, arg_1.c.x, arg_1.b.x, 2721i)), arg_2.b), -vec3<i32>(1i, func_2(vec2<f32>(arg_1.a, -350f), -1115f, arg_2.c, vec2<i32>(0i, arg_1.c.x)), _wgslsmith_div_i32(arg_2.c.x, 18797i)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.d) + arg_2.d))), countOneBits(1u ^ arg_1.e)), ~(arg_0.x | _wgslsmith_div_u32(1u, abs(u_input.a.x))));
    var var_2 = -firstTrailingBit(_wgslsmith_sub_i32(arg_2.b.x, 26119i));
    global0 = array<vec2<u32>, 23>();
    let var_3 = vec3<u32>(77052u, max(0u, abs(~32091u)), 4294967295u);
    return _wgslsmith_f_op_f32(arg_2.d.x - _wgslsmith_f_op_f32(2188f * -409f));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global0 = array<vec2<u32>, 23>();
    global0 = array<vec2<u32>, 23>();
    let var_0 = arg_1;
    let var_1 = ~_wgslsmith_div_u32(~_wgslsmith_div_u32(1u, ~0u), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e, 5315u), global0[_wgslsmith_index_u32(var_0.e, 23u)]), var_0.e));
    var var_2 = var_0.c.yz;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec2<bool>(any(vec2<bool>(false, false)) && all(vec3<bool>(true, true, true)), true), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) << (vec3<u32>(1u, 1u, 0u) % vec3<u32>(32u)), Struct_1(-120f, vec4<i32>(0i, 86002i, -31925i, 17244i), vec3<i32>(57925i, -1i, 16989i), vec2<f32>(-1415f, -465f), u_input.a.x), Struct_1(344f, vec4<i32>(0i, -35909i, 55497i, 24779i), vec3<i32>(26504i, -22530i, 5278i), vec2<f32>(1395f, 380f), 2667u), vec4<bool>(true, true, true, false))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -143f) * _wgslsmith_f_op_f32(-1750f + 2584f))), max(vec4<i32>(16099i, -27986i, 1i, max(1527i, 27875i)), vec4<i32>(i32(-1i) * -15495i, i32(-1i) * -16974i, -2147483647i, firstTrailingBit(-60662i))), _wgslsmith_div_vec3_i32(vec3<i32>(min(-2147483647i, -12793i), _wgslsmith_add_i32(0i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(83680i, 2917i, -16975i, -23901i), vec4<i32>(33983i, 1i, -2147483647i, 2147483647i))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-67382i, -29257i, -1497i), vec3<i32>(-23991i, -2147483647i, 1i))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(832f))), _wgslsmith_f_op_f32(f32(-1f) * -560f)), _wgslsmith_add_u32(_wgslsmith_sub_u32(82844u, u_input.a.x), 61000u)), any(select(select(vec2<bool>(true, true), func_3(Struct_1(-300f, vec4<i32>(0i, 21755i, 1i, -2147483647i), vec3<i32>(2147483647i, 1i, -10999i), vec2<f32>(-1000f, -478f), u_input.a.x), u_input.a.x).xy, select(vec2<bool>(false, true), vec2<bool>(true, false), false)), vec2<bool>(false, true), true)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2212f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -936f) - _wgslsmith_f_op_f32(var_0.a + var_0.d.x)))) - -761f), var_0.b, _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(func_4(vec2<bool>(true, false), var_0, true).c.x, -66536i, i32(-1i) * -2147483647i), var_0.b.xzy), ~select(var_0.b.zzx, _wgslsmith_div_vec3_i32(vec3<i32>(var_0.c.x, -2147483647i, var_0.c.x), vec3<i32>(1i, var_0.b.x, 2147483647i)), true)), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(148f, 124f)))), _wgslsmith_f_op_f32(min(var_0.d.x, 1171f))), _wgslsmith_add_u32(var_0.e, countOneBits(_wgslsmith_add_u32(~u_input.a.x, u_input.a.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1302f, var_0.d.x, 289f)))))));
    var var_3 = u_input.a.x;
    var var_4 = func_4(vec2<bool>(true, select(var_0.a >= 404f, true, any(vec2<bool>(true, false))) || true), var_1, var_0.c.x <= _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, -2147483647i, var_0.c.x, 1i) | var_1.b, var_0.b));
    var_4 = Struct_1(_wgslsmith_f_op_f32(round(-573f)), countOneBits(var_4.b), firstTrailingBit(var_4.b.xzx) << (max(~select(vec3<u32>(4294967295u, u_input.a.x, 2561u), vec3<u32>(1u, 1u, 0u), true), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.e, 4294967295u, 1u) << (vec3<u32>(var_1.e, 60206u, var_4.e) % vec3<u32>(32u)), vec3<u32>(u_input.a.x, 43289u, var_4.e) | vec3<u32>(u_input.a.x, 178u, 1u))) % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_4.a)))))), var_2.x), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(vec2<bool>((var_0.a <= -1591f) || true, -1158f > _wgslsmith_f_op_f32(-1113f * var_1.d.x)), func_4(vec2<bool>(true, true), func_4(vec2<bool>(true, false), Struct_1(149f, var_4.b, vec3<i32>(2147483647i, var_0.c.x, -10817i), var_0.d, 24915u), true), all(vec2<bool>(true, true))), true).c.yy, -134f, _wgslsmith_clamp_vec3_i32(abs(abs(var_1.c)), vec3<i32>(func_4(vec2<bool>(false, false), var_0, true).c.x, var_0.b.x, -1732i), vec3<i32>(firstTrailingBit(var_1.b.x), _wgslsmith_mod_i32(var_0.c.x, var_1.c.x), _wgslsmith_clamp_i32(27684i, 1i, 24761i))) & var_4.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1254f, -970f, var_0.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, var_4.a, var_4.a) - vec3<f32>(224f, var_2.x, var_4.d.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(420f, var_2.x, var_2.x) - vec3<f32>(554f, -258f, 513f)), vec3<f32>(-3247f, -806f, var_4.a))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_div_f32(690f, -376f), var_2.x))));
}

