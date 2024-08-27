struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: vec4<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: u32) -> u32 {
    global1 = ~max(-vec4<i32>(global1.x, -global1.x, select(0i, -2147483647i, false), _wgslsmith_mult_i32(1i, u_input.e.x)), u_input.e);
    return ~arg_0.d.x | (~(~29220u | ~arg_0.d.x) << (~_wgslsmith_mod_u32(77860u, ~u_input.c) % 32u));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = !all(vec3<bool>(true, true, true)) & false;
    var var_1 = vec3<u32>(_wgslsmith_mod_u32(~u_input.c, _wgslsmith_add_u32(u_input.a.x, 83026u)), u_input.c, firstTrailingBit(reverseBits(~0u) << (u_input.c % 32u)));
    global0 = array<Struct_1, 24>();
    let var_2 = firstLeadingBit(vec4<i32>(-_wgslsmith_dot_vec3_i32(global1.wyx, vec3<i32>(-2147483647i, 1i, 0i)), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 0i), global1.yw), u_input.d.x | global1.x, -max(u_input.d.x, 15068i)));
    let var_3 = ((any(vec3<bool>(true, true, true)) && true) || (var_1.x > _wgslsmith_mod_u32(u_input.c, 42496u))) && (_wgslsmith_f_op_f32(1100f - 1f) >= _wgslsmith_f_op_f32(sign(378f)));
    return false;
}

fn func_2() -> u32 {
    global1 = -vec4<i32>(u_input.d.x, global1.x >> (u_input.c % 32u), global1.x, 3946i);
    global1 = u_input.e;
    var var_0 = _wgslsmith_f_op_f32(max(1f, 1399f));
    global0 = array<Struct_1, 24>();
    let var_1 = select(!(!vec4<bool>(all(vec4<bool>(true, true, false, false)), true, true, true)), vec4<bool>(!func_3(~0u), false, 0u == _wgslsmith_add_u32(1u, countOneBits(u_input.c)), !all(vec4<bool>(true, true, false, false))), !select(false, all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true))), all(vec2<bool>(false, false))));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(u_input.b.x, 1u, ~u_input.c, ~12648u) >> (vec4<u32>(_wgslsmith_add_u32(func_1(Struct_4(Struct_3(604f, -1033f, Struct_2(false, 2147483647i, vec2<i32>(-2147483647i, 1i)), vec4<bool>(true, true, true, false)), 446f, vec4<f32>(-555f, -365f, -614f, -576f), vec2<u32>(u_input.c, u_input.a.x), global1.x), vec4<bool>(false, true, false, true), vec4<u32>(u_input.a.x, 16745u, u_input.b.x, u_input.b.x), 24763u) ^ ~u_input.b.x, 4294967295u), _wgslsmith_div_u32(16689u, _wgslsmith_dot_vec2_u32(u_input.b, ~vec2<u32>(1u, u_input.b.x))), func_2() << (_wgslsmith_dot_vec2_u32(u_input.a >> (u_input.a % vec2<u32>(32u)), u_input.b) % 32u), u_input.c) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-468f)), _wgslsmith_f_op_f32(floor(377f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(801f + -305f), -702f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(395f, _wgslsmith_f_op_f32(abs(-262f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -596f))) - _wgslsmith_f_op_f32(f32(-1f) * -255f)));
    let var_2 = u_input.a.x;
    var_0 = vec4<u32>(abs(~(~var_2)), _wgslsmith_mult_u32(~((var_2 & var_0.x) & _wgslsmith_dot_vec3_u32(var_0.xzw, vec3<u32>(105473u, 0u, 69996u))), ~26571u), var_2, 1u);
    global0 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, var_0.zzz, var_2 | min(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, var_2, 24095u, var_0.x), ~vec4<u32>(u_input.a.x, 0u, u_input.c, 8564u)), ~var_2), vec2<i32>(u_input.e.x, select(u_input.e.x, abs(170i), true)), vec4<f32>(-902f, _wgslsmith_f_op_f32(round(868f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(var_1 * var_1)), -102f), _wgslsmith_f_op_f32(-var_1)));
}

