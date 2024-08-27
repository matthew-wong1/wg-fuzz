struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<u32>, 3>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_1(arg_0.b.a, vec4<u32>(~countOneBits(min(arg_0.b.c.x, 4294967295u)), ~select(_wgslsmith_clamp_u32(94262u, arg_1.b.c.x, arg_1.b.e.x), ~arg_1.a, true), _wgslsmith_add_u32(arg_0.b.e.x, arg_0.b.b.x), ~arg_1.b.b.x), vec2<u32>(1u, _wgslsmith_add_u32(_wgslsmith_sub_u32(countOneBits(arg_0.b.c.x), min(100693u, 4256u)), ~u_input.a.x)), ~(-select(vec3<i32>(arg_1.b.d.x, 1i, -2147483647i), vec3<i32>(3997i, -733i, 29195i), vec3<bool>(true, false, true)) & (arg_0.b.d << (abs(global1[_wgslsmith_index_u32(u_input.a.x, 3u)]) % vec3<u32>(32u)))), _wgslsmith_add_vec3_u32(~countOneBits(vec3<u32>(arg_1.b.e.x, arg_1.b.e.x, 15334u)), reverseBits(vec3<u32>(46337u << (0u % 32u), 1u, select(0u, arg_1.a, false)))));
    var var_1 = true;
    global1 = array<vec3<u32>, 3>();
    var var_2 = 1u >> (_wgslsmith_mod_u32(arg_0.b.c.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_0.b.c.x, abs(42435u)), _wgslsmith_dot_vec3_u32(~arg_0.b.b.xyy, firstLeadingBit(var_0.e)))) % 32u);
    global1 = array<vec3<u32>, 3>();
    return ~u_input.a.x;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(select(!vec4<bool>(true, u_input.a.x >= 52820u, true, 3779u >= u_input.a.x), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), false)), 34375u != u_input.a.x), ~vec4<u32>(_wgslsmith_add_u32(u_input.a.x, ~u_input.a.x), ~u_input.a.x, ~(~48421u), 0u), vec2<u32>(_wgslsmith_dot_vec2_u32(max(u_input.a, u_input.a), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 15325u, u_input.a.x), vec3<u32>(1u, u_input.a.x, u_input.a.x)), 81092u)), 1275u), vec3<i32>(1i, ~u_input.c.x, -1i), global1[_wgslsmith_index_u32(func_3(Struct_2(54530u, Struct_1(vec4<bool>(true, true, true, true), vec4<u32>(73107u, 35655u, 5379u, u_input.a.x), u_input.a, vec3<i32>(-9714i, u_input.b, u_input.d.x), global1[_wgslsmith_index_u32(1u, 3u)] ^ vec3<u32>(0u, u_input.a.x, 4294967295u))), Struct_2(9801u, Struct_1(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false), vec4<u32>(u_input.a.x, 9490u, u_input.a.x, 8424u) ^ vec4<u32>(0u, 0u, 4294967295u, 0u), _wgslsmith_sub_vec2_u32(u_input.a, u_input.a), -vec3<i32>(u_input.b, u_input.e.x, 2147483647i), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), 3u)]);
    global0 = u_input.a.x;
    let var_1 = Struct_2(17997u, Struct_1(var_0.a, countOneBits(~vec4<u32>(49404u, 0u, u_input.a.x, 65441u) & _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.x, 45630u, var_0.c.x, var_0.c.x), vec4<u32>(u_input.a.x, var_0.e.x, u_input.a.x, var_0.c.x))), vec2<u32>(~var_0.b.x, ~u_input.a.x), -(~vec3<i32>(u_input.d.x, u_input.e.x, var_0.d.x)), vec3<u32>(11220u, func_3(Struct_2(u_input.a.x, Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), vec4<u32>(0u, 65196u, u_input.a.x, u_input.a.x), vec2<u32>(4294967295u, var_0.c.x), vec3<i32>(-2147483647i, 39515i, 0i), var_0.e)), Struct_2(var_0.c.x, Struct_1(vec4<bool>(true, false, var_0.a.x, var_0.a.x), vec4<u32>(var_0.b.x, var_0.c.x, 10490u, var_0.c.x), var_0.b.wy, vec3<i32>(var_0.d.x, u_input.b, u_input.e.x), global1[_wgslsmith_index_u32(4294967295u, 3u)]))), 1u)));
    var var_2 = _wgslsmith_mod_vec4_u32((vec4<u32>(34721u, 0u, _wgslsmith_mod_u32(4294967295u, 25799u), var_1.a) | ~(~vec4<u32>(47977u, 30700u, var_1.a, var_0.e.x))) ^ vec4<u32>(0u, ~0u, ~countOneBits(var_1.a), countOneBits(1u)), var_1.b.b);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1748f + -2038f), _wgslsmith_f_op_f32(ceil(-1446f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-865f + -162f) - _wgslsmith_f_op_f32(f32(-1f) * -717f)))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(315f, _wgslsmith_f_op_f32(step(1198f, _wgslsmith_f_op_f32(ceil(2113f))))))));
    return _wgslsmith_dot_vec2_u32(abs(_wgslsmith_mod_vec2_u32(var_0.c << (u_input.a % vec2<u32>(32u)), vec2<u32>(0u, 0u))) ^ _wgslsmith_div_vec2_u32(max(var_0.c, _wgslsmith_mod_vec2_u32(vec2<u32>(69188u, var_2.x), vec2<u32>(86207u, var_1.b.c.x))), ~(~var_0.c)), var_2.wy);
}

