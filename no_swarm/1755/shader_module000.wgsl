struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: vec2<i32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(false, vec3<i32>(i32(-2147483648), -20371i, -65092i), vec2<i32>(-26075i, 4348i), 1630f, Struct_1(-1000f, 4294967295u, true, vec3<bool>(false, true, false), 1226f)), Struct_2(false, vec3<i32>(9566i, 6488i, -1i), vec2<i32>(21447i, i32(-2147483648)), 679f, Struct_1(1000f, 0u, false, vec3<bool>(true, false, true), -1028f)), Struct_2(false, vec3<i32>(-1i, 0i, -1i), vec2<i32>(-11019i, 2147483647i), -2298f, Struct_1(1041f, 1u, true, vec3<bool>(false, true, false), 908f)), Struct_2(false, vec3<i32>(13240i, i32(-2147483648), 2147483647i), vec2<i32>(2147483647i, 976i), -437f, Struct_1(1290f, 0u, false, vec3<bool>(false, true, false), -155f)));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)), _wgslsmith_f_op_f32(-arg_0.e.e), arg_0.d))));
    let var_1 = vec3<u32>(~(37992u | u_input.b.x), 1u, u_input.b.x) >> (~(~_wgslsmith_add_vec3_u32(vec3<u32>(25194u, arg_0.e.b, arg_0.e.b), vec3<u32>(1u, u_input.b.x, 61849u)) ^ vec3<u32>(52347u, 58066u, arg_0.e.b)) % vec3<u32>(32u));
    let var_2 = select(select(vec2<bool>(~var_1.x != var_1.x, reverseBits(41007i) == arg_0.c.x), vec2<bool>(false != arg_0.e.d.x, false), arg_0.a), arg_0.e.d.yy, arg_0.e.d.zz);
    var var_3 = arg_0.e;
    var var_4 = global0[_wgslsmith_index_u32(var_1.x, 25u)];
    return global1[_wgslsmith_index_u32(arg_0.e.b, 4u)];
}

