struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> vec2<bool> {
    var var_0 = ~u_input.c;
    let var_1 = Struct_1(arg_0.a);
    var_0 = _wgslsmith_add_u32(82457u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x));
    var_0 = ~_wgslsmith_div_u32(u_input.c, abs(u_input.a.x));
    var_0 = ~_wgslsmith_add_u32(~u_input.a.x, 48322u);
    return vec2<bool>(arg_0.a && (var_1.a & var_1.a), true && any(!select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, true))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: vec3<i32>) -> f32 {
    var var_0 = select(!(!(!select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(false, arg_2, arg_2), vec3<bool>(false, arg_2, arg_0.a)))), select(select(vec3<bool>(true, all(vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a)), false), !select(vec3<bool>(false, true, false), vec3<bool>(arg_2, arg_2, false), true), !select(vec3<bool>(arg_2, true, false), vec3<bool>(arg_0.a, true, true), vec3<bool>(true, arg_0.a, arg_2))), select(!(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), vec3<bool>(true, arg_2, true), vec3<bool>(true, true, true)), !(!all(vec2<bool>(arg_0.a, arg_0.a)))), vec3<bool>(arg_2, !select(arg_0.a, any(vec3<bool>(arg_2, true, false)), arg_0.a), true));
    var var_1 = Struct_2(Struct_1(var_0.x));
    var var_2 = Struct_2(var_1.a);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(413f + _wgslsmith_f_op_f32(f32(-1f) * -204f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-155f, 758f), _wgslsmith_f_op_f32(abs(-714f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1185f * -1852f), _wgslsmith_f_op_f32(-1209f - -1054f))))));
    let var_4 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), var_3.x)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_3.x, 1000f)), _wgslsmith_div_f32(var_3.x, -373f))), 1000f))));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<bool>, arg_3: vec2<f32>) -> u32 {
    return ~_wgslsmith_dot_vec2_u32(u_input.a.zz, abs(~u_input.a.yy));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> i32 {
    var var_0 = ~1u ^ func_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1049f, -984f, 1488f, 1908f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1751f, -517f, -730f, -1661f) - vec4<f32>(684f, -226f, 514f, 1399f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(139f, 1103f, -1216f, -1208f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-965f, 869f, 671f, -1789f), vec4<f32>(752f, -1000f, 557f, 294f)))))), arg_0, !(!func_2(Struct_1(arg_0), vec4<i32>(-44899i, u_input.b.x, -2147483647i, -2147483647i))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(1064f - -160f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(arg_1.a), u_input.c, true, u_input.b.xwx)))));
    let var_1 = -2147483647i;
    var var_2 = Struct_1(arg_1.a | true);
    var_2 = arg_3.a;
    var var_3 = arg_3;
    return u_input.d;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = select(-vec2<i32>((arg_2 >> (u_input.a.x % 32u)) | (i32(-1i) * -18073i), 47379i), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(~arg_0, abs(u_input.b.yy) ^ u_input.b.yx, _wgslsmith_clamp_vec2_i32(arg_0, vec2<i32>(arg_2, 1i), _wgslsmith_div_vec2_i32(u_input.b.xy, u_input.b.wx))), u_input.b.ww), arg_1.a);
    let var_1 = arg_1;
    let var_2 = u_input.b.wwz;
    let var_3 = Struct_2(Struct_1(false));
    var var_4 = -290f;
    return Struct_1(arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, any(vec3<bool>(false, !all(vec4<bool>(false, true, false, true)), all(vec3<bool>(true, true, true)))));
    var var_1 = ~u_input.c;
    var var_2 = reverseBits(firstLeadingBit(_wgslsmith_clamp_vec3_u32(select(u_input.a, u_input.a, var_0.x) | vec3<u32>(4294967295u, u_input.c, u_input.a.x), vec3<u32>(u_input.c, abs(u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(u_input.a.x, u_input.a.x))), ~(~u_input.a))));
    let var_3 = Struct_2(func_5(~vec2<i32>(1i, func_1(var_0.x, Struct_1(true), 0u, Struct_2(Struct_1(true)))), Struct_1((u_input.d << (49514u % 32u)) == ~u_input.d), -2147483647i));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(func_5(max(u_input.b.zz, vec2<i32>(-33054i, u_input.b.x)), var_3.a, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b.wwy, vec3<i32>(-1i, -1i, u_input.d)), select(u_input.b.yww, vec3<i32>(u_input.e, u_input.b.x, 2147483647i), vec3<bool>(false, true, true)))), 10926u, any(func_2(var_3.a, firstLeadingBit(u_input.b))), abs(u_input.b.xxw))) - _wgslsmith_f_op_f32(func_3(func_5(-vec2<i32>(u_input.b.x, 1i), func_5(-vec2<i32>(0i, u_input.d), var_3.a, u_input.e >> (24732u % 32u)), -1i), var_2.x, all(vec4<bool>(true, true, true, true)), -(~(-vec3<i32>(-12306i, 0i, 2147483647i))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(min(_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(var_2.x, var_2.x, u_input.a.x)), ~(u_input.a << (vec3<u32>(var_2.x, 4294967295u, 1u) % vec3<u32>(32u)))), _wgslsmith_add_vec3_u32(u_input.a, ~vec3<u32>(u_input.c, 8840u, 99719u) & vec3<u32>(0u, var_2.x, 1u))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(165f * _wgslsmith_f_op_f32(856f - -1949f)))), 751f, _wgslsmith_f_op_f32(trunc(-911f))), _wgslsmith_sub_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 0u, 76201u, 28118u), vec4<u32>(var_2.x, 0u, u_input.a.x, 0u))), u_input.a.x), ~u_input.e, u_input.b.wy);
}

