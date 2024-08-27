struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(22571i, -1021f, false, Struct_1(vec3<i32>(30665i, -21238i, i32(-2147483648)))), Struct_2(54318i, -774f, true, Struct_1(vec3<i32>(29948i, i32(-2147483648), -1i))));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_3) -> vec3<i32> {
    var var_0 = 1i;
    global0 = array<Struct_3, 7>();
    global1 = array<Struct_2, 2>();
    let var_1 = true;
    let var_2 = Struct_3(select(47514u, u_input.b, var_1) > (34907u >> (u_input.c.x % 32u)), arg_3.b, vec4<i32>(firstLeadingBit(1534i), select(countOneBits(countOneBits(arg_3.d.x)), ~1590i, !(arg_2.x >= 38688i)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, 1i) ^ _wgslsmith_div_i32(1i, u_input.a), max(arg_3.c.x & 12635i, _wgslsmith_sub_i32(-23009i, arg_2.x))), -max(_wgslsmith_dot_vec2_i32(arg_2.zz, vec2<i32>(1i, u_input.a)), firstTrailingBit(arg_2.x))), vec2<i32>(arg_2.x, u_input.a));
    return vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(var_2.c, var_2.c), _wgslsmith_div_vec4_i32(vec4<i32>(arg_2.x, arg_2.x, u_input.a, 0i), select(vec4<i32>(-2147483647i, var_2.b, u_input.a, -55497i), vec4<i32>(arg_2.x, -1i, 2147483647i, arg_3.d.x), false)) << (vec4<u32>(~u_input.b, ~14529u, 4294967295u, 1u) % vec4<u32>(32u))), 1i, -reverseBits(~(i32(-1i) * -2147483647i)));
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = select(select(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, true), -(~44581i) <= _wgslsmith_dot_vec3_i32(countOneBits(arg_0.a), _wgslsmith_div_vec3_i32(vec3<i32>(-3420i, 2147483647i, u_input.a), -arg_0.a)));
    global0 = array<Struct_3, 7>();
    let var_1 = !all(select(vec2<bool>(true, var_0.x || true), !select(vec2<bool>(var_0.x, var_0.x), var_0.xz, true), select(!vec2<bool>(var_0.x, var_0.x), var_0.zx, any(vec4<bool>(var_0.x, true, var_0.x, var_0.x)))));
    global0 = array<Struct_3, 7>();
    var var_2 = arg_0;
    return !select(!select(select(vec3<bool>(var_1, var_1, false), vec3<bool>(true, true, var_0.x), false), !vec3<bool>(false, true, var_0.x), false), vec3<bool>(true, var_0.x, any(select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(var_1, var_1, false, false)))), !var_0.x);
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec4<i32>) -> vec4<f32> {
    let var_0 = 7642i;
    var var_1 = func_4(Struct_1(-max(~arg_3.zzw, func_3(arg_2.x, arg_1.a, vec3<i32>(u_input.a, arg_1.b, -2147483647i), arg_1))));
    var var_2 = ~var_0;
    var_2 = arg_1.d.x;
    let var_3 = _wgslsmith_mult_u32(~u_input.c.x, _wgslsmith_add_u32(firstLeadingBit(69986u), u_input.c.x));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -1278f, arg_2.x, arg_2.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -478f, 1448f, arg_2.x) * vec4<f32>(973f, arg_2.x, arg_2.x, arg_2.x))) + vec4<f32>(arg_2.x, arg_2.x, -411f, -1236f)))), vec4<f32>(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(sign(arg_2.x))), _wgslsmith_f_op_f32(sign(arg_2.x)), 1933f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_div_i32(-abs(arg_0.a.x), u_input.a), Struct_3(true, u_input.a, vec4<i32>(~(-20394i), _wgslsmith_sub_i32(5920i, arg_0.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -26720i, arg_0.a.x), vec3<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), max(-22241i, arg_0.a.x)), -arg_0.a.xx | arg_0.a.zz), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1214f, -516f, 2137f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-521f, 708f, 508f) * vec3<f32>(-1129f, -538f, 370f))))), -vec4<i32>(countOneBits(1016i), arg_0.a.x, u_input.a << (0u % 32u), arg_0.a.x & arg_0.a.x)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(func_2(u_input.a, Struct_3(!(!any(vec2<bool>(var_0, true))), u_input.a, ~vec4<i32>(u_input.a, u_input.a, 2147483647i, 34778i), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(select(arg_0.a.zz, arg_0.a.zz, vec2<bool>(true, var_0)), -arg_0.a.xz), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.a.x, u_input.a), arg_0.a.zx), _wgslsmith_mod_vec2_i32(vec2<i32>(14449i, -1i), vec2<i32>(u_input.a, arg_0.a.x))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, _wgslsmith_div_f32(512f, -1214f), -262f))))), abs(-_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, arg_0.a.x, u_input.a, -13547i), vec4<i32>(53973i, arg_0.a.x, arg_0.a.x, arg_0.a.x)), vec4<i32>(24512i, u_input.a, arg_0.a.x, -2147483647i))))).yzz;
    var var_3 = Struct_1(_wgslsmith_sub_vec3_i32(reverseBits(_wgslsmith_add_vec3_i32(arg_0.a, abs(vec3<i32>(arg_0.a.x, arg_0.a.x, 19881i)))), vec3<i32>(arg_0.a.x, -31609i, u_input.a & 1i)));
    var var_4 = firstLeadingBit(67766u);
    return -(~_wgslsmith_dot_vec2_i32(vec2<i32>(11672i, 29143i), ~(-arg_0.a.yy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1053f, -1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i & -(~u_input.a), u_input.a, func_1(Struct_1(vec3<i32>(u_input.a, u_input.a, -1i) << (vec3<u32>(4294967295u, u_input.b, u_input.b) % vec3<u32>(32u))))), ~25219u);
}