fn func_3() -> vec2<bool> {
    let var_0 = func_1(global0[_wgslsmith_index_u32(1u, 25u)]).e.b;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1005f))))) * 491f);
    let var_2 = any(vec3<bool>(any(vec3<bool>(true, func_1(global0[_wgslsmith_index_u32(0u, 25u)]).a, all(vec4<bool>(true, false, true, false)))), false, !select(select(true, false, true), false, any(vec2<bool>(false, false)))));
    global1 = array<Struct_2, 4>();
    let var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(42044u, u_input.b.x), u_input.b), 70871u << (0u % 32u)) & ~u_input.b, ~u_input.b) ^ _wgslsmith_div_vec2_u32(abs(vec2<u32>(var_0, 84336u) >> (select(u_input.b, vec2<u32>(var_0, 63477u), false) % vec2<u32>(32u))), vec2<u32>(countOneBits(~var_0), 1u));
    return select(!(!(!select(vec2<bool>(false, true), vec2<bool>(false, var_2), true))), select(!vec2<bool>(all(vec4<bool>(true, true, true, false)), var_2), vec2<bool>(any(vec4<bool>(false, var_2, var_2, var_2)), var_2), all(select(vec4<bool>(false, var_2, var_2, var_2), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, var_2, var_2), false), true))), select(vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1080f) > _wgslsmith_f_op_f32(round(1219f)), true), !(!select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, var_2), var_2)), false));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec2<bool>) -> f32 {
    global0 = array<Struct_2, 25>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -936f))))), u_input.b.x, arg_2.x, select(func_1(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(18715u, 17072u), 25u)]).e.d, select(vec3<bool>(func_1(global1[_wgslsmith_index_u32(u_input.b.x, 4u)]).e.d.x, arg_2.x, all(vec3<bool>(false, false, true))), vec3<bool>(true, !arg_2.x, false), !func_1(Struct_2(true, vec3<i32>(17687i, arg_0, 0i), vec2<i32>(-2147483647i, arg_0), -896f, Struct_1(1430f, u_input.b.x, arg_2.x, vec3<bool>(true, true, true), -467f))).e.d), vec3<bool>(true, any(vec2<bool>(arg_2.x, arg_2.x)), arg_2.x & true)), 104f);
    let var_1 = ~(u_input.b.x ^ 7738u);
    var var_2 = ~select(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b, var_1, u_input.b.x), vec3<u32>(var_0.b, u_input.b.x, u_input.b.x)) ^ vec3<u32>(~31973u, ~0u, _wgslsmith_mult_u32(var_0.b, 55889u)), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(0u, var_1, 4294967295u)), vec3<u32>(4294967295u, 1u, var_1), select(vec3<u32>(var_1, 0u, var_0.b), vec3<u32>(4294967295u, var_1, u_input.b.x), var_0.d)), abs(~vec3<u32>(44309u, 4294967295u, 38726u))), !func_1(Struct_2(true, u_input.a.xzy, vec2<i32>(u_input.c.x, arg_0), var_0.a, Struct_1(var_0.a, 11079u, true, var_0.d, var_0.a))).e.d);
    let var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(-27646i, -1i, 1i, -2147483647i)), vec4<i32>(func_1(Struct_2(false, vec3<i32>(-1i, -18964i, -2147483647i), u_input.a.yw, -470f, Struct_1(1041f, var_2.x, false, var_0.d, -817f))).c.x, ~u_input.a.x, arg_1 | u_input.c.x, reverseBits(arg_0) | arg_0)), firstTrailingBit(max(vec4<i32>(arg_1, -2147483647i, -2147483647i, arg_0), -u_input.a)) & ~_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a >> (vec4<u32>(0u, var_0.b, var_2.x, var_1) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1, u_input.c.x, u_input.c.x, -2147483647i), vec4<i32>(u_input.a.x, arg_0, 65022i, -26284i))));
    return 1000f;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-589f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(u_input.c.x | -arg_0.c.x, -27634i, func_3()))));
    global0 = array<Struct_2, 25>();
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> StorageBuffer {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~abs(~vec2<u32>(6560u, 5280u)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.b, 0u) << (u_input.b % vec2<u32>(32u)), u_input.b | vec2<u32>(u_input.b.x, u_input.b.x)) << (_wgslsmith_mod_vec2_u32(~u_input.b, ~vec2<u32>(0u, u_input.b.x)) % vec2<u32>(32u))), 25u)];
    global1 = array<Struct_2, 4>();
    let var_1 = -(vec4<i32>(i32(-1i) * -16738i, firstTrailingBit(var_0.b.x), u_input.c.x, abs(-47251i)) >> (vec4<u32>(~1u, ~4294967295u << (~4294967295u % 32u), 44069u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e.b, u_input.b.x, 0u, var_0.e.b), vec4<u32>(69155u, 12535u, 1u, var_0.e.b))) % vec4<u32>(32u)));
    global1 = array<Struct_2, 4>();
    global0 = array<Struct_2, 25>();
    return StorageBuffer(~(u_input.b.x | 1u), vec2<u32>(firstTrailingBit(min(arg_0.b, arg_0.b)) >> (abs(countOneBits(u_input.b.x)) % 32u), var_0.e.b), (firstLeadingBit(vec4<i32>(var_0.b.x, 1i, arg_1, 1i)) & reverseBits(var_1)) ^ _wgslsmith_mod_vec4_i32(-select(vec4<i32>(var_1.x, u_input.a.x, arg_1, 1i), var_1, vec4<bool>(true, arg_0.c, true, arg_2)), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(func_1(Struct_2(true, u_input.a.xzz, u_input.c, -594f, Struct_1(-206f, 4294967295u, true, vec3<bool>(false, true, false), 1229f))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)))) * 1000f), ~u_input.b.x, false, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1607f + 2525f))))), 0i, !((_wgslsmith_sub_u32(36036u, u_input.b.x) ^ min(16563u, 49192u)) > 0u));
}

