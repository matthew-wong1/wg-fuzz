struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(37756u, 35123u, 92789u, 1u);

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: u32 = 1u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> vec2<i32> {
    var var_0 = 1u;
    global3 = select(~global0.x, _wgslsmith_add_u32(select(global0.x, 1u, !arg_1.a.x != arg_2), _wgslsmith_sub_u32(global0.x, u_input.b.x) & firstTrailingBit(reverseBits(4387u))), global1.a.x);
    let var_1 = u_input.a;
    var var_2 = arg_1;
    global0 = max(~vec4<u32>(_wgslsmith_mult_u32(33779u, min(134090u, 0u)), 4294967295u, ~(global0.x | 4294967295u), _wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.b), ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), vec4<u32>(52484u, firstLeadingBit(52876u), select(47046u, ~(~u_input.b.x), !global2.a.x), ~u_input.b.x));
    return _wgslsmith_clamp_vec2_i32(vec2<i32>(-(~abs(31977i)), _wgslsmith_clamp_i32(~firstTrailingBit(u_input.a), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -19117i, 4011i, var_1), vec4<i32>(-2147483647i, var_1, u_input.a, var_1)), _wgslsmith_clamp_i32(1i, var_1, var_1)), (2147483647i >> (0u % 32u)) | var_1)), abs(-_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(19130i, var_1)), abs(vec2<i32>(var_1, 19609i)))), _wgslsmith_clamp_vec2_i32(~(-(vec2<i32>(u_input.a, var_1) << (vec2<u32>(113739u, 33631u) % vec2<u32>(32u)))), _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(u_input.a, -2147483647i)), vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a), vec2<i32>(abs(-2147483647i), _wgslsmith_mult_i32(-2147483647i, u_input.a))), vec2<i32>(var_1, _wgslsmith_add_i32(-2147483647i, _wgslsmith_sub_i32(var_1, var_1)))));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(select(_wgslsmith_sub_vec2_i32(-vec2<i32>(26334i, -1i), vec2<i32>(-45646i, 1i)), ~(~vec2<i32>(2147483647i, u_input.a)), arg_1.x), vec2<i32>(_wgslsmith_div_i32(-2808i, -u_input.a), 0i)), 7337i);
    let var_1 = ~abs(func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1000f, -842f, false)))), Struct_1(vec3<bool>(true, true, true)), global2.a.x));
    let var_2 = vec2<u32>(global0.x, max(u_input.b.x, global0.x));
    let var_3 = Struct_1(global2.a);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(247f)), -372f, _wgslsmith_f_op_f32(f32(-1f) * -755f), -915f))));
    return _wgslsmith_mult_i32(~var_1.x, -1i);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = arg_2.x;
    let var_1 = Struct_1(vec3<bool>(true, true == (_wgslsmith_mult_i32(u_input.a, u_input.a) > (i32(-1i) * -1i)), any(global2.a.yz)));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1672f * _wgslsmith_f_op_f32(382f + -338f)))))));
    global0 = arg_2;
    var var_3 = ~_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(_wgslsmith_dot_vec2_u32(global0.wx, vec2<u32>(14118u, global0.x)), ~arg_2.x, 83509u)));
    return select(abs(~vec2<u32>(_wgslsmith_mult_u32(0u, 1u), ~4678u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_2.x, 58625u), global0.zyz), global0.x), abs(reverseBits(arg_2.xx))), !select(global2.a.xx, vec2<bool>(arg_0.a.x, -2147483647i > u_input.a), select(!var_1.a.yy, vec2<bool>(false, arg_0.a.x), var_1.a.yz)));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = vec2<u32>(~(~(~(u_input.b.x >> (1u % 32u)))), countOneBits(1u));
    var_0 = func_4(arg_0, vec3<i32>(func_2(global2.a.x, !select(vec4<bool>(global1.a.x, global2.a.x, false, false), vec4<bool>(global1.a.x, arg_0.a.x, true, arg_0.a.x), true)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_sub_i32(u_input.a, -2147483647i)), 22899i, firstLeadingBit(u_input.a >> (22551u % 32u))), func_2(arg_0.a.x, select(!vec4<bool>(arg_0.a.x, true, global1.a.x, arg_0.a.x), !vec4<bool>(global2.a.x, global1.a.x, global2.a.x, false), vec4<bool>(false, false, arg_0.a.x, global2.a.x)))), vec4<u32>(u_input.b.x, 1u, global0.x, ~global0.x), Struct_1(vec3<bool>(true, true, select(true && global1.a.x, all(vec2<bool>(true, global2.a.x)), true))));
    var var_1 = 1000f;
    global2 = arg_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-710f, 1216f)))))));
    return _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.x)) * 1f)))));
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1) -> vec3<bool> {
    global0 = _wgslsmith_sub_vec4_u32(vec4<u32>(94296u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(30314u, 0u), u_input.b.x, ~4294967295u), firstTrailingBit(global0.x), ~0u) >> (reverseBits(_wgslsmith_sub_vec4_u32(select(vec4<u32>(global0.x, 51442u, u_input.b.x, 49713u), vec4<u32>(4294967295u, 1u, global0.x, global0.x), vec4<bool>(arg_1.x, arg_1.x, false, arg_2.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(100016u, 1u, u_input.b.x, global0.x), vec4<u32>(7106u, 38137u, 16358u, u_input.b.x)))) % vec4<u32>(32u)), vec4<u32>(global0.x, u_input.b.x, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(684u, u_input.b.x << (0u % 32u)), global0.zy)));
    global0 = min(vec4<u32>(_wgslsmith_mult_u32(global0.x, 0u), func_4(Struct_1(!vec3<bool>(global1.a.x, true, false)), reverseBits(vec3<i32>(u_input.a, 1072i, u_input.a)) & _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 36069u, 1u, 14710u) >> (vec4<u32>(1u, global0.x, 1u, global0.x) % vec4<u32>(32u)), ~vec4<u32>(779u, 1u, global0.x, 1u)), Struct_1(!arg_2.a)).x, firstTrailingBit(~abs(4371u)), abs(global0.x)), ~_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(1u, 4294967295u, 44634u, 36247u)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 23788u, u_input.b.x, u_input.b.x), vec4<u32>(79565u, global0.x, u_input.b.x, global0.x), vec4<u32>(u_input.b.x, 0u, 4294967295u, global0.x)), min(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 49535u, 4294967295u, 1u), vec4<u32>(u_input.b.x, u_input.b.x, 23997u, 46193u), vec4<u32>(u_input.b.x, 28340u, global0.x, global0.x)))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-802f, _wgslsmith_f_op_f32(-1161f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -585f)))));
    global2 = Struct_1(global1.a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, arg_0)));
    return !select(!arg_2.a, vec3<bool>(arg_1.x, !all(vec4<bool>(arg_1.x, false, false, global2.a.x)), any(arg_2.a)), !vec3<bool>(global1.a.x, arg_1.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global1.a, !select(global2.a, global2.a, select(global2.a.x, true, true)), global1.a.x);
    let var_1 = true;
    global1 = Struct_1(global1.a);
    global0 = abs(~firstTrailingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(29562u, 0u, global0.x, u_input.b.x)), ~vec4<u32>(97525u, global0.x, u_input.b.x, global0.x), select(vec4<u32>(global0.x, 4294967295u, global0.x, global0.x), vec4<u32>(4294967295u, u_input.b.x, global0.x, u_input.b.x), true))));
    global1 = Struct_1(func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(false, true, var_0.x)))), _wgslsmith_div_f32(1000f, -175f)), vec2<bool>(any(vec4<bool>(true, var_1, false, global1.a.x)), _wgslsmith_div_f32(-564f, 1013f) < _wgslsmith_f_op_f32(sign(-721f))), Struct_1(global1.a)));
    let var_2 = vec3<u32>(u_input.b.x, select(83013u, countOneBits(firstTrailingBit(global0.x)), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(850f - -935f)), global2.a.yx, Struct_1(global2.a)).x), 3877u);
    var var_3 = !var_1;
    var_3 = var_1;
    var_3 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~_wgslsmith_add_i32(u_input.a, 1i)), _wgslsmith_f_op_f32(step(-144f, -564f)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, countOneBits(u_input.a ^ -30124i)), vec2<i32>(u_input.a, ~u_input.a | -1i)), abs(vec3<i32>(u_input.a, u_input.a, ~(-51609i)) << (vec3<u32>(firstLeadingBit(0u), abs(1u), 478u >> (var_2.x % 32u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-253f * -864f)), -502f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(750f, -415f)) * 276f))));
}

