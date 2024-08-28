struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = vec3<f32>(-1248f, -681f, _wgslsmith_f_op_f32(2305f - -636f));
    let var_1 = Struct_1(arg_0.a, ~(~_wgslsmith_div_u32(~1u, 85320u)), arg_0.c);
    return abs(~arg_0.a.yxy);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = ~_wgslsmith_add_vec3_i32(arg_3.a.xwy, _wgslsmith_add_vec3_i32(u_input.c, func_3(arg_3)));
    let var_1 = arg_3.c;
    var_0 = ~(-arg_1.yzz);
    let var_2 = vec3<f32>(-650f, 181f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(370f - 1f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1023f)))));
    var_0 = countOneBits(vec3<i32>(1i, i32(-1i) * -1i, 0i));
    return -arg_3.a.x;
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    let var_0 = Struct_3(Struct_2(vec2<bool>(true, true), _wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(~(-2147483647i), func_2(vec4<i32>(2147483647i, 1765i, -2147483647i, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, u_input.b, -2147483647i), vec3<i32>(u_input.b, 11406i, arg_0.x), Struct_1(vec4<i32>(arg_0.x, -1i, -57222i, arg_0.x), 69085u, false)), func_3(Struct_1(vec4<i32>(u_input.c.x, 35113i, 16086i, u_input.c.x), 95104u, false)).x)), Struct_1(vec4<i32>(-31466i, _wgslsmith_div_i32(arg_0.x, 2147483647i), u_input.c.x, u_input.b), ~(u_input.a.x << (u_input.a.x % 32u)), false), vec3<bool>(true, false, any(vec2<bool>(true, true)))), all(vec3<bool>(true, true, true)), select(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), vec3<bool>(true, true, any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)))), !all(vec3<bool>(true, true, true))), select(!vec4<bool>(true, false, all(vec3<bool>(true, true, false)), true), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, arg_0.x >= -93981i), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(u_input.c.x == -48957i, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false))))));
    let var_1 = 1099f;
    var var_2 = !(1u > var_0.a.c.b);
    var_2 = var_0.a.a.x;
    let var_3 = vec2<u32>(~(~var_0.a.c.b), _wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(var_0.a.c.b, u_input.a.x, 1u)), u_input.d.wxy)) >> (_wgslsmith_mult_vec2_u32(abs(~max(u_input.a, u_input.d.zy)), abs(u_input.d.wz)) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-489f + var_1) * var_1)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(201f)) * _wgslsmith_f_op_f32(func_1(vec3<i32>(-2147483647i, -2147483647i, -14116i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1863f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-180f)) * -137f))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-186f, 1040f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-228f, 1780f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 745f) - _wgslsmith_f_op_f32(max(-637f, -251f))), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(488f, var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -1732f) - _wgslsmith_f_op_f32(func_1(u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -377f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1335f, var_0.x)));
    var var_1 = ~0u;
    let var_2 = Struct_3(Struct_2(vec2<bool>(true, true), u_input.b, Struct_1(~vec4<i32>(u_input.c.x, u_input.b, u_input.b, -19531i), u_input.a.x, false), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(2147483647i > u_input.b, any(vec2<bool>(true, true)), false), true)), true, vec3<bool>(any(vec4<bool>(any(vec4<bool>(false, false, false, false)), true, select(false, false, false), true)), (1i > _wgslsmith_add_i32(u_input.b, u_input.c.x)) | !(u_input.c.x == u_input.c.x), false), !select(vec4<bool>(true, any(vec4<bool>(false, false, true, true)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), (-1957f < var_0.x) | (var_0.x > -1000f)));
    let var_3 = var_2.a.c;
    var var_4 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a | u_input.d.zz, firstTrailingBit(~min(_wgslsmith_dot_vec3_u32(vec3<u32>(23990u, var_3.b, var_4.c.b), vec3<u32>(var_4.c.b, u_input.a.x, 58557u)), u_input.d.x)));
}

