struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(59579u, 68362u, Struct_3(vec3<u32>(4579u, 1u, 0u), true, Struct_2(true, vec3<u32>(71164u, 43846u, 4294967295u), Struct_1(1275f, vec3<bool>(false, true, true))))), Struct_4(5240u, 27110u, Struct_3(vec3<u32>(97732u, 816u, 33850u), false, Struct_2(true, vec3<u32>(41603u, 1u, 4294967295u), Struct_1(-609f, vec3<bool>(true, false, true))))), Struct_4(0u, 1u, Struct_3(vec3<u32>(56408u, 1u, 39650u), true, Struct_2(false, vec3<u32>(48408u, 4294967295u, 4309u), Struct_1(-1050f, vec3<bool>(false, false, false))))), Struct_4(1u, 29576u, Struct_3(vec3<u32>(4294967295u, 1u, 36198u), false, Struct_2(true, vec3<u32>(4294967295u, 4294967295u, 23048u), Struct_1(2147f, vec3<bool>(false, true, false))))));

var<private> global1: array<i32, 9> = array<i32, 9>(-60427i, 44106i, -31157i, -1i, 2147483647i, 80809i, -1i, 2147483647i, -1i);

var<private> global2: vec2<u32>;

var<private> global3: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<bool>) -> vec2<i32> {
    global1 = array<i32, 9>();
    let var_0 = firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(global2.x, global2.x), ~vec2<u32>(~0u, ~global2.x)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-513f - -1000f))) + -1436f) != -1250f, vec3<u32>((1u >> ((global2.x << (53086u % 32u)) % 32u)) | 0u, ~firstLeadingBit(~61796u), var_0.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), vec3<bool>(false, !any(vec3<bool>(global3.x, arg_0.x, false)), true)));
    global0 = array<Struct_4, 4>();
    var var_2 = all(select(vec4<bool>(true, false, _wgslsmith_f_op_f32(floor(var_1.c.a)) < _wgslsmith_f_op_f32(exp2(var_1.c.a)), true), vec4<bool>(false, all(vec4<bool>(var_1.c.b.x, true, false, false)), arg_0.x, !var_1.c.b.x), true));
    return (vec2<i32>(i32(-1i) * -u_input.b, -525i) | firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a))) >> ((countOneBits(min(vec2<u32>(var_1.b.x, 17663u), var_1.b.yy) | vec2<u32>(global2.x, var_0.x)) ^ vec2<u32>(select(var_1.b.x, max(global2.x, 40127u), !arg_0.x), firstLeadingBit(var_1.b.x))) % vec2<u32>(32u));
}

fn func_2(arg_0: vec3<u32>) -> Struct_4 {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-15036i & (u_input.a & 32468i), _wgslsmith_add_i32(u_input.a, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(global2.x, 9u)], global1[_wgslsmith_index_u32(global2.x, 9u)]))), _wgslsmith_div_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(52031u, 9u)], u_input.b) ^ abs(vec2<i32>(u_input.a, -23373i)), func_3(!vec2<bool>(false, global3.x)))), ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.b, u_input.b), -vec2<i32>(9878i, 0i)), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(global2.x, 9u)], global1[_wgslsmith_index_u32(global2.x, 9u)]), vec2<i32>(-2147483647i, u_input.b)), vec2<i32>(40325i, 60061i))));
    global1 = array<i32, 9>();
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(687f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(2653f)))))), vec2<f32>(1f, _wgslsmith_f_op_f32(-991f - _wgslsmith_f_op_f32(trunc(-721f))))));
    global2 = ~(~firstTrailingBit(arg_0.zx) >> (~vec2<u32>(global2.x, arg_0.x) % vec2<u32>(32u)));
    return global0[_wgslsmith_index_u32(arg_0.x, 4u)];
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> vec3<u32> {
    let var_0 = Struct_5(func_2(vec3<u32>(1u, global2.x, ~(global2.x | global2.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1552f, -641f), vec2<f32>(389f, -779f)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(500f, 1000f) + _wgslsmith_f_op_f32(floor(632f))), _wgslsmith_f_op_f32(f32(-1f) * -2069f)), !arg_1.yz)), func_2(vec3<u32>(4294967295u, max(0u, 35238u), firstLeadingBit(global2.x) & 0u)).c.c);
    var var_1 = vec3<i32>(-9246i, -(~_wgslsmith_add_i32(u_input.a, 33992i)), -global1[_wgslsmith_index_u32(countOneBits(min(~4294967295u, ~global2.x)), 9u)]);
    let var_2 = global1[_wgslsmith_index_u32(~reverseBits(func_2(_wgslsmith_add_vec3_u32(var_0.c.b, vec3<u32>(var_0.c.b.x, var_0.a.b, var_0.c.b.x))).c.c.b.x), 9u)] >> (~(4294967295u >> (var_0.c.b.x % 32u)) % 32u);
    global2 = _wgslsmith_mod_vec2_u32(select(firstLeadingBit(_wgslsmith_clamp_vec2_u32(var_0.a.c.c.b.xx, ~var_0.c.b.xx, func_2(vec3<u32>(1891u, 8603u, 16654u)).c.c.b.zx)), select(_wgslsmith_mult_vec2_u32(~var_0.c.b.xz, ~vec2<u32>(0u, global2.x)), ~min(var_0.a.c.a.yz, vec2<u32>(4294967295u, 39610u)), !arg_1.xz), global3.x), vec2<u32>(1u >> ((abs(var_0.c.b.x) ^ 1u) % 32u), 5898u));
    global1 = array<i32, 9>();
    return vec3<u32>(12118u, 36722u, _wgslsmith_dot_vec3_u32(~var_0.c.b, ~(~vec3<u32>(1u, global2.x, 62473u))) >> (_wgslsmith_mult_u32(~reverseBits(4294967295u), 1u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 4>();
    let var_0 = global2.x;
    let var_1 = global3.x;
    global3 = select(vec2<bool>(-(~global1[_wgslsmith_index_u32(0u, 9u)]) == -global1[_wgslsmith_index_u32(~0u, 9u)], false), vec2<bool>(true, global3.x), true);
    var var_2 = ~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(4780u, 28298u, global2.x), func_1(false, vec3<bool>(global3.x, false, false)) & ~vec3<u32>(16240u, global2.x, global2.x)), min(~(vec3<u32>(10570u, global2.x, global2.x) >> (vec3<u32>(global2.x, global2.x, 0u) % vec3<u32>(32u))), vec3<u32>(~global2.x, ~global2.x, ~global2.x)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(1083f + 1098f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, -1206f))), _wgslsmith_f_op_f32(f32(-1f) * -874f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(0u, 176u), ~(~var_2.yx), min(~(vec4<u32>(global2.x, 37558u, var_2.x, var_2.x) & max(vec4<u32>(var_2.x, var_2.x, var_2.x, 4294967295u), vec4<u32>(global2.x, 1u, 25100u, 33154u))), abs(select(reverseBits(vec4<u32>(var_2.x, 1u, 0u, global2.x)), vec4<u32>(global2.x, global2.x, global2.x, 52978u), !global3.x))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(0u, global2.x, 14374u, 10688u), vec4<u32>(0u, global2.x, 487u, 126253u)) & ~vec4<u32>(var_2.x, 0u, var_2.x, 82616u), reverseBits(vec4<u32>(59786u, 5581u, global2.x, 0u) & vec4<u32>(var_2.x, global2.x, var_2.x, 46762u))), vec4<u32>(75881u, 1u, 0u, 12606u)));
}

