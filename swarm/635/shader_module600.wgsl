struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> vec2<bool> {
    return arg_1.a.yz;
}

fn func_3(arg_0: Struct_3) -> vec2<u32> {
    let var_0 = Struct_1(vec3<bool>(firstLeadingBit(firstLeadingBit(u_input.b)) < firstLeadingBit(1u), true, !all(vec3<bool>(true, true, true))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-351f, 520f) - 170f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-743f + -175f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-886f - -162f)) + _wgslsmith_f_op_f32(abs(-1839f)))));
    let var_1 = ~(0i & ~arg_0.a);
    var var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(0u, u_input.b), u_input.b, 27242u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, 7801u, 1u)), vec3<u32>(u_input.b, u_input.b, 0u) ^ vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)], 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)]))), select(vec4<u32>(~4294967295u, _wgslsmith_mod_u32(27323u, global0[_wgslsmith_index_u32(0u, 12u)]), 20246u, u_input.b), abs(~vec4<u32>(global0[_wgslsmith_index_u32(56957u, 12u)], global0[_wgslsmith_index_u32(21820u, 12u)], 43810u, u_input.b)), select(select(!vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), !vec4<bool>(var_0.a.x, false, false, false), !vec4<bool>(var_0.a.x, true, var_0.a.x, false)), vec4<bool>(true, true, true, true), !(!vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x)))));
    let var_3 = abs(~(-8519i));
    var_2 = 76441u;
    return ~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(select(~vec2<u32>(1u, u_input.b), vec2<u32>(4294967295u, 4294967295u) | vec2<u32>(0u, u_input.b), var_0.a.x), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b, 37765u), vec2<u32>(4294967295u, 23354u))), _wgslsmith_mod_vec2_u32(vec2<u32>(70343u, global0[_wgslsmith_index_u32(4294967295u, 12u)] ^ 1u), countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(13094u, u_input.b), vec2<u32>(14828u, 1u), vec2<u32>(52641u, 12164u)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<bool>) -> bool {
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    let var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(func_3(Struct_3(0i, Struct_2(-1i))), ~select(vec2<u32>(0u, 0u), vec2<u32>(arg_0.x, 27272u), arg_1.x)), firstLeadingBit(vec2<u32>(~0u, ~global0[_wgslsmith_index_u32(1u, 12u)]))), ~(~arg_0.x));
    var var_1 = select(!vec3<bool>(!select(false, false, arg_1.x), false, true), !vec3<bool>(arg_1.x, true, true), vec3<bool>(!arg_1.x, !arg_1.x, ((u_input.c ^ -1i) != (u_input.d >> (1u % 32u))) | !arg_1.x));
    global0 = array<u32, 12>();
    return any(select(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), arg_1.x)), select(vec4<bool>(all(arg_1), all(vec2<bool>(arg_1.x, false)), !arg_1.x, true), vec4<bool>(!arg_1.x, all(vec3<bool>(arg_1.x, var_1.x, var_1.x)), false, true), min(u_input.d, 1i) != u_input.e.x), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(any(select(func_1(u_input.c, Struct_1(vec3<bool>(false, false, true), vec3<f32>(-1238f, -283f, -1062f)), Struct_2(-510i), 40668u), vec2<bool>(false, false), all(vec3<bool>(false, true, true)))), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(false, true))), all(vec3<bool>(false, false, false))), vec2<bool>(true, true)), vec2<bool>(func_2(_wgslsmith_mult_vec2_u32(min(vec2<u32>(global0[_wgslsmith_index_u32(56402u, 12u)], 9526u), vec2<u32>(4294967295u, u_input.b)), vec2<u32>(4294967295u, 73709u)), !func_1(u_input.c, Struct_1(vec3<bool>(true, false, true), vec3<f32>(-716f, -335f, 287f)), Struct_2(u_input.e.x), 12168u)), all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), all(vec3<bool>(false, true, false))))));
    global0 = array<u32, 12>();
    let var_1 = u_input.b;
    global0 = array<u32, 12>();
    var var_2 = ~(-_wgslsmith_clamp_vec2_i32(u_input.a >> (vec2<u32>(global0[_wgslsmith_index_u32(0u, 12u)], var_1) % vec2<u32>(32u)), -u_input.a, _wgslsmith_clamp_vec2_i32(-u_input.a, u_input.a, vec2<i32>(u_input.c, u_input.e.x))));
    let var_3 = Struct_3(_wgslsmith_mod_i32(max(-51431i, -(-13972i >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31776u, 12u)], 12u)] % 32u))), ~(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.e.x, -1i), vec3<i32>(-56379i, 0i, 0i)) << (~90614u % 32u))), Struct_2(_wgslsmith_clamp_i32(_wgslsmith_add_i32(abs(var_2.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-25740i, var_2.x, u_input.c), u_input.e)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, -2147483647i, var_2.x), ~u_input.e), _wgslsmith_sub_i32(var_2.x, abs(0i)))));
    global0 = array<u32, 12>();
    let var_4 = min(_wgslsmith_mod_vec4_i32(-(~vec4<i32>(-2147483647i, var_3.a, -2147483647i, 45190i)), -vec4<i32>(reverseBits(var_3.a), ~u_input.c, u_input.e.x, var_2.x ^ -2147483647i)), vec4<i32>(27554i, reverseBits(countOneBits(~var_2.x)), -74692i, _wgslsmith_mod_i32(~select(var_2.x, var_2.x, true), _wgslsmith_div_i32(-1i, -u_input.c))));
    var var_5 = Struct_3(~_wgslsmith_div_i32(var_3.a, select(var_4.x, var_3.a, false)), Struct_2(-_wgslsmith_add_i32(i32(-1i) * -6469i, _wgslsmith_add_i32(19750i, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(21904i, _wgslsmith_mod_vec4_u32(~((vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 12u)], 12u)], var_1, var_1) | vec4<u32>(0u, 56112u, 1u, 1u)) | select(vec4<u32>(26508u, 0u, u_input.b, u_input.b), vec4<u32>(45631u, 4294967295u, var_1, global0[_wgslsmith_index_u32(var_1, 12u)]), vec4<bool>(var_0.x, var_0.x, true, var_0.x))), select(min(vec4<u32>(var_1, 4294967295u, 1u, var_1) | vec4<u32>(u_input.b, var_1, var_1, u_input.b), vec4<u32>(var_1, 4294967295u, 57149u, 47309u)), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1, 0u, 62184u, 0u), vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(0u, 12u)], var_1, u_input.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(56546u, 1u, 1u, 64548u), vec4<u32>(11675u, 2779u, 28869u, u_input.b))), select(!vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(false, false, var_0.x, true), 0i > u_input.a.x))), ~(16572u << (var_1 % 32u)), ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, u_input.b), 12u)]);
}

