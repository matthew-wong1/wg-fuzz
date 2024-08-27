struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-614f, 329f, -116f, -442f));

var<private> global1: array<vec4<i32>, 9>;

var<private> global2: vec2<f32> = vec2<f32>(1035f, 681f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: f32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global0.a.x))));
    var var_1 = _wgslsmith_div_f32(global2.x, global2.x) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1420f, _wgslsmith_f_op_f32(-608f + global2.x), arg_0.x | arg_0.x))));
    global1 = array<vec4<i32>, 9>();
    let var_2 = abs(~abs(-vec2<i32>(24672i, 45458i) >> (u_input.a % vec2<u32>(32u))));
    let var_3 = var_2;
    return global1[_wgslsmith_index_u32(~u_input.c, 9u)];
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(global0.a);
    let var_1 = firstTrailingBit(~func_3(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), _wgslsmith_add_u32(u_input.b.x, u_input.b.x), global0.a.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(global0.a.xyz)), _wgslsmith_div_vec3_f32(global0.a.wzz, vec3<f32>(arg_1.x, arg_1.x, global2.x))))))));
    global1 = array<vec4<i32>, 9>();
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(886f, var_2.x, var_2.x, var_2.x)) + _wgslsmith_f_op_vec4_f32(round(global0.a)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)) * _wgslsmith_f_op_vec4_f32(-arg_1))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.a.x, _wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(1142f * -194f), -1420f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_1.x;
    var var_1 = ~vec4<i32>(firstTrailingBit(1i) << (~1u % 32u), min(-12397i, 28639i), abs(-20644i), -abs(1i));
    let var_2 = arg_2;
    let var_3 = arg_2.a.zy;
    return func_2(_wgslsmith_sub_vec3_i32(var_1.yyw, var_1.yyw), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_2.a + vec4<f32>(var_3.x, var_2.a.x, -488f, 1000f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-881f, arg_2.a.x, 333f, global0.a.x))), _wgslsmith_f_op_vec4_f32(max(global0.a, vec4<f32>(-1402f, var_3.x, var_3.x, 557f))))), vec4<bool>(all(arg_1.xx), true, var_0, u_input.a.x < 49822u))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(arg_2.a.x + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a.x))), 1347f, global0.a.x)));
}

