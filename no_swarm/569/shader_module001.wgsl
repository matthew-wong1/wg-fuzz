struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 1>;

var<private> global1: array<vec2<bool>, 25>;

var<private> global2: array<u32, 26> = array<u32, 26>(17582u, 70636u, 32817u, 20686u, 1u, 18468u, 100059u, 13027u, 4294967295u, 7510u, 19936u, 0u, 4294967295u, 4294967295u, 6456u, 52085u, 1u, 62905u, 0u, 32354u, 7217u, 0u, 4294967295u, 0u, 0u, 0u);

var<private> global3: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(276f, vec2<f32>(-1425f, -143f), false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>) -> u32 {
    global3 = array<Struct_1, 1>();
    var var_0 = 0u;
    var var_1 = u_input.a;
    var var_2 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 26u)], 26u)] & min(global2[_wgslsmith_index_u32(21464u, 26u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 26u)], 26u)], 26u)])), global2[_wgslsmith_index_u32(4294967295u, 26u)]), 1u, 18u, ~0u);
    var var_3 = arg_1.xw;
    return ~67644u;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: vec2<f32>) -> u32 {
    let var_0 = 0i;
    global0 = array<vec2<f32>, 1>();
    global2 = array<u32, 26>();
    global2 = array<u32, 26>();
    return func_2(~(-firstTrailingBit(abs(u_input.a))), !select(vec4<bool>(false, arg_1.x, any(arg_2.zyz), false), !arg_2, arg_2));
}

fn func_3() -> vec2<i32> {
    global0 = array<vec2<f32>, 1>();
    let var_0 = _wgslsmith_sub_u32(~(~_wgslsmith_add_u32(1u, 1u)), ~(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 26u)], 26u)]), 26u)], 26u)] & global2[_wgslsmith_index_u32(reverseBits(countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 26u)], 26u)])), 26u)]));
    var var_1 = global3[_wgslsmith_index_u32(0u, 1u)];
    let var_2 = u_input.a.ywz;
    let var_3 = global3[_wgslsmith_index_u32(15250u, 1u)];
    return _wgslsmith_clamp_vec2_i32(vec2<i32>(reverseBits(~u_input.a.x | firstLeadingBit(44459i)), _wgslsmith_div_i32(var_2.x ^ u_input.a.x, u_input.a.x) & ~var_2.x), select(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(var_2.x, u_input.a.x), vec2<i32>(-15772i, u_input.a.x) >> (vec2<u32>(global2[_wgslsmith_index_u32(48008u, 26u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(35903u, 26u)], 26u)]) % vec2<u32>(32u))), vec2<i32>(2147483647i << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 26u)] % 32u), u_input.a.x)), vec2<i32>(var_2.x, ~2147483647i), all(vec2<bool>(true, !var_1.c))), -var_2.zy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(1123f)), vec2<f32>(-413f, _wgslsmith_f_op_f32(min(1469f, _wgslsmith_f_op_f32(f32(-1f) * -420f)))), !any(select(vec2<bool>(true, true), !global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 26u)], 25u)], true)));
    global1 = array<vec2<bool>, 25>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1536f, _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))) - var_0.a));
    let var_2 = _wgslsmith_mod_vec2_i32(~(_wgslsmith_mult_vec2_i32(min(vec2<i32>(0i, -1i), u_input.a.yy), max(u_input.a.wz, vec2<i32>(u_input.a.x, -2147483647i))) >> (~countOneBits(vec2<u32>(69482u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4584u, 26u)], 26u)])) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(select(u_input.a.wz ^ vec2<i32>(-2147483647i, u_input.a.x), vec2<i32>(u_input.a.x, 26214i) ^ vec2<i32>(u_input.a.x, 8586i), global1[_wgslsmith_index_u32(func_1(global3[_wgslsmith_index_u32(9694u, 1u)], vec2<bool>(true, var_0.c), vec4<bool>(var_0.c, true, false, true), var_0.b), 25u)]), min(u_input.a.yx, func_3())) << (~(~_wgslsmith_div_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(88781u, 26u)], 26u)], 4294967295u), vec2<u32>(17267u, 30762u))) % vec2<u32>(32u)));
    var var_3 = var_0;
    global1 = array<vec2<bool>, 25>();
    var var_4 = vec3<bool>(!(all(vec2<bool>(true, var_0.c)) || false) && !var_3.c, !var_3.c, all(!(!vec4<bool>(true, var_0.c, false, var_0.c))) || var_3.c);
    var var_5 = var_0;
    var var_6 = 4294967295u << (global2[_wgslsmith_index_u32(0u, 26u)] % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(0i, select(u_input.a.xyx, vec3<i32>(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, var_2.x, var_2.x), u_input.a.x), !all(vec4<bool>(var_3.c, var_3.c, var_5.c, false))) | min(u_input.a.wwy, ~u_input.a.yzy));
}

