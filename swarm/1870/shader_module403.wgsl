struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<bool>,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(4294967295u, 35456u), -133f);

var<private> global1: array<bool, 6> = array<bool, 6>(false, true, true, false, false, false);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_u32(countOneBits(firstTrailingBit(firstLeadingBit(vec4<u32>(global0.a.x, global0.a.x, global0.a.x, 29464u)))), vec4<u32>(4294967295u, abs(min(1u, 4294967295u)), 12803u, 5215u) >> (((~vec4<u32>(global0.a.x, 1u, 1u, global0.a.x) | firstTrailingBit(vec4<u32>(19700u, global0.a.x, 49918u, 4294967295u))) << (vec4<u32>(~4294967295u, abs(global0.a.x), global0.a.x, min(global0.a.x, global0.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global1 = array<bool, 6>();
    return Struct_1(vec3<bool>(true | any(vec3<bool>(true, true, true)), global1[_wgslsmith_index_u32(~abs(var_0.x), 6u)] & global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(global0.a.x), global0.a.x, var_0.x & var_0.x), 6u)], true), ~(_wgslsmith_add_i32(-12888i, -u_input.a.x) ^ 27885i), vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 6u)], any(select(!vec2<bool>(global1[_wgslsmith_index_u32(global0.a.x, 6u)], global1[_wgslsmith_index_u32(var_0.x, 6u)]), vec2<bool>(global1[_wgslsmith_index_u32(global0.a.x, 6u)], global1[_wgslsmith_index_u32(13102u, 6u)]), !vec2<bool>(false, global1[_wgslsmith_index_u32(global0.a.x, 6u)])))));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> Struct_2 {
    global0 = Struct_2(vec2<u32>(_wgslsmith_mod_u32(~(arg_1 >> (41970u % 32u)), global0.a.x), _wgslsmith_mult_u32(arg_1, _wgslsmith_sub_u32(~8116u, arg_1))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-282f, -974f)))));
    let var_0 = ~global0.a.x;
    global0 = Struct_2(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~4294967295u, ~arg_1), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(arg_1, 37002u, global0.a.x)))), 16092u), -287f);
    global1 = array<bool, 6>();
    let var_1 = select(~41958u, var_0, arg_0.a.x);
    return Struct_2(vec2<u32>(~1u, reverseBits(53461u)), global0.b);
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: u32) -> i32 {
    let var_0 = func_3(func_2(), 0u);
    var var_1 = arg_2.c.a;
    var var_2 = ~u_input.a.x;
    global1 = array<bool, 6>();
    var var_3 = arg_2;
    return ~2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 6>();
    var var_0 = _wgslsmith_dot_vec4_i32(u_input.a, u_input.a);
    global1 = array<bool, 6>();
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -18324i), vec2<i32>(47545i, 2147483647i)), vec2<i32>(u_input.a.x, u_input.a.x)), min(_wgslsmith_dot_vec2_i32(vec2<i32>(29842i, 32680i), u_input.a.xy), 17701i), ~reverseBits(-1i), ~select(u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(global0.a.x, 6u)])), vec4<i32>(u_input.a.x, 1i, ~_wgslsmith_add_i32(u_input.a.x, -7205i), _wgslsmith_div_i32(u_input.a.x << (73765u % 32u), 20852i))), firstTrailingBit(countOneBits(vec4<i32>(max(u_input.a.x, -1i), u_input.a.x & u_input.a.x, func_1(u_input.a.x, vec2<i32>(-1i, u_input.a.x), Struct_4(Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(10925u, 6u)], global1[_wgslsmith_index_u32(0u, 6u)], false), u_input.a.x, vec3<bool>(false, true, true)), Struct_2(vec2<u32>(4294967295u, global0.a.x), -1000f), Struct_3(Struct_1(vec3<bool>(true, true, false), u_input.a.x, vec3<bool>(false, global1[_wgslsmith_index_u32(global0.a.x, 6u)], false)), Struct_2(vec2<u32>(1u, 62198u), global0.b), vec3<bool>(true, global1[_wgslsmith_index_u32(global0.a.x, 6u)], false), 2147483647i, false), vec3<u32>(0u, 4294967295u, global0.a.x)), 35217u), -2147483647i))));
    var var_2 = Struct_3(Struct_1(vec3<bool>(true, global1[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(global0.a.x, 54280u, global0.a.x)), 6u)], any(vec4<bool>(false, global1[_wgslsmith_index_u32(global0.a.x, 6u)], false, false))), -(~u_input.a.x ^ 1i), select(func_2().a, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_2().c), !(-620f <= global0.b))), Struct_2(countOneBits(global0.a), _wgslsmith_f_op_f32(f32(-1f) * -989f)), select(vec3<bool>(any(!vec4<bool>(global1[_wgslsmith_index_u32(global0.a.x, 6u)], true, false, false)), false, func_2().a.x), select(!func_2().c, func_2().a, select(vec3<bool>(global1[_wgslsmith_index_u32(global0.a.x, 6u)], global1[_wgslsmith_index_u32(global0.a.x, 6u)], true), select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], false, global1[_wgslsmith_index_u32(global0.a.x, 6u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(83251u, 6u)]), global1[_wgslsmith_index_u32(21713u, 6u)]), func_2().c)), select(!vec3<bool>(true, global1[_wgslsmith_index_u32(20952u, 6u)], global1[_wgslsmith_index_u32(0u, 6u)]), !select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 6u)], false, global1[_wgslsmith_index_u32(35136u, 6u)]), vec3<bool>(global1[_wgslsmith_index_u32(1004u, 6u)], global1[_wgslsmith_index_u32(0u, 6u)], false), false), true)), func_2().b ^ _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(1u, 6u)]);
    var var_3 = var_2.b;
    let var_4 = Struct_4(var_2.a, var_2.b, Struct_3(Struct_1(!func_2().a, -17149i, select(!vec3<bool>(global1[_wgslsmith_index_u32(var_3.a.x, 6u)], var_2.e, false), !vec3<bool>(var_2.a.a.x, var_2.a.a.x, var_2.e), func_2().c.x)), var_2.b, var_2.a.a, 58048i, global1[_wgslsmith_index_u32(~(~1u), 6u)]), vec3<u32>(~var_2.b.a.x, 77774u, _wgslsmith_mod_u32(~global0.a.x, var_3.a.x) << (_wgslsmith_clamp_u32(global0.a.x, global0.a.x, 20637u << (global0.a.x % 32u)) % 32u)));
    var var_5 = vec4<i32>(-1i) * -select(vec4<i32>(-12840i, min(0i, 2147483647i), i32(-1i) * -3078i, u_input.a.x), select(vec4<i32>(2147483647i, 2147483647i, -1476i, 0i) >> (vec4<u32>(1u, 19462u, var_3.a.x, var_4.c.b.a.x) % vec4<u32>(32u)), firstLeadingBit(u_input.a), select(vec4<bool>(false, false, true, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(global0.a.x, 6u)], true), vec4<bool>(true, true, var_2.e, global1[_wgslsmith_index_u32(var_2.b.a.x, 6u)]))), true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<u32>(global0.a.x, _wgslsmith_clamp_u32(var_2.b.a.x, 5667u, global0.a.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, 4294967295u, 48042u, 60841u), vec4<u32>(var_3.a.x, global0.a.x, 14990u, 1u)), var_4.b.a.x)), -43935i, var_5.x, _wgslsmith_sub_vec2_i32(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-11554i, u_input.a.x) & u_input.a.zx, abs(var_5.zx))), abs(vec2<i32>(func_2().b, _wgslsmith_sub_i32(1i, -1i)))), vec2<f32>(global0.b, _wgslsmith_f_op_f32(-var_3.b)));
}

