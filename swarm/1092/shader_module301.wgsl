struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(true, true, true, false, false, true, false, true, false, true, false, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32) -> bool {
    global0 = array<bool, 12>();
    let var_0 = Struct_3(select(select(select(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 12u)], true, global0[_wgslsmith_index_u32(u_input.a, 12u)], true), !vec4<bool>(global0[_wgslsmith_index_u32(61566u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(41082u, 12u)], true), !vec4<bool>(global0[_wgslsmith_index_u32(3357u, 12u)], global0[_wgslsmith_index_u32(11362u, 12u)], false, false)), vec4<bool>(all(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 12u)], true, global0[_wgslsmith_index_u32(arg_0, 12u)])), true, true, all(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(u_input.d, 12u)]))), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], true), select(vec4<bool>(global0[_wgslsmith_index_u32(3191u, 12u)], global0[_wgslsmith_index_u32(u_input.d, 12u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(arg_0, 12u)], global0[_wgslsmith_index_u32(arg_0, 12u)], false), global0[_wgslsmith_index_u32(arg_0, 12u)]), !vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 12u)], true))), !(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(72491u, 12u)], false, global0[_wgslsmith_index_u32(u_input.a, 12u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 12u)], global0[_wgslsmith_index_u32(arg_0, 12u)], global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(arg_0, 12u)]), false)), select(vec4<bool>(false, !global0[_wgslsmith_index_u32(arg_0, 12u)], false, !global0[_wgslsmith_index_u32(21543u, 12u)]), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 12u)], false, false, true), global0[_wgslsmith_index_u32(arg_0, 12u)])));
    var var_1 = 18907u;
    var var_2 = all(!(!vec4<bool>(var_0.a.x, true, true, arg_0 == 4294967295u)));
    var var_3 = any(vec4<bool>(true, select(false, true, arg_0 <= 1u), true, !(37369i > u_input.c))) && (min(_wgslsmith_clamp_u32(u_input.a, arg_0, ~arg_0), _wgslsmith_div_u32(u_input.a, ~64490u)) > arg_0);
    return ~abs(_wgslsmith_mod_u32(~63062u, ~0u)) > ~u_input.a;
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    global0 = array<bool, 12>();
    global0 = array<bool, 12>();
    let var_0 = Struct_4(Struct_3(vec4<bool>(true, any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 12u)], true, global0[_wgslsmith_index_u32(1u, 12u)], true)), func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d, u_input.d, u_input.a), vec4<u32>(u_input.d, u_input.a, u_input.d, u_input.d))), true)), Struct_2(u_input.a, Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(33928i, u_input.c), firstLeadingBit(u_input.b.zy)), vec3<i32>(2147483647i, 25339i, u_input.b.x) & ~u_input.b, _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.d, 14028u, u_input.d), vec4<u32>(u_input.d, 23913u, 1u, u_input.d)), vec4<u32>(29881u, u_input.a, 48348u, 4294967295u) & vec4<u32>(4294967295u, 0u, 0u, 1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, -728f) + vec3<f32>(arg_0.x, arg_0.x, -1000f)))), Struct_1(u_input.b.x, max(-vec3<i32>(41912i, -2147483647i, 22809i), u_input.b), vec4<u32>(~u_input.a, ~47509u, 1u, u_input.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(667f, 546f, arg_0.x))) + vec3<f32>(1192f, arg_0.x, arg_0.x))), Struct_1(-2147483647i, vec3<i32>(-u_input.c, -37750i, 1i), ~vec4<u32>(u_input.d, u_input.a, 4294967295u, u_input.d), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-357f, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(global0[_wgslsmith_index_u32(1u, 12u)], false, global0[_wgslsmith_index_u32(110145u, 12u)]))))))), _wgslsmith_sub_vec3_u32(~vec3<u32>(~50329u, ~16489u, 0u), max(~(~vec3<u32>(1u, u_input.d, 93194u)), vec3<u32>(~u_input.d, 54662u, 4294967295u ^ u_input.d))), Struct_1(-2147483647i, ~(~u_input.b), firstTrailingBit(~select(vec4<u32>(1u, u_input.a, u_input.d, u_input.a), vec4<u32>(u_input.d, 15194u, u_input.d, 82656u), true)), vec3<f32>(1357f, _wgslsmith_f_op_f32(f32(-1f) * -183f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))))), !any(select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a, 12u)]), select(vec3<bool>(true, true, false), vec3<bool>(global0[_wgslsmith_index_u32(0u, 12u)], false, global0[_wgslsmith_index_u32(u_input.d, 12u)]), vec3<bool>(global0[_wgslsmith_index_u32(37013u, 12u)], false, global0[_wgslsmith_index_u32(30098u, 12u)])), select(vec3<bool>(false, global0[_wgslsmith_index_u32(34511u, 12u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 12u)], true)))));
    let var_1 = _wgslsmith_clamp_u32(u_input.d, ~abs(~_wgslsmith_sub_u32(u_input.a, var_0.c.x)), abs(10273u));
    let var_2 = vec4<i32>(min(_wgslsmith_clamp_i32(var_0.d.b.x >> (_wgslsmith_dot_vec3_u32(var_0.b.c.c.yww, var_0.b.b.c.yxy) % 32u), -37369i, _wgslsmith_sub_i32(~1i, _wgslsmith_mod_i32(u_input.b.x, 17617i))), -2147483647i), 1i, _wgslsmith_mod_i32(-59510i, firstLeadingBit(0i)), _wgslsmith_dot_vec3_i32(~(~(-vec3<i32>(-1i, 2147483647i, u_input.c))), _wgslsmith_mult_vec3_i32(vec3<i32>(~var_0.d.a, firstTrailingBit(var_0.d.a), ~u_input.c), ~select(vec3<i32>(u_input.c, 12920i, -2147483647i), vec3<i32>(-62868i, u_input.b.x, var_0.b.b.b.x), false))));
    return Struct_1(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, var_2.x), var_2.yw << (var_0.d.c.zx % vec2<u32>(32u)))), ~(~firstLeadingBit(vec3<i32>(var_2.x, 0i, -1861i) << (var_0.c % vec3<u32>(32u)))), var_0.d.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.d.d - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(578f, var_0.b.d.d.x, 301f), var_0.d.d)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.b.d * var_0.d.d)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.d.x, -681f, 251f) - vec3<f32>(var_0.d.d.x, -1131f, arg_0.x)), !vec3<bool>(var_0.e, true, true))))));
}

