struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1731f, _wgslsmith_f_op_f32(select(764f, 309f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-947f)) * _wgslsmith_f_op_f32(f32(-1f) * -104f)))))));
    var var_1 = ~4294967295u;
    let var_2 = vec2<bool>(arg_1.b, false);
    return true;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_3(arg_0.a);
    var var_1 = ~select(-vec3<i32>(var_0.a.d, select(arg_0.a.d, var_0.a.d, arg_0.a.e.b), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 16779i), vec2<i32>(arg_0.a.d, 2147483647i))), ((vec3<i32>(-24980i, -18747i, arg_0.a.d) << (vec3<u32>(var_0.a.a.a.x, var_0.a.e.a.x, u_input.a.x) % vec3<u32>(32u))) << (vec3<u32>(30693u, 1u, arg_0.a.c) % vec3<u32>(32u))) << (~min(vec3<u32>(0u, 0u, arg_1.a.x), vec3<u32>(25344u, 0u, var_0.a.c)) % vec3<u32>(32u)), func_3(~vec3<u32>(100360u, var_0.a.c, 0u), arg_1) || false);
    var var_2 = arg_0.a;
    let var_3 = Struct_2(Struct_1(abs(~_wgslsmith_mod_vec2_u32(arg_1.a, vec2<u32>(19343u, 4294967295u))), func_3(~(~vec3<u32>(u_input.a.x, 19476u, 1u)), Struct_1(~arg_0.a.a.a, arg_1.b))), firstTrailingBit(~_wgslsmith_mod_u32(~10123u, _wgslsmith_div_u32(arg_0.a.c, arg_0.a.b))), ~(~select(arg_1.a.x, _wgslsmith_dot_vec2_u32(var_2.e.a, var_2.a.a), var_0.a.e.b)), -2147483647i, Struct_1(countOneBits(arg_0.a.a.a), !(-1562f >= _wgslsmith_f_op_f32(ceil(-2401f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-680f, 254f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool) -> Struct_2 {
    var var_0 = ~(-2147483647i);
    let var_1 = -vec3<i32>(9225i, -countOneBits(-20096i), min(1i, -18763i) >> (1u % 32u));
    return Struct_2(Struct_1(abs(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a), reverseBits(vec2<u32>(43379u, u_input.a.x)))), true), 0u, 0u << (~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u))) % 32u), firstLeadingBit(var_1.x) & 10181i, Struct_1(abs(abs(vec2<u32>(u_input.a.x, 4294967295u)) << (~u_input.a % vec2<u32>(32u))), true));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<u32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 923f)), _wgslsmith_div_vec2_f32(vec2<f32>(1017f, -605f), vec2<f32>(-157f, 434f))) * vec2<f32>(_wgslsmith_f_op_f32(floor(-1045f)), 1590f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, 560f)));
    var var_1 = func_4(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(465f * 422f) - _wgslsmith_f_op_f32(func_2(Struct_3(Struct_2(Struct_1(u_input.a, true), arg_2.x, 4294967295u, 49800i, Struct_1(arg_0, false))), Struct_1(arg_2.xz, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 1f), any(vec3<bool>(false, all(vec3<bool>(true, true, true)), true)));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 720f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(395f * 1000f), _wgslsmith_f_op_f32(-1041f * -375f))))));
    var_1 = Struct_2(Struct_1(select(u_input.a & arg_0, arg_2.xy ^ u_input.a, true), -var_1.d > -41719i), arg_0.x & max(u_input.a.x >> (26302u % 32u), countOneBits(1u) >> (arg_1 % 32u)), (~(~0u) >> (var_1.e.a.x % 32u)) << (_wgslsmith_add_u32(max(max(u_input.a.x, 0u), _wgslsmith_mult_u32(arg_0.x, 1u)), arg_2.x) % 32u), ~firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-14377i, var_1.d, 0i, 1i), select(vec4<i32>(-1i, var_1.d, 1i, -2147483647i), vec4<i32>(-17482i, var_1.d, 16728i, -1i), vec4<bool>(var_1.a.b, var_1.e.b, var_1.e.b, var_1.e.b)))), func_4(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(1717f - var_0.x), _wgslsmith_div_f32(var_0.x, 445f), _wgslsmith_f_op_f32(f32(-1f) * -432f)))), true).e);
    return _wgslsmith_mult_vec2_u32(arg_0, var_1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = firstTrailingBit(max(reverseBits(vec2<i32>(1i, 1i)) << ((func_1(u_input.a, u_input.a.x, vec3<u32>(15704u, 2887u, 45271u)) >> (u_input.a % vec2<u32>(32u))) % vec2<u32>(32u)), select(firstLeadingBit(firstLeadingBit(vec2<i32>(43901i, -2147483647i))), vec2<i32>(1i, 1i), true)));
    let var_2 = vec2<u32>(~select(u_input.a.x, 1u, !any(vec4<bool>(false, true, true, false))), u_input.a.x);
    let var_3 = ~(-vec3<i32>(-1i, var_1.x, var_1.x) & vec3<i32>(_wgslsmith_mod_i32(var_1.x, var_1.x), -2147483647i ^ var_1.x, ~(-27664i))) >> (vec3<u32>((var_2.x & func_1(var_2, 4294967295u, vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)).x) << (65377u % 32u), func_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1111f, 117f, -182f))))), true).c, max(20150u | min(u_input.a.x, var_2.x), u_input.a.x)) % vec3<u32>(32u));
    var var_4 = max(_wgslsmith_mult_vec2_i32(var_1 >> (u_input.a % vec2<u32>(32u)), ~vec2<i32>(i32(-1i) * -1i, var_3.x)), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(var_1, 220f);
}

