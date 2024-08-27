struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, false, true, true));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-807f)))))), _wgslsmith_f_op_f32(-1f));
    let var_1 = Struct_1(select(false, true, true), ~arg_0.xy, global0.x, _wgslsmith_f_op_f32(-var_0.x), select(vec2<bool>(false, true), select(vec2<bool>(true, any(vec2<bool>(true, true))), vec2<bool>(true, true), true), true));
    var var_2 = 45027i;
    let var_3 = ~global0.zx;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, 1112f, var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_1.d, 2028f)))))));
    return var_1.e.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    global0 = vec3<i32>(arg_0.c, _wgslsmith_mod_i32(0i, _wgslsmith_clamp_i32(~(~arg_0.c), -1i, _wgslsmith_div_i32(19470i, ~0i))), 0i & (u_input.e ^ _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, 0i) | vec3<i32>(arg_0.c, u_input.a, -2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, -20483i, 0i), vec3<i32>(-1i, arg_0.c, -53336i)))));
    var var_0 = reverseBits(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global0.xz, countOneBits(global0.yx)), ~_wgslsmith_add_i32(-1i, arg_0.c)) | _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(44000i, -12804i, global0.x)), vec3<i32>(min(u_input.a, arg_0.c), 1i, 0i)));
    var var_1 = arg_0;
    var var_2 = u_input.c;
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1167f, _wgslsmith_f_op_f32(1755f + -678f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d, var_1.d) + vec2<f32>(-1513f, arg_0.d))) + vec2<f32>(_wgslsmith_f_op_f32(sign(-764f)), -656f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1703f)))));
    return Struct_1(arg_1.x, (vec2<u32>(var_1.b.x, 0u) >> (_wgslsmith_clamp_vec2_u32(var_1.b, reverseBits(vec2<u32>(var_1.b.x, 59555u)), ~arg_0.b) % vec2<u32>(32u))) | ~(_wgslsmith_mod_vec2_u32(var_1.b, vec2<u32>(1u, 9648u)) ^ (vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(var_1.b.x, var_1.b.x) % vec2<u32>(32u)))), (1i >> (u_input.b % 32u)) | -_wgslsmith_sub_i32(~0i, max(u_input.e, 691i)), 733f, vec2<bool>(!func_3(select(vec3<u32>(4294967295u, var_1.b.x, var_1.b.x), vec3<u32>(arg_0.b.x, var_1.b.x, var_1.b.x), arg_0.e.x)), arg_0.e.x));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: u32) -> vec3<i32> {
    global0 = vec3<i32>(-876i, -_wgslsmith_div_i32(arg_1.c, -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c, u_input.e, arg_1.c, arg_1.c), vec4<i32>(-2147483647i, global0.x, 56854i, u_input.a))), ~_wgslsmith_mod_i32(_wgslsmith_add_i32(global0.x, u_input.a), global0.x) & countOneBits(max(arg_1.c, arg_1.c)));
    global0 = ~((vec3<i32>(21822i << (arg_0 % 32u), -28642i, arg_1.c) & select(-vec3<i32>(-1i, 17023i, u_input.e), -vec3<i32>(global0.x, u_input.a, global0.x), false)) & _wgslsmith_div_vec3_i32(~countOneBits(vec3<i32>(arg_1.c, -21536i, arg_1.c)), vec3<i32>(2147483647i, arg_1.c, _wgslsmith_div_i32(global0.x, u_input.e))));
    let var_0 = arg_1;
    var var_1 = func_2(var_0, !select(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.x, u_input.c | arg_2.x), 1u)], !global1[_wgslsmith_index_u32(u_input.c ^ 0u, 1u)], all(vec3<bool>(true, true, true))));
    var var_2 = func_2(var_0, vec4<bool>(var_0.e.x && var_0.e.x, true && var_0.e.x, any(vec4<bool>(var_0.d <= var_0.d, func_2(Struct_1(var_1.e.x, vec2<u32>(35636u, 4294967295u), arg_1.c, 344f, var_1.e), vec4<bool>(var_0.e.x, var_1.a, var_1.e.x, false)).e.x, 4294967295u < arg_3, var_1.a)), _wgslsmith_f_op_f32(select(arg_1.d, var_0.d, func_2(arg_1, global1[_wgslsmith_index_u32(arg_2.x, 1u)]).a)) != var_1.d));
    return abs(countOneBits(vec3<i32>(_wgslsmith_mult_i32(i32(-1i) * -1i, arg_1.c ^ -1i), 7520i, global0.x | 1580i)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: bool) -> vec2<bool> {
    global0 = ~max(arg_1.xzx, func_4(u_input.b, func_2(Struct_1(false, vec2<u32>(4294967295u, arg_0.b.x), global0.x, arg_0.d, vec2<bool>(false, false)), global1[_wgslsmith_index_u32(arg_0.b.x, 1u)]), ~abs(vec3<u32>(arg_0.b.x, 4294967295u, arg_0.b.x)), ~arg_0.b.x));
    let var_0 = vec3<bool>(any(select(vec2<bool>(any(vec2<bool>(arg_0.a, arg_3)), arg_3 == true), !arg_0.e, select(vec2<bool>(arg_3, arg_0.a), !vec2<bool>(false, arg_0.e.x), arg_0.e))), false, true);
    global0 = arg_1.zyw;
    let var_1 = arg_0.b.x;
    var var_2 = arg_0;
    return !vec2<bool>(true, arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 1>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-778f * -1048f))) == _wgslsmith_f_op_f32(max(-1358f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-519f, 2242f, false)), -423f, true)))), ~(~vec2<u32>(u_input.c, u_input.b)) ^ ~(~vec2<u32>(4294967295u, 0u) & vec2<u32>(4294967295u, u_input.b)), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -196f), select(vec2<bool>(true, all(vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), any(func_1(Struct_1(true, vec2<u32>(u_input.d, u_input.d), -1i, -1222f, vec2<bool>(false, false)), vec4<i32>(7680i, global0.x, u_input.a, global0.x), vec3<f32>(681f, -1607f, -1180f), false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-136f)), -656f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(214f * 1468f))));
    global0 = vec3<i32>(reverseBits(max(u_input.a, -1i)), abs(u_input.e), -1i);
    var_0 = Struct_1(true, _wgslsmith_add_vec2_u32(~var_0.b, ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 53996u, var_0.b.x), vec3<u32>(var_0.b.x, 22500u, var_0.b.x)), 1u)), -42607i | -(_wgslsmith_add_i32(u_input.e, -39461i) & global0.x), var_0.d, select(!select(func_1(Struct_1(var_0.a, var_0.b, -1281i, var_0.d, var_0.e), vec4<i32>(global0.x, global0.x, 0i, u_input.e), vec3<f32>(453f, 232f, var_0.d), true), select(vec2<bool>(true, true), vec2<bool>(var_0.e.x, false), true), true), vec2<bool>(any(vec3<bool>(var_0.e.x, true, var_0.a)) && var_0.a, var_0.a), any(select(!var_0.e, var_0.e, true || var_0.a))));
    global0 = _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -1i, func_2(func_2(Struct_1(var_0.a, var_0.b, 0i, 389f, vec2<bool>(false, true)), vec4<bool>(false, true, var_0.a, false)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, var_0.b.x, 1u), vec4<u32>(8788u, 0u, 3861u, 16345u)), 1u)]).c), ~abs(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_0.c, 24933i), vec3<i32>(u_input.e, var_0.c, -67819i)))) >> (~(~(~vec3<u32>(var_0.b.x, u_input.d, 3498u)) & max(min(vec3<u32>(50847u, 39403u, 1u), vec3<u32>(4294967295u, var_0.b.x, 40130u)), vec3<u32>(24709u, u_input.c, u_input.c) << (vec3<u32>(u_input.c, 0u, 1u) % vec3<u32>(32u)))) % vec3<u32>(32u));
    global0 = vec3<i32>(-_wgslsmith_mod_i32(-1i, 2147483647i) >> (~(~_wgslsmith_sub_u32(0u, var_0.b.x)) % 32u), global0.x, _wgslsmith_mult_i32(min(global0.x, i32(-1i) * -37549i), -global0.x) ^ ~(min(var_0.c, global0.x) << (70620u % 32u)));
    global1 = array<vec4<bool>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(128f + 947f)))), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c, 0u, var_0.b.x, 4294967295u) >> (vec4<u32>(21939u, 7372u, _wgslsmith_sub_u32(95857u, u_input.d), 1u | var_0.b.x) % vec4<u32>(32u)), select(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, u_input.b, var_0.b.x, var_0.b.x), vec4<u32>(var_0.b.x, 51110u, 9065u, 0u)), firstTrailingBit(vec4<u32>(48706u, var_0.b.x, 4294967295u, 37485u))), max(~vec4<u32>(6662u, var_0.b.x, 70579u, 66177u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.c, var_0.b.x, u_input.c), vec4<u32>(1u, 0u, u_input.c, u_input.c))), true)), abs(vec4<u32>(19308u, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.d, u_input.b), var_0.b.x << (0u % 32u)), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(0u, var_0.b.x)), vec2<u32>(var_0.b.x, var_0.b.x)), 0u)));
}