fn func_1() -> Struct_4 {
    let var_0 = ~u_input.a;
    let var_1 = Struct_2(~u_input.a, func_2(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1056f)))), _wgslsmith_f_op_f32(397f + 230f))), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-208f, 1000f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-349f, -884f) + vec2<f32>(-265f, -1696f))))), func_2(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-640f + -323f))), -118f)));
    let var_2 = 2398u;
    global0 = array<bool, 12>();
    var var_3 = 19294i;
    return Struct_4(Struct_3(select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(10888u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(72159u, 12u)], true, true, global0[_wgslsmith_index_u32(var_1.d.c.x, 12u)]), global0[_wgslsmith_index_u32(u_input.a, 12u)]), select(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 12u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(var_0, 12u)], global0[_wgslsmith_index_u32(62617u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], true), global0[_wgslsmith_index_u32(1u, 12u)])), vec4<bool>(global0[_wgslsmith_index_u32(var_0, 12u)] | true, var_1.b.b.x > var_1.b.b.x, global0[_wgslsmith_index_u32(~58633u, 12u)], all(vec4<bool>(true, true, global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(var_2, 12u)]))), global0[_wgslsmith_index_u32(0u, 12u)])), Struct_2(abs(62694u), Struct_1(1i, vec3<i32>(countOneBits(u_input.b.x), -u_input.c, u_input.b.x), vec4<u32>(var_0, u_input.d, 4294967295u, u_input.a) & ~vec4<u32>(var_1.a, var_0, u_input.a, 1583u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_1.d.d)))), func_2(vec2<f32>(_wgslsmith_div_f32(978f, var_1.b.d.x), _wgslsmith_f_op_f32(max(-988f, 837f)))), func_2(vec2<f32>(var_1.b.d.x, 1979f))), ~(func_2(vec2<f32>(var_1.d.d.x, var_1.d.d.x)).c.yzx >> (vec3<u32>(_wgslsmith_mod_u32(67304u, u_input.d), 4294967295u, 4294967295u) % vec3<u32>(32u))), var_1.d, any(vec3<bool>(select(var_1.c.d.x == var_1.d.d.x, all(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], false, true)), all(vec4<bool>(global0[_wgslsmith_index_u32(var_0, 12u)], false, global0[_wgslsmith_index_u32(u_input.d, 12u)], true))), false, !(!global0[_wgslsmith_index_u32(var_2, 12u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec3<u32>(23883u, ~_wgslsmith_sub_u32(u_input.a, 0u << (u_input.a % 32u)), abs(var_0.b.c.c.x) >> (var_0.b.b.c.x % 32u));
    var var_2 = func_1();
    var var_3 = ~(~var_2.b.c.a);
    var var_4 = select(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.d.b.x, 1i, var_2.d.b.x), select(var_2.b.b.b, u_input.b, vec3<bool>(true, true, var_0.e))), var_0.b.c.b, vec3<bool>(var_2.a.a.x, var_0.a.a.x, var_0.e)) >> (~var_2.c % vec3<u32>(32u));
    let var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(_wgslsmith_dot_vec2_u32(var_2.d.c.ww, vec2<u32>(4294967295u, u_input.a)), ~_wgslsmith_dot_vec4_u32(var_0.d.c, var_0.b.b.c), min(var_1.x, max(12462u, 71727u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_5.d.d.x, var_0.d.d.x), var_5.b.c.d.xy, var_2.e)), func_1().b.b.d.yx, !vec2<bool>(true, var_0.e))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_5.b.c.d.x, -569f))))), -_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, var_4.x, var_5.d.a, 805i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-7700i, var_5.b.c.b.x, var_4.x, u_input.c), vec4<i32>(6336i, var_5.b.b.a, var_0.b.c.a, u_input.b.x), vec4<i32>(0i, var_5.d.b.x, var_0.b.b.b.x, u_input.b.x))), countOneBits(select(vec4<i32>(var_2.d.a, -13238i, 47796i, var_2.b.c.b.x), vec4<i32>(35974i, var_0.b.b.b.x, var_0.d.a, u_input.b.x), var_5.a.a))));
}