fn func_4(arg_0: vec3<u32>) -> StorageBuffer {
    var var_0 = Struct_1(select(vec4<bool>(true, !(1i != u_input.c.x), false, false), select(vec4<bool>(true, true, any(vec3<bool>(false, false, false)), all(vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), false))), firstLeadingBit(firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, arg_0.x), min(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, arg_0.x), vec4<u32>(u_input.a.x, arg_0.x, arg_0.x, u_input.a.x))))), arg_0.zz, abs(-abs(-u_input.c.xzz)), ~arg_0);
    var var_1 = Struct_2(128388u, Struct_1(select(var_0.a, vec4<bool>(any(var_0.a), var_0.a.x, var_0.a.x | true, var_0.a.x), vec4<bool>(!var_0.a.x, var_0.a.x, !var_0.a.x, true)), ~var_0.b, _wgslsmith_add_vec2_u32(var_0.e.xx, u_input.a), -(-vec3<i32>(u_input.d.x, 0i, var_0.d.x) << (vec3<u32>(29332u, u_input.a.x, 12318u) % vec3<u32>(32u))), firstTrailingBit(~(~vec3<u32>(u_input.a.x, 50303u, 82509u)))));
    var var_2 = Struct_2(~(~reverseBits(func_2())), Struct_1(select(select(vec4<bool>(var_0.a.x, var_0.a.x, var_1.b.a.x, false), var_0.a, true), !vec4<bool>(true, var_0.a.x, false, var_0.a.x), _wgslsmith_f_op_f32(trunc(1366f)) <= _wgslsmith_f_op_f32(-805f * -1037f)), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b.e.x, var_0.c.x, 28654u, u_input.a.x), vec4<u32>(var_1.b.b.x, 4294967295u, 25220u, 31388u))), vec2<u32>(firstTrailingBit(u_input.a.x | u_input.a.x), arg_0.x), vec3<i32>(-_wgslsmith_sub_i32(u_input.d.x, var_0.d.x), _wgslsmith_div_i32(-var_1.b.d.x, u_input.c.x | u_input.e.x), -(~(-5791i))), ~vec3<u32>(var_1.b.b.x, min(arg_0.x, 4294967295u), 1u)));
    global0 = 4294967295u;
    var_1 = Struct_2(_wgslsmith_sub_u32(~min(4294967295u, u_input.a.x), func_3(Struct_2(~var_2.a, Struct_1(var_2.b.a, vec4<u32>(var_1.a, var_0.c.x, var_0.c.x, var_0.b.x), var_1.b.b.yz, vec3<i32>(-29252i, 2147483647i, 21584i), var_1.b.b.xxz)), Struct_2(_wgslsmith_mod_u32(4294967295u, var_2.a), var_2.b))), Struct_1(var_0.a, ~var_1.b.b, _wgslsmith_sub_vec2_u32(vec2<u32>(16136u, ~44768u), var_2.b.e.zy >> (var_0.e.zx % vec2<u32>(32u))), ~(-(var_2.b.d | vec3<i32>(-18680i, var_0.d.x, var_1.b.d.x))), arg_0));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1496f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-606f, 289f)) - _wgslsmith_f_op_f32(min(204f, 1199f))))), u_input.d.zy);
}

fn func_1() -> StorageBuffer {
    global0 = 4294967295u;
    return func_4(global1[_wgslsmith_index_u32(func_2(), 3u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

