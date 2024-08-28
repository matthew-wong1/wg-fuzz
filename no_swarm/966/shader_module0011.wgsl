struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
    c: vec3<bool>,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 9> = array<i32, 9>(0i, i32(-2147483648), -1i, 20383i, 2147483647i, -4823i, -1i, 1i, 28488i);

var<private> global2: f32;

var<private> global3: f32;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-136f)), -812f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-962f - 492f)) * -764f))), select(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), true), !vec4<bool>(any(vec3<bool>(true, false, true)), true, true, true), (arg_0.x | _wgslsmith_add_i32(arg_0.x, arg_0.x)) != global1[_wgslsmith_index_u32(min(4294967295u, ~32855u), 9u)]), ~u_input.b, -_wgslsmith_clamp_vec2_i32(-arg_0.xy, vec2<i32>(27998i, arg_0.x) ^ vec2<i32>(-14408i, 14004i), arg_0.zx));
    global1 = array<i32, 9>();
    global1 = array<i32, 9>();
    global3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1449f)))))));
    let var_1 = var_0.b.x;
    return !vec4<bool>(true, select(all(!var_0.b.yzy), !all(var_0.b), var_1), var_1, var_0.b.x);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(vec3<bool>(true & !any(vec3<bool>(true, true, true)), true, any(vec4<bool>(true, true, true, true))), -1749f, Struct_2(-798f, select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), select(func_3(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 9u)], global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(u_input.b, 9u)])), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), firstLeadingBit(_wgslsmith_mod_u32(~22847u, u_input.b)), vec2<i32>(firstLeadingBit(-2147483647i), -1i)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -682f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(745f + 334f) - _wgslsmith_f_op_f32(min(747f, -820f)))), !select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), true), 3457u, ~(~(vec2<i32>(-6767i, global1[_wgslsmith_index_u32(1u, 9u)]) & vec2<i32>(-50994i, global1[_wgslsmith_index_u32(0u, 9u)])))));
    var var_1 = vec4<i32>(var_0.d.d.x, var_0.d.d.x, -2147483647i, abs(-16926i));
    var var_2 = ~(min(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.d.c, 1u, 56541u), vec3<u32>(1u, 0u, 1u)), vec3<u32>(var_0.c.c, 15005u, u_input.a) & (vec3<u32>(4294967295u, var_0.d.c, 4294967295u) & vec3<u32>(4294967295u, u_input.a, var_0.d.c))) & firstLeadingBit(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 41920u, var_0.d.c), vec3<u32>(63264u, var_0.d.c, 4294967295u), vec3<u32>(5875u, 83850u, u_input.b)), ~vec3<u32>(u_input.a, 0u, 22900u), var_0.c.b.x)));
    let var_3 = _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(40154u, u_input.a, 0u, 1u))), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(11834u, 1u, 61332u, var_2.x)) | firstTrailingBit(vec4<u32>(1u, 130263u, 19559u, 42657u)), vec4<u32>(0u, 4294967295u >> (var_0.d.c % 32u), ~var_2.x, ~var_2.x)), vec4<u32>(~var_0.c.c, 14563u, min(var_2.x, 60050u), u_input.b) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(7652u, 1u, 1u, u_input.a), abs(vec4<u32>(61692u, var_0.c.c, 16766u, var_0.c.c)))));
    let var_4 = Struct_5(_wgslsmith_mult_vec2_u32(vec2<u32>(var_3 << (var_0.d.c % 32u), _wgslsmith_div_u32(106865u, ~var_3)), var_2.yx), any(select(var_0.a, vec3<bool>(true, true, true), true)), vec3<bool>(!(var_0.d.b.x | false) | !var_0.a.x, var_0.c.b.x, false), Struct_4(var_0.c.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(var_0.d.a + var_0.b)) - var_0.c.a), Struct_3(select(var_0.a, !var_0.c.b.wzy, func_3(vec3<i32>(var_1.x, global1[_wgslsmith_index_u32(4294967295u, 9u)], -46557i)).x), 1f, var_0.c, var_0.c), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d.d.x, -1i), _wgslsmith_mod_vec2_i32(var_1.yx, vec2<i32>(var_1.x, -12723i))), global1[_wgslsmith_index_u32(u_input.a, 9u)])), 1u);
    return Struct_3(var_0.d.b.xzw, _wgslsmith_f_op_f32(sign(var_0.b)), var_4.d.c.c, var_0.d);
}

