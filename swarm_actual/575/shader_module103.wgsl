struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<f32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32) -> i32 {
    return arg_1.x;
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_u32(abs(_wgslsmith_div_u32(18197u, 4294967295u)), ~(~1u));
    var var_1 = u_input.a >> (firstTrailingBit(~firstTrailingBit(vec4<u32>(var_0, u_input.c.x, arg_0.d.x, arg_0.d.x) >> (vec4<u32>(4294967295u, u_input.c.x, var_0, var_0) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var_1 = ~vec4<i32>(-27995i, ~u_input.b.x >> (var_0 % 32u), 13402i, reverseBits(-1i));
    var var_2 = -343f;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -596f);
    return arg_0.c.x;
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = vec3<u32>(~(arg_0 | 0u), arg_0, u_input.c.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-1024f, -1000f, true)), _wgslsmith_f_op_f32(trunc(554f)), _wgslsmith_f_op_f32(max(233f, 161f)), _wgslsmith_f_op_f32(round(753f))))) + vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), all(vec3<bool>(false, true, true)), vec3<f32>(1165f, -1449f, -670f), vec3<u32>(var_0.x, arg_0, 4294967295u), true))), -1664f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(175f * 1561f), _wgslsmith_f_op_f32(-1000f + 1660f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(673f, 780f))))), _wgslsmith_f_op_f32(f32(-1f) * -2002f)));
    var var_2 = vec2<bool>(!(!all(vec3<bool>(true, true, true))), any(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false))));
    var_2 = vec2<bool>(all(select(select(select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(false, var_2.x, true), var_2.x), !vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(true, var_2.x, var_2.x)), vec3<bool>(true, false, var_2.x), var_2.x)), !(!(!(u_input.c.x < arg_0))));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.ww), var_1.xz, vec2<bool>(all(vec2<bool>(true, false)), false)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    var var_1 = !select(_wgslsmith_div_i32(countOneBits(-37128i), func_1(Struct_1(vec3<bool>(false, true, true), false, vec3<f32>(519f, -1021f, 462f), vec3<u32>(u_input.c.x, 11209u, 27016u), true), vec2<i32>(21521i, u_input.a.x), 463f)) > (i32(-1i) * -23777i), true, all(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), true)));
    var_1 = select(true, false, true);
    var_1 = true;
    var_0 = ~(~(~u_input.c.x | u_input.c.x));
    let var_2 = Struct_1(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(!any(vec2<bool>(true, true)), true, true), any(vec2<bool>(false, true)) && !all(vec4<bool>(false, true, false, false))), func_2(u_input.c.x ^ _wgslsmith_mod_u32(42131u << (1u % 32u), u_input.c.x)), vec3<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(924f, -714f, false)) * -1575f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-852f + _wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(false, true, true), true, vec3<f32>(-1343f, -274f, -1000f), vec3<u32>(31776u, u_input.c.x, 13686u), false)))))), _wgslsmith_f_op_f32(809f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-212f - -1140f))))), ~vec3<u32>((0u << (u_input.c.x % 32u)) & max(u_input.c.x, 16981u), u_input.c.x, u_input.c.x), !all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(true, true, true))));
    var_1 = any(vec2<bool>(countOneBits(u_input.c.x) >= ~(u_input.c.x ^ var_2.d.x), var_2.b));
    var var_3 = !(!select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, var_2.e), vec3<bool>(true, var_2.b, var_2.e), var_2.b), var_2.e));
    let var_4 = select(vec4<u32>(~62732u, firstLeadingBit(1u) >> (reverseBits(_wgslsmith_add_u32(4294967295u, var_2.d.x)) % 32u), ~(~(~u_input.c.x)), var_2.d.x), vec4<u32>(~select(firstLeadingBit(var_2.d.x), ~u_input.c.x, 10171i < u_input.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_2.d, vec3<u32>(4294967295u, 1u, 1u)), _wgslsmith_sub_vec3_u32(var_2.d, vec3<u32>(u_input.c.x, 4294967295u, 1u))) >> (_wgslsmith_clamp_u32(1u, 4294967295u, firstTrailingBit(0u)) % 32u), 26630u, var_2.d.x), vec4<bool>(var_3.x, any(vec2<bool>(true, !var_2.a.x)), !(!(u_input.a.x != u_input.b.x)), var_2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.x * var_2.c.x) + _wgslsmith_div_f32(var_2.c.x, var_2.c.x)), _wgslsmith_f_op_f32(var_2.c.x * _wgslsmith_f_op_f32(trunc(var_2.c.x)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_2.c.xx), _wgslsmith_f_op_vec2_f32(sign(var_2.c.xy)))), vec2<bool>(true, true))), ~abs(1i), select(reverseBits(vec2<u32>(20304u, var_4.x)), vec2<u32>(reverseBits(var_4.x), u_input.c.x), (var_2.c.x >= -1049f) && true) >> ((vec2<u32>(~0u, var_2.d.x) & ~max(u_input.c, u_input.c)) % vec2<u32>(32u)), firstTrailingBit(4294967295u));
}

