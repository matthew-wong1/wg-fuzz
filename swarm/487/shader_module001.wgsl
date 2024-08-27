struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -204f;

var<private> global1: array<Struct_2, 30>;

var<private> global2: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(681f, -445f), vec2<f32>(-100f, 942f), vec2<f32>(922f, -598f), vec2<f32>(-337f, 1000f), vec2<f32>(-1733f, -1356f), vec2<f32>(-1849f, -873f), vec2<f32>(1398f, -690f), vec2<f32>(1354f, 592f), vec2<f32>(-1031f, -653f), vec2<f32>(-783f, -384f), vec2<f32>(766f, 690f), vec2<f32>(-1152f, -1253f), vec2<f32>(-1169f, -1257f), vec2<f32>(900f, 1363f), vec2<f32>(919f, -236f), vec2<f32>(662f, -527f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = ~u_input.a << (~u_input.a % 32u);
    var var_1 = global1[_wgslsmith_index_u32(arg_1.e.x, 30u)];
    let var_2 = -_wgslsmith_mult_vec2_i32(var_1.b.c, _wgslsmith_sub_vec2_i32(vec2<i32>(-2255i, -2147483647i), vec2<i32>(-1i, arg_1.c.x)) ^ firstTrailingBit(var_1.d.c)) >> (vec2<u32>(select(arg_1.e.x, 0u, false) >> (var_1.d.e.x % 32u), 1u) % vec2<u32>(32u));
    global2 = array<vec2<f32>, 16>();
    var var_3 = firstLeadingBit(vec2<u32>(_wgslsmith_mod_u32(1u & ~arg_1.e.x, u_input.a), abs(arg_1.e.x)));
    return vec4<u32>(~var_3.x & var_1.d.e.x, var_3.x, 1u, var_3.x ^ var_1.c.x);
}

fn func_3() -> f32 {
    global0 = _wgslsmith_f_op_f32(ceil(-201f));
    var var_0 = ~vec2<u32>(~(~4294967295u) | ~u_input.a, ~u_input.a);
    var var_1 = true;
    global1 = array<Struct_2, 30>();
    var_0 = vec2<u32>(~min(u_input.a, u_input.a) & u_input.a, u_input.a) & _wgslsmith_div_vec2_u32(firstTrailingBit(func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(4202u, 4294967295u, 75085u), vec3<u32>(var_0.x, 1u, u_input.a)), Struct_1(vec4<i32>(0i, 0i, 16306i, -11602i), 1000f, vec2<i32>(1i, -1i), -120f, vec3<u32>(var_0.x, var_0.x, 101719u))).xw), ~(vec2<u32>(u_input.a, 22838u) >> (vec2<u32>(u_input.a, 83676u) % vec2<u32>(32u))) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 39231u), vec2<u32>(19865u, var_0.x)), vec2<u32>(0u, u_input.a)) % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1997f + -232f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1037f * 747f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-275f, 543f))), _wgslsmith_f_op_f32(select(-384f, -1153f, true)), true)), all(vec3<bool>(true, true, true)) && false));
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    global1 = array<Struct_2, 30>();
    global1 = array<Struct_2, 30>();
    var var_0 = Struct_2(arg_0, Struct_1(-min(~vec4<i32>(2147483647i, -19377i, -1i, -9915i), ~vec4<i32>(-94385i, 16895i, 1i, 15979i)), _wgslsmith_f_op_f32(func_3()), -(~vec2<i32>(-23694i, 8236i)), -1000f, arg_0.zyw), ~arg_0.wy, Struct_1(firstLeadingBit(min(vec4<i32>(1i, -2147483647i, 1i, 663i), abs(vec4<i32>(-1i, 1i, -30852i, -1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(421f))), abs(abs(vec2<i32>(2147483647i, 32506i))), -475f, vec3<u32>(22537u, 52425u, 41814u)));
    let var_1 = vec3<i32>(var_0.d.a.x, 0i, ~min(var_0.b.a.x, _wgslsmith_mod_i32(-var_0.b.a.x, var_0.d.a.x)));
    let var_2 = Struct_2(min(arg_0, countOneBits(~arg_0)), var_0.b, firstTrailingBit(~vec2<u32>(~39534u, _wgslsmith_sub_u32(1u, arg_0.x))), var_0.d);
    return _wgslsmith_div_i32(_wgslsmith_mod_i32(~var_1.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(var_1.x, 2213i), vec2<i32>(var_2.b.a.x, 0i))), -54293i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 2507f;
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-891f, -1379f, 583f, 1000f), vec4<f32>(-1000f, -1168f, -676f, 2156f))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 476f, -531f, -320f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(833f, 1000f, -450f, 522f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1434f, -1989f, -929f, 1765f) * vec4<f32>(-1039f, 1958f, -1918f, -1036f)))));
    var var_1 = _wgslsmith_div_u32(1u, u_input.a);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)))))));
    var var_3 = select(vec2<bool>((u_input.a < max(4294967295u, u_input.a)) | all(vec4<bool>(true, true, true, true)), true), !vec2<bool>(!any(vec3<bool>(false, false, true)), true), true);
    var var_4 = max(func_2(vec4<u32>(18587u, _wgslsmith_mult_u32(u_input.a, u_input.a), ~7673u, ~u_input.a) << (~func_1(u_input.a, Struct_1(vec4<i32>(2147483647i, -14831i, 0i, 1i), var_2.x, vec2<i32>(2848i, 1i), var_0.x, vec3<u32>(u_input.a, 1u, u_input.a))) % vec4<u32>(32u))), abs(reverseBits(_wgslsmith_mod_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(6945i, 2147483647i), vec2<i32>(16247i, -9599i))))));
    var var_5 = 27375u;
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, 1i, -20263i, 9880i), ~vec4<i32>(0i, -38213i, 2147483647i, -1i)), _wgslsmith_mod_i32(1i, max(32162i, 0i))), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1798f, -724f) * _wgslsmith_f_op_f32(func_3())), vec4<i32>(0i, 1i, ~firstLeadingBit(abs(1i)), func_2(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 6167u, 1u, 154070u), vec4<u32>(u_input.a, u_input.a, u_input.a, 2908u)))));
}

