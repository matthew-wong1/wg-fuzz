struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: u32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(0u, 56000u, 91496u, 4294967295u, 16411u, 1u, 31574u, 72740u, 21031u, 6772u, 4294967295u, 1u, 4294967295u, 0u, 57004u, 1290u, 4294967295u, 1u, 18633u, 82776u, 52377u, 1u, 4294967295u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    let var_0 = Struct_2(vec4<u32>(14359u, u_input.b.x << (u_input.b.x % 32u), 16310u, u_input.c) ^ countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.c), _wgslsmith_mult_vec4_u32(vec4<u32>(64045u, u_input.d, global0[_wgslsmith_index_u32(38418u, 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)], 23u)]), vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 23u)], 1u, 3076u, 1u)))), firstTrailingBit(u_input.a), 850f);
    let var_1 = Struct_4(vec3<bool>(false, select(true, select(true, all(vec2<bool>(true, false)), true), !all(vec4<bool>(false, false, false, true))), true));
    global0 = array<u32, 23>();
    let var_2 = ~(-select(vec2<i32>(_wgslsmith_mod_i32(2147483647i, -22030i), ~1i), _wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(var_0.b, -22473i)), vec2<i32>(var_0.b, 1i)), vec2<bool>(var_1.a.x, true)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1186f, -441f, _wgslsmith_f_op_f32(round(1230f)))));
    return false;
}

fn func_4(arg_0: f32, arg_1: bool) -> f32 {
    var var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = ~(~(-4950i & u_input.a)) << (_wgslsmith_div_u32(~(~u_input.d), ~1u) % 32u);
    var var_2 = select(select(vec4<bool>(arg_1, !arg_1, true, arg_1), !(!select(vec4<bool>(true, false, arg_1, true), vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(arg_1, false, true, arg_1))), vec4<bool>(true, true, arg_1, true & any(vec2<bool>(true, true)))), select(vec4<bool>(!any(vec4<bool>(true, arg_1, arg_1, false)), true, !(0u > global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(68023u, 23u)], 23u)], 23u)]), true), vec4<bool>(arg_1, !arg_1, arg_1, 0i >= -u_input.e), !select(vec4<bool>(false, arg_1, true, false), vec4<bool>(arg_1, true, false, true), !vec4<bool>(arg_1, arg_1, arg_1, false))), all(vec4<bool>(any(select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(false, false, arg_1), true)), false, true, arg_1)));
    var_2 = !select(!(!select(vec4<bool>(var_2.x, true, true, false), vec4<bool>(true, var_2.x, var_2.x, var_2.x), false)), select(vec4<bool>(false, func_3(), arg_1, true | var_2.x), select(select(vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(false, true, true, var_2.x), vec4<bool>(var_2.x, true, false, var_2.x)), !vec4<bool>(arg_1, true, true, false), !vec4<bool>(true, arg_1, true, false)), vec4<bool>(var_2.x, true || arg_1, true, true)), select(!(!vec4<bool>(arg_1, var_2.x, false, true)), !select(vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(false, var_2.x, arg_1, true), vec4<bool>(false, false, arg_1, true)), vec4<bool>(select(true, false, arg_1), false, false, !var_2.x)));
    return _wgslsmith_f_op_f32(exp2(arg_0));
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-arg_0.a.x), func_3())) - 689f), arg_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(145f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -646f), false)), !arg_0.e)) * _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-609f + arg_0.a.x), (71424u << (u_input.d % 32u)) >= ~arg_0.d.x))), arg_0.c.x);
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1248f, arg_0.a.x, var_0.x, var_0.x)))))))));
    return vec2<i32>(u_input.e, -9427i);
}

