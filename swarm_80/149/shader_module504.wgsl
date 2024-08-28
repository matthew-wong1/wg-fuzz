struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(15365u, 67885u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    global0 = array<vec2<u32>, 1>();
    global0 = array<vec2<u32>, 1>();
    global0 = array<vec2<u32>, 1>();
    global0 = array<vec2<u32>, 1>();
    global0 = array<vec2<u32>, 1>();
    return select(i32(-1i) * -35366i, 1i, false);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_2 {
    global0 = array<vec2<u32>, 1>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.x)))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.x)) + arg_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-155f - 295f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.d.x)))));
    global0 = array<vec2<u32>, 1>();
    let var_2 = false;
    return Struct_2(_wgslsmith_mod_vec4_i32(min(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.a, 0i, arg_0.x, arg_0.x), vec4<i32>(1i, u_input.d.x, u_input.a.x, arg_1.a)), -vec4<i32>(arg_0.x, arg_1.a, arg_0.x, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.b, -39617i, arg_1.a, 1i), vec4<i32>(u_input.b.x, u_input.b.x, arg_1.b, -2147483647i))), firstTrailingBit(vec4<i32>(0i, 1i, u_input.a.x, u_input.b.x)) >> (vec4<u32>(17008u, 4294967295u, 1u, 41868u) % vec4<u32>(32u))), vec4<i32>(1i, reverseBits(36342i), 1i, func_3(arg_2.wxx))), _wgslsmith_f_op_f32(-arg_1.d.x), Struct_1(firstTrailingBit(0i), -(~arg_1.a) | firstLeadingBit(~66394i), true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_1.d))), vec2<f32>(_wgslsmith_f_op_f32(floor(-138f)), _wgslsmith_f_op_f32(-arg_1.d.x)), select(vec2<bool>(true, true), vec2<bool>(true, arg_1.c), vec2<bool>(true, var_2))))), Struct_1(1i, countOneBits(~(i32(-1i) * -1i)), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0, 1000f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_2.xx)) - _wgslsmith_f_op_vec2_f32(-arg_2.zy)))), false);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = 1143f;
    var_0 = -1000f;
    return arg_0.c;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    global0 = array<vec2<u32>, 1>();
    var var_0 = func_4(func_2(abs(u_input.d) & arg_3.a.yx, Struct_1(arg_2.b, -_wgslsmith_sub_i32(-35699i, u_input.d.x), arg_2.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.b, arg_0.b) - arg_3.d.d)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.d.x, -1801f, -1764f, arg_2.d.x), vec4<f32>(arg_3.d.d.x, arg_2.d.x, arg_3.b, 724f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.d.x, arg_3.c.d.x, -780f, arg_3.c.d.x) - vec4<f32>(1170f, arg_3.b, arg_2.d.x, arg_0.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, -359f, arg_3.d.d.x, 283f)) - vec4<f32>(1f, 1f, 1f, 1f)))));
    let var_1 = _wgslsmith_mult_u32(1u, 1u) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 56185u), 1u)])) % 32u);
    var_0 = Struct_1(arg_3.a.x, arg_3.d.b, !(arg_0.c.c || arg_3.d.c), vec2<f32>(arg_0.b, arg_3.b));
    var var_2 = Struct_1(arg_3.d.b, arg_0.d.a, false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(302f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-333f, arg_0.b) * -446f))));
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(all(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(false, true)), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))), false, true);
    var var_1 = max(_wgslsmith_sub_vec3_i32(~(select(vec3<i32>(-27072i, 1i, 2147483647i), vec3<i32>(71802i, 0i, u_input.c), vec3<bool>(true, var_0.x, false)) | ~vec3<i32>(9226i, u_input.b.x, u_input.d.x)), -(~(-vec3<i32>(u_input.c, -2147483647i, 28537i)))), vec3<i32>(2147483647i, 1i, -2147483647i));
    let var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(510f, ~min(~vec4<u32>(1u, 4294967295u, 61502u, var_2), vec4<u32>(4294967295u, 35119u, var_2, var_2)) ^ vec4<u32>(~_wgslsmith_div_u32(var_2, var_2), 0u, 53229u, _wgslsmith_clamp_u32(func_1(Struct_2(vec4<i32>(-2147483647i, u_input.d.x, var_1.x, var_1.x), 891f, Struct_1(var_1.x, 2147483647i, true, vec2<f32>(1360f, -653f)), Struct_1(var_1.x, -19394i, false, vec2<f32>(1592f, -687f)), false), u_input.d.x, Struct_1(-29534i, 1i, true, vec2<f32>(379f, 342f)), Struct_2(vec4<i32>(20543i, -1i, -41893i, -1i), -642f, Struct_1(var_1.x, 58205i, var_0.x, vec2<f32>(1902f, -2026f)), Struct_1(u_input.b.x, 0i, false, vec2<f32>(-941f, 337f)), var_0.x)), 15505u, var_2 >> (0u % 32u))), vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(675f))), -434f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(193f - -272f))), 59153u);
}

