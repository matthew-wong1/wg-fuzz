struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 3>;

var<private> global1: array<Struct_1, 20>;

var<private> global2: array<Struct_3, 17>;

var<private> global3: vec2<u32>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>, arg_3: i32) -> vec4<i32> {
    var var_0 = 176f;
    global1 = array<Struct_1, 20>();
    let var_1 = 449f;
    var var_2 = Struct_1(~(-firstLeadingBit(_wgslsmith_mod_vec4_i32(arg_0.a, arg_0.a))));
    global3 = _wgslsmith_clamp_vec2_u32(vec2<u32>(max(0u << (~global3.x % 32u), countOneBits(_wgslsmith_add_u32(u_input.a, u_input.a))), _wgslsmith_dot_vec4_u32((vec4<u32>(arg_1, global3.x, global3.x, 18443u) << (vec4<u32>(global3.x, 65275u, arg_1, 2413u) % vec4<u32>(32u))) & (vec4<u32>(3421u, global3.x, 0u, global3.x) & vec4<u32>(u_input.a, u_input.a, global3.x, arg_1)), ~vec4<u32>(arg_1, arg_1, arg_1, 0u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1, 119182u), vec2<u32>(_wgslsmith_clamp_u32(arg_1, 46712u, ~global3.x), 19623u), vec2<u32>(7454u, arg_1)), countOneBits(vec2<u32>(global3.x, global3.x)));
    return min(~arg_0.a, abs(firstTrailingBit(~vec4<i32>(u_input.d, 2147483647i, arg_0.a.x, 8717i))));
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: bool) -> vec2<i32> {
    var var_0 = vec4<f32>(arg_1.a, 1f, arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a))))));
    var var_1 = Struct_3(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(7879u, arg_0, global3.x, 1u), vec4<u32>(arg_0, 4294967295u, 4294967295u, u_input.a)), ~vec4<u32>(0u, 4294967295u, 4294967295u, arg_0)), vec4<u32>(~1u, 1u, abs(~arg_0), 0u)), vec3<i32>(-1i) * -u_input.b);
    global1 = array<Struct_1, 20>();
    let var_2 = ~min(arg_1.c, arg_1.c);
    let var_3 = Struct_1(~select(vec4<i32>(_wgslsmith_mod_i32(u_input.c.x, 7161i), u_input.d, -31889i, 5433i), func_3(global1[_wgslsmith_index_u32(arg_0, 20u)], arg_0, !arg_1.b, -1802i), arg_1.b.x));
    return var_3.a.yz;
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    global3 = _wgslsmith_div_vec2_u32(firstTrailingBit(~reverseBits(~vec2<u32>(66461u, global3.x))), _wgslsmith_div_vec2_u32(vec2<u32>(1u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, u_input.a, 4294967295u), vec3<u32>(41784u, u_input.a, u_input.a)))), min(~vec2<u32>(16959u, 5824u), ~(vec2<u32>(0u, 32059u) & vec2<u32>(global3.x, u_input.a)))));
    var var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(firstLeadingBit(u_input.b.xy) >> (~(~vec2<u32>(4294967295u, u_input.a)) % vec2<u32>(32u)), arg_0), _wgslsmith_mod_vec2_i32((u_input.b.zx & ~vec2<i32>(arg_0.x, arg_0.x)) ^ countOneBits(func_2(global3.x, Struct_4(511f, vec4<bool>(false, true, true, true), vec2<u32>(1u, global3.x), vec2<u32>(4294967295u, u_input.a)), false)), vec2<i32>(_wgslsmith_mult_i32(~arg_0.x, i32(-1i) * -9879i), arg_0.x)));
    global3 = vec2<u32>(global3.x, min(57538u, (abs(12849u) & _wgslsmith_div_u32(global3.x, 2142u)) ^ global3.x));
    global1 = array<Struct_1, 20>();
    let var_1 = _wgslsmith_f_op_f32(sign(-358f));
    return Struct_2(!vec3<bool>(true, all(select(global0[_wgslsmith_index_u32(1u, 3u)], vec2<bool>(false, false), vec2<bool>(true, false))), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, ~global3.x), 3u)];
    let var_1 = func_1(select(-vec2<i32>(-1i, u_input.b.x) ^ ~u_input.b.yx, vec2<i32>(-1i, _wgslsmith_sub_i32(min(u_input.d, 53708i), 31365i)), false));
    global1 = array<Struct_1, 20>();
    var var_2 = !vec2<bool>(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-858f, 460f, var_0.x)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1342f)) - _wgslsmith_f_op_f32(max(-693f, -1506f))));
    let var_3 = ~(~(~vec4<i32>(u_input.b.x, u_input.c.x, -1i, -1i) >> (min(_wgslsmith_clamp_vec4_u32(vec4<u32>(21917u, 0u, u_input.a, 31710u), vec4<u32>(u_input.a, global3.x, u_input.a, 49045u), vec4<u32>(4294967295u, 0u, 1u, u_input.a)), vec4<u32>(6171u, global3.x, 1u, 13369u)) % vec4<u32>(32u))));
    var var_4 = var_0.x;
    var var_5 = -(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 4021i, u_input.d), vec3<i32>(u_input.b.x, 12943i, var_3.x)))) >= (var_3.x >> (~(~u_input.a) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-262f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-247f - -968f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-2685f, -1169f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1137f, _wgslsmith_f_op_f32(ceil(265f)))))), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~21506u, _wgslsmith_dot_vec3_u32(vec3<u32>(17518u, global3.x, u_input.a), vec3<u32>(0u, global3.x, 3250u)), global3.x << (u_input.a % 32u)), ~vec3<u32>(global3.x, global3.x, global3.x) | firstLeadingBit(vec3<u32>(72925u, u_input.a, 40842u))), _wgslsmith_div_vec3_u32(min(~vec3<u32>(global3.x, 0u, 10610u), firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, 40238u))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(6085u, 0u, 1u, 4294967295u), vec4<u32>(u_input.a, u_input.a, global3.x, global3.x)), min(66472u, 1u), 36944u))), func_3(Struct_1(countOneBits(vec4<i32>(0i, var_3.x, var_3.x, 2147483647i)) ^ ~vec4<i32>(var_3.x, -1i, var_3.x, 17519i)), reverseBits(max(22286u, select(u_input.a, 1u, var_1.a.x))), vec4<bool>(var_3.x > u_input.b.x, true, -2147483647i <= -u_input.d, (4294967295u <= global3.x) | true), -1i).x);
}

