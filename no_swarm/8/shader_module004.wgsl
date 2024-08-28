struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(72054u, 4294967295u, 4294967295u);

var<private> global1: vec3<f32> = vec3<f32>(-726f, -1354f, -1499f);

var<private> global2: array<bool, 24> = array<bool, 24>(false, false, false, true, true, true, true, false, true, false, false, true, false, false, true, true, false, false, false, true, true, false, true, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<i32> {
    let var_0 = vec3<bool>(true, !global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(~1u, 1u), ~u_input.c.x >> (0u % 32u)), 24u)], all(vec4<bool>(_wgslsmith_sub_u32(u_input.b, 4294967295u) > _wgslsmith_clamp_u32(global0.x, u_input.b, u_input.c.x), any(!vec4<bool>(global2[_wgslsmith_index_u32(global0.x, 24u)], false, global2[_wgslsmith_index_u32(u_input.c.x, 24u)], global2[_wgslsmith_index_u32(u_input.c.x, 24u)])), all(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(global0.x, 24u)])), global2[_wgslsmith_index_u32(15621u, 24u)])));
    var var_1 = _wgslsmith_sub_i32(2147483647i, firstLeadingBit(0i) >> ((u_input.b >> (~abs(u_input.b) % 32u)) % 32u));
    global0 = ~vec3<u32>(firstLeadingBit(_wgslsmith_add_u32(global0.x, ~u_input.b)), 1u, countOneBits(~4294967295u));
    var var_2 = global2[_wgslsmith_index_u32(min(~u_input.b, _wgslsmith_div_u32(countOneBits(1u), u_input.c.x)), 24u)];
    let var_3 = Struct_2(~(~(_wgslsmith_mod_i32(2147483647i, -27399i) >> (0u % 32u))), select(var_0, vec3<bool>(false, any(select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(false, true, true, false), vec4<bool>(var_0.x, false, true, var_0.x))), var_0.x), var_0), 2147483647i, Struct_1(u_input.c, all(vec2<bool>(!global2[_wgslsmith_index_u32(31615u, 24u)], u_input.a.x < 0i))));
    return vec4<i32>(_wgslsmith_clamp_i32(-8191i, var_3.c, u_input.a.x), -(i32(-1i) * -firstTrailingBit(3463i)), countOneBits(-46673i) | firstTrailingBit(var_3.a), _wgslsmith_dot_vec2_i32(~max(vec2<i32>(var_3.a, -40442i), vec2<i32>(-1i, var_3.c)), firstTrailingBit(u_input.a)) & u_input.a.x);
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    var var_0 = 910f;
    var_0 = global1.x;
    global0 = vec3<u32>(~60797u, ~u_input.b, global0.x);
    let var_1 = func_3();
    var var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~(~global0.x) | (~global0.x & _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 73440u, 0u, global0.x), vec4<u32>(1u, global0.x, u_input.c.x, global0.x))), global0.x, u_input.b, _wgslsmith_dot_vec3_u32(~(vec3<u32>(8492u, 38319u, u_input.c.x) & vec3<u32>(56600u, global0.x, 0u)), vec3<u32>(~1u, ~0u, global0.x ^ 22806u))), vec4<u32>(~firstLeadingBit(u_input.b), abs(u_input.b), 4294967295u, ~select(1u, min(0u, u_input.c.x), false)), ~(~vec4<u32>(1u, global0.x, global0.x, u_input.b) >> (firstTrailingBit(~vec4<u32>(20366u, u_input.c.x, u_input.c.x, 1u)) % vec4<u32>(32u))));
    return firstTrailingBit(global0.x);
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: u32) -> bool {
    let var_0 = Struct_2(-1i, vec3<bool>(true, arg_0, true), abs(u_input.a.x), Struct_1(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(global0.zx), _wgslsmith_sub_vec2_u32(u_input.c, vec2<u32>(global0.x, 58067u)), vec2<u32>(4294967295u, global0.x)), u_input.c), true));
    global2 = array<bool, 24>();
    global0 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(min(~var_0.d.a.x, global0.x), ~global0.x | ~1u, ~abs(54662u)), _wgslsmith_mod_vec3_u32(~(vec3<u32>(var_0.d.a.x, u_input.c.x, global0.x) >> (vec3<u32>(4294967295u, 10208u, 15477u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.b, var_0.d.a.x), vec3<u32>(u_input.b, var_0.d.a.x, arg_2)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global0.x, 0u), vec3<u32>(var_0.d.a.x, 68035u, 0u))))), select(vec3<u32>(~1u, _wgslsmith_add_u32(956u, 48253u), func_2(!vec2<bool>(var_0.d.b, arg_1.x))), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.d.a.x, 0u), ~u_input.c.x), ~(~4294967295u), ~(~1u)), all(arg_1.wxw)));
    let var_1 = ~(~var_0.d.a.x);
    var var_2 = _wgslsmith_clamp_u32(firstTrailingBit(12588u), abs(((4294967295u | u_input.b) >> (33941u % 32u)) & 1u), ~5467u);
    return firstLeadingBit(-20782i) < ~var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(any(vec4<bool>(func_1(any(vec3<bool>(false, global2[_wgslsmith_index_u32(global0.x, 24u)], global2[_wgslsmith_index_u32(43851u, 24u)])), !vec4<bool>(true, global2[_wgslsmith_index_u32(29464u, 24u)], false, true), ~31562u), false, !global2[_wgslsmith_index_u32(~0u, 24u)], !global2[_wgslsmith_index_u32(1u, 24u)])));
    let var_1 = Struct_1((_wgslsmith_div_vec2_u32(vec2<u32>(global0.x, u_input.c.x), global0.yy) & vec2<u32>(~global0.x, global0.x & 0u)) | (global0.xz << (global0.xx % vec2<u32>(32u))), global2[_wgslsmith_index_u32(38263u, 24u)]);
    let var_2 = Struct_2(u_input.a.x, !vec3<bool>(select(true, true, false) | true, any(vec3<bool>(true, true, true)), false), u_input.a.x >> (_wgslsmith_mod_u32(firstLeadingBit(firstLeadingBit(var_1.a.x)), var_1.a.x) % 32u), var_1);
    let var_3 = !vec3<bool>(true, !func_1(var_0.a | true, !vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(global0.x, 24u)]), func_2(vec2<bool>(true, var_0.a))), false);
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-240f))))), _wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -423f));
    var var_4 = !var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(-312f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2238f - global1.x), _wgslsmith_f_op_f32(-global1.x), var_1.b))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x + -1780f))), _wgslsmith_f_op_f32(global1.x + 1f)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(4055i), i32(-1i) * -96699i), abs(u_input.a ^ vec2<i32>(u_input.a.x, 40538i))), u_input.a.x), -_wgslsmith_add_i32(var_2.a ^ -1i, var_2.a), global1.xz, ~var_1.a.x);
}

