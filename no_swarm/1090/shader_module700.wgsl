struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(-28565i, -23835i, 93740i), vec3<i32>(-1i, 551i, 2147483647i), vec3<i32>(1i, 6742i, 2147483647i), vec3<i32>(19222i, 1i, -12715i), vec3<i32>(-25576i, -28115i, -28527i), vec3<i32>(19656i, 0i, -7693i), vec3<i32>(1417i, -24398i, i32(-2147483648)), vec3<i32>(0i, -35852i, 2147483647i), vec3<i32>(2147483647i, -21972i, -1i), vec3<i32>(-68892i, 0i, -17009i), vec3<i32>(2147483647i, i32(-2147483648), -17043i), vec3<i32>(2147483647i, 1i, -1i), vec3<i32>(-41483i, -29012i, -35634i));

var<private> global1: Struct_2 = Struct_2(343f, 485f, vec3<u32>(1u, 1u, 29838u), Struct_1(-397f, vec4<bool>(true, true, false, true), 1800f), vec3<bool>(true, true, false));

var<private> global2: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global3: i32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    global2 = vec4<bool>(true, false == global1.e.x, true, false);
    var var_0 = Struct_1(global1.a, vec4<bool>(any(select(global2.wxy, global2.wyz, select(vec3<bool>(global2.x, true, global2.x), global1.d.b.yzx, global1.d.b.x))), !select(u_input.a.x == -2147483647i, !global2.x, !global2.x), true, ~(6652u ^ global1.c.x) <= global1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1141f)))))));
    let var_1 = vec4<u32>(~(~(~global1.c.x | 1u)), global1.c.x, _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, global1.c.x) << (4294967295u % 32u), _wgslsmith_mod_u32(global1.c.x, 1u)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4197u, global1.c.x, global1.c.x, 4294967295u)), min(countOneBits(vec4<u32>(4294967295u, 19696u, global1.c.x, 4294967295u)), vec4<u32>(4294967295u, 37393u, 1u, global1.c.x))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c.x, global1.c.x), global1.c.yz | vec2<u32>(0u, global1.c.x)), _wgslsmith_mod_u32(_wgslsmith_add_u32(global1.c.x, 0u), 36002u))), 147976u);
    let var_2 = ~u_input.a.x;
    var var_3 = Struct_3(vec4<i32>(~(-1i), u_input.a.x, -8053i, 2147483647i), var_0.b.x, firstLeadingBit(firstLeadingBit(firstLeadingBit(global1.c.x))));
    return var_3.a.x;
}

fn func_2(arg_0: vec2<u32>) -> vec4<bool> {
    let var_0 = global1.d;
    global1 = Struct_2(-545f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, -113f)) * _wgslsmith_f_op_f32(f32(-1f) * -561f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.b, -278f)) * _wgslsmith_f_op_f32(-569f + var_0.a))), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, 1u, _wgslsmith_add_u32(abs(4294967295u), max(arg_0.x, global1.c.x))), ~global1.c), Struct_1(global1.d.a, select(global1.d.b, vec4<bool>(global2.x, global2.x != false, false, 0u <= global1.c.x), var_0.b), _wgslsmith_f_op_f32(-global1.b)), vec3<bool>(!any(var_0.b) & (true && !global1.d.b.x), false, true));
    var var_1 = Struct_3(vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -5708i, 0i), firstTrailingBit(-1i), 0i, func_3() ^ 2147483647i), any(select(select(vec2<bool>(global2.x, true), vec2<bool>(global1.e.x, false), true), global1.e.yx, !global2.x)), min(global1.c.x ^ ~0u, firstLeadingBit(1u)));
    var var_2 = Struct_1(var_0.a, vec4<bool>(true, true, var_0.b.x, !var_1.b), global1.a);
    global1 = Struct_2(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * 350f))))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.x), vec2<u32>(arg_0.x, global1.c.x)) >> (global1.c.x % 32u), ~firstTrailingBit(1u), var_1.c) & (~(~global1.c) << (global1.c % vec3<u32>(32u))), Struct_1(var_2.c, !(!vec4<bool>(false, true, global1.d.b.x, true)), _wgslsmith_f_op_f32(244f * -571f)), select(!var_2.b.wzy, var_0.b.wwx, select(any(global1.e), any(vec3<bool>(true, true, var_1.b)), all(global2.wzz)) & true));
    return vec4<bool>((var_2.c == _wgslsmith_f_op_f32(-var_0.c)) && any(select(vec2<bool>(true, global2.x), select(vec2<bool>(false, true), vec2<bool>(global1.e.x, false), var_0.b.zy), any(vec4<bool>(var_2.b.x, global2.x, var_2.b.x, true)))), var_2.b.x, !(var_2.a == _wgslsmith_f_op_f32(floor(global1.a))), var_1.b);
}

