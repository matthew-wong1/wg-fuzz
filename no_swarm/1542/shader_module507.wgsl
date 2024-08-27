struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: bool = false;

var<private> global2: array<Struct_2, 20>;

var<private> global3: i32 = 60005i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(6576i, -1i), vec2<i32>(-3870i, 25145i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, -18235i), min(vec3<i32>(58623i, 6858i, 67772i), vec3<i32>(-2147483647i, 0i, 0i))), _wgslsmith_mod_i32(abs(24744i), _wgslsmith_mod_i32(1i, 22045i)), abs(-15332i) >> (u_input.a.x % 32u)), (vec4<i32>(1i, 2147483647i, -2147483647i, 31977i) >> (abs(u_input.b) % vec4<u32>(32u))) >> (u_input.a % vec4<u32>(32u))) != _wgslsmith_mod_i32(min(~(-21463i), _wgslsmith_sub_i32(min(-10378i, 1061i), firstTrailingBit(0i))), ~(~abs(-1i)));
    global2 = array<Struct_2, 20>();
    global1 = var_0;
    global0 = !(!vec4<bool>(select(var_0, false, var_0), reverseBits(u_input.b.x) >= arg_0.b, true, var_0));
    var var_1 = select(!(!vec2<bool>(all(global0.zx), var_0 && global0.x)), select(global0.wx, select(vec2<bool>(true, true), global0.yx, false), !global0.x), -278f >= _wgslsmith_f_op_f32(-arg_0.a));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1222f, arg_0.a, false)) + _wgslsmith_f_op_f32(f32(-1f) * -328f)))))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.d * arg_0.a))) + 1000f);
}

fn func_2(arg_0: vec4<i32>, arg_1: bool) -> vec4<bool> {
    let var_0 = !func_3(Struct_1(565f, ~7554u | u_input.b.x, u_input.a.wxz, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(2289f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -853f), all(vec4<bool>(true, false, arg_1, false))))));
    let var_1 = all(vec2<bool>(all(select(!vec4<bool>(var_0, false, arg_1, var_0), select(vec4<bool>(var_0, true, false, arg_1), vec4<bool>(arg_1, global0.x, global0.x, var_0), vec4<bool>(var_0, false, var_0, var_0)), !vec4<bool>(global0.x, var_0, false, false))), !any(global0.yz)));
    let var_2 = ~u_input.b.wzz;
    let var_3 = ~firstLeadingBit(_wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.b.x));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-773f, -685f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(192f, -499f)))))), ~(~var_2.x), _wgslsmith_sub_vec3_u32(abs(~var_2), u_input.b.wyx), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -422f), -1044f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1308f) + _wgslsmith_f_op_f32(366f * -1193f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return select(vec4<bool>(arg_1, !(u_input.b.x != u_input.a.x) & (true & var_1), arg_1, false), select(select(!(!vec4<bool>(false, false, false, var_0)), !select(vec4<bool>(global0.x, false, false, false), vec4<bool>(arg_1, var_1, arg_1, false), var_1), var_1), select(select(select(vec4<bool>(false, arg_1, global0.x, false), vec4<bool>(false, var_1, true, false), false), select(vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(var_0, arg_1, global0.x, arg_1), true), !vec4<bool>(true, arg_1, var_0, var_1)), select(select(vec4<bool>(true, var_1, var_1, global0.x), vec4<bool>(true, arg_1, var_1, true), var_1), vec4<bool>(var_0, true, false, false), true), vec4<bool>(true, true, var_4.d == var_4.d, false)), true), !select(select(vec4<bool>(var_0, var_1, true, false), vec4<bool>(global0.x, global0.x, true, false), var_1), vec4<bool>(any(vec2<bool>(arg_1, false)), true, !arg_1, true), vec4<bool>(any(vec4<bool>(false, global0.x, false, false)), global0.x, true, var_1)));
}

fn func_1(arg_0: f32, arg_1: bool) -> vec4<i32> {
    global2 = array<Struct_2, 20>();
    let var_0 = _wgslsmith_f_op_f32(-arg_0);
    global0 = !(!select(!vec4<bool>(global0.x, arg_1, true, global0.x), func_2(vec4<i32>(41248i, -2147483647i, 12349i, 0i), global0.x || arg_1), global0.x));
    global1 = false;
    global1 = global0.x;
    return _wgslsmith_mod_vec4_i32(-vec4<i32>(1i, ~1i, -1i, _wgslsmith_add_i32(abs(-2147483647i), select(50845i, 0i, true))), firstLeadingBit(~vec4<i32>(~(-2147483647i), -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(61605i, 2928i, -38380i, -2147483647i), vec4<i32>(2147483647i, 1i, 1i, -2147483647i)), abs(-2147483647i))));
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(86994u, 20u)];
    let var_1 = Struct_1(583f, u_input.a.x, u_input.b.www, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-787f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1265f * 376f))))));
    global2 = array<Struct_2, 20>();
    global0 = vec4<bool>(any(func_2(countOneBits(vec4<i32>(-27074i, arg_0.x, 38221i, arg_0.x)), false).xw), any(global0.zx), var_0.a.x & global0.x, func_3(Struct_1(_wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_div_f32(var_1.d, 316f), true)), var_1.b, ~(u_input.a.wzz << (vec3<u32>(20736u, 4294967295u, 1u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a, var_1.a))))));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u >> (min(max(1u, 1u), select(~0u, ~var_1.b, global0.x)) % 32u), _wgslsmith_sub_u32((~0u << (~4294967295u % 32u)) >> (u_input.b.x % 32u), 14396u)), 20u)];
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    global1 = all(select(select(select(vec2<bool>(global0.x, global0.x), global0.wx, global0.xx), !(!vec2<bool>(global0.x, true)), vec2<bool>(true, global0.x & false)), vec2<bool>(global0.x, global0.x), select(vec2<bool>(true, true), select(!global0.wy, vec2<bool>(true, global0.x), false), global0.x)));
    let var_1 = func_4(func_1(_wgslsmith_f_op_f32(f32(-1f) * -623f), any(global0.zz)));
    var_0 = select(~(-22502i), -12354i, true);
    var var_2 = !func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(8013i, 2147483647i, 2147483647i, 2147483647i) << (u_input.b % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-10527i, 1i, -1i, -10934i), ~vec4<i32>(-67658i, -59458i, 2147483647i, -41225i))), global0.x).x;
    let var_3 = select(vec2<u32>(var_1.c.x, ~(~14324u)), _wgslsmith_mult_vec2_u32(vec2<u32>(abs(~var_1.b), countOneBits(~0u)), u_input.b.zx), func_2(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-18338i, 33628i, 29643i, -36374i), vec4<i32>(38301i, 0i, -35390i, -1i))), global0.x & !func_2(vec4<i32>(-22588i, 0i, 2147483647i, 1i), global0.x).x).xy);
    let var_4 = Struct_1(-1502f, ~u_input.b.x, vec3<u32>(u_input.b.x, var_1.b, var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.d)) * 1100f) + var_1.a)));
    var var_5 = ~var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(33661u, ~vec3<u32>(38632u, 1u, var_1.c.x), firstTrailingBit(((vec4<u32>(var_1.b, var_3.x, 57312u, 18301u) >> (vec4<u32>(var_3.x, 1u, 7496u, var_4.b) % vec4<u32>(32u))) & ~vec4<u32>(45067u, 4294967295u, var_4.b, u_input.a.x)) & u_input.a));
}

