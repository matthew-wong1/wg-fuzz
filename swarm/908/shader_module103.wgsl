struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
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

var<private> global0: Struct_1 = Struct_1(0u, vec2<i32>(16235i, 2147483647i), 4294967295u);

var<private> global1: array<bool, 21> = array<bool, 21>(true, false, false, false, false, false, false, true, false, true, true, false, true, false, false, true, true, false, true, false, true);

var<private> global2: Struct_2;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = -32645i;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(495f)), _wgslsmith_f_op_f32(537f * global2.a)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.d * -895f)))))), select(global2.b, !global2.b, global2.b), _wgslsmith_mod_u32(global0.c, _wgslsmith_add_u32(u_input.a.x, ~1u)), global2.a, ~1i);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(max(-1000f, 1484f)), vec3<bool>(true, !any(vec4<bool>(global1[_wgslsmith_index_u32(arg_1, 21u)], true, false, global2.b.x)) | any(vec2<bool>(global2.b.x, false)), global2.b.x), ~(~436u), var_1.d, _wgslsmith_dot_vec3_i32(-(~vec3<i32>(15096i, global2.e, var_0) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, global2.e, 0i), vec3<i32>(-35916i, 1i, -1i))), ~(-vec3<i32>(67940i, global0.b.x, 24464i)) | reverseBits(-vec3<i32>(global0.b.x, 47727i, -4760i))));
    global2 = var_2;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(max(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.a)))))), vec3<bool>(!all(global2.b), !var_2.b.x, global1[_wgslsmith_index_u32(~12342u, 21u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, u_input.b.x, select(83655u, global0.c, false), _wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, global2.c), _wgslsmith_mod_u32(74583u, 4294967295u))), vec4<u32>(82834u, arg_1, 17305u, firstLeadingBit(1u))), 1935f, global0.b.x);
    return var_3.a;
}

fn func_2(arg_0: vec2<f32>) -> vec3<f32> {
    global2 = Struct_2(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(global2.c, u_input.b.x, 28460u, u_input.b.x)), countOneBits(vec4<u32>(u_input.a.x, 29568u, u_input.b.x, 29958u))) ^ min(~u_input.a, ~u_input.a), ~u_input.b.x, Struct_1(max(1577u << (u_input.b.x % 32u), global2.c), global0.b, 14062u))), global2.b, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.b.yy, select(u_input.a.yy, vec2<u32>(56792u, 1u), false)), ~(u_input.a.yz & vec2<u32>(global2.c, 16646u))) | firstTrailingBit(_wgslsmith_sub_u32(u_input.a.x, 38456u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) * 830f), _wgslsmith_dot_vec4_i32(-max(vec4<i32>(global0.b.x, global2.e, -89758i, global0.b.x), vec4<i32>(global0.b.x, -2147483647i, -53684i, 22672i)), abs(vec4<i32>(global2.e, global2.e, -3505i, 28839i))) << (global0.c % 32u));
    global2 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), global2.b, _wgslsmith_mod_u32(~9434u, countOneBits(global2.c)), -721f, 0i);
    var var_0 = Struct_1(global0.a, firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(global2.e << (34585u % 32u), global0.b.x >> (global2.c % 32u)), _wgslsmith_sub_vec2_i32(global0.b, -global0.b))), 2569u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(613f, arg_0.x, global2.d))))))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~vec4<u32>(0u, var_0.a, 18852u, var_0.a) | (u_input.a | vec4<u32>(global2.c, 0u, global2.c, 0u)), global2.c, Struct_1(countOneBits(52384u), vec2<i32>(-33565i, var_0.b.x), ~global0.c)))), select(global2.b, select(vec3<bool>(global1[_wgslsmith_index_u32(~9129u, 21u)], false, true), !vec3<bool>(true, global1[_wgslsmith_index_u32(global2.c, 21u)], global1[_wgslsmith_index_u32(34405u, 21u)]), true), select(!global2.b, !global2.b, select(vec3<bool>(false, global2.b.x, true), global2.b, select(false, true, true)))), 0u, _wgslsmith_f_op_f32(f32(-1f) * -568f), -1i);
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.a), -697f, -334f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, 1000f, 1000f) * vec3<f32>(global2.a, global2.a, var_2.d)) * vec3<f32>(var_2.a, var_2.d, 690f)))), global0.c <= var_0.a))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>) -> f32 {
    global1 = array<bool, 21>();
    global2 = Struct_2(1f, vec3<bool>(arg_0.b.x, true, false), global2.c, _wgslsmith_f_op_f32(trunc(3153f)), _wgslsmith_dot_vec3_i32(~reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, arg_0.e, global2.e), vec3<i32>(global0.b.x, -1i, global0.b.x))), vec3<i32>(~1i, _wgslsmith_add_i32(global0.b.x, 0i), global0.b.x)));
    var var_0 = Struct_1(1u, vec2<i32>(firstLeadingBit(max(arg_0.e, global0.b.x) << (u_input.a.x % 32u)), global0.b.x << (min(_wgslsmith_mult_u32(global2.c, 35205u), arg_0.c << (26487u % 32u)) % 32u)), global2.c);
    var var_1 = Struct_1(var_0.c, vec2<i32>(2147483647i, ~reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.x, global0.b.x, 30981i, -29913i), vec4<i32>(global2.e, -14263i, 0i, var_0.b.x)))), var_0.c);
    var_0 = Struct_1(_wgslsmith_mod_u32(~abs(global0.a), 4294967295u), _wgslsmith_sub_vec2_i32(-(~global0.b), var_0.b << (abs(vec2<u32>(0u, 0u)) % vec2<u32>(32u))), var_0.c);
    return -2118f;
}

