struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: u32;

var<private> global1: f32 = -979f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = max(~(vec2<i32>(-1i) * -min(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, u_input.a))), vec2<i32>(u_input.a, -1i));
    global1 = -615f;
    let var_1 = !vec4<bool>(false, any(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), true)), !((u_input.a >> (32599u % 32u)) >= -var_0.x), !(!all(vec4<bool>(true, false, false, false))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-971f, -1405f))) + _wgslsmith_f_op_f32(-180f + 119f));
    global1 = _wgslsmith_f_op_f32(trunc(var_2));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2, var_2, 594f), vec3<f32>(-248f, -1454f, var_2))))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2) -> i32 {
    global0 = firstLeadingBit(countOneBits(firstLeadingBit(_wgslsmith_div_u32(1u, 85237u))) << (0u % 32u));
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(arg_1.a ^ vec4<u32>(arg_1.a.x, 66654u, 1u, 4294967295u))))));
    global0 = 0u;
    let var_1 = Struct_3(Struct_1((vec4<i32>(0i, u_input.a, 2147483647i, u_input.a) >> (vec4<u32>(arg_1.a.x, 78377u, arg_1.a.x, 4294967295u) % vec4<u32>(32u))) ^ min(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 41031i, -49116i, u_input.a), vec4<i32>(u_input.a, u_input.a, -1i, -2147483647i)), vec4<i32>(20635i, u_input.a, -19641i, 1273i)), vec2<u32>(arg_1.a.x, 39275u), abs(vec3<u32>(arg_1.a.x, arg_1.a.x, 1u) << (arg_0 % vec3<u32>(32u)))), true, u_input.a, arg_1.a.yz, false);
    let var_2 = var_1.a;
    return _wgslsmith_mod_i32(abs(-reverseBits(var_1.a.a.x & 5145i)), reverseBits(1i));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>) -> vec4<bool> {
    return select(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false)), vec4<bool>(select(u_input.a != func_2(arg_1.xyz, Struct_2(vec4<u32>(arg_1.x, arg_1.x, 34713u, 5640u))), true, select(false, false, 0u < arg_1.x)), false, true, !all(select(vec2<bool>(false, true), vec2<bool>(false, false), true))), any(vec3<bool>(any(vec4<bool>(true, true, true, true)), true | any(vec3<bool>(true, false, true)), false)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<bool>) -> f32 {
    return _wgslsmith_f_op_f32(max(-808f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -298f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, u_input.a, -2147483647i), vec4<i32>(u_input.a, 31294i, u_input.a, u_input.a))), select(func_1(vec3<f32>(-1552f, 864f, -1397f), vec4<u32>(0u, 38402u, 1u, 4294967295u)), vec4<bool>(false, false, true, true), u_input.a <= -1i))))) > -973f;
    var var_1 = Struct_1(_wgslsmith_mult_vec4_i32(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(-25544i, 11715i, u_input.a, 2147483647i)) >> (vec4<u32>(60851u, 4294967295u, 30015u, 34237u) % vec4<u32>(32u))), vec4<i32>(~u_input.a, ~(~u_input.a), -46532i, _wgslsmith_add_i32(-15721i, u_input.a))), vec2<u32>(15150u, abs(1u)), _wgslsmith_sub_vec3_u32(abs(~vec3<u32>(0u, 0u, 23290u)), reverseBits(~firstTrailingBit(vec3<u32>(1u, 32328u, 3969u)))));
    let var_2 = Struct_2(min((vec4<u32>(4294967295u, 1u, var_1.c.x, var_1.c.x) << (vec4<u32>(11572u, var_1.b.x, 23998u, 45816u) % vec4<u32>(32u))) ^ vec4<u32>(0u, var_1.b.x, 4294967295u, 55070u), _wgslsmith_mod_vec4_u32(vec4<u32>(35468u, var_1.b.x, 49881u, 95137u) >> (vec4<u32>(4294967295u, var_1.b.x, 26639u, var_1.c.x) % vec4<u32>(32u)), ~vec4<u32>(var_1.b.x, var_1.b.x, 4294967295u, 4294967295u))) & vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(154u, var_1.c.x, var_1.b.x), var_1.c), var_1.c), firstTrailingBit(max(var_1.c.x, 0u)), var_1.b.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, var_1.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.x, 32493u), vec2<u32>(0u, var_1.c.x)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-867f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(654f, -1220f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-2222f)))), _wgslsmith_f_op_f32(select(-1982f, 1042f, !var_0))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-609f, 417f, false))))));
    global0 = ~_wgslsmith_sub_u32(max(~_wgslsmith_mult_u32(var_1.c.x, 44676u), var_2.a.x), var_2.a.x);
    var var_4 = false;
    var_1 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-23531i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(var_1.a.yzy, var_1.a.zzw), ~vec3<i32>(0i, u_input.a, 0i)), var_1.a.x, _wgslsmith_mult_i32(~var_1.a.x, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -24106i, u_input.a, u_input.a), vec4<i32>(-16093i, 1i, 1i, -2147483647i) << (var_2.a % vec4<u32>(32u))) & (max(var_1.a, var_1.a) | _wgslsmith_mod_vec4_i32(vec4<i32>(-2116i, var_1.a.x, var_1.a.x, 8129i), var_1.a))), ~vec2<u32>(1u, 1u), reverseBits(vec3<u32>(abs(18974u << (1u % 32u)), ~var_1.c.x, var_2.a.x >> (42007u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(var_1.a.x, -1i, u_input.a, var_1.a.x), min(var_1.a, var_1.a), vec4<i32>(u_input.a, ~0i, -5396i, -45425i)), min(vec4<i32>(u_input.a, 34173i, ~var_1.a.x, reverseBits(u_input.a)), _wgslsmith_mult_vec4_i32(var_1.a >> (var_2.a % vec4<u32>(32u)), firstTrailingBit(var_1.a)))));
}