fn func_1() -> i32 {
    var var_0 = -1070f;
    let var_1 = Struct_4(!select(true, true, false), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2043f - _wgslsmith_f_op_f32(f32(-1f) * -235f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-205f)))))), func_2(), 1i);
    var_0 = _wgslsmith_div_f32(-855f, var_1.b);
    var var_2 = Struct_3(vec3<bool>(var_1.c.a.x, all(select(func_3(vec3<i32>(-4335i, -65263i, global1[_wgslsmith_index_u32(71441u, 9u)])).ywx, !var_1.c.a, vec3<bool>(var_1.c.c.b.x, false, var_1.c.c.b.x))), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.c.c.c, var_1.c.c.c), 9u)], var_1.d & -59362i) <= (func_2().d.d.x & (global1[_wgslsmith_index_u32(u_input.b, 9u)] >> (0u % 32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + var_1.b)), var_1.c.d, func_2().d);
    var var_3 = Struct_1(var_2.a);
    return (_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.d, var_2.c.d.x, var_2.c.d.x, var_1.c.d.d.x), vec4<i32>(-1i) * -vec4<i32>(var_1.d, 25760i, global1[_wgslsmith_index_u32(4294967295u, 9u)], -2147483647i)) ^ abs(_wgslsmith_div_i32(_wgslsmith_add_i32(57181i, -230i), ~var_2.c.d.x))) ^ 2147483647i;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec3<u32>) -> Struct_1 {
    global1 = array<i32, 9>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(131f)) + _wgslsmith_f_op_f32(abs(-206f))), 1202f, any(vec3<bool>(true, true, true))))));
    global1 = array<i32, 9>();
    let var_0 = Struct_5(countOneBits(vec2<u32>(_wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 0u, 0u, 1u), vec4<u32>(arg_2.x, arg_2.x, 4294967295u, u_input.a))), _wgslsmith_clamp_u32(1u, 4294967295u, arg_2.x << (39678u % 32u)))), true, select(vec3<bool>(true, true, all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true))), vec3<bool>(true, false, true), select(vec3<bool>(false, any(vec3<bool>(false, true, false)), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, any(vec2<bool>(false, false)), false))), Struct_4(func_2().c.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2300f + -694f))), func_2(), _wgslsmith_dot_vec3_i32(abs(max(vec3<i32>(2147483647i, 30796i, global1[_wgslsmith_index_u32(83627u, 9u)]), vec3<i32>(arg_1, global1[_wgslsmith_index_u32(551u, 9u)], arg_1))), _wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(0u, 9u)], arg_1, -2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(1u, 9u)], arg_1, arg_0)) | _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1, 9025i, -16857i), vec3<i32>(arg_1, global1[_wgslsmith_index_u32(u_input.b, 9u)], 1i)))), 1u);
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(~(~var_0.d.c.d.c), ~1u), var_0.d.c.c.c, 1u), _wgslsmith_mod_vec3_u32(arg_2, max(vec3<u32>(~35484u, var_0.e, var_0.d.c.d.c), firstTrailingBit(arg_2))));
    return Struct_1(var_0.d.c.c.b.xyy);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<u32>) -> f32 {
    global0 = all(arg_1.a.zy);
    var var_0 = vec2<bool>(arg_0.a.x, all(arg_1.a.zz));
    global1 = array<i32, 9>();
    let var_1 = _wgslsmith_f_op_f32(-2130f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(432f, _wgslsmith_f_op_f32(-arg_2.b), arg_2.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.c.a), _wgslsmith_f_op_f32(step(1000f, 462f))))))));
    global3 = _wgslsmith_f_op_f32(trunc(-1674f));
    return -465f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -449f;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_4(countOneBits(func_1()), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 9u)], global1[_wgslsmith_index_u32(u_input.a, 9u)]), vec2<i32>(global1[_wgslsmith_index_u32(38725u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)])), vec2<i32>(-4602i, -1i)), ~abs(vec3<u32>(72094u, u_input.b, 953u))), func_4(~(~(-1i)), -global1[_wgslsmith_index_u32(u_input.b, 9u)] | (global1[_wgslsmith_index_u32(u_input.b, 9u)] & 2147483647i), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(46224u, 0u, 4294967295u))), func_2(), ~(~reverseBits(vec2<u32>(u_input.a, u_input.a))))) - -541f);
    global3 = var_0;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-2756f * 118f), vec4<bool>(true, select(false, all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(var_0 * 477f) <= func_2().d.a), all(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, false, true, true)))), func_4(global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.a), 9u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, u_input.a) | 1u, 9u)], ~(vec3<u32>(0u, 68801u, u_input.b) >> (vec3<u32>(35517u, 1u, 1u) % vec3<u32>(32u)))).a.x), 0u, -select(vec2<i32>(global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(u_input.b, 9u)]), vec2<i32>(-2147483647i, 29309i), select(false, false, false)) | vec2<i32>(33299i, global1[_wgslsmith_index_u32(0u, 9u)]));
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -669f);
    let var_2 = 130f;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(reverseBits(countOneBits(4294967295u)), var_1.c), select(13853u, 21254u, any(select(select(vec4<bool>(true, var_1.b.x, true, true), vec4<bool>(var_1.b.x, var_1.b.x, false, false), var_1.b.x), vec4<bool>(true, var_1.b.x, true, false), select(var_1.b, vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), var_1.b)))), ~(var_1.c << (u_input.b % 32u)));
}

