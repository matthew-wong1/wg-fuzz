struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-485f, -1346f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    let var_0 = u_input.a;
    var var_1 = Struct_1(vec2<u32>(firstTrailingBit(4294967295u), var_0) << (vec2<u32>(0u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, arg_0.a.a.x)), arg_1.a)) % vec2<u32>(32u)), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(299f + -230f) * _wgslsmith_f_op_f32(f32(-1f) * -2000f)));
    var_1 = Struct_1(vec2<u32>(arg_1.a.x, 1u) << (vec2<u32>(arg_0.a.a.x, _wgslsmith_add_u32(~90234u, var_0)) % vec2<u32>(32u)), !(_wgslsmith_sub_i32(arg_0.b, ~arg_0.b) >= ~arg_0.b), 1178f);
    global0 = vec2<f32>(var_1.c, 1246f);
    var_1 = arg_0.a;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -489f)));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> Struct_3 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(arg_2.a, -1i), Struct_1(select(u_input.d, arg_0.a.a, false), arg_2.b <= -1i, -1611f)))), 445f);
    let var_0 = arg_2.a;
    var var_1 = arg_0.a;
    return Struct_3(2282f, Struct_1(vec2<u32>(49314u, _wgslsmith_div_u32(2868u >> (arg_0.a.a.x % 32u), 1u)), arg_2.b <= _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b, arg_2.b, 2208i), vec3<i32>(2147483647i, arg_2.b, -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -521f))) + arg_0.a.c)), arg_2);
}

fn func_4(arg_0: Struct_3) -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-749f, _wgslsmith_f_op_f32(floor(-676f))), vec2<f32>(func_2(Struct_2(Struct_1(vec2<u32>(66338u, 0u), true, -1000f), ~0i), -1230f, Struct_2(Struct_1(arg_0.c.a.a, true, arg_0.a), max(u_input.e, 11924i))).a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))))));
    let var_0 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(90159u << (arg_0.b.a.x % 32u), _wgslsmith_clamp_u32(arg_0.b.a.x, u_input.d.x, arg_0.c.a.a.x), ~arg_0.b.a.x), vec3<u32>(firstLeadingBit(arg_0.b.a.x), ~0u, _wgslsmith_mod_u32(u_input.a, u_input.a))) | select(vec3<u32>(~_wgslsmith_clamp_u32(1u, arg_0.c.a.a.x, u_input.a), firstLeadingBit(~arg_0.b.a.x), func_2(func_2(arg_0.c, global0.x, Struct_2(arg_0.c.a, 734i)).c, global0.x, func_2(Struct_2(Struct_1(vec2<u32>(36692u, u_input.d.x), arg_0.c.a.b, arg_0.a), u_input.e), 629f, Struct_2(Struct_1(arg_0.b.a, false, arg_0.b.c), u_input.b)).c).b.a.x), _wgslsmith_div_vec3_u32(vec3<u32>(24818u, ~arg_0.c.a.a.x, 0u), vec3<u32>(1u, _wgslsmith_mod_u32(u_input.a, u_input.d.x), ~arg_0.c.a.a.x)), !arg_0.b.b);
    var var_1 = func_2(func_2(Struct_2(func_2(arg_0.c, -517f, Struct_2(arg_0.c.a, u_input.b)).c.a, _wgslsmith_div_i32(-u_input.c, ~u_input.b)), -847f, Struct_2(func_2(Struct_2(Struct_1(vec2<u32>(62131u, 1u), arg_0.b.b, global0.x), -1i), _wgslsmith_f_op_f32(round(arg_0.a)), arg_0.c).c.a, max(select(1i, arg_0.c.b, arg_0.b.b), 2147483647i << (u_input.a % 32u)))).c, _wgslsmith_f_op_f32(f32(-1f) * -299f), arg_0.c).c.a;
    var_1 = arg_0.c.a;
    var var_2 = func_2(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, 656f)))), arg_0.c).b;
    return 11476i;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = !vec4<bool>(false, any(!(!vec3<bool>(arg_2.a.b, arg_2.a.b, true))), any(vec2<bool>(arg_2.a.b, true)) & arg_2.a.b, any(!select(vec4<bool>(true, arg_2.a.b, arg_2.a.b, arg_2.a.b), vec4<bool>(arg_2.a.b, false, false, arg_2.a.b), vec4<bool>(false, false, false, true))));
    return arg_2;
}

