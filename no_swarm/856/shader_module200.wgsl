struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<bool, 10>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    global0 = ~vec4<i32>(u_input.a, ~_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(arg_1.a.zx, global0.xz), -vec2<i32>(-2024i, u_input.a)), ~(~38831i) | (arg_1.a.x ^ -64701i), -2147483647i);
    let var_0 = 61138u;
    global0 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(firstTrailingBit(arg_1.a.x), 1i), -1i), arg_1.a.x, arg_1.a.x, ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_1.a.xz << (vec2<u32>(12016u, var_0) % vec2<u32>(32u)), global0.zz), countOneBits(global0.xy)));
    global1 = array<bool, 10>();
    let var_1 = vec4<i32>(arg_1.a.x, global0.x, _wgslsmith_add_i32(-max(-2147483647i, global0.x), -(arg_1.a.x << (_wgslsmith_mult_u32(var_0, var_0) % 32u))), ~2535i);
    return var_0;
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    let var_0 = ~abs(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(func_3(arg_0, Struct_1(vec3<i32>(u_input.a, 76959i, -24681i), vec4<bool>(false, global1[_wgslsmith_index_u32(50608u, 10u)], true, global1[_wgslsmith_index_u32(8828u, 10u)]), global1[_wgslsmith_index_u32(1u, 10u)])), ~1u, 1u), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, 1u), 10u)]));
    var var_1 = -min(~0i, ~abs(global0.x));
    let var_2 = vec4<bool>(all(vec3<bool>(false, global1[_wgslsmith_index_u32((4294967295u ^ var_0.x) << (~4294967295u % 32u), 10u)], global1[_wgslsmith_index_u32(firstTrailingBit(countOneBits(var_0.x)), 10u)])), global1[_wgslsmith_index_u32(var_0.x, 10u)], all(vec3<bool>(global1[_wgslsmith_index_u32(~(~var_0.x), 10u)], ~0i == global0.x, false || global1[_wgslsmith_index_u32(1u, 10u)])), global1[_wgslsmith_index_u32(~var_0.x, 10u)]);
    var_1 = firstTrailingBit(~u_input.a);
    global1 = array<bool, 10>();
    return _wgslsmith_clamp_i32(~2147483647i, 50494i, max(39683i, ~1i)) >> (~var_0.x % 32u);
}

