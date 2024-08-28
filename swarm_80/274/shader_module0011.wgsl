struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -673f;

var<private> global1: array<Struct_2, 18>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec4<u32> {
    var var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 33589u, 30398u, 1u), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~arg_0.a, abs(vec4<u32>(4294967295u, 68980u, u_input.c.x, 48334u))), select(max(vec4<u32>(arg_0.a.x, arg_0.b, u_input.b, u_input.b), vec4<u32>(35227u, 4294967295u, arg_0.b, u_input.b)), arg_0.a, vec4<bool>(true, true, true, true)))) | arg_0.a.x;
    var_0 = 1u;
    global0 = 1039f;
    let var_1 = arg_0;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1080f), all(vec3<bool>(false, true, false)))) + -600f)));
    return abs(arg_0.a);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>) -> u32 {
    var var_0 = Struct_2(firstLeadingBit(abs(select(~arg_1.x, _wgslsmith_dot_vec3_u32(arg_1.wzy, arg_1.xyw), arg_0.x))), u_input.a, -419f, Struct_1(reverseBits(arg_1), arg_1.x), u_input.a);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(-var_0.c))));
    let var_1 = Struct_2(~(~(var_0.d.a.x << (0u % 32u))), -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1798f, 639f))))), var_0.d, 259i);
    var_0 = var_1;
    global1 = array<Struct_2, 18>();
    return ~10865u;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>) -> Struct_1 {
    global1 = array<Struct_2, 18>();
    let var_0 = global1[_wgslsmith_index_u32(u_input.b, 18u)];
    var var_1 = Struct_1(firstLeadingBit(var_0.d.a), ~func_4(vec2<bool>(false, u_input.c.x < 88068u), func_3(Struct_1(vec4<u32>(4294967295u, u_input.b, 1u, 1u), arg_1.x), -1i)));
    global0 = -820f;
    let var_2 = global1[_wgslsmith_index_u32(0u, 18u)];
    return var_2.d;
}

fn func_5(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = -(~firstLeadingBit(firstTrailingBit(1i)));
    let var_1 = Struct_1(func_3(arg_2, 1i) >> (arg_2.a % vec4<u32>(32u)), 1u);
    var var_2 = arg_2.a.zyx;
    global1 = array<Struct_2, 18>();
    var_2 = reverseBits(_wgslsmith_mod_vec3_u32(arg_2.a.zyw, select(func_2(vec2<i32>(arg_3.x, arg_3.x), ~var_1.a.yy).a.zzx, _wgslsmith_mod_vec3_u32(abs(arg_2.a.yyy), countOneBits(arg_2.a.yyw)), true)));
    return func_2(~(~arg_3), vec2<u32>(var_2.x, var_2.x));
}

fn func_1() -> u32 {
    var var_0 = func_5(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-807f, 1187f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -437f))), true, func_2(vec2<i32>(-1i, _wgslsmith_mod_i32(u_input.a, -17280i)), ~reverseBits(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.c.x, 4294967295u), false))), ~_wgslsmith_clamp_vec2_i32(~(vec2<i32>(-8423i, u_input.a) & vec2<i32>(-12705i, u_input.a)), -countOneBits(vec2<i32>(u_input.a, -42688i)), vec2<i32>(~u_input.a, 1i)));
    var var_1 = u_input.c.x ^ 23860u;
    let var_2 = func_2(vec2<i32>(1i, 1i), ~abs(vec2<u32>(~54371u, func_3(Struct_1(var_0.a, 49772u), 0i).x)));
    var var_3 = _wgslsmith_f_op_f32(min(1000f, 1f));
    global1 = array<Struct_2, 18>();
    return func_2(_wgslsmith_add_vec2_i32(min(-select(vec2<i32>(u_input.a, -35744i), vec2<i32>(-49914i, u_input.a), vec2<bool>(true, false)), -(vec2<i32>(u_input.a, u_input.a) >> (u_input.c % vec2<u32>(32u)))), vec2<i32>(~(~(-8768i)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-9206i, -1i), vec2<i32>(u_input.a, u_input.a)), ~(-2147483647i)))), vec2<u32>(0u, _wgslsmith_mod_u32(func_3(var_2, 18140i).x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, var_2.b), vec2<u32>(115337u, u_input.b)))) << (~(~vec2<u32>(var_2.b, var_0.a.x)) % vec2<u32>(32u))).a.x;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = func_2(~(-countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.b, u_input.a), vec2<i32>(u_input.a, u_input.a)))), u_input.c);
    var var_1 = Struct_1(arg_1.d.a, ~arg_0.b);
    let var_2 = u_input.a == max(1i, 6142i);
    var var_3 = vec4<bool>(true, true, !var_2, !var_2);
    let var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-520f, arg_1.c, -1156f)))));
    return var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 18>();
    global0 = _wgslsmith_f_op_f32(func_6(Struct_1(~vec4<u32>(max(37215u, u_input.b), ~1486u, 1u, 4294967295u), func_1()), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(17965u, 0u, 0u, u_input.c.x) >> (~vec4<u32>(u_input.c.x, u_input.b, 0u, u_input.b) % vec4<u32>(32u)), ~(~vec4<u32>(u_input.b, 12169u, 27294u, u_input.c.x)))), 18u)], func_2(reverseBits(_wgslsmith_clamp_vec2_i32(~vec2<i32>(-31760i, u_input.a), vec2<i32>(2147483647i, u_input.a) ^ vec2<i32>(11408i, u_input.a), countOneBits(vec2<i32>(u_input.a, 0i)))), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, 1u)) & u_input.b, ~(~4294967295u)))));
    var var_0 = Struct_2(1u >> (_wgslsmith_mult_u32(u_input.b, _wgslsmith_mod_u32(~125091u, _wgslsmith_mult_u32(0u, u_input.c.x))) % 32u), ~(-1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2314f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(233f * 1331f), _wgslsmith_f_op_f32(round(441f)))))), Struct_1(vec4<u32>(~u_input.c.x, 71338u, u_input.b, 1u), 50106u), _wgslsmith_mult_i32(~max(6198i, ~u_input.a), 1i));
    let var_1 = Struct_2(_wgslsmith_div_u32(~(~reverseBits(0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, func_2(vec2<i32>(var_0.e, u_input.a), var_0.d.a.zx).b, 0u, ~var_0.a), var_0.d.a)), select(1i, var_0.b, select(776f > _wgslsmith_f_op_f32(-var_0.c), true, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.a), vec3<i32>(21895i, var_0.e, -2147483647i)) < 1i)), var_0.c, var_0.d, _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.b, u_input.a, u_input.a), vec3<i32>(-2147483647i, 1i, u_input.a)), _wgslsmith_mult_i32(1i, -1854i) >> (u_input.b % 32u)), 2147483647i));
    global0 = -170f;
    var var_2 = func_2(_wgslsmith_div_vec2_i32(vec2<i32>(abs(var_1.b), 0i), vec2<i32>(u_input.a, _wgslsmith_add_i32(0i, _wgslsmith_mod_i32(var_1.e, var_0.e)))), ~(~select(min(u_input.c, var_1.d.a.yw), var_0.d.a.wz, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(~vec3<i32>(2147483647i | var_0.e, _wgslsmith_mod_i32(1i, 9318i), countOneBits(-26297i)), ~(-countOneBits(vec3<i32>(16632i, var_0.b, u_input.a)))), _wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(var_2.a.x, u_input.c.x, 55490u, 1u)), ~var_1.d.a, ~firstTrailingBit(~var_0.d.a)));
}

