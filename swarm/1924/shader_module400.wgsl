struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 8>;

var<private> global1: u32;

var<private> global2: i32;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_2 {
    global0 = array<vec3<i32>, 8>();
    let var_0 = Struct_1(-(-(~vec4<i32>(-2147483647i, u_input.c.x, 2147483647i, u_input.c.x)) >> (vec4<u32>(0u, _wgslsmith_mult_u32(62104u, u_input.a.x), 50521u, ~u_input.b.x) % vec4<u32>(32u))));
    global2 = ~u_input.c.x;
    var var_1 = Struct_2(Struct_1(var_0.a));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(561f * _wgslsmith_f_op_f32(f32(-1f) * -1788f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1097f - -1169f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-229f + 377f)) - _wgslsmith_f_op_f32(f32(-1f) * -544f)))));
    return Struct_2(Struct_1(vec4<i32>(var_0.a.x, max(u_input.c.x | var_0.a.x, -32132i), u_input.c.x, var_0.a.x)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<f32>) -> vec4<u32> {
    var var_0 = func_2();
    let var_1 = arg_0.zzy;
    global1 = u_input.b.x;
    let var_2 = Struct_1(abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(37733i, var_1.x, arg_0.x, 0i), vec4<i32>(var_1.x, var_1.x, 57927i, var_1.x) >> (vec4<u32>(31377u, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), -2147483647i, -_wgslsmith_clamp_i32(var_1.x, var_0.a.a.x, var_1.x), 2147483647i)));
    let var_3 = -arg_0.zxx;
    return u_input.a;
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_2, arg_3: vec4<bool>) -> f32 {
    var var_0 = true;
    let var_1 = vec3<u32>(2196u, u_input.a.x ^ firstLeadingBit(4294967295u), ~36457u);
    global2 = reverseBits(_wgslsmith_dot_vec2_i32(~u_input.c, -arg_2.a.a.zx));
    let var_2 = select(vec2<bool>(!(_wgslsmith_div_f32(1664f, -657f) <= _wgslsmith_div_f32(arg_1, arg_1)), ~var_1.x < 1019u), vec2<bool>(arg_3.x, any(select(select(arg_0, arg_0, true), arg_3.xxz, vec3<bool>(true, true, false)))), select(arg_3.yy, vec2<bool>(arg_0.x, arg_3.x), !(_wgslsmith_f_op_f32(arg_1 - -587f) != arg_1)));
    global1 = var_1.x;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -453f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -946f))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: f32) -> Struct_2 {
    global0 = array<vec3<i32>, 8>();
    let var_0 = _wgslsmith_sub_u32(~(~((arg_0.x ^ 46426u) ^ (24083u ^ arg_0.x))), ~_wgslsmith_div_u32(20190u & arg_0.x, 71958u) << (~(~(~arg_0.x)) % 32u));
    global0 = array<vec3<i32>, 8>();
    let var_1 = Struct_1(~_wgslsmith_add_vec4_i32(select(vec4<i32>(-48118i, -48217i, u_input.c.x, u_input.c.x) << (vec4<u32>(4294967295u, arg_0.x, u_input.b.x, arg_0.x) % vec4<u32>(32u)), ~vec4<i32>(u_input.c.x, -29055i, u_input.c.x, u_input.c.x), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), false)), ~countOneBits(vec4<i32>(u_input.c.x, 30268i, -1i, -6194i))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1007f, _wgslsmith_f_op_f32(max(arg_1, arg_1))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1), 943f)))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 8>();
    var var_0 = _wgslsmith_clamp_vec4_i32(~(vec4<i32>(-31088i, i32(-1i) * -2147483647i, u_input.c.x, u_input.c.x) | vec4<i32>(-11889i, 1i, 0i, -u_input.c.x)), ~(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(-12855i, 2147483647i, u_input.c.x, -2147483647i)) << (func_1(~vec4<i32>(-1i, u_input.c.x, 25161i, -12415i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1752f, 134f, -1034f, 1327f))) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, -32835i, -43133i, -1i), vec4<i32>(-6978i, 0i, -2147483647i, u_input.c.x)) << (~vec4<u32>(1u, 35655u, 79026u, 27753u) % vec4<u32>(32u)), vec4<i32>(u_input.c.x, ~u_input.c.x, 4408i, -1i), vec4<i32>(u_input.c.x, -2147483647i, 4442i, -1i) | firstTrailingBit(vec4<i32>(-2147483647i, u_input.c.x, 18856i, u_input.c.x))), countOneBits(min(vec4<i32>(-11350i, u_input.c.x, u_input.c.x, u_input.c.x), reverseBits(vec4<i32>(u_input.c.x, -5135i, -2147483647i, 1i))))));
    var var_1 = func_4(firstLeadingBit(vec3<u32>(1u, _wgslsmith_add_u32(func_1(vec4<i32>(var_0.x, var_0.x, u_input.c.x, var_0.x), vec4<f32>(-1205f, -833f, 951f, 1277f)).x, 0u), min(4294967295u, 0u) | u_input.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), 746f, func_2(), vec4<bool>(true, false, true, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1148f, 1979f, 1450f, 523f), vec4<f32>(-535f, -1000f, -726f, -1551f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(640f, -1795f, 2593f, -616f)), true))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(392f, -1000f, 1043f, 255f)))), any(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-728f + 1000f))), 1619f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(830f, -489f, true)))))), -675f), firstTrailingBit(~(~reverseBits(33181u))), _wgslsmith_sub_i32(i32(-1i) * -var_1.a.a.x, ~firstTrailingBit(~(-33304i))));
}

