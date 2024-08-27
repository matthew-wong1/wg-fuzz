struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<f32> = vec3<f32>(268f, -259f, -700f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: vec3<u32>) -> f32 {
    let var_0 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(2147483647i, _wgslsmith_mult_i32(-arg_2, _wgslsmith_mult_i32(arg_2, arg_2))), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, _wgslsmith_div_i32(arg_2, 2147483647i)), -arg_2), firstLeadingBit(firstLeadingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_2, arg_2, 122465i, arg_2), vec4<i32>(arg_2, 2147483647i, arg_2, -56127i) ^ vec4<i32>(arg_2, arg_2, arg_2, arg_2)))), 7193i & firstTrailingBit(-(~16018i)));
    global1 = global0.d;
    let var_1 = 24481i;
    var var_2 = ~countOneBits(~(~select(vec4<u32>(arg_1.c, 40190u, u_input.c.x, 79106u), vec4<u32>(u_input.a, 0u, global0.a, u_input.b), vec4<bool>(arg_1.b, true, true, global0.b))));
    let var_3 = var_1 < -9780i;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global1.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<u32>) -> bool {
    let var_0 = arg_2.ww;
    var var_1 = -arg_0.zx;
    let var_2 = 27539u;
    var var_3 = Struct_1(global0.c, true & select(false, any(vec3<bool>(arg_1.b, global0.b, false)) == global0.b, !(arg_1.c < var_0.x)), firstTrailingBit(31890u), vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-190f * global0.d.x))), arg_1, -35293i, u_input.c)), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1940f, -386f))))));
    let var_4 = arg_1;
    return arg_1.b;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    global0 = Struct_1(~(15923u | abs(min(u_input.a, global0.a))), any(select(!select(vec2<bool>(global0.b, global0.b), vec2<bool>(true, global0.b), true), select(!vec2<bool>(false, global0.b), !vec2<bool>(false, global0.b), func_2(vec4<i32>(-1i, 28419i, -74959i, 1i), Struct_1(global0.a, global0.b, 11308u, vec3<f32>(624f, -381f, -3350f)), vec4<u32>(32833u, 35946u, global0.c, global0.c))), vec2<bool>(any(vec4<bool>(global0.b, global0.b, true, global0.b)), true))), u_input.c.x, _wgslsmith_f_op_vec3_f32(-global0.d));
    var var_0 = select(vec3<bool>(func_2(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1293i, 1i), vec2<i32>(-26922i, -7805i)), 1i, 1i, -72084i >> (0u % 32u)), Struct_1(_wgslsmith_sub_u32(38404u, 0u), !global0.b, u_input.a, _wgslsmith_div_vec3_f32(vec3<f32>(114f, global0.d.x, -1522f), arg_0.zyx)), vec4<u32>(global0.a | u_input.c.x, 17468u, _wgslsmith_add_u32(global0.a, 2521u), global0.c)), true, global0.b), !(!(!(!vec3<bool>(false, false, global0.b)))), !(!select(vec3<bool>(global0.b, true, global0.b), select(vec3<bool>(global0.b, false, global0.b), vec3<bool>(false, global0.b, false), true), !global0.b)));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1613f, global1.x, _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(arg_0.zxw)), global0.d))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-292f, 495f, arg_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(358f, global1.x, 245f) - global0.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1259f, global0.d.x, 607f)))))));
    var_0 = !(!select(select(!vec3<bool>(true, global0.b, var_0.x), select(vec3<bool>(false, var_0.x, true), vec3<bool>(false, false, global0.b), vec3<bool>(var_0.x, global0.b, global0.b)), true), !(!vec3<bool>(false, var_0.x, var_0.x)), select(vec3<bool>(global0.b, var_0.x, false), !vec3<bool>(var_0.x, true, false), false)));
    let var_1 = !vec2<bool>(false, global0.b);
    return Struct_1(39734u, false, _wgslsmith_add_u32(4294967295u, 0u), vec3<f32>(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(global0.d.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -692f) + -1239f)), -188f));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: bool) -> StorageBuffer {
    var var_0 = ~vec4<i32>(1i, i32(-1i) * -(~(-33874i)), -select(19923i, -44934i, true), -2147483647i >> (~arg_2.c % 32u));
    var var_1 = vec2<bool>(arg_2.b, true);
    var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, -2147483647i, var_0.x, var_0.x & -10054i) >> (abs(vec4<u32>(arg_1.x, arg_1.x, u_input.b, 101704u)) % vec4<u32>(32u)), vec4<i32>(~(-41329i), -firstTrailingBit(-1i), 1i, max(var_0.x, 683i))) | ~(~(-(~vec4<i32>(var_0.x, var_0.x, var_0.x, -65766i))));
    var var_2 = func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1235f, -1629f, global1.x, global0.d.x)))), vec4<f32>(-2420f, 785f, 506f, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1152f, -756f, -805f, arg_2.d.x))).d.x)));
    let var_3 = Struct_1(select(arg_2.a, ~(~(~arg_1.x)), all(select(vec3<bool>(global0.b, true, arg_3), vec3<bool>(true, true, arg_3), vec3<bool>(var_1.x, global0.b, true))) | func_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, arg_2.d.x, global0.d.x, global0.d.x)))).b), !func_1(vec4<f32>(_wgslsmith_f_op_f32(global0.d.x - -571f), 1135f, _wgslsmith_f_op_f32(select(-1747f, -1213f, false)), _wgslsmith_div_f32(var_2.d.x, -737f))).b, arg_0, _wgslsmith_f_op_vec3_f32(var_2.d + vec3<f32>(1830f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.d.x + var_2.d.x))), arg_2.d.x)));
    return StorageBuffer((_wgslsmith_sub_vec4_i32(-vec4<i32>(var_0.x, -2147483647i, var_0.x, var_0.x), vec4<i32>(-1316i, var_0.x, var_0.x, 67060i) ^ vec4<i32>(var_0.x, 59740i, var_0.x, 8583i)) ^ -vec4<i32>(51856i, 16164i, 28059i, var_0.x)) | _wgslsmith_mult_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, var_0.x, -30244i, var_0.x), vec4<i32>(2147483647i, 53257i, 2147483647i, 1i), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<i32>(var_0.x << (41338u % 32u), 24609i, firstLeadingBit(33692i), ~(-5416i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec4<i32>(-40593i, -abs(_wgslsmith_div_i32(1i, -24314i)), 1i, -abs(0i));
    global1 = global0.d;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + 342f))), _wgslsmith_f_op_f32(-448f - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(364f - 353f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.d.x)))))), _wgslsmith_f_op_f32(-global0.d.x), global0.d.x);
    let var_2 = -1357f;
    global1 = _wgslsmith_f_op_vec3_f32(-var_1.yxx);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) + _wgslsmith_f_op_f32(-1145f - global1.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(589f - global1.x), _wgslsmith_f_op_f32(-var_2)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x * -1104f)))))));
    global1 = global0.d;
    let x = u_input.a;
    s_output = func_4(countOneBits(global0.a), u_input.c.xz, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-464f, var_3, var_3, -1000f)))), any(vec2<bool>(!select(true, true, false), max(global0.c, u_input.b) < 91183u)));
}

