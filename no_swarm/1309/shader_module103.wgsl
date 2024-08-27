struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: bool;

var<private> global2: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(1u, 62478u), vec2<u32>(20162u, 69944u), vec2<u32>(40674u, 0u), vec2<u32>(39712u, 0u), vec2<u32>(49221u, 9099u), vec2<u32>(62539u, 1u));

var<private> global3: array<u32, 14> = array<u32, 14>(0u, 0u, 76433u, 46371u, 4294967295u, 1u, 71713u, 19091u, 63237u, 7107u, 52393u, 66309u, 35391u, 44573u);

var<private> global4: array<Struct_2, 10>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: vec3<f32>) -> i32 {
    let var_0 = global4[_wgslsmith_index_u32(arg_2.x, 10u)];
    let var_1 = Struct_2(!all(vec4<bool>(true, true, global3[_wgslsmith_index_u32(u_input.a.x, 14u)] < arg_2.x, arg_0.x)));
    let var_2 = _wgslsmith_f_op_f32(min(-104f, 580f));
    let var_3 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(reverseBits(abs(global3[_wgslsmith_index_u32(arg_2.x, 14u)])), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(arg_2.x, global3[_wgslsmith_index_u32(arg_2.x, 14u)]))) & u_input.a.x, 4294967295u, 95350u);
    global3 = array<u32, 14>();
    return ~firstTrailingBit(~(-1i));
}

fn func_3(arg_0: i32) -> u32 {
    global4 = array<Struct_2, 10>();
    var var_0 = global4[_wgslsmith_index_u32(29727u, 10u)];
    let var_1 = var_0.a;
    global1 = var_0.a;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-498f - _wgslsmith_f_op_f32(147f * -256f)), -1372f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1691f, -954f, var_0.a)), _wgslsmith_f_op_f32(509f - -171f)), -2244f)), true)) + -110f);
    return _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(max(_wgslsmith_div_u32(1u, 58323u), 4294967295u), 13873u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x))), firstLeadingBit(firstLeadingBit(vec3<u32>(firstTrailingBit(26850u), ~u_input.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 14u)]))));
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = abs(global0[_wgslsmith_index_u32(1u, 31u)]);
    global4 = array<Struct_2, 10>();
    let var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, global3[_wgslsmith_index_u32(1u, 14u)], 1u, 1u)), vec4<u32>(select(1u, 0u, true), u_input.a.x, firstLeadingBit(1u), ~global3[_wgslsmith_index_u32(u_input.a.x, 14u)])), max(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)], 14u)], 82614u), vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x) ^ vec4<u32>(1u, 52488u, u_input.a.x, global3[_wgslsmith_index_u32(0u, 14u)])), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 37403u, 63570u), vec4<u32>(28434u, 61006u, 0u, u_input.a.x)), abs(vec4<u32>(u_input.a.x, 4294967295u, 51310u, 1u))))), vec4<u32>(0u >> (reverseBits(u_input.a.x | 21982u) % 32u), u_input.a.x, ~(_wgslsmith_mult_u32(27083u, global3[_wgslsmith_index_u32(9141u, 14u)]) & ~1u), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a.x, 1u), 0u << ((global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)] ^ global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)], 14u)]) % 32u))));
    return reverseBits(-13819i);
}

fn func_1(arg_0: vec2<bool>) -> bool {
    let var_0 = vec4<i32>(2147483647i, -1i, ~abs(select(func_2(vec3<bool>(false, true, arg_0.x), vec3<i32>(-22549i, -11650i, 7414i), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec3<f32>(1192f, -1849f, -1657f)), -8673i | global0[_wgslsmith_index_u32(69177u, 31u)], !arg_0.x)), func_4(Struct_1(arg_0.x, global0[_wgslsmith_index_u32(func_3(u_input.b), 31u)], false)));
    let var_1 = vec2<u32>(~31249u, 4294967295u);
    let var_2 = _wgslsmith_sub_i32(~var_0.x | 6642i, firstLeadingBit(firstLeadingBit(~(-7495i))));
    var var_3 = !vec3<bool>((-588f <= _wgslsmith_f_op_f32(round(1130f))) | true, true, true);
    let var_4 = Struct_1(var_3.x, firstTrailingBit(var_0.x), all(!var_3.yz));
    return !((all(!vec4<bool>(false, arg_0.x, var_4.a, arg_0.x)) & (false & any(vec4<bool>(true, false, var_4.a, true)))) & var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_1(any(vec4<bool>(false, !func_1(vec2<bool>(true, true)), true, true)), -84335i, all(select(vec2<bool>(false, true), vec2<bool>(true, true), true)));
    var_1 = Struct_1(false, reverseBits(-1i), any(select(vec3<bool>(true, select(var_1.c, var_1.c, false), var_1.a), vec3<bool>(true, true, true), vec3<bool>(select(var_1.c, var_1.c, false), !var_1.c, var_1.b >= -2147483647i))));
    var_0 = any(vec2<bool>(any(vec4<bool>(true, var_1.c || var_1.c, true, true)), any(select(vec4<bool>(var_1.c, false, var_1.a, false), vec4<bool>(var_1.a, true, true, var_1.a), var_1.c)) && var_1.a));
    let var_2 = ~abs(vec2<i32>(~(u_input.d >> (global3[_wgslsmith_index_u32(u_input.a.x, 14u)] % 32u)), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.d, global0[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_dot_vec4_i32(u_input.c, u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_clamp_vec2_i32(min(u_input.c.yx, vec2<i32>(2147483647i, -1i)), -(vec2<i32>(var_2.x, var_1.b) >> (u_input.a % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(0u, 31u)], -12086i), vec2<i32>(2147483647i, u_input.b)))), ~(~vec4<u32>(~24912u, _wgslsmith_add_u32(u_input.a.x, 31699u), global3[_wgslsmith_index_u32(~1u, 14u)], min(global3[_wgslsmith_index_u32(4294967295u, 14u)], 4294967295u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(977f, _wgslsmith_f_op_f32(f32(-1f) * -826f))), _wgslsmith_div_f32(612f, -1129f)));
}

