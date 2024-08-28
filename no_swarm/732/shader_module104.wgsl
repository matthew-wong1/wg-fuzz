struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(59173i), Struct_1(25917i), Struct_1(-20139i), Struct_1(i32(-2147483648)), Struct_1(-9445i), Struct_1(-36726i), Struct_1(1i), Struct_1(24347i), Struct_1(-7979i), Struct_1(6043i), Struct_1(1i), Struct_1(2157i), Struct_1(41767i), Struct_1(i32(-2147483648)), Struct_1(-35783i), Struct_1(-38226i), Struct_1(-13012i), Struct_1(32356i), Struct_1(-512i));

var<private> global1: array<u32, 7> = array<u32, 7>(7677u, 1u, 36490u, 15999u, 4294967295u, 4294967295u, 63427u);

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(-26027i), Struct_1(1i), Struct_1(-59278i), Struct_1(449i), Struct_1(-5642i), Struct_1(-46541i), Struct_1(2147483647i), Struct_1(-425i), Struct_1(74326i), Struct_1(-20543i), Struct_1(2147483647i), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(1i), Struct_1(-1i), Struct_1(524i), Struct_1(-26917i), Struct_1(7256i), Struct_1(0i), Struct_1(-3971i), Struct_1(2147483647i));

var<private> global3: bool;

var<private> global4: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(1u, 45724u), vec2<u32>(16769u, 1u), vec2<u32>(23688u, 3582u), vec2<u32>(84245u, 29491u), vec2<u32>(0u, 0u), vec2<u32>(3806u, 19195u), vec2<u32>(56445u, 4294967295u), vec2<u32>(24448u, 75449u), vec2<u32>(739u, 3657u), vec2<u32>(4294967295u, 1u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = abs(~abs(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(abs(4294967295u), 7u)])));
    var var_1 = 73236u;
    var var_2 = Struct_1(~arg_0);
    var var_3 = Struct_1(_wgslsmith_clamp_i32(abs(firstTrailingBit(30628i) & var_2.a), ~var_2.a, reverseBits(6629i)));
    var var_4 = Struct_1(max(1i, arg_0));
    return 21203u;
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: vec2<u32>) -> vec2<bool> {
    let var_0 = global2[_wgslsmith_index_u32(~func_3(reverseBits(arg_0)) | 1u, 21u)];
    global4 = array<vec2<u32>, 10>();
    return vec2<bool>(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1758f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1213f, -521f))), true, true), true);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = true || any(!select(vec2<bool>(true, false), func_2(arg_0.a, vec3<i32>(81996i, -1i, 10017i), u_input.b), vec2<bool>(true, false)));
    let var_1 = vec4<i32>(countOneBits(arg_2.a), reverseBits(7970i), -arg_2.a, 0i);
    var_0 = func_3(var_1.x ^ _wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_2.a, arg_2.a), ~(-34701i))) == 1u;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(1449f)), 1f) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1226f, -764f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-365f, 146f))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1755f, -946f), vec2<f32>(429f, -110f)))))));
    global0 = array<Struct_1, 19>();
    return vec4<i32>(-1i) * -(~(~var_1));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = ~(~_wgslsmith_clamp_vec2_i32(firstTrailingBit(arg_2.wx), arg_2.xz, arg_2.zx) & arg_2.yx);
    let var_1 = Struct_1(-19101i);
    global3 = select(!(!select(true, false, true)), -633f >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x + -106f))), true) | false;
    global2 = array<Struct_1, 21>();
    var_0 = vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(~(-22981i), max(76687i, arg_2.x)), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, 12721i) ^ arg_2.zy, vec2<i32>(-1i, 2147483647i)), -firstTrailingBit(vec2<i32>(arg_2.x, arg_3.a)));
    return StorageBuffer(var_1.a, vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], global1[_wgslsmith_index_u32(56545u, 7u)], u_input.d << (_wgslsmith_add_u32(28363u, u_input.a) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~abs(vec4<i32>(1i, 1i, 1i, 1i)));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(666f - -726f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, 1075f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-603f, 1398f) + vec2<f32>(433f, 490f))))), Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(func_1(Struct_1(var_0.x), Struct_1(11264i), global2[_wgslsmith_index_u32(1u, 21u)]), vec4<i32>(var_0.x, 12442i, -48116i, 0i)), reverseBits(vec4<i32>(2147483647i, 0i, var_0.x, var_0.x)))), ~(~firstLeadingBit(vec4<i32>(4647i, 380i, 20341i, var_0.x))) >> (~vec4<u32>(abs(0u), 25603u, _wgslsmith_div_u32(u_input.b.x, 4294967295u), ~4294967295u) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(~56270u, 19u)]);
}

