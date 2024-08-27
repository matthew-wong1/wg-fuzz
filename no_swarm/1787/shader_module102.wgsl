struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec2<u32>) -> vec3<f32> {
    let var_0 = u_input.c.x;
    let var_1 = 24738i;
    let var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(577f * -1000f), -451f, arg_1.a.b.x | false))), _wgslsmith_f_op_f32(-1485f + arg_1.a.c.x)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_1.a.a.x)), _wgslsmith_div_f32(-523f, _wgslsmith_f_op_f32(abs(arg_1.a.a.x))))))));
    var var_3 = ~(~(select(~vec4<i32>(-2147483647i, 2147483647i, -1i, 11067i), abs(vec4<i32>(arg_0.x, var_1, 1i, -1i)), !arg_1.a.b.x) >> (~(vec4<u32>(arg_2.x, 0u, 4294967295u, var_0) | vec4<u32>(var_0, 11799u, u_input.c.x, u_input.c.x)) % vec4<u32>(32u))));
    let var_4 = !(arg_2.x >= abs(0u));
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a.a))), arg_1.a.c));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> Struct_2 {
    global0 = 1i;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -880f) + -273f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), !arg_1.zz, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_3(-_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.b), vec3<i32>(u_input.a.x, 0i, -33006i), vec3<i32>(-1i, u_input.a.x, u_input.a.x)), Struct_2(Struct_1(vec3<f32>(739f, -262f, -263f), vec2<bool>(arg_1.x, false), vec3<f32>(449f, -520f, 287f)), !arg_1.zyx), abs(vec2<u32>(1u, 1u) & vec2<u32>(u_input.c.x, u_input.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-474f, 1347f, 1000f), _wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(u_input.a.x, 3259i, u_input.b), Struct_2(Struct_1(vec3<f32>(117f, 922f, 252f), vec2<bool>(true, true), vec3<f32>(1000f, 444f, 810f)), arg_1.ywx), vec2<u32>(0u, u_input.c.x))), vec3<bool>(arg_0, true, arg_1.x)))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a.x * 269f), -112f)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_1.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1573f, var_1.c.x, -635f))) - _wgslsmith_f_op_vec3_f32(-var_1.c))))), !select(var_1.b, !arg_1.yy, var_1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a)));
    return Struct_2(var_1, arg_1.www);
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_1) -> vec3<f32> {
    global0 = u_input.b;
    var var_0 = ~countOneBits(select(~(~vec4<u32>(22053u, 0u, 19279u, 0u)), ~vec4<u32>(48466u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<bool>(arg_1.x, arg_0 | arg_2.a.b.x, true, arg_3.b.x)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1026f, 836f, arg_2.a.a.x)) - arg_3.c))), arg_2.a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1875f, 1000f, 1212f), arg_3.a))), !vec3<bool>(true | !arg_3.b.x, true, !arg_1.x & true));
    let var_2 = arg_2.a;
    var_0 = firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.c.x, 4294967295u), reverseBits(4294967295u)), 4294967295u, max(_wgslsmith_mod_u32(22208u, u_input.c.x), ~u_input.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), select(vec2<u32>(u_input.c.x, 20473u), var_0.xz, arg_0)))) << ((vec4<u32>(var_0.x, var_0.x, abs(93061u), reverseBits(0u)) >> (countOneBits(abs(vec4<u32>(25804u, u_input.c.x, var_0.x, 59390u) << (vec4<u32>(55554u, u_input.c.x, 28452u, u_input.c.x) % vec4<u32>(32u)))) % vec4<u32>(32u))) % vec4<u32>(32u));
    return vec3<f32>(267f, var_1.a.a.x, -1308f);
}

