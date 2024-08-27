struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<bool>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 25>;

var<private> global1: array<Struct_1, 22>;

var<private> global2: Struct_2;

var<private> global3: f32 = -661f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> u32 {
    global3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(582f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.c.a, arg_0.c.a, true)))))));
    var var_0 = true;
    var var_1 = firstTrailingBit(vec4<i32>(u_input.e.x, u_input.c.x | _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c.x, u_input.a.x, u_input.e.x), vec4<i32>(-1i, 16945i, 2147483647i, 48811i)), -firstTrailingBit(u_input.c.x), -1i >> (global2.a % 32u)) << (vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.b.x, u_input.b.x, global2.c.b.x), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.c.b.x, global2.b.x, 60891u, 2762u), vec4<u32>(global2.a, 1u, u_input.d, global2.b.x))), 4294967295u, u_input.b.x, ~0u) % vec4<u32>(32u)));
    var var_2 = Struct_3(Struct_1(1490f, reverseBits(max(arg_0.c.b, vec2<u32>(0u, global2.b.x)) & ~vec2<u32>(arg_0.c.b.x, u_input.b.x))), vec4<bool>(false, var_1.x == select(-var_1.x, 24613i, global2.d.x), true, !global2.d.x), arg_0);
    let var_3 = vec2<bool>(!all(vec3<bool>(arg_1, true, true)), select(arg_1, all(arg_0.d.ww), false));
    return 1u;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: bool) -> Struct_2 {
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -652f);
    global1 = array<Struct_1, 22>();
    var var_0 = global1[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(~36878u, _wgslsmith_mult_u32(~4294967295u, ~8429u) >> (global2.a % 32u)), 1u), 22u)];
    global3 = _wgslsmith_f_op_f32(exp2(global2.c.a));
    var var_1 = reverseBits(reverseBits(43211u));
    return Struct_2(_wgslsmith_clamp_u32(u_input.b.x, 49184u, func_3(Struct_2(~u_input.d, ~var_0.b, global2.c, !global2.d, arg_1.x), 1252f > global2.c.a)), ~(~(~vec2<u32>(global2.c.b.x, 0u))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * var_0.a), select(reverseBits(~u_input.b.xx), u_input.b.yx, global2.d.xx)), vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -999f)) < var_0.a, all(global2.d.wxz), true), -_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c.x, 1i), vec2<i32>(636i, 7410i)) <= u_input.e.x);
}

fn func_1() -> u32 {
    global2 = func_2(select(-(~(~u_input.c)), vec3<i32>(_wgslsmith_div_i32(64517i, u_input.c.x), countOneBits(_wgslsmith_dot_vec4_i32(u_input.e, u_input.a)), -u_input.a.x), global2.d.wxy), vec3<bool>(u_input.d == ~(~1139u), global2.e, true), !global2.e);
    global2 = func_2(-u_input.a.yzy, !vec3<bool>(true, global2.d.x, false && select(false, false, true)), all(!vec2<bool>(true, global2.d.x)));
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.c.b.x, global2.a), 22u)], global2.d, Struct_2(func_3(func_2(vec3<i32>(u_input.a.x, 0i, 18955i) ^ vec3<i32>(-80321i, 1i, u_input.a.x), !vec3<bool>(true, global2.d.x, global2.e), global2.e), false), vec2<u32>(reverseBits(u_input.b.x), u_input.d), global1[_wgslsmith_index_u32(reverseBits(global2.a), 22u)], !func_2(firstLeadingBit(vec3<i32>(-2147483647i, u_input.c.x, u_input.e.x)), vec3<bool>(global2.e, true, true), true).d, global2.e));
    global2 = Struct_2(81755u << (~_wgslsmith_clamp_u32(global2.b.x, var_0.c.b.x, ~4294967295u) % 32u), select(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.b.x, var_0.c.a), ~vec2<u32>(u_input.b.x, var_0.c.c.b.x)), _wgslsmith_add_vec2_u32(vec2<u32>(5343u, var_0.a.b.x), vec2<u32>(0u, 4294967295u)) | u_input.b.xy), global2.b, !(var_0.b.x & true)), func_2(u_input.e.xzw, vec3<bool>(!var_0.b.x && (var_0.b.x || false), true, select(true, global2.e, u_input.d != 34773u)), true).c, !select(!vec4<bool>(true, global2.d.x, true, true), var_0.c.d, 63624i > _wgslsmith_dot_vec3_i32(u_input.e.yyz, u_input.e.yww)), var_0.b.x);
    global1 = array<Struct_1, 22>();
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(22053u, u_input.b.x), 27992u, ~abs(u_input.b.x), var_0.a.b.x), firstLeadingBit(firstLeadingBit(vec4<u32>(1u, 0u, global2.b.x, 36063u)))), ~(~vec4<u32>(~4294967295u, _wgslsmith_add_u32(u_input.d, var_0.c.a), 1u, 91474u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    let var_1 = vec3<u32>(u_input.b.x, u_input.b.x, func_1());
    let var_2 = global2.c;
    global1 = array<Struct_1, 22>();
    let var_3 = vec3<u32>(var_2.b.x << (u_input.d % 32u), var_1.x, ~firstTrailingBit(~(u_input.d & var_2.b.x)));
    let var_4 = 51224i;
    global1 = array<Struct_1, 22>();
    let var_5 = min(vec3<u32>(~0u, (var_1.x << (0u % 32u)) & var_3.x, _wgslsmith_dot_vec2_u32(u_input.b.xz, ~_wgslsmith_clamp_vec2_u32(var_1.yy, vec2<u32>(var_3.x, u_input.d), u_input.b.yz))), ~(vec3<u32>(countOneBits(33159u), u_input.b.x >> (0u % 32u), var_3.x) ^ var_3));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global2.c.a + global2.c.a));
}

