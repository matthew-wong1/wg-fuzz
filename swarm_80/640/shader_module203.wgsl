struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 19> = array<bool, 19>(false, true, false, true, false, false, true, true, true, false, true, true, true, false, false, false, false, true, false);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>) -> vec3<bool> {
    var var_0 = Struct_3(vec2<i32>(0i, ~_wgslsmith_div_i32(u_input.a, 41630i)) << (~abs(arg_1.yy) % vec2<u32>(32u)), Struct_2(-_wgslsmith_div_i32(-arg_0.x, 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-179f, 850f, global1[_wgslsmith_index_u32(global0.b.x, 19u)]))))), Struct_1(vec3<bool>(all(select(vec4<bool>(true, true, false, global0.a.x), vec4<bool>(true, false, global0.a.x, true), vec4<bool>(true, false, global0.a.x, true))), !(!global1[_wgslsmith_index_u32(2008u, 19u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(41175u, arg_1.x)), 19u)]), ~vec4<u32>(~arg_1.x, _wgslsmith_clamp_u32(global0.b.x, 0u, 0u), _wgslsmith_mod_u32(arg_1.x, arg_1.x), u_input.c)), 300f);
    var_0 = Struct_3(~_wgslsmith_div_vec2_i32(vec2<i32>(firstLeadingBit(2147483647i), _wgslsmith_clamp_i32(-2147483647i, -1i, u_input.b.x)), vec2<i32>(u_input.a, arg_0.x)), var_0.b, Struct_1(select(select(!var_0.c.a, vec3<bool>(true, false, global1[_wgslsmith_index_u32(32484u, 19u)]), var_0.c.a.x & false), global0.a, !select(vec3<bool>(var_0.c.a.x, false, true), vec3<bool>(global0.a.x, var_0.c.a.x, false), global0.a)), max(var_0.c.b, _wgslsmith_sub_vec4_u32(global0.b, vec4<u32>(4294967295u, u_input.c, 25675u, u_input.c) ^ var_0.c.b))), _wgslsmith_f_op_f32(var_0.b.b + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + _wgslsmith_f_op_f32(abs(-1564f))), var_0.b.b)));
    var var_1 = Struct_4(var_0.c, _wgslsmith_add_vec4_i32(-(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, 0i, 15588i, var_0.b.a), vec4<i32>(u_input.a, -23052i, 38282i, 0i)) << (~vec4<u32>(var_0.c.b.x, 0u, global0.b.x, u_input.c) % vec4<u32>(32u))), ~_wgslsmith_clamp_vec4_i32(~vec4<i32>(-494i, u_input.a, 0i, arg_0.x), -vec4<i32>(arg_0.x, 62555i, arg_0.x, u_input.b.x), firstTrailingBit(vec4<i32>(u_input.a, var_0.b.a, var_0.a.x, arg_0.x)))), reverseBits(vec2<u32>(arg_1.x, 41202u)));
    global1 = array<bool, 19>();
    global1 = array<bool, 19>();
    return !select(select(var_1.a.a, global0.a, vec3<bool>(!global0.a.x, true, all(var_0.c.a))), select(var_0.c.a, vec3<bool>(any(vec2<bool>(true, false)), all(vec3<bool>(var_0.c.a.x, false, true)), global0.a.x), !(!global0.a)), select(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], false, global0.a.x), var_1.a.a, true));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_4) -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-150f, arg_0.b)))))), arg_0.b);
    let var_1 = arg_2.a.a.x;
    var var_2 = reverseBits(~min(firstTrailingBit(arg_2.a.b.x), 27917u)) << (_wgslsmith_mod_u32(~arg_1.x, arg_1.x) % 32u);
    let var_3 = func_3(abs(-_wgslsmith_div_vec2_i32(-vec2<i32>(19683i, 1i), -arg_2.b.xz)), global0.b.zzz);
    var_2 = ~arg_1.x;
    return all(select(vec2<bool>(arg_2.a.a.x != true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.b.x, 8355u), 19u)]), vec2<bool>(true, all(global0.a.zz)), !global0.a.yx)) && all(select(select(vec4<bool>(global0.a.x, false, var_1, var_1), vec4<bool>(false, var_3.x, false, var_3.x), !vec4<bool>(arg_2.a.a.x, true, false, global1[_wgslsmith_index_u32(global0.b.x, 19u)])), !select(vec4<bool>(var_3.x, false, false, var_1), vec4<bool>(global0.a.x, true, global0.a.x, true), arg_2.a.a.x), !(!vec4<bool>(true, var_1, var_3.x, var_1))));
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    global0 = Struct_1(select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(arg_0.x, false, global1[_wgslsmith_index_u32(49567u, 19u)]), global0.a, global1[_wgslsmith_index_u32(100856u, 19u)]), !vec3<bool>(true, false, global1[_wgslsmith_index_u32(1u, 19u)]), global0.a.x), global0.a, global0.a), vec3<bool>(~u_input.c == _wgslsmith_div_u32(u_input.c, 1223u), global1[_wgslsmith_index_u32(1u, 19u)] & !arg_0.x, !(!global1[_wgslsmith_index_u32(85047u, 19u)]))), global0.b);
    var var_0 = Struct_4(Struct_1(!select(!vec3<bool>(global0.a.x, global0.a.x, true), arg_0.wzy, false), abs(global0.b) ^ vec4<u32>(1u, _wgslsmith_mod_u32(u_input.c, 0u), countOneBits(global0.b.x), _wgslsmith_clamp_u32(global0.b.x, 30335u, global0.b.x))), vec4<i32>(11468i, ~_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), firstTrailingBit(u_input.a), abs(_wgslsmith_dot_vec3_i32(u_input.b, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 0i, -1i), vec3<i32>(14093i, u_input.a, 1i))))), countOneBits(reverseBits(global0.b.yz)));
    global0 = var_0.a;
    var var_1 = Struct_4(Struct_1(!select(func_3(vec2<i32>(36617i, 30288i), var_0.a.b.zyw), vec3<bool>(global0.a.x, false, true), !global1[_wgslsmith_index_u32(var_0.c.x, 19u)]), vec4<u32>(_wgslsmith_div_u32(~4294967295u, global0.b.x), _wgslsmith_mod_u32(var_0.c.x >> (1u % 32u), ~110341u), ~u_input.c, ~max(413u, u_input.c))), vec4<i32>(_wgslsmith_mod_i32(~abs(-134i), ~(~var_0.b.x)), _wgslsmith_mult_i32(-12206i, u_input.a) << (~(~4294967295u) % 32u), var_0.b.x, 3618i), global0.b.wy);
    var_1 = Struct_4(var_1.a, _wgslsmith_div_vec4_i32(select(~var_1.b, var_1.b, false), -max(~var_0.b, var_0.b)), var_1.c);
    return var_1.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_4(func_4(!vec4<bool>(true, func_2(Struct_2(u_input.a, -1209f), global0.b.yz, Struct_4(Struct_1(global0.a, vec4<u32>(u_input.c, u_input.c, 3302u, global0.b.x)), vec4<i32>(30196i, u_input.a, 2147483647i, -18397i), vec2<u32>(22513u, global0.b.x))), true, true)), select(~vec4<i32>(u_input.a, u_input.b.x | u_input.a, max(u_input.a, -20604i), -u_input.b.x), vec4<i32>(max(-1i & u_input.a, u_input.a), u_input.a, -u_input.b.x, abs(_wgslsmith_mod_i32(u_input.a, 2147483647i))), !vec4<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(1u, 19u)], false)), true, global0.a.x, true)), vec2<u32>(~(~u_input.c) ^ (~u_input.c >> (~u_input.c % 32u)), _wgslsmith_add_u32(abs(68822u), 34881u << ((global0.b.x >> (0u % 32u)) % 32u))));
    global1 = array<bool, 19>();
    var var_1 = var_0.b.zz;
    let var_2 = var_1.x;
    global0 = func_4(!(!select(select(vec4<bool>(false, true, arg_0.x, arg_0.x), vec4<bool>(global0.a.x, var_0.a.a.x, global1[_wgslsmith_index_u32(var_0.c.x, 19u)], true), vec4<bool>(true, arg_0.x, arg_0.x, var_0.a.a.x)), select(vec4<bool>(arg_0.x, global0.a.x, false, global1[_wgslsmith_index_u32(1u, 19u)]), vec4<bool>(var_0.a.a.x, global0.a.x, true, arg_0.x), arg_0.x), !vec4<bool>(arg_0.x, global0.a.x, true, true))));
    return Struct_1(vec3<bool>(false, !func_4(!vec4<bool>(global0.a.x, true, true, var_0.a.a.x)).a.x, any(select(!vec2<bool>(var_0.a.a.x, arg_0.x), global0.a.yx, !var_0.a.a.yx))), ~(~(var_0.a.b | ~vec4<u32>(5324u, 4294967295u, 38032u, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_1(global0.a, _wgslsmith_mod_vec4_u32(countOneBits(~global0.b), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(global0.b, vec4<u32>(26062u, global0.b.x, 4294967295u, 1u)), select(vec4<u32>(global0.b.x, u_input.c, global0.b.x, global0.b.x), global0.b, true)))), select(~(-(vec4<i32>(u_input.a, 2147483647i, u_input.a, -1682i) & vec4<i32>(-1i, 0i, u_input.a, -2147483647i))), vec4<i32>(-_wgslsmith_mult_i32(u_input.b.x, u_input.a), abs(abs(u_input.b.x)), 13182i, reverseBits(_wgslsmith_mod_i32(u_input.b.x, u_input.a))), true), _wgslsmith_mod_vec2_u32(global0.b.xx, global0.b.yx));
    global0 = func_1(!vec3<bool>(var_0.a.a.x, true, false), 1338f);
    var var_1 = Struct_3(vec2<i32>(9249i, 9608i), Struct_2(-60221i, _wgslsmith_f_op_f32(f32(-1f) * -337f)), func_1(func_1(!vec3<bool>(global1[_wgslsmith_index_u32(global0.b.x, 19u)], true, false), -2266f).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -386f))))), -1004f);
    var var_2 = _wgslsmith_dot_vec4_i32(-var_0.b, var_0.b);
    let var_3 = var_1.c.b.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(var_0.a.b, vec4<u32>(54607u, var_3.x, var_0.a.b.x, u_input.c) >> (vec4<u32>(global0.b.x, u_input.c, var_3.x, var_3.x) % vec4<u32>(32u)), vec4<bool>(var_0.a.a.x, true, true, var_1.c.a.x)), firstLeadingBit(firstTrailingBit(var_0.a.b))), max(vec4<u32>(34459u, u_input.c, ~4294967295u, 21218u), vec4<u32>(abs(5619u), 47011u, 1u, _wgslsmith_div_u32(5400u, var_3.x)))));
}