fn func_1() -> u32 {
    global1 = array<bool, 21>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_f_op_f32(ceil(-1000f)), vec3<bool>(true, true, false), global2.c, global2.a, -30518i), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2.d, global2.a))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, 270f, global2.a)))))), vec3<bool>(!global2.b.x, global1[_wgslsmith_index_u32(abs(u_input.a.x), 21u)], any(global2.b.yx)), max(~1u, min(abs(u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(25975u, global2.c, 0u), u_input.b) & (36246u << (0u % 32u)))), _wgslsmith_f_op_f32(global2.a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1278f + _wgslsmith_div_f32(global2.a, 745f)), 114f)), 0i ^ global2.e);
    let var_1 = ~(~vec2<u32>(4294967295u, abs(_wgslsmith_add_u32(117585u, var_0.c))));
    var var_2 = Struct_1(var_0.c, vec2<i32>(-1i, countOneBits(_wgslsmith_mult_i32(var_0.e, max(global2.e, 1i)))), firstLeadingBit(_wgslsmith_clamp_u32(~(var_1.x | var_1.x), 4294967295u, min(var_1.x | 4294967295u, var_0.c))));
    let var_3 = ~vec3<u32>(_wgslsmith_mult_u32(global2.c, ~_wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(10409u, var_2.c))), 39741u, select(global0.c, _wgslsmith_div_u32(~var_0.c, _wgslsmith_clamp_u32(var_0.c, var_0.c, var_1.x)), var_0.b.x));
    return 2542u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~_wgslsmith_div_u32(1u, global2.c), vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(global0.b, global0.b), func_1());
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-844f, global2.d, 628f)), vec3<f32>(global2.d, 336f, 1518f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global2.a, global2.a), _wgslsmith_f_op_f32(-874f * global2.d), global2.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(685f, 1000f, 636f), vec3<f32>(-217f, global2.d, global2.a)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(1463f)), var_1.x, _wgslsmith_f_op_f32(global2.d * var_1.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d, -739f, var_1.x) + vec3<f32>(global2.a, global2.a, global2.a)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, 1000f, global2.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d, 1636f, var_1.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(107f, global2.a, 462f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.d, 1034f, 2447f), vec3<f32>(global2.d, -315f, global2.a)))))));
    var var_2 = reverseBits(global0.c);
    var var_3 = Struct_2(-1717f, !select(vec3<bool>(any(vec3<bool>(true, true, false)), false, !global2.b.x), global2.b, select(global2.b, select(global2.b, vec3<bool>(global2.b.x, false, global2.b.x), vec3<bool>(global2.b.x, global2.b.x, global2.b.x)), select(global2.b, global2.b, true))), _wgslsmith_mult_u32(var_0.c, ~78126u), -1722f, var_0.b.x);
    let var_4 = vec4<u32>(abs(countOneBits(_wgslsmith_mult_u32(81864u, var_0.c))), ~global2.c, u_input.a.x, global2.c);
    var_0 = Struct_1(~var_4.x, vec2<i32>(58213i, _wgslsmith_dot_vec2_i32(global0.b, max(vec2<i32>(var_0.b.x, -6061i), min(vec2<i32>(global0.b.x, 11066i), var_0.b)))), 28912u);
    var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.a, _wgslsmith_f_op_f32(sign(116f)), global1[_wgslsmith_index_u32(global2.c, 21u)] | global1[_wgslsmith_index_u32(global0.c, 21u)])) + _wgslsmith_f_op_f32(-var_1.x)) * -797f), select(vec3<bool>(true, any(!vec4<bool>(var_3.b.x, false, false, global1[_wgslsmith_index_u32(global0.c, 21u)])), true), vec3<bool>(global1[_wgslsmith_index_u32(~reverseBits(25517u), 21u)], !(var_3.a == global2.d), true & global2.b.x), var_3.b), 142985u, global2.d, select(15298i, 0i, true));
    var_2 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec4_i32(firstLeadingBit(min(vec4<i32>(-1i, global2.e, -13323i, global0.b.x), vec4<i32>(var_0.b.x, 2147483647i, -5355i, global2.e))), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_3.e, -15157i, global0.b.x, -6393i), vec4<i32>(var_0.b.x, 1i, global0.b.x, 1i)), vec4<i32>(var_3.e, -2147483647i, global0.b.x, var_0.b.x) << (vec4<u32>(global0.c, 4294967295u, var_4.x, var_0.c) % vec4<u32>(32u)))), 4294967295u, var_3.c, ~abs(4294967295u), -(~(-17424i)));
}

