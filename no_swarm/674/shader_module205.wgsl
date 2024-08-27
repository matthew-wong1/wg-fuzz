struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    global0 = -vec3<i32>(_wgslsmith_mult_i32(-29808i, countOneBits(_wgslsmith_add_i32(u_input.e, -16914i))), global0.x, _wgslsmith_mod_i32(abs(2147483647i), arg_0.b.c));
    let var_0 = select(!vec3<bool>(!any(vec4<bool>(false, false, true, true)), true, select(select(true, false, false), true, true)), !vec3<bool>(_wgslsmith_f_op_f32(max(189f, arg_0.b.b)) <= 1f, any(vec4<bool>(false, true, false, true)) == (1799u == u_input.d.x), 684f == arg_0.b.a.x), vec3<bool>(true, (u_input.d.x ^ 0u) >= arg_0.a, true));
    var var_1 = arg_0.b;
    let var_2 = Struct_4(arg_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))))));
    var var_3 = min(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, var_2.a.c), vec2<i32>(u_input.b, arg_0.c.x), arg_0.c) << (vec2<u32>(10144u, u_input.d.x) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(63305i, 12227i), vec2<i32>(-2147483647i, arg_0.c.x)) >> (vec2<u32>(arg_0.a, u_input.d.x) % vec2<u32>(32u))), var_1.c, ~(i32(-1i) * -22245i)), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, var_2.a.c, -25694i) | countOneBits(vec3<i32>(22455i, var_1.c, arg_0.c.x)), -(~vec3<i32>(12577i, u_input.e, global0.x))), vec3<i32>(1i, _wgslsmith_sub_i32(-2393i, u_input.a), firstLeadingBit(u_input.b)) | vec3<i32>(-25510i, var_1.c & global0.x, 26027i)));
    return 21345u;
}

