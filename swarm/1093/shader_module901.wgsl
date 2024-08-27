struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_1(1u);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1434f, 1486f, arg_0.b.x, arg_0.b.x)))) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.x, -165f, _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(1000f + arg_0.b.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1765f, arg_0.b.x, -294f, 1140f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, arg_0.b.x, 1000f, arg_0.b.x))))) - vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1025f, 649f, true)), -440f, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 535f)))));
    var var_2 = arg_0;
    var_2 = arg_0;
    var_1 = vec4<f32>(-434f, var_2.b.x, -1413f, _wgslsmith_f_op_f32(-var_2.b.x));
    return ~0u;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(924f + -367f));
    var var_1 = u_input.b.x;
    let var_2 = arg_0;
    var_1 = 0u;
    let var_3 = select(arg_1.x, -1i, select(~(~1i) <= _wgslsmith_mult_i32(arg_1.x >> (u_input.d.x % 32u), -4844i), all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), reverseBits(func_3(Struct_2(-2147483647i, vec3<f32>(var_2.b.x, arg_0.b.x, var_2.b.x)))) >= _wgslsmith_add_u32(4294967295u, u_input.b.x & 4294967295u)));
    return vec2<i32>(max(~_wgslsmith_dot_vec2_i32(arg_1.xz, ~arg_1.zy), arg_1.x), 39267i);
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = u_input.d.x;
    let var_1 = -(~func_2(arg_2, vec3<i32>(~arg_3.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, u_input.e), vec2<i32>(1i, arg_3.x)), -2147483647i >> (var_0 % 32u))));
    let var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(countOneBits(reverseBits(var_1)), var_1), reverseBits(~min(-94870i, arg_3.x)), _wgslsmith_dot_vec2_i32(min(vec2<i32>(-3535i, var_1.x), vec2<i32>(-46000i, 44186i)), firstTrailingBit(~arg_3.zy)), 5820i), ~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 152i), arg_3.yz), i32(-1i) * -1i, -68992i, arg_2.a) >> (~reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 45446u), vec4<u32>(var_0, 4294967295u, 1u, 4294967295u))) % vec4<u32>(32u)));
    var var_3 = vec2<bool>(select(true, arg_1, any(select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, false, arg_1, false), arg_1)) | (any(vec2<bool>(arg_1, true)) == all(vec2<bool>(true, true)))), arg_1);
    let var_4 = select(select(vec2<bool>(true, true & any(vec3<bool>(false, arg_1, var_3.x))), select(vec2<bool>(true, arg_1), vec2<bool>(false, true), !(arg_1 && true)), !select(!vec2<bool>(true, var_3.x), select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, var_3.x), vec2<bool>(false, true)), 3827u <= u_input.b.x)), vec2<bool>(~_wgslsmith_mod_u32(4294967295u, 38563u) < u_input.a.x, func_2(arg_2, select(arg_3, vec3<i32>(-50344i, 62803i, var_2.x), true)).x < ~(976i & u_input.e)), !(!vec2<bool>(arg_1, true)));
    return Struct_2(-26400i, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-933f + 1498f) - arg_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x + -391f) - 787f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2237f, -1803f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~abs(0u));
    var var_1 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(554f + 796f), _wgslsmith_f_op_f32(ceil(2199f)), 1207f, -1000f), _wgslsmith_div_vec4_f32(vec4<f32>(-232f, 330f, -1425f, 347f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(776f, -867f, -332f, -1198f)))))), true, Struct_2(u_input.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-641f, 214f, -828f)))))), select(-vec3<i32>(-3612i, -2147483647i, 2147483647i), -firstLeadingBit(vec3<i32>(u_input.e, -7801i, 2147483647i)), true) << (vec3<u32>(~u_input.d.x | 7703u, _wgslsmith_mult_u32(45673u, firstLeadingBit(u_input.b.x)), var_0.a) % vec3<u32>(32u)));
    var_1 = Struct_2(var_1.a << (_wgslsmith_mod_u32(~92u >> (_wgslsmith_mult_u32(var_0.a, var_0.a) % 32u), ~12420u) % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, 1579f, var_1.b.x))))));
    var_1 = Struct_2(abs(-2147483647i), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-284f * var_1.b.x), 492f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1830f)) + 1000f), var_1.b.x))));
    var var_2 = Struct_3(var_0, Struct_2(_wgslsmith_mod_i32(var_1.a, _wgslsmith_add_i32(u_input.e, -1i)) << (30928u % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1366f, 1000f, 1103f), vec3<f32>(var_1.b.x, var_1.b.x, var_1.b.x), vec3<bool>(true, false, false)))))), _wgslsmith_dot_vec2_u32(vec2<u32>(19889u, ~0u), countOneBits(~(~u_input.b.yx))), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b.x, var_1.b.x, -179f, -1064f))) - vec4<f32>(var_1.b.x, 1038f, var_1.b.x, -296f))), true, Struct_2(-_wgslsmith_dot_vec2_i32(vec2<i32>(-3304i, -4432i), vec2<i32>(u_input.e, u_input.e)), vec3<f32>(1000f, _wgslsmith_f_op_f32(round(546f)), _wgslsmith_div_f32(var_1.b.x, 1000f))), -(select(vec3<i32>(u_input.e, -1i, var_1.a), vec3<i32>(var_1.a, var_1.a, -2147483647i), vec3<bool>(true, true, true)) << ((vec3<u32>(0u, 42659u, var_0.a) | vec3<u32>(var_0.a, 4294967295u, 0u)) % vec3<u32>(32u)))));
    var var_3 = vec3<i32>(var_1.a, var_2.b.a, abs((_wgslsmith_div_i32(32428i, var_2.b.a) & -2147483647i) << (1u % 32u)));
    var_3 = ~countOneBits(~select(firstLeadingBit(vec3<i32>(-19905i, -30066i, -1i)), -vec3<i32>(var_1.a, -1i, var_2.b.a), vec3<bool>(true, false, false)));
    var_3 = vec3<i32>(countOneBits(-2147483647i), _wgslsmith_div_i32(~abs(func_2(Struct_2(var_2.b.a, var_1.b), vec3<i32>(2147483647i, var_3.x, -2147483647i)).x), ~(-61072i)), u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -1i);
}

