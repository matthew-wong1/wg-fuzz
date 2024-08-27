struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_3) -> vec4<f32> {
    var var_0 = false == !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1108f)), _wgslsmith_f_op_f32(round(arg_2.a.x)))) < _wgslsmith_f_op_f32(arg_2.a.x - arg_2.a.x));
    var var_1 = arg_2;
    var_0 = !any(vec4<bool>(true, true, true, true)) && true;
    var var_2 = _wgslsmith_clamp_u32(arg_1.x, arg_0 | arg_1.x, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_1, (u_input.a & vec3<u32>(61783u, arg_0, arg_1.x)) ^ vec3<u32>(arg_1.x, 1u, 4294967295u), ~vec3<u32>(4294967295u, arg_0, u_input.a.x) & u_input.a), vec3<u32>(select(19837u, 4294967295u, false) >> ((arg_1.x << (arg_0 % 32u)) % 32u), arg_1.x, arg_0)));
    return vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -835f)) + 1f), _wgslsmith_f_op_f32(f32(-1f) * -1229f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(u_input.a.x, vec3<u32>(1u, 0u, 141224u), Struct_3(vec4<f32>(-633f, -1875f, -363f, 919f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(107f, 472f, 276f, 1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1323f, -1114f, -1036f, -486f) * vec4<f32>(-808f, 303f, -2388f, -494f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(438f, 1198f, 417f, 1056f), vec4<f32>(-131f, 588f, 797f, -1880f))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -248f), _wgslsmith_f_op_f32(-1281f + 305f), _wgslsmith_div_f32(261f, -257f), 504f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-547f, -449f, 2057f, -1126f)))), vec4<bool>(true, 1u >= u_input.a.x, true, any(vec2<bool>(true, true)))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a.yww + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, 1000f))), var_0.a.xwz));
    let var_2 = !(!any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    var var_3 = firstTrailingBit(vec4<i32>(-2147483647i, _wgslsmith_mod_i32(u_input.b.x, -u_input.b.x), -firstLeadingBit(u_input.b.x), -u_input.b.x) >> (firstLeadingBit(~(~vec4<u32>(56036u, u_input.a.x, 0u, u_input.a.x))) % vec4<u32>(32u)));
    var_3 = vec4<i32>(74283i ^ firstTrailingBit(~_wgslsmith_sub_i32(u_input.b.x, 10787i)), ~(-1i), -1i, -_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(1i, 0i, u_input.b.x)), reverseBits(_wgslsmith_sub_vec3_i32(var_3.zxw, u_input.b))));
    return Struct_1(vec2<bool>(false, !(any(vec2<bool>(var_2, var_2)) || var_2)), ~38688u);
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_2(func_2());
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 740f, arg_1.x, 1109f) + vec4<f32>(arg_1.x, -1716f, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, arg_1.x, 197f, arg_1.x), vec4<f32>(arg_1.x, arg_1.x, -297f, -2938f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-434f, -152f, -1262f, 1627f)), var_0.a.a.x)))));
    let var_2 = !vec4<bool>(true, false, var_0.a.a.x, !all(select(vec3<bool>(false, var_0.a.a.x, true), vec3<bool>(var_0.a.a.x, var_0.a.a.x, false), true)));
    var var_3 = select(!var_2, select(var_2, vec4<bool>(func_2().a.x, true, !var_2.x, false), vec4<bool>(false, var_0.a.a.x, true, false)), !select(select(vec4<bool>(true, true, true, true), var_2, !var_0.a.a.x), var_2, !select(vec4<bool>(false, true, var_0.a.a.x, true), var_2, var_0.a.a.x)));
    var var_4 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1813f, -1000f)))))), _wgslsmith_f_op_f32(min(479f, _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(180f + 346f)), -1000f), -1000f));
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec2_i32(~_wgslsmith_div_vec2_i32(-(u_input.b.xz | vec2<i32>(u_input.b.x, u_input.b.x)), ~vec2<i32>(48228i, u_input.b.x)), vec2<i32>(-_wgslsmith_sub_i32(~u_input.b.x, u_input.b.x & 41074i), _wgslsmith_add_i32(_wgslsmith_div_i32(-2147483647i, -u_input.b.x), u_input.b.x)));
    let var_1 = func_1(u_input.b.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1011f, _wgslsmith_f_op_f32(f32(-1f) * -1352f), -597f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-580f + -1602f))), select(!arg_1.xyw, vec3<bool>(arg_0.a.a.x | arg_0.a.a.x, var_0.x != var_0.x, true), select(!arg_1.xxw, select(arg_1.zzz, vec3<bool>(arg_0.a.a.x, true, arg_1.x), arg_1.wyw), vec3<bool>(arg_0.a.a.x, true, arg_1.x))))));
    var var_2 = func_2();
    var var_3 = arg_1.xw;
    var var_4 = u_input.b.yy;
    return func_1(abs(_wgslsmith_mult_i32(-16552i, 0i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, -1857f, -1468f), vec3<f32>(1685f, -310f, 167f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 1406f, -207f)))))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(func_1(u_input.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-130f, 1180f, -1104f)))), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)))));
    var var_1 = var_0.a;
    let var_2 = func_1(-1i, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(758f + 1891f), _wgslsmith_f_op_f32(round(-301f)), -653f))))));
    let var_3 = vec2<u32>(~((~var_0.a.b << (var_1.b % 32u)) << (48250u % 32u)), func_2().b);
    let var_4 = vec3<i32>(u_input.b.x, 1i, -firstTrailingBit(u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, 328f, select(u_input.a.x, ~func_4(var_2, !vec4<bool>(true, var_1.a.x, var_2.a.a.x, true)).b, false), var_2.a.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-412f, -1210f, -270f, 561f) + vec4<f32>(-281f, -528f, -551f, -1039f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -1506f, 374f, -865f), vec4<f32>(-508f, -428f, 242f, 1161f)))))));
}

