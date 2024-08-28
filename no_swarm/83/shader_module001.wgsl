struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(false, false, true, false, false);

var<private> global1: array<f32, 10> = array<f32, 10>(2045f, -3241f, -474f, -506f, -384f, 1628f, -1224f, -762f, -238f, 1723f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> bool {
    return global0[_wgslsmith_index_u32(0u, 5u)];
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: vec2<u32>) -> u32 {
    global0 = array<bool, 5>();
    let var_0 = Struct_2(vec2<i32>(-4657i, u_input.c.x), ~(-max(arg_0, 2147483647i)) & ~(~_wgslsmith_mod_i32(arg_0, u_input.c.x)));
    var var_1 = Struct_1(arg_3, vec4<u32>(u_input.b, u_input.b, firstLeadingBit(1u), u_input.b), ~(~(vec2<i32>(u_input.c.x, -1i) << (~vec2<u32>(arg_3.x, arg_3.x) % vec2<u32>(32u)))), vec3<bool>(!arg_1 || (_wgslsmith_mod_u32(arg_3.x, arg_3.x) <= (u_input.b & 1694u)), arg_1, any(!select(vec4<bool>(true, false, arg_1, true), vec4<bool>(global0[_wgslsmith_index_u32(7664u, 5u)], arg_1, arg_2, true), vec4<bool>(arg_1, arg_2, arg_2, arg_1)))), ~u_input.c.zy);
    var var_2 = abs(_wgslsmith_dot_vec2_i32(-(~var_1.c), vec2<i32>(_wgslsmith_mod_i32(var_0.a.x, var_1.e.x), ~25011i)) << ((abs(arg_3.x << (var_1.a.x % 32u)) >> (firstLeadingBit(0u) % 32u)) % 32u));
    global0 = array<bool, 5>();
    return ~_wgslsmith_add_u32(abs(firstTrailingBit(4294967295u)), 5083u);
}

fn func_2() -> u32 {
    global1 = array<f32, 10>();
    global1 = array<f32, 10>();
    var var_0 = !(firstLeadingBit(firstTrailingBit(_wgslsmith_sub_u32(u_input.b, 4294967295u))) == ~(_wgslsmith_sub_u32(8319u, u_input.b) | ~39222u));
    let var_1 = -u_input.c;
    return ~_wgslsmith_sub_u32(firstLeadingBit(~20334u), firstTrailingBit(u_input.b)) | func_4(i32(-1i) * -17912i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, _wgslsmith_sub_u32(u_input.b, 24016u), u_input.b), _wgslsmith_sub_vec4_u32(~vec4<u32>(64428u, u_input.b, u_input.b, 1u), vec4<u32>(39408u, 12993u, 0u, u_input.b) & vec4<u32>(u_input.b, u_input.b, 1u, u_input.b))), 5u)], func_3(), ~abs(vec2<u32>(1u, u_input.b) & vec2<u32>(u_input.b, u_input.b)));
}

fn func_5(arg_0: u32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(40075u, 5u)];
    var var_1 = Struct_3(Struct_2(-(~vec2<i32>(u_input.c.x, 1i)), _wgslsmith_clamp_i32(~(-u_input.a.x), -1i, -1i)), -1i, vec3<f32>(-209f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(127753u, 10u)]), 266f), global1[_wgslsmith_index_u32(~(~arg_0), 10u)], vec2<u32>(arg_0, u_input.b) & (vec2<u32>(1u, arg_0 ^ 19521u) >> ((~vec2<u32>(arg_0, arg_0) ^ (vec2<u32>(54215u, 28469u) >> (vec2<u32>(33509u, arg_0) % vec2<u32>(32u)))) % vec2<u32>(32u))));
    return 28567u;
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: u32) -> u32 {
    global0 = array<bool, 5>();
    let var_0 = -abs(~vec4<i32>(i32(-1i) * -51292i, abs(u_input.c.x), _wgslsmith_sub_i32(-12152i, u_input.a.x), -2147483647i));
    global1 = array<f32, 10>();
    let var_1 = Struct_3(Struct_2(~u_input.c.xz, abs(reverseBits(~24455i))), reverseBits(_wgslsmith_clamp_i32(-23369i, reverseBits(1i), ~(~1i))), vec3<f32>(global1[_wgslsmith_index_u32(func_5(func_2()) >> (23787u % 32u), 10u)], _wgslsmith_f_op_f32(abs(638f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1121f, _wgslsmith_f_op_f32(arg_1 * 158f), all(vec4<bool>(arg_0.x, false, arg_0.x, false))))))), -2010f, ~vec2<u32>(88884u, ~arg_2) >> (vec2<u32>(26908u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_2, u_input.b), ~5064u)) % vec2<u32>(32u)));
    let var_2 = select(var_0.wzw, _wgslsmith_add_vec3_i32(vec3<i32>(1i, var_0.x & -var_1.b, u_input.c.x), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(82662i, -8430i), 12975i), _wgslsmith_sub_i32(min(-1i, var_0.x), ~0i), -35755i)), any(!arg_0));
    return var_1.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(~u_input.b > u_input.b, global0[_wgslsmith_index_u32(u_input.b, 5u)]);
    let var_1 = u_input.c.x;
    var_0 = vec2<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 5u)], true), _wgslsmith_f_op_f32(ceil(463f)), ~24697u), 71274u), 5u)], true);
    let var_2 = select(abs(_wgslsmith_mult_vec2_u32(~countOneBits(vec2<u32>(4294967295u, 0u)), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(u_input.b, u_input.b)))), ~_wgslsmith_mult_vec2_u32(~firstLeadingBit(vec2<u32>(1u, u_input.b)), _wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, u_input.b), vec2<u32>(134961u, 38518u) ^ vec2<u32>(1u, u_input.b))), func_3());
    let var_3 = 98047u;
    var_0 = vec2<bool>(select(var_0.x, !(!(global0[_wgslsmith_index_u32(4294967295u, 5u)] && var_0.x)), any(vec3<bool>(-1i != var_1, global0[_wgslsmith_index_u32(~4294967295u, 5u)], global0[_wgslsmith_index_u32(28488u, 5u)] | true))), true);
    global1 = array<f32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_2.x, _wgslsmith_div_u32(func_2(), func_2()), ~u_input.b), _wgslsmith_mult_i32(var_1, u_input.c.x), u_input.c.x, abs(_wgslsmith_sub_u32(4294967295u, max(~4294967295u, var_3 ^ 14807u))));
}