fn func_5(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<i32>) -> vec4<f32> {
    let var_0 = Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(~38867u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22988u, 23u)], 23u)], _wgslsmith_clamp_u32(619u, global0[_wgslsmith_index_u32(2489u, 23u)], u_input.b.x), u_input.b.x), ~countOneBits(vec4<u32>(33241u, 48341u, 8590u, 0u))) ^ _wgslsmith_mult_vec4_u32(firstTrailingBit(~vec4<u32>(65647u, global0[_wgslsmith_index_u32(2642u, 23u)], 1u, 4294967295u)), ~(~vec4<u32>(u_input.c, u_input.b.x, 0u, 33180u))), -2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))) + 1f));
    let var_1 = -1634f;
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(reverseBits(-arg_2), ~vec2<i32>(-30154i, arg_1)) & var_0.b, 1i);
    global0 = array<u32, 23>();
    var var_3 = 2147483647i;
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 585f, var_0.c, var_0.c), vec4<f32>(1000f, 1000f, arg_0.x, var_0.c)))) + vec4<f32>(_wgslsmith_f_op_f32(-var_1), -362f, var_0.c, _wgslsmith_f_op_f32(abs(937f)))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: i32) -> Struct_2 {
    var var_0 = vec4<bool>(any(vec4<bool>(false, (0u ^ arg_0.b) == arg_0.b, any(select(arg_2, vec2<bool>(arg_2.x, true), vec2<bool>(arg_2.x, false))), all(vec2<bool>(true, true)))), !(!(!arg_0.e == any(vec4<bool>(false, arg_2.x, false, arg_0.e)))), arg_0.e, false);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, 259f) * arg_0.c.xy) * vec2<f32>(-491f, -588f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1213f, arg_1.x))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, -1000f, var_1.x), vec3<f32>(arg_1.x, -664f, var_1.x)), arg_3 & 28039i, func_2(Struct_1(arg_1.xy, 0u, vec3<f32>(var_1.x, arg_1.x, 166f), u_input.b, var_0.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a.x, arg_1.x, arg_1.x, var_1.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, 579f, -611f, arg_0.c.x) * vec4<f32>(-262f, arg_0.c.x, arg_1.x, -1044f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 604f, arg_0.c.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(230f, 146f, 516f))), 41831i, abs(vec2<i32>(arg_3, u_input.e))))));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.c.x))) + _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-var_2.x))))), -623f, 2315f, _wgslsmith_f_op_f32(-229f - _wgslsmith_f_op_f32(exp2(var_1.x))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, 1859f, -1437f, -1696f), vec4<f32>(477f, -750f, -788f, arg_1.x), arg_0.e)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, 1508f, -332f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, var_2.x, arg_0.c.x, var_2.x) - vec4<f32>(726f, 785f, var_2.x, -1033f)))))) - vec4<f32>(-252f, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - var_2.x)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.a.x, arg_1.x), _wgslsmith_f_op_f32(func_4(744f, arg_2.x)), true)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, arg_1.x, arg_1.x, var_2.x) - vec4<f32>(586f, var_1.x, 1157f, var_1.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, arg_1.x, 1155f, -428f))) + vec4<f32>(var_1.x, arg_0.a.x, var_2.x, 1168f)) + vec4<f32>(arg_1.x, -1682f, -101f, arg_0.c.x)))));
    return Struct_2(_wgslsmith_mult_vec4_u32(select(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53698u, 23u)], 23u)], global0[_wgslsmith_index_u32(54144u, 23u)], arg_0.b), vec4<u32>(u_input.c, 32640u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 23u)], 23u)], 23u)], u_input.b.x), false) >> (max(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.b, 1u, global0[_wgslsmith_index_u32(u_input.c, 23u)], 15928u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], arg_0.b, 4294967295u, u_input.c)), firstLeadingBit(vec4<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(7338u, 23u)], arg_0.b))) % vec4<u32>(32u)), (vec4<u32>(arg_0.d.x, global0[_wgslsmith_index_u32(1u, 23u)], 57116u, u_input.c) & (vec4<u32>(50200u, u_input.b.x, 32493u, u_input.c) << (vec4<u32>(45505u, global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(11124u, 23u)], u_input.b.x) % vec4<u32>(32u)))) << (select(select(vec4<u32>(u_input.b.x, 68143u, 0u, 1u), vec4<u32>(8927u, arg_0.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.d.x, 23u)], 23u)], 0u), vec4<bool>(var_0.x, false, var_0.x, arg_2.x)), vec4<u32>(arg_0.b, 4294967295u, 0u, global0[_wgslsmith_index_u32(10087u, 23u)]), !vec4<bool>(arg_2.x, arg_0.e, true, false)) % vec4<u32>(32u))), -reverseBits(_wgslsmith_add_i32(arg_3, ~(-1i))), -1496f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = func_1(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1779f, -247f), vec2<f32>(211f, 829f), true)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1826f, 1609f)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1856f, 739f))))), 1u, vec3<f32>(1f, 1f, 1f), ~(~u_input.b), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(199f, -555f, 627f)), vec3<f32>(539f, -1000f, 324f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(294f, 1743f, 1372f)) * vec3<f32>(1414f, 112f, -377f)))), vec2<bool>(select(all(vec3<bool>(true, true, true)), true, true), true), -u_input.e);
    let var_2 = all(vec4<bool>(true || (u_input.a <= -51645i), true, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true))), func_3()));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1343f, var_1.c)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.c, 385f))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1480f, 649f), vec2<f32>(var_1.c, var_1.c), vec2<bool>(false, var_2))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, 746f) * vec2<f32>(-372f, -1415f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, var_1.c), vec2<f32>(-1383f, 1438f), vec2<bool>(var_2, var_2))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, 521f)), func_3())) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.c, var_1.c))))), ~global0[_wgslsmith_index_u32(~firstLeadingBit(var_1.a.x), 23u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(216f, -440f, var_1.c))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1000f, -727f) * vec3<f32>(var_1.c, var_1.c, var_1.c)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-651f, var_1.c, var_1.c)))))), ~(~u_input.b), any(vec4<bool>(!any(vec3<bool>(var_2, false, true)), (1000f == var_1.c) | (708f >= var_1.c), any(vec3<bool>(false, true, var_2)), all(!vec2<bool>(var_2, var_2)))));
    let var_4 = ~(~global0[_wgslsmith_index_u32(var_3.b, 23u)]);
    var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(max(var_3.a, _wgslsmith_f_op_vec2_f32(var_3.c.yy + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c.x, 230f))))), 1u, vec3<f32>(_wgslsmith_f_op_f32(var_3.c.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(219f + var_3.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1176f + func_1(Struct_1(var_3.c.zy, 111014u, vec3<f32>(1659f, 337f, -582f), u_input.b, false), var_3.c, vec2<bool>(var_3.e, true), u_input.e).c) - _wgslsmith_f_op_f32(func_4(-466f, var_3.e))), _wgslsmith_f_op_f32(max(var_1.c, var_3.c.x))), _wgslsmith_sub_vec2_u32(~countOneBits(vec2<u32>(u_input.d, 0u) << (vec2<u32>(1707u, 67398u) % vec2<u32>(32u))), var_1.a.zx), false);
    var var_5 = var_1;
    let var_6 = _wgslsmith_sub_i32(var_5.b, -_wgslsmith_div_i32(3632i >> (countOneBits(1u) % 32u), min(_wgslsmith_div_i32(38478i, var_1.b), var_1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(214f, -401f), -554f))), vec2<f32>(_wgslsmith_f_op_f32(round(var_5.c)), -775f))), func_1(Struct_1(var_3.a, 0u, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c.x, var_1.c, var_3.a.x)))), vec2<u32>(~var_3.d.x, var_4), true), var_3.c, vec2<bool>(true, true), -_wgslsmith_mult_i32(abs(1i), var_1.b)).a.zx, var_3.b, abs(reverseBits(select(vec2<i32>(1i, 8658i), vec2<i32>(-36232i, u_input.e), vec2<bool>(false, var_2))) | abs(countOneBits(vec2<i32>(var_5.b, var_1.b)))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_3.c, vec3<f32>(var_3.c.x, 542f, 414f)))), var_1.b, vec2<i32>(-var_1.b, -var_5.b))).x));
}

