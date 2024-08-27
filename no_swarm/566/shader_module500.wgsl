struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: u32,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(1181f, 1006f, -654f, 505f), vec4<f32>(1000f, 846f, -221f, 105f), vec4<f32>(281f, 566f, 1194f, 1175f), vec4<f32>(-2154f, -1680f, 283f, -712f), vec4<f32>(-170f, -472f, -223f, -1368f), vec4<f32>(2475f, 367f, 327f, 1569f), vec4<f32>(-680f, -1268f, -1561f, -1382f), vec4<f32>(-554f, 1296f, 1000f, 241f), vec4<f32>(1000f, 560f, 237f, 594f), vec4<f32>(-734f, 192f, 1132f, -1220f), vec4<f32>(408f, 522f, -230f, 1377f), vec4<f32>(-1596f, 264f, -1360f, 347f), vec4<f32>(1031f, 792f, 275f, 557f), vec4<f32>(-288f, -240f, 262f, 246f), vec4<f32>(1972f, 196f, -222f, 139f), vec4<f32>(-511f, 1015f, -453f, -372f), vec4<f32>(466f, 662f, 1143f, 462f), vec4<f32>(-284f, 2061f, -1310f, -356f), vec4<f32>(-922f, 1000f, 292f, -1947f), vec4<f32>(-970f, -1399f, 1000f, -362f), vec4<f32>(-1480f, -877f, 735f, -1420f));

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_1 = vec3<i32>(max(-_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, u_input.a, u_input.a), vec4<i32>(u_input.a, -22771i, u_input.b.x, u_input.b.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.a), u_input.b)), u_input.b.x), _wgslsmith_dot_vec3_i32(select(~(~vec3<i32>(u_input.b.x, u_input.b.x, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -10303i, -2147483647i), -vec3<i32>(u_input.b.x, 50933i, 2147483647i)), global1.x), abs(max(vec3<i32>(u_input.a, u_input.b.x, u_input.b.x), vec3<i32>(u_input.a, u_input.a, u_input.b.x)) | ~vec3<i32>(u_input.b.x, 1i, 20012i))), -(~(_wgslsmith_clamp_i32(u_input.a, u_input.a, 0i) ^ u_input.a)));
    global0 = array<vec4<f32>, 21>();
    return 5865i;
}

fn func_3() -> vec4<bool> {
    global0 = array<vec4<f32>, 21>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1526f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -382f), -230f)))), 1942f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1724f), _wgslsmith_f_op_f32(-656f - 591f))), _wgslsmith_div_f32(-959f, _wgslsmith_f_op_f32(-1000f - -759f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global1 = select(select(!vec3<bool>(!global1.x, global1.x, true), !vec3<bool>(global1.x, !global1.x, !global1.x), all(!(!global1.zx))), select(!select(!vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, true, global1.x)), !vec3<bool>(any(vec4<bool>(global1.x, global1.x, false, true)), false, all(vec4<bool>(global1.x, global1.x, global1.x, global1.x))), true), !(!select(vec3<bool>(global1.x, false, global1.x), !vec3<bool>(global1.x, global1.x, global1.x), !vec3<bool>(false, global1.x, false))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -535f), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(ceil(-1139f))))));
    let var_1 = _wgslsmith_mult_u32(0u, select(28448u, 1u, global1.x));
    return !(!vec4<bool>(any(select(vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, true))), var_1 == var_1, firstTrailingBit(u_input.b.x) < _wgslsmith_sub_i32(0i, -25933i), true));
}

fn func_2() -> Struct_4 {
    global1 = vec3<bool>(global1.x, global1.x, !all(select(func_3(), select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(true, global1.x, global1.x, global1.x), true), func_3())));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-865f, -2606f, 145f), vec3<f32>(-1606f, 1851f, 872f), vec3<bool>(true, true, global1.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-249f, -1401f, 759f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-771f, _wgslsmith_f_op_f32(min(1022f, -738f)), _wgslsmith_f_op_f32(-998f - 562f)))) - vec3<f32>(-1141f, 1554f, _wgslsmith_f_op_f32(798f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1542f, -2926f) - -507f))));
    let var_1 = Struct_5(vec3<bool>(true, all(vec3<bool>(true, true, func_3().x)), global1.x), 0u, vec2<f32>(var_0.x, var_0.x), all(vec3<bool>(!(!global1.x), global1.x, !(!global1.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0, var_0, false)) * var_0) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.c.x, var_1.c.x, var_0.x)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.c.x)), _wgslsmith_f_op_f32(ceil(var_0.x)), 1120f)));
    var var_3 = var_1;
    return Struct_4(var_1.a.yx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global1.yx;
    var_0 = vec2<bool>(true, true);
    let var_1 = vec2<i32>(max(2147483647i, firstTrailingBit(u_input.b.x)), _wgslsmith_clamp_i32(u_input.a, _wgslsmith_div_i32(-38280i >> (1u % 32u), _wgslsmith_sub_i32(_wgslsmith_div_i32(0i, u_input.b.x), func_1(-780f, vec3<f32>(998f, 763f, -548f)))), u_input.a));
    var_0 = !global1.yy;
    let var_2 = vec3<bool>(-57951i == u_input.a, !all(select(!vec4<bool>(global1.x, var_0.x, global1.x, var_0.x), vec4<bool>(true, true, false, var_0.x), select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(false, var_0.x, false, var_0.x), global1.x))), global1.x);
    var var_3 = func_2();
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -744f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(global0[_wgslsmith_index_u32(1u, 21u)])), ~vec3<i32>(select(0i, ~u_input.a, false), -_wgslsmith_clamp_i32(1i, var_1.x, var_1.x), _wgslsmith_mult_i32(u_input.b.x, max(var_1.x, -58088i))), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(82578u, 1u, 1u)), ~vec3<u32>(4294967295u, 17184u, 4294967295u)), 21u)] + vec4<f32>(_wgslsmith_f_op_f32(min(-798f, _wgslsmith_f_op_f32(-1000f + 1166f))), 1000f, 142f, 601f)));
}

