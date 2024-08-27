struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: u32;

var<private> global2: array<u32, 23>;

var<private> global3: f32 = 1281f;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: u32, arg_3: i32) -> vec4<i32> {
    var var_0 = vec4<i32>(abs(_wgslsmith_mult_i32(-24045i, -(~u_input.a))), ~24148i, -u_input.a, ~(~_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-1i, -1i)), arg_0.wy ^ vec2<i32>(arg_0.x, -45701i))));
    let var_1 = (firstLeadingBit(arg_0.x) & u_input.c) > (1i | _wgslsmith_clamp_i32(~_wgslsmith_mult_i32(-1i, arg_3), -firstLeadingBit(-1i), _wgslsmith_add_i32(countOneBits(u_input.d), arg_0.x)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 637f, global0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -2362f, global0.x) * vec3<f32>(-473f, global0.x, -1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1000f, global0.x) + vec3<f32>(global0.x, global0.x, 173f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(890f, global0.x, global0.x) + vec3<f32>(416f, 484f, -1563f)))))));
    let var_2 = u_input.b;
    var_0 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(arg_0.ww, -vec2<i32>(2147483647i, arg_0.x)), _wgslsmith_add_i32(2466i, arg_3)), -2147483647i, -2147483647i, -2147483647i);
    return arg_0;
}

fn func_2(arg_0: vec4<f32>) -> vec4<i32> {
    let var_0 = true;
    let var_1 = Struct_3(select(true, true, all(vec4<bool>(true, true, true, true))));
    global2 = array<u32, 23>();
    let var_2 = vec4<bool>(true, var_0, arg_0.x > global0.x, 16657u != u_input.b);
    var var_3 = Struct_2(abs(~func_3(vec4<i32>(u_input.c, -1i, -51512i, 0i) >> (vec4<u32>(u_input.b, 28525u, 37552u, u_input.b) % vec4<u32>(32u)), vec2<u32>(10753u, 124103u), ~global2[_wgslsmith_index_u32(56513u, 23u)], _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, -34387i)))), Struct_1(-1343f, -1i, vec4<bool>(!var_1.a == true, var_2.x, all(vec4<bool>(var_1.a, var_2.x, false, false)), var_0 | var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -1711f), u_input.b), Struct_1(_wgslsmith_f_op_f32(trunc(-168f)), -2147483647i, var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * 1f)), u_input.b), Struct_1(global0.x, _wgslsmith_mult_i32(u_input.c >> (~u_input.b % 32u), -(u_input.d << (12329u % 32u))), vec4<bool>(!all(var_2.xx), var_1.a || true, firstTrailingBit(u_input.b) == global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, 8673u), 23u)], !any(var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1483f, arg_0.x))), _wgslsmith_mult_u32((7602u >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 23u)], 23u)] % 32u)) >> (0u % 32u), 26248u)));
    return -(vec4<i32>(var_3.b.b, -5540i | (u_input.d >> (var_3.d.e % 32u)), 1i, var_3.b.b) | var_3.a);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_2(vec4<i32>(_wgslsmith_mod_i32(firstLeadingBit(-33773i), ~2147483647i) & func_3(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -9948i, -2147483647i, 14062i), arg_0), min(vec2<u32>(global2[_wgslsmith_index_u32(u_input.b, 23u)], 1u), vec2<u32>(global2[_wgslsmith_index_u32(1290u, 23u)], 56295u)), global2[_wgslsmith_index_u32(0u, 23u)], arg_0.x).x, abs(arg_0.x), max(~15126i, -(~(-1935i))), _wgslsmith_mod_i32(u_input.d, _wgslsmith_dot_vec3_i32(arg_0.yzx, arg_0.xwx)) << (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, u_input.b), select(36107u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13559u, 23u)], 23u)], 23u)], true), u_input.b) % 32u)), Struct_1(_wgslsmith_f_op_f32(-arg_1.x), arg_0.x, !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)), false), -1238f, ~(~(~global2[_wgslsmith_index_u32(u_input.b, 23u)]))), Struct_1(-2546f, -arg_0.x, select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(select(true, false, false), u_input.d != u_input.d, false, true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1228f))), ~(_wgslsmith_clamp_u32(74609u, u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 23u)], 23u)]) << (_wgslsmith_mod_u32(u_input.b, 13779u) % 32u))), Struct_1(-1418f, ~(-24292i), select(vec4<bool>(true, true, true, true), vec4<bool>(u_input.a == arg_0.x, true, true, arg_0.x > -3848i), true), 1271f, 47553u));
    let var_1 = var_0;
    var var_2 = 12747u;
    var var_3 = ~(~17569u);
    return var_0.d;
}