fn func_2(arg_0: Struct_1) -> i32 {
    global0 = -abs(-_wgslsmith_mod_vec3_i32(vec3<i32>(28689i, arg_0.c, 29062i), vec3<i32>(u_input.a, u_input.a, -2147483647i)));
    let var_0 = arg_0.b;
    let var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(1u, firstTrailingBit(u_input.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(func_3(Struct_3(u_input.d.x, arg_0, global0.yx)), 1u, 1u), min(min(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<u32>(4294967295u, 34479u, 49733u)), max(vec3<u32>(58986u, u_input.d.x, 29148u), vec3<u32>(0u, u_input.d.x, u_input.d.x)))), ~(~u_input.d.x)), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(50169u, 4294967295u, u_input.d.x, 4294967295u), vec4<u32>(19636u, u_input.d.x, u_input.d.x, u_input.d.x)), firstLeadingBit(47444u), 31627u, ~_wgslsmith_div_u32(u_input.d.x, u_input.d.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -787f), _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(arg_0.a.x * 583f), -1312f) - vec4<f32>(_wgslsmith_f_op_f32(-229f - 1530f), _wgslsmith_f_op_f32(-var_0), var_0, 494f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -429f), 1567f, _wgslsmith_f_op_f32(ceil(-819f))))), all(vec2<bool>(true, true)))));
    global0 = _wgslsmith_mult_vec3_i32(~_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-20370i, 1i, 49980i), -vec3<i32>(arg_0.c, arg_0.c, arg_0.c)), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 15376i, 31897i), ~vec3<i32>(-1i, global0.x, 35515i))), reverseBits(~vec3<i32>(47516i, -25374i, 5737i) >> (vec3<u32>(firstLeadingBit(var_1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 1u, 0u), var_1.wzw), 4039u) % vec3<u32>(32u))));
    return global0.x;
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    global0 = vec3<i32>(i32(-1i) * -53080i, abs(select(0i >> (0u % 32u), 26563i, true)), func_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-396f, -276f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-933f, 1273f))), arg_0.yz)), _wgslsmith_f_op_f32(f32(-1f) * -267f), -1175i)));
    global0 = vec3<i32>(_wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, 1i, -1i) << (vec3<u32>(0u, u_input.d.x, 1u) % vec3<u32>(32u)), ~vec3<i32>(global0.x, global0.x, 1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, 19689i, global0.x), vec3<i32>(global0.x, i32(-1i) * -1i, countOneBits(u_input.a)))), max(abs(0i), _wgslsmith_clamp_i32(u_input.a, u_input.c, -firstTrailingBit(global0.x))), u_input.b);
    global0 = ~vec3<i32>(u_input.e, min((-15135i >> (u_input.d.x % 32u)) & (u_input.c | -1i), u_input.b), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, global0.x, 1i), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.a), vec3<i32>(u_input.e, u_input.c, 734i)), vec3<i32>(2147483647i, -26015i, 2147483647i))));
    var var_0 = max(select(vec4<i32>(1i, global0.x, countOneBits(firstLeadingBit(u_input.c)), u_input.b), firstLeadingBit(-_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.e, 33089i, 9898i), vec4<i32>(global0.x, 1i, u_input.e, -1i))), false), vec4<i32>(~_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.b, 1i), 1i), -12876i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, u_input.b, global0.x), vec3<i32>(global0.x, 1i, -2147483647i)), countOneBits(u_input.e)), 21462i));
    let var_1 = var_0.x;
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true, true, true);
    let var_1 = vec3<u32>(0u, _wgslsmith_div_u32(func_1(vec3<bool>(var_0.x, var_0.x, true)), u_input.d.x), _wgslsmith_sub_u32(abs(~u_input.d.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 49661u, 15242u), vec3<u32>(2868u, 4294967295u, u_input.d.x)))) ^ firstLeadingBit(vec3<u32>(abs(1u), ~u_input.d.x, ~u_input.d.x << ((41212u & u_input.d.x) % 32u)));
    let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(451f, -1745f))))), _wgslsmith_f_op_f32(f32(-1f) * -844f), _wgslsmith_mod_i32(global0.x, global0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(347f - -331f)))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, var_2.b, 1162f, -429f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.a.b, var_2.a.a.x, -901f, var_2.a.b), vec4<f32>(-1463f, 216f, -735f, -482f)))), vec4<bool>(var_0.x, !var_0.x, false, 1u != var_1.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.a.x, var_2.b, var_2.b, -937f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, var_2.a.b, 1385f, -1420f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-157f, -620f, 1000f, var_2.b)) + vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.b), -897f, _wgslsmith_f_op_f32(454f * var_2.b), _wgslsmith_f_op_f32(f32(-1f) * -909f)))));
    var var_4 = Struct_1(var_2.a.a, var_3.x, 1i | abs(_wgslsmith_sub_i32(u_input.c, -2147483647i >> (var_1.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -10915i, u_input.e, u_input.c), vec4<i32>(-2147483647i, 42330i, -8087i, -12185i)), min(vec4<i32>(61579i, 2147483647i, global0.x, var_4.c), vec4<i32>(var_4.c, global0.x, var_4.c, -2147483647i))) | firstLeadingBit(select(firstTrailingBit(vec4<i32>(-2147483647i, 27692i, 29478i, global0.x)), vec4<i32>(u_input.e, u_input.e, 2147483647i, 39763i), !vec4<bool>(false, false, true, var_0.x))), _wgslsmith_f_op_vec2_f32(var_2.a.a + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.x, var_4.b)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-338f, var_2.b), _wgslsmith_f_op_vec2_f32(var_4.a + var_4.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_4.a, var_4.a)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(var_3.zyy))))) - var_3.ywy), vec4<i32>(-13577i << (_wgslsmith_div_u32(~0u, _wgslsmith_dot_vec2_u32(var_1.xz, u_input.d)) % 32u), -(i32(-1i) * -1i), -1i, _wgslsmith_add_i32(reverseBits(u_input.b), -(~global0.x))));
}

