struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: vec2<f32>) -> bool {
    var var_0 = u_input.d;
    let var_1 = select(vec4<bool>(all(select(select(arg_1.zx, vec2<bool>(true, true), arg_1.x), !arg_1.zz, arg_1.x | false)), true, _wgslsmith_f_op_f32(arg_2.x - arg_0.x) != 181f, arg_1.x), !select(vec4<bool>(false, all(arg_1.yy), 2147483647i >= u_input.c.x, select(false, false, arg_1.x)), select(vec4<bool>(true, false, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, false, false), arg_1.x), false), arg_1.x);
    var var_2 = ~(-8901i);
    global0 = ~u_input.d;
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.x - arg_2.x), 836f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3.x, arg_0.x, arg_1.x)) * arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + 242f))) + vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x * arg_2.x), _wgslsmith_f_op_f32(-arg_0.x), !arg_1.x)), -1107f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - arg_3.x)), -1172f)), u_input.b.wy);
    return false;
}

fn func_2(arg_0: Struct_3) -> vec3<u32> {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, var_0.a.x) - var_0.a.wx))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, -1582f))) + arg_0.a.zz)), _wgslsmith_f_op_vec2_f32(-var_0.a.wx), vec2<bool>(func_3(_wgslsmith_f_op_vec3_f32(-var_0.a.zyx), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), _wgslsmith_div_vec2_f32(arg_0.a.ww, _wgslsmith_f_op_vec2_f32(var_0.a.xw - vec2<f32>(2016f, 412f))), vec2<f32>(423f, _wgslsmith_f_op_f32(select(arg_0.a.x, arg_0.a.x, false)))), !(!any(vec2<bool>(false, false))))));
    var_0 = arg_0;
    let var_2 = arg_0.a.xw;
    var_0 = Struct_3(vec4<f32>(var_1.x, 564f, _wgslsmith_f_op_f32(-1345f + arg_0.a.x), var_2.x), arg_0.b);
    return firstTrailingBit(min(vec3<u32>(74900u, reverseBits(u_input.a.x), u_input.d), vec3<u32>(select(25310u & u_input.a.x, _wgslsmith_div_u32(u_input.d, 1u), true), countOneBits(u_input.d & 37552u), 1u)));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>) -> bool {
    var var_0 = Struct_1(~u_input.b.zzy);
    var var_1 = 1661f;
    var var_2 = arg_0;
    var var_3 = Struct_1(u_input.c);
    let var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, _wgslsmith_f_op_f32(step(-548f, _wgslsmith_f_op_f32(select(890f, 224f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(357f))), arg_0))), ~(-vec2<i32>(i32(-1i) * -2147483647i, -1i)));
    return !(!(true & !(var_4.b.x < var_3.a.x)));
}

fn func_1() -> u32 {
    let var_0 = u_input.b.ww;
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2348f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1155f, -147f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -2959f)), 2161f))), reverseBits(u_input.b.zw));
    var var_2 = var_1;
    var_2 = var_1;
    let var_3 = select(vec3<bool>(func_4(var_1.a.x, func_2(Struct_3(var_1.a, vec2<i32>(-1578i, 2147483647i)))), _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -10853i, u_input.c.x, u_input.b.x), u_input.b)) < u_input.c.x, all(vec3<bool>(true, true, true)) | true), !vec3<bool>(select(true, 890f > var_1.a.x, false), true, true), true);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(func_1(), firstLeadingBit(func_2(Struct_3(vec4<f32>(-1000f, 1000f, -2074f, -292f), vec2<i32>(2147483647i, u_input.c.x))).x), ~(~1u)), reverseBits(~abs(~vec3<u32>(43405u, 0u, 1u))));
    global0 = abs(reverseBits(_wgslsmith_add_u32(countOneBits(4126u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 1u), vec3<u32>(1u, u_input.a.x, u_input.a.x)) % 32u), u_input.d)));
    var var_0 = -(-_wgslsmith_mult_vec2_i32(-vec2<i32>(-7645i, -28018i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, 1i), vec2<i32>(-41978i, -1i))) & -(_wgslsmith_mod_vec2_i32(u_input.c.zx, vec2<i32>(-62361i, u_input.b.x)) >> (func_2(Struct_3(vec4<f32>(-616f, 434f, 891f, 1071f), u_input.b.zy)).zz % vec2<u32>(32u))));
    var_0 = firstLeadingBit(~u_input.b.xz);
    var var_1 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

