struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

var<private> global2: array<vec4<i32>, 29>;

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 1u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> u32 {
    var var_0 = select(vec4<bool>(global1.a.x >= 36436u, global0.b < -1i, any(vec4<bool>(true, any(vec2<bool>(true, true)), true, false)), true), vec4<bool>(any(vec3<bool>(any(vec4<bool>(true, true, false, false)), true, any(vec3<bool>(false, true, true)))), false, _wgslsmith_add_i32(~global1.b, firstTrailingBit(42128i)) > _wgslsmith_sub_i32(firstTrailingBit(5770i), 17965i), any(select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec4<bool>(true, true, false, true))))), true);
    global1 = Struct_2(~(vec3<u32>(_wgslsmith_mod_u32(1u, 1u), ~u_input.a, global3.x) | global0.a), ~(~min(global0.b, global0.b)) | global1.b);
    let var_1 = ~select(min(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, global0.b), vec2<i32>(0i, global1.b)), vec2<i32>(global0.b >> (u_input.a % 32u), _wgslsmith_sub_i32(-223i, global1.b))), _wgslsmith_sub_vec2_i32(vec2<i32>(global0.b, global0.b), vec2<i32>(global0.b, -2147483647i)) ^ -vec2<i32>(global0.b, global1.b), !(any(var_0.yz) | var_0.x));
    var var_2 = Struct_1(var_1, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-242f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1014f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2176f - -631f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-698f + 1737f))))), 1697f));
    var var_3 = Struct_2(_wgslsmith_clamp_vec3_u32(global1.a, select(global1.a, _wgslsmith_mod_vec3_u32(global1.a, abs(global0.a)), vec3<bool>(var_0.x || true, !var_0.x, var_2.b.x != 1928f)), global1.a), global1.b);
    return ~global3.x;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> Struct_1 {
    global0 = Struct_2(~(~global0.a), i32(-1i) * -(~(~(-1i))));
    global1 = Struct_2((select(firstTrailingBit(arg_1.a), global0.a, vec3<bool>(false, false, arg_3)) >> (vec3<u32>(18253u >> (arg_1.a.x % 32u), global1.a.x, _wgslsmith_dot_vec3_u32(global1.a, vec3<u32>(global0.a.x, 4294967295u, 1u))) % vec3<u32>(32u))) << (vec3<u32>(global1.a.x, ~arg_1.a.x, func_3()) % vec3<u32>(32u)), firstLeadingBit(~_wgslsmith_add_i32(arg_1.b << (73328u % 32u), global0.b)));
    let var_0 = 1f;
    let var_1 = -18369i;
    global1 = Struct_2(vec3<u32>(4294967295u, _wgslsmith_mod_u32(0u, abs(max(u_input.a, 4294967295u))), _wgslsmith_sub_u32(global1.a.x, _wgslsmith_sub_u32(u_input.a >> (0u % 32u), ~u_input.a))), min(var_1, _wgslsmith_dot_vec3_i32(-firstLeadingBit(vec3<i32>(var_1, -6542i, var_1)), _wgslsmith_div_vec3_i32(-vec3<i32>(-1i, global0.b, var_1), -vec3<i32>(global1.b, -2147483647i, arg_1.b)))));
    return Struct_1(~vec2<i32>(-arg_1.b, abs(2138i)) >> (~(reverseBits(global1.a.xy) << (vec2<u32>(0u, global1.a.x) % vec2<u32>(32u))) % vec2<u32>(32u)), vec4<f32>(arg_0, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1399f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1051f)) - _wgslsmith_f_op_f32(trunc(arg_0))), 146f));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> vec3<f32> {
    var var_0 = !vec4<bool>(true | !any(vec2<bool>(false, false)), !((u_input.a < 1689u) || (global0.b == arg_0.a.x)), true, select(true, select(any(vec4<bool>(true, false, false, true)), true, all(vec4<bool>(true, false, true, true))), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)))));
    var var_1 = arg_1;
    var var_2 = arg_2;
    var var_3 = Struct_2(_wgslsmith_add_vec3_u32(~var_1.a, arg_1.a) | vec3<u32>(var_1.a.x, 0u, max(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 4294967295u, 4294967295u, 46732u), vec4<u32>(4294967295u, var_1.a.x, 6992u, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_1.a.x, var_1.a.x, 0u), vec4<u32>(arg_1.a.x, arg_1.a.x, 20458u, u_input.a)))), _wgslsmith_mod_i32(min(arg_1.b, abs(global0.b)), global0.b));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_0.b.yxw)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(floor(-1000f)), -1000f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, -292f, 1516f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, arg_0.b.x, -656f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-161f, -149f, -793f))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> bool {
    var var_0 = select(arg_0.xy, vec2<i32>((-arg_1.b & ~(-117i)) ^ -1i, arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1071f * 794f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(233f, 171f, true)) - 992f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(409f + -788f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1545f))));
    var var_1 = -_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-18879i, 21702i, global1.b), vec3<i32>(-2601i, 0i, 32296i) << (global1.a % vec3<u32>(32u))), ~(~vec3<i32>(var_0.x, -43324i, var_0.x))), arg_0);
    let var_2 = _wgslsmith_f_op_vec3_f32(func_4(func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-968f)))), 1f)), arg_1, true, false), arg_1, global0.a.x));
    let var_3 = vec3<i32>(global1.b & select(~_wgslsmith_div_i32(1583i, 43161i), abs(abs(37720i)), true), 55296i, _wgslsmith_div_i32(arg_1.b, 0i));
    let var_4 = vec4<i32>(arg_0.x ^ -24703i, -(~arg_0.x), ~(~(-_wgslsmith_mod_i32(-1i, 18086i))), 0i);
    return true | (1u != firstLeadingBit(global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_sub_vec2_u32(vec2<u32>(select(~global3.x, global0.a.x, any(vec3<bool>(true, false, true))), max(0u, ~u_input.a)), ~select(~global0.a.xx, ~vec2<u32>(global0.a.x, 10956u), func_1(vec3<i32>(0i, -26609i, -9875i), Struct_2(global0.a, global0.b)))) | min(~(global0.a.yy >> (global0.a.zx % vec2<u32>(32u))), global0.a.yy | global1.a.zy);
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -916f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-922f, -753f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) - vec2<f32>(1806f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1648f))))));
    global1 = Struct_2(~(~reverseBits(~global1.a)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(2147483647i, -257i)), vec2<i32>(global0.b, -23756i), ~vec2<i32>(23672i, global0.b) & vec2<i32>(-2147483647i, global1.b)), min(vec2<i32>(~(-1i), ~2147483647i), _wgslsmith_mult_vec2_i32(~vec2<i32>(1i, global0.b), max(vec2<i32>(global1.b, global0.b), vec2<i32>(11196i, global0.b))))));
    var var_1 = func_2(var_0.x, Struct_2(abs(select(global0.a, vec3<u32>(9424u, 4163u, global3.x), vec3<bool>(false, false, true))), abs(-6589i)), (true && all(vec3<bool>(true, true, true))) && all(vec2<bool>(func_1(vec3<i32>(-18683i, 0i, global0.b), Struct_2(vec3<u32>(global1.a.x, global3.x, global1.a.x), global0.b)), true)), false);
    global0 = Struct_2(vec3<u32>(~global1.a.x, abs(38530u), select(_wgslsmith_mult_u32(firstTrailingBit(1u), 1u), global0.a.x, !(1u >= global3.x))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_1.a, var_1.a), i32(-1i) * -_wgslsmith_mult_i32(19541i, 13883i)));
    var var_2 = !func_1(firstLeadingBit(~vec3<i32>(10504i, -19196i, global0.b)), Struct_2(vec3<u32>(global1.a.x, 0u, _wgslsmith_clamp_u32(u_input.a, global0.a.x, 0u)), global0.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, global1.a.x, (20109i | global0.b) & ((_wgslsmith_div_i32(-1i, var_1.a.x) | (global1.b ^ 1045i)) & global1.b), firstLeadingBit(vec3<u32>(4294967295u, global0.a.x, max(u_input.a, 75039u))), vec3<f32>(-181f, -187f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec2<i32>(73335i, global0.b), vec4<f32>(var_1.b.x, -560f, -1000f, var_1.b.x)), Struct_2(vec3<u32>(global0.a.x, 0u, u_input.a), -2147483647i), u_input.a)).x + var_1.b.x)))));
}

