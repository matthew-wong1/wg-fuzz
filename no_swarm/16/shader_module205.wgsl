struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = vec4<u32>(arg_2.a, _wgslsmith_dot_vec2_u32(u_input.a, ~countOneBits(vec2<u32>(u_input.a.x, 4294967295u))), reverseBits(abs(u_input.a.x)), 69208u);
    var var_1 = abs(arg_1.yy);
    let var_2 = select(vec4<u32>(arg_2.a, _wgslsmith_add_u32(arg_2.a, max(var_0.x, 4294967295u)), ~_wgslsmith_div_u32(4294967295u, 1u), 1u), reverseBits(vec4<u32>(~(0u << (0u % 32u)), 0u, ~min(arg_2.a, u_input.a.x), ~u_input.a.x)), arg_3);
    var var_3 = vec4<bool>(true, arg_0, false, arg_0);
    let var_4 = vec2<i32>(var_1.x, -29676i);
    return 0u;
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: u32) -> f32 {
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-562f * _wgslsmith_f_op_f32(f32(-1f) * -101f)), true), Struct_3(_wgslsmith_add_vec3_u32(min(~vec3<u32>(4294967295u, arg_2, arg_2), vec3<u32>(u_input.a.x, 20185u, u_input.a.x)), ~firstLeadingBit(vec3<u32>(arg_2, 4134u, u_input.a.x))), 1f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1945f, -1000f, arg_1, 480f), vec4<f32>(arg_1, arg_1, arg_1, arg_1))) * vec4<f32>(-808f, -810f, arg_1, -1213f))), _wgslsmith_f_op_f32(-529f + arg_1), firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(61982u, arg_2, 1u), func_3(false, vec3<i32>(2147483647i, -1i, 545i), Struct_1(u_input.a.x), arg_0.x), arg_2 << (4294967295u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(arg_2, 27395u))))));
    let var_1 = _wgslsmith_add_vec4_u32(firstTrailingBit(firstTrailingBit(~vec4<u32>(0u, 0u, 70633u, u_input.a.x))), abs(var_0.b.e));
    var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_1, var_0.b.d)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) + var_0.b.b)), true), var_0.b);
    var_0 = Struct_4(var_0.a, Struct_3(((vec3<u32>(37156u, 65768u, 4857u) >> (vec3<u32>(var_1.x, var_1.x, 77547u) % vec3<u32>(32u))) & abs(vec3<u32>(49256u, var_1.x, u_input.a.x))) >> (~vec3<u32>(var_1.x, 1u, 0u) % vec3<u32>(32u)), -379f, _wgslsmith_f_op_vec4_f32(-var_0.b.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), select(vec4<u32>(arg_2, 42971u << (var_1.x % 32u), 4294967295u, ~u_input.a.x), max(~vec4<u32>(var_0.b.a.x, arg_2, arg_2, 1u), _wgslsmith_add_vec4_u32(var_1, vec4<u32>(1u, 27828u, arg_2, 1u))), false)));
    var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1588f, 546f))), all(select(select(vec4<bool>(var_0.a.b, arg_0.x, true, false), vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(true, var_0.a.b, arg_0.x, var_0.a.b)), select(vec4<bool>(false, var_0.a.b, arg_0.x, true), vec4<bool>(true, arg_0.x, false, false), false), !var_0.a.b))), Struct_3(var_0.b.e.ywy, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_0.b.c, _wgslsmith_f_op_vec4_f32(var_0.b.c + vec4<f32>(var_0.a.a, arg_1, -1412f, var_0.a.a)))) - var_0.b.c), 1838f, var_0.b.e));
    return 1075f;
}

fn func_1() -> f32 {
    let var_0 = Struct_3(vec3<u32>(0u, ~firstTrailingBit(1u) | _wgslsmith_div_u32(firstLeadingBit(u_input.a.x), u_input.a.x), ~u_input.a.x), _wgslsmith_f_op_f32(-538f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1135f * -1162f))), _wgslsmith_div_vec4_f32(vec4<f32>(-274f, _wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true), -2163f, 38930u)), -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1102f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-891f, 649f, 1222f, -306f) * vec4<f32>(106f, 1614f, 1138f, 1402f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-327f, -1000f, -1000f, -536f), vec4<f32>(350f, -1101f, 628f, -431f), vec4<bool>(true, false, false, true)))))))), _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32((vec4<u32>(7984u, u_input.a.x, 86579u, u_input.a.x) ^ vec4<u32>(1u, 2926u, 51627u, u_input.a.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(36876u, 26946u, 4294967295u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 81385u, u_input.a.x)) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 56756u, u_input.a.x, 2233u), vec4<u32>(0u, 23485u, 0u, 0u)), vec4<u32>(u_input.a.x >> (4294967295u % 32u), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), ~u_input.a.x, _wgslsmith_mod_u32(121347u, u_input.a.x))), max(vec4<u32>(13913u, u_input.a.x, 2208u | u_input.a.x, ~u_input.a.x), vec4<u32>(~u_input.a.x, ~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), u_input.a.x))));
    let var_1 = max(~(~(select(vec3<i32>(12776i, -1i, 25632i), vec3<i32>(18208i, 68990i, 794i), vec3<bool>(true, true, false)) | abs(vec3<i32>(1i, 9577i, -26299i)))), abs(vec3<i32>(1i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(991i, -2147483647i, -398i, 3491i), vec4<i32>(0i, -6442i, -14834i, -2147483647i)), 929i >> (u_input.a.x % 32u), _wgslsmith_mult_i32(1i, 2147483647i)), _wgslsmith_mult_i32(_wgslsmith_div_i32(1i, 2147483647i), ~(-2147483647i)))));
    let var_2 = var_0.e.x;
    var var_3 = vec3<u32>(~firstTrailingBit(98716u), var_2, ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), ~vec2<u32>(0u, var_0.e.x))));
    var var_4 = !(!(!vec4<bool>(true, true, any(vec3<bool>(true, true, true)), any(vec4<bool>(false, true, false, true)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -2306f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    let var_1 = _wgslsmith_mod_i32(~max(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-35748i, -41413i, 5795i), vec3<i32>(14242i, 65519i, -2147483647i), vec3<bool>(false, false, false)), vec3<i32>(1i, 1i, 1i)), countOneBits(-229i)), _wgslsmith_sub_i32(-2147483647i, reverseBits(-abs(-52621i))));
    let var_2 = Struct_3(abs(~vec3<u32>(9293u, ~u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_0)))), vec4<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) + _wgslsmith_f_op_f32(f32(-1f) * -881f)), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(abs(-2113f))), _wgslsmith_f_op_f32(-var_0)), var_0, ~firstLeadingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 0u, 5727u, 6481u), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))));
    var var_3 = max(~32369u, var_2.a.x);
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-935f, var_2.d))), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0)))), 794f) * vec4<f32>(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(180f * var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(step(var_0, var_0))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1851f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-681f, var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(var_2.c.yw, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.c.zx + var_2.c.wz)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2078f, 1000f), vec2<f32>(var_2.d, 481f), false)))), vec2<bool>(true, true))))), u_input.a);
}

