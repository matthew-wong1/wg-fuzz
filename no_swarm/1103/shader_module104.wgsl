struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<u32, 22> = array<u32, 22>(77716u, 49731u, 0u, 26879u, 29193u, 17777u, 144026u, 59834u, 73145u, 27406u, 0u, 0u, 1u, 1u, 1u, 86031u, 36980u, 59958u, 4294967295u, 0u, 12774u, 626u);

var<private> global2: array<Struct_4, 19>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: vec4<f32>) -> i32 {
    let var_0 = 0i;
    var var_1 = vec2<bool>(global0.x, global0.x);
    let var_2 = Struct_1(global1[_wgslsmith_index_u32(~firstTrailingBit(arg_1.x), 22u)]);
    var var_3 = global2[_wgslsmith_index_u32(1u, 19u)];
    var var_4 = ~arg_2;
    return max(_wgslsmith_add_i32(~0i, var_0), _wgslsmith_mod_i32(-arg_0.d.a.x, i32(-1i) * -15085i));
}

fn func_3() -> f32 {
    global1 = array<u32, 22>();
    let var_0 = Struct_2(reverseBits(vec2<i32>(_wgslsmith_add_i32(u_input.a, ~u_input.a), -u_input.a)), vec2<i32>(_wgslsmith_mod_i32(35862i, u_input.a) >> (global1[_wgslsmith_index_u32(~21156u, 22u)] % 32u), u_input.a) >> (~(~firstLeadingBit(vec2<u32>(1u, global1[_wgslsmith_index_u32(0u, 22u)]))) % vec2<u32>(32u)));
    global1 = array<u32, 22>();
    global1 = array<u32, 22>();
    let var_1 = vec3<u32>(~(~(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(231u, 22u)], 22u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 22u)], 4294967295u, 65368u), vec4<u32>(global1[_wgslsmith_index_u32(13237u, 22u)], 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(120703u, 22u)], 22u)], 22u)], 17130u)), 22u)])), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 4707u)), firstLeadingBit((vec2<u32>(50425u, 4294967295u) & vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 22u)], 22u)], 0u)) & vec2<u32>(43421u, 15216u))), _wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 22u)], 22u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 22u)]), vec2<u32>(24709u, 4294967295u)), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 22u)]))), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(46483u, 22u)], 1u), ~16367u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1541u, 4294967295u) ^ vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 22u)], 22u)]), max(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30656u, 22u)], 22u)], global1[_wgslsmith_index_u32(58986u, 22u)]), vec2<u32>(3128u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)], 22u)])), ~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6724u, 22u)], 22u)], 22u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)], 22u)], 22u)], 22u)])))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1022f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-342f, -1552f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(341f)), _wgslsmith_f_op_f32(f32(-1f) * -443f)), -1610f, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 22u)]), 22u)] > 58503u))))));
}

fn func_2() -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~firstLeadingBit(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(35495u, 22u)], 22u)])), 132053u), 19u)];
    let var_1 = global0.x;
    var var_2 = !(!(!((true | global0.x) & all(vec2<bool>(false, true)))));
    let var_3 = _wgslsmith_f_op_f32(-967f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))));
    global1 = array<u32, 22>();
    return abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(global1[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(43719u, 86567u, global1[_wgslsmith_index_u32(26459u, 22u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19336u, 22u)], 22u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 22u)], 22u)], 22u)], 22u)], 123556u, 51503u, 1u)), 22u)]), 22u)]), ~(global1[_wgslsmith_index_u32(~2806u, 22u)] >> (49953u % 32u))), 22u)], 22u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(func_1(global2[_wgslsmith_index_u32(1u, 19u)], vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40514u, 22u)], 22u)], 22u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)], 22u)], 22u)], 22u)], 1u), vec3<i32>(1i, -66453i, 61445i), vec4<f32>(-693f, 427f, 225f, -268f)) << ((global1[_wgslsmith_index_u32(15226u, 22u)] << (global1[_wgslsmith_index_u32(21904u, 22u)] % 32u)) % 32u), u_input.a, ~(u_input.a >> (4294967295u % 32u)), ~59938i), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(func_2(), 22u)], ~(~91397u >> (global1[_wgslsmith_index_u32(15312u << (1u % 32u), 22u)] % 32u))), 1000f);
}

