struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
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

var<private> global0: i32;

var<private> global1: array<Struct_2, 20>;

var<private> global2: f32 = -505f;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> bool {
    let var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 20u)];
    global0 = _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(~var_0.b.b.x, -6135i)), min(~(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -66229i), vec2<i32>(var_0.b.b.x, var_0.b.b.x)) ^ var_0.d.yz), -vec2<i32>(~2147483647i, 23654i)));
    return true;
}

fn func_3(arg_0: u32) -> bool {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -851f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1175f))))));
    let var_0 = Struct_2(420f, Struct_1(select(true, !any(vec4<bool>(true, false, false, false)), true), abs(~(-vec3<i32>(u_input.a, 1i, u_input.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-922f, -825f, -609f), vec3<f32>(1959f, -1563f, 887f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(890f, 1235f, 1355f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(793f, -972f, -788f))))), 1u | reverseBits(u_input.b.x), vec3<i32>(-u_input.a ^ u_input.a, -65627i, 0i));
    var var_1 = vec2<bool>(true, true);
    let var_2 = global1[_wgslsmith_index_u32(max(1u, arg_0), 20u)];
    let var_3 = var_0.a;
    return _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(var_2.c, var_0.c, var_0.c) << (vec3<u32>(47439u, arg_0, u_input.b.x) % vec3<u32>(32u))), max(u_input.b, u_input.b)) == 4294967295u;
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = select(vec3<bool>(any(vec2<bool>(any(vec2<bool>(true, false)), func_2())), true, !(arg_0 >= _wgslsmith_f_op_f32(-arg_0))), vec3<bool>(true, func_2(), true), !all(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false))));
    var_0 = !vec3<bool>(true, func_3(5742u), var_0.x);
    let var_1 = min(_wgslsmith_sub_vec2_u32(u_input.b.xy, _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(0u, u_input.b.x)), ~u_input.b.yx), select(u_input.b.yy, firstLeadingBit(u_input.b.yx), vec2<bool>(var_0.x, var_0.x)))), _wgslsmith_sub_vec2_u32(vec2<u32>(79459u, ~u_input.b.x & ~u_input.b.x), _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(0u, u_input.b.x)) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), vec2<u32>(u_input.b.x, 0u), u_input.b.xz)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-703f))), Struct_1(true, _wgslsmith_add_vec3_i32(~(~vec3<i32>(-1i, u_input.a, u_input.a)), abs(vec3<i32>(u_input.a, -30999i, -1i))), vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, -1537f) - _wgslsmith_f_op_f32(trunc(arg_0))))), _wgslsmith_dot_vec3_u32(~u_input.b, vec3<u32>(var_1.x, _wgslsmith_dot_vec3_u32(u_input.b | u_input.b, vec3<u32>(4294967295u, 55601u, u_input.b.x) << (u_input.b % vec3<u32>(32u))), 1u)), abs(firstTrailingBit(~vec3<i32>(2147483647i, 335i, u_input.a))));
    let var_3 = vec2<u32>(4294967295u, ~_wgslsmith_mod_u32(4294967295u & (u_input.b.x >> (var_2.c % 32u)), _wgslsmith_div_u32(7752u, var_1.x) >> (var_2.c % 32u)));
    return global1[_wgslsmith_index_u32(480u, 20u)];
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: i32, arg_3: Struct_2) -> f32 {
    global2 = arg_3.a;
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_3.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a))))));
    var var_1 = select(vec3<bool>(false, !(arg_3.b.b.x >= 3777i), arg_3.b.a), vec3<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(!arg_3.b.a, false, !arg_3.b.a)), arg_3.b.a), true);
    var var_2 = arg_3.b;
    let var_3 = vec4<f32>(var_2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-549f, _wgslsmith_f_op_f32(arg_3.b.c.x - var_0.x))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-598f, var_2.c.x) + _wgslsmith_f_op_f32(f32(-1f) * -386f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-107f)) - var_0.x))), 354f, -1573f);
    return var_0.x;
}