fn func_1() -> vec3<u32> {
    var var_0 = func_4(func_2(-countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(13541i, 0i, -12113i), vec3<i32>(0i, 70017i, -1i))), vec4<f32>(-822f, global0.a.x, _wgslsmith_f_op_f32(-369f * _wgslsmith_f_op_f32(199f - -370f)), _wgslsmith_f_op_f32(f32(-1f) * -974f))), vec4<bool>(false, !(!all(vec4<bool>(true, true, false, false))), true, any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(false, true)))), func_2(vec3<i32>(_wgslsmith_clamp_i32(30339i, _wgslsmith_add_i32(36674i, 4307i), -6087i), _wgslsmith_mod_i32(_wgslsmith_mod_i32(30044i, 2471i), -2147483647i), countOneBits(-47033i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1344f, -334f, -1000f, 516f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, global2.x) * _wgslsmith_f_op_vec4_f32(-global0.a)))));
    global1 = array<vec4<i32>, 9>();
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, 1123f, var_0.a.x, 1366f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, 808f, -624f, 693f)), select(vec4<bool>(false, true, select(true, true, true), true), vec4<bool>(true, var_0.a.x <= 3296f, all(vec2<bool>(true, false)), true), vec4<bool>(u_input.a.x != 8769u, true, false, true)))));
    let var_1 = func_2(vec3<i32>(-1i) * -vec3<i32>(firstLeadingBit(-30433i), i32(-1i) * -1i, -21271i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_f_op_vec4_f32(-var_0.a)) * vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1948f) + 453f), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x - global0.a.x))));
    var var_2 = u_input.a;
    return _wgslsmith_add_vec3_u32(firstLeadingBit(abs(~vec3<u32>(var_2.x, var_2.x, 50554u) | (vec3<u32>(1u, 29149u, 10611u) | vec3<u32>(4294967295u, 1u, var_2.x)))), select(vec3<u32>(17730u >> (_wgslsmith_dot_vec2_u32(u_input.a, u_input.b) % 32u), 7185u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_2.x, 3484u, var_2.x), vec4<u32>(var_2.x, var_2.x, var_2.x, 12566u)), ~1u)), abs(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(63866u, u_input.c, 0u), vec3<u32>(u_input.a.x, 9669u, u_input.a.x)), ~vec3<u32>(75894u, 4294967295u, u_input.b.x))), any(vec2<bool>(false, true))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = any(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true))));
    var var_1 = arg_1.a;
    var var_2 = var_1.zxy;
    global1 = array<vec4<i32>, 9>();
    let var_3 = 4294967295u;
    return var_2.xz;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_sub_vec3_u32(abs(func_1()), (~vec3<u32>(1u, 0u, u_input.a.x) << (min(vec3<u32>(u_input.a.x, 25192u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.c, 52115u)) % vec3<u32>(32u))) | abs(~vec3<u32>(4294967295u, 1u, u_input.c))), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(global0.a))), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-18637i << (u_input.c % 32u), select(21494i, 1i, true), _wgslsmith_dot_vec4_i32(vec4<i32>(-41976i, 1i, 2147483647i, -2147483647i), vec4<i32>(15946i, 0i, 0i, 1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-13549i, 2147483647i, 1i), vec3<i32>(-2147483647i, -2147483647i, 11863i)))), -global1[_wgslsmith_index_u32(~4294967295u, 9u)]), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(global0.a, vec4<f32>(-2671f, global2.x, 1961f, global2.x))))))));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1572f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(998f, -356f))))), global2.x);
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(func_2(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -40059i, 1i), vec3<i32>(48406i, 11137i, -56034i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(374f, global0.a.x, -1696f, 622f) * vec4<f32>(-1000f, -954f, -1000f, global2.x))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))), func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), func_4(Struct_1(global0.a), vec4<bool>(true, true, true, true), Struct_1(global0.a)))).a.yww * vec3<f32>(global0.a.x, 1000f, -273f));
    var_0 = func_2(vec3<i32>(abs(-2147483647i), _wgslsmith_dot_vec4_i32(select(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], global1[_wgslsmith_index_u32(u_input.c, 9u)], vec4<bool>(true, false, false, true)), _wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(u_input.c, 9u)], vec4<i32>(-73871i, 34550i, 35056i, 1i))), abs(countOneBits(-561i))) >> (select(select(vec3<u32>(u_input.b.x, 0u, 24431u), vec3<u32>(31940u, u_input.b.x, 28649u) | vec3<u32>(u_input.b.x, u_input.c, u_input.c), vec3<bool>(false, false, false)), ~abs(vec3<u32>(u_input.c, u_input.a.x, u_input.b.x)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), true)) % vec3<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1224f), 530f, _wgslsmith_f_op_f32(f32(-1f) * -312f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_5(vec3<u32>(u_input.c, 0u, 4294967295u), Struct_1(global0.a), vec4<i32>(-23148i, 0i, 1i, 2147483647i), Struct_1(vec4<f32>(global0.a.x, var_0.x, 2125f, global2.x)))).x), 328f)))).a.yyz;
    let var_1 = func_4(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-407f, 321f, 1083f, global0.a.x))), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, false, true)), func_4(func_4(func_4(Struct_1(global0.a), vec4<bool>(true, false, false, false), Struct_1(vec4<f32>(global0.a.x, -432f, -555f, 927f))), vec4<bool>(true, true, true, false), Struct_1(vec4<f32>(var_0.x, 420f, 1000f, 949f))), vec4<bool>(false, any(vec2<bool>(false, true)), true, true), func_2(-vec3<i32>(-8849i, -38903i, -27166i), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, 2205f, -863f, -1000f) * vec4<f32>(global2.x, var_0.x, 245f, 573f))))), vec4<bool>(all(vec3<bool>(false, true, any(vec2<bool>(false, true)))), true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -265f))) <= global0.a.x, all(vec4<bool>(true, true, true, true)) == any(vec4<bool>(true, true, true, true))), func_2(vec3<i32>(func_3(vec2<bool>(true, false), firstTrailingBit(1u), 363f).x, -13522i, _wgslsmith_add_i32(i32(-1i) * -6401i, 0i)), vec4<f32>(_wgslsmith_div_f32(-984f, 254f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1850f, global0.a.x), _wgslsmith_f_op_f32(var_0.x - var_0.x), true)), 1815f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.x + 847f))))));
    let var_2 = var_1;
    let var_3 = min(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-14931i, 0i), vec2<i32>(-47048i, -2147483647i)), -1i), 1i), firstTrailingBit(abs(-13483i)), _wgslsmith_sub_i32(func_3(vec2<bool>(true, true), 1u, _wgslsmith_f_op_f32(-764f - 169f)).x, max(_wgslsmith_div_i32(0i, 1i), 1i))), vec3<i32>(2147483647i, -2147483647i, -(firstTrailingBit(1i) >> (u_input.b.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.c, 1u, _wgslsmith_div_u32(_wgslsmith_div_u32(0u, max(u_input.c, u_input.b.x)), firstTrailingBit(u_input.b.x)), min(abs(~u_input.b.x), 1u)), ~vec3<u32>(u_input.b.x, 4294967295u, u_input.a.x), global0.a.x, u_input.a.x, u_input.b);
}

