struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1;

var<private> global2: array<vec4<bool>, 13>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = all(select(!vec2<bool>(false, any(vec2<bool>(true, arg_2.a))), !select(select(vec2<bool>(arg_2.a, true), vec2<bool>(global1.a, false), false), select(vec2<bool>(global1.a, false), vec2<bool>(arg_2.a, global1.a), false), true), global1.a));
    global0 = all(vec4<bool>(any(vec2<bool>(false, 35176i >= arg_2.b.x)), all(!(!vec2<bool>(global1.a, global1.a))), true, arg_3.a));
    var var_1 = arg_3.a;
    var_0 = _wgslsmith_sub_u32(global1.d, 4294967295u) <= 0u;
    let var_2 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(firstTrailingBit(~1i), u_input.d.x, 1i, -2147483647i), vec4<i32>(global1.b.x, global1.b.x, -arg_0.x << (11658u % 32u), _wgslsmith_div_i32(~(-2258i), arg_2.b.x ^ -52140i)));
    return vec3<bool>(arg_2.a, ~(-_wgslsmith_mod_i32(-1i, arg_3.b.x)) > _wgslsmith_dot_vec2_i32(-(~vec2<i32>(1i, 50989i)), ~(-vec2<i32>(arg_2.b.x, 0i))), select(true, true, arg_2.b.x == _wgslsmith_add_i32(~(-1i), ~10843i)));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec2<bool>, arg_3: vec4<i32>) -> Struct_1 {
    global0 = !arg_2.x;
    var var_0 = Struct_1(false, select(abs(firstLeadingBit(min(vec4<i32>(2147483647i, -1i, -8362i, global1.b.x), arg_3))), vec4<i32>(_wgslsmith_mod_i32(~29577i, -2147483647i), -1i, -(-43257i ^ u_input.d.x), -49867i), !(!select(global2[_wgslsmith_index_u32(arg_0, 13u)], vec4<bool>(true, global1.a, arg_2.x, true), global1.a))), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_clamp_u32(u_input.b, 0u, 62721u));
    global0 = all(func_3(~var_0.b.xzx, firstTrailingBit(max(vec2<i32>(2147483647i, u_input.d.x), arg_3.xw)), Struct_1(max(-17285i, -1i) < -var_0.b.x, vec4<i32>(max(arg_3.x, global1.b.x), -1i, -40923i, -1i), -203f, ~(u_input.b ^ global1.d)), Struct_1(true, global1.b | var_0.b, -774f, ~global1.d)));
    let var_1 = vec4<f32>(-739f, _wgslsmith_f_op_f32(step(var_0.c, _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + -334f) * _wgslsmith_f_op_f32(-global1.c)))), arg_1);
    global1 = Struct_1((firstLeadingBit(u_input.b) >> (0u % 32u)) >= ~24387u, ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -1i, -1i, var_0.b.x), firstLeadingBit(global1.b), ~arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-897f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -1064f))), _wgslsmith_mod_u32(global1.d, 2652u) << (var_0.d % 32u));
    return Struct_1(!(~90798u >= arg_0), global1.b | ((vec4<i32>(u_input.c, 0i, -20265i, -51186i) & -arg_3) >> (~vec4<u32>(global1.d, u_input.a, 19158u, 1919u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_sub_u32(var_0.d, _wgslsmith_sub_u32(34508u, u_input.b)), _wgslsmith_mod_u32(~0u, ~0u), (76893u | arg_0) >> (~var_0.d % 32u)), _wgslsmith_div_vec4_u32(select(~vec4<u32>(u_input.b, 59225u, 56521u, u_input.a), ~vec4<u32>(u_input.b, arg_0, 1u, arg_0), true), vec4<u32>(~1u, global1.d, reverseBits(arg_0), _wgslsmith_div_u32(u_input.b, 2077u)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = Struct_1(false, vec4<i32>(i32(-1i) * -_wgslsmith_div_i32(arg_1.b.x, -21380i), 2147483647i, u_input.d.x, 2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.c, _wgslsmith_f_op_f32(arg_1.c * func_2(1u, arg_1.c, vec2<bool>(global1.a, true), global1.b).c), false)) * -1153f), _wgslsmith_mult_u32(1u, ~_wgslsmith_sub_u32(11154u, ~global1.d)));
    global0 = all(select(vec4<bool>(true, var_0.a || any(global2[_wgslsmith_index_u32(0u, 13u)]), arg_1.a, !global1.a), global2[_wgslsmith_index_u32(min(0u, _wgslsmith_sub_u32(abs(var_0.d), 18679u)), 13u)], vec4<bool>(func_3(-var_0.b.zzz, vec2<i32>(arg_1.b.x, arg_1.b.x), Struct_1(arg_1.a, arg_0, var_0.c, 4294967295u), Struct_1(var_0.a, arg_1.b, var_0.c, 0u)).x, arg_1.a, true, !any(vec2<bool>(global1.a, true)))));
    var var_1 = false;
    let var_2 = vec3<i32>(var_0.b.x, i32(-1i) * -69019i, -2147483647i);
    global2 = array<vec4<bool>, 13>();
    return vec4<i32>(_wgslsmith_mult_i32(59706i, -30872i), firstTrailingBit(arg_1.b.x), 0i, -2147483647i);
}

fn func_1() -> Struct_1 {
    global0 = true & (global1.a | true);
    global2 = array<vec4<bool>, 13>();
    var var_0 = Struct_1(true, _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(global1.b.x, -1i), 2147483647i), -global1.b.x, -(global1.b.x | global1.b.x), -global1.b.x), abs(func_4(vec4<i32>(0i, -1i, u_input.d.x, global1.b.x), func_2(0u, 1000f, vec2<bool>(global1.a, global1.a), global1.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_2(12287u & global1.d, _wgslsmith_f_op_f32(-global1.c), vec2<bool>(false, global1.a), ~global1.b).c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-441f + _wgslsmith_f_op_f32(max(global1.c, 432f))) + _wgslsmith_f_op_f32(sign(global1.c)))), select(_wgslsmith_clamp_u32(~(u_input.a << (38027u % 32u)), ~(35671u & u_input.a), _wgslsmith_clamp_u32(abs(u_input.a), abs(24117u), u_input.a)), select(abs(_wgslsmith_mult_u32(global1.d, 4294967295u)), 1u, _wgslsmith_f_op_f32(max(107f, global1.c)) > _wgslsmith_div_f32(global1.c, global1.c)), any(vec2<bool>(global1.a, global1.a)) | global1.a));
    let var_1 = ~(var_0.d | _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(6941u, var_0.d), vec2<u32>(6681u, 33610u)), ~u_input.e.zz), abs(~1u)));
    var var_2 = var_0.b.x;
    return func_2(countOneBits(55222u), _wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -160f), _wgslsmith_f_op_f32(ceil(global1.c))), var_0.c))), vec2<bool>(!all(global2[_wgslsmith_index_u32(var_0.d, 13u)]), (var_0.c > _wgslsmith_div_f32(137f, 124f)) && false), _wgslsmith_div_vec4_i32(global1.b & (-var_0.b << (vec4<u32>(global1.d, 47205u, 0u, global1.d) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.d.x, -2147483647i, -1i), _wgslsmith_div_i32(u_input.c, global1.b.x)), ~_wgslsmith_mod_i32(12416i, -1i), abs(firstLeadingBit(u_input.c)), ~var_0.b.x | -53789i)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec2<u32>) -> Struct_1 {
    global2 = array<vec4<bool>, 13>();
    global2 = array<vec4<bool>, 13>();
    let var_0 = vec2<i32>(-func_2(~global1.d & _wgslsmith_dot_vec2_u32(u_input.e.yy, vec2<u32>(u_input.b, global1.d)), _wgslsmith_f_op_f32(arg_0.c * _wgslsmith_div_f32(-185f, global1.c)), select(vec2<bool>(true, arg_1.a), !vec2<bool>(arg_0.a, false), select(vec2<bool>(false, arg_1.a), vec2<bool>(arg_1.a, global1.a), vec2<bool>(false, global1.a))), arg_1.b >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))).b.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(firstLeadingBit(arg_0.b.x), -global1.b.x), _wgslsmith_mod_i32(-3353i, global1.b.x)));
    global2 = array<vec4<bool>, 13>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(!(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 36767u), vec2<u32>(7547u, u_input.e.x)) == ~global1.d), -(~global1.b), _wgslsmith_f_op_f32(-global1.c), global1.d), func_1(), select(!func_3(-global1.b.wwz, vec2<i32>(1i, 2147483647i) >> (vec2<u32>(global1.d, 1u) % vec2<u32>(32u)), Struct_1(false, vec4<i32>(u_input.c, global1.b.x, 22941i, 16916i), 1382f, 4294967295u), func_2(4294967295u, global1.c, vec2<bool>(global1.a, true), vec4<i32>(u_input.d.x, -2147483647i, global1.b.x, u_input.c))), vec3<bool>(!global1.a, true, false), !(!(!vec3<bool>(global1.a, global1.a, false)))), u_input.e.yz);
    global1 = Struct_1(false, vec4<i32>(~_wgslsmith_mult_i32(15021i, u_input.d.x), -func_5(var_0, Struct_1(false, vec4<i32>(var_0.b.x, u_input.d.x, 0i, var_0.b.x), 513f, u_input.e.x), !vec3<bool>(global1.a, false, var_0.a), ~u_input.e.yy).b.x, u_input.d.x, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.c)), _wgslsmith_f_op_f32(var_0.c - global1.c))), 104137u);
    let var_1 = var_0;
    global2 = array<vec4<bool>, 13>();
    let var_2 = var_1.b.xx >> (_wgslsmith_div_vec2_u32(u_input.e.xy, firstLeadingBit(u_input.e.zz)) % vec2<u32>(32u));
    let var_3 = Struct_1(var_0.d < _wgslsmith_sub_u32(~39381u << (var_0.d % 32u), var_1.d), -max(global1.b, var_0.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - _wgslsmith_div_f32(910f, var_0.c))))), 30777u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(var_0.c + -1973f), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(max(var_0.c, -401f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-605f, 1000f, var_3.c), vec3<f32>(var_3.c, var_0.c, global1.c))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(558f, var_0.c, global1.c), vec3<f32>(380f, var_3.c, global1.c))))), !(!vec3<bool>(false, var_1.a, var_3.a))))), firstLeadingBit(firstLeadingBit(-2147483647i)), vec3<i32>(abs(var_0.b.x), 0i, ((var_2.x >> (global1.d % 32u)) << (func_5(var_1, Struct_1(false, vec4<i32>(u_input.c, 24778i, 37876i, var_2.x), -634f, var_1.d), vec3<bool>(false, var_3.a, true), u_input.e.yy).d % 32u)) & -var_2.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(131f, var_3.c), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-619f, 1000f))), !vec2<bool>(true, global1.a)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, -509f))))));
}

