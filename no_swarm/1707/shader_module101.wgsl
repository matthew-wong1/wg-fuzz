struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
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

var<private> global0: array<Struct_1, 13>;

var<private> global1: i32;

var<private> global2: vec3<i32>;

var<private> global3: bool = false;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = 14625u;
    let var_1 = -(vec4<i32>(-1i) * -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-56698i, 0i, u_input.d.x, -39563i), vec4<i32>(-7635i, u_input.d.x, u_input.d.x, global2.x), vec4<i32>(u_input.d.x, 0i, 2147483647i, u_input.d.x))));
    let var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -320f))), 1990f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-870f, 1053f, true)) - _wgslsmith_f_op_f32(min(346f, 771f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2124f * -561f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-418f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1017f, 1367f, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-391f)))))));
    var var_3 = Struct_1(vec3<bool>(true, !any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), all(vec2<bool>(true, true))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1396f))), var_2.x), select(~(~global2.zx), u_input.d, any(select(vec2<bool>(true, false), vec2<bool>(false, true), false))) & _wgslsmith_div_vec2_i32(-vec2<i32>(2147483647i, u_input.d.x), countOneBits(_wgslsmith_add_vec2_i32(global2.zy, vec2<i32>(global2.x, 46370i)))), u_input.a.x, !(_wgslsmith_f_op_f32(f32(-1f) * -957f) > var_2.x));
    var var_4 = var_3.a.xx;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1742f) * var_3.b.x));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> i32 {
    let var_0 = Struct_1(!(!vec3<bool>(false, true, any(vec3<bool>(false, false, false)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 2703f) + vec2<f32>(-285f, arg_0)))))), vec2<i32>(~15331i, abs(select(14775i, ~global2.x, true))), 0u, all(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_1 = countOneBits(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_0.d, 0u), 48706u, 0u), min(firstLeadingBit(20922u), ~21960u)), _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.b, arg_1.xy), select(var_0.d, var_0.d, var_0.e)), ~_wgslsmith_div_u32(0u, 65862u)), 6839u, select(_wgslsmith_dot_vec3_u32(u_input.a.wzz, u_input.a.zxz) | _wgslsmith_clamp_u32(var_0.d, arg_1.x, 52958u), select(u_input.a.x, 12987u, false), true)));
    let var_2 = ~(arg_1.x << (u_input.b.x % 32u));
    var var_3 = Struct_1(!vec3<bool>(true, !var_0.e, var_0.a.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(584f + 553f)) - var_0.b.x), _wgslsmith_f_op_f32(-arg_0)), var_0.c, ~95917u ^ u_input.c, true);
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.x, var_0.b.x) - vec2<f32>(-381f, -1000f)), vec2<f32>(arg_0, var_3.b.x), true)) + var_3.b)) - _wgslsmith_f_op_vec2_f32(trunc(var_0.b)));
    return var_3.c.x;
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    let var_0 = vec2<u32>(u_input.b.x, 0u);
    global2 = vec3<i32>(u_input.d.x & -abs(func_2(490f, vec4<u32>(29591u, 1u, 2109u, u_input.c))), u_input.d.x, 0i);
    var var_1 = arg_0;
    var var_2 = -2147483647i;
    var var_3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-16623i, select(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, global2.x), vec3<i32>(-1i, -31933i, u_input.d.x)), ~u_input.d.x, !var_1.x), -1870i | _wgslsmith_mod_i32(global2.x, u_input.d.x)), ~_wgslsmith_sub_vec3_i32(select(vec3<i32>(global2.x, u_input.d.x, u_input.d.x), vec3<i32>(-2147483647i, -2147483647i, 18412i), vec3<bool>(var_1.x, false, false)), _wgslsmith_sub_vec3_i32(vec3<i32>(-26522i, 1i, u_input.d.x), vec3<i32>(u_input.d.x, 1322i, global2.x))), vec3<i32>(u_input.d.x, 2147483647i, countOneBits(countOneBits(-7171i)))) | _wgslsmith_div_vec3_i32(~(~vec3<i32>(1i, global2.x, global2.x)), ~((vec3<i32>(global2.x, u_input.d.x, -2147483647i) | vec3<i32>(u_input.d.x, global2.x, u_input.d.x)) >> (~vec3<u32>(u_input.a.x, var_0.x, var_0.x) % vec3<u32>(32u))));
    return -_wgslsmith_clamp_i32(reverseBits(2147483647i), -4156i, firstTrailingBit(10827i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 13>();
    let var_0 = Struct_1(vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))) & all(vec3<bool>(true, true, true)), true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -550f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-504f, _wgslsmith_f_op_f32(sign(-390f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1637f, 248f)))), vec2<i32>(func_1(vec2<bool>(false, true)), -3797i), _wgslsmith_dot_vec3_u32(~vec3<u32>(32934u, max(0u, 1u), u_input.c), firstLeadingBit(min(~vec3<u32>(48831u, 0u, u_input.a.x), ~vec3<u32>(u_input.a.x, u_input.b.x, 23840u)))), false);
    var var_1 = u_input.d.x;
    let var_2 = vec2<u32>(max(~u_input.a.x, 4294967295u & (var_0.d & u_input.b.x)), _wgslsmith_add_u32(u_input.a.x, _wgslsmith_clamp_u32(49420u, 9627u, abs(_wgslsmith_mult_u32(u_input.a.x, u_input.b.x)))));
    var var_3 = global0[_wgslsmith_index_u32(u_input.b.x, 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(min(2147483647i, -13818i));
}

