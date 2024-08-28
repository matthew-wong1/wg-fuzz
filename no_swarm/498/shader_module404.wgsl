struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(Struct_2(Struct_1(vec2<f32>(243f, 144f), true, -1753f, vec2<bool>(false, true))), 7742i), Struct_3(Struct_2(Struct_1(vec2<f32>(-570f, 153f), false, 634f, vec2<bool>(true, true))), 1i), Struct_3(Struct_2(Struct_1(vec2<f32>(-1166f, -314f), true, 3856f, vec2<bool>(true, false))), i32(-2147483648)), Struct_3(Struct_2(Struct_1(vec2<f32>(917f, -1679f), true, -548f, vec2<bool>(true, false))), 0i), Struct_3(Struct_2(Struct_1(vec2<f32>(309f, -376f), true, 186f, vec2<bool>(false, true))), -6274i), Struct_3(Struct_2(Struct_1(vec2<f32>(-141f, 227f), false, 2017f, vec2<bool>(false, false))), i32(-2147483648)), Struct_3(Struct_2(Struct_1(vec2<f32>(1711f, -308f), false, -789f, vec2<bool>(false, true))), i32(-2147483648)), Struct_3(Struct_2(Struct_1(vec2<f32>(-703f, 2228f), false, 778f, vec2<bool>(true, false))), 0i), Struct_3(Struct_2(Struct_1(vec2<f32>(278f, 2453f), false, 1000f, vec2<bool>(false, false))), 0i));

var<private> global1: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(i32(-2147483648), 32114i, 0i), vec3<i32>(17844i, i32(-2147483648), -1i), vec3<i32>(1i, i32(-2147483648), 1625i), vec3<i32>(-1i, 2147483647i, 61854i), vec3<i32>(20744i, -1i, 1780i), vec3<i32>(2147483647i, 19156i, -45158i), vec3<i32>(-6427i, -54518i, 1i), vec3<i32>(-15310i, 65437i, 0i), vec3<i32>(i32(-2147483648), 22199i, 32946i), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<i32>(0i, 15229i, 3836i), vec3<i32>(2147483647i, 2147483647i, -1i), vec3<i32>(0i, 8991i, 2147483647i), vec3<i32>(2147483647i, 47908i, 53299i), vec3<i32>(2147483647i, i32(-2147483648), -40462i), vec3<i32>(0i, -2371i, -16152i), vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(2818i, -1i, 2147483647i), vec3<i32>(-39007i, -1i, 16829i), vec3<i32>(-26321i, 1i, -79077i), vec3<i32>(-30718i, 1i, i32(-2147483648)), vec3<i32>(2147483647i, 1i, 2147483647i), vec3<i32>(-1i, 25246i, -22916i), vec3<i32>(-88452i, 0i, 13547i), vec3<i32>(12929i, -7272i, -125248i), vec3<i32>(-1589i, i32(-2147483648), -20934i), vec3<i32>(-34375i, 1i, -29574i), vec3<i32>(0i, -59402i, -2623i));

