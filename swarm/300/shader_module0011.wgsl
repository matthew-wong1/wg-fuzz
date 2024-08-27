struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24>;

var<private> global1: Struct_2;

var<private> global2: u32 = 4294967295u;

var<private> global3: u32 = 88124u;

var<private> global4: Struct_2 = Struct_2(Struct_1(33667u), vec4<i32>(i32(-2147483648), 1i, 1i, -1i), 8457i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = vec2<bool>(false && !(arg_1.x == _wgslsmith_f_op_f32(arg_1.x + -584f)), false);
    var var_1 = !(!select(!select(vec3<bool>(false, true, true), vec3<bool>(false, var_0.x, false), true), vec3<bool>(!var_0.x, true, !var_0.x), true));
    let var_2 = arg_0;
    let var_3 = vec3<bool>(false, true, true);
    let var_4 = vec2<bool>(select(var_1.x, 1840f >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-397f, arg_1.x, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -203f))), (-1270f != _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x))) || true), _wgslsmith_f_op_f32(arg_1.x * arg_1.x) < 1336f);
    return arg_0;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    global4 = Struct_2(arg_1, _wgslsmith_mult_vec4_i32(-arg_2.b, -_wgslsmith_add_vec4_i32(vec4<i32>(arg_0, 20060i, global1.c, global1.b.x), vec4<i32>(global4.b.x, u_input.b.x, 53925i, 25873i))) | vec4<i32>(~abs(-1i), -2147483647i, abs(45594i), abs(0i)), ~(-global1.c << (global1.a.a % 32u)));
    return func_2(arg_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-589f, -858f))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = global4.a;
    global3 = ~u_input.a;
    global2 = _wgslsmith_dot_vec3_u32(((_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.a, 1u, 1u), vec3<u32>(arg_2.a, 60247u, u_input.a)) | abs(vec3<u32>(20438u, 55529u, 1u))) << (vec3<u32>(~arg_2.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, global1.a.a), vec3<u32>(9287u, arg_3.a.a, arg_3.a.a)), global4.a.a) % vec3<u32>(32u))) & vec3<u32>(~1u, ~1u, firstLeadingBit(arg_1 & arg_1)), abs(~(~vec3<u32>(26207u, 4294967295u, u_input.a))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-288f)) * _wgslsmith_f_op_f32(min(-1051f, -588f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-2448f)), _wgslsmith_div_f32(262f, 1650f))) + -906f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(456f))) - 878f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-511f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(553f - 153f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-564f - 1946f), 438f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-675f, _wgslsmith_f_op_f32(306f - -2182f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-453f * -1533f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -389f)))));
    return select(vec4<bool>(false, all(vec2<bool>(false, select(false, false, false))), !any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false)), true), vec4<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), all(vec3<bool>(true, false, true)))), !any(vec3<bool>(true, true, true)), true, all(vec3<bool>(true, true, true)) || select(true, true, true)), !(!any(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-9516i, Struct_1(~global1.a.a), Struct_2(global1.a, _wgslsmith_sub_vec4_i32(global1.b, vec4<i32>(countOneBits(global4.b.x), global4.b.x ^ 1i, u_input.b.x, ~u_input.b.x)), u_input.b.x), i32(-1i) * -(~(-53478i)));
    let var_1 = select(func_3(vec2<i32>(global4.b.x, u_input.b.x), 17325u, global4.a, Struct_2(global4.a, global1.b, -firstTrailingBit(-7890i))), !vec4<bool>(all(vec4<bool>(true, true, true, true)), false, true, !select(false, false, true)), !all(vec4<bool>(true, true, true, true)));
    var var_2 = !var_1.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1590f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1942f, 490f)))), 945f, -280f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1107f + -1084f)) - _wgslsmith_f_op_f32(f32(-1f) * -1767f))) - global0[_wgslsmith_index_u32(~1u, 24u)]);
    let var_4 = func_2(Struct_2(func_2(func_2(Struct_2(Struct_1(4846u), vec4<i32>(global4.c, 2678i, 2147483647i, var_0.b.x), global1.b.x), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3.x, -246f)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3.x, 1721f)))).a, abs(select(global1.b, vec4<i32>(0i, -2147483647i, global1.b.x, 11454i), func_3(vec2<i32>(1i, u_input.b.x), global1.a.a, global1.a, Struct_2(Struct_1(18016u), global4.b, u_input.b.x)).x)), 1i), vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), -557f));
    var_2 = !var_1.x;
    let var_5 = vec4<f32>(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(abs(534f))), -787f, -831f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-876f)), var_3.x)));
    global1 = var_4;
    let var_6 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.a.a, min(_wgslsmith_dot_vec4_u32(vec4<u32>(60318u, 62145u, var_0.a.a, 5991u), vec4<u32>(3216u, 6471u, global4.a.a, global1.a.a)), ~var_0.a.a)), 24u)] - _wgslsmith_f_op_vec4_f32(var_3 * _wgslsmith_f_op_vec4_f32(-var_3)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_4.b.wyx, vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(global1.b, vec4<i32>(-4757i, 39824i, -5008i, 1i)), func_1(u_input.b.x, Struct_1(global1.a.a), Struct_2(var_4.a, vec4<i32>(global4.b.x, global1.c, global4.b.x, global4.c), -17667i), -6935i).b.x), global1.b.x, firstLeadingBit(11692i))));
}