fn func_1() -> vec2<f32> {
    var var_0 = false;
    let var_1 = func_5(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-131f)) + _wgslsmith_f_op_f32(-global0.x))), global0.x), ~(-(vec4<i32>(u_input.c, 47618i, 1i, u_input.c) >> (vec4<u32>(39071u, 12080u, u_input.a, u_input.a) % vec4<u32>(32u)))) ^ vec4<i32>(_wgslsmith_add_i32(u_input.e, countOneBits(0i)), _wgslsmith_sub_i32(0i, 1i), u_input.c, func_4(func_2(Struct_2(Struct_1(vec2<u32>(u_input.a, u_input.a), true, 302f), u_input.e), 1634f, Struct_2(Struct_1(u_input.d, false, global0.x), u_input.c)))), func_2(Struct_2(Struct_1(~u_input.d, true, _wgslsmith_f_op_f32(abs(global0.x))), ~(-1i) ^ _wgslsmith_sub_i32(30458i, u_input.b)), 895f, func_2(func_2(func_2(Struct_2(Struct_1(vec2<u32>(42581u, u_input.d.x), true, global0.x), u_input.c), global0.x, Struct_2(Struct_1(vec2<u32>(u_input.d.x, 33978u), false, -856f), u_input.c)).c, _wgslsmith_f_op_f32(f32(-1f) * -446f), Struct_2(Struct_1(u_input.d, true, global0.x), u_input.b)).c, -179f, func_2(func_2(Struct_2(Struct_1(vec2<u32>(u_input.a, u_input.d.x), true, global0.x), -1i), global0.x, Struct_2(Struct_1(u_input.d, false, 120f), u_input.e)).c, _wgslsmith_f_op_f32(f32(-1f) * -131f), func_2(Struct_2(Struct_1(u_input.d, true, global0.x), -12189i), 1126f, Struct_2(Struct_1(vec2<u32>(u_input.d.x, u_input.a), true, -2071f), 2147483647i)).c).c).c).c);
    var var_2 = 20257i;
    var var_3 = -_wgslsmith_mult_i32(-1i, -14821i);
    var_0 = func_2(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), var_1).c.a.b;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -600f), -1332f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 523f)), _wgslsmith_f_op_vec2_f32(func_1()), vec2<bool>(false, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))), vec2<f32>(1743f, _wgslsmith_f_op_f32(step(global0.x, global0.x))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1182f, global0.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(372f, global0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -313f) * vec2<f32>(178f, 1401f))))))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1298f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1159f))))))));
    var var_0 = -402f;
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(func_3(func_2(func_5(vec3<f32>(-215f, global0.x, global0.x), vec4<i32>(u_input.c, -12278i, -2147483647i, 48726i), Struct_2(Struct_1(u_input.d, false, global0.x), u_input.c)), _wgslsmith_f_op_f32(f32(-1f) * -793f), func_2(Struct_2(Struct_1(u_input.d, false, global0.x), 2147483647i), 630f, Struct_2(Struct_1(u_input.d, false, -689f), -10286i)).c).c, Struct_1(_wgslsmith_mult_vec2_u32(u_input.d, u_input.d), true, _wgslsmith_f_op_f32(f32(-1f) * -358f)))), _wgslsmith_f_op_f32(-func_2(Struct_2(Struct_1(u_input.d, false, -318f), u_input.c), -669f, func_5(vec3<f32>(-1000f, 1000f, 800f), vec4<i32>(u_input.b, u_input.e, 4619i, u_input.b), Struct_2(Struct_1(vec2<u32>(u_input.d.x, 4294967295u), true, global0.x), 62327i))).c.a.c))));
    let var_2 = Struct_1(~vec2<u32>(func_5(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, var_1.x, -319f), vec3<f32>(var_1.x, 178f, -864f))), -vec4<i32>(656i, 2147483647i, u_input.c, 2147483647i), Struct_2(Struct_1(vec2<u32>(20653u, u_input.d.x), false, -609f), 1756i)).a.a.x, 0u), !all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(f32(-1f) * -496f));
    var var_3 = 33529u;
    let var_4 = Struct_1(vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(var_2.a, u_input.d)), abs(reverseBits(var_2.a.x))) ^ u_input.d, any(vec2<bool>(any(vec4<bool>(false, true, var_2.b, var_2.b)), true)), global0.x);
    let var_5 = !vec2<bool>(all(!(!vec3<bool>(true, var_2.b, true))), ~_wgslsmith_sub_u32(u_input.a, 1u) != var_2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-1431f, var_2.c)), 1392f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(135f, 243f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x + var_2.c))))));
}

