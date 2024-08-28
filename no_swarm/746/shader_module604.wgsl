struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(132897u), vec2<i32>(-6536i, 1i)), Struct_2(Struct_1(24172u), vec2<i32>(-28579i, 53578i)), Struct_2(Struct_1(29648u), vec2<i32>(-58591i, i32(-2147483648))), Struct_2(Struct_1(0u), vec2<i32>(17543i, -2085i)), Struct_2(Struct_1(8661u), vec2<i32>(29215i, -9958i)), Struct_2(Struct_1(0u), vec2<i32>(4795i, 53763i)), Struct_2(Struct_1(0u), vec2<i32>(47771i, -49114i)), Struct_2(Struct_1(15585u), vec2<i32>(167i, -6261i)), Struct_2(Struct_1(4294967295u), vec2<i32>(7179i, 52473i)), Struct_2(Struct_1(26511u), vec2<i32>(0i, 0i)), Struct_2(Struct_1(87224u), vec2<i32>(838i, 8824i)), Struct_2(Struct_1(15113u), vec2<i32>(i32(-2147483648), 1i)), Struct_2(Struct_1(74092u), vec2<i32>(0i, -1i)), Struct_2(Struct_1(55335u), vec2<i32>(0i, -7076i)), Struct_2(Struct_1(36543u), vec2<i32>(i32(-2147483648), 1i)), Struct_2(Struct_1(42314u), vec2<i32>(-15999i, 2147483647i)), Struct_2(Struct_1(1u), vec2<i32>(13257i, 57332i)), Struct_2(Struct_1(49045u), vec2<i32>(-72606i, 1i)), Struct_2(Struct_1(83114u), vec2<i32>(-2217i, -13274i)), Struct_2(Struct_1(0u), vec2<i32>(2147483647i, -7620i)), Struct_2(Struct_1(1u), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_2(Struct_1(0u), vec2<i32>(i32(-2147483648), -11755i)), Struct_2(Struct_1(1u), vec2<i32>(24080i, -14347i)), Struct_2(Struct_1(4294967295u), vec2<i32>(29123i, 2244i)), Struct_2(Struct_1(7716u), vec2<i32>(0i, 2147483647i)), Struct_2(Struct_1(0u), vec2<i32>(-26566i, 2147483647i)), Struct_2(Struct_1(4294967295u), vec2<i32>(i32(-2147483648), -35018i)), Struct_2(Struct_1(47449u), vec2<i32>(-1i, 61296i)), Struct_2(Struct_1(1u), vec2<i32>(0i, -10165i)), Struct_2(Struct_1(4294967295u), vec2<i32>(i32(-2147483648), 18622i)), Struct_2(Struct_1(1u), vec2<i32>(18978i, 29997i)));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> vec2<i32> {
    let var_0 = Struct_2(arg_2, select(vec2<i32>(-arg_1, _wgslsmith_add_i32(1i, 33035i)), ~vec2<i32>(u_input.a.x & arg_1, _wgslsmith_div_i32(21610i, u_input.a.x)), true));
    let var_1 = -1924f;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.x, var_1, -637f), _wgslsmith_div_vec3_f32(vec3<f32>(var_1, var_1, arg_0.x), vec3<f32>(var_1, -1000f, -199f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, 292f, -1474f), vec3<f32>(-214f, 1344f, 858f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-978f, -365f, var_1) - vec3<f32>(arg_0.x, -418f, arg_0.x)))))));
    return vec2<i32>(reverseBits(((-2147483647i | arg_1) | var_0.b.x) << ((firstLeadingBit(1u) >> ((arg_3 | 0u) % 32u)) % 32u)), ~27955i);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: f32) -> vec4<bool> {
    global1 = array<Struct_2, 31>();
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(u_input.b, 30u)], ~func_3(vec2<f32>(arg_2, 2037f), u_input.a.x, Struct_1(1u), u_input.b));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a.a, 1u, u_input.b), u_input.c | vec3<u32>(4294967295u, 48350u, u_input.c.x)), reverseBits(4294967295u >> (1u % 32u))), 30u)], max(firstLeadingBit(~vec2<i32>(u_input.a.x, -36994i)), abs(vec2<i32>(u_input.a.x, 0i)) << ((countOneBits(vec2<u32>(var_0.a.a, 7734u)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.a, 37308u), vec2<u32>(46732u, var_0.a.a)) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var_1 = Struct_2(global0[_wgslsmith_index_u32(var_0.a.a, 30u)], _wgslsmith_mod_vec2_i32(u_input.a.wy, var_0.b));
    var var_2 = select(((vec2<u32>(var_1.a.a, 74811u) >> (reverseBits(u_input.c.xz) % vec2<u32>(32u))) << (abs(~vec2<u32>(var_0.a.a, 0u)) % vec2<u32>(32u))) >> (vec2<u32>((var_1.a.a << (5997u % 32u)) << (~var_1.a.a % 32u), ~var_0.a.a) % vec2<u32>(32u)), vec2<u32>(u_input.c.x & _wgslsmith_sub_u32(var_0.a.a, ~var_1.a.a), 0u), select(!select(!vec2<bool>(arg_1, arg_1), select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1), false), false), !(!select(vec2<bool>(true, arg_1), vec2<bool>(true, true), arg_1)), all(select(!vec4<bool>(arg_1, false, arg_1, false), select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(true, arg_1, true, arg_1), false), all(vec2<bool>(arg_1, true))))));
    return select(vec4<bool>(arg_1, 20947i < abs(u_input.a.x), true, arg_1), select(vec4<bool>(all(!vec2<bool>(true, arg_1)), arg_1, arg_1, true), select(!(!vec4<bool>(arg_1, true, true, false)), !vec4<bool>(arg_1, arg_1, arg_1, arg_1), !(!vec4<bool>(arg_1, true, arg_1, arg_1))), select(vec4<bool>(false == arg_1, true, true, true), vec4<bool>(arg_1, true, true, arg_1 | false), select(vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(true, arg_1, true, false), select(vec4<bool>(false, arg_1, false, false), vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(arg_1, true, arg_1, arg_1))))), !arg_1);
}

