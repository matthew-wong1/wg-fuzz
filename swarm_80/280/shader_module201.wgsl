struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(Struct_1(1480f, 31801i, 7501u), vec3<bool>(true, true, true), true), Struct_3(Struct_1(-745f, 0i, 46347u), vec3<bool>(true, false, true), true), Struct_3(Struct_1(403f, -8163i, 4294967295u), vec3<bool>(false, false, false), false), Struct_3(Struct_1(-581f, 2147483647i, 0u), vec3<bool>(false, false, false), false), Struct_3(Struct_1(-724f, i32(-2147483648), 6204u), vec3<bool>(true, false, true), true), Struct_3(Struct_1(1000f, -36860i, 10904u), vec3<bool>(true, true, false), false), Struct_3(Struct_1(1000f, 1i, 35139u), vec3<bool>(false, false, true), true), Struct_3(Struct_1(-215f, i32(-2147483648), 67406u), vec3<bool>(false, false, true), false), Struct_3(Struct_1(689f, 0i, 1u), vec3<bool>(true, false, false), true), Struct_3(Struct_1(-168f, i32(-2147483648), 4294967295u), vec3<bool>(false, false, true), false), Struct_3(Struct_1(-206f, 2147483647i, 16457u), vec3<bool>(false, true, false), true), Struct_3(Struct_1(338f, -58767i, 37861u), vec3<bool>(true, false, false), false));

var<private> global3: bool;

var<private> global4: i32 = 1i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: f32) -> vec4<u32> {
    global0 = vec2<bool>(global0.x, 72636u > (~global1.x | _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 1u, 0u), vec3<u32>(arg_0, arg_0, u_input.a), true), ~vec3<u32>(arg_0, arg_0, arg_0))));
    global2 = array<Struct_3, 12>();
    global3 = all(vec3<bool>(all(vec4<bool>(any(vec2<bool>(false, false)), false, select(global0.x, true, global0.x), !global0.x)), false, global0.x == true));
    var var_0 = ~u_input.b.x;
    let var_1 = global2[_wgslsmith_index_u32(global1.x << (arg_0 % 32u), 12u)];
    return firstLeadingBit(abs(~(vec4<u32>(4294967295u, u_input.a, 0u, 31538u) | vec4<u32>(16510u, arg_0, var_1.a.c, u_input.a))) | ~(~(vec4<u32>(0u, arg_0, arg_0, 6628u) ^ vec4<u32>(u_input.a, var_1.a.c, u_input.a, 4294967295u))));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1302f * arg_1)), _wgslsmith_f_op_f32(-arg_1)))), u_input.b.x, 0u);
    global4 = _wgslsmith_div_i32(u_input.b.x, -var_0.b);
    global2 = array<Struct_3, 12>();
    global4 = 45618i;
    global2 = array<Struct_3, 12>();
    return any(vec3<bool>(global0.x, !((global0.x || global0.x) & all(vec4<bool>(global0.x, global0.x, global0.x, global0.x))), global0.x));
}

fn func_2() -> Struct_4 {
    let var_0 = 1743u;
    let var_1 = Struct_3(Struct_1(-979f, 2147483647i, _wgslsmith_mod_u32(~global1.x, u_input.a)), select(!vec3<bool>(any(vec4<bool>(true, true, global0.x, global0.x)), global1.x < var_0, any(vec2<bool>(false, global0.x))), !vec3<bool>(-1i == u_input.b.x, any(vec3<bool>(false, global0.x, global0.x)), false), !(!(!vec3<bool>(global0.x, true, true)))), func_4(func_3(_wgslsmith_mult_u32(0u, global1.x ^ 22603u), -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-426f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1763f * -1356f)))));
    let var_2 = true;
    var var_3 = vec2<u32>(_wgslsmith_div_u32(61708u, 1u), global1.x);
    global1 = ~(~vec2<u32>(11346u, ~(~1u)));
    return Struct_4(countOneBits(-firstLeadingBit(u_input.b.zz)) << (_wgslsmith_add_vec2_u32(~reverseBits(vec2<u32>(u_input.a, 38283u)), vec2<u32>(global1.x & var_1.a.c, min(var_0, var_3.x))) % vec2<u32>(32u)), ~(~(~vec4<u32>(var_1.a.c, var_1.a.c, 0u, 30826u))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    global3 = false;
    var var_1 = Struct_4(vec2<i32>(9112i, _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_clamp_i32(_wgslsmith_add_i32(var_0.a.x, u_input.b.x), -2147483647i, 0i), _wgslsmith_dot_vec3_i32(~vec3<i32>(23176i, -1i, 1i), vec3<i32>(-17195i, 2147483647i, 31573i)))), var_0.b);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(abs(-1371f)), ((1i >> (var_1.b.x % 32u)) ^ (_wgslsmith_mult_i32(var_0.a.x, 34021i) ^ min(var_1.a.x, var_0.a.x))) >> (1u % 32u), _wgslsmith_add_u32(_wgslsmith_sub_u32(~var_0.b.x, global1.x), var_1.b.x << (var_1.b.x % 32u)));
    global2 = array<Struct_3, 12>();
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global1.x, 0u) ^ ~vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(0u << (global1.x % 32u), ~global1.x, 8816u)), _wgslsmith_clamp_u32(max(u_input.a, u_input.a & global1.x), u_input.a, 16948u) | _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(24228u, 29372u, 1u), max(vec3<u32>(137805u, 42392u, 45635u), vec3<u32>(u_input.a, 1u, 32809u))), u_input.a));
    var var_0 = func_1();
    global0 = vec2<bool>(!select(!global0.x, global0.x, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x) == _wgslsmith_sub_i32(u_input.b.x, -2147483647i)), true);
    global1 = _wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_mult_u32(~44103u, ~u_input.a), u_input.a), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(min(_wgslsmith_sub_vec2_u32(vec2<u32>(17223u, 1u), vec2<u32>(0u, 0u)), vec2<u32>(global1.x, 67832u)), ~vec2<u32>(18080u, 8334u) >> ((vec2<u32>(var_0.c, 33483u) >> (vec2<u32>(58458u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u))), vec2<u32>(~29296u, 47830u), _wgslsmith_mod_vec2_u32(max(~vec2<u32>(90124u, 0u), vec2<u32>(4294967295u, u_input.a)), ~func_3(u_input.a, var_0.b, 330f).zz)));
    var_0 = func_1();
    let var_1 = !select(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, true), select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x))), !vec2<bool>(!global0.x, !global0.x), !select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

