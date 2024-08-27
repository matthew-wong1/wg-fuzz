struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>) -> vec4<bool> {
    global0 = vec4<bool>(!(!(global0.x | global0.x)), !(_wgslsmith_div_u32(0u, min(10659u, u_input.b)) >= arg_1.x), global0.x, global0.x);
    var var_0 = Struct_3(!global0.zy);
    return !select(!select(!vec4<bool>(false, false, global0.x, global0.x), select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(var_0.a.x, true, false, true)), global0.x | global0.x), select(!vec4<bool>(global0.x, var_0.a.x, true, var_0.a.x), vec4<bool>(true, true, true, true), select(!vec4<bool>(false, true, false, var_0.a.x), vec4<bool>(true, false, global0.x, global0.x), select(vec4<bool>(global0.x, var_0.a.x, false, true), vec4<bool>(false, global0.x, global0.x, var_0.a.x), var_0.a.x))), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, var_0.a.x, var_0.a.x), global0.x)));
}

fn func_2(arg_0: f32, arg_1: bool) -> i32 {
    global0 = !vec4<bool>(!global0.x, false, arg_1, !((1u > u_input.c) && arg_1));
    global0 = select(select(vec4<bool>(false, arg_1 || false, true, all(vec2<bool>(false, true))), !(!(!vec4<bool>(global0.x, arg_1, arg_1, false))), !(true & !arg_1)), func_3(countOneBits(~(vec4<i32>(u_input.a, -1i, -50275i, -2147483647i) << (vec4<u32>(u_input.c, u_input.b, u_input.c, 5278u) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_u32(select(select(vec4<u32>(u_input.c, 1u, u_input.c, 0u), vec4<u32>(u_input.c, 67087u, 78571u, u_input.b), vec4<bool>(false, global0.x, true, true)), vec4<u32>(33535u, 4294967295u, u_input.c, 1u), false), select(vec4<u32>(u_input.c, 70916u, u_input.c, 0u), ~vec4<u32>(47891u, 17739u, 4294967295u, 98847u), !vec4<bool>(true, arg_1, false, arg_1)))), any(vec2<bool>(_wgslsmith_mult_i32(u_input.a, u_input.a) < firstTrailingBit(u_input.a), !(arg_0 != arg_0))));
    let var_0 = vec4<u32>(~102041u, 0u, u_input.b, 1u);
    global0 = !select(!func_3(vec4<i32>(-44761i, 14187i, u_input.a, -1i), ~vec4<u32>(var_0.x, u_input.c, u_input.c, u_input.c)), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x)), !vec4<bool>(arg_1, arg_1, arg_1, global0.x), global0.x), func_3(abs(vec4<i32>(u_input.a, u_input.a, u_input.a, -9448i)) << (min(vec4<u32>(var_0.x, u_input.c, u_input.c, var_0.x), var_0) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(var_0, reverseBits(vec4<u32>(var_0.x, 13035u, 73123u, 26527u)))).x);
    var var_1 = Struct_1(101260i, -1094i);
    return u_input.a;
}

fn func_1(arg_0: i32) -> vec3<bool> {
    let var_0 = !(_wgslsmith_f_op_f32(select(-413f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -591f) * -355f), true)) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -841f) + _wgslsmith_f_op_f32(651f - -511f)), _wgslsmith_div_f32(1162f, -1060f))));
    global0 = vec4<bool>(true, true, !(u_input.a <= func_2(_wgslsmith_f_op_f32(997f * -350f), !global0.x)), true);
    global0 = select(select(vec4<bool>(true, global0.x, !any(vec4<bool>(global0.x, global0.x, var_0, false)), global0.x), vec4<bool>(~29332u <= _wgslsmith_mod_u32(40964u, u_input.c), false, var_0, !var_0), all(vec3<bool>(u_input.b == u_input.b, u_input.a > -2147483647i, false))), !vec4<bool>(!(!global0.x), !global0.x, true && all(vec4<bool>(false, var_0, false, false)), global0.x), !select(!vec4<bool>(true, false, var_0, global0.x), select(!vec4<bool>(true, true, false, var_0), vec4<bool>(var_0, var_0, true, var_0), true && var_0), true));
    global0 = select(func_3(vec4<i32>(~(-89548i), ~(~(-39703i)), abs(max(32540i, arg_0)), ~(~2147483647i)), vec4<u32>(1u, u_input.c, select(0u, _wgslsmith_add_u32(19111u, u_input.c), any(global0.zy)), 49080u)), vec4<bool>(!global0.x, false, var_0, true || !var_0), !func_3(reverseBits(-vec4<i32>(38725i, 0i, 35443i, u_input.a)), ~(~vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.c))));
    global0 = !(!vec4<bool>(select(global0.x, var_0, global0.x) | true, _wgslsmith_add_u32(u_input.b, 4294967295u) < countOneBits(16111u), func_3(vec4<i32>(arg_0, u_input.a, -2147483647i, 0i), ~vec4<u32>(16070u, u_input.b, u_input.b, u_input.c)).x, true & any(vec3<bool>(var_0, false, true))));
    return select(select(vec3<bool>(-2147483647i >= arg_0, all(select(vec4<bool>(global0.x, var_0, true, true), vec4<bool>(false, global0.x, true, true), vec4<bool>(var_0, false, var_0, true))), true), !global0.xwy, global0.zzw), select(func_3(vec4<i32>(_wgslsmith_mult_i32(-2147483647i, arg_0), arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(-13067i, u_input.a), vec2<i32>(-2147483647i, -11218i)), 1i), vec4<u32>(u_input.b, u_input.c, 4294967295u, u_input.b) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 36708u, 4294967295u, u_input.c), vec4<u32>(u_input.c, 38227u, 70876u, u_input.b)) % vec4<u32>(32u))).yxz, func_3(_wgslsmith_mult_vec4_i32(~vec4<i32>(-54707i, u_input.a, arg_0, -25809i), vec4<i32>(1i, u_input.a, u_input.a, u_input.a)), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 22352u, u_input.b, u_input.c), vec4<u32>(1u, u_input.c, 91798u, 1u)))).xxx, vec3<bool>(!any(vec4<bool>(var_0, true, var_0, true)), var_0, all(vec2<bool>(true, global0.x)))), vec3<bool>(-18093i > arg_0, true == global0.x, true & func_3(-vec4<i32>(arg_0, arg_0, u_input.a, 19560i), ~vec4<u32>(0u, 0u, 17264u, 1u)).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(305f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-685f)), _wgslsmith_f_op_f32(f32(-1f) * -798f))))));
    var var_1 = reverseBits(abs(vec3<i32>(u_input.a, -1i, 2147483647i)));
    global0 = vec4<bool>(global0.x, true, global0.x, !global0.x);
    global0 = select(vec4<bool>(true, true, true, true), vec4<bool>(any(select(global0.wyy, global0.wyx, func_1(var_1.x))), true, any(vec4<bool>(true, true, true, true)), global0.x || select(all(vec2<bool>(global0.x, true)), false, var_0.x == 866f)), global0.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1126f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * var_0.x)) + _wgslsmith_f_op_f32(-710f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1931f)), _wgslsmith_div_f32(var_0.x, var_0.x), global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-143f - var_0.x), _wgslsmith_f_op_f32(floor(var_0.x))), false))));
    var var_3 = _wgslsmith_add_u32(~u_input.c, u_input.b);
    var_3 = ~u_input.c;
    var var_4 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(~56738u, abs(var_1.x), 0i, _wgslsmith_f_op_f32(sign(1000f)), reverseBits(vec4<i32>(~(-2147483647i >> (u_input.b % 32u)), _wgslsmith_mod_i32(~var_1.x, firstLeadingBit(var_1.x)), -22172i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(var_1.x, 26281i, -2147483647i), vec3<i32>(var_1.x, u_input.a, u_input.a)), vec3<i32>(-2147483647i, 1i, -2893i)))));
}

