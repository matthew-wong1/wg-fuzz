struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 30815u;

var<private> global1: array<Struct_2, 14>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: bool) -> bool {
    let var_0 = _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), countOneBits(vec2<u32>(49929u, 1u))), ~(~vec2<u32>(4294967295u, 4294967295u)))) ^ _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(98539u, 116594u, 13224u))), ~abs(13447u));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(330f, _wgslsmith_f_op_f32(1243f + 436f), 1098f))))));
    var var_2 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, 1114f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(276f, -1645f), var_1.x)))) - 344f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-113f * _wgslsmith_div_f32(-1265f, 1219f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -302f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_1.x)), 2363f)), select(true, true, true)))), var_1.x);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -985f);
    let var_4 = var_1.x;
    return (arg_0 & 0i) < -2147483647i;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec4<f32>) -> vec3<f32> {
    global1 = array<Struct_2, 14>();
    global1 = array<Struct_2, 14>();
    var var_0 = global1[_wgslsmith_index_u32(1u, 14u)];
    var var_1 = vec3<bool>(false || func_3(1i, true), all(vec3<bool>(true, true, (4294967295u == var_0.c.x) | true)), true);
    var_0 = global1[_wgslsmith_index_u32(var_0.c.x >> (0u % 32u), 14u)];
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a, var_0.a)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_0.zxy, vec3<f32>(arg_2.x, -1047f, arg_2.x))) - arg_0.zwy), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(var_0.b.a.x, 179f, 110f)) + vec3<f32>(1000f, var_0.b.a.x, arg_0.x)), !all(vec4<bool>(true, var_1.x, var_1.x, true)))), vec3<bool>(true, 541f >= _wgslsmith_f_op_f32(floor(arg_2.x)), !(var_1.x | false)))));
}

fn func_1() -> f32 {
    let var_0 = vec3<u32>(1u, 1u, 1u);
    global1 = array<Struct_2, 14>();
    var var_1 = 1u;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-300f, 203f, _wgslsmith_f_op_f32(select(771f, 1289f, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-244f, -719f, -362f) * _wgslsmith_f_op_vec3_f32(func_2(vec4<f32>(230f, -918f, -1898f, -1306f), vec2<f32>(1000f, 1367f), vec4<f32>(-1000f, -1372f, -577f, 898f)))))), vec4<i32>(~abs(i32(-1i) * -57990i), select(0i, u_input.a.x, any(select(vec2<bool>(false, false), vec2<bool>(true, false), true))), -2147483647i, -(~32i)), abs(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a.x, 13204i, u_input.a.x, -39845i)), -u_input.a)));
    var_1 = 42692u;
    return -917f;
}

fn func_4(arg_0: f32, arg_1: f32) -> Struct_1 {
    let var_0 = vec2<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(select(838u, 1u, false) & _wgslsmith_dot_vec3_u32(vec3<u32>(46670u, 0u, 0u), vec3<u32>(1u, 4294967295u, 54949u)), 1u), ~firstTrailingBit(1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(abs(1u), firstTrailingBit(77349u) | 1u, 1u & _wgslsmith_dot_vec2_u32(vec2<u32>(30169u, 36850u), vec2<u32>(4485u, 6555u)), _wgslsmith_mult_u32(~1u, _wgslsmith_div_u32(0u, 5112u)))));
    global0 = var_0.x;
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 14u)];
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-var_1.b.a), var_1.b, ~firstTrailingBit(_wgslsmith_mult_vec2_u32(var_0, var_1.c)) >> (~vec2<u32>(12606u, 4294967295u) % vec2<u32>(32u)));
    global1 = array<Struct_2, 14>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(var_2.a * var_2.b.a), vec4<i32>(_wgslsmith_mod_i32(reverseBits(37450i), ~(~var_1.b.c)), _wgslsmith_mult_i32(firstTrailingBit(56360i), 1i), var_2.b.b.x, u_input.a.x), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-187f)) + _wgslsmith_f_op_f32(ceil(-556f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-655f - 1000f), _wgslsmith_div_f32(469f, 1039f))))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(882f)), _wgslsmith_f_op_f32(f32(-1f) * -458f)))), _wgslsmith_f_op_f32(func_1()))));
    global0 = max(1u, 1u);
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(select(var_0.a.x, -520f, true));
    var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1742f * 121f), _wgslsmith_f_op_f32(ceil(var_2)))) - var_0.a.x), 158f, _wgslsmith_f_op_f32(f32(-1f) * -260f)), vec4<i32>(2147483647i, firstLeadingBit(i32(-1i) * -24936i), u_input.a.x, ~var_0.c), countOneBits(firstLeadingBit(-8151i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.a.xy)))), abs(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(50962u, 96994u)) | countOneBits(vec2<u32>(80717u, 54117u)), reverseBits(vec2<u32>(9960u, 80972u)))));
}

