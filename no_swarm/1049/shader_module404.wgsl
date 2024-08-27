struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(12439u, 4238u, 17118u, 43838u, 25181u, 7772u, 77397u, 6167u, 18801u, 46955u);

var<private> global1: f32 = 995f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_1.b.zwy);
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    let var_1 = Struct_2(~vec2<i32>(u_input.b.x << (0u % 32u), firstTrailingBit(201i)), Struct_1(firstTrailingBit(select(arg_1.a, vec4<i32>(2147483647i, arg_1.a.x, -1i, u_input.b.x) | vec4<i32>(-2147483647i, 21614i, arg_1.a.x, u_input.a.x), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_vec4_f32(floor(arg_1.b))), Struct_1(~vec4<i32>(u_input.b.x, u_input.b.x, -arg_1.a.x, abs(arg_1.a.x)), _wgslsmith_div_vec4_f32(arg_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.b) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-658f, -1000f, arg_0, 628f)))))));
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1778f, -744f))))), var_1.c.b.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-581f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -173f))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> vec2<u32> {
    global1 = _wgslsmith_f_op_f32(min(arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0, arg_1)) * arg_0)));
    global0 = array<u32, 10>();
    var var_0 = min(~u_input.a.xwz & firstTrailingBit(-(vec3<i32>(20611i, 1i, -36952i) >> (u_input.e.wxx % vec3<u32>(32u)))), _wgslsmith_sub_vec3_i32(u_input.a.zyz, vec3<i32>(2147483647i, firstTrailingBit(1i), _wgslsmith_mult_i32(u_input.b.x ^ arg_1.a.x, _wgslsmith_mult_i32(0i, 1i)))));
    let var_1 = u_input.a;
    global0 = array<u32, 10>();
    return vec2<u32>(u_input.d, _wgslsmith_add_u32(4294967295u, ~min(1u, global0[_wgslsmith_index_u32(~585u, 10u)])));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<bool>) -> vec3<bool> {
    var var_0 = func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b.x))))))), arg_0, !(!arg_2));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(243f, arg_0.b.x)))), _wgslsmith_f_op_f32(max(arg_0.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1544f, 1708f)))))))), arg_0, 141f, Struct_1(vec4<i32>(arg_0.a.x, (arg_1.x ^ u_input.a.x) | _wgslsmith_add_i32(u_input.b.x, arg_1.x), _wgslsmith_dot_vec3_i32(u_input.a.xxx, select(u_input.a.ywx, arg_0.a.wyy, true)), 2147483647i), arg_0.b));
    global1 = _wgslsmith_f_op_f32(-var_1.b.b.x);
    let var_2 = arg_2.xw;
    var var_3 = -520f;
    return select(select(vec3<bool>(false, true, !var_2.x), select(select(!vec3<bool>(false, true, var_2.x), !vec3<bool>(arg_2.x, var_2.x, arg_2.x), arg_2.x), arg_2.xyx, vec3<bool>(var_2.x, true, false)), vec3<bool>(any(vec3<bool>(var_2.x, false, var_2.x)) | false, var_2.x, false)), select(select(arg_2.xwx, arg_2.zxx, any(!vec4<bool>(arg_2.x, var_2.x, true, var_2.x))), arg_2.yxy, !vec3<bool>(true, var_2.x == arg_2.x, any(arg_2.yyz))), arg_2.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> i32 {
    global0 = array<u32, 10>();
    var var_0 = arg_3;
    var var_1 = var_0.b.b;
    var_1 = vec4<f32>(-383f, 142f, _wgslsmith_f_op_f32(floor(1193f)), _wgslsmith_f_op_f32(arg_1.b.x - 391f));
    let var_2 = arg_2;
    return -_wgslsmith_dot_vec3_i32(reverseBits(abs(-arg_3.b.a.zxz)), var_0.b.a.wyy ^ vec3<i32>(select(-2147483647i, u_input.b.x, false), arg_3.c.a.x, arg_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 37898i;
    var_0 = func_4(!(!select(func_1(Struct_1(u_input.a, vec4<f32>(347f, 189f, 744f, 408f)), u_input.a.wyy, vec4<bool>(false, true, false, false)), func_1(Struct_1(vec4<i32>(-2147483647i, u_input.b.x, -16879i, 2147483647i), vec4<f32>(375f, -1304f, 1000f, 262f)), vec3<i32>(u_input.b.x, -16513i, u_input.b.x), vec4<bool>(true, false, true, false)), vec3<bool>(false, false, true))), Struct_1(vec4<i32>(-1i) * -(~u_input.a), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-476f, -628f, 652f, -2171f)))))), true, Struct_2(vec2<i32>(~u_input.b.x, _wgslsmith_mod_i32(firstTrailingBit(u_input.b.x), ~(-40132i))), Struct_1(vec4<i32>(abs(-27388i), u_input.a.x, u_input.a.x, u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1837f), _wgslsmith_f_op_f32(-1000f * -1154f), 357f, -747f)), Struct_1(vec4<i32>(-u_input.b.x, 23683i, u_input.b.x | -1i, ~2813i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1086f, -1004f, 256f, 391f)))));
    let var_1 = Struct_1(u_input.a, vec4<f32>(_wgslsmith_f_op_f32(abs(-718f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -859f)), _wgslsmith_f_op_f32(func_3(-988f, Struct_1(_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, 11471i, u_input.b.x, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(174f, -171f, 869f, 554f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-974f + 766f)), _wgslsmith_f_op_f32(-828f + _wgslsmith_f_op_f32(f32(-1f) * -1114f)))));
    global1 = _wgslsmith_f_op_f32(-var_1.b.x);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(step(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-588f, var_1.b.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, var_1.b.x))))), var_1, _wgslsmith_f_op_f32(-116f - -1124f), var_1);
    var var_3 = Struct_1(firstLeadingBit(firstLeadingBit(vec4<i32>(var_1.a.x, var_1.a.x, ~1897i, -1i))), vec4<f32>(var_1.b.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.x * var_2.a), _wgslsmith_f_op_f32(f32(-1f) * -248f)), var_2.a), -152f, _wgslsmith_f_op_f32(step(-689f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(244f)), _wgslsmith_f_op_f32(func_3(var_1.b.x, Struct_1(var_1.a, vec4<f32>(439f, var_2.c, var_2.a, -1453f)))))))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(1265f)), _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global0 = array<u32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~21519u));
}

