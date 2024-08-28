struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec4<i32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 9>;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-1517f, 401f, 338f), vec3<f32>(-2199f, 1493f, -738f), vec2<bool>(false, true), 1u, vec3<f32>(1273f, 1000f, 402f));

var<private> global2: array<vec4<f32>, 32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4) -> u32 {
    var var_0 = Struct_5(select(vec4<bool>(~arg_1.a.x >= arg_1.a.x, true & global1.c.x, global1.c.x & true, global1.c.x), vec4<bool>(!arg_1.c.d.c.x, !(global1.c.x || false), any(vec2<bool>(global1.c.x, global1.c.x)), false), global1.c.x), arg_1.b, ~select(vec4<i32>(firstLeadingBit(u_input.a.x), ~u_input.a.x, -u_input.a.x, reverseBits(arg_1.d)), -vec4<i32>(0i, 1i, 1i, u_input.a.x), vec4<bool>(all(vec4<bool>(false, false, false, arg_1.b.d.c.x)), any(vec4<bool>(false, true, global1.c.x, arg_1.c.a.x)), 622f < arg_1.c.d.e.x, true)), vec4<bool>((1i | arg_1.d) > u_input.a.x, all(!(!vec4<bool>(arg_1.b.d.c.x, false, false, true))), any(select(vec3<bool>(false, true, false), arg_1.c.a, vec3<bool>(arg_1.b.b.x, false, true))), arg_1.b.c), arg_1.c.d);
    var var_1 = countOneBits(arg_1.d) | arg_1.a.x;
    var var_2 = var_0.b;
    var_2 = arg_1.b;
    let var_3 = vec3<i32>(~(~(~1i)) | _wgslsmith_add_i32(u_input.a.x, 0i), -2147483647i, -u_input.a.x);
    return firstTrailingBit(~arg_0.x) >> (var_0.e.d % 32u);
}