fn func_1() -> vec4<i32> {
    global0 = array<vec3<i32>, 13>();
    global3 = 1i;
    global2 = !select(func_2(global1.c.zz), global1.d.b, func_2(_wgslsmith_mod_vec2_u32(~global1.c.xx, vec2<u32>(1u, 1u))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.a))));
    let var_1 = global1.c.x << (_wgslsmith_mod_u32(1u, 40079u) % 32u);
    return vec4<i32>(-_wgslsmith_mult_i32(countOneBits(u_input.a.x), _wgslsmith_clamp_i32(45801i, u_input.a.x, u_input.a.x)), ~(_wgslsmith_div_i32(u_input.a.x, 0i) | -2147483647i), 16348i, 11251i) ^ vec4<i32>(u_input.a.x, u_input.a.x, -1i, ~0i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_dot_vec4_i32(~(_wgslsmith_mult_vec4_i32(func_1(), vec4<i32>(1i, 1i, u_input.a.x, 3582i)) | ((vec4<i32>(u_input.a.x, 15433i, 1i, u_input.a.x) << (vec4<u32>(1u, global1.c.x, 72419u, global1.c.x) % vec4<u32>(32u))) << (~vec4<u32>(49671u, 31006u, 65772u, 4294967295u) % vec4<u32>(32u)))), abs(countOneBits(vec4<i32>(1i, u_input.a.x, u_input.a.x & -42629i, firstLeadingBit(64468i)))));
    var var_0 = Struct_3(vec4<i32>(-1i) * -(vec4<i32>(0i, u_input.a.x, 0i, -12488i) | func_1()), all(func_2(max(firstLeadingBit(global1.c.xz), global1.c.yz))), firstLeadingBit(1u));
    var var_1 = firstLeadingBit(~(~(var_0.c << (~global1.c.x % 32u))));
    var_1 = var_0.c;
    var_0 = Struct_3(vec4<i32>(-1i >> (~4294967295u % 32u), -1i, _wgslsmith_div_i32(-1i | max(-40201i, u_input.a.x), -41739i), var_0.a.x), !(!all(select(global1.d.b, vec4<bool>(true, false, global2.x, false), global1.d.b))), ~_wgslsmith_mod_u32(select(var_0.c, firstTrailingBit(global1.c.x), global1.d.b.x), 64860u));
    let var_2 = max(vec3<i32>(var_0.a.x | abs(_wgslsmith_div_i32(2147483647i, var_0.a.x)), var_0.a.x, 11085i), select(max(_wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(-1i, u_input.a.x, var_0.a.x)) & _wgslsmith_mult_vec3_i32(var_0.a.yww, u_input.a), vec3<i32>(1i, ~(-5311i), -15083i)), (~global0[_wgslsmith_index_u32(20541u, 13u)] ^ _wgslsmith_mult_vec3_i32(vec3<i32>(28506i, -2147483647i, var_0.a.x), u_input.a)) | vec3<i32>(~u_input.a.x, select(var_0.a.x, var_0.a.x, var_0.b), _wgslsmith_mult_i32(u_input.a.x, 39181i)), true));
    let x = u_input.a;
    s_output = StorageBuffer(global1.c, u_input.a.x, ~max(vec2<i32>(u_input.a.x, var_0.a.x), vec2<i32>(var_2.x, 18725i)) | max(-min(var_0.a.xx, vec2<i32>(var_2.x, -34254i)), firstLeadingBit(u_input.a.zy)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.a))))), ~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global1.c.x, global1.c.x, var_0.c), ~vec4<u32>(global1.c.x, var_0.c, var_0.c, 23977u)), select(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.c, 1u, global1.c.x, global1.c.x), vec4<u32>(global1.c.x, 73500u, 3328u, 0u)), ~vec4<u32>(var_0.c, 10582u, 4294967295u, global1.c.x), global1.e.x)));
}