fn func_1(arg_0: f32, arg_1: u32) -> u32 {
    let var_0 = (select(countOneBits(3962i), 0i, !(!global1[_wgslsmith_index_u32(1u, 10u)])) ^ 0i) | _wgslsmith_clamp_i32(-44436i, -8919i, 0i);
    let var_1 = Struct_1(vec3<i32>(_wgslsmith_div_i32(~(-global0.x), -func_2(vec4<f32>(arg_0, arg_0, -1292f, arg_0))), global0.x, -21802i), vec4<bool>(global1[_wgslsmith_index_u32(arg_1, 10u)], !(!global1[_wgslsmith_index_u32(~0u, 10u)]), !global1[_wgslsmith_index_u32(~43949u, 10u)], global1[_wgslsmith_index_u32(arg_1, 10u)]), !global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, arg_1) << (1u % 32u), 10u)]);
    global1 = array<bool, 10>();
    global1 = array<bool, 10>();
    let var_2 = vec3<bool>(!var_1.b.x, any(vec3<bool>(var_1.c, false, var_1.b.x)), !select(all(vec2<bool>(false, var_1.c)), var_1.c, var_1.c));
    return min(arg_1, _wgslsmith_clamp_u32(~(~arg_1), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(2436u, 4294967295u))), ~_wgslsmith_mod_u32(51112u, arg_1)) | 7709u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(~func_1(1000f, ~0u), _wgslsmith_div_u32(reverseBits(0u), ~(~1u)));
    var_0 = 7035u;
    let var_1 = select(min(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 9222u, 1u), vec3<u32>(0u, 0u, 69317u)), ~4294967295u, firstTrailingBit(52925u)), select(vec3<u32>(1u, 0u, select(50954u, 1u, false)), vec3<u32>(1u, 1u, 1u), !(!vec3<bool>(true, global1[_wgslsmith_index_u32(30608u, 10u)], global1[_wgslsmith_index_u32(93245u, 10u)])))), abs(firstTrailingBit(vec3<u32>(abs(0u), 1u, 4294967295u))), true);
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_1.x, 4294967295u, var_1.x), ~4294967295u) | var_1.x, abs(_wgslsmith_add_u32(_wgslsmith_clamp_u32(22880u, var_1.x, 4294967295u), var_1.x))), ~(~firstTrailingBit(~var_1.x)), min(var_1.x >> ((~1u & var_1.x) % 32u), 1u), ~var_1.x);
    global0 = vec4<i32>(_wgslsmith_clamp_i32(~23668i, 20710i, max(_wgslsmith_clamp_i32(~u_input.a, ~global0.x, firstTrailingBit(-6653i)), ~2147483647i)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(select(firstLeadingBit(global0.wyx), ~global0.yyx, select(vec3<bool>(global1[_wgslsmith_index_u32(var_2.x, 10u)], global1[_wgslsmith_index_u32(var_2.x, 10u)], global1[_wgslsmith_index_u32(84246u, 10u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(var_1.x, 10u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(14600u, 10u)]))), firstLeadingBit(abs(vec3<i32>(-53808i, 1i, u_input.a)))), -vec3<i32>(42146i, global0.x, global0.x) & global0.xyw), 2147483647i, -13470i);
    var var_3 = Struct_1(-((vec3<i32>(global0.x, u_input.a, 2147483647i) ^ _wgslsmith_div_vec3_i32(global0.ywy, vec3<i32>(global0.x, -1i, 0i))) >> (_wgslsmith_add_vec3_u32(min(var_2.www, var_1), var_2.wxw) % vec3<u32>(32u))), !vec4<bool>(all(select(vec3<bool>(global1[_wgslsmith_index_u32(var_2.x, 10u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(87232u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)]), global1[_wgslsmith_index_u32(var_1.x, 10u)])), global1[_wgslsmith_index_u32(~4294967295u, 10u)] | (global1[_wgslsmith_index_u32(var_2.x, 10u)] || true), any(select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 10u)], false, global1[_wgslsmith_index_u32(696u, 10u)]), vec3<bool>(global1[_wgslsmith_index_u32(var_2.x, 10u)], true, global1[_wgslsmith_index_u32(var_2.x, 10u)]), global1[_wgslsmith_index_u32(4294967295u, 10u)])), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(var_1.yz, var_1.zy), 10u)]), any(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 10u)], select(any(vec4<bool>(global1[_wgslsmith_index_u32(var_2.x, 10u)], true, true, global1[_wgslsmith_index_u32(var_1.x, 10u)])), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.x, var_2.x), 10u)], var_2.x != var_1.x), any(vec4<bool>(global1[_wgslsmith_index_u32(var_2.x, 10u)], false, global1[_wgslsmith_index_u32(var_1.x, 10u)], false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-131f, 810f, 132f, -409f), vec4<f32>(708f, 430f, 728f, -247f))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1383f, -181f, -1000f))))), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(global0.x, u_input.a, -2147483647i, u_input.a)), vec4<i32>(-33194i, 1i, u_input.a, global0.x) | vec4<i32>(u_input.a, 19192i, global0.x, var_3.a.x)), vec4<i32>(-28245i, -u_input.a, -1i, select(1i, 0i, global1[_wgslsmith_index_u32(var_1.x, 10u)]))), vec4<i32>(-31588i, u_input.a, _wgslsmith_clamp_i32(i32(-1i) * -1i, u_input.a >> (85193u % 32u), -1i << (var_1.x % 32u)), max(-var_3.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, 7577i), var_3.a.zy)))), vec3<u32>(var_2.x, 1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_2.x, 0u), vec3<u32>(48967u, 1u, 4294967295u)), var_2.yxz), ~var_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), var_2.zw) | (var_1.x << (var_1.x % 32u)))), (firstTrailingBit(vec3<i32>(1755i, u_input.a, 2147483647i) << (vec3<u32>(var_1.x, var_1.x, 4294967295u) % vec3<u32>(32u))) | abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(62589i, global0.x, 29846i)))) << (min(firstTrailingBit(select(var_1, vec3<u32>(66553u, 1u, 41073u), global1[_wgslsmith_index_u32(1010u, 10u)])), vec3<u32>(~20944u, _wgslsmith_div_u32(4294967295u, 6231u), _wgslsmith_sub_u32(var_1.x, 1u))) % vec3<u32>(32u)));
}

