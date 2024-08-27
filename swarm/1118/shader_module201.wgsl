struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(4294967295u, Struct_1(vec4<f32>(1196f, -598f, 342f, -172f), 28626u));

var<private> global1: Struct_4 = Struct_4(vec2<u32>(10767u, 30009u), 19125u, Struct_1(vec4<f32>(-348f, -123f, 1333f, -107f), 26684u), Struct_1(vec4<f32>(-303f, 1243f, -158f, -1292f), 1u), Struct_2(1u, Struct_1(vec4<f32>(-123f, -894f, -527f, -382f), 32083u)));

var<private> global2: i32;

var<private> global3: array<vec4<f32>, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = 4294967295u;
    var var_1 = true && all(vec4<bool>(any(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), _wgslsmith_dot_vec2_u32(global1.a, vec2<u32>(u_input.a, global1.c.b)) <= reverseBits(53756u), true));
    let var_2 = vec3<bool>(true, true, any(vec3<bool>(all(vec4<bool>(false, false, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), any(vec4<bool>(false, false, false, true)))));
    var var_3 = ~(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(37492u, 3695u, global0.a), select(vec3<u32>(0u, u_input.a, var_0), vec3<u32>(global0.a, u_input.a, 20444u), var_2)), 4294967295u, ~0u >> (_wgslsmith_mult_u32(global0.a, 1u) % 32u), ~reverseBits(75994u)) ^ ~vec4<u32>(4294967295u, ~u_input.a, global0.a, ~1u));
    let var_4 = vec2<bool>(false, true);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global0.b.a.x)))))))));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>) -> vec3<bool> {
    global1 = Struct_4(~reverseBits(vec2<u32>(64332u, 0u)) & _wgslsmith_div_vec2_u32(global1.a, ~global1.a ^ firstLeadingBit(vec2<u32>(1u, 22738u))), global1.c.b | 57675u, Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, arg_0, arg_0, -1248f), vec4<f32>(760f, -1372f, global1.e.b.a.x, 492f)), vec4<f32>(_wgslsmith_f_op_f32(global0.b.a.x * -658f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.c.a.x, _wgslsmith_f_op_f32(arg_0 - 1996f)), !vec4<bool>(true, true, arg_1.x, false))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(global0.a, u_input.a, global0.b.b), vec3<u32>(global1.e.b.b, 40076u, 0u)), vec3<u32>(~global1.c.b, 0u, global0.b.b))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) + _wgslsmith_f_op_f32(global0.b.a.x * arg_0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.e.b.a.x), global1.d.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.a.x + 212f)), _wgslsmith_f_op_f32(f32(-1f) * -207f)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(~1u, 1u), _wgslsmith_sub_u32(global1.c.b, abs(global1.e.a)))), Struct_2(~1u, global1.c));
    global1 = Struct_4(global1.a, ~(~u_input.a), Struct_1(vec4<f32>(global1.d.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.c.a.x - -805f))), -802f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -559f))), ~_wgslsmith_clamp_u32(reverseBits(u_input.a), 9884u, u_input.a)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b.a * global1.d.a) * vec4<f32>(global1.e.b.a.x, global1.d.a.x, global0.b.a.x, global0.b.a.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-593f, -530f, 570f, arg_0) * global1.d.a)), ~(global0.b.b << (_wgslsmith_dot_vec3_u32(vec3<u32>(60008u, global0.b.b, 1u), vec3<u32>(4844u, global0.a, 1u)) % 32u))), global1.e);
    var var_0 = !vec4<bool>(arg_1.x, true, _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 0i), firstLeadingBit(vec2<i32>(0i, -2147483647i))) < ~countOneBits(1i), !any(arg_1));
    let var_1 = global0.b.a.zw;
    global0 = Struct_2(reverseBits(4294967295u), Struct_1(_wgslsmith_f_op_vec4_f32(global1.d.a - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(566f, global1.d.a.x, global0.b.a.x, 2663f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.b.a.x, global0.b.a.x, 697f, -1224f))), vec4<bool>(var_0.x, arg_1.x, var_0.x, var_0.x)))), ~_wgslsmith_sub_u32(abs(u_input.a), ~1u)));
    return !var_0.zzw;
}

