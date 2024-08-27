struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 0u, 0u, 67899u);

var<private> global1: vec4<i32>;

var<private> global2: array<i32, 3> = array<i32, 3>(41820i, -1i, 1i);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = arg_0;
    let var_1 = vec2<i32>(-17263i, -_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, global2[_wgslsmith_index_u32(u_input.c, 3u)], -2147483647i, 20200i), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 78401i, 0i, 0i), vec4<i32>(global2[_wgslsmith_index_u32(u_input.c, 3u)], 2147483647i, 37595i, global2[_wgslsmith_index_u32(global0.x, 3u)])), abs(vec4<i32>(0i, 9321i, global1.x, global1.x)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.d.x), 394f)));
    var var_3 = _wgslsmith_f_op_f32(-arg_0.d.x);
    let var_4 = firstTrailingBit(vec2<i32>(26410i, ~1i));
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.c;
    global2 = array<i32, 3>();
    var var_1 = !(!vec4<bool>(true, select(all(vec3<bool>(true, false, true)), any(vec3<bool>(true, false, true)), func_3(Struct_1(vec3<bool>(false, false, true), true, 1000f, vec2<f32>(867f, -1250f)))), u_input.a < 38481u, true));
    var_1 = select(vec4<bool>(false, var_1.x, !var_1.x, all(select(vec4<bool>(true, true, false, var_1.x), !vec4<bool>(var_1.x, var_1.x, var_1.x, true), var_1.x && false))), !select(vec4<bool>(var_1.x, true, !var_1.x, any(var_1.xx)), vec4<bool>(var_1.x, var_1.x, true | var_1.x, func_3(Struct_1(var_1.xyw, false, 452f, vec2<f32>(-229f, -1565f)))), var_1.x), select(!vec4<bool>(!var_1.x, true, var_1.x, true), vec4<bool>(var_1.x, all(var_1.zy) || func_3(Struct_1(var_1.yxy, false, -746f, vec2<f32>(-101f, -1233f))), all(!vec4<bool>(var_1.x, false, var_1.x, var_1.x)), true), var_1.x));
    var var_2 = global0.yw;
    return Struct_1(select(var_1.wzx, vec3<bool>(false, func_3(Struct_1(var_1.zxz, false, 1762f, vec2<f32>(-1601f, -1430f))), true), select(vec3<bool>(var_1.x == var_1.x, false, all(vec4<bool>(true, var_1.x, true, true))), !select(var_1.ywz, vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, false, var_1.x)), var_1.x || true)), false & var_1.x, -1649f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(502f, 373f) - vec2<f32>(978f, 514f))))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec3<f32>) -> vec4<u32> {
    let var_0 = 0u;
    let var_1 = _wgslsmith_mod_vec2_i32(-_wgslsmith_add_vec2_i32(-select(vec2<i32>(2147483647i, u_input.b), vec2<i32>(-1i, -20327i), arg_0), vec2<i32>(reverseBits(-24164i), -2147483647i)), _wgslsmith_mod_vec2_i32(global1.yy, vec2<i32>(global1.x, -_wgslsmith_mult_i32(3546i, global2[_wgslsmith_index_u32(global0.x, 3u)]))));
    let var_2 = abs(_wgslsmith_mult_vec2_u32(vec2<u32>(select(~arg_1, ~32634u, true), _wgslsmith_add_u32(~global0.x, 1u)), global0.xy));
    global0 = _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(~46991u, 54322u, ~(u_input.a << (4294967295u % 32u)), ~_wgslsmith_mult_u32(4294967295u, global0.x))), ~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0, 0u, var_0, global0.x), ~vec4<u32>(1u, var_2.x, 4294967295u, 24298u))));
    var var_3 = func_2();
    return _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(~_wgslsmith_clamp_u32(arg_1, var_2.x, 0u), ~4294967295u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(22904u, var_0, u_input.c), firstLeadingBit(48203u), u_input.a ^ var_2.x), countOneBits(0u) & var_2.x)), min(_wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.c, 0u, arg_1, arg_1)), vec4<u32>(u_input.a ^ var_2.x, ~var_2.x, max(var_0, 4294967295u), _wgslsmith_sub_u32(25837u, u_input.a))), min(~vec4<u32>(var_2.x, u_input.a, var_2.x, 1u), reverseBits(vec4<u32>(15407u, global0.x, 102857u, 130996u)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: i32) -> Struct_1 {
    global2 = array<i32, 3>();
    global1 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(~select(vec4<i32>(global1.x, -2147483647i, -13895i, global2[_wgslsmith_index_u32(global0.x, 3u)]), vec4<i32>(global2[_wgslsmith_index_u32(49576u, 3u)], u_input.b, arg_1, -2147483647i) | vec4<i32>(u_input.b, global1.x, 0i, global1.x), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), false)), ~vec4<i32>(countOneBits(43683i), i32(-1i) * -2147483647i, firstTrailingBit(global1.x), _wgslsmith_sub_i32(36752i, 2147483647i))), -vec4<i32>(reverseBits(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(101455u, 3u)], u_input.b)), max(global1.x, global2[_wgslsmith_index_u32(24960u, 3u)] << (0u % 32u)), u_input.b, abs(select(2147483647i, 37915i, false))));
    global0 = func_1(func_2().b, ~_wgslsmith_sub_u32(global0.x, global0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1173f), -944f, 244f) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -241f, 1143f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-932f, -992f, 1000f) - vec3<f32>(1023f, -991f, 464f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(340f, 1000f, -516f))))));
    var var_0 = vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, arg_1, -1i, u_input.b), -vec4<i32>(37136i, -2147483647i, global1.x, u_input.b))), _wgslsmith_mult_i32(-42329i, global1.x) & global1.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(1i, max(u_input.b, -2147483647i)), global2[_wgslsmith_index_u32(u_input.a, 3u)] & global2[_wgslsmith_index_u32(arg_0.x, 3u)])), ~_wgslsmith_add_i32(_wgslsmith_sub_i32(abs(u_input.b), abs(arg_1)), -_wgslsmith_add_i32(global1.x, -6720i)));
    let var_1 = Struct_1(!vec3<bool>(true, select(true, false, true) | (67903i <= global2[_wgslsmith_index_u32(0u, 3u)]), true), any(select(vec4<bool>(true, all(vec4<bool>(true, true, false, true)), false, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), true), select(true, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1496f))) + 977f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1221f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(845f, 1961f) * vec2<f32>(547f, -383f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(171f, 1453f))))))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<bool>(false, any(vec3<bool>(true, true, true)), (1u <= global0.x) | (~u_input.c < 0u)), any(!vec4<bool>(all(vec2<bool>(false, true)), true, all(vec2<bool>(true, true)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-315f - -291f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), vec2<f32>(_wgslsmith_f_op_f32(-1f), -664f));
    var var_1 = func_4(_wgslsmith_clamp_vec4_u32(func_1(all(vec3<bool>(true, false, true)), ~global0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, var_0.d.x, var_0.c))) >> (~max(vec4<u32>(4294967295u, u_input.a, 4294967295u, 0u), vec4<u32>(u_input.a, 1u, global0.x, 0u)) % vec4<u32>(32u)), ~func_1(var_0.a.x, reverseBits(global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, -2177f, -1621f))), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x >> (4294967295u % 32u), 1u, ~global0.x, 1u), vec4<u32>(~0u, 0u | global0.x, _wgslsmith_mult_u32(global0.x, 40714u), abs(51365u)), vec4<u32>(u_input.a, 0u, ~global0.x, 1u))), abs(_wgslsmith_div_i32(-49687i, global1.x)));
    global0 = vec4<u32>(abs(countOneBits(u_input.a)), select(_wgslsmith_sub_u32(max(4294967295u, 1u), global0.x), 0u, var_0.a.x), 45090u, ~((_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global0.x), global0.wy) << (reverseBits(u_input.c) % 32u)) >> (firstTrailingBit(8294u) % 32u)));
    global2 = array<i32, 3>();
    let var_2 = 768f;
    var var_3 = Struct_1(var_0.a, true, var_1.c, var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(min(~countOneBits(vec4<u32>(4294967295u, 1u, 4294967295u, 0u)), vec4<u32>(global0.x, ~22438u, ~global0.x, func_1(false, u_input.a, vec3<f32>(1107f, -1000f, 474f)).x)), ~vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(global0.xw, vec2<u32>(28082u, 4294967295u)), ~20185u, ~1u)), -_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(14851i, 12374i, global1.x, global2[_wgslsmith_index_u32(4294967295u, 3u)]) | vec4<i32>(-1i, global2[_wgslsmith_index_u32(32084u, 3u)], global1.x, global1.x), _wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, global1.x, 2147483647i, 1i), vec4<i32>(u_input.b, global2[_wgslsmith_index_u32(1u, 3u)], -30410i, u_input.b))), _wgslsmith_sub_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(global0.x, 3u)], global2[_wgslsmith_index_u32(59738u, 3u)], global1.x, global2[_wgslsmith_index_u32(u_input.a, 3u)]), ~vec4<i32>(12288i, -1i, u_input.b, global1.x))), 1u);
}

