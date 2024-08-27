struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
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

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32) -> vec2<u32> {
    let var_0 = Struct_2(262f, Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), Struct_1(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), Struct_1(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), true)));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 2095f, var_0.a), vec3<f32>(var_0.a, var_0.a, -336f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, var_0.a) - vec3<f32>(396f, var_0.a, 253f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 741f, var_0.a) + vec3<f32>(-715f, var_0.a, -1124f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -537f, 712f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -637f, var_0.a))) + vec3<f32>(_wgslsmith_div_f32(var_0.a, var_0.a), _wgslsmith_f_op_f32(var_0.a * var_0.a), _wgslsmith_f_op_f32(1158f - 2551f)))));
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -236f) - 1055f), 1444f, var_0.a)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(trunc(703f)), var_0.d, var_0.c, Struct_1(var_0.c.a));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -138f));
    return u_input.c;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> f32 {
    let var_0 = any(!vec4<bool>(true, (u_input.b << (57024u % 32u)) <= ~(-39967i), true, true));
    let var_1 = func_3(firstLeadingBit(firstTrailingBit(_wgslsmith_clamp_i32(u_input.b, u_input.a.x, u_input.b))));
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_1.a, arg_0.a)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.a.x, arg_1.a.x, 127f)))))))));
    var var_3 = Struct_1(vec3<bool>(true, false, true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(334f + _wgslsmith_f_op_f32(arg_0.a.x + 116f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))) - -335f));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(func_2(arg_1, arg_1));
    var var_1 = ~abs(1i);
    let var_2 = Struct_1(select(vec3<bool>((u_input.c.x < 1u) | true, false, false), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)), true), true));
    var var_3 = Struct_1(select(var_2.a, vec3<bool>(_wgslsmith_div_f32(318f, -663f) != var_0, !var_2.a.x, all(select(vec4<bool>(false, var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x), var_2.a.x))), !var_2.a.x));
    let var_4 = vec3<bool>(var_3.a.x, !all(vec4<bool>(select(false, var_3.a.x, var_3.a.x), all(vec3<bool>(true, var_3.a.x, var_3.a.x)), true, all(vec4<bool>(var_3.a.x, true, var_3.a.x, var_3.a.x)))), any(vec4<bool>(any(select(vec4<bool>(var_2.a.x, var_2.a.x, true, var_3.a.x), vec4<bool>(false, true, var_2.a.x, var_2.a.x), vec4<bool>(true, true, true, var_2.a.x))), true, false, var_2.a.x)));
    return ~(~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(i32(-1i) * -15221i, ~0i, i32(-1i) * -21219i)), abs(~(vec3<i32>(u_input.b, u_input.a.x, -1i) ^ vec3<i32>(-29404i, -1i, 43033i))), _wgslsmith_mult_vec3_i32(-countOneBits(vec3<i32>(-41130i, u_input.a.x, u_input.a.x)), ~(~vec3<i32>(u_input.a.x, -2599i, u_input.b)))), _wgslsmith_mult_vec3_i32(~vec3<i32>(~15285i, 2147483647i, reverseBits(u_input.b)), vec3<i32>(53270i, u_input.b, 26130i)));
    var_0 = max(((_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, -2147483647i, u_input.a.x), vec3<i32>(10342i, u_input.a.x, 45640i)) | ~vec3<i32>(47125i, 2147483647i, 1i)) ^ (_wgslsmith_sub_vec3_i32(vec3<i32>(24631i, -1i, -2147483647i), vec3<i32>(u_input.b, var_0.x, -1i)) & (vec3<i32>(36064i, 1i, u_input.a.x) >> (vec3<u32>(4294967295u, 0u, 53478u) % vec3<u32>(32u))))) >> (~vec3<u32>(~3150u, func_1(vec4<f32>(-973f, -666f, 936f, 1539f), Struct_3(vec3<f32>(1000f, -146f, -309f))), 2409u) % vec3<u32>(32u)), countOneBits(-countOneBits(vec3<i32>(var_0.x, 26519i, u_input.a.x))));
    var var_1 = vec4<f32>(313f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(Struct_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(252f, -187f, 360f), vec3<f32>(-717f, 1273f, -109f), true))), Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1027f, -294f) - vec3<f32>(369f, -643f, 651f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(293f)) * _wgslsmith_f_op_f32(floor(-1580f))))))), -179f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -774f))))));
    var_0 = ~reverseBits(reverseBits(select(select(vec3<i32>(u_input.a.x, -1i, var_0.x), vec3<i32>(-2147483647i, -1i, 1i), false), vec3<i32>(1i, var_0.x, u_input.b), true)));
    var_0 = countOneBits(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(0i, u_input.b, -11455i)), _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, u_input.b), vec4<i32>(2147483647i, var_0.x, var_0.x, u_input.a.x)), vec4<i32>(-54154i, u_input.a.x, -1i, u_input.a.x)), u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

