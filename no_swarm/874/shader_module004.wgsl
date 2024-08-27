struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    global0 = firstLeadingBit(select(vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_1.b), global0.xw), _wgslsmith_clamp_i32(52692i, 5154i, 27368i), 2147483647i), reverseBits(vec4<i32>(u_input.b.x, u_input.a.x, arg_1.b, 41706i)), select(vec4<bool>(false, arg_0.x, false, false), vec4<bool>(arg_0.x, false, false, arg_0.x), true))) | vec4<i32>(firstLeadingBit(-24899i), global0.x, ~0i << (u_input.e % 32u), -34759i);
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1537f, _wgslsmith_f_op_f32(step(-1000f, 133f)), _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(f32(-1f) * -594f)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, arg_1.a, 531f, -400f) - vec4<f32>(-164f, 1268f, -1000f, arg_1.a)), vec4<f32>(679f, arg_1.a, 1427f, -1097f))))));
    global0 = ~vec4<i32>(-(_wgslsmith_sub_i32(global0.x, 1i) >> (~u_input.e % 32u)), i32(-1i) * -1i, arg_1.b, _wgslsmith_mult_i32(select(81621i, _wgslsmith_clamp_i32(1i, -1i, u_input.c), true), 1i));
    let var_1 = Struct_2(u_input.e, _wgslsmith_f_op_vec4_f32(-var_0.a), select(select(~(~vec2<u32>(u_input.e, u_input.e)), ~firstLeadingBit(vec2<u32>(4294967295u, 0u)), any(select(vec2<bool>(arg_0.x, true), arg_0.yy, true))), vec2<u32>(_wgslsmith_div_u32(u_input.e, u_input.e), reverseBits(5058u)) >> (~countOneBits(vec2<u32>(u_input.e, 14437u)) % vec2<u32>(32u)), arg_0.wy), ~min(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, u_input.e, 0u) >> (vec3<u32>(u_input.e, 118365u, u_input.e) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, 12540u), vec3<u32>(u_input.e, u_input.e, u_input.e)), select(vec3<u32>(0u, 64537u, u_input.e), vec3<u32>(u_input.e, 8942u, u_input.e), vec3<bool>(true, arg_0.x, arg_0.x))), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 1u, u_input.e), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.e, 16430u), vec3<u32>(u_input.e, u_input.e, 13587u), vec3<u32>(4294967295u, u_input.e, u_input.e)))));
    var var_2 = var_1.d.zy >> (_wgslsmith_mult_vec2_u32(select(vec2<u32>(select(31675u, u_input.e, arg_0.x), countOneBits(u_input.e)), vec2<u32>(abs(u_input.e), u_input.e ^ 22354u), true), _wgslsmith_mod_vec2_u32(var_1.c, var_1.c)) % vec2<u32>(32u));
    return 0u;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: f32) -> vec3<bool> {
    global0 = min(~(vec4<i32>(38500i, global0.x, arg_1, 792i) & vec4<i32>(u_input.a.x, global0.x, 0i, 0i)) ^ vec4<i32>(_wgslsmith_dot_vec3_i32(global0.yyw, vec3<i32>(u_input.b.x, 2147483647i, arg_1)), _wgslsmith_div_i32(global0.x, u_input.c), _wgslsmith_div_i32(arg_1, global0.x), firstLeadingBit(0i)), vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0, 10254i, 38383i, global0.x), max(vec4<i32>(-1i, arg_1, -38908i, arg_1), vec4<i32>(-1i, 0i, -2147483647i, -30433i))), -(i32(-1i) * -28763i), -arg_0, select(u_input.b.x, ~arg_1, all(vec2<bool>(false, false))))) ^ -_wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647i, -1i, 0i, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(28887i, 14352i, global0.x, -11349i), abs(vec4<i32>(global0.x, 0i, arg_1, -17108i))));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(1000f * arg_2), global0.x);
    global0 = vec4<i32>(_wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, arg_0, u_input.b.x, var_0.b) & vec4<i32>(2147483647i, var_0.b, 28062i, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, -75698i, global0.x, var_0.b), vec4<i32>(global0.x, global0.x, u_input.d, -36833i)))), ~u_input.a.x, 1i), ~arg_1, arg_1 >> (_wgslsmith_mod_u32(u_input.e, func_3(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), true), Struct_1(arg_2, u_input.d))) % 32u), -2147483647i);
    let var_1 = true;
    let var_2 = Struct_2(reverseBits(~max(abs(u_input.e), _wgslsmith_sub_u32(u_input.e, 30880u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(797f + _wgslsmith_f_op_f32(select(arg_2, var_0.a, false)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1101f)), _wgslsmith_f_op_f32(arg_2 - arg_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) * _wgslsmith_f_op_f32(149f + _wgslsmith_div_f32(1376f, -759f))), -1328f), ~abs(~abs(vec2<u32>(1u, 69423u))), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.e, u_input.e, u_input.e), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(0u, 0u, u_input.e)), countOneBits(vec3<u32>(35309u, u_input.e, 9549u)))), select(~(~vec3<u32>(1u, u_input.e, 87938u)), vec3<u32>(~u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(5557u, 56361u, u_input.e, 355u), vec4<u32>(6871u, u_input.e, 0u, u_input.e)), select(0u, u_input.e, var_1)), select(select(vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, true, true), vec3<bool>(var_1, var_1, true)), !vec3<bool>(var_1, true, var_1), !vec3<bool>(false, var_1, false)))));
    return vec3<bool>(any(select(vec4<bool>(false, var_1, true, false), vec4<bool>(true, any(vec4<bool>(false, var_1, var_1, var_1)), true, var_1), select(vec4<bool>(true, true, true, var_1), !vec4<bool>(true, true, false, var_1), false))), _wgslsmith_mult_i32(u_input.c, abs(_wgslsmith_div_i32(u_input.b.x, arg_0))) == 2147483647i, !(!var_1));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_3 {
    global0 = ~vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global0.x, global0.x, 0i), vec4<i32>(-1i, 32553i, u_input.b.x, global0.x))), global0.x), u_input.a.x, 1i, -301i);
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_0.a.wzw)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.a.x, arg_0.a.x, 435f))))), arg_0.a.zwy, func_2(1i, -1i, -234f))));
    global0 = reverseBits(~select(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-28729i, 0i, 23020i, u_input.b.x), vec4<i32>(u_input.b.x, global0.x, 27689i, 22881i), vec4<i32>(-2147483647i, u_input.b.x, 20532i, 1i)), -_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, -28405i, -11770i, global0.x), vec4<i32>(u_input.a.x, global0.x, global0.x, global0.x)), true));
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> i32 {
    global0 = abs(_wgslsmith_clamp_vec4_i32(firstTrailingBit(-vec4<i32>(global0.x, 2147483647i, u_input.b.x, 12713i)), vec4<i32>(global0.x >> (9716u % 32u), firstLeadingBit(u_input.d), ~(-44261i), global0.x ^ -4225i), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-37690i, u_input.a.x, 0i, u_input.d), vec4<i32>(1i, u_input.a.x, -1i, u_input.c))) << (reverseBits(reverseBits(abs(vec4<u32>(u_input.e, u_input.e, 1u, 0u)))) % vec4<u32>(32u)));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(373f, _wgslsmith_f_op_f32(ceil(arg_0.a.x)))), u_input.c);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1307f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - arg_1), _wgslsmith_f_op_f32(step(arg_1, 1132f)))))));
    var var_2 = u_input.e;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.a.xw, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a, arg_1))), arg_0.a.wx)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(491f, var_0.a)), var_1))));
    return -reverseBits(~abs(19838i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(abs(func_4(func_1(Struct_3(vec4<f32>(1440f, 2498f, -1300f, 318f)), vec2<u32>(0u, 1u)), _wgslsmith_f_op_f32(step(-263f, 1000f)))), i32(-1i) * -17184i, -29793i, -2147483647i) << (((firstTrailingBit(vec4<u32>(u_input.e, 62746u, 30377u, u_input.e) ^ vec4<u32>(u_input.e, 0u, 4294967295u, u_input.e)) & _wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.e, 0u, 96834u, u_input.e)), ~vec4<u32>(u_input.e, 4294967295u, u_input.e, u_input.e))) << (~(~(~vec4<u32>(u_input.e, 8164u, 0u, 0u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    global0 = _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(_wgslsmith_add_i32(min(6739i, -2147483647i), ~u_input.d), 2147483647i, 36197i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, u_input.a.x), reverseBits(vec3<i32>(19513i, 19604i, u_input.d))))), vec4<i32>(-1i, abs(_wgslsmith_add_i32(11235i, -2147483647i)), _wgslsmith_clamp_i32(reverseBits(_wgslsmith_clamp_i32(19812i, global0.x, u_input.c)), ~global0.x >> (~0u % 32u), -52545i), global0.x), firstTrailingBit(-vec4<i32>(12737i, u_input.c, 1891i, global0.x)) & select(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2281i, 1i, global0.x, 28269i), vec4<i32>(global0.x, global0.x, -1i, -14505i)), vec4<i32>(u_input.a.x, -4606i, global0.x, 62956i)), vec4<i32>(69410i, 2147483647i | u_input.d, global0.x, 1i), true));
    var var_0 = any(vec4<bool>(any(vec2<bool>(-1i < global0.x, true)), func_2(global0.x, u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -915f))).x, true, true));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-630f + 827f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -997f))))), -8540i);
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(410f)) * var_1.a), -abs(firstLeadingBit(min(var_1.b, -2147483647i))));
    var var_2 = !select(true, ~u_input.e >= ~u_input.e, true) | select(any(vec3<bool>(true, true, true)), false, any(vec4<bool>(true, true, true, true)));
    var_0 = func_2(_wgslsmith_clamp_i32(-1i, _wgslsmith_div_i32(-8505i, ~u_input.a.x) >> ((u_input.e >> (~0u % 32u)) % 32u), global0.x), var_1.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(step(var_1.a, 1000f))))))).x;
    var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~func_4(Struct_3(vec4<f32>(-1588f, 1000f, -1333f, var_1.a)), 1f), -_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(var_1.b, 0i, u_input.a.x)) | ~vec3<i32>(var_1.b, -1i, 2147483647i), global0.yxw), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, u_input.e, 0u ^ u_input.e), ~vec3<u32>(u_input.e, u_input.e, u_input.e) & vec3<u32>(48779u, 56701u, 1u)), ~select(_wgslsmith_div_vec3_u32(vec3<u32>(39004u, u_input.e, 1973u), vec3<u32>(0u, 0u, 0u)), ~vec3<u32>(u_input.e, 17036u, u_input.e), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))), ~firstTrailingBit(~0u) & 33705u, var_1.b);
}