fn func_4(arg_0: u32, arg_1: u32) -> vec2<bool> {
    var var_0 = Struct_4(u_input.a.xz, Struct_2(!global1.c.x, global1.c, true, Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1344f, -1620f, global1.b.x) + _wgslsmith_div_vec3_f32(vec3<f32>(-165f, -1048f, 698f), vec3<f32>(global1.b.x, global1.e.x, 1634f))), select(global1.c, !global1.c, select(global1.c, global1.c, global1.c)), firstTrailingBit(13301u) | 0u, _wgslsmith_f_op_vec3_f32(select(global1.b, _wgslsmith_div_vec3_f32(global1.b, vec3<f32>(-1356f, global1.b.x, -1273f)), true)))), Struct_3(select(select(select(vec3<bool>(false, false, global1.c.x), vec3<bool>(true, true, global1.c.x), vec3<bool>(true, global1.c.x, global1.c.x)), select(vec3<bool>(global1.c.x, true, global1.c.x), vec3<bool>(global1.c.x, true, false), false), vec3<bool>(true, true, true)), select(!vec3<bool>(false, false, global1.c.x), vec3<bool>(global1.c.x, global1.c.x, global1.c.x), select(vec3<bool>(global1.c.x, false, global1.c.x), vec3<bool>(true, false, false), true)), !global1.c.x), global1.c.x, _wgslsmith_f_op_f32(358f * _wgslsmith_f_op_f32(select(-690f, -1086f, true))), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(global1.e)), vec3<f32>(853f, global1.e.x, global1.e.x))), vec3<f32>(_wgslsmith_f_op_f32(min(-299f, -563f)), -120f, 1f), vec2<bool>(all(global1.c), all(vec3<bool>(true, false, global1.c.x))), 1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.x, global1.a.x, global1.e.x)))), min(_wgslsmith_div_i32(-44420i, -u_input.a.x), -16953i) << (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(53281u, 1u, 4294967295u, 47731u)), firstTrailingBit(vec4<u32>(6916u, arg_1, 0u, arg_1))), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, global1.d, 1u), vec4<u32>(global1.d, arg_1, 5064u, 4788u)) ^ vec4<u32>(global1.d, global1.d, arg_0, global1.d)) % 32u));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.b.d.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-560f * _wgslsmith_f_op_f32(-var_0.b.d.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.b.x))), var_0.b.d.e.x) + vec3<f32>(-357f, global1.b.x, global1.b.x)), vec2<bool>(true, any(vec2<bool>(any(vec4<bool>(true, var_0.c.d.c.x, false, global1.c.x)), global1.d > arg_1))), ~arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.b.d.b, var_0.b.d.a)))));
    let var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(var_0.d, -1i), u_input.a.x), firstLeadingBit(vec2<i32>(-1i) * -var_0.a), -max(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, var_0.a.x), vec2<i32>(var_0.a.x, u_input.a.x)), vec2<i32>(-1i) * -var_0.a));
    let var_2 = var_0.b.c;
    var var_3 = Struct_5(vec4<bool>(any(vec2<bool>(any(vec4<bool>(true, global1.c.x, false, true)), false)), !var_0.c.b, global1.c.x, var_0.c.d.c.x), Struct_2(true, var_0.c.a.zz, true, var_0.b.d), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(18008i, u_input.a.x, var_0.d, 5117i) & ~vec4<i32>(var_0.d, -2147483647i, var_0.d, -21855i), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(30262i, var_0.a.x, 22986i, var_1.x)), reverseBits(vec4<i32>(0i, u_input.a.x, u_input.a.x, var_1.x)))), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(19278i, u_input.a.x, u_input.a.x, var_0.d)), vec4<i32>(var_0.d, var_0.a.x, var_1.x, var_0.d) >> (vec4<u32>(0u, global1.d, global1.d, 110787u) % vec4<u32>(32u))) >> (~(~vec4<u32>(arg_0, var_0.c.d.d, 4294967295u, 55096u)) % vec4<u32>(32u))), !(!(!vec4<bool>(false, global1.c.x, true, global1.c.x))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, -983f, global1.a.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-556f, -539f, var_0.c.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.b - _wgslsmith_f_op_vec3_f32(step(var_0.c.d.b, vec3<f32>(-1000f, 595f, 494f))))), select(vec2<bool>(var_0.b.d.c.x, !global1.c.x), var_0.c.a.xy, true), ~_wgslsmith_mult_u32(arg_1, 73227u << (var_0.b.d.d % 32u)), vec3<f32>(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(global1.a.x + 766f)), _wgslsmith_f_op_f32(f32(-1f) * -1410f), 1000f)));
    return vec2<bool>(var_0.c.b, true);
}

fn func_2() -> vec2<bool> {
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.e + vec3<f32>(global1.e.x, global1.a.x, global1.b.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.e.x, global1.a.x)))), select(!global1.c, func_4(_wgslsmith_add_u32(func_3(vec2<u32>(global1.d, global1.d), Struct_4(vec2<i32>(2721i, u_input.a.x), Struct_2(false, vec2<bool>(false, true), false, Struct_1(vec3<f32>(-619f, 1140f, 765f), vec3<f32>(1191f, global1.e.x, 149f), vec2<bool>(true, global1.c.x), 52417u, global1.a)), Struct_3(vec3<bool>(global1.c.x, global1.c.x, false), false, global1.e.x, Struct_1(global1.a, vec3<f32>(global1.e.x, 490f, global1.b.x), vec2<bool>(global1.c.x, global1.c.x), global1.d, vec3<f32>(1049f, 564f, global1.b.x))), -2147483647i)), ~36014u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, 29137u), ~global1.d)), global1.c), 3947u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a), global1.b))));
    global0 = array<Struct_5, 9>();
    let var_0 = _wgslsmith_sub_vec3_u32((abs(vec3<u32>(0u, 64247u, 10698u) >> (vec3<u32>(global1.d, 77394u, global1.d) % vec3<u32>(32u))) << (~min(vec3<u32>(global1.d, 1u, global1.d), vec3<u32>(global1.d, global1.d, 1u)) % vec3<u32>(32u))) << (~vec3<u32>(global1.d, global1.d, global1.d) % vec3<u32>(32u)), select(vec3<u32>(global1.d << (~global1.d % 32u), global1.d, 104020u), vec3<u32>(~1u, global1.d, select(global1.d, global1.d, 1u != global1.d)), vec3<bool>(any(select(vec3<bool>(global1.c.x, global1.c.x, true), vec3<bool>(global1.c.x, global1.c.x, global1.c.x), false)), false, !(false | global1.c.x))));
    var var_1 = global1.d;
    global0 = array<Struct_5, 9>();
    return func_4(0u, ~global1.d ^ abs(~global1.d));
}

