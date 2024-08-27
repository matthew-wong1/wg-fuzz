struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global1: Struct_2;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> bool {
    let var_0 = Struct_1((_wgslsmith_div_vec4_u32(u_input.a, ~u_input.a) ^ vec4<u32>(4294967295u, u_input.b.x, u_input.d >> (1u % 32u), ~u_input.a.x)) << (~abs(countOneBits(u_input.a)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(975f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -912f))))), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))));
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.a, vec3<f32>(arg_0.a.x, var_0.b, -1977f), true)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, 516f, arg_0.a.x) - global1.a)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-810f * global1.a.x), 1f))));
    let var_1 = var_0;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(select(arg_0.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, _wgslsmith_f_op_f32(sign(var_0.b)), _wgslsmith_f_op_f32(554f * var_0.b)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-190f, -1077f, 274f))), vec3<bool>(all(vec4<bool>(true, var_0.c, false, var_0.c)), any(vec3<bool>(var_1.c, var_1.c, var_0.c)), true))), vec3<bool>(true, true, true))));
    let var_3 = ((_wgslsmith_mod_vec3_i32(vec3<i32>(28783i, -66007i, u_input.c), ~vec3<i32>(1i, u_input.c, u_input.c)) ^ _wgslsmith_clamp_vec3_i32(u_input.e.wwy, vec3<i32>(0i, 27252i, 1i) & u_input.e.wzy, vec3<i32>(u_input.e.x, -55i, -2147483647i))) | ~u_input.e.xxx) | abs(-vec3<i32>(firstTrailingBit(52573i), 23850i, -2147483647i << (var_1.a.x % 32u)));
    return all(!select(select(!global0[_wgslsmith_index_u32(41360u, 32u)], global0[_wgslsmith_index_u32(18063u, 32u)], select(global0[_wgslsmith_index_u32(var_1.a.x, 32u)], global0[_wgslsmith_index_u32(var_1.a.x, 32u)], false)), !select(global0[_wgslsmith_index_u32(var_0.a.x, 32u)], vec2<bool>(var_0.c, var_1.c), global0[_wgslsmith_index_u32(78195u, 32u)]), all(vec2<bool>(var_1.c, var_1.c))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec3<u32>) -> vec2<bool> {
    global0 = array<vec2<bool>, 32>();
    let var_0 = vec3<bool>(true, false, !func_3(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global1.a.x, global1.a.x) - global1.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1474f, global1.a.x))));
    let var_1 = max(_wgslsmith_dot_vec4_u32(~u_input.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(~arg_2.x, ~41879u, firstLeadingBit(9028u), 1u), u_input.a & _wgslsmith_sub_vec4_u32(u_input.a, u_input.a), select(vec4<u32>(u_input.a.x, 10681u, u_input.b.x, arg_2.x), max(u_input.a, vec4<u32>(0u, 1u, arg_0.x, 69706u)), vec4<bool>(true, true, true, true)))), ~(~112516u));
    let var_2 = _wgslsmith_div_u32(~(~(~13906u)), firstTrailingBit(5411u));
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -110f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-367f, global1.a.x, global1.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-562f, global1.a.x, global1.a.x))), true)));
    return !select(global0[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, u_input.b.x, u_input.a.x, 35555u), u_input.a & vec4<u32>(99596u, arg_0.x, 1u, arg_0.x)), select(~arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(52917u, var_1), vec2<u32>(5193u, 4294967295u)), true)), 32u)], !vec2<bool>(u_input.c <= -40253i, all(vec3<bool>(var_0.x, var_0.x, var_0.x))), !(!vec2<bool>(var_0.x, true)));
}

fn func_1(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = u_input.b.zz | u_input.a.xz;
    var var_1 = _wgslsmith_sub_vec2_i32(abs(reverseBits(u_input.e.xy)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(21u, 4294967295u >> (var_0.x % 32u)), vec2<u32>(var_0.x, 1u)) % vec2<u32>(32u)), vec2<i32>(firstLeadingBit(1i), 1i));
    global0 = array<vec2<bool>, 32>();
    let var_2 = func_2(reverseBits(u_input.b), vec4<i32>(min(-u_input.e.x, _wgslsmith_add_i32(51470i, u_input.c)), 0i ^ u_input.c, -var_1.x, 64023i) ^ firstTrailingBit(firstTrailingBit(reverseBits(u_input.e))), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.d, 4294967295u) | ~vec3<u32>(u_input.b.x, 0u, u_input.b.x), abs(vec3<u32>(var_0.x, 8495u, var_0.x)))));
    let var_3 = ~(~var_0.x);
    return vec3<bool>(true, false, !var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(1793u, 0u), u_input.a.x) & u_input.b.x, max(abs(0u), u_input.d)), 32u)];
    var_0 = select(vec2<bool>(all(!func_1(Struct_2(vec3<f32>(-864f, global1.a.x, 695f)))), true), vec2<bool>(func_3(Struct_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.a.x, -1296f, global1.a.x), global1.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.a.x * global1.a.x)))), true), !(!func_2(~vec3<u32>(u_input.a.x, 1u, 4294967295u), -u_input.e, vec3<u32>(u_input.b.x, 22927u, 4028u)).x));
    var_0 = func_2(_wgslsmith_div_vec3_u32(u_input.b, abs(vec3<u32>(~u_input.b.x, max(u_input.a.x, u_input.b.x), 0u))), u_input.e, vec3<u32>(u_input.a.x, (_wgslsmith_mult_u32(18891u, u_input.d) ^ ~58719u) & (u_input.a.x << (u_input.b.x % 32u)), _wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_clamp_u32(abs(98986u), _wgslsmith_mult_u32(u_input.d, u_input.b.x), firstLeadingBit(1u)))));
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-1253f, global1.a.x, true)), -548f, global1.a.x) * _wgslsmith_f_op_vec3_f32(-global1.a)) + vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(312f, -893f))), _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(global1.a.x * -673f)), _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(floor(global1.a.x))))));
    var var_1 = i32(-1i) * -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -587f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(global1.a)), _wgslsmith_f_op_vec3_f32(trunc(global1.a)))), abs(-26152i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.e.xzw, vec3<i32>(-2147483647i, u_input.e.x, -45851i)), -1i, abs(u_input.c)), vec3<i32>(-20039i, -20482i, u_input.c)), vec2<u32>(~(~1u | ~u_input.b.x), ~u_input.b.x), max(_wgslsmith_add_u32(1u, u_input.a.x), 4294967295u));
}

