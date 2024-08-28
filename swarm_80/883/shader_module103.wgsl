struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, -189f))) - _wgslsmith_div_f32(-327f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-986f * 1556f) - _wgslsmith_f_op_f32(f32(-1f) * -2059f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-673f, 871f), vec2<f32>(684f, 818f))), vec2<f32>(-1000f, 1392f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1869f, -1179f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -919f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-375f)), _wgslsmith_f_op_f32(721f * -764f)))))));
    var_0 = 1f;
    var var_2 = -countOneBits(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(arg_2.a, 14u)], 25712i, 2147483647i, global0[_wgslsmith_index_u32(35511u, 14u)]) << (vec4<u32>(arg_1.a, arg_1.a, 4294967295u, 91232u) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(abs(vec4<i32>(global0[_wgslsmith_index_u32(arg_1.a, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)], u_input.b.x, 21210i)), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(u_input.c, 14u)], -22842i, 0i)), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(arg_1.b.x, 14u)], 1i, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], u_input.b.x))));
    let var_3 = ~(~countOneBits(~(~global0[_wgslsmith_index_u32(0u, 14u)])));
    return vec4<u32>(5807u, arg_1.b.x, firstTrailingBit(~(~_wgslsmith_clamp_u32(arg_2.b.x, u_input.c, 4294967295u))), arg_2.a);
}

fn func_4(arg_0: Struct_1) -> bool {
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    let var_0 = vec3<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))))), true);
    let var_1 = abs(global0[_wgslsmith_index_u32(~min(18577u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 17766u), vec2<u32>(u_input.a.x, 758u))), 14u)]);
    return true;
}

fn func_2() -> f32 {
    global0 = array<i32, 14>();
    let var_0 = -1418f;
    global0 = array<i32, 14>();
    let var_1 = _wgslsmith_mult_i32(0i, -(~(u_input.b.x ^ -3149i)) | global0[_wgslsmith_index_u32(~u_input.c, 14u)]);
    var var_2 = Struct_2(select(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), !vec2<bool>(all(vec4<bool>(true, false, true, true)), true), select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), false)), vec2<bool>(true, true))), func_4(Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.c, u_input.a.x), vec3<u32>(u_input.c, u_input.a.x, 27217u)), u_input.a.x), func_3(vec4<bool>(false, true, false, true), Struct_1(1u, vec4<u32>(1u, 1u, 14867u, u_input.a.x)), Struct_1(82230u, vec4<u32>(u_input.a.x, u_input.c, u_input.c, 15434u))))), vec3<u32>(34919u, ~u_input.a.x, func_3(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), Struct_1(u_input.a.x, vec4<u32>(16700u, 37807u, u_input.c, u_input.c)), Struct_1(~u_input.a.x, vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.c))).x));
    return var_0;
}

