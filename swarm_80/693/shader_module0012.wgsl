struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(reverseBits(abs(vec4<i32>(4384i, -27173i, -2147483647i, u_input.b))), select(vec4<i32>(_wgslsmith_mod_i32(u_input.e, -2217i), u_input.e, _wgslsmith_add_i32(u_input.e, arg_0.b), arg_0.b), ~(-vec4<i32>(15584i, u_input.b, 0i, arg_0.b)), (u_input.d.x & arg_0.a.x) > 1u)), _wgslsmith_mod_i32(u_input.e, -(-1i << (0u % 32u))), _wgslsmith_sub_i32(~abs(u_input.b), u_input.e));
    var var_1 = u_input.b;
    var_1 = arg_0.b;
    var_1 = -4255i;
    var_1 = arg_0.b;
    return Struct_1(vec2<u32>(u_input.c.x, firstTrailingBit(1u) >> (max(1u, arg_0.a.x) % 32u)), firstTrailingBit(reverseBits(arg_0.b)), !vec3<bool>(false, true, arg_0.c.x));
}

fn func_3() -> vec3<bool> {
    let var_0 = -u_input.b;
    var var_1 = Struct_1(u_input.a.xz, 65797i, vec3<bool>(true, true, false));
    var_1 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a.x | u_input.c.x, u_input.a.x) << (min(~vec2<u32>(45688u, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 41443u), u_input.a.xx)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(func_1(Struct_1(var_1.a, u_input.b, vec3<bool>(false, true, var_1.c.x)), -387f).a, vec2<u32>(var_1.a.x, _wgslsmith_sub_u32(4294967295u, var_1.a.x))), ~var_1.a), ~(-11933i), var_1.c);
    var_1 = func_1(func_1(Struct_1(countOneBits(var_1.a) & vec2<u32>(u_input.d.x, u_input.c.x), select(var_0, ~u_input.b, all(vec4<bool>(false, false, var_1.c.x, false))), vec3<bool>(var_1.c.x, var_1.c.x && var_1.c.x, !var_1.c.x)), _wgslsmith_f_op_f32(trunc(-1099f))), -134f);
    var_1 = func_1(func_1(func_1(Struct_1(var_1.a, ~var_0, vec3<bool>(false, var_1.c.x, var_1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1255f) - -215f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1588f * 1203f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(152f)) * 1168f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-559f, -1068f)), -1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(815f - -500f), -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1087f * _wgslsmith_f_op_f32(round(-760f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1540f), _wgslsmith_f_op_f32(step(-1111f, -447f)), any(vec3<bool>(true, var_1.c.x, var_1.c.x)))))));
    return var_1.c;
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(74828u, u_input.d.x), ~(vec2<u32>(u_input.a.x, 42124u) << (u_input.d.ww % vec2<u32>(32u)))) >> (~func_1(Struct_1(u_input.c, -5002i, vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(floor(-623f))).a % vec2<u32>(32u)), u_input.e, !(!(!func_3())));
    var var_1 = _wgslsmith_f_op_f32(floor(-2289f));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1614f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(990f - 1307f)))));
    let var_2 = func_1(var_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(266f, -603f)) + -2049f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - _wgslsmith_f_op_f32(888f - -874f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -304f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(u_input.c, 9468i, !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1010f) + _wgslsmith_f_op_f32(528f - -114f)))) + _wgslsmith_f_op_f32(1530f - _wgslsmith_f_op_f32(-446f * -710f))));
    let var_1 = 55330u;
    var_0 = func_1(func_1(Struct_1(~min(var_0.a, u_input.a.xx), var_0.b, !var_0.c), _wgslsmith_f_op_f32(func_2(u_input.e))), 534f);
    let var_2 = -2147483647i;
    var var_3 = _wgslsmith_mult_i32(var_2, var_0.b) > ~((var_2 << (var_0.a.x % 32u)) << (max(~var_1, 27259u) % 32u));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-489f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1489f * 1330f) + _wgslsmith_f_op_f32(-2722f * -955f)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-743f, _wgslsmith_f_op_f32(1134f * _wgslsmith_f_op_f32(step(1614f, -251f)))), -2337f)));
    var var_5 = Struct_1(~(~vec2<u32>(_wgslsmith_add_u32(7747u, var_1), 4294967295u << (0u % 32u))), var_0.b, !(!vec3<bool>(true, !var_0.c.x, true)));
    let var_6 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~2147483647i, -1i, -21228i, _wgslsmith_add_i32(u_input.e, var_0.b)), vec4<i32>(var_5.b << (32963u % 32u), var_2, var_0.b, reverseBits(u_input.b))) << (_wgslsmith_add_u32(_wgslsmith_add_u32(~var_0.a.x, 46082u), var_0.a.x) % 32u), _wgslsmith_mult_i32(11990i, 2440i), _wgslsmith_mod_i32(var_2, 46265i));
    var var_7 = func_1(func_1(func_1(Struct_1(vec2<u32>(u_input.a.x, var_0.a.x), -21061i, var_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-179f)) - _wgslsmith_f_op_f32(max(-1000f, -790f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f), 1308f)), 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(337f, 34539i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1723f - 527f), -239f, _wgslsmith_f_op_f32(abs(588f))))));
}

