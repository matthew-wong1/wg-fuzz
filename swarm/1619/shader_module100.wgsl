struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: u32,
    e: vec2<u32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: f32) -> vec3<f32> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2, arg_3, -235f, arg_2), vec4<f32>(1073f, -1387f, 396f, arg_3))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-746f - 1411f)), arg_2, arg_3) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 681f, _wgslsmith_f_op_f32(floor(-420f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, arg_2, 984f, arg_3) + vec4<f32>(-885f, 1225f, arg_3, arg_2)))));
    var var_1 = select(!vec2<bool>(!all(vec2<bool>(false, false)), true), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), all(vec3<bool>(false, true, false)))), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), true), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true))), vec2<bool>(true, 296f >= arg_3));
    var var_2 = select(vec3<bool>(!(!var_1.x == var_1.x), !var_1.x, true), !(!select(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, true, var_1.x), false), !vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(false, false, var_1.x))), vec3<bool>(var_1.x, true, false));
    var var_3 = Struct_1(select((vec2<i32>(-10787i, arg_1) | vec2<i32>(2147483647i, arg_1)) | -vec2<i32>(arg_1, arg_1), vec2<i32>(arg_1, arg_1), vec2<bool>(any(vec2<bool>(var_1.x, false)), true)) | vec2<i32>(reverseBits(select(arg_1, -9693i, var_2.x)), -2147483647i), 11557i);
    var_3 = Struct_1(var_3.a, 8761i);
    return var_0.zzz;
}

fn func_2() -> Struct_2 {
    let var_0 = true;
    var var_1 = Struct_1(abs(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-54988i, 0i), vec2<i32>(-20504i, 0i)) >> (~vec2<u32>(u_input.a.x, 29u) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(56500i, 1i), ~vec2<i32>(1i, -25658i)))), 2147483647i);
    var var_2 = select(vec4<bool>(!var_0, all(vec2<bool>(any(vec2<bool>(var_0, true)), false | var_0)), any(vec2<bool>(var_0, true)), _wgslsmith_f_op_f32(-721f - 381f) >= _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(420f, 664f), _wgslsmith_div_f32(414f, -573f), true))), !select(vec4<bool>(true, var_0, var_0, false), !select(vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(var_0, var_0, var_0, var_0), var_0), vec4<bool>(var_0, var_0, false, true)), true);
    var var_3 = var_1.a.x;
    var_1 = Struct_1(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(var_1.a, var_1.a), vec2<i32>(1i, 0i)), max(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, 31837i, var_1.b, -1i), vec4<i32>(var_1.b, 28023i, var_1.a.x, -2147483647i)) >> (61554u % 32u), 6499i));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(85804u, var_1.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1430f, 142f))), -579f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -345f), -922f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -771f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1290f * -998f) - 586f), _wgslsmith_f_op_f32(1050f - _wgslsmith_f_op_f32(621f + 234f)))));
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    let var_0 = func_2();
    var var_1 = ~arg_0.x;
    var_1 = ~_wgslsmith_dot_vec3_u32(countOneBits(arg_0), arg_0);
    let var_2 = func_2();
    var var_3 = firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i) << (~vec4<u32>(0u, 0u, arg_0.x, 87572u) % vec4<u32>(32u))) | min(~abs(vec4<i32>(1i, 10702i, 1i, 36452i)) & select(max(vec4<i32>(6348i, 1i, -34847i, 0i), vec4<i32>(-54680i, -30218i, 12281i, 0i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 34059i, 630i, 1i), vec4<i32>(-1i, 2147483647i, 16897i, -20978i)), true), vec4<i32>(~0i, 48182i, 1i, abs(0i)));
    return StorageBuffer(-1049f, min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c ^ 53493u, 11639u), _wgslsmith_mult_vec4_u32(vec4<u32>(45881u, 52907u, arg_0.x, u_input.a.x), ~vec4<u32>(1u, arg_0.x, u_input.c, arg_0.x))), vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, arg_0.x), ~(~1u), reverseBits(u_input.b.x), ~countOneBits(4294967295u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-371f, var_0.a.x, -1293f, var_0.b), vec4<f32>(-833f, -607f, var_0.a.x, var_2.a.x)))) * _wgslsmith_div_vec4_f32(vec4<f32>(189f, var_0.a.x, var_0.a.x, var_2.b), vec4<f32>(-643f, -1139f, 1742f, var_0.b))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, var_0.b, -1526f, var_2.b) - vec4<f32>(var_2.a.x, 1543f, var_0.a.x, -569f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_2.b, var_0.b, var_2.a.x))))), ~40973u, _wgslsmith_div_vec2_u32(min(_wgslsmith_clamp_vec2_u32(arg_0.zx, vec2<u32>(0u, 0u), vec2<u32>(4294967295u, arg_0.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.x, 26340u), vec2<u32>(u_input.a.x, u_input.c), vec2<u32>(arg_0.x, 0u))) & arg_0.yx, select(firstTrailingBit(~u_input.b.xz), (arg_0.yy | u_input.a.zz) | ~u_input.b.zy, any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, any(vec4<bool>(true, true, true, true)) && (all(vec4<bool>(false, true, false, true)) || any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false))));
    var var_1 = 271f;
    var var_2 = !var_0.x;
    let x = u_input.a;
    s_output = func_1(u_input.a);
}