fn func_1() -> Struct_2 {
    let var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, _wgslsmith_add_u32(_wgslsmith_mult_u32(37469u, u_input.a.x), ~0u), abs(max(42811u, u_input.a.x)), ~1u), firstLeadingBit(~(vec4<u32>(u_input.c, u_input.c, u_input.a.x, u_input.a.x) & vec4<u32>(39923u, 17598u, 0u, 4238u)))), ~_wgslsmith_div_u32(_wgslsmith_sub_u32(firstTrailingBit(47514u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.a.x, 31782u), u_input.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(17036u, u_input.c, 0u, u_input.a.x), vec4<u32>(1u, u_input.a.x, 114577u, 11282u)) >> (19302u % 32u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -635f));
    global0 = array<i32, 14>();
    var var_2 = _wgslsmith_div_f32(234f, _wgslsmith_f_op_f32(func_2()));
    let var_3 = ~(_wgslsmith_add_u32(~u_input.c, abs(4294967295u) >> (30u % 32u)) & ~u_input.a.x);
    return Struct_2(vec2<bool>(false, true), any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true))) || false, countOneBits(vec3<u32>(_wgslsmith_mult_u32(var_3, abs(u_input.a.x)), ~u_input.a.x, var_3)));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    let var_0 = ~func_3(vec4<bool>(!arg_3, any(vec3<bool>(arg_2.a.x, true, arg_3)), false && !arg_2.b, true), Struct_1(1u, ~(~vec4<u32>(arg_1, arg_1, 73853u, 78826u))), Struct_1(4294967295u & (4294967295u >> (arg_2.c.x % 32u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 49022u, u_input.a.x, u_input.a.x), vec4<u32>(arg_2.c.x, 0u, 4294967295u, u_input.a.x) >> (vec4<u32>(arg_2.c.x, arg_1, 1u, u_input.c) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, arg_2.c.x, arg_1, u_input.c) | vec4<u32>(arg_1, arg_2.c.x, arg_2.c.x, arg_2.c.x)))).x;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -709f), _wgslsmith_f_op_f32(select(829f, -112f, arg_2.b)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-938f, 339f)))));
    var var_2 = Struct_2(select(select(vec2<bool>(var_1.x <= var_1.x, arg_2.a.x), arg_2.a, func_1().a), !select(arg_2.a, vec2<bool>(arg_2.a.x, arg_2.b), !arg_2.a), vec2<bool>(true, (arg_0 ^ arg_0) == _wgslsmith_add_i32(1i, -21189i))), true, u_input.a);
    var var_3 = firstTrailingBit(_wgslsmith_mod_vec3_i32(-vec3<i32>(arg_0, 1i, 10105i), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, arg_0, -1i), firstLeadingBit(vec3<i32>(0i, global0[_wgslsmith_index_u32(0u, 14u)], -51i))), vec3<i32>(1i, 1i, 1i) | vec3<i32>(u_input.b.x, -17893i, arg_0))));
    let var_4 = !select(vec4<bool>(var_2.a.x, any(select(vec3<bool>(arg_3, true, false), vec3<bool>(arg_3, false, false), arg_2.b)), true, !all(vec3<bool>(var_2.b, var_2.a.x, true))), !select(!vec4<bool>(true, false, arg_3, arg_2.b), select(vec4<bool>(arg_2.a.x, arg_3, arg_2.b, false), vec4<bool>(var_2.a.x, arg_3, true, arg_3), var_2.a.x), true), -1i < ~global0[_wgslsmith_index_u32(~var_2.c.x, 14u)]);
    return Struct_1(var_2.c.x, abs(~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a.x, arg_2.c.x, arg_1), vec4<u32>(var_0, var_0, var_0, 1u)), ~vec4<u32>(8867u, 102150u, var_2.c.x, var_2.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.b.x, ~u_input.c, func_1(), reverseBits(abs(u_input.c)) <= u_input.c);
    var var_1 = -vec4<i32>(countOneBits(1i), u_input.b.x, i32(-1i) * -global0[_wgslsmith_index_u32(u_input.c, 14u)], u_input.b.x) >> (func_3(select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec2<bool>(true, false)), true, true)), Struct_1(1u, ~func_3(vec4<bool>(false, false, false, true), Struct_1(var_0.a, var_0.b), Struct_1(89060u, var_0.b))), func_5(countOneBits(u_input.b.x) << ((36244u << (var_0.b.x % 32u)) % 32u), 1u, func_1(), func_4(func_5(2147483647i, var_0.b.x, Struct_2(vec2<bool>(true, false), true, var_0.b.wzz), false)))) % vec4<u32>(32u));
    var_0 = Struct_1(98417u, abs(var_0.b));
    var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(var_1.zwx, vec3<i32>(0i, var_1.x, abs(global0[_wgslsmith_index_u32(u_input.c, 14u)]))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-var_1.yzw, firstLeadingBit(vec3<i32>(6059i, -2147483647i, -1i))), u_input.b.x), 52714i, ~var_1.x);
    var_1 = vec4<i32>((i32(-1i) * -global0[_wgslsmith_index_u32(1u, 14u)]) << (u_input.a.x % 32u), -(-1i | var_1.x) << (~_wgslsmith_mult_u32(62563u, var_0.a) % 32u), abs(global0[_wgslsmith_index_u32(64172u, 14u)]), ~(~global0[_wgslsmith_index_u32(4294967295u, 14u)]) >> (16478u % 32u)) | _wgslsmith_add_vec4_i32(countOneBits(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -65137i, 24776i, 36269i), vec4<i32>(var_1.x, var_1.x, u_input.b.x, 0i))), -(~(-vec4<i32>(0i, -6667i, -1i, 17222i))));
    let var_2 = Struct_2(!(!vec2<bool>(any(vec2<bool>(true, true)), true)), true & !any(vec2<bool>(false, true)), max(~func_3(vec4<bool>(false, false, true, true), Struct_1(23721u, var_0.b), func_5(u_input.b.x, var_0.b.x, Struct_2(vec2<bool>(false, false), true, var_0.b.xzx), false)).yxx, vec3<u32>(~u_input.c ^ ~var_0.a, _wgslsmith_dot_vec2_u32(func_5(2147483647i, var_0.a, Struct_2(vec2<bool>(true, false), false, vec3<u32>(var_0.b.x, var_0.b.x, 82653u)), true).b.yx, vec2<u32>(u_input.c, 1u)), _wgslsmith_add_u32(var_0.b.x, ~0u))));
    global0 = array<i32, 14>();
    var_0 = Struct_1(u_input.c, abs(vec4<u32>(abs(var_2.c.x << (var_2.c.x % 32u)), var_2.c.x, select(39320u, 71296u << (var_0.b.x % 32u), false), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(73034u, 4898u, var_0.b.x), vec3<u32>(var_2.c.x, 0u, u_input.a.x)), 3514u))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(_wgslsmith_dot_vec3_i32(var_1.yww >> (vec3<u32>(var_2.c.x, 4294967295u, 54956u) % vec3<u32>(32u)), vec3<i32>(78204i, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(var_0.b.x, 14u)])), -_wgslsmith_dot_vec2_i32(vec2<i32>(-64366i, 2147483647i), vec2<i32>(var_1.x, 11600i)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2()))))), ~u_input.a.xz, var_1.x, -1000f);
}

