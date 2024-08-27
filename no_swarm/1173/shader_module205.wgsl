struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<bool>(false, false, false, true), 16858u), Struct_1(vec4<bool>(true, false, false, true), 0u), Struct_1(vec4<bool>(true, false, true, false), 107038u), Struct_1(vec4<bool>(true, true, true, true), 0u), Struct_1(vec4<bool>(true, true, false, true), 1u), Struct_1(vec4<bool>(true, true, false, false), 4294967295u), Struct_1(vec4<bool>(false, false, true, false), 4294967295u), Struct_1(vec4<bool>(false, false, true, true), 55634u), Struct_1(vec4<bool>(false, true, false, false), 0u), Struct_1(vec4<bool>(false, false, false, true), 8813u), Struct_1(vec4<bool>(false, false, false, true), 1u), Struct_1(vec4<bool>(true, false, true, false), 7712u), Struct_1(vec4<bool>(false, false, false, true), 1u), Struct_1(vec4<bool>(false, true, true, true), 0u), Struct_1(vec4<bool>(false, true, true, true), 168u), Struct_1(vec4<bool>(true, false, true, false), 1u), Struct_1(vec4<bool>(false, false, true, false), 11664u), Struct_1(vec4<bool>(true, true, true, false), 4275u), Struct_1(vec4<bool>(true, false, false, false), 0u), Struct_1(vec4<bool>(true, true, true, false), 2076u), Struct_1(vec4<bool>(true, false, false, true), 4294967295u), Struct_1(vec4<bool>(false, false, true, false), 4294967295u), Struct_1(vec4<bool>(false, true, true, false), 4294967295u), Struct_1(vec4<bool>(true, false, false, true), 39991u), Struct_1(vec4<bool>(true, true, true, true), 0u), Struct_1(vec4<bool>(false, true, true, false), 82416u), Struct_1(vec4<bool>(true, false, false, false), 749u), Struct_1(vec4<bool>(false, false, false, false), 1u), Struct_1(vec4<bool>(true, false, true, false), 1u), Struct_1(vec4<bool>(true, false, true, true), 0u), Struct_1(vec4<bool>(true, true, true, false), 0u));

var<private> global2: f32;

