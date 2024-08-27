struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
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

var<private> global0: vec3<f32> = vec3<f32>(2265f, -858f, -1031f);

var<private> global1: array<i32, 18> = array<i32, 18>(47416i, 0i, -75608i, 1i, 0i, 1i, 1i, -1i, 1i, -9895i, 0i, 7257i, 0i, -21142i, 0i, -1i, i32(-2147483648), -1i);

var<private> global2: f32;

var<private> global3: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec3<i32>(1i, -1i, 1i), vec2<bool>(false, true)), Struct_1(vec3<i32>(25974i, 2147483647i, -1i), vec2<bool>(true, false)), Struct_1(vec3<i32>(0i, 1i, 2147483647i), vec2<bool>(true, false)), Struct_1(vec3<i32>(-28265i, 0i, 62038i), vec2<bool>(true, true)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -72041i), vec2<bool>(false, false)), Struct_1(vec3<i32>(2147483647i, -35920i, -42208i), vec2<bool>(false, true)), Struct_1(vec3<i32>(0i, 38560i, 1i), vec2<bool>(true, true)), Struct_1(vec3<i32>(-4353i, -1i, 40535i), vec2<bool>(false, false)), Struct_1(vec3<i32>(-40345i, 0i, -6906i), vec2<bool>(false, true)), Struct_1(vec3<i32>(2147483647i, -25326i, 42231i), vec2<bool>(false, true)), Struct_1(vec3<i32>(i32(-2147483648), 26022i, 1i), vec2<bool>(true, true)), Struct_1(vec3<i32>(-47989i, 1i, -1i), vec2<bool>(false, true)), Struct_1(vec3<i32>(-12679i, -10816i, 18272i), vec2<bool>(false, false)), Struct_1(vec3<i32>(0i, -11335i, 25562i), vec2<bool>(false, false)), Struct_1(vec3<i32>(-1i, -5901i, 58173i), vec2<bool>(false, false)), Struct_1(vec3<i32>(0i, 2147483647i, 1i), vec2<bool>(true, false)), Struct_1(vec3<i32>(-199i, -11904i, 0i), vec2<bool>(false, false)), Struct_1(vec3<i32>(-60225i, 2147483647i, 1i), vec2<bool>(true, true)), Struct_1(vec3<i32>(25133i, 0i, -29617i), vec2<bool>(false, true)), Struct_1(vec3<i32>(-1i, -18089i, -1i), vec2<bool>(true, true)), Struct_1(vec3<i32>(-13399i, -49323i, -37047i), vec2<bool>(false, true)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(floor(global0.x)))), global0.x, _wgslsmith_f_op_f32(select(931f, -386f, arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) + _wgslsmith_f_op_f32(-global0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -106f, 1020f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 1397f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1238f, -246f, global0.x, global0.x) + vec4<f32>(global0.x, -795f, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, -359f, _wgslsmith_f_op_f32(f32(-1f) * -481f), _wgslsmith_f_op_f32(f32(-1f) * -430f))))));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: i32) -> vec4<f32> {
    global3 = array<Struct_1, 21>();
    let var_0 = _wgslsmith_mod_i32(countOneBits(-global1[_wgslsmith_index_u32(countOneBits(arg_1), 18u)]), ~arg_2);
    let var_1 = 1u;
    let var_2 = -vec4<i32>(max(u_input.a.x, arg_2), _wgslsmith_dot_vec2_i32(vec2<i32>(max(1i, 16571i), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, arg_1), 18u)]), _wgslsmith_mod_vec2_i32(u_input.a.yx, u_input.c.yy) ^ _wgslsmith_add_vec2_i32(vec2<i32>(-13561i, -2147483647i), vec2<i32>(arg_2, var_0))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_0, ~(-26068i)), -1i), _wgslsmith_clamp_i32(var_0, arg_2, _wgslsmith_sub_i32(var_0, 1i)) ^ -(~(-2147483647i)));
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-825f, 651f, -700f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(571f, -819f, global0.x)), _wgslsmith_div_vec3_f32(vec3<f32>(752f, global0.x, 929f), vec3<f32>(186f, global0.x, global0.x)), vec3<bool>(false, false, true)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, 1640f, global0.x), vec3<f32>(1000f, global0.x, global0.x), false))))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, global0.x))), _wgslsmith_f_op_f32(min(-108f, -477f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(382f, -1710f)) + _wgslsmith_f_op_f32(f32(-1f) * -1666f)))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_vec4_f32(func_2(any(vec4<bool>(false, true, false, true)), Struct_1(vec3<i32>(35706i, -40769i, u_input.c.x), vec2<bool>(true, true)), -global1[_wgslsmith_index_u32(1u, 18u)], global0.x != 1776f)).x, global0.x))));
}

