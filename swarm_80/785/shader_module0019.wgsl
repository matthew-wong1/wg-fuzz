struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(43930u), -1292f, vec4<u32>(30101u, 1u, 1u, 21728u), vec4<bool>(true, true, false, true), Struct_1(4571u));

var<private> global1: bool;

var<private> global2: array<vec4<i32>, 31>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = _wgslsmith_mult_u32(max(global0.e.a, arg_0), 59914u) == (countOneBits(~arg_0 >> (_wgslsmith_mod_u32(arg_0, 18430u) % 32u)) & _wgslsmith_sub_u32(arg_0, reverseBits(~arg_0)));
    global1 = true;
    let var_1 = -countOneBits(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(u_input.b, -5734i, -1i)) >> (vec3<u32>(1u, 4294967295u, 35873u) % vec3<u32>(32u)), -(~vec3<i32>(u_input.b, u_input.a, -52186i))));
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-111f * global0.b) - _wgslsmith_f_op_f32(f32(-1f) * -563f)))), select(vec4<u32>(1u, arg_0 & _wgslsmith_mult_u32(0u, global0.c.x), ~0u, firstTrailingBit(92585u)), vec4<u32>(firstTrailingBit(reverseBits(0u)), ~reverseBits(global0.c.x), arg_0, 0u), vec4<bool>(false, 1i > firstTrailingBit(var_1.x), var_0 == true, select(0u <= global0.a.a, global0.d.x, !var_0))), global0.d, global0.e);
    var var_2 = u_input.b;
    return _wgslsmith_clamp_u32(_wgslsmith_add_u32(abs(arg_0), abs(4294967295u)) ^ ~abs(~4294967295u), ~(~_wgslsmith_dot_vec2_u32(firstTrailingBit(global0.c.yz), vec2<u32>(arg_0, arg_0) ^ vec2<u32>(global0.c.x, 0u))), 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_4) -> bool {
    var var_0 = Struct_2(arg_0, global0.b, firstLeadingBit(arg_2.a), !arg_1, arg_0);
    global0 = Struct_2(Struct_1(global0.e.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + -723f)))), _wgslsmith_mult_vec4_u32(vec4<u32>(min(56920u, 4294967295u), arg_0.a, max(global0.a.a, global0.a.a), ~56633u) | ~(~vec4<u32>(var_0.a.a, var_0.e.a, 76622u, arg_0.a)), select(global0.c, _wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.a.a, arg_2.a.x, global0.a.a, 20014u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_0.a, arg_2.a.x, arg_0.a), arg_2.a)), !select(vec4<bool>(arg_1.x, var_0.d.x, arg_1.x, false), vec4<bool>(false, var_0.d.x, true, arg_1.x), false))), !vec4<bool>(!any(vec3<bool>(false, arg_1.x, global0.d.x)), global0.d.x, !any(arg_1), arg_1.x), global0.a);
    global1 = arg_1.x;
    let var_1 = vec2<i32>(68264i, -1i);
    var var_2 = vec3<i32>(~(-59048i), max(_wgslsmith_dot_vec2_i32(vec2<i32>(80911i, 2147483647i), max(var_1, vec2<i32>(var_1.x, u_input.b))), -select(-91635i, 2147483647i, var_0.d.x)) >> (global0.a.a % 32u), 7251i);
    return true;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4) -> Struct_3 {
    var var_0 = vec3<bool>(true, true, arg_0.x);
    let var_1 = Struct_2(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.c, global0.d, global0.a);
    var_0 = vec3<bool>(-(2147483647i >> (abs(arg_1.a.x) % 32u)) == -1i, true, global0.d.x);
    var var_2 = var_1;
    var_0 = vec3<bool>(select(true, var_1.d.x | (func_2(1081u) != 74959u), var_0.x), false, !func_3(var_2.a, select(var_1.d, vec4<bool>(global0.d.x, true, var_2.d.x, var_2.d.x), var_2.d), Struct_4(arg_1.a)) & (false == var_0.x));
    return Struct_3(var_0.x, false, var_1, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    let var_0 = func_1(global0.d.zy, Struct_4(vec4<u32>(~76942u, ~global0.c.x, max(global0.a.a, 0u), ~_wgslsmith_mod_u32(global0.a.a, 74117u))));
    var var_1 = _wgslsmith_clamp_vec2_u32(global0.c.yz, var_0.c.c.xx | global0.c.yx, countOneBits(global0.c.zz));
    var var_2 = Struct_4(firstTrailingBit(firstLeadingBit(vec4<u32>(7991u, func_1(vec2<bool>(global0.d.x, global0.d.x), Struct_4(global0.c)).d.c.x, ~var_0.c.c.x, var_1.x))));
    let var_3 = Struct_4(countOneBits(min(var_0.d.c, vec4<u32>(_wgslsmith_dot_vec3_u32(global0.c.zzy, global0.c.zxw), 231u, ~var_0.c.c.x, ~0u))));
    var var_4 = _wgslsmith_mod_u32(firstTrailingBit(var_0.d.a.a), _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(26578u, _wgslsmith_mod_u32(var_1.x, global0.c.x)), global0.e.a, var_2.a.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_2.a.xxy, var_3.a.wzy), _wgslsmith_div_u32(var_2.a.x, max(global0.e.a, 1u)))));
    global2 = array<vec4<i32>, 31>();
    var var_5 = Struct_1(~((_wgslsmith_div_u32(4294967295u, var_3.a.x) >> (_wgslsmith_clamp_u32(1u, var_1.x, var_2.a.x) % 32u)) << (~(~23894u) % 32u)));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.b) * 481f) < global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(~1i, -33214i, ~u_input.a), vec3<i32>(reverseBits(u_input.a), u_input.b, 36937i)), vec3<i32>((i32(-1i) * -1i) << (~4294967295u % 32u), -1i, 1i)));
}

