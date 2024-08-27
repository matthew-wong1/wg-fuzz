struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = arg_0.a;
    var var_1 = Struct_2(Struct_1(arg_2.a, arg_0.b != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + _wgslsmith_div_f32(arg_0.b, arg_0.b))));
    var_1 = Struct_2(var_1.a);
    var_1 = Struct_2(arg_2);
    return !vec4<bool>(any(select(vec3<bool>(false, var_1.a.b, false), vec3<bool>(var_1.a.b, arg_0.c.x, true), arg_0.c.zww)), true, var_1.a.b, true);
}

fn func_2(arg_0: bool) -> vec3<i32> {
    var var_0 = select(!vec3<bool>(true, true && arg_0, true & arg_0), !(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true))), vec3<bool>(false, true, (~u_input.b <= 0u) || arg_0));
    var_0 = !select(select(vec3<bool>(false | var_0.x, false, var_0.x), !vec3<bool>(false, false, var_0.x), select(vec3<bool>(true, var_0.x, arg_0), !vec3<bool>(arg_0, var_0.x, arg_0), any(var_0.xx))), select(vec3<bool>(all(vec3<bool>(true, arg_0, false)), true, !arg_0), !select(vec3<bool>(true, arg_0, var_0.x), vec3<bool>(arg_0, true, true), false), vec3<bool>(var_0.x, select(false, arg_0, false), !arg_0)), arg_0);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1002f, 203f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -872f) - 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-763f, 508f)))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(470f - 659f), _wgslsmith_f_op_f32(f32(-1f) * -225f))))));
    var var_2 = Struct_4(Struct_3(-(vec4<i32>(-1i) * -vec4<i32>(-3509i, -19791i, 2147483647i, u_input.c.x)), vec3<i32>(u_input.c.x, _wgslsmith_mod_i32(u_input.a, reverseBits(u_input.a)), -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-1255f - 513f)))), select(select(!vec4<bool>(true, arg_0, false, arg_0), !func_3(Struct_4(Struct_3(vec4<i32>(-4574i, u_input.a, u_input.c.x, u_input.a), vec3<i32>(u_input.c.x, 2147483647i, 2147483647i)), 570f, vec4<bool>(false, arg_0, arg_0, false), vec3<bool>(arg_0, true, true)), false, Struct_1(vec3<i32>(u_input.c.x, u_input.a, u_input.a), true)), false), vec4<bool>(false, arg_0, arg_0, false), var_0.x), !(!func_3(Struct_4(Struct_3(vec4<i32>(u_input.a, 2147483647i, u_input.a, 1i), vec3<i32>(u_input.c.x, u_input.a, 0i)), 1463f, vec4<bool>(arg_0, arg_0, var_0.x, var_0.x), vec3<bool>(false, arg_0, false)), !arg_0, Struct_1(vec3<i32>(9601i, 2147483647i, u_input.a), arg_0)).zwx));
    var_0 = !select(!select(vec3<bool>(false, true, false), !var_2.d, select(vec3<bool>(true, false, true), var_2.d, var_2.c.x)), !var_2.d, true);
    return vec3<i32>(var_2.a.b.x, firstLeadingBit(-(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c) & 55694i)), var_2.a.b.x);
}

fn func_4(arg_0: Struct_5) -> Struct_1 {
    var var_0 = -9186i;
    var_0 = _wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(1i, arg_0.c.x)), vec2<i32>(1i, 10417i) | -arg_0.a) & _wgslsmith_mod_i32(-44454i, firstLeadingBit(~arg_0.a.x)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1614f);
    var var_2 = arg_0.c;
    var var_3 = Struct_2(Struct_1(min(arg_0.c, select(vec3<i32>(u_input.a, arg_0.c.x, -37238i), arg_0.c, arg_0.b.x)) << (_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, u_input.b, u_input.b), ~vec3<u32>(u_input.b, u_input.b, u_input.b)) % vec3<u32>(32u)), arg_0.b.x));
    return Struct_1(reverseBits(var_3.a.a), 0i != u_input.a);
}