fn func_1(arg_0: vec2<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, global0.x, global0.x, -171f))), _wgslsmith_f_op_vec4_f32(func_2(true, Struct_1(u_input.c.xwx, vec2<bool>(true, false)), global1[_wgslsmith_index_u32(u_input.d.x, 18u)], false)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1637f), -438f, _wgslsmith_f_op_f32(f32(-1f) * -207f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global0.x, -1201f), -356f), vec4<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), global0.x, 963f, global0.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(69049u, 0u, u_input.b.x), arg_0.x, global1[_wgslsmith_index_u32(arg_0.x, 18u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-467f, global0.x, 103f, -575f)))))))));
    var var_1 = _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], 2147483647i);
    var var_2 = Struct_1(_wgslsmith_add_vec3_i32(u_input.c.wxy, vec3<i32>(u_input.a.x, min(global1[_wgslsmith_index_u32(2454u, 18u)], u_input.c.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(0u, 18u)], u_input.c.x), vec2<i32>(u_input.a.x, -29380i)))), vec2<bool>(true, true));
    global3 = array<Struct_1, 21>();
    let var_3 = global3[_wgslsmith_index_u32(arg_0.x, 21u)];
    return vec4<i32>(-32118i, i32(-1i) * -7556i, ~(-12237i), select(abs(var_2.a.x), abs(-34153i), var_2.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 1000f)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1274f, global0.x) * vec3<f32>(global0.x, -1216f, global0.x)), vec3<f32>(276f, -710f, -1743f)))) - vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), global0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global0.x, global0.x, true)))), -1684f))));
    global2 = _wgslsmith_f_op_f32(-global0.x);
    var var_0 = ~(~vec4<u32>(u_input.d.x, 23898u, abs(0u), _wgslsmith_div_u32(27370u, ~5629u)));
    let var_1 = true;
    var_0 = (~(~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 79289u, 1u, u_input.d.x), vec4<u32>(u_input.b.x, 4294967295u, u_input.d.x, u_input.b.x))) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, 1u, 0u, 50578u), vec4<u32>(34244u, ~var_0.x, u_input.d.x, var_0.x)) % vec4<u32>(32u))) | ~((~vec4<u32>(var_0.x, 66351u, 0u, 16587u) >> (min(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(u_input.d.x, u_input.b.x, 70338u, var_0.x)) % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, var_0.x), vec4<u32>(0u, 4833u, var_0.x, u_input.b.x)), vec4<u32>(var_0.x, u_input.b.x, 4294967295u, 1u) | vec4<u32>(u_input.b.x, 62921u, u_input.d.x, 19235u)) % vec4<u32>(32u)));
    global3 = array<Struct_1, 21>();
    let var_2 = func_1(_wgslsmith_sub_vec2_u32(~u_input.b, vec2<u32>(firstTrailingBit(60256u | u_input.d.x), ~_wgslsmith_add_u32(var_0.x, 113309u))));
    global2 = 2531f;
    global2 = -2615f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-2098f + _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.x, -983f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x))), -170f));
}

