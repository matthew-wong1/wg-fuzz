struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
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

var<private> global0: Struct_2;

var<private> global1: f32 = 819f;

var<private> global2: array<u32, 14>;

var<private> global3: array<Struct_1, 21>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = vec3<i32>(0i, ~global0.a, ~(-1i) | arg_1);
    var var_1 = _wgslsmith_clamp_i32(-(var_0.x >> (~(u_input.b.x & 1963u) % 32u)), arg_1, var_0.x);
    var var_2 = 3528f;
    var var_3 = Struct_2(var_0.x, Struct_1(661f));
    let var_4 = select(_wgslsmith_mod_vec2_i32(reverseBits(_wgslsmith_mod_vec2_i32(~vec2<i32>(global0.a, global0.a), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.a, arg_1), var_0.zy))), vec2<i32>(2147483647i, ~(-29677i))), _wgslsmith_sub_vec2_i32(countOneBits(var_0.xz & vec2<i32>(arg_1, -30i)), vec2<i32>(~firstTrailingBit(-58232i), ~(-2147483647i))), vec2<bool>(true != any(vec3<bool>(false, true, false)), !select(false, true, true)));
    return ~max(arg_1, arg_1);
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> vec3<i32> {
    let var_0 = Struct_2(~_wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(global0.a, 29015i), vec2<i32>(26741i, arg_0.x)), vec2<i32>(reverseBits(61985i), i32(-1i) * -1i)), Struct_1(arg_2.a));
    global2 = array<u32, 14>();
    var var_1 = arg_1;
    let var_2 = arg_2;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1280f, _wgslsmith_f_op_f32(1054f * _wgslsmith_f_op_f32(arg_3 * 1343f)))), _wgslsmith_f_op_f32(f32(-1f) * -997f))) * _wgslsmith_div_f32(arg_3, -470f));
    return ~arg_0;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: Struct_1) -> vec3<i32> {
    return func_4(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, firstLeadingBit(~7399i), -2147483647i), vec3<i32>(1i, i32(-1i) * -global0.a, ~func_3(324f, -35135i, Struct_1(152f)))), all(select(vec3<bool>(any(vec2<bool>(true, true)), -17234i > arg_2.x, true), vec3<bool>(true, true, true), all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))))), global0.b, arg_3.a);
}

fn func_5(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = ~(~(~vec2<u32>(firstLeadingBit(global2[_wgslsmith_index_u32(u_input.b.x, 14u)]), u_input.a.x)));
    var var_1 = vec3<f32>(531f, 3001f, _wgslsmith_f_op_f32(-global0.b.a));
    let var_2 = ~1i;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_1.x)), -742f, true))));
    var var_4 = Struct_2(1i, global0.b);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.b.a * _wgslsmith_f_op_f32(arg_0.a + -560f)))))), -1246f);
    var var_0 = Struct_2(-abs(_wgslsmith_mult_i32(global0.a, global0.a) & -global0.a), Struct_1(_wgslsmith_f_op_f32(sign(-1432f))));
    let var_1 = 0i;
    var var_2 = -(~2147483647i);
    global1 = 815f;
    return func_5(_wgslsmith_mod_vec3_i32(-_wgslsmith_add_vec3_i32(min(vec3<i32>(2147483647i, 1i, var_0.a), vec3<i32>(var_0.a, 9516i, -2147483647i)), func_2(global0.b.a, vec2<f32>(412f, -584f), vec4<i32>(var_1, global0.a, global0.a, var_0.a), global3[_wgslsmith_index_u32(u_input.b.x, 21u)])), reverseBits(-_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a, global0.a, var_0.a), vec3<i32>(global0.a, -2147483647i, var_0.a)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(419f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1434f - global0.b.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-665f * _wgslsmith_f_op_f32(f32(-1f) * -972f))))));
    return func_6(func_5(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1125f, global0.b.a)) + _wgslsmith_div_f32(613f, global0.b.a)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.a, 572f) * vec2<f32>(global0.b.a, -1000f)), vec2<f32>(1000f, 486f))), _wgslsmith_add_vec4_i32(vec4<i32>(arg_2.x, global0.a, 0i, -1i), ~vec4<i32>(global0.a, 2147483647i, global0.a, -39548i)), global0.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-1133f * -850f), _wgslsmith_f_op_f32(select(global0.b.a, -202f, false)), global0.b.a, _wgslsmith_f_op_f32(step(-855f, -157f))))), vec4<f32>(_wgslsmith_div_f32(-177f, -121f), _wgslsmith_f_op_f32(global0.b.a + _wgslsmith_f_op_f32(arg_1.a - 1000f)), _wgslsmith_f_op_f32(-global0.b.a), global0.b.a)));
}

fn func_7(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>) -> f32 {
    global3 = array<Struct_1, 21>();
    global2 = array<u32, 14>();
    var var_0 = Struct_2(firstTrailingBit(_wgslsmith_mod_i32(~2147483647i, -1i >> (u_input.a.x % 32u)) << (~1u % 32u)), arg_0);
    var var_1 = any(select(vec3<bool>(false, _wgslsmith_f_op_f32(select(arg_2.x, var_0.b.a, false)) < _wgslsmith_f_op_f32(-var_0.b.a), all(vec4<bool>(false, false, arg_1, true))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(false, arg_1, true), true)), vec3<bool>(!arg_1, true, any(vec2<bool>(false, arg_1))), arg_1), vec3<bool>(true, true, arg_1)));
    global0 = Struct_2(var_0.a, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-678f, -273f)), global0.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(875f, global0.b.a))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-638f, -1000f)) + _wgslsmith_f_op_f32(func_6(func_5(_wgslsmith_add_vec3_i32(vec3<i32>(-49598i, -2147483647i, var_0.a), vec3<i32>(global0.a, 0i, -34637i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-653f, arg_0.a, 2317f, 150f)) - _wgslsmith_f_op_vec4_f32(ceil(arg_2)))).a + _wgslsmith_f_op_f32(-var_0.b.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b.a * -1109f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.a + _wgslsmith_f_op_f32(func_7(func_1(vec3<bool>(var_0, var_0, true), Struct_1(-981f), vec3<i32>(global0.a, global0.a, global0.a)), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-317f, -185f, global0.b.a, global0.b.a))))))));
    let var_2 = vec4<bool>(!(_wgslsmith_div_i32(max(global0.a, global0.a), -2147483647i) < (i32(-1i) * -global0.a)), var_0, true, var_0);
    var var_3 = _wgslsmith_f_op_f32(-262f * 1963f);
    var var_4 = -(-_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(global0.a, global0.a)), firstLeadingBit(vec2<i32>(-1i, global0.a))) | _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(global0.a, -15421i)), -vec2<i32>(global0.a, 17927i)));
    var_4 = firstTrailingBit(vec2<i32>(1i, -select(2147483647i, 14053i, var_2.x)));
    let var_5 = 1i;
    let var_6 = !(!select(select(select(vec4<bool>(false, false, var_2.x, var_2.x), vec4<bool>(true, true, var_0, true), var_2), var_2, !vec4<bool>(var_0, false, true, var_2.x)), vec4<bool>(var_2.x, all(var_2.wzy), var_5 >= -2147483647i, var_2.x), false));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_4.x ^ var_5, var_4.x));
}

