struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: vec4<f32> = vec4<f32>(248f, -1000f, 905f, 1020f);

var<private> global2: bool = true;

var<private> global3: vec4<f32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> vec4<f32> {
    var var_0 = false;
    let var_1 = 4294967295u;
    let var_2 = vec4<i32>(u_input.c.x, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.c.x, -1i, 0i, 27040i)), vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x)) << (firstTrailingBit(_wgslsmith_sub_u32(u_input.b, 17209u)) % 32u), u_input.c.x << (~var_1 % 32u), _wgslsmith_div_i32(-8942i, -(u_input.a.x << (u_input.b % 32u)))) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(min(i32(-1i) * -1i, -4929i), u_input.c.x, firstLeadingBit(-2147483647i) & u_input.c.x, 17293i), abs(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(0i, u_input.c.x)), 1754i, u_input.a.x, ~(-19901i))));
    global0 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(2412i, _wgslsmith_div_i32(~u_input.c.x, var_2.x), firstLeadingBit(0i)), abs(abs(u_input.c.x)), var_2.x << (0u % 32u));
    var var_3 = vec3<bool>(true, true, true);
    return vec4<f32>(-1120f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.x)) + _wgslsmith_f_op_f32(abs(global1.x)))))), _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(-868f - 741f)));
}

fn func_2() -> bool {
    let var_0 = Struct_1(~_wgslsmith_mod_i32(-1i, u_input.c.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())))))), u_input.c, global3.x, !(global3.x > global1.x) || true);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-536f * _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_3()).x)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1308f, -481f))), _wgslsmith_f_op_f32(step(-670f, _wgslsmith_f_op_f32(max(var_0.b.x, 1114f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_3()).xx), !vec2<bool>(true, !var_0.e))));
    let var_2 = var_0.b.zy;
    var var_3 = Struct_3(global1.x);
    let var_4 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1823f)), _wgslsmith_f_op_f32(-477f - -945f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1321f - 777f)))));
    return all(!select(vec4<bool>(true, true, !var_0.e, false), select(vec4<bool>(var_0.e, false, var_0.e, var_0.e), vec4<bool>(var_0.e, true, true, true), !vec4<bool>(var_0.e, false, true, false)), !(!var_0.e)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<bool> {
    global2 = all(select(!vec3<bool>(arg_1.e, -598f == arg_0.a, true), vec3<bool>(_wgslsmith_f_op_f32(-arg_0.a) != -154f, false, false & func_2()), vec3<bool>(arg_1.e, arg_2.e, any(vec3<bool>(true, false, arg_2.e)))));
    global3 = arg_2.b;
    let var_0 = arg_1;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(1522f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_1.d, var_0.d)))))));
    let var_2 = any(select(!vec4<bool>(!var_0.e, any(vec2<bool>(true, arg_2.e)), true, var_0.e), vec4<bool>(false, any(!vec2<bool>(false, var_0.e)), true, var_0.e), select(!(!vec4<bool>(false, arg_1.e, false, true)), vec4<bool>(var_0.e, true, true, false != var_0.e), vec4<bool>(true, any(vec4<bool>(var_0.e, true, var_0.e, true)), !arg_1.e, any(vec4<bool>(var_0.e, arg_2.e, true, false))))));
    return !vec4<bool>((~u_input.b < u_input.b) && false, var_2, !(!(!var_0.e)), !any(vec4<bool>(arg_1.e, var_2, arg_1.e, arg_2.e)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 6657i;
    let var_0 = Struct_1(u_input.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-585f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1128f * global3.x)))), _wgslsmith_mult_vec2_i32(max(u_input.a.xy, u_input.a.yz), _wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, -u_input.c.x), u_input.a.xy)), 833f, !(!any(select(vec2<bool>(true, true), vec2<bool>(false, true), false))));
    var var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_f32(-var_0.b.x);
    let var_3 = !select(true, (var_2 >= global1.x) | (var_0.e == false), any(select(vec4<bool>(false, var_0.e, true, false), func_1(Struct_3(-227f), var_0, Struct_1(-51198i, vec4<f32>(1662f, -1000f, 348f, 1000f), vec2<i32>(-17209i, var_0.a), -1741f, var_0.e), global1.zwz), !vec4<bool>(true, var_0.e, var_0.e, var_0.e))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-global3.wyy);
    let var_5 = u_input.b;
    let var_6 = vec2<f32>(_wgslsmith_f_op_f32(select(var_4.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.d, 1095f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), (u_input.a.x > 20580i) & !var_3)), var_4.x);
    let var_7 = 1382f;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(2147483647i));
}

