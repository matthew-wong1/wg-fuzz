struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(27837u, 4294967295u, 41758u);

var<private> global1: f32 = 1039f;

var<private> global2: f32;

var<private> global3: vec4<f32> = vec4<f32>(-225f, -782f, 464f, -1324f);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> u32 {
    global0 = _wgslsmith_sub_vec3_u32(~((_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, 40660u), vec3<u32>(arg_0.a, 23449u, global0.x)) >> (firstTrailingBit(u_input.a.zzy) % vec3<u32>(32u))) >> (~(~vec3<u32>(13400u, global0.x, u_input.a.x)) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(vec3<u32>(~(~arg_0.a), global0.x, 9841u), _wgslsmith_add_vec3_u32(u_input.a.zyz, _wgslsmith_mod_vec3_u32(~u_input.a.xxw, vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)))));
    global1 = -2106f;
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(round(global3.x)), -202f, global3.x))), vec4<f32>(-1753f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.x, global3.x)) * 724f)), -765f, global3.x), false));
    let var_1 = Struct_1(arg_0.a, 0u & abs(~0u | u_input.a.x));
    var var_2 = arg_0;
    return ~countOneBits(abs(~(~1u)));
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(reverseBits(u_input.a.x >> (21681u % 32u)), 0u), u_input.a.x), 31231u << (global0.x % 32u));
    var var_1 = Struct_1(~_wgslsmith_mod_u32(66843u, ~_wgslsmith_sub_u32(0u, u_input.a.x)), ~19058u);
    let var_2 = global3.x;
    var var_3 = Struct_1((~select(4294967295u, 26019u, true) & ~_wgslsmith_mod_u32(u_input.a.x, global0.x)) << (1u % 32u), _wgslsmith_add_u32(func_3(Struct_1(u_input.a.x, ~u_input.a.x), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(true, true), true))), _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(~u_input.a.x, ~0u))));
    let var_4 = !all(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(1223f, _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * 365f)), _wgslsmith_f_op_f32(-1562f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2124f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1167f - global3.x), -1011f))));
}

fn func_1() -> u32 {
    global3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.x, global3.x, global3.x, global3.x))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, 1016f, 1813f))))), vec4<f32>(-464f, global3.x, _wgslsmith_f_op_f32(1138f * global3.x), -718f), select(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), select(vec4<bool>(select(false, false, true), true, false, true), vec4<bool>(true, true, 920f < global3.x, true), vec4<bool>(true, true, true, true)), !any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false))))));
    let var_0 = _wgslsmith_mult_u32(u_input.a.x, firstTrailingBit(firstTrailingBit(u_input.a.x)));
    return abs(1u);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: i32) -> i32 {
    global0 = _wgslsmith_add_vec3_u32(~(~firstLeadingBit(vec3<u32>(21887u, arg_1, global0.x)) | firstTrailingBit(vec3<u32>(0u, 4294967295u, 4294967295u) >> (vec3<u32>(global0.x, global0.x, 40264u) % vec3<u32>(32u)))), ~(~abs(u_input.a.yyy)));
    var var_0 = arg_0;
    var var_1 = min(firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(~97042i, arg_3), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3, arg_3), vec2<i32>(1i, 2147483647i)), arg_3), arg_3, 2147483647i)), ~reverseBits(~vec4<i32>(-2964i, arg_3, 38613i, 1i)) | _wgslsmith_div_vec4_i32(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(arg_3, 2147483647i, arg_3, -29164i), vec4<i32>(arg_3, arg_3, arg_3, 31751i))), (vec4<i32>(arg_3, 39976i, arg_3, -23941i) | vec4<i32>(16035i, arg_3, -2147483647i, arg_3)) >> (max(u_input.a, u_input.a) % vec4<u32>(32u))));
    let var_2 = !all(vec4<bool>(arg_2, 403f > global3.x, select(true, any(vec3<bool>(true, false, true)), true), func_3(arg_0, vec2<bool>(false, arg_2)) > ~arg_0.b));
    let var_3 = select(_wgslsmith_add_u32(_wgslsmith_clamp_u32(var_0.a, u_input.a.x, 0u), 41365u), 1u, !arg_2);
    return _wgslsmith_add_i32(arg_3, max(var_1.x >> (global0.x % 32u), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 275f;
    var var_0 = vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(~vec2<i32>(1i, 1i), vec2<i32>(1i, 1i) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)));
    global2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(427f, _wgslsmith_f_op_f32(trunc(global3.x)))), -805f));
    var var_1 = -func_4(Struct_1(select(_wgslsmith_sub_u32(global0.x, 29155u), 23391u, false), u_input.a.x), u_input.a.x, false, firstTrailingBit(-55984i) >> (func_1() % 32u));
    var var_2 = Struct_1(u_input.a.x & global0.x, u_input.a.x & _wgslsmith_add_u32(global0.x << (u_input.a.x % 32u), ~global0.x));
    var var_3 = vec2<bool>((select(13280i, select(-1i, 2147483647i, false), true) >= 6516i) != all(vec3<bool>(true, true, true)), _wgslsmith_mult_u32(~(~u_input.a.x), min(var_2.b, u_input.a.x)) < _wgslsmith_dot_vec4_u32(firstTrailingBit(min(vec4<u32>(4294967295u, 4294967295u, 4294967295u, var_2.a), u_input.a)), _wgslsmith_div_vec4_u32(~vec4<u32>(var_2.b, global0.x, 4294967295u, global0.x), vec4<u32>(global0.x, 28360u, 0u, 39293u))));
    var_0 = vec2<i32>(1i, var_0.x);
    let var_4 = 0i;
    var_1 = _wgslsmith_add_i32(countOneBits(max(abs(var_0.x), var_4)), ~(-var_0.x & -(~var_4)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(func_2()), 2511u);
}

