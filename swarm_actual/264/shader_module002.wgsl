struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> Struct_1 {
    var var_0 = vec2<f32>(-383f, arg_1);
    let var_1 = u_input.b.x & ~0u;
    return Struct_1(u_input.b);
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_3(Struct_2(func_2(~vec2<u32>(38982u, 28903u), _wgslsmith_f_op_f32(floor(-1079f))), min(~abs(vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-50927i, u_input.a, 2147483647i), vec3<i32>(1i, -1i, u_input.a), vec3<i32>(19536i, u_input.a, 15432i))), Struct_1(~(u_input.b | vec4<u32>(0u, 22553u, u_input.b.x, 4294967295u))), select(vec3<bool>(true, 0u <= u_input.b.x, any(vec4<bool>(true, true, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), true), vec3<i32>(~reverseBits(u_input.a), ~_wgslsmith_mod_i32(u_input.a, -2147483647i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, u_input.a, -11489i, u_input.a)), abs(vec4<i32>(-2147483647i, u_input.a, -56737i, u_input.a))))), Struct_1(vec4<u32>(select(~u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, 33277u), true), abs(u_input.b.x), u_input.b.x, _wgslsmith_add_u32(~73988u, 38077u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(466f, -277f, -616f) - vec3<f32>(-1808f, 2924f, 1000f))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1500f, 644f, 1241f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1613f, 939f, 451f) - vec3<f32>(179f, -487f, 1531f))) - vec3<f32>(-2067f, _wgslsmith_f_op_f32(step(-216f, -1872f)), _wgslsmith_f_op_f32(round(-1000f))))));
    var_0 = Struct_3(var_0.a, func_2(~_wgslsmith_mult_vec2_u32(var_0.b.a.yz, var_0.a.a.a.zw), _wgslsmith_f_op_f32(var_0.c.x - var_0.c.x)), vec3<f32>(_wgslsmith_f_op_f32(-2577f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))), -898f, 1007f));
    var_0 = Struct_3(var_0.a, Struct_1(firstLeadingBit(var_0.b.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, 677f, -1000f)))));
    var var_1 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(abs(var_0.c.x)));
    var var_2 = var_0.b.a.x;
    return u_input.b;
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_i32(~u_input.a, u_input.a, abs(firstLeadingBit(abs(reverseBits(-2147483647i)))));
    let var_1 = _wgslsmith_f_op_f32(trunc(arg_0.c.x));
    var var_2 = arg_0.a;
    var var_3 = func_2(var_2.a.a.yz | u_input.b.wy, 1280f);
    var var_4 = var_2.c;
    return var_2.c;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_mult_vec2_u32(u_input.b.yz, countOneBits(vec2<u32>(u_input.b.x, 4294967295u)) ^ ~vec2<u32>(36103u, 34845u)), _wgslsmith_f_op_f32(f32(-1f) * -1650f));
    return func_4(Struct_3(Struct_2(Struct_1(func_3()), -vec3<i32>(2147483647i, -1i, u_input.a) | vec3<i32>(-16610i, u_input.a, u_input.a), func_2(firstLeadingBit(u_input.b.yz), _wgslsmith_div_f32(-249f, -206f)), vec3<bool>(true, true, true), -(~vec3<i32>(-2476i, u_input.a, u_input.a))), Struct_1(select(~var_0.a, u_input.b | vec4<u32>(u_input.b.x, u_input.b.x, var_0.a.x, 38348u), vec4<bool>(true, false, false, false))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1054f))), _wgslsmith_f_op_f32(max(-219f, -216f)), _wgslsmith_f_op_f32(-109f * _wgslsmith_f_op_f32(sign(422f))))), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1431f);
    let var_1 = Struct_3(Struct_2(func_1(~0u), vec3<i32>(~(-2147483647i ^ u_input.a), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-11996i, 1i, u_input.a, 68604i)), select(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-38830i, 2147483647i, -13179i, u_input.a), vec4<bool>(false, true, true, false))), abs(u_input.a)), func_1(0u), vec3<bool>(true, true, false), vec3<i32>(u_input.a, ~(u_input.a ^ u_input.a), countOneBits(1i))), Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1997u, u_input.b.x, u_input.b.x, 69951u), u_input.b, u_input.b) & (u_input.b << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), u_input.b)), vec3<f32>(1936f, 149f, 630f));
    var var_2 = min(_wgslsmith_dot_vec2_i32(var_1.a.b.xz, vec2<i32>(var_1.a.b.x, 1i)), 1i);
    let var_3 = ~(func_4(Struct_3(Struct_2(Struct_1(vec4<u32>(89485u, var_1.b.a.x, var_1.b.a.x, var_1.b.a.x)), var_1.a.e, Struct_1(vec4<u32>(var_1.a.c.a.x, 8989u, 1u, 39900u)), vec3<bool>(var_1.a.d.x, true, false), var_1.a.b), func_1(u_input.b.x), vec3<f32>(-549f, var_1.c.x, var_1.c.x)), 1i).a.yz >> (max(firstLeadingBit(abs(var_1.a.c.a.yy)), var_1.a.c.a.wx) % vec2<u32>(32u)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(712f, 1090f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(106f + var_1.c.x))))) - _wgslsmith_f_op_f32(-var_1.c.x));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))));
    var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, firstTrailingBit(~u_input.a)), abs(min(_wgslsmith_add_i32(0i, 0i), -3562i))), vec2<f32>(_wgslsmith_f_op_f32(min(452f, _wgslsmith_div_f32(var_1.c.x, -125f))), -1730f), ~select(var_1.a.b | vec3<i32>(var_1.a.b.x, u_input.a, u_input.a), var_1.a.e, true) << (var_1.a.c.a.xyx % vec3<u32>(32u)), vec3<i32>(abs(1i), ~u_input.a, -11869i));
}