fn func_1(arg_0: bool, arg_1: i32) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(arg_0, vec3<bool>(true, arg_0, false), func_2(arg_0, vec4<bool>(false, true, arg_0, false)), Struct_1(vec3<f32>(1134f, -1306f, -191f), vec2<bool>(arg_0, true), vec3<f32>(846f, -1000f, -460f)))))), !vec2<bool>(true, all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1411f, -1137f))))));
    var var_1 = !(!(!var_0.b));
    var_1 = !(!var_0.b);
    var_0 = func_2(true, !vec4<bool>(false, any(!vec3<bool>(var_0.b.x, var_0.b.x, true)), ~4294967295u < u_input.c.x, true)).a;
    let var_2 = u_input.c.x;
    return _wgslsmith_f_op_vec2_f32(-var_0.c.yz);
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = true;
    global0 = -(~(~_wgslsmith_div_i32(reverseBits(30553i), u_input.b)));
    global0 = 0i;
    global0 = reverseBits(select(-(~(-23363i) >> (~arg_2.x % 32u)), -u_input.a.x, !all(vec2<bool>(false, var_0))));
    global0 = u_input.a.x;
    return func_2(_wgslsmith_f_op_f32(-arg_0.x) != _wgslsmith_div_f32(arg_0.x, arg_0.x), vec4<bool>(false || any(arg_1), true, !(!(!arg_1.x)), true)).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1599f, -378f), vec2<f32>(-559f, 146f))), _wgslsmith_div_vec2_f32(vec2<f32>(1021f, 1030f), vec2<f32>(1012f, 743f)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_1(true, 40716i)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1247f, -114f))))), select(vec2<bool>(false, false), vec2<bool>(false, true), select(false, false, false))))), vec4<bool>(any(vec4<bool>(true, true, true, true)), all(vec4<bool>(any(vec3<bool>(true, false, true)), true, true, true)), !all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), false), u_input.c.yx);
    var var_1 = ~vec4<u32>(22283u, 18906u, _wgslsmith_div_u32(~(1u >> (u_input.c.x % 32u)), _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, ~1694u)), max(~min(u_input.c.x, 29528u), ~u_input.c.x << (~1u % 32u)));
    var var_2 = min((i32(-1i) * -u_input.a.x) << (0u % 32u), -(~_wgslsmith_add_i32(-65485i, u_input.a.x >> (u_input.c.x % 32u))));
    var var_3 = ~firstLeadingBit(_wgslsmith_mod_i32(select(_wgslsmith_clamp_i32(-24332i, u_input.a.x, u_input.b), u_input.b, var_0.b.x && false), 12477i));
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c.zy * _wgslsmith_f_op_vec2_f32(-var_0.c.yx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.yz) - var_0.a.xy)), vec2<f32>(_wgslsmith_f_op_f32(-func_2(1u >= u_input.c.x, !vec4<bool>(var_0.b.x, var_0.b.x, true, false)).a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x))))));
    let var_5 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, 774f)))));
    var var_6 = select(select(select(vec4<bool>(select(var_0.b.x, var_0.b.x, true), true, func_2(var_0.b.x, vec4<bool>(true, var_0.b.x, true, false)).b.x, any(var_0.b)), vec4<bool>(true, !var_0.b.x, var_0.b.x, false), select(func_5(var_0.c.yz, vec4<bool>(true, var_0.b.x, var_0.b.x, false), var_1.ww).b.x, var_0.b.x, var_0.b.x)), vec4<bool>(!var_0.b.x, any(vec4<bool>(true, var_0.b.x, var_0.b.x, false)) || func_5(var_0.a.zy, vec4<bool>(var_0.b.x, false, true, var_0.b.x), var_1.ww).b.x, true, any(vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x))), !var_0.b.x), select(select(vec4<bool>(func_5(vec2<f32>(-1209f, 331f), vec4<bool>(var_0.b.x, var_0.b.x, true, false), vec2<u32>(4294967295u, var_1.x)).b.x, var_0.b.x, 2147483647i <= u_input.b, var_0.b.x), select(select(vec4<bool>(true, false, var_0.b.x, var_0.b.x), vec4<bool>(true, var_0.b.x, false, var_0.b.x), vec4<bool>(true, true, false, false)), !vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true), false), var_0.b.x), !select(!vec4<bool>(var_0.b.x, true, true, true), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true), !vec4<bool>(true, false, false, var_0.b.x)), true), select(vec4<bool>(var_0.b.x, any(vec4<bool>(true, false, var_0.b.x, true)), true || all(vec3<bool>(var_0.b.x, var_0.b.x, false)), var_0.b.x), select(!(!vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x)), !(!vec4<bool>(false, true, var_0.b.x, var_0.b.x)), !(!vec4<bool>(true, true, true, var_0.b.x))), !select(vec4<bool>(false, var_0.b.x, var_0.b.x, false), !vec4<bool>(var_0.b.x, true, true, var_0.b.x), !vec4<bool>(true, var_0.b.x, false, var_0.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, 2147483647i, u_input.a.x, 0i)), ~reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, u_input.b))), firstTrailingBit(57411i), true), vec3<i32>(u_input.b, _wgslsmith_mod_i32(select(1i, u_input.a.x, !var_6.x), firstTrailingBit(1i)), 1i), vec2<f32>(var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-906f + var_5), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_4.x))))), var_4.x);
}

