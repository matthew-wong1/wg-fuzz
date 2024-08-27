struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 29>;

var<private> global2: array<u32, 3> = array<u32, 3>(99271u, 33338u, 61253u);

var<private> global3: array<bool, 28>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> u32 {
    var var_0 = arg_0.a.b.b;
    let var_1 = Struct_4(vec4<bool>(!arg_0.a.b.b.x & global3[_wgslsmith_index_u32(select(firstLeadingBit(132300u), 1u, false), 28u)], all(!vec4<bool>(true, true, false, var_0.x)), arg_0.a.b.b.x, false), global1[_wgslsmith_index_u32(min(abs(~global2[_wgslsmith_index_u32(1u, 3u)]), 10311u) & global0.a, 29u)], ~(-_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), _wgslsmith_div_vec2_i32(vec2<i32>(72459i, 0i), u_input.a.yz))));
    global0 = arg_0.a.b;
    let var_2 = !arg_0.a.b.b.x;
    let var_3 = arg_0.a.b;
    return 1u;
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~0u | ~(global2[_wgslsmith_index_u32(global0.a, 3u)] ^ ~func_3(Struct_3(global1[_wgslsmith_index_u32(5133u, 29u)]), global0.b.x)), 29u)];
    global3 = array<bool, 28>();
    global3 = array<bool, 28>();
    let var_1 = global1[_wgslsmith_index_u32(69203u ^ ~select(~4294967295u, 83938u, all(var_0.b.b)), 29u)];
    global3 = array<bool, 28>();
    return var_0.b;
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_4(vec4<bool>(true, select(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(103u, 1u, _wgslsmith_mod_u32(arg_0.a, arg_0.a)), 28u)], true, func_2(4224i, i32(-1i) * -4905i).b.x), func_2(min(u_input.a.x, u_input.a.x), countOneBits(46065i)).b.x == (12394u != global2[_wgslsmith_index_u32(arg_0.a, 3u)]), all(func_2(-16512i, _wgslsmith_mod_i32(u_input.a.x, -19689i)).b.yz)), Struct_2(~(~(~vec4<u32>(arg_0.a, 0u, 1440u, 53767u))), Struct_1(global0.a, global0.b)), firstTrailingBit(u_input.a.yy));
    let var_1 = var_0.b;
    return arg_0.a;
}

fn func_1(arg_0: Struct_4) -> u32 {
    var var_0 = select(!vec4<bool>(!all(vec2<bool>(global0.b.x, false)), !all(vec3<bool>(arg_0.a.x, false, global3[_wgslsmith_index_u32(6392u, 28u)])), true, global3[_wgslsmith_index_u32(global0.a, 28u)]), arg_0.a, vec4<bool>(any(vec4<bool>(!arg_0.a.x, false, true, global3[_wgslsmith_index_u32(1u, 28u)])), true, global3[_wgslsmith_index_u32(0u, 28u)], true));
    global0 = arg_0.b.b;
    var var_1 = func_4(func_2(-(~(~u_input.a.x)), min(arg_0.c.x >> (~4294967295u % 32u), arg_0.c.x)));
    let var_2 = -vec4<i32>(u_input.a.x << (arg_0.b.a.x % 32u), firstTrailingBit(~u_input.a.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a.x, -26293i), _wgslsmith_mult_i32(-1i, u_input.a.x)), u_input.a.x) ^ (vec4<i32>(-40861i, _wgslsmith_clamp_i32(i32(-1i) * -52035i, _wgslsmith_add_i32(-7535i, arg_0.c.x), -27938i), arg_0.c.x, (-7442i | u_input.a.x) & _wgslsmith_sub_i32(-1i, -22860i)) >> (vec4<u32>(global0.a, ~0u, _wgslsmith_mult_u32(~4294967295u, 0u), firstLeadingBit(~global0.a)) % vec4<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-156f)) + _wgslsmith_f_op_f32(-590f - -1748f))))) - _wgslsmith_f_op_f32(max(-386f, 490f)));
    return ~_wgslsmith_div_u32(4294967295u, global2[_wgslsmith_index_u32(20257u, 3u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 29>();
    global3 = array<bool, 28>();
    global0 = Struct_1(_wgslsmith_div_u32(reverseBits(firstTrailingBit(global0.a << (global0.a % 32u))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(global2[_wgslsmith_index_u32(4294967295u, 3u)]), 1u), 3u)]), vec3<bool>(false, !(!(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)], 28u)] && false)), u_input.a.x < _wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 224i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2446i)))));
    var var_0 = Struct_1(4294967295u, global0.b);
    let var_1 = vec2<bool>(func_1(Struct_4(vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 28u)], true, true), global1[_wgslsmith_index_u32(0u, 29u)], vec2<i32>(-19810i, 0i))) == _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.a, 19854u) ^ ~global2[_wgslsmith_index_u32(4294967295u, 3u)], ~(1867u << (var_0.a % 32u))), all(select(!(!vec4<bool>(var_0.b.x, false, false, var_0.b.x)), select(select(vec4<bool>(true, global3[_wgslsmith_index_u32(9847u, 28u)], true, false), vec4<bool>(true, global0.b.x, false, false), vec4<bool>(global0.b.x, true, false, global3[_wgslsmith_index_u32(var_0.a, 28u)])), vec4<bool>(false, true, global3[_wgslsmith_index_u32(global0.a, 28u)], global3[_wgslsmith_index_u32(0u, 28u)]), select(vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 28u)], true, true), vec4<bool>(true, false, false, false), global3[_wgslsmith_index_u32(0u, 28u)])), !(!vec4<bool>(global0.b.x, var_0.b.x, var_0.b.x, global0.b.x)))));
    global3 = array<bool, 28>();
    global2 = array<u32, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_0.a, var_0.a, 7168u), vec4<u32>(global2[_wgslsmith_index_u32(var_0.a, 3u)], var_0.a, 0u, global2[_wgslsmith_index_u32(global0.a, 3u)]), vec4<u32>(var_0.a, global2[_wgslsmith_index_u32(1u, 3u)], var_0.a, 112583u)), vec4<u32>(global0.a, var_0.a, 4294967295u, 4294967295u), false)), u_input.a.xy);
}