var<private> global3: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(21426i, -1i, 1i), vec3<i32>(i32(-2147483648), -18553i, -1i), vec3<i32>(-1i, -1i, -1i), vec3<i32>(0i, -1i, -42805i), vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<i32>(i32(-2147483648), 9337i, 22785i), vec3<i32>(-1i, 64455i, 0i), vec3<i32>(-29139i, 1i, 32769i), vec3<i32>(47307i, 2147483647i, 21116i), vec3<i32>(2147483647i, i32(-2147483648), 26236i), vec3<i32>(2147483647i, 1i, -58332i), vec3<i32>(i32(-2147483648), i32(-2147483648), 22845i), vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(-40212i, i32(-2147483648), 14733i), vec3<i32>(1i, 2147483647i, -1i), vec3<i32>(-2961i, -1i, 1i), vec3<i32>(0i, -44047i, -13477i), vec3<i32>(44024i, 1i, -11326i), vec3<i32>(-40387i, -16116i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -8929i, -1i), vec3<i32>(0i, 67916i, 0i), vec3<i32>(-18767i, i32(-2147483648), 2147483647i), vec3<i32>(87868i, -1i, -1i), vec3<i32>(33706i, -21050i, 26218i), vec3<i32>(-24480i, 1i, i32(-2147483648)), vec3<i32>(0i, i32(-2147483648), 30229i), vec3<i32>(9347i, -40711i, 1i), vec3<i32>(i32(-2147483648), 43500i, 2147483647i), vec3<i32>(-44412i, 0i, -38466i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> f32 {
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x)));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: bool, arg_3: vec3<u32>) -> vec2<bool> {
    let var_0 = ~_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(firstTrailingBit(arg_3.xx), vec2<u32>(4294967295u, 0u)), arg_3.x | 0u);
    let var_1 = any(!(!(!vec2<bool>(arg_2, arg_2)))) | (~(~u_input.a) < ~(-1i));
    global1 = array<Struct_1, 31>();
    let var_2 = var_0;
    var var_3 = -1936f;
    return vec2<bool>(false, true);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, -694f, true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1435f, global0.x, true))) - -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(global0.x * global0.x))));
    let var_0 = global0.x;
    let var_1 = true;
    let var_2 = Struct_1(select(vec4<bool>(true, arg_0.a.x, false, var_1), select(arg_2.a, !select(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_1.x, arg_2.a.x), arg_3.a, arg_3.a), arg_0.a), select(!arg_2.a, select(!vec4<bool>(true, arg_1.x, arg_2.a.x, false), arg_3.a, !arg_1.x), arg_3.a)), 4294967295u);
    let var_3 = Struct_1(!vec4<bool>(global0.x <= -929f, 1000f == _wgslsmith_f_op_f32(global0.x - -165f), arg_2.a.x, arg_1.x), 1u);
    return ~(vec3<u32>(~var_3.b, _wgslsmith_div_u32(20885u, 267u) & ~var_3.b, arg_3.b) >> (vec3<u32>(countOneBits(45909u), 17742u, arg_3.b) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: vec3<u32>) -> StorageBuffer {
    var var_0 = global0.x;
    let var_1 = ~_wgslsmith_mod_u32(0u, 1u);
    let var_2 = Struct_1(select(select(arg_0.a, select(arg_0.a, arg_0.a, any(arg_0.a.xz)), true), !select(vec4<bool>(false, arg_1, arg_1, false), vec4<bool>(arg_0.a.x, true, true, arg_1), any(arg_0.a)), select(!(!arg_0.a), select(!vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_1), arg_0.a, arg_0.a), arg_0.a)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_3.x, 85129u << ((31930u << (arg_3.x % 32u)) % 32u), 0u), ~32419u >> (arg_3.x % 32u)));
    global1 = array<Struct_1, 31>();
    let var_3 = !vec4<bool>(all(!vec2<bool>(arg_0.a.x, arg_1)), arg_1, true, all(var_2.a.yyy));
    return StorageBuffer(2384f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, 0i)), vec2<i32>(-1i, 0i)), vec2<i32>(-29477i, select(u_input.a, u_input.a, true)), vec2<i32>(2147483647i, 1i)) | (~abs(-vec2<i32>(-36893i, u_input.a)) ^ (vec2<i32>(-1i) * -(vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(u_input.a, u_input.a))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(-215f, vec3<bool>(true, false, false))))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, global0.x, false)) + -1000f))))), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(global0.x - global0.x))), 2302f))), _wgslsmith_f_op_f32(-global0.x));
    global1 = array<Struct_1, 31>();
    global2 = 228f;
    let var_2 = !vec4<bool>(true, true, !(0i > _wgslsmith_div_i32(-1i, u_input.a)), u_input.a != 2147483647i);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-360f, var_1.x)) - global0.x), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_1.x))) * vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.x, var_1.x))), 1903f, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(func_1(172f, vec3<bool>(var_2.x, true, var_2.x))), select(var_2.yww, var_2.zyw, var_2.yww))))));
    var var_3 = global1[_wgslsmith_index_u32(~0u, 31u)];
    var var_4 = global3[_wgslsmith_index_u32(1u, 30u)];
    let x = u_input.a;
    s_output = func_4(Struct_1(vec4<bool>(false, true, true, true), (4294967295u << ((var_3.b >> (var_3.b % 32u)) % 32u)) & min(1u, 4294967295u)), var_3.b <= _wgslsmith_add_u32(~(~var_3.b), ~_wgslsmith_clamp_u32(var_3.b, 0u, 131918u)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(var_3.b, 30u)], vec3<i32>(1i, -43959i, 2147483647i) ^ global3[_wgslsmith_index_u32(60216u, 30u)]), var_0.x, ~(-2147483647i)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_3.b, 1u), 30u)], global3[_wgslsmith_index_u32(~2156u, 30u)]), global3[_wgslsmith_index_u32(~16410u >> (var_3.b % 32u), 30u)])), ~func_3(Struct_1(!var_2, abs(var_3.b)), !func_2(vec2<f32>(var_1.x, global0.x), -933f, false, vec3<u32>(var_3.b, var_3.b, 3631u)), global1[_wgslsmith_index_u32(1u, 31u)], Struct_1(!vec4<bool>(true, var_3.a.x, false, false), 1u)));
}

