struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

var<private> global1: array<vec2<f32>, 32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: u32) -> Struct_2 {
    var var_0 = true;
    let var_1 = Struct_2(Struct_1(arg_0.x, u_input.a.x, arg_0.x), Struct_1(true, -1i, arg_0.x), ~arg_2, Struct_1(true, -1i, true));
    let var_2 = countOneBits(28237u);
    var var_3 = Struct_3(var_1, Struct_2(var_1.b, var_1.b, _wgslsmith_dot_vec2_u32(max(~vec2<u32>(var_2, u_input.b.x), ~vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_2), vec2<u32>(arg_1, arg_2)), ~vec2<u32>(0u, 31646u), u_input.b | u_input.b)), var_1.b), var_1, u_input.b.x);
    let var_4 = var_3.b.d.b;
    return Struct_2(Struct_1(arg_0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(var_3.b.a.b, var_3.a.a.b, u_input.a.x)), max(vec3<i32>(u_input.a.x, var_3.b.d.b, var_1.b.b), vec3<i32>(-37196i, var_1.d.b, -11362i))), vec3<i32>(-16579i, u_input.a.x, u_input.a.x) & -vec3<i32>(-1i, -2147483647i, u_input.a.x)), all(!(!arg_0.zy))), Struct_1((select(12980u, 54864u, var_1.a.c) >= ~var_2) && !all(arg_0.xw), 1i, var_3.a.d.c || false), 37773u, var_3.b.d);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> Struct_1 {
    return Struct_1(true, -69641i, true);
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_1 {
    return func_3(func_2(vec4<bool>(true, true, true, true), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, 57817u, 4294967295u))) << (4294967295u % 32u), ~0u), global0[_wgslsmith_index_u32(u_input.b.x, 8u)], 4294967295u);
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> bool {
    var var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), firstLeadingBit(vec2<u32>(33733u, u_input.b.x))), _wgslsmith_clamp_u32(_wgslsmith_add_u32(17048u, 1u), 0u, min(arg_0.c, 40076u)), u_input.b.x) ^ ~(~(~vec4<u32>(3067u, u_input.b.x, 4294967295u, 5715u))), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(1519u, u_input.b.x, arg_0.c, 4294967295u), ~vec4<u32>(4294967295u, arg_0.c, arg_0.c, 1u)), ~arg_0.c, _wgslsmith_mod_u32(~u_input.b.x, ~arg_0.c)) << ((vec4<u32>(u_input.b.x, countOneBits(u_input.b.x), _wgslsmith_sub_u32(30728u, u_input.b.x), arg_0.c) | (~vec4<u32>(arg_0.c, u_input.b.x, 4294967295u, 36785u) >> (select(vec4<u32>(4294967295u, 1u, 39963u, 0u), vec4<u32>(1u, 59928u, u_input.b.x, u_input.b.x), vec4<bool>(arg_0.b.c, false, false, false)) % vec4<u32>(32u)))) % vec4<u32>(32u)), abs(~(~firstTrailingBit(vec4<u32>(arg_0.c, arg_0.c, 3310u, arg_0.c)))));
    global1 = array<vec2<f32>, 32>();
    global1 = array<vec2<f32>, 32>();
    var var_1 = Struct_3(Struct_2(arg_0.b, Struct_1(all(select(vec2<bool>(true, false), vec2<bool>(arg_0.d.a, true), vec2<bool>(arg_0.a.c, true))), 75802i, func_2(select(vec4<bool>(arg_0.d.c, true, false, arg_0.d.a), vec4<bool>(true, false, false, true), false), u_input.b.x, abs(var_0.x)).d.a), abs(u_input.b.x), Struct_1(func_2(!vec4<bool>(arg_0.d.a, true, true, false), min(1u, 7772u), _wgslsmith_dot_vec2_u32(var_0.wx, u_input.b)).d.a, arg_1, arg_1 < -1i)), arg_0, Struct_2(Struct_1(arg_0.b.c, abs(-8684i), arg_0.b.a), arg_0.a, u_input.b.x & min(72769u, ~42452u), func_3(arg_0, global0[_wgslsmith_index_u32(u_input.b.x, 8u)], 1u)), 22589u);
    let var_2 = vec2<bool>(true, all(!(!vec3<bool>(false, var_1.b.d.c, arg_0.b.a))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(730f))), u_input.a.x), func_3(Struct_2(Struct_1(false, 2147483647i, true), Struct_1(true, 8490i, true), u_input.b.x, func_2(vec4<bool>(false, false, false, false), u_input.b.x, u_input.b.x).d), global0[_wgslsmith_index_u32(u_input.b.x, 8u)], ~firstTrailingBit(u_input.b.x)), abs(u_input.b.x), Struct_1(true, 0i, true)), -(~(-32756i)));
    var var_1 = _wgslsmith_div_i32(~func_1(_wgslsmith_f_op_f32(f32(-1f) * -976f), u_input.a.x).b, u_input.a.x);
    var var_2 = Struct_3(func_2(!vec4<bool>(true, false, all(vec4<bool>(true, true, false, true)), func_4(Struct_2(Struct_1(true, u_input.a.x, true), Struct_1(false, -16096i, false), u_input.b.x, Struct_1(false, u_input.a.x, true)), 30937i)), u_input.b.x, 39241u), Struct_2(Struct_1(any(vec2<bool>(true, true)), -_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), func_3(Struct_2(Struct_1(true, u_input.a.x, false), Struct_1(true, 2173i, false), u_input.b.x, Struct_1(false, u_input.a.x, true)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 8u)] - -747f), ~57522u).a), func_3(func_2(vec4<bool>(true, true, true, true), func_2(vec4<bool>(false, false, false, true), 1u, 29666u).c, u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], -263f)) + global0[_wgslsmith_index_u32(reverseBits(4294967295u), 8u)]), ~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), 4294967295u, Struct_1(global0[_wgslsmith_index_u32(~u_input.b.x, 8u)] < _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.b.x, 8u)])), u_input.a.x | ~41398i, true)), Struct_2(func_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1552f, 542f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(89210u, 8u)]))), u_input.a.x), Struct_1(true, -38766i, func_3(func_2(vec4<bool>(true, true, false, true), u_input.b.x, u_input.b.x), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], 1682f), countOneBits(u_input.b.x)).a), u_input.b.x, func_2(select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), true), countOneBits(u_input.b.x), ~u_input.b.x).d), u_input.b.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(156f, _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.b.x, 8u)])), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_2.b.c, 4294967295u), 8u)], 816f));
    global1 = array<vec2<f32>, 32>();
    var var_4 = ~(~_wgslsmith_clamp_u32(u_input.b.x, 37109u, u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(23859u, _wgslsmith_mod_u32(var_2.c.c, _wgslsmith_add_u32(4294967295u, u_input.b.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, var_2.d, 1u), vec4<u32>(var_2.d, u_input.b.x, 41044u, u_input.b.x)), 0u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 73760u, var_2.d, ~66837u), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(41476u, var_2.b.c, u_input.b.x, var_2.b.c), vec4<u32>(0u, u_input.b.x, 15887u, 7600u), vec4<u32>(1u, u_input.b.x, u_input.b.x, 30047u)), vec4<u32>(u_input.b.x, var_2.a.c, var_2.b.c, 70719u) >> (vec4<u32>(0u, 35619u, 0u, var_2.d) % vec4<u32>(32u))))), var_3.x);
}

