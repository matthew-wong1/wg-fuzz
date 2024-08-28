struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<bool> {
    global0 = Struct_1(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(global0.a, _wgslsmith_clamp_u32(global0.a, 14059u << (1u % 32u), ~1u))), true);
    global0 = Struct_1(~u_input.b.x, ((_wgslsmith_sub_i32(2147483647i, u_input.a.x) >> (min(47892u, u_input.b.x) % 32u)) << (4294967295u % 32u)) <= select(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), -u_input.a.x << (0u % 32u), false));
    let var_0 = Struct_1(~4294967295u | ~abs(1u | global0.a), global0.b);
    let var_1 = select(vec3<bool>(var_0.b, any(vec2<bool>(false, false)) || true, !global0.b), select(select(!vec3<bool>(var_0.b, false, true), !vec3<bool>(global0.b, global0.b, false), vec3<bool>(true, true, global0.b)), vec3<bool>(global0.b, false, global0.b), !global0.b), global0.b);
    global0 = var_0;
    return var_1;
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(u_input.b.x, true);
    let var_1 = Struct_1(_wgslsmith_add_u32(45216u, ~u_input.b.x), true);
    let var_2 = -1000f;
    global0 = var_0;
    let var_3 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(min(u_input.b, u_input.b) | _wgslsmith_div_vec2_u32(u_input.b, u_input.b), ~(vec2<u32>(56332u, var_0.a) << (vec2<u32>(var_0.a, 4294967295u) % vec2<u32>(32u)))), _wgslsmith_sub_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a, global0.a), vec2<u32>(4294967295u, 50983u)), ~countOneBits(vec2<u32>(4286u, var_0.a)))), true);
    return func_3();
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = ~u_input.a.x;
    var var_1 = vec2<u32>(arg_0, 10950u);
    global0 = arg_2;
    let var_2 = -18395i;
    var var_3 = _wgslsmith_mod_vec3_u32(~select(vec3<u32>(45929u, 0u, global0.a) & vec3<u32>(var_1.x, 1u, 23795u), ~(vec3<u32>(4294967295u, 0u, global0.a) >> (vec3<u32>(u_input.b.x, 80994u, arg_0) % vec3<u32>(32u))), !func_2()), vec3<u32>(35083u, ~global0.a, global0.a));
    return Struct_1(~(4294967295u >> (1u % 32u)) & _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(90529u, 51481u), u_input.b)), !(!(!arg_2.b)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_1(_wgslsmith_sub_u32(firstLeadingBit(arg_2.a), u_input.b.x), _wgslsmith_div_f32(-480f, _wgslsmith_f_op_f32(sign(-458f))), func_1(min(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 79559u, arg_3.a), vec4<u32>(arg_1.a, u_input.b.x, 91161u, 4294967295u))), 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -105f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x - 850f)))), Struct_1(arg_2.a & arg_1.a, func_3().x), true), !(_wgslsmith_f_op_f32(min(arg_0.x, -2193f)) == _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(arg_0.x + arg_0.x))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_div_f32(-442f, _wgslsmith_f_op_f32(arg_0.x + arg_0.x)))) * -1008f);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1062f + arg_0.x)) * _wgslsmith_f_op_f32(floor(-1122f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -933f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(trunc(-736f)))));
    global0 = arg_3;
    return Struct_1(~1u, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1742f)) - 1f), 1293f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -564f))), Struct_1(u_input.b.x, global0.b), func_1(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.b.x, 13525u, u_input.b.x)), vec3<u32>(1u, ~global0.a, _wgslsmith_clamp_u32(global0.a, 1u, 8008u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(613f, -123f) * 315f))), Struct_1(_wgslsmith_div_u32(global0.a, _wgslsmith_clamp_u32(4294967295u, 0u, 0u)), u_input.b.x > ~u_input.b.x), false), func_1(firstLeadingBit(~(u_input.b.x & 1u)), 531f, Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(60992u, u_input.b.x, global0.a), min(vec3<u32>(u_input.b.x, 0u, u_input.b.x), vec3<u32>(u_input.b.x, 68990u, u_input.b.x))), global0.b), (u_input.b.x >= ~4294967295u) | (all(vec2<bool>(true, false)) & any(vec4<bool>(global0.b, global0.b, global0.b, global0.b)))));
    global0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-526f, -658f, _wgslsmith_div_f32(1621f, -123f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-392f, 1962f, 1019f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-569f, 825f, -1757f)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(295f, 138f, -833f))))))), Struct_1(abs(~reverseBits(u_input.b.x)), true), func_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-739f, -1185f, -716f)))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1148f, 535f))), func_4(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1525f, 794f), vec3<f32>(-198f, 1490f, -1290f)), Struct_1(4294967295u, true), Struct_1(0u, true), func_1(u_input.b.x, 528f, Struct_1(global0.a, false), true)), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-510f, 2872f, 1253f) * vec3<f32>(539f, 846f, 760f)), Struct_1(37696u, global0.b), Struct_1(1u, global0.b), func_1(global0.a, 453f, Struct_1(u_input.b.x, false), global0.b)), func_1(global0.a, _wgslsmith_div_f32(-234f, 1506f), Struct_1(u_input.b.x, true), !global0.b)), func_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-399f, -324f, -1712f)))), func_4(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1731f, -457f, 596f))), Struct_1(u_input.b.x, true), Struct_1(4294967295u, true), func_4(vec3<f32>(-177f, 416f, -1712f), Struct_1(2037u, true), Struct_1(u_input.b.x, global0.b), Struct_1(u_input.b.x, true))), Struct_1(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), any(vec3<bool>(global0.b, global0.b, true))), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-374f, 1543f, -212f) + vec3<f32>(-1837f, -502f, -1710f)), func_1(12418u, 629f, Struct_1(0u, global0.b), true), Struct_1(127318u, global0.b), Struct_1(u_input.b.x, false))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(954f, 951f, -878f))), Struct_1(_wgslsmith_mod_u32(4294967295u, 77227u), true), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-346f, 1641f, 2013f)), Struct_1(u_input.b.x, true), Struct_1(global0.a, global0.b), func_4(vec3<f32>(-892f, -389f, -1000f), Struct_1(u_input.b.x, true), Struct_1(48300u, global0.b), Struct_1(u_input.b.x, global0.b))), Struct_1(~1u, select(global0.b, global0.b, global0.b)))), Struct_1(4294967295u, global0.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(~(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -4452i) & vec4<i32>(u_input.a.x, u_input.a.x, 39882i, u_input.a.x)), select(vec4<i32>(1i, u_input.a.x, 33542i, u_input.a.x) >> (vec4<u32>(u_input.b.x, global0.a, global0.a, 1u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 34589i, 0i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x)), false)), vec4<i32>(_wgslsmith_mult_i32(~u_input.a.x, ~u_input.a.x), select(1i, _wgslsmith_mod_i32(0i, u_input.a.x), false), u_input.a.x & ~0i, u_input.a.x)), ~vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, 21366u << (global0.a % 32u)), ~firstLeadingBit(global0.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-539f, 285f, -580f, 2599f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-720f, -755f, -1000f, -1202f))))));
}

