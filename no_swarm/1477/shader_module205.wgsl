struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-637f)))))) <= _wgslsmith_f_op_f32(round(-1016f)));
    var var_1 = var_0;
    let var_2 = Struct_3(-vec2<i32>(~firstLeadingBit(2147483647i), ~(-31992i << (u_input.a.x % 32u))), select(!(!(!vec4<bool>(var_0.a, true, true, var_1.a))), !vec4<bool>(select(false, true, var_1.a), all(vec3<bool>(var_1.a, var_1.a, true)), all(vec4<bool>(var_0.a, var_1.a, false, var_0.a)), true), vec4<bool>(var_1.a, all(!vec3<bool>(var_0.a, var_1.a, var_1.a)), -162f > _wgslsmith_f_op_f32(sign(-248f)), any(vec2<bool>(true, var_0.a)))), -1i);
    let var_3 = -1831f;
    var_1 = Struct_4(!var_0.a);
    return -reverseBits(vec3<i32>(-_wgslsmith_clamp_i32(var_2.c, var_2.c, -1i), 53366i, var_2.c));
}

fn func_2(arg_0: f32) -> Struct_3 {
    let var_0 = select(vec3<i32>(i32(-1i) * -6408i, -1i, i32(-1i) * -2147483647i), _wgslsmith_mod_vec3_i32(firstTrailingBit(min(vec3<i32>(-2147483647i, -51726i, 6867i), vec3<i32>(2147483647i, 1i, 36447i))), func_3()), true) & vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), max(vec3<i32>(27942i, -1i, -1i), vec3<i32>(-8672i, -8089i, -2147483647i))), abs(~1i), 0i);
    let var_1 = -vec4<i32>(17726i, 11274i, _wgslsmith_dot_vec3_i32(var_0, vec3<i32>(var_0.x, -1i, var_0.x) | _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), var_0, var_0)), var_0.x);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + arg_0))), 904f, all(vec2<bool>(true, any(vec4<bool>(false, true, true, true)))))), arg_0);
    return Struct_3(var_0.zy, select(vec4<bool>(true, 1u == u_input.a.x, all(vec2<bool>(true, true)), (u_input.a.x & 4294967295u) != 32684u), vec4<bool>(false, any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false)), true || (u_input.a.x > 4294967295u)), select(true, select(true, all(vec4<bool>(false, true, true, true)), false), _wgslsmith_f_op_f32(f32(-1f) * -2070f) < _wgslsmith_f_op_f32(arg_0 * 136f))), func_3().x);
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> Struct_3 {
    return func_2(-674f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    let var_0 = Struct_5(arg_1.b.x & true, Struct_4(false));
    var var_1 = Struct_5(!all(vec4<bool>(func_2(1432f).b.x, func_1(vec4<i32>(28024i, -2147483647i, -2147483647i, 0i), -337f).b.x, false || var_0.b.a, var_0.a)), Struct_4(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c, -1i, arg_1.c), vec3<i32>(57975i, -1i, -1i))) != ~(1i & arg_0.c)));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec3<bool>) -> vec2<u32> {
    var var_0 = ~_wgslsmith_div_u32(u_input.a.x, u_input.a.x);
    var var_1 = Struct_2(arg_1);
    var var_2 = _wgslsmith_clamp_u32(var_1.a.b, arg_1.b, ~abs(~17998u)) >= u_input.a.x;
    let var_3 = Struct_3(func_1(vec4<i32>(-35117i, firstTrailingBit(2147483647i), arg_0.c ^ 1i, ~var_1.a.c), _wgslsmith_f_op_f32(-var_1.a.a)).a >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec4<bool>(any(!arg_3.zz), arg_3.x, true, arg_3.x), -24744i);
    var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * _wgslsmith_f_op_f32(select(var_1.a.a, 2068f, var_3.b.x)))))).b.x;
    return vec2<u32>(1u, 1u ^ ~u_input.a.x) >> (vec2<u32>(1u, func_4(func_4(Struct_1(-1000f, 0u, var_1.a.c), func_1(vec4<i32>(0i, -2147483647i, -2147483647i, 0i), -2035f)), Struct_3(-vec2<i32>(arg_1.c, arg_0.c), var_3.b, arg_1.c)).b) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec3<i32>(-2147483647i, ~firstLeadingBit(-36850i), -1i);
    let var_1 = firstTrailingBit(countOneBits(func_5(Struct_1(-1095f, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, 8631i, -2147483647i))), func_4(Struct_1(1234f, u_input.a.x, -2147483647i), func_1(vec4<i32>(var_0.x, var_0.x, 18896i, 1i), 2079f)), -18288i, !func_1(vec4<i32>(var_0.x, -33596i, var_0.x, var_0.x), 962f).b.yyy)));
    let var_2 = var_0.x;
    let var_3 = vec2<bool>(true, true);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-574f))), 1u, -var_0.x);
    var var_5 = var_1.x;
    var_5 = _wgslsmith_mult_u32(~((var_4.b ^ 56163u) ^ abs(var_1.x)) & (((var_4.b ^ 17581u) >> (firstTrailingBit(var_4.b) % 32u)) | 50787u), ~func_5(var_4, var_4, -(~1292i), func_1(firstLeadingBit(vec4<i32>(var_0.x, -24545i, var_0.x, -66010i)), _wgslsmith_f_op_f32(574f - var_4.a)).b.xyw).x);
    var var_6 = u_input.a;
    var var_7 = countOneBits(vec2<i32>(-1i) * -(countOneBits(vec2<i32>(var_2, var_2)) | vec2<i32>(var_0.x, var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-535f, var_4.a) * vec2<f32>(var_4.a, 1297f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 785f))))));
}