fn func_1() -> u32 {
    let var_0 = func_2(_wgslsmith_f_op_f32(abs(2426f)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1042f - -469f) + -732f)));
    global0 = array<Struct_1, 30>();
    let var_1 = Struct_1(4294967295u);
    global0 = array<Struct_1, 30>();
    let var_2 = 1u;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 31>();
    global1 = array<Struct_2, 31>();
    global1 = array<Struct_2, 31>();
    let var_0 = _wgslsmith_clamp_u32(u_input.c.x, countOneBits(16258u) & ~(~select(u_input.c.x, u_input.c.x, true)), min(select(~u_input.b, 7481u, any(vec4<bool>(false, false, true, true))) & u_input.c.x, _wgslsmith_add_u32(1u, func_1())));
    global1 = array<Struct_2, 31>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-213f, -961f, 315f, -1012f), vec4<f32>(676f, 880f, -722f, -640f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-262f, 187f, 162f, -1232f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(734f, _wgslsmith_f_op_f32(f32(-1f) * -639f), _wgslsmith_f_op_f32(1290f - -1286f), _wgslsmith_f_op_f32(min(807f, 690f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(193f, 873f, 457f, -1009f))))));
    var var_2 = Struct_1(var_0);
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-(~u_input.a.x), ~countOneBits(-1i) ^ var_3.x, i32(-1i) * -func_3(var_1.yx, u_input.a.x, Struct_1(u_input.b), var_2.a).x, ~var_3.x), _wgslsmith_f_op_vec2_f32(var_1.yy + vec2<f32>(539f, var_1.x)), u_input.b ^ abs(firstTrailingBit(var_0 | var_0)));
}

