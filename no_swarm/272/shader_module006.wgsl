struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31>;

var<private> global1: vec2<u32>;

var<private> global2: i32 = -1i;

var<private> global3: Struct_3 = Struct_3(i32(-2147483648));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    global2 = global3.a;
    let var_0 = vec4<bool>(max(0u, ~38871u) != min(u_input.a, ~u_input.a & (u_input.a << (u_input.a % 32u))), ~(-(global3.a >> (u_input.a % 32u))) >= min(_wgslsmith_mult_i32(global3.a, global3.a) << (~1u % 32u), -2147483647i), !(!(!any(vec2<bool>(false, true)))), false);
    var var_1 = max(~(~(~vec2<u32>(u_input.a, 26242u))), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(41336u & u_input.a, ~23274u), select(~vec2<u32>(u_input.a, 59161u), _wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(global1.x, global1.x)), !vec2<bool>(false, var_0.x)), reverseBits(firstLeadingBit(vec2<u32>(8991u, u_input.a)))), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(_wgslsmith_mult_u32(u_input.a, 35089u), 1u))));
    let var_2 = vec2<u32>(~(var_1.x | 1u) ^ var_1.x, 1u);
    let var_3 = select(~(vec4<i32>(0i, global3.a, global3.a, 2147483647i) & vec4<i32>(0i, -26888i, global3.a, global3.a)) | _wgslsmith_mult_vec4_i32(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(global3.a, -2147483647i, global3.a, -1i), vec4<i32>(-2147483647i, 55263i, 0i, 3214i))), min(~vec4<i32>(50904i, global3.a, global3.a, global3.a), ~vec4<i32>(global3.a, global3.a, global3.a, 44718i))), vec4<i32>(global3.a, global3.a, ~_wgslsmith_mod_i32(~38925i, global3.a & 1i), firstTrailingBit(global3.a)), !var_0.x);
    return !var_0.x;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: i32) -> bool {
    var var_0 = Struct_2(vec4<bool>(func_3(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2031f - -381f) + _wgslsmith_f_op_f32(-318f * -507f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(999f)) * -243f), false, all(vec3<bool>(any(vec2<bool>(false, true)), false, select(false, true, false)))), ~min(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, global1.x, 0u), vec4<u32>(7991u, global1.x, 68881u, 1u)), vec4<u32>(4294967295u, _wgslsmith_clamp_u32(u_input.a, arg_1, 19142u), 4294967295u, ~45044u)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-610f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-135f)))))));
    let var_1 = Struct_2(!select(var_0.a, vec4<bool>(all(var_0.a.xz), any(var_0.a.wwz), var_0.a.x, true), true), select(countOneBits(abs(vec4<u32>(var_0.b.x, 0u, global1.x, 0u))), ~var_0.b ^ ~var_0.b, var_0.c.a >= -1221f) << (~(~var_0.b) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.a - var_0.c.a))));
    var var_2 = vec4<u32>(~6795u, u_input.a, var_1.b.x, (~_wgslsmith_mult_u32(14187u, 90112u) ^ (u_input.a >> (min(var_1.b.x, 1u) % 32u))) ^ 13482u);
    global2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.c.a, _wgslsmith_f_op_f32(f32(-1f) * -925f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(766f, -1622f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1552f, var_1.c.a))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-423f + 614f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.a * 781f) + _wgslsmith_f_op_f32(floor(var_1.c.a))))));
    return (!all(vec2<bool>(var_0.a.x, true)) || (_wgslsmith_f_op_f32(var_1.c.a * _wgslsmith_f_op_f32(-1000f - var_3.x)) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_3.x)))))) & false;
}

fn func_4(arg_0: vec2<i32>, arg_1: bool) -> bool {
    global0 = array<Struct_3, 31>();
    var var_0 = Struct_3(~arg_0.x);
    global2 = global3.a;
    global3 = global0[_wgslsmith_index_u32(1u, 31u)];
    var var_1 = vec2<u32>(firstLeadingBit(67458u), ~u_input.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(415f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - 451f))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-544f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-237f, 657f)), _wgslsmith_f_op_f32(round(-121f)))))));
}

fn func_5(arg_0: i32, arg_1: vec4<u32>, arg_2: bool) -> bool {
    return any(vec3<bool>(false, arg_2, arg_2));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-271f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(387f)), -737f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-425f, 1470f)))));
    let var_1 = vec2<bool>(func_5(_wgslsmith_mult_i32(-(i32(-1i) * -49885i), global3.a), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, firstLeadingBit(global1.x), global1.x, 27198u), ~countOneBits(vec4<u32>(1u, 4294967295u, global1.x, 5486u))), func_4(vec2<i32>(_wgslsmith_add_i32(-25206i, 1783i), 13606i >> (0u % 32u)), !func_2(global3.a, 63489u, -24185i, -2147483647i))), false);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_0), -1000f, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) - 598f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(163f, var_0, 560f, -486f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-599f, var_0, var_0, var_0)), false)))), (var_1.x && true) & true)));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -384f, -1474f, var_2.x))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(865f, var_2.x, 145f, -902f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, var_2.x, var_0, var_0))))))) * vec4<f32>(var_2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0, var_0))), -508f)), _wgslsmith_f_op_f32(-1f), var_0));
    var var_3 = ~max(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 0u, u_input.a, 1u), ~vec4<u32>(global1.x, global1.x, u_input.a, global1.x)), u_input.a << ((u_input.a << (u_input.a % 32u)) % 32u), global1.x, abs(global1.x)), select(vec4<u32>(global1.x, global1.x, global1.x, 22518u) | vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(max(u_input.a, 4159u), global1.x, ~22240u, global1.x << (1u % 32u)), var_1.x));
    return ~24907u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1495f - -475f))))));
    global2 = _wgslsmith_clamp_i32(max((global3.a | global3.a) ^ _wgslsmith_sub_i32(global3.a, _wgslsmith_mod_i32(-1i, -13630i)), -(global3.a ^ abs(global3.a))), -16270i, -((global3.a | (global3.a >> (55233u % 32u))) << (8286u % 32u)));
    var var_1 = ~vec2<u32>(_wgslsmith_add_u32(func_1(), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.x, 1u, global1.x), vec4<u32>(18417u, 1u, 4294967295u, 86392u)), func_1())), u_input.a);
    global2 = global3.a;
    var var_2 = i32(-1i) * -global3.a;
    var var_3 = select(select(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), select(vec3<bool>(all(vec4<bool>(true, false, false, false)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true))), true), select(select(select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), true), vec3<bool>(true, true, true), !func_2(1i, u_input.a, -7817i, global3.a)), select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), 47124u <= global1.x), vec3<bool>(true, false, true), true), vec3<bool>(true, true | func_2(-17821i, 33703u, global3.a, global3.a), true)), select(vec3<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), false), vec3<bool>(!func_5(2147483647i, vec4<u32>(64480u, 43595u, 23323u, var_1.x), true), select(global3.a, -1i, true) > ~global3.a, any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)))), all(vec2<bool>(true, true))));
    global3 = Struct_3(~global3.a);
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_div_vec3_u32(~vec3<u32>(~var_1.x, select(80008u, 30562u, var_3.x), _wgslsmith_dot_vec4_u32(vec4<u32>(20185u, 21485u, 15639u, 2068u), vec4<u32>(4294967295u, var_1.x, 4294967295u, var_1.x))), ~(vec3<u32>(var_1.x, 4294967295u, var_1.x) ^ ~vec3<u32>(var_1.x, 4294967295u, var_1.x))));
}