fn func_1() -> u32 {
    global2 = array<vec4<f32>, 32>();
    global0 = array<Struct_5, 9>();
    let var_0 = Struct_5(!vec4<bool>(!any(global1.c), global1.c.x, global1.c.x, true), Struct_2(!any(global1.c), !select(global1.c, vec2<bool>(global1.c.x, global1.c.x), func_2()), u_input.a.x >= ~(2147483647i & u_input.a.x), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(1648f, global1.e.x, false)), _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(-2600f - -220f)), global1.e, global1.c, firstLeadingBit(~0u), global1.e)), vec4<i32>(min(-_wgslsmith_mod_i32(-7298i, 1i), u_input.a.x), 2147483647i, u_input.a.x, u_input.a.x), !vec4<bool>(false && (global1.c.x && global1.c.x), _wgslsmith_f_op_f32(global1.e.x + -130f) != global1.e.x, !(global1.d == 0u), global1.c.x), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.b.x, global1.a.x, 121f))) + _wgslsmith_f_op_vec3_f32(-global1.a)))), vec3<f32>(_wgslsmith_f_op_f32(global1.e.x - -721f), _wgslsmith_f_op_f32(-1674f - -915f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(453f, 2236f)), _wgslsmith_f_op_f32(floor(-567f))))), !select(vec2<bool>(false, false), func_4(7716u, 40251u), any(vec3<bool>(false, global1.c.x, global1.c.x))), global1.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.b + vec3<f32>(global1.e.x, global1.b.x, 252f))) - global1.e)));
    global1 = var_0.e;
    global2 = array<vec4<f32>, 32>();
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(~56160u, global1.d ^ global1.d)), max(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.d, global1.d, global1.d), vec3<u32>(22247u, 1u, global1.d)), vec3<u32>(40329u, 25594u, global1.d)), _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.d, 40237u, 0u, global1.d), vec4<u32>(global1.d, global1.d, 26324u, 21970u)))), ~global1.d, global1.d | 19838u);
    let var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global1.d, var_0.x, 60517u, 4294967295u)), vec4<u32>(1u, 4294967295u, 0u >> (1u % 32u), func_1())), _wgslsmith_mult_u32(var_0.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.x, var_0.x), reverseBits(var_0.x))), 93776u) ^ ~abs(_wgslsmith_mod_vec3_u32(var_0.zwy, ~var_0.xww));
    let var_2 = global0[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 4294967295u, var_1.x, var_1.x), vec4<u32>(6160u, 4294967295u, var_1.x, var_0.x)) >> (1u % 32u)), _wgslsmith_clamp_u32(var_0.x, (8397u << (var_0.x % 32u)) | _wgslsmith_add_u32(var_1.x, 0u), var_0.x))), 9u)];
    global0 = array<Struct_5, 9>();
    global1 = Struct_1(vec3<f32>(1232f, _wgslsmith_f_op_f32(global1.e.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -110f), var_2.b.d.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-342f - _wgslsmith_div_f32(var_2.e.b.x, var_2.b.d.b.x)) + 122f)), vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1303f))), _wgslsmith_f_op_f32(-var_2.b.d.a.x), global1.c.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.d.b.x), _wgslsmith_f_op_f32(floor(-1000f))), var_2.b.d.a.x)), global1.c, 1u, vec3<f32>(var_2.b.d.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, global1.e.x))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-641f, var_2.e.e.x)), _wgslsmith_div_f32(-118f, 454f), true))), -1881f));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.wxx, 0i, ~var_2.c.yzw, _wgslsmith_f_op_f32(var_2.b.d.a.x * -1357f), -_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c.x, var_2.c.x), firstLeadingBit(-u_input.a.xy)));
}

