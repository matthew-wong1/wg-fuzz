struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<bool>, 6>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(trunc(-1292f));
    global1 = Struct_1(!select(!arg_2.a, !(!vec4<bool>(false, global1.a.x, false, global1.a.x)), arg_2.b), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.e, _wgslsmith_mod_vec3_i32(~arg_1, ~global1.b)), -(vec3<i32>(-1i) * -global1.b)));
    var var_1 = Struct_2(arg_2.a, all(global2[_wgslsmith_index_u32(~u_input.d, 6u)]));
    var var_2 = -(select(select(vec4<i32>(-1i, 2147483647i, u_input.e.x, -1i), vec4<i32>(26279i, arg_1.x, global1.b.x, arg_1.x), vec4<bool>(true, true, true, global1.a.x)), vec4<i32>(global1.b.x, arg_1.x, -3797i, 1i) >> (vec4<u32>(u_input.d, 0u, u_input.d, u_input.d) % vec4<u32>(32u)), false) >> (~abs(vec4<u32>(926u, 30530u, u_input.d, u_input.d)) % vec4<u32>(32u))) & countOneBits(abs(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(-11679i, -88i, global1.b.x, global1.b.x)), vec4<i32>(2147483647i, u_input.e.x, -37597i, arg_1.x) << (vec4<u32>(68045u, u_input.d, 40315u, 30366u) % vec4<u32>(32u)))));
    var var_3 = _wgslsmith_div_i32(var_2.x, global1.b.x);
    return arg_2;
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> bool {
    let var_0 = !vec3<bool>(true, global1.a.x, any(vec4<bool>(any(arg_1.a.wy), false, false, global1.a.x)));
    global2 = array<vec3<bool>, 6>();
    global0 = array<Struct_2, 6>();
    let var_1 = global1.b.x;
    let var_2 = -_wgslsmith_mod_i32(1i, -global1.b.x);
    return arg_1.a.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> bool {
    global1 = Struct_1(vec4<bool>(global1.a.x, false, true, !(!(global1.a.x != false))), firstLeadingBit(global1.b));
    global1 = Struct_1(vec4<bool>(!func_3(_wgslsmith_div_u32(47527u, 94381u), func_2(-893f, vec3<i32>(global1.b.x, arg_1.b.x, u_input.a.x), Struct_2(arg_1.a, false)), min(70018i, 0i), arg_1), func_3(~_wgslsmith_sub_u32(arg_3, arg_3), Struct_2(!arg_1.a, all(arg_1.a.xwx)), ~0i, Struct_1(vec4<bool>(arg_2, arg_2, true, false), ~global1.b)), !arg_2, !func_3(44520u << (arg_0.x % 32u), Struct_2(vec4<bool>(arg_2, arg_1.a.x, arg_2, false), true), i32(-1i) * -28193i, Struct_1(vec4<bool>(false, arg_1.a.x, false, false), arg_1.b))), vec3<i32>(_wgslsmith_div_i32(arg_1.b.x | -1i, _wgslsmith_add_i32(-1i, global1.b.x)) ^ -3468i, global1.b.x, abs(-28098i)));
    let var_0 = Struct_2(select(!func_2(-566f, max(vec3<i32>(2147483647i, global1.b.x, u_input.c), u_input.e), Struct_2(vec4<bool>(global1.a.x, global1.a.x, false, true), false)).a, vec4<bool>(false, !global1.a.x, !arg_2, func_2(_wgslsmith_f_op_f32(max(-738f, -271f)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 2147483647i, global1.b.x), vec3<i32>(11878i, -12784i, arg_1.b.x), arg_1.b), Struct_2(vec4<bool>(true, true, true, arg_2), arg_1.a.x)).a.x), !(!arg_2)), true);
    var var_1 = vec3<i32>(global1.b.x, arg_1.b.x, -1i | select(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_1.b.x, 80376i), vec3<i32>(arg_1.b.x, -15852i, 1i) >> (arg_0.ywx % vec3<u32>(32u))), arg_1.b.x, select(select(arg_1.a.x, global1.a.x, arg_2), all(global2[_wgslsmith_index_u32(16474u, 6u)]), arg_2)));
    return all(!select(vec4<bool>(arg_2, true, var_0.b && global1.a.x, global1.a.x), !global1.a, true == global1.a.x));
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(~26483u, _wgslsmith_div_u32(u_input.d, 30732u), 1u, u_input.d), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, 0u, 36609u), ~vec4<u32>(u_input.d, u_input.d, 24020u, u_input.d)), vec4<u32>(_wgslsmith_mod_u32(114125u, u_input.d), ~u_input.d, 1u, 4294967295u))) ^ abs(vec4<u32>(17777u, 4294967295u, reverseBits(max(12282u, u_input.d)), _wgslsmith_clamp_u32(4294967295u, ~0u, ~77027u)));
    var var_1 = Struct_2(arg_2.a, arg_0.x);
    let var_2 = Struct_2(select(!func_2(1f, abs(vec3<i32>(u_input.c, u_input.e.x, -7395i)), func_2(-156f, u_input.e, global0[_wgslsmith_index_u32(51063u, 6u)])).a, !vec4<bool>(true, false, true, all(arg_2.a)), vec4<bool>(true, any(vec2<bool>(arg_2.a.x, var_1.a.x)), true, true)), true);
    global1 = Struct_1(select(!arg_2.a, select(!select(global1.a, arg_2.a, var_1.a.x), vec4<bool>(true, all(arg_3), arg_0.x, true), global1.a), true), ~countOneBits(arg_2.b));
    var var_3 = arg_2;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(global1.b.x, _wgslsmith_sub_i32(7138i, u_input.a.x), u_input.e.x);
    let var_1 = 1219f;
    let var_2 = abs(firstTrailingBit(~_wgslsmith_add_vec3_i32(u_input.e, vec3<i32>(var_0.x, var_0.x, global1.b.x))) ^ u_input.e);
    global1 = func_4(vec2<bool>(global1.a.x, global1.a.x != global1.a.x), !global1.a.x, Struct_1(global1.a, vec3<i32>(~0i, global1.b.x << (min(1u, 4472u) % 32u), var_0.x)), select(vec3<bool>(0u >= (1u & u_input.d), true, global1.a.x), select(vec3<bool>(true && global1.a.x, any(global1.a.wxy), true), !select(vec3<bool>(false, true, global1.a.x), vec3<bool>(false, false, false), global2[_wgslsmith_index_u32(u_input.d, 6u)]), vec3<bool>(true || global1.a.x, true, true)), vec3<bool>(func_1(vec4<u32>(18126u, u_input.d, 36586u, 6832u), Struct_1(vec4<bool>(true, false, global1.a.x, global1.a.x), u_input.e), global1.a.x, u_input.d) || global1.a.x, true, global1.a.x)));
    var_0 = firstTrailingBit(countOneBits(-vec3<i32>(2147483647i, 11985i, global1.b.x) ^ vec3<i32>(global1.b.x, -1i, u_input.e.x)) | ~(~(-vec3<i32>(-2147483647i, -1i, global1.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + -1015f) * var_1), _wgslsmith_f_op_f32(-404f + _wgslsmith_f_op_f32(1000f * var_1))), vec2<f32>(_wgslsmith_f_op_f32(-var_1), var_1), false)), ~(firstLeadingBit(abs(vec3<u32>(51404u, u_input.d, u_input.d))) & _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.d, u_input.d) & vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(u_input.d, u_input.d, 4294967295u))), -9712i << ((min(u_input.d, u_input.d) | u_input.d) % 32u));
}

