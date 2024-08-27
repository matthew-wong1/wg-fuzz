struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(true, true, true, false, true);

var<private> global1: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = Struct_2(true, ~(~global1.b), 945f, global1.d, all(!select(select(vec3<bool>(global0[_wgslsmith_index_u32(global1.b.x, 5u)], global0[_wgslsmith_index_u32(73775u, 5u)], false), vec3<bool>(true, true, global1.d.b.x), global1.e), select(vec3<bool>(global0[_wgslsmith_index_u32(34175u, 5u)], false, false), vec3<bool>(global1.a, global0[_wgslsmith_index_u32(global1.b.x, 5u)], global1.e), true), global1.d.b.x)));
    var var_1 = false;
    var var_2 = Struct_4(global1.b, Struct_3(!global0[_wgslsmith_index_u32(var_0.b.x, 5u)], ~firstLeadingBit(1u), vec3<bool>((var_0.b.x != global1.b.x) == any(var_0.d.b), true, var_0.d.a), global1.d, Struct_1(any(!global1.d.b), select(vec2<bool>(global0[_wgslsmith_index_u32(880u, 5u)], false), global1.d.b, vec2<bool>(false, global0[_wgslsmith_index_u32(global1.b.x, 5u)])))), vec2<bool>(false, !all(vec3<bool>(var_0.d.b.x, global0[_wgslsmith_index_u32(0u, 5u)], false))), _wgslsmith_add_u32(~(~0u), 32465u), -1074f);
    var var_3 = ~(max(-_wgslsmith_clamp_i32(u_input.a, u_input.a, -40618i), u_input.a) >> (64012u % 32u));
    let var_4 = var_2.b;
    return u_input.a;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_5 {
    let var_0 = _wgslsmith_mult_vec3_i32(arg_2, vec3<i32>(_wgslsmith_mod_i32(u_input.a, (i32(-1i) * -2147483647i) << (_wgslsmith_mod_u32(global1.b.x, arg_3.b.x) % 32u)), 1i, _wgslsmith_mod_i32(0i, func_3())));
    let var_1 = arg_3;
    var var_2 = Struct_3(false, ~arg_3.b.x, !(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_3.b.x, 5u)], var_1.e), vec3<bool>(global0[_wgslsmith_index_u32(24178u, 5u)], var_1.e, true), global1.a)), Struct_1(any(vec3<bool>(true, var_1.c <= arg_3.c, 23672i <= arg_2.x)), !(!select(global1.d.b, vec2<bool>(false, false), var_1.d.a))), Struct_1(!var_1.e, select(vec2<bool>(any(vec3<bool>(arg_3.e, global0[_wgslsmith_index_u32(arg_3.b.x, 5u)], var_1.e)), !var_1.d.b.x), vec2<bool>(true, any(vec2<bool>(false, global1.d.a))), arg_3.d.b)));
    let var_3 = Struct_2(~var_0.x >= 0i, arg_1.xy & firstLeadingBit(_wgslsmith_sub_vec2_u32(~arg_1.zz, abs(vec2<u32>(1u, var_1.b.x)))), _wgslsmith_f_op_f32(exp2(var_1.c)), global1.d, true);
    var var_4 = arg_2.zy;
    return Struct_5(vec4<u32>(~(~_wgslsmith_mult_u32(global1.b.x, 4870u)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(92522u, var_1.b.x)), var_3.b), ~vec2<u32>(10295u, 75512u)), ~var_1.b.x, 0u), -2147483647i, -(~var_0.zz) >> (firstLeadingBit(~vec2<u32>(19838u, var_3.b.x) | abs(global1.b)) % vec2<u32>(32u)), _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.b, 1u, var_1.b.x, var_1.b.x) & vec4<u32>(0u, 1u, arg_1.x, 2480u), ~vec4<u32>(var_2.b, arg_3.b.x, 26990u, 4294967295u)), countOneBits(firstLeadingBit(vec4<u32>(global1.b.x, arg_1.x, 29084u, 26608u)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(6100u, arg_1.x, 1u, var_1.b.x), vec4<u32>(global1.b.x, 20806u, arg_3.b.x, global1.b.x)) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, -215f, global1.c) + vec3<f32>(var_1.c, 1745f, arg_3.c)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.c, var_3.c, 1263f), vec3<f32>(-2065f, 527f, -2003f), vec3<bool>(var_3.a, global1.e, var_1.a))))))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_4) -> vec2<i32> {
    let var_0 = !any(!arg_2.b.c) && false;
    global0 = array<bool, 5>();
    var var_1 = arg_0.e.x;
    return _wgslsmith_mod_vec2_i32(~vec2<i32>(-(arg_0.b ^ arg_0.b), _wgslsmith_clamp_i32(u_input.a, -11957i, _wgslsmith_mult_i32(-15544i, -1i))), abs(vec2<i32>(-_wgslsmith_div_i32(u_input.a, u_input.a), 20963i >> (~global1.b.x % 32u))));
}