fn func_2() -> bool {
    var var_0 = select(select(func_4(_wgslsmith_f_op_f32(global1.d.a.x - _wgslsmith_f_op_f32(func_3(global0.b.b))), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), false)), vec3<bool>(any(vec3<bool>(true, false, true)), (1137f > global0.b.a.x) | true, true), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), vec3<bool>(1i == (-2147483647i >> (select(global0.a, 0u, false) % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4254u, global0.a) >> (vec2<u32>(84886u, global1.e.a) % vec2<u32>(32u)), select(vec2<u32>(u_input.a, global1.a.x), vec2<u32>(4294967295u, global1.a.x), true)) <= (~global0.a >> (reverseBits(32160u) % 32u)), any(vec2<bool>(true, true))), !vec3<bool>(select(true, func_4(global0.b.a.x, vec2<bool>(true, true)).x, true), false, any(vec3<bool>(true, false, true)) & true));
    var var_1 = ~global0.b.b;
    let var_2 = global1.e;
    global0 = Struct_2(~min(firstTrailingBit(global1.e.b.b), ~_wgslsmith_sub_u32(u_input.a, u_input.a)), global1.d);
    global1 = Struct_4(firstLeadingBit(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(50735u, var_2.a) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))), select(vec2<u32>(1u, 1u), firstTrailingBit(global1.a), vec2<bool>(true, var_0.x)))), 1u, var_2.b, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(680f, -1000f, -458f, global0.b.a.x)))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, var_2.b.b, var_2.a, u_input.a), vec4<u32>(4294967295u, u_input.a, global1.d.b, u_input.a)), vec4<u32>(41715u, 4294967295u, 4294967295u, u_input.a))), Struct_2(global0.a, global0.b));
    return var_0.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: u32) -> bool {
    let var_0 = arg_2;
    let var_1 = min(-abs(~select(vec3<i32>(17614i, arg_1, -22643i), vec3<i32>(-2147483647i, 1i, arg_1), vec3<bool>(true, true, true))), max(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-71633i, 0i, arg_1), vec3<i32>(arg_1, arg_1, arg_1)), ~(-vec3<i32>(-2147483647i, -2147483647i, arg_1))), -_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1, arg_1, -2147483647i) | vec3<i32>(arg_1, 1i, arg_1), vec3<i32>(arg_1, arg_1, arg_1))));
    var var_2 = Struct_3(firstTrailingBit(vec3<u32>(global0.a, _wgslsmith_sub_u32(~4294967295u, global1.b), 1u)), global1.e.b, ~global0.a, -1982f);
    let var_3 = Struct_2(var_0, global1.c);
    global3 = array<vec4<f32>, 16>();
    return select(any(vec2<bool>(false, var_1.x <= 15203i)), !(_wgslsmith_sub_u32(arg_2, var_3.a) <= abs(global1.e.b.b)), func_2()) | (_wgslsmith_clamp_i32(var_1.x, var_1.x, min(_wgslsmith_add_i32(-1i, arg_1), -26339i)) <= _wgslsmith_clamp_i32(arg_1, 1i, 1756i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, all(vec2<bool>(true, true)));
    global3 = array<vec4<f32>, 16>();
    var var_1 = func_1(vec4<f32>(global0.b.a.x, -215f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.a.x))), _wgslsmith_f_op_f32(global1.e.b.a.x * -577f)), -53657i, _wgslsmith_div_u32(global0.a, 1u));
    let var_2 = firstLeadingBit(global1.e.b.b) > (~global1.e.b.b << (_wgslsmith_div_u32(~0u | firstLeadingBit(u_input.a), global1.d.b) % 32u));
    global1 = Struct_4(global1.a, ~global0.a, global1.e.b, global0.b, global1.e);
    let var_3 = Struct_5(select(!func_4(-139f, vec2<bool>(true, true)).xy, !select(vec2<bool>(var_0.x, var_2), vec2<bool>(true, var_0.x), any(vec3<bool>(var_2, var_0.x, var_0.x))), select(all(vec4<bool>(false, var_0.x, var_2, var_2)), true, false)), reverseBits(i32(-1i) * -1i), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(0u, 16u)])), abs(0u)), 2147483647i, var_0.x && true);
    let var_4 = var_3;
    var var_5 = var_0.x;
    let var_6 = _wgslsmith_add_vec3_u32(~vec3<u32>(select(~106642u, 1u, var_2), u_input.a, ~(~u_input.a)), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(61625u, global1.d.b, var_4.c.b)), vec3<u32>(global1.d.b >> (var_3.c.b % 32u), 40958u, 24154u), select(~vec3<u32>(u_input.a, var_4.c.b, var_4.c.b), vec3<u32>(4215u, 8482u, 27506u) & vec3<u32>(u_input.a, 92153u, u_input.a), !var_2)) << (~countOneBits(vec3<u32>(28081u, 8900u, 1u)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(~var_3.b, ~var_3.d), vec2<i32>(_wgslsmith_mult_i32(var_4.d, var_4.d), var_4.b ^ 2147483647i)), select(vec2<i32>(-1i, 0i), -min(vec2<i32>(-1i, 65521i), vec2<i32>(var_3.b, var_3.b)), vec2<bool>(var_4.a.x, func_1(global3[_wgslsmith_index_u32(25692u, 16u)], 2147483647i, global1.b)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global1.e.b.a.zxz))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.b.a.xxy), _wgslsmith_div_vec3_f32(global0.b.a.xzz, vec3<f32>(2391f, global0.b.a.x, -1911f)), true))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1140f, -647f, true))), 1241f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1194f), global1.e.b.a.x))), ~vec4<u32>(~_wgslsmith_dot_vec2_u32(global1.a, vec2<u32>(global0.b.b, 1u)), u_input.a, global1.b, _wgslsmith_mod_u32(global1.d.b, 22816u)), -var_4.d);
}

