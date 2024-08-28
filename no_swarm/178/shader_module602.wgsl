struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(vec4<f32>(-177f, 1497f, -1186f, -158f), Struct_2(vec4<i32>(1i, 38933i, 16868i, -4037i), Struct_1(i32(-2147483648), 1226u, vec3<u32>(27409u, 0u, 10321u)), 607f, Struct_1(-1i, 58860u, vec3<u32>(0u, 0u, 897u))), 2147483647i, 7546u, Struct_1(64729i, 41379u, vec3<u32>(8041u, 23177u, 62321u))), Struct_3(vec4<f32>(-275f, -1244f, -585f, 1181f), Struct_2(vec4<i32>(1i, 47297i, -44830i, -50397i), Struct_1(-7844i, 4294967295u, vec3<u32>(0u, 40988u, 33361u)), -391f, Struct_1(-53333i, 29941u, vec3<u32>(0u, 7338u, 36730u))), 2147483647i, 4294967295u, Struct_1(0i, 0u, vec3<u32>(27677u, 42856u, 10283u))));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(1u, 2u)];
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.c.x, ~(~arg_1)), 2u)];
    var_1 = global1[_wgslsmith_index_u32(42279u, 2u)];
    let var_2 = Struct_1(9265i, arg_1, vec3<u32>(~(~firstTrailingBit(var_1.e.c.x)), 0u, ~32603u));
    var var_3 = vec3<u32>(var_2.b << (var_2.c.x % 32u), 8652u, 0u);
    return 62414u;
}

fn func_3() -> vec3<u32> {
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    let var_0 = Struct_1(u_input.a, reverseBits(0u), vec3<u32>(~1u, _wgslsmith_clamp_u32(~1u, 38671u, _wgslsmith_div_u32(~46581u, 4294967295u)), func_2(2147483647i, countOneBits(4294967295u), global0[_wgslsmith_index_u32(countOneBits(~28844u), 9u)])));
    var var_1 = !select(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))), false, any(vec4<bool>(false, all(vec3<bool>(false, true, true)), any(vec3<bool>(false, false, true)), true)));
    global1 = array<Struct_3, 2>();
    return (select(~vec3<u32>(var_0.c.x, 0u, var_0.c.x), var_0.c, all(vec2<bool>(true, false)) || false) | vec3<u32>(4294967295u, 15360u, var_0.b)) >> (vec3<u32>(max(~_wgslsmith_add_u32(0u, 0u), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 1u), var_0.c.yx), ~vec2<u32>(1u, 11416u))), var_0.c.x, var_0.c.x) % vec3<u32>(32u));
}

fn func_1() -> vec4<i32> {
    global1 = array<Struct_3, 2>();
    global0 = array<Struct_1, 9>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~(~_wgslsmith_div_u32(0u, 4294967295u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(68188u, 31534u, 5976u, 25488u), abs(vec4<u32>(4762u, 4294967295u, 31095u, 7465u))), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_div_u32(func_2(-2147483647i, 19955u, global0[_wgslsmith_index_u32(835u, 9u)]) | ~4294967295u, _wgslsmith_mod_u32(1u, ~31048u))), _wgslsmith_div_vec3_u32(func_3(), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(3014u, 100930u, 4294967295u), vec3<u32>(4294967295u, 3604u, 17551u), vec3<u32>(29154u, 57733u, 4294967295u))) << (~vec3<u32>(4294967295u, 8365u, 0u) % vec3<u32>(32u)))), 2u)];
    let var_1 = 1043f;
    let var_2 = false;
    return var_0.b.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: vec3<bool>, arg_3: bool) -> u32 {
    var var_0 = Struct_2(vec4<i32>(-abs(-38727i), max(u_input.a, u_input.a), -_wgslsmith_dot_vec3_i32(arg_0.xyy, arg_0.wxz), -1i) & arg_0, global0[_wgslsmith_index_u32(~(~1u), 9u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -986f)))))), Struct_1(arg_0.x ^ (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_0.x, 11845i), vec3<i32>(5685i, arg_0.x, 17383i)) >> (1u % 32u)), abs(1u), vec3<u32>(abs(1u), 1u, abs(1u) ^ select(21540u, 4294967295u, arg_3))));
    let var_1 = Struct_2(select(~(~(~vec4<i32>(59548i, u_input.a, -22589i, u_input.a))), var_0.a, !vec4<bool>(any(vec3<bool>(false, arg_2.x, true)), arg_3, !arg_3, true)), var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1138f + -282f)), Struct_1(_wgslsmith_clamp_i32(0i & arg_1, _wgslsmith_add_i32(var_0.a.x, u_input.a), func_1().x), _wgslsmith_sub_u32(var_0.b.b, 34413u), ~(~var_0.b.c) | vec3<u32>(~var_0.d.b, var_0.b.c.x, _wgslsmith_dot_vec3_u32(var_0.b.c, var_0.b.c))));
    global1 = array<Struct_3, 2>();
    var_0 = var_1;
    global0 = array<Struct_1, 9>();
    return 51360u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(24011u, 9u)];
    var_0 = global0[_wgslsmith_index_u32(func_4(max(vec4<i32>(-u_input.a, max(u_input.a, 14917i) << (reverseBits(var_0.c.x) % 32u), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, abs(u_input.a)), -4317i), func_1()), -2147483647i, vec3<bool>(_wgslsmith_f_op_f32(ceil(158f)) < _wgslsmith_f_op_f32(-458f - -1351f), true, 1i <= u_input.a), false), 9u)];
    let var_1 = true;
    let var_2 = global0[_wgslsmith_index_u32(~abs(var_0.b), 9u)];
    let var_3 = ~vec3<i32>(0i, _wgslsmith_clamp_i32(var_0.a ^ _wgslsmith_sub_i32(u_input.a, var_0.a), ~1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.a, 3934i, var_0.a), vec3<i32>(7134i, var_2.a, -2147483647i))), u_input.a);
    let var_4 = _wgslsmith_div_u32(var_0.c.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.b, _wgslsmith_mult_u32(var_2.c.x, 4376u)), var_2.b) & ~56439u);
    global0 = array<Struct_1, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~select(select(~vec4<u32>(var_0.b, var_2.b, var_2.b, 0u), vec4<u32>(1u, var_4, 68146u, var_0.c.x) ^ vec4<u32>(var_2.b, var_0.c.x, 1u, 42109u), select(vec4<bool>(var_1, var_1, false, false), vec4<bool>(true, var_1, true, false), var_1)), ~select(vec4<u32>(1u, 32086u, 0u, 7799u), vec4<u32>(4294967295u, 1u, var_4, var_2.c.x), vec4<bool>(var_1, var_1, var_1, var_1)), true));
}

