struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_2, 14>;

var<private> global2: bool = true;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_1(-3561i, u_input.b, countOneBits(select(arg_0, ~vec2<u32>(8601u, u_input.b.x), ~u_input.b.x >= u_input.e.x)));
    var var_1 = true;
    global0 = vec4<i32>(select(~u_input.d, global0.x, any(vec3<bool>(true, true, false))), -var_0.a, ~u_input.d, var_0.a);
    let var_2 = Struct_3(-329f, -41098i, vec4<bool>(any(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), all(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true))), select(all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), true, true), !all(vec2<bool>(false, false))));
    var var_3 = -748f;
    return arg_0.x;
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = vec2<u32>(~u_input.b.x, _wgslsmith_dot_vec3_u32(abs(u_input.e.yzz), vec3<u32>(_wgslsmith_clamp_u32(func_3(u_input.b.yy, Struct_2(394f)), ~u_input.a, u_input.b.x), _wgslsmith_mod_u32(~1u, u_input.e.x), u_input.a)));
    var var_1 = _wgslsmith_mult_i32(select(reverseBits(_wgslsmith_clamp_i32(~u_input.d, 1i, ~1i)), firstLeadingBit(-2147483647i), arg_0), 33959i);
    var var_2 = ~(~u_input.b);
    global0 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(6128i, u_input.d), ~2147483647i, -2147483647i, u_input.d) << (_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.e, u_input.e), u_input.e) % vec4<u32>(32u)), select(~(vec4<i32>(u_input.d, 2147483647i, 1i, -2147483647i) << (vec4<u32>(var_2.x, 37821u, 0u, var_0.x) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.d, 12681i, 1i, -2147483647i)), vec4<i32>(-2147483647i, global0.x, u_input.d, global0.x)), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), !vec4<bool>(true, arg_0, arg_0, false), true)));
    let var_3 = select(select(select(vec4<bool>(true, true, true, arg_0), !select(vec4<bool>(true, arg_0, true, false), vec4<bool>(true, arg_0, arg_0, arg_0), arg_0), true), !select(select(vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(arg_0, arg_0, false, arg_0), false), !vec4<bool>(arg_0, arg_0, arg_0, true), true), select(true, !any(vec3<bool>(false, true, arg_0)), true)), !(!vec4<bool>(arg_0 || arg_0, false, true, all(vec4<bool>(arg_0, false, arg_0, arg_0)))), vec4<bool>(arg_0, arg_0 || select(any(vec2<bool>(false, true)), arg_0, true), arg_0, true));
    return !any(vec3<bool>(var_3.x, !var_3.x, all(select(var_3.yww, vec3<bool>(var_3.x, arg_0, false), var_3.wzw))));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool) -> vec4<i32> {
    global2 = all(select(select(select(select(vec2<bool>(false, false), vec2<bool>(arg_1, arg_1), true), vec2<bool>(arg_1, true), arg_1), select(vec2<bool>(false, false), vec2<bool>(arg_1, arg_1), false), true == all(vec3<bool>(false, arg_1, arg_1))), vec2<bool>(false, !any(vec2<bool>(true, false))), arg_1));
    var var_0 = ~countOneBits(_wgslsmith_mult_vec4_i32(-vec4<i32>(global0.x, global0.x, global0.x, u_input.d), _wgslsmith_div_vec4_i32(vec4<i32>(-27264i, -2147483647i, u_input.d, global0.x), vec4<i32>(u_input.d, 1i, 43981i, 0i)))) ^ (countOneBits(vec4<i32>(0i, 1i, firstLeadingBit(73272i), global0.x)) ^ vec4<i32>(abs(max(-1i, u_input.d)), 1i, 1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0.x, global0.x, -38515i), vec4<i32>(1i, u_input.d, u_input.d, 7787i))));
    var var_1 = vec4<i32>(17918i, 0i, ~(_wgslsmith_sub_i32(max(12003i, global0.x), max(2147483647i, var_0.x)) & 0i), u_input.d);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(586f))))), i32(-1i) * -11918i, select(select(select(select(vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(false, false, false, arg_1)), vec4<bool>(arg_1, true, arg_1, false), select(vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(false, true, arg_1, false), vec4<bool>(false, arg_1, arg_1, true))), select(!vec4<bool>(arg_1, true, arg_1, false), vec4<bool>(arg_1, true, arg_1, false), true), arg_1), !vec4<bool>(false, true, all(vec2<bool>(true, arg_1)), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(294f)))) == _wgslsmith_f_op_f32(select(-1498f, _wgslsmith_f_op_f32(f32(-1f) * -605f), false))));
    var_1 = -((vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(23792i, 2147483647i, 2147483647i, -4411i))) | vec4<i32>(-32914i, -1i, _wgslsmith_mult_i32(1i, var_2.b), -29465i));
    return _wgslsmith_add_vec4_i32((_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, 33898i, -2147483647i, global0.x), select(vec4<i32>(-1i, -2147483647i, var_1.x, var_2.b), vec4<i32>(-2147483647i, global0.x, 2147483647i, -1i), var_2.c)) ^ _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.d, u_input.d, 1i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(20473i, 0i, global0.x, 1i), vec4<i32>(17833i, -33750i, global0.x, var_1.x), vec4<i32>(-1i, var_1.x, 35792i, -1i)))) >> (u_input.e % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, global0.x, 14405i), 10017i, -u_input.d), firstLeadingBit(vec3<i32>(-2147483647i, var_0.x, global0.x))), _wgslsmith_div_i32(u_input.d, _wgslsmith_div_i32(var_1.x, 32790i) << (1u % 32u)), 33631i, 23098i));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = 0i;
    var var_1 = arg_0.c.x;
    global0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-589f, -863f)))))), any(vec3<bool>(select(all(arg_0.c.wzx), true, true), any(arg_0.c) | all(arg_0.c.yy), !func_2(false))));
    global1 = array<Struct_2, 14>();
    var var_2 = firstTrailingBit(arg_1.b.xy);
    return vec4<bool>(true, false, arg_0.c.x, func_2(arg_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1495f))) + 394f))), u_input.d, vec4<bool>(false, true, true, all(vec2<bool>(true, true))));
    global1 = array<Struct_2, 14>();
    var var_1 = select(vec4<bool>(true & any(!var_0.c.zzz), false, true, !(!all(var_0.c.zyw))), vec4<bool>(any(func_1(Struct_3(var_0.a, var_0.b, var_0.c), Struct_1(global0.x, u_input.e.xxx, u_input.c.xx))), false, !any(var_0.c), select(true, !(global0.x == u_input.d), !(!var_0.c.x))), select(vec4<bool>(var_0.c.x, !var_0.c.x, (u_input.e.x >> (u_input.a % 32u)) > min(1u, u_input.e.x), var_0.c.x), !var_0.c, var_0.c));
    var var_2 = abs(~u_input.e.x);
    var_1 = vec4<bool>(false, var_0.c.x, select(-2147483647i, 1i, true) <= global0.x, true);
    var var_3 = var_1.wwz;
    let var_4 = firstTrailingBit(_wgslsmith_dot_vec4_u32(~max(~vec4<u32>(29115u, u_input.b.x, u_input.c.x, u_input.b.x), vec4<u32>(u_input.e.x, u_input.b.x, u_input.a, 0u)), (vec4<u32>(49726u, u_input.b.x, u_input.a, 1u) >> (select(u_input.e, vec4<u32>(1u, u_input.b.x, 1u, 4294967295u), vec4<bool>(true, var_3.x, var_1.x, false)) % vec4<u32>(32u))) ^ vec4<u32>(4294967295u, u_input.a << (u_input.a % 32u), _wgslsmith_clamp_u32(1u, u_input.b.x, 33611u), 17068u)));
    var_2 = _wgslsmith_dot_vec2_u32(u_input.e.yz, u_input.b.xx);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(global0.xyy), _wgslsmith_mod_vec3_u32(u_input.c, select(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, var_4, var_4) ^ vec3<u32>(var_4, 0u, 22026u), min(u_input.c, vec3<u32>(u_input.b.x, u_input.e.x, 4294967295u))), _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(var_4, 30771u, u_input.c.x)), vec3<u32>(0u, u_input.a, 9741u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.b.x, 1u), u_input.c, u_input.c)), any(select(vec4<bool>(true, var_0.c.x, var_0.c.x, false), vec4<bool>(false, false, false, var_3.x), var_0.c.x)))), reverseBits(_wgslsmith_mult_i32(-var_0.b | _wgslsmith_sub_i32(0i, -29346i), -(~0i))));
}

