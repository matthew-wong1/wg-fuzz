struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = select(~u_input.c.x, -37177i, !any(vec2<bool>(true, true)));
    let var_1 = vec4<i32>(u_input.d.x, -13866i, -_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(var_0, var_0, 0i), var_0, var_0, var_0), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, var_0, u_input.d.x) >> (vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], global0[_wgslsmith_index_u32(9968u, 14u)], u_input.b.x, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(8207i, var_0, var_0, 2147483647i), vec4<i32>(var_0, -6109i, -1i, 19524i)))), -14860i);
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(665f + _wgslsmith_div_f32(-124f, 369f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1124f - 178f) * _wgslsmith_f_op_f32(round(-610f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(635f, -574f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(2043f)))))));
    global0 = array<u32, 14>();
    let var_3 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))), true, any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false))), vec4<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false)), false, true, true));
    return var_3.x;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = vec3<bool>(!(false && select(any(vec4<bool>(false, true, false, false)), true, true)), true, false);
    let var_1 = Struct_1(any(vec4<bool>(var_0.x, func_3(), all(!var_0.zz), var_0.x)), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1816f))), _wgslsmith_f_op_f32(round(360f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1087f, -336f, -1000f, 839f)))), !select(select(!var_0.yz, var_0.xx, true), !var_0.yy, var_0.x), ~u_input.b);
    global0 = array<u32, 14>();
    let var_2 = var_1;
    var var_3 = -53150i;
    return Struct_1(var_2.d.x, var_1.c.ww, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -531f, _wgslsmith_f_op_f32(-var_1.b.x), var_1.c.x)), !(!var_0.zy), var_1.e);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = arg_1.e.x;
    var var_1 = arg_1;
    let var_2 = arg_1;
    var var_3 = max(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, ~u_input.a.x, firstLeadingBit(0i)), vec3<i32>(abs(u_input.d.x), 0i, 37995i))), u_input.c);
    var var_4 = Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_2.c.wz)) - vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(arg_1.b.x * -247f))), vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(abs(var_1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -402f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1066f)), _wgslsmith_f_op_f32(-1286f + 851f))), arg_1.c.x))), !var_1.d, vec4<u32>(_wgslsmith_mult_u32(select(~var_0, abs(1u), var_1.d.x && false), 77387u), _wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(~57064u, 14u)], reverseBits(~u_input.b.x)), _wgslsmith_div_u32(~var_2.e.x, _wgslsmith_sub_u32(~var_1.e.x, 29796u)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.e.x, var_0, 10331u, 0u), vec4<u32>(4294967295u, arg_1.e.x, 3206u, 4294967295u)), 88150u, ~1u), _wgslsmith_add_u32(~96980u, global0[_wgslsmith_index_u32(~44313u, 14u)]))));
    return var_2;
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_1 {
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -407f);
    var_0 = 536f;
    var var_1 = _wgslsmith_f_op_f32(sign(690f));
    return func_4(all(!vec3<bool>(false, arg_1, arg_1 != true)), func_2(firstLeadingBit(-u_input.d.x)), ~(~(~u_input.b.xyy) >> (u_input.b.wxx % vec3<u32>(32u))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool, arg_3: i32) -> vec3<f32> {
    global0 = array<u32, 14>();
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_0.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), arg_0.e.yzx)), u_input.b.zw);
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    let var_1 = select(!vec3<bool>(arg_2, arg_2, true), !(!(!(!arg_1))), ~(~1u) <= u_input.b.x);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.c.xyw, vec3<f32>(437f, _wgslsmith_f_op_f32(f32(-1f) * -1138f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))));
}

fn func_6(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> StorageBuffer {
    global0 = array<u32, 14>();
    let var_0 = arg_2;
    let var_1 = func_1(10948u, any(select(!(!vec3<bool>(true, true, arg_2.a)), !select(vec3<bool>(true, false, true), vec3<bool>(true, arg_2.a, arg_2.a), vec3<bool>(var_0.a, arg_1, var_0.d.x)), vec3<bool>(arg_1, true, true))));
    var var_2 = _wgslsmith_clamp_vec4_i32(countOneBits(-abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, 1i, u_input.c.x, 5042i), vec4<i32>(u_input.c.x, u_input.d.x, u_input.a.x, u_input.a.x)))), _wgslsmith_mod_vec4_i32((~vec4<i32>(u_input.d.x, u_input.d.x, u_input.c.x, u_input.c.x) & (vec4<i32>(u_input.d.x, u_input.a.x, u_input.a.x, u_input.d.x) >> (vec4<u32>(u_input.b.x, 9221u, arg_2.e.x, arg_2.e.x) % vec4<u32>(32u)))) >> (func_1(27525u, 33803u < var_1.e.x).e % vec4<u32>(32u)), (~vec4<i32>(u_input.a.x, u_input.d.x, u_input.a.x, 0i) << (_wgslsmith_div_vec4_u32(vec4<u32>(96123u, u_input.b.x, arg_3, arg_2.e.x), var_1.e) % vec4<u32>(32u))) | _wgslsmith_div_vec4_i32(vec4<i32>(-1i, -59319i, -64715i, u_input.a.x), firstLeadingBit(vec4<i32>(u_input.a.x, 9941i, 22743i, 1i)))), -max(vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, -56024i), ~6186i, u_input.d.x & u_input.d.x, -u_input.a.x), vec4<i32>(_wgslsmith_mult_i32(u_input.d.x, u_input.d.x), -76262i >> (1u % 32u), min(-2147483647i, u_input.d.x), select(u_input.c.x, 4141i, false))));
    var var_3 = arg_2;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-func_2(0i).c), firstTrailingBit(_wgslsmith_add_i32(abs(u_input.d.x), -u_input.c.x)), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(abs(var_3.e.wx), ~var_0.e.xy), var_1.e.yz) >> (vec2<u32>(firstLeadingBit(reverseBits(47862u)), _wgslsmith_div_u32(min(arg_2.e.x, var_1.e.x), 1u)) % vec2<u32>(32u)), ~(i32(-1i) * -u_input.c.x), abs(~vec4<i32>(~u_input.c.x, ~u_input.c.x, -14441i, ~u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), all(vec3<bool>(true, true, false)), any(vec2<bool>(true, true)), true);
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_vec3_f32(func_5(func_1(_wgslsmith_clamp_u32(~4294967295u, ~10073u, 43138u), var_0.x), var_0.wxz, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~4294967295u, 14u)], func_4(false, Struct_1(false, vec2<f32>(-205f, 780f), vec4<f32>(-103f, 605f, -2295f, -150f), var_0.xx, vec4<u32>(4294967295u, u_input.b.x, 44487u, u_input.b.x)), u_input.b.zzw).e.x) == u_input.b.x, firstLeadingBit(u_input.c.x))), func_4(false && var_0.x, func_1(~_wgslsmith_mult_u32(1u, global0[_wgslsmith_index_u32(38110u, 14u)]), var_0.x), ~select(u_input.b.zxw, u_input.b.ywz, var_0.yxx)).d.x, Struct_1(!(!var_0.x) & all(var_0.wx), vec2<f32>(1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(736f, 1078f, 1124f, 1779f))))), var_0.yw, func_1(_wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.b.yy) & 0u, any(var_0.xy)).e), 98243u);
}

