struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: i32) -> u32 {
    global1 = _wgslsmith_mod_i32(14179i, _wgslsmith_clamp_i32(reverseBits(firstTrailingBit(arg_0)), _wgslsmith_clamp_i32(2520i, ~(arg_0 << (8228u % 32u)), 0i), 51303i));
    var var_0 = 16527u;
    global1 = min(select(_wgslsmith_add_i32(firstLeadingBit(-2147483647i), _wgslsmith_sub_i32(-13035i, -36188i)), min(48287i >> (u_input.a % 32u), i32(-1i) * -9702i), global0.x), u_input.c.x) & arg_0;
    var_0 = 0u << (u_input.a % 32u);
    var_0 = countOneBits(1u);
    return ~60007u;
}

fn func_2() -> i32 {
    var var_0 = Struct_1(_wgslsmith_clamp_u32(u_input.e.x, u_input.e.x << (u_input.e.x % 32u), func_3(~(-u_input.c.x))));
    var var_1 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.d, u_input.b.x), _wgslsmith_dot_vec3_i32(u_input.b.xww, vec3<i32>(~u_input.d, u_input.b.x, u_input.c.x))), u_input.c.x);
    var_0 = Struct_1(firstTrailingBit(~_wgslsmith_mod_u32(u_input.e.x, 14899u)) >> (~(var_0.a & _wgslsmith_clamp_u32(1u, 4294967295u, 24367u)) % 32u));
    var var_2 = Struct_1(min(0u, var_0.a));
    var var_3 = all(select(vec4<bool>(global0.x, all(vec4<bool>(global0.x, false, global0.x, false)), true, !global0.x), vec4<bool>(global0.x, false, all(global0.yz), global0.x), global0.x)) & global0.x;
    return var_1.x << (59333u % 32u);
}

fn func_1() -> f32 {
    global1 = func_2();
    global0 = select(vec3<bool>(!(global0.x || all(global0.zx)), global0.x == false, all(select(select(vec2<bool>(false, false), vec2<bool>(false, global0.x), global0.x), !vec2<bool>(global0.x, true), vec2<bool>(false, global0.x)))), vec3<bool>(global0.x, all(select(select(vec2<bool>(true, global0.x), global0.xx, vec2<bool>(global0.x, true)), !global0.xx, select(vec2<bool>(false, true), global0.yz, global0.xx))), !(!any(vec4<bool>(true, false, global0.x, false)))), !any(vec4<bool>(true, true, true, true)));
    var var_0 = !select(vec4<bool>(true, global0.x, true, u_input.b.x >= func_2()), vec4<bool>(!global0.x, true, any(global0.xx) | true, any(select(vec2<bool>(true, global0.x), global0.xx, true))), global0.x);
    let var_1 = Struct_1(~1u);
    var var_2 = var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(482f, 229f)), _wgslsmith_div_f32(2074f, 1053f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(558f))), _wgslsmith_f_op_f32(-2074f + _wgslsmith_f_op_f32(sign(1103f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-828f, 858f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1214f), -988f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    let var_1 = _wgslsmith_dot_vec2_i32(u_input.c.yz, firstLeadingBit(reverseBits(_wgslsmith_mult_vec2_i32(u_input.c.xx, u_input.b.wz) >> (~vec2<u32>(u_input.e.x, 42457u) % vec2<u32>(32u)))));
    var var_2 = ~_wgslsmith_mod_u32(u_input.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, 111107u), u_input.e), u_input.e.x, 16142u | u_input.e.x, 8439u), min(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, 63432u, u_input.e.x), vec4<u32>(4294967295u, 43536u, u_input.e.x, 30581u)), vec4<u32>(u_input.e.x, u_input.a, 1u, 32999u) << (vec4<u32>(u_input.e.x, 0u, u_input.e.x, 1u) % vec4<u32>(32u)))));
    let var_3 = select(~u_input.c.x, var_1, true);
    global1 = -2147483647i;
    var var_4 = Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u << (u_input.a % 32u), u_input.a << (32358u % 32u)), vec2<u32>(select(u_input.e.x, 35506u, true), u_input.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(-_wgslsmith_mult_i32(-17215i, -14027i), _wgslsmith_sub_i32(var_1 | -22865i, ~u_input.c.x)), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(27838i << (var_4.a % 32u), 39051i, var_3), ~(~vec3<i32>(-2147483647i, var_1, u_input.d))), u_input.c), vec4<u32>(34957u, ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(40862u, u_input.a), u_input.e.zx, global0.zz), countOneBits(vec2<u32>(var_4.a, 0u))), reverseBits(626u), countOneBits(u_input.a << (firstLeadingBit(var_4.a) % 32u))), u_input.a);
}

