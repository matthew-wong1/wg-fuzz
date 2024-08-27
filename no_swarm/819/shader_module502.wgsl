struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<f32>, 22>;

var<private> global2: vec2<u32> = vec2<u32>(9373u, 77881u);

var<private> global3: bool;

var<private> global4: array<i32, 11> = array<i32, 11>(i32(-2147483648), -1i, 8270i, 0i, 11594i, -15756i, -4395i, 28375i, 2147483647i, -1i, -1i);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: bool) -> vec3<i32> {
    var var_0 = Struct_1(vec2<i32>(global4[_wgslsmith_index_u32(arg_1.x, 11u)], -59750i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.x, _wgslsmith_f_op_f32(max(-535f, arg_2.a.x))) + _wgslsmith_f_op_f32(max(arg_2.a.x, _wgslsmith_f_op_f32(abs(arg_2.a.x))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)) * _wgslsmith_f_op_f32(abs(-1353f))));
    global0 = u_input.b;
    let var_1 = _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, reverseBits(u_input.a.x), reverseBits(-u_input.b), -_wgslsmith_dot_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 11u)], -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(var_0.a.x, u_input.b, var_0.a.x, -18350i))), vec4<i32>(-u_input.a.x, var_0.a.x, global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.xx, arg_0.yw), arg_0.xy), 11u)], -(~(-u_input.b))));
    let var_2 = Struct_1(~_wgslsmith_clamp_vec2_i32(min(var_0.a, u_input.a.yy), _wgslsmith_add_vec2_i32(vec2<i32>(var_1, var_0.a.x), var_0.a), var_0.a) ^ (var_0.a >> (~_wgslsmith_sub_vec2_u32(arg_1.yz, arg_1.xx) % vec2<u32>(32u))), arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(181f)), -1740f, true)) - arg_2.a.x) + -327f));
    let var_3 = vec3<bool>(true, any(vec4<bool>(all(select(vec3<bool>(arg_3, false, arg_3), vec3<bool>(false, arg_3, false), true)), arg_3, false, arg_3 | true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !(!vec4<bool>(arg_3, false, arg_3, arg_3)))));
    return u_input.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> vec2<u32> {
    global0 = countOneBits(_wgslsmith_add_i32(firstLeadingBit(global4[_wgslsmith_index_u32(2135u, 11u)]), -1i)) & ~(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(arg_0, u_input.a), firstTrailingBit(arg_2), arg_2) ^ arg_0.x);
    return _wgslsmith_div_vec2_u32(vec2<u32>(reverseBits(0u), abs(firstLeadingBit(~17512u))), ~(~(~_wgslsmith_add_vec2_u32(vec2<u32>(global2.x, 1u), vec2<u32>(global2.x, 38982u)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: vec2<i32>) -> f32 {
    var var_0 = Struct_1(vec2<i32>(-7155i, 0i) << (func_4(func_3(max(vec4<u32>(19335u, 85077u, global2.x, global2.x), vec4<u32>(global2.x, global2.x, global2.x, 41101u)), vec4<u32>(47451u, global2.x, global2.x, 35496u), Struct_2(vec4<f32>(-454f, -641f, 1000f, 216f)), true), 495f, _wgslsmith_clamp_i32(min(global4[_wgslsmith_index_u32(global2.x, 11u)], 0i), -22266i, ~arg_2.x), Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(535f, -324f, -627f, -1103f), vec4<f32>(-1671f, 170f, 517f, 766f)))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-156f + _wgslsmith_f_op_f32(select(-1548f, -1465f, arg_0.x)))))), -396f);
    global1 = array<vec2<f32>, 22>();
    var var_1 = vec4<i32>(~select(u_input.a.x, -7062i, any(!vec4<bool>(arg_0.x, true, arg_1, false))), countOneBits(_wgslsmith_add_i32(arg_2.x, -u_input.b)) & -2147483647i, ~_wgslsmith_clamp_i32(-2147483647i, ~(-2502i), func_3(~vec4<u32>(17889u, 110219u, 17983u, global2.x), ~vec4<u32>(global2.x, 4294967295u, global2.x, 33027u), Struct_2(vec4<f32>(var_0.c, var_0.c, var_0.b, var_0.b)), var_0.c != 1306f).x), _wgslsmith_mult_i32(0i, firstLeadingBit(_wgslsmith_clamp_i32(select(-5081i, 1i, true), ~35908i, -10633i))));
    var_1 = -_wgslsmith_mult_vec4_i32(firstTrailingBit(max(abs(vec4<i32>(-2147483647i, -10007i, -2147483647i, 2147483647i)), vec4<i32>(0i, -17093i, 0i, u_input.a.x) & vec4<i32>(arg_2.x, arg_2.x, u_input.a.x, global4[_wgslsmith_index_u32(global2.x, 11u)]))), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(global2.x, 11u)], arg_2.x, global4[_wgslsmith_index_u32(global2.x, 11u)], var_0.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -13472i, global4[_wgslsmith_index_u32(4294967295u, 11u)], 1i), vec4<i32>(arg_2.x, 22635i, -2147483647i, var_1.x)), min(vec4<i32>(-1i, global4[_wgslsmith_index_u32(28862u, 11u)], arg_2.x, u_input.b), vec4<i32>(-1i, 0i, -11651i, var_0.a.x)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_0.c))))) - -1197f);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1432f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1366f)) + 156f))));
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -934f), -2577f, _wgslsmith_div_f32(-759f, 619f)) - vec4<f32>(_wgslsmith_f_op_f32(func_2(vec2<bool>(false, true), arg_0.x, u_input.a.yx)), -268f, 1300f, _wgslsmith_f_op_f32(700f + -382f)))));
    var var_1 = vec3<i32>(global4[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(65484u, global2.x >> (0u % 32u))), 11u)], ~14313i << (select(41318u, reverseBits(~1u), true) % 32u), abs(-((2147483647i << (global2.x % 32u)) & -2147483647i)));
    var var_2 = Struct_1(-vec2<i32>(firstLeadingBit(24666i), 39825i << (~4294967295u % 32u)), -1374f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.a.x, 160f), _wgslsmith_f_op_f32(trunc(-913f)))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-173f, -220f, 888f, var_0.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.b, 297f, -486f, var_0.a.x))))), _wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_0.a, vec4<f32>(143f, -630f, 583f, var_0.a.x))))))));
    var var_4 = Struct_1(_wgslsmith_mult_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.b), u_input.a.zy) & u_input.a.zz, var_2.a), _wgslsmith_f_op_f32(var_3.a.x + _wgslsmith_div_f32(var_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-226f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_0.a.x, -210f)), _wgslsmith_f_op_f32(ceil(528f))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.c, -1000f, arg_0.x)));
}

fn func_5(arg_0: u32, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: Struct_2) -> StorageBuffer {
    global1 = array<vec2<f32>, 22>();
    return StorageBuffer(~arg_1.x ^ _wgslsmith_sub_u32(~4294967295u, global2.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1466f, arg_3.a.x, -504f))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(arg_3.a.xwz, arg_3.a.zwx))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1301f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-224f, -653f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1581f - -120f))), 1f)));
    let x = u_input.a;
    s_output = func_5(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(34533u, 45235u), ~69060u), 1u, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(global2.x, global2.x, 0u)), ~vec3<u32>(global2.x, 4294967295u, 6540u)), ~global2.x), vec4<u32>(55340u, ~24389u, ~4294967295u | ~global2.x, min(1u, 0u))), ~vec2<u32>(~global2.x << (global2.x % 32u), ~1u ^ global2.x), ~(~abs(reverseBits(vec3<u32>(global2.x, 1u, global2.x)))), Struct_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(643f + var_0.a.x), _wgslsmith_f_op_f32(func_1(vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_0.a.x)), _wgslsmith_f_op_f32(round(var_0.a.x)))), var_0.a.x)));
}