var<private> global2: array<vec2<i32>, 26>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> i32 {
    var var_0 = ~firstLeadingBit(abs(~(~2577u)));
    let var_1 = Struct_4(abs(vec3<u32>(~select(34298u, 4294967295u, false), 1u, reverseBits(1u))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1408f, -566f)))), firstLeadingBit(-1i) > _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(4294967295u, 29u)], vec3<i32>(32905i, u_input.b.x, 2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1097f + -1000f)), vec2<bool>(true, true))));
    var var_2 = var_1.b;
    var var_3 = false;
    var_2 = Struct_2(Struct_1(var_2.a.a, var_1.b.a.d.x, _wgslsmith_f_op_f32(-var_1.b.a.c), !vec2<bool>(all(var_1.b.a.d), 850f < var_2.a.c)));
    return 1i;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> u32 {
    let var_0 = arg_1;
    var var_1 = ~max(u_input.a, ~_wgslsmith_div_i32(u_input.a, u_input.a)) & func_2();
    var var_2 = Struct_5(arg_0.b);
    global0 = array<Struct_3, 9>();
    return arg_1;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_5) -> u32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1764f, arg_0.c, _wgslsmith_f_op_f32(step(arg_0.c, arg_0.c))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a.x, -250f, 829f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-371f, -1044f, 949f) + vec3<f32>(arg_1.a.x, arg_1.a.x, arg_0.a.x)), any(vec4<bool>(true, arg_3.a, true, arg_3.a))))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -248f), _wgslsmith_f_op_f32(exp2(arg_1.c)), -745f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1458f, arg_0.c, arg_1.a.x), vec3<f32>(arg_1.a.x, arg_1.a.x, -1170f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-271f, 739f, -488f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, -616f, 235f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 2217f, arg_1.a.x)))));
    var var_1 = Struct_4(vec3<u32>(~(~(2412u >> (0u % 32u))), _wgslsmith_div_u32(1u, 1u), ~(~33707u)), Struct_2(arg_1));
    let var_2 = select(!arg_1.d, !select(vec2<bool>(!arg_0.b, true), select(arg_0.d, arg_1.d, true), var_1.b.a.d.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(step(var_0.x, 281f))), _wgslsmith_f_op_f32(min(var_0.x, -1478f)))) < 404f);
    var_1 = Struct_4(~(~firstTrailingBit(vec3<u32>(4294967295u, 63974u, var_1.a.x))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-140f, -497f))), true, _wgslsmith_f_op_f32(abs(-1000f)), vec2<bool>(true, true))));
    global1 = array<vec3<i32>, 29>();
    return 71023u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 29>();
    var var_0 = _wgslsmith_add_vec3_u32(max(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, ~74318u, func_1(Struct_1(vec2<f32>(-157f, 806f), true, 674f, vec2<bool>(true, true)), 4294967295u, -1973f))), countOneBits(vec3<u32>(1u, 1u, 1u))) & (vec3<u32>(1u, 4294967295u & func_3(Struct_1(vec2<f32>(784f, -1507f), true, -138f, vec2<bool>(true, false)), Struct_1(vec2<f32>(2202f, 270f), true, 1020f, vec2<bool>(false, true)), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), Struct_5(true)), select(~1u, 1u, true)) >> (vec3<u32>(~_wgslsmith_div_u32(30240u, 4294967295u), 1u, min(3686u, 4294967295u)) % vec3<u32>(32u)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-467f, 783f))), vec2<f32>(1697f, 1433f), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 497f))))), any(vec4<bool>(true, true, false, false)), -306f, vec2<bool>(true, all(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))));
    var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(abs(func_3(Struct_1(var_1.a, var_1.b, -909f, vec2<bool>(var_1.b, var_1.d.x)), Struct_1(vec2<f32>(-205f, var_1.a.x), true, var_1.c, var_1.d), u_input.b, Struct_5(true))), 1u), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.x, var_0.x), var_0.x), firstLeadingBit(reverseBits(1u))), abs(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, var_0.x), var_0.x), 44752u, ~(var_0.x << (var_0.x % 32u)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.c, -794f), _wgslsmith_f_op_vec2_f32(var_1.a + vec2<f32>(var_1.a.x, var_1.c)), all(vec4<bool>(var_1.d.x, var_1.d.x, true, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a * vec2<f32>(var_1.a.x, var_1.c)) - _wgslsmith_f_op_vec2_f32(max(var_1.a, var_1.a))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1059f, var_1.c) * vec2<f32>(var_1.a.x, var_1.c))))))));
    var var_3 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(18361u >> (var_0.x % 32u), -(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, 3245i, 0i), vec4<i32>(u_input.b.x, u_input.a, u_input.a, u_input.a)), firstLeadingBit(u_input.a), u_input.b.x) << (_wgslsmith_div_vec3_u32(min(vec3<u32>(var_0.x, var_0.x, 0u), vec3<u32>(15835u, 4294967295u, var_0.x)), vec3<u32>(25986u, var_0.x, 59217u)) % vec3<u32>(32u))), var_0.x | (_wgslsmith_dot_vec3_u32(vec3<u32>(29260u, var_0.x, var_0.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, 1u, 0u), vec3<u32>(var_0.x, var_0.x, 0u), vec3<u32>(var_0.x, var_0.x, 0u))) ^ _wgslsmith_sub_u32(var_0.x | var_0.x, func_1(Struct_1(var_1.a, false, var_1.a.x, var_1.d), var_0.x, -833f))), 774f);
}