fn func_5(arg_0: Struct_5, arg_1: i32) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = min(vec4<u32>(11333u, ~_wgslsmith_sub_u32(global1.b.x >> (4294967295u % 32u), global1.b.x), ~53264u, _wgslsmith_mod_u32(global1.b.x, countOneBits(_wgslsmith_mod_u32(4294967295u, 4294967295u)))), func_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(~arg_0.d, 81740u), ~_wgslsmith_div_u32(90495u, arg_0.a.x)), 5u)], arg_0.a.xww, abs(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1, 1i, var_0), vec3<i32>(2147483647i, -2147483647i, arg_0.b)), vec3<i32>(u_input.a, 0i, 1i))), Struct_2(true, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.x, global1.b.x, 84950u, arg_0.a.x), vec4<u32>(global1.b.x, 16870u, 26023u, 99193u)), min(arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1001f - -878f) - 952f), global1.d, true)).a);
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    var_1 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(global1.b.x, 0u, var_1.x, global1.b.x), arg_0.a), select(vec4<u32>(31181u, 13014u, global1.b.x, arg_0.a.x), vec4<u32>(61167u, 4294967295u, 1u, arg_0.d), global0[_wgslsmith_index_u32(4294967295u, 5u)])), arg_0.a.x, arg_0.a.x, ~(~arg_0.a.x)) >> (vec4<u32>(~(~4294967295u) ^ firstTrailingBit(4294967295u), 0u, max(countOneBits(1u), ~1u), _wgslsmith_sub_u32(0u, global1.b.x)) % vec4<u32>(32u));
    return Struct_2(global1.d.b.x, arg_0.a.zy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2487f - -668f) - 617f) + 126f), Struct_1(any(!select(vec3<bool>(false, false, true), vec3<bool>(true, global0[_wgslsmith_index_u32(25329u, 5u)], true), true)), global1.d.b), any(!vec3<bool>(true, false, global1.c > global1.c)));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: vec2<bool>) -> Struct_3 {
    global0 = array<bool, 5>();
    global1 = func_5(Struct_5(~(~(~vec4<u32>(arg_1, 0u, global1.b.x, global1.b.x))), 1i, -func_4(func_2(false, vec3<u32>(arg_1, global1.b.x, 0u), vec3<i32>(u_input.a, 1i, 1i), Struct_2(true, vec2<u32>(global1.b.x, 0u), -600f, global1.d, false)), Struct_4(global1.b, Struct_3(true, 4294967295u, vec3<bool>(false, false, arg_2), arg_0, arg_0), arg_0.b, global1.b.x, global1.c), Struct_4(vec2<u32>(global1.b.x, 595u), Struct_3(arg_0.a, global1.b.x, vec3<bool>(global0[_wgslsmith_index_u32(0u, 5u)], true, arg_2), Struct_1(false, vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], true)), global1.d), arg_0.b, arg_1, -134f)), 50084u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, global1.c, global1.c)))), u_input.a);
    global0 = array<bool, 5>();
    var var_0 = _wgslsmith_dot_vec3_u32(firstTrailingBit(abs(vec3<u32>(global1.b.x, 1u, global1.b.x) >> (vec3<u32>(arg_1, 0u, global1.b.x) % vec3<u32>(32u)))), vec3<u32>(_wgslsmith_mod_u32(global1.b.x, global1.b.x), _wgslsmith_clamp_u32(arg_1, arg_1, 3054u), 23441u) | (vec3<u32>(arg_1, 0u, global1.b.x) << (firstTrailingBit(vec3<u32>(arg_1, 0u, arg_1)) % vec3<u32>(32u)))) >> (4294967295u % 32u);
    var var_1 = (vec2<i32>(-1i) * -(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(16239i, -12245i)) | select(vec2<i32>(-1i, u_input.a), vec2<i32>(30074i, u_input.a), arg_3))) & vec2<i32>(~func_4(func_2(arg_3.x, vec3<u32>(1u, 1u, global1.b.x), vec3<i32>(u_input.a, u_input.a, -8080i), Struct_2(true, global1.b, global1.c, arg_0, true)), Struct_4(global1.b, Struct_3(true, 45489u, vec3<bool>(true, false, false), Struct_1(arg_0.b.x, vec2<bool>(arg_3.x, arg_0.a)), global1.d), arg_3, 11872u, global1.c), Struct_4(global1.b, Struct_3(true, 0u, vec3<bool>(true, true, false), global1.d, global1.d), arg_3, 1u, 272f)).x, u_input.a);
    return Struct_3(!all(select(select(vec4<bool>(arg_0.a, arg_3.x, true, false), vec4<bool>(true, false, false, true), global0[_wgslsmith_index_u32(4294967295u, 5u)]), vec4<bool>(false, arg_3.x, true, arg_0.b.x), !vec4<bool>(true, arg_0.b.x, false, true))), 93037u, !vec3<bool>(true, !all(vec3<bool>(arg_3.x, false, arg_2)), false), func_5(func_2(true, ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, arg_1, arg_1), vec3<u32>(arg_1, 1u, 2874u)), firstTrailingBit(-vec3<i32>(var_1.x, 19479i, u_input.a)), func_5(func_2(false, vec3<u32>(1u, 1u, global1.b.x), vec3<i32>(-4305i, -1i, var_1.x), Struct_2(true, vec2<u32>(arg_1, 97824u), 1000f, arg_0, arg_2)), -1i)), select(countOneBits(-1i), var_1.x, true)).d, Struct_1(all(select(vec4<bool>(global1.d.a, arg_0.b.x, arg_2, global1.e), select(vec4<bool>(global0[_wgslsmith_index_u32(23551u, 5u)], true, global0[_wgslsmith_index_u32(global1.b.x, 5u)], false), vec4<bool>(false, true, arg_3.x, arg_3.x), false), any(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], arg_0.a, arg_2, false)))), arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_add_i32(~(~(~u_input.a)), -29151i);
    let var_1 = func_1(global1.d, ~87434u, global1.a, vec2<bool>(any(select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 5u)], false, true), vec3<bool>(false, true, global1.d.a), global0[_wgslsmith_index_u32(global1.b.x, 5u)])) && any(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], false, global1.d.b.x, global1.e)), true));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, 1113f, -1012f, global1.c) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.c, global1.c, -550f, global1.c), vec4<f32>(global1.c, global1.c, 1000f, global1.c)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-186f, 283f, global1.c, 358f))))));
    global1 = func_5(Struct_5(firstTrailingBit(~min(vec4<u32>(4294967295u, 4294967295u, var_1.b, global1.b.x), vec4<u32>(var_1.b, global1.b.x, 20652u, 3579u))), countOneBits(var_0), vec2<i32>(var_0, u_input.a), func_5(func_2(!var_1.d.a, vec3<u32>(27989u, var_1.b, global1.b.x), ~vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_2(true, vec2<u32>(var_1.b, 62203u), global1.c, var_1.d, global1.a)), -(~0i)).b.x, vec3<f32>(global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(max(var_2.x, global1.c))), func_5(Struct_5(vec4<u32>(164067u, var_1.b, global1.b.x, global1.b.x), var_0, vec2<i32>(var_0, u_input.a), 1u, vec3<f32>(global1.c, var_2.x, var_2.x)), var_0).c)), var_0);
    global0 = array<bool, 5>();
    global1 = func_5(Struct_5(vec4<u32>(0u, 46667u, func_2(!var_1.a, firstTrailingBit(vec3<u32>(0u, 11308u, var_1.b)), vec3<i32>(0i, var_0, u_input.a) ^ vec3<i32>(u_input.a, 0i, u_input.a), Struct_2(var_1.a, global1.b, 666f, Struct_1(var_1.c.x, var_1.c.yy), global0[_wgslsmith_index_u32(22936u, 5u)])).d, select(var_1.b, func_2(false, vec3<u32>(var_1.b, 0u, 42811u), vec3<i32>(-1i, var_0, u_input.a), Struct_2(var_1.c.x, vec2<u32>(global1.b.x, 1u), var_2.x, Struct_1(var_1.e.b.x, var_1.c.yx), false)).a.x, u_input.a < var_0)), -(func_3() ^ -var_0), min(select(vec2<i32>(-2147483647i, var_0) ^ vec2<i32>(-13900i, u_input.a), vec2<i32>(2147483647i, 0i), vec2<bool>(true, false)), vec2<i32>(_wgslsmith_add_i32(var_0, 0i), -11312i)), var_1.b, var_2.xww), -1i);
    global1 = func_5(Struct_5(~(~(~vec4<u32>(35025u, 31853u, var_1.b, var_1.b))), var_0, abs(select(-vec2<i32>(var_0, var_0), -vec2<i32>(var_0, 13177i), vec2<bool>(true, var_1.e.b.x))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(3978u, 8281u, 124427u, 40845u), vec4<u32>(52988u, 4294967295u, global1.b.x, global1.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -1183f, var_2.x)) * var_2.xyz)), 0i);
    var var_3 = -vec2<i32>(-3270i, var_0) << (vec2<u32>(~(select(var_1.b, 25533u, false) | ~101909u), ~countOneBits(firstLeadingBit(var_1.b))) % vec2<u32>(32u));
    global1 = func_5(Struct_5(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(38646u, global1.b.x, var_1.b, 88032u), vec4<u32>(0u, 24694u, 4294967295u, 6254u)), ~vec4<u32>(var_1.b, 4693u, global1.b.x, global1.b.x)), func_2(!global1.d.b.x, vec3<u32>(var_1.b, 49517u, var_1.b), select(vec3<i32>(2147483647i, var_0, var_3.x), vec3<i32>(66827i, -1i, -2147483647i), global1.d.a), func_5(Struct_5(vec4<u32>(var_1.b, var_1.b, 4294967295u, global1.b.x), 2147483647i, vec2<i32>(-17338i, u_input.a), 23167u, vec3<f32>(global1.c, -879f, global1.c)), u_input.a)).a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(3717u, global1.b.x, 1u, 62721u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_1.b, global1.b.x, 4294967295u), vec4<u32>(1u, 13806u, var_1.b, 0u))), select(_wgslsmith_mult_u32(49510u, global1.b.x), abs(44037u), global0[_wgslsmith_index_u32(var_1.b, 5u)])), ~(u_input.a & u_input.a) | 1i, _wgslsmith_add_vec2_i32(vec2<i32>(0i, var_3.x) | vec2<i32>(var_3.x, -1i), -vec2<i32>(31286i, u_input.a)) << ((select(vec2<u32>(38217u, 34658u), global1.b, false) >> (abs(vec2<u32>(1u, 42179u)) % vec2<u32>(32u))) % vec2<u32>(32u)), 4294967295u, vec3<f32>(-463f, -1558f, 604f)), _wgslsmith_mod_i32(func_3(), var_0));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, global1.c, var_2.x, var_2.x)))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.c, -222f, _wgslsmith_f_op_f32(select(global1.c, 753f, global1.a)), var_2.x)))), abs(-vec2<i32>(var_0, i32(-1i) * -2147483647i)));
}