fn func_1() -> u32 {
    let var_0 = func_4(Struct_5(u_input.c >> (vec2<u32>(_wgslsmith_sub_u32(38057u, 6205u), _wgslsmith_sub_u32(u_input.b, u_input.b)) % vec2<u32>(32u)), vec3<bool>(true, true, false), func_2(true)));
    var var_1 = reverseBits(vec3<u32>(select(u_input.b, u_input.b & 4294967295u, select(u_input.b, 1u, false) >= _wgslsmith_add_u32(1u, u_input.b)), ~u_input.b, select(_wgslsmith_clamp_u32(select(72722u, u_input.b, true), _wgslsmith_add_u32(u_input.b, 77791u), firstLeadingBit(u_input.b)), ~u_input.b, func_4(Struct_5(vec2<i32>(59100i, -4725i), vec3<bool>(false, var_0.b, var_0.b), vec3<i32>(u_input.c.x, 51386i, -19997i))).b)));
    var var_2 = _wgslsmith_div_vec2_u32(var_1.xz, var_1.zx);
    var_2 = firstLeadingBit(var_1.xx);
    var_1 = ~vec3<u32>(5921u, 4294967295u | (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_2.x, 0u), vec3<u32>(u_input.b, 2580u, var_1.x)) | _wgslsmith_div_u32(var_2.x, 1u)), var_1.x);
    return var_2.x << (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(abs(var_1.x), 1u, u_input.b, max(50687u, var_1.x)), ~vec4<u32>(2263u, 46928u, u_input.b, u_input.b), select(vec4<u32>(var_1.x, 4294967295u, 47750u, 14077u), firstTrailingBit(vec4<u32>(var_2.x, 1u, 42087u, var_2.x)), vec4<bool>(var_0.b, false, var_0.b, var_0.b))), vec4<u32>(countOneBits(~var_2.x), var_1.x, ~(1u | u_input.b), ~_wgslsmith_div_u32(var_1.x, 1u))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u & _wgslsmith_div_u32(0u, ~func_1());
    var_0 = u_input.b;
    var var_1 = vec4<u32>(134877u, ~u_input.b, ~(~(~countOneBits(u_input.b))), u_input.b);
    var_1 = _wgslsmith_sub_vec4_u32(~(~(vec4<u32>(10967u, var_1.x, var_1.x, var_1.x) ^ vec4<u32>(1u, var_1.x, var_1.x, 62773u)) >> (vec4<u32>(0u, var_1.x, var_1.x, 47203u) % vec4<u32>(32u))), ~(~vec4<u32>(u_input.b, 67824u, u_input.b, u_input.b) << (~vec4<u32>(37474u, 1u, var_1.x, var_1.x) % vec4<u32>(32u))) & min(firstLeadingBit(firstLeadingBit(vec4<u32>(1u, 9309u, var_1.x, 110475u))), ~(~vec4<u32>(34193u, u_input.b, 4294967295u, 4294967295u))));
    var var_2 = abs(-abs((vec4<i32>(u_input.a, 15498i, u_input.a, u_input.c.x) | vec4<i32>(0i, -2147483647i, u_input.c.x, u_input.c.x)) & vec4<i32>(0i, u_input.a, -23889i, 0i)));
    var var_3 = _wgslsmith_add_u32(firstTrailingBit(0u), 4294967295u);
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -332f), 1862f), _wgslsmith_f_op_f32(min(-102f, 1f)))), _wgslsmith_f_op_f32(f32(-1f) * -820f));
    let var_5 = -u_input.a;
    let var_6 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-668f, var_4.x, 457f, 238f))))), select(var_1.x, abs(var_6), true), vec2<i32>(42483i, _wgslsmith_dot_vec2_i32(~(-vec2<i32>(u_input.a, var_5)), reverseBits(-u_input.c))), vec3<i32>(-1i, -54594i, min(-10259i, var_5)), u_input.c);
}

