struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = true;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_4) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, 999f, arg_1.b.x) - vec3<f32>(-309f, arg_1.b.x, -2060f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-962f, 349f, -563f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1038f, arg_1.b.x, arg_1.b.x))))), Struct_2(Struct_1(~abs(-1i), _wgslsmith_sub_vec4_u32(global0.b, vec4<u32>(u_input.a, u_input.b.x, 0u, global0.e.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 2147483647i, arg_1.d, global0.c.x), vec4<i32>(u_input.c, 1i, 31533i, global0.a), firstLeadingBit(vec4<i32>(-2147483647i, 0i, -59i, 15841i))), vec3<i32>(i32(-1i) * -2147483647i, select(u_input.c, global0.c.x, arg_1.a.x), ~9825i), _wgslsmith_add_vec2_u32(~vec2<u32>(arg_1.e.x, 4294967295u), u_input.b.zy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_1.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2639f, -126f) - arg_1.b)))), Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, arg_1.d, arg_1.d, -26188i), reverseBits(global0.c)), abs(firstTrailingBit(global0.b)), global0.c, vec3<i32>(u_input.c ^ u_input.c, ~u_input.c, _wgslsmith_mult_i32(u_input.c, u_input.c)), u_input.b.yx >> (countOneBits(u_input.b.xy) % vec2<u32>(32u))), 51159u));
    var var_1 = Struct_2(Struct_1(abs(-2147483647i), vec4<u32>(min(u_input.b.x | 481u, ~1u), ~global0.b.x, _wgslsmith_sub_u32(~1u, global0.b.x), ~(~0u)), vec4<i32>(2147483647i, global0.c.x, 0i, var_0.b.a.d.x), _wgslsmith_mod_vec3_i32(min(_wgslsmith_mult_vec3_i32(vec3<i32>(48669i, 34733i, u_input.c), global0.c.yyy), _wgslsmith_div_vec3_i32(var_0.b.a.c.xyw, var_0.b.c.d)), vec3<i32>(0i, var_0.b.a.d.x, ~4032i)), vec2<u32>(~4294967295u, 90709u)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b))))), Struct_1(abs(0i), vec4<u32>(_wgslsmith_sub_u32(~var_0.b.a.b.x, _wgslsmith_mod_u32(arg_1.e.x, 42377u)), 4294967295u, reverseBits(~5211u), abs(arg_1.e.x)), global0.c, vec3<i32>(-2147483647i, -(~2147483647i), _wgslsmith_div_i32(-25155i, var_0.b.a.a)), global0.e), global0.e.x);
    global0 = var_1.a;
    let var_2 = reverseBits(max(countOneBits(~var_1.c.b), firstLeadingBit(vec4<u32>(39421u, 4294967295u, 0u, u_input.a) << (global0.b % vec4<u32>(32u))))) | var_1.a.b;
    return 0i;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: f32, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = arg_1.a.yz;
    var var_1 = arg_3.e;
    var var_2 = Struct_2(Struct_1(-u_input.c, _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.e.x, 4294967295u, 0u, arg_3.e.x), ~vec4<u32>(100610u, 4294967295u, 4294967295u, 4294967295u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 56983u, arg_1.c, 1772u), arg_0.a.b), _wgslsmith_sub_u32(49361u, 17517u), 0u, 4294967295u)), arg_3.c, -arg_0.c.c.wzz >> (~firstLeadingBit(u_input.b) % vec3<u32>(32u)), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.d), _wgslsmith_mult_vec2_u32(u_input.b.xz, global0.b.yw)), vec2<u32>(abs(0u), ~arg_1.e.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1250f, arg_0.b.x), arg_1.b, true)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b * arg_0.b) * _wgslsmith_div_vec2_f32(vec2<f32>(arg_2, 330f), arg_0.b)))), Struct_1(26816i, vec4<u32>(max(min(arg_1.c, 53939u), _wgslsmith_mult_u32(u_input.d, 113079u)), 23390u, global0.e.x, _wgslsmith_mod_u32(4294967295u & arg_3.b.x, ~24944u)), vec4<i32>(arg_1.d, -629i, _wgslsmith_sub_i32(arg_1.d, arg_1.d) | global0.a, u_input.c), vec3<i32>(func_3(vec4<bool>(var_0.x, false, false, false), arg_1), max(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.c), vec2<i32>(-1i, u_input.c)), arg_1.d), -func_3(vec4<bool>(false, true, false, var_0.x), Struct_4(vec3<bool>(false, arg_1.a.x, true), vec2<f32>(arg_0.b.x, arg_0.b.x), var_1.x, -1i, arg_0.a.b.xww))), ~(~abs(vec2<u32>(0u, 4301u)))), ~firstTrailingBit(0u >> (~var_1.x % 32u)));
    let var_3 = var_2.a;
    var var_4 = arg_0.a;
    return select(!(!vec4<bool>(!var_0.x, true, arg_1.a.x, var_0.x != false)), !vec4<bool>(select(true, all(arg_1.a), all(arg_1.a)), true, arg_1.a.x, true), vec4<bool>(!arg_1.a.x, true, var_0.x | all(arg_1.a.zy), var_0.x || var_0.x));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_4(select(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true)), vec3<bool>(true, true, true), vec3<bool>(!all(vec3<bool>(false, true, false)), true, all(func_2(Struct_2(Struct_1(9862i, arg_3.b, vec4<i32>(2147483647i, arg_1, 27405i, 25709i), vec3<i32>(16022i, 14083i, arg_1), arg_3.b.zz), vec2<f32>(470f, 778f), Struct_1(arg_1, vec4<u32>(40425u, u_input.a, 0u, 125286u), vec4<i32>(50748i, arg_0.x, 0i, arg_0.x), arg_3.c.ywz, vec2<u32>(4294967295u, u_input.d)), arg_3.b.x), Struct_4(vec3<bool>(true, false, false), vec2<f32>(2494f, 1323f), u_input.a, 1i, vec3<u32>(0u, arg_3.e.x, 4294967295u)), -884f, arg_3)))), vec2<f32>(-201f, _wgslsmith_f_op_f32(ceil(-1858f))), _wgslsmith_div_u32(4294967295u, ~global0.b.x), ~arg_2, ~vec3<u32>(_wgslsmith_sub_u32(0u, global0.e.x), ~42323u, ~global0.b.x) ^ _wgslsmith_add_vec3_u32(global0.b.wyy, vec3<u32>(global0.b.x, 4294967295u << (arg_3.b.x % 32u), ~arg_3.e.x)));
    var var_1 = 15039i;
    let var_2 = vec2<i32>(1i, firstLeadingBit(-38879i));
    let var_3 = var_0.a.x || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_0.b.x)), var_0.b.x))) != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(2244f)))))));
    var var_4 = arg_3;
    return arg_3;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = ~2127i;
    let var_1 = vec2<bool>(!(2629f <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -458f), -224f))), !(!(!all(vec4<bool>(true, false, true, true)))));
    var var_2 = Struct_4(select(vec3<bool>(true, any(!vec4<bool>(var_1.x, var_1.x, var_1.x, false)), var_1.x), !select(select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<bool>(false, false, var_1.x), true), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-376f, 932f))), _wgslsmith_f_op_f32(2193f * -998f))), max(reverseBits(reverseBits(global0.e.x)), countOneBits(global0.b.x)), 1i | ~(_wgslsmith_mod_i32(arg_0.a, -12247i) & func_1(vec2<i32>(u_input.c, global0.d.x), -5714i, 0i, Struct_1(arg_0.c.x, global0.b, global0.c, vec3<i32>(u_input.c, 2147483647i, arg_0.c.x), vec2<u32>(6173u, 0u))).c.x), _wgslsmith_mod_vec3_u32(vec3<u32>(51469u, arg_0.e.x, min(1u, 74657u)), vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, 24743u), 1u, 1u)) << (_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.e.x, arg_0.e.x, 62708u), max(vec3<u32>(arg_0.e.x, arg_0.e.x, arg_0.e.x), vec3<u32>(arg_0.e.x, u_input.b.x, 1u))), ~vec3<u32>(70282u, global0.e.x, global0.b.x)) % vec3<u32>(32u)));
    global0 = arg_0;
    let var_3 = u_input.d;
    return -1542f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(246f, -1000f), vec2<f32>(394f, -350f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-563f, 640f), vec2<f32>(2051f, -1558f), false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1675f, 523f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-313f, 252f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1830f, 589f)))))), vec2<f32>(490f, _wgslsmith_f_op_f32(func_4(func_1(~global0.c.wx, _wgslsmith_mod_i32(u_input.c, u_input.c), ~u_input.c, Struct_1(global0.c.x, global0.b, vec4<i32>(u_input.c, 15237i, -40504i, global0.d.x), global0.d, vec2<u32>(18423u, 47995u)))))));
    var var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(max(_wgslsmith_mult_vec4_u32(global0.b, vec4<u32>(u_input.d, 54663u, 31524u, global0.b.x)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, global0.e.x, 1u, u_input.a), ~global0.b, ~global0.b)), select(~vec4<u32>(34340u, u_input.b.x, 1u, 1u) & (global0.b << (global0.b % vec4<u32>(32u))), vec4<u32>(13152u, global0.e.x, 67600u, global0.b.x) & select(vec4<u32>(u_input.d, 76830u, 4294967295u, u_input.a), vec4<u32>(global0.b.x, 23759u, global0.e.x, global0.e.x), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)))), _wgslsmith_add_vec4_u32(global0.b, _wgslsmith_mod_vec4_u32(~global0.b, ~(vec4<u32>(14014u, 4294967295u, 4294967295u, global0.e.x) >> (global0.b % vec4<u32>(32u))))));
    let var_2 = ~vec4<u32>(_wgslsmith_div_u32(~52306u, var_1.x), 0u, ~18931u, 2534u);
    let var_3 = false;
    var var_4 = !(!all(select(select(vec3<bool>(var_3, true, true), vec3<bool>(false, var_3, var_3), vec3<bool>(true, true, true)), !vec3<bool>(false, var_3, var_3), vec3<bool>(var_3, var_3, var_3))));
    var_1 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, var_1.x), ~var_1.x), 1u, _wgslsmith_sub_u32(var_2.x, ~u_input.b.x), abs(7477u)) ^ _wgslsmith_div_vec4_u32(~(vec4<u32>(31896u, global0.b.x, var_2.x, 51730u) << (vec4<u32>(var_1.x, global0.e.x, var_2.x, var_1.x) % vec4<u32>(32u))), select(global0.b, ~global0.b, !var_3)), ~vec4<u32>(_wgslsmith_add_u32(var_1.x ^ global0.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2.x, var_2.x, global0.b.x), vec4<u32>(var_2.x, u_input.d, u_input.a, u_input.b.x))), _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_add_u32(1u, u_input.d)), reverseBits(u_input.d) >> (1u % 32u), firstLeadingBit(7987u)), _wgslsmith_clamp_i32(reverseBits(~(i32(-1i) * -15316i)), -38452i, ~abs(_wgslsmith_add_i32(u_input.c, -2147483647i))));
}

