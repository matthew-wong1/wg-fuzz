struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-19577i, -22938i);

var<private> global1: bool = false;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>) -> vec2<bool> {
    var var_0 = Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-1334f * -932f))), false)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(421f + -206f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-257f * -1000f))))), true);
    let var_1 = true;
    var var_2 = vec2<bool>(select(true & var_0.c, !var_0.c, true), !var_1);
    global0 = u_input.a;
    var_0 = Struct_1(!(!vec2<bool>(false, -906f == var_0.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b + 984f), -1206f), var_0.b))), 0i < _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -46251i, global0.x, -global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 27020i, u_input.a.x, 4780i), vec4<i32>(global0.x, 4356i, global0.x, 2147483647i))), select(vec4<i32>(global0.x, -1i, 0i, u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(1676i, global0.x, global0.x, -1i), vec4<i32>(8500i, -2147483647i, -1i, -37133i)), !vec4<bool>(var_1, true, var_2.x, true))));
    return select(select(select(vec2<bool>(var_2.x, any(vec4<bool>(var_0.c, false, var_0.a.x, false))), var_0.a, vec2<bool>(false, true)), !select(select(var_0.a, var_0.a, false), vec2<bool>(var_1, var_1), var_2.x | true), !(!(!vec2<bool>(var_1, false)))), vec2<bool>(all(vec2<bool>(!var_1, true)), !(-1174f == _wgslsmith_f_op_f32(-var_0.b))), !vec2<bool>(true, u_input.a.x > firstLeadingBit(2147483647i)));
}

fn func_2() -> Struct_1 {
    global0 = countOneBits(vec2<i32>(~2147483647i, global0.x));
    let var_0 = Struct_1(func_3(vec2<u32>(firstLeadingBit(~1u), 1u)), 976f, select(true, _wgslsmith_dot_vec4_i32(vec4<i32>(-719i, u_input.a.x, 20624i, -8065i), select(vec4<i32>(29880i, u_input.a.x, global0.x, global0.x), vec4<i32>(24429i, -1i, global0.x, u_input.a.x), false)) <= -50112i, !(true && (1i != global0.x))));
    var var_1 = min(~_wgslsmith_div_u32(~(~1u), 1u), countOneBits(_wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(0u, 1u)), vec2<u32>(1u, 1u))));
    var var_2 = -15666i;
    let var_3 = Struct_1(vec2<bool>(false, var_0.a.x), -1026f, min(-18368i, abs(_wgslsmith_sub_i32(u_input.a.x, 0i))) != u_input.a.x);
    return Struct_1(!func_3(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), reverseBits(vec2<u32>(464u, 26148u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(175f, 1088f))) - var_3.b), abs(-33577i) >= global0.x);
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = func_2();
    return -vec4<i32>(0i, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, ~arg_0), _wgslsmith_sub_i32(u_input.a.x << (arg_1.x % 32u), max(-42283i, 42489i))), -2147483647i, ~countOneBits(32263i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_i32(-func_1(35330i, vec2<u32>(1u, 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(736f, 561f) * vec2<f32>(235f, -208f)) - vec2<f32>(1219f, 228f)), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(536f + -309f), true)), vec4<i32>(-_wgslsmith_clamp_i32(u_input.a.x & global0.x, global0.x, ~u_input.a.x), _wgslsmith_dot_vec4_i32(-firstTrailingBit(vec4<i32>(-6493i, -2147483647i, global0.x, 13844i)), -(vec4<i32>(u_input.a.x, -1089i, u_input.a.x, 37476i) << (vec4<u32>(0u, 10311u, 89255u, 4294967295u) % vec4<u32>(32u)))), ~_wgslsmith_clamp_i32(reverseBits(global0.x), countOneBits(30379i), u_input.a.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(global0.x, global0.x, 14875i, -29504i) >> (min(vec4<u32>(0u, 0u, 1270u, 54470u), vec4<u32>(1291u, 1u, 79885u, 1u)) % vec4<u32>(32u)), abs(vec4<i32>(0i, -2147483647i, 1i, u_input.a.x)))), vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, 1i & global0.x), global0.x, min(-1i, select(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-19185i, global0.x), u_input.a), all(vec4<bool>(true, true, true, true)))), -2147483647i));
    global1 = false;
    let var_1 = Struct_1(vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), any(vec2<bool>(false, true)))), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_f_op_f32(floor(1481f))), true);
    global0 = firstTrailingBit(_wgslsmith_clamp_vec2_i32(-var_0.zw, _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(var_0.x, u_input.a.x)) | ~(-var_0.yx), var_0.ww));
    global0 = u_input.a;
    global1 = false;
    global1 = (max(_wgslsmith_clamp_u32(4294967295u, ~0u, _wgslsmith_mult_u32(8772u, 0u)), _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(4294967295u, 0u))) & ~min(1u, ~56441u)) > 0u;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