fn func_1(arg_0: vec4<f32>, arg_1: f32) -> f32 {
    global1 = _wgslsmith_dot_vec3_u32(reverseBits(~abs(vec3<u32>(74308u, u_input.b, global2[_wgslsmith_index_u32(43053u, 23u)])) ^ reverseBits(~vec3<u32>(0u, global2[_wgslsmith_index_u32(12012u, 23u)], global2[_wgslsmith_index_u32(u_input.b, 23u)]))), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_add_u32(17655u, u_input.b), 0u, global2[_wgslsmith_index_u32(35009u, 23u)] << (u_input.b % 32u)), _wgslsmith_add_vec3_u32(~vec3<u32>(1382u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)]), _wgslsmith_clamp_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28391u, 23u)], 23u)], 0u), vec3<u32>(1u, 62866u, u_input.b), vec3<u32>(21040u, u_input.b, u_input.b)))), ~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], 12419u, global2[_wgslsmith_index_u32(28387u, 23u)]) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)]), vec3<u32>(u_input.b, 1286u, u_input.b) & vec3<u32>(56152u, 26037u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20819u, 23u)], 23u)])) % vec3<u32>(32u))));
    let var_0 = func_4(-func_2(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 459f, arg_1, arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.x, 735f, global0.x)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.xxy) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_0.x)))))), 397f);
    global1 = global2[_wgslsmith_index_u32(1u, 23u)];
    let var_1 = vec4<bool>(var_0.c.x, true | any(func_4(vec4<i32>(2147483647i, 39944i, 15063i, -60940i) | vec4<i32>(var_0.b, 2147483647i, 2147483647i, var_0.b), _wgslsmith_f_op_vec3_f32(arg_0.wxx + vec3<f32>(822f, arg_0.x, 1179f)), 311f).c.wxz), all(!(!var_0.c.wx)), true);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_0)));
    return var_2.x;
}

fn func_5(arg_0: bool, arg_1: vec4<i32>) -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, global0.x, 857f, -2532f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1364f))))), global0.x));
    let var_0 = arg_1.x;
    var var_1 = func_4(arg_1, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1167f, 1694f, 401f) * vec3<f32>(global0.x, global0.x, -1000f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + vec3<f32>(-379f, -354f, -247f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1028f, 567f, 1055f))) * vec3<f32>(global0.x, -1000f, -1932f)))), global0.x);
    var_1 = func_4(~(-select(arg_1, firstLeadingBit(vec4<i32>(var_0, arg_1.x, -15555i, u_input.a)), select(vec4<bool>(var_1.c.x, var_1.c.x, arg_0, false), var_1.c, var_1.c))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-968f, -362f, 1558f)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, global0.x, 394f))))))), _wgslsmith_f_op_f32(sign(global0.x)));
    var var_2 = Struct_3(all(!var_1.c));
    return (all(!func_4(arg_1, vec3<f32>(var_1.a, var_1.d, -1301f), 413f).c.xxx) & true) && any(!(!var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_5(-1224f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<f32>(global0.x, -615f, 1094f, 1530f), global0.x)) * _wgslsmith_f_op_f32(func_1(vec4<f32>(global0.x, global0.x, global0.x, global0.x), global0.x))), abs(vec4<i32>(u_input.a, u_input.a, -2147483647i, i32(-1i) * -53220i))));
    let var_1 = _wgslsmith_f_op_f32(-1f);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -2850f, global0.x)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, global0.x, var_1))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(824f, var_1, -342f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, -172f, -1499f), vec3<f32>(global0.x, 261f, global0.x), var_0.a)) - vec3<f32>(var_1, 1041f, -1406f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-325f, -447f, global0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-747f, global0.x, -1918f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(816f, global0.x, var_1))))));
    let var_2 = vec2<bool>(true, true);
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, var_1, var_1), vec3<f32>(-628f, 1696f, -1135f), var_0.a)) - vec3<f32>(248f, 1105f, 343f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1862f, global0.x, 1000f)))))), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-353f, global0.x))), ~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(global2[_wgslsmith_index_u32(1u, 23u)], 0u)), reverseBits(vec2<u32>(u_input.b, global2[_wgslsmith_index_u32(42170u, 23u)]))), max(vec2<u32>(26819u, 67982u), _wgslsmith_mult_vec2_u32(vec2<u32>(1732u, 84027u), vec2<u32>(52909u, 0u)))));
}

