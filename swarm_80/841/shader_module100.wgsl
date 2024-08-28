struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    return arg_0.d;
}

fn func_2() -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.b.x, true, global0.x, -339f))), 1193f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global0 = ~vec3<u32>(~countOneBits(_wgslsmith_div_u32(global0.x, 54523u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(11982u, 36719u, global0.x, global0.x) << (vec4<u32>(40698u, u_input.a.x, u_input.a.x, global0.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(29977u, 55569u, u_input.a.x, 116903u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, global0.x))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(27464u, 524u, global0.x), vec3<u32>(global0.x, 0u, 75738u))));
    return ~_wgslsmith_mod_u32(~abs(4294967295u), _wgslsmith_sub_u32(~55513u, max(1u, global0.x))) >> (1u % 32u);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: vec4<i32>) -> vec2<bool> {
    global0 = ~vec3<u32>(~firstTrailingBit(func_2()), ~(arg_1 ^ ~21540u), global0.x);
    global0 = _wgslsmith_clamp_vec3_u32(~(~(~vec3<u32>(49045u, 26145u, 36680u) & _wgslsmith_add_vec3_u32(vec3<u32>(54718u, 0u, 1u), vec3<u32>(arg_1, arg_1, u_input.a.x)))), max(~(firstLeadingBit(vec3<u32>(4294967295u, 60540u, 78306u)) >> ((vec3<u32>(arg_1, 107958u, arg_1) & vec3<u32>(51135u, u_input.a.x, arg_1)) % vec3<u32>(32u))), firstTrailingBit(vec3<u32>(global0.x << (4294967295u % 32u), 10370u, 4294967295u))), ~(vec3<u32>(~1u, 4294967295u, global0.x) << (vec3<u32>(global0.x >> (global0.x % 32u), ~4294967295u, arg_1) % vec3<u32>(32u))));
    let var_0 = Struct_1(arg_3.x, _wgslsmith_dot_vec2_i32(~(u_input.c.yw | vec2<i32>(-1i, -28904i)), u_input.b) == arg_3.x, 91969u ^ ~_wgslsmith_mod_u32(4294967295u, abs(u_input.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2))));
    var var_1 = var_0;
    var var_2 = Struct_2(Struct_1(firstTrailingBit(max(0i, u_input.d)), all(vec4<bool>(true, true, true, true)) && true, min(_wgslsmith_mod_u32(global0.x, 4294967295u) >> (~0u % 32u), abs(~4294967295u)), var_1.d), var_0, true | !var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-610f * _wgslsmith_div_f32(arg_2, -929f))));
    return select(vec2<bool>(true, var_2.c), !(!vec2<bool>(all(vec3<bool>(var_0.b, false, var_0.b)), true)), any(!select(select(vec2<bool>(false, arg_0), vec2<bool>(var_1.b, false), false), vec2<bool>(var_2.c, var_2.a.b), true)));
}

fn func_4(arg_0: vec3<bool>) -> Struct_2 {
    global0 = select(abs(max(vec3<u32>(global0.x, 41899u, u_input.a.x) >> (vec3<u32>(0u, 1u, 48293u) % vec3<u32>(32u)), vec3<u32>(u_input.a.x, u_input.a.x, global0.x))), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 51475u), vec3<u32>(64175u, global0.x, global0.x))) | ~vec3<u32>(u_input.a.x, global0.x, 0u), arg_0.x) | ~vec3<u32>(global0.x, ~(u_input.a.x ^ 59879u), _wgslsmith_mod_u32(~global0.x, 4294967295u));
    global0 = vec3<u32>(46078u, 1u, global0.x & 0u) & abs(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global0.x, global0.x), vec3<u32>(global0.x, global0.x, 1u) ^ vec3<u32>(1u, u_input.a.x, u_input.a.x)), select(reverseBits(vec3<u32>(14939u, u_input.a.x, 4294967295u)), firstLeadingBit(vec3<u32>(u_input.a.x, 4294967295u, 1u)), vec3<bool>(arg_0.x, false, false))));
    return Struct_2(Struct_1(-2147483647i, true, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1094f, 1893f, arg_0.x))) + 374f)), Struct_1(u_input.d & -select(2147483647i, u_input.b.x, true), true, _wgslsmith_dot_vec2_u32(abs(global0.xx) & global0.zy, ~countOneBits(vec2<u32>(1u, 1381u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -1523f) - -1730f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-299f)), 1f, false)))), !(!(true | any(arg_0))), -1180f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(577f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-676f, _wgslsmith_f_op_f32(f32(-1f) * -439f))))) - _wgslsmith_f_op_f32(max(1188f, _wgslsmith_f_op_f32(max(-1218f, _wgslsmith_f_op_f32(ceil(-1551f)))))));
    global0 = firstLeadingBit(vec3<u32>(~4294967295u, 1u, 65858u) << (vec3<u32>(13555u, u_input.a.x, 37492u) % vec3<u32>(32u)));
    var var_1 = func_4(vec3<bool>(all(func_1(false, u_input.a.x, _wgslsmith_f_op_f32(-var_0), ~u_input.c)), false, true));
    var var_2 = !(!select(select(vec2<bool>(var_1.a.b, var_1.b.b), select(vec2<bool>(true, var_1.b.b), vec2<bool>(false, var_1.a.b), var_1.a.b), func_1(true, 43702u, var_0, u_input.c)), vec2<bool>(true, true), select(select(vec2<bool>(var_1.b.b, var_1.a.b), vec2<bool>(false, var_1.c), true), !vec2<bool>(var_1.a.b, var_1.c), !vec2<bool>(var_1.a.b, false))));
    var var_3 = _wgslsmith_f_op_f32(-199f - var_1.b.d);
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1642f) + _wgslsmith_f_op_f32(1928f - _wgslsmith_f_op_f32(-var_1.a.d)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-125f, -451f) + -785f));
    let var_4 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(firstTrailingBit(firstLeadingBit(-7190i)), var_1.a.a, _wgslsmith_div_i32(_wgslsmith_div_i32(var_4.a, u_input.d), var_4.a)), -334f, firstLeadingBit(~vec3<u32>(_wgslsmith_div_u32(var_4.c, 28384u), 45419u, ~1u)), select(func_4(select(!vec3<bool>(var_1.c, var_2.x, true), !vec3<bool>(var_2.x, var_2.x, true), select(vec3<bool>(var_4.b, false, var_2.x), vec3<bool>(false, true, var_1.b.b), vec3<bool>(var_2.x, true, var_2.x)))).a.a, u_input.c.x, !(!any(vec4<bool>(false, var_2.x, var_1.a.b, var_2.x)))));
}