fn func_5(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    var var_0 = func_1(1294f).b;
    let var_1 = func_1(var_0.c.x);
    let var_2 = select(!all(!select(vec3<bool>(true, arg_1.x, false), vec3<bool>(var_1.b.a, arg_2.b.a, var_0.a), var_0.a)), false, false);
    var var_3 = select(vec2<bool>(!(u_input.a == 1i), true), select(arg_1, select(!(!vec2<bool>(true, var_0.a)), arg_1, vec2<bool>(true, var_1.b.a)), vec2<bool>(!(!arg_2.b.a), true)), 1000f == arg_3);
    var_0 = Struct_1(!any(!vec4<bool>(var_1.b.a, false, arg_2.b.a, var_2)), vec3<i32>(-48028i, 0i, 14142i), var_0.c);
    return Struct_1(arg_2.b.a, min(~arg_2.d, _wgslsmith_div_vec3_i32(~(vec3<i32>(arg_2.d.x, u_input.a, arg_2.d.x) << (u_input.b % vec3<u32>(32u))), vec3<i32>(i32(-1i) * -5900i, abs(arg_2.d.x), ~var_1.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b.c.x, 347f, var_0.c.x), _wgslsmith_f_op_vec3_f32(arg_2.b.c - vec3<f32>(var_0.c.x, -309f, arg_2.a)), select(vec3<bool>(false, var_1.b.a, false), vec3<bool>(true, var_2, false), vec3<bool>(true, var_2, true)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.c.x, arg_3, 398f) - vec3<f32>(859f, 335f, arg_3)), _wgslsmith_f_op_vec3_f32(-var_0.c)), !vec3<bool>(true, var_0.a, false)))));
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global1 = array<Struct_2, 20>();
    var var_0 = Struct_2(arg_0.b.c.x, Struct_1(true, arg_2.b, vec3<f32>(_wgslsmith_f_op_f32(max(-558f, 1626f)), _wgslsmith_f_op_f32(arg_2.c.x * 117f), _wgslsmith_f_op_f32(arg_2.c.x - _wgslsmith_f_op_f32(max(144f, arg_1))))), abs(u_input.b.x | max(6644u, 60914u)) | 34486u, arg_2.b);
    let var_1 = Struct_1(!(u_input.a > arg_0.b.b.x), vec3<i32>(-1i) * -func_5(-46865i, !vec2<bool>(arg_3, false), func_1(var_0.a), -294f).b, var_0.b.c);
    global2 = -1477f;
    global2 = arg_2.c.x;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_2(_wgslsmith_f_op_f32(trunc(-1656f)), Struct_1(true, vec3<i32>(~u_input.a, u_input.a, u_input.a), vec3<f32>(_wgslsmith_f_op_f32(sign(1221f)), _wgslsmith_f_op_f32(floor(-773f)), _wgslsmith_f_op_f32(min(621f, -1236f)))), ~_wgslsmith_div_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 43637u, 0u, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x))), ~vec3<i32>(max(2147483647i, u_input.a), _wgslsmith_sub_i32(u_input.a, u_input.a), 15948i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-554f, -887f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(443f * -1181f), _wgslsmith_f_op_f32(min(803f, 1142f))))), func_5(-2147483647i, select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), false), Struct_2(_wgslsmith_f_op_f32(func_4(vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), ~vec3<i32>(25319i, u_input.a, u_input.a), u_input.a >> (55718u % 32u), func_1(-1447f))), Struct_1(true, abs(vec3<i32>(33902i, -2147483647i, 26939i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-441f, -286f, -1747f) * vec3<f32>(-707f, -246f, -148f))), _wgslsmith_mod_u32(u_input.b.x, 21595u), ~countOneBits(vec3<i32>(u_input.a, u_input.a, 0i))), 864f), ~(u_input.a | -33108i) > _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.a, 24916i) ^ vec2<i32>(21621i, u_input.a), select(vec2<i32>(1i, 14893i), vec2<i32>(u_input.a, u_input.a), vec2<bool>(true, false))), vec2<i32>(u_input.a, -u_input.a)));
    var var_1 = Struct_1(false, ~firstLeadingBit(vec3<i32>(func_1(-813f).b.b.x, ~(-1i), select(-37860i, 7459i, var_0.a))), vec3<f32>(_wgslsmith_div_f32(-1460f, _wgslsmith_f_op_f32(func_4(vec4<i32>(u_input.a, u_input.a, var_0.b.x, 20742i) >> (vec4<u32>(1u, 59984u, 0u, 0u) % vec4<u32>(32u)), vec3<i32>(-2147483647i, 1i, -33654i), func_5(var_0.b.x, vec2<bool>(false, var_0.a), Struct_2(628f, Struct_1(var_0.a, var_0.b, vec3<f32>(var_0.c.x, var_0.c.x, -942f)), 4294967295u, var_0.b), var_0.c.x).b.x, func_1(var_0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1603f)) + _wgslsmith_f_op_f32(func_5(var_0.b.x, vec2<bool>(true, false), Struct_2(1877f, Struct_1(var_0.a, var_0.b, vec3<f32>(var_0.c.x, -1557f, var_0.c.x)), 0u, vec3<i32>(-30041i, 21234i, -2147483647i)), var_0.c.x).c.x * func_1(var_0.c.x).b.c.x)), -1759f));
    let var_2 = func_5(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a, var_1.b.x) >> (u_input.b.zy % vec2<u32>(32u))), max(~(~vec2<i32>(var_1.b.x, var_0.b.x)), ~var_1.b.zy)), !select(select(vec2<bool>(true, true), select(vec2<bool>(false, var_1.a), vec2<bool>(var_1.a, false), var_0.a), var_0.a), vec2<bool>(true, true), func_5(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, var_1.b.x, -27032i), vec4<i32>(-23016i, var_1.b.x, var_0.b.x, var_0.b.x)), select(vec2<bool>(true, var_1.a), vec2<bool>(var_1.a, false), vec2<bool>(false, true)), global1[_wgslsmith_index_u32(u_input.b.x, 20u)], 1000f).a), func_1(295f), _wgslsmith_f_op_f32(func_4(vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), var_1.b.xz), abs(u_input.a) & ~22272i, 1i << (_wgslsmith_div_u32(1u, u_input.b.x) % 32u), _wgslsmith_mult_i32(func_6(global1[_wgslsmith_index_u32(4294967295u, 20u)], var_1.c.x, Struct_1(var_1.a, var_0.b, var_1.c), var_0.a).b.x, 1i)), var_1.b, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.b.x, u_input.a, 0i), vec3<i32>(var_1.b.x, var_1.b.x, 20733i)), vec3<i32>(-22553i, var_0.b.x, u_input.a)), vec3<i32>(-var_1.b.x, ~(-26772i), firstTrailingBit(39775i))), global1[_wgslsmith_index_u32(0u, 20u)])));
    var_0 = var_2;
    global0 = func_1(_wgslsmith_f_op_f32(-var_2.c.x)).d.x;
    let var_3 = vec3<u32>(_wgslsmith_add_u32(0u, ~(~u_input.b.x)), u_input.b.x >> (reverseBits(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b.x, 23491u), countOneBits(u_input.b.x))) % 32u), 13773u >> ((4294967295u >> (u_input.b.x % 32u)) % 32u));
    global2 = -984f;
    var_0 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -108f)).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-216f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.c.x, var_1.c.x, var_2.a)) - var_0.c.x), _wgslsmith_f_op_f32(696f * _wgslsmith_f_op_f32(round(1000f))), -1476f) * vec4<f32>(_wgslsmith_f_op_f32(sign(-880f)), var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(623f, var_2.c.x) + _wgslsmith_div_f32(var_2.c.x, var_2.c.x)), 560f)));
}

