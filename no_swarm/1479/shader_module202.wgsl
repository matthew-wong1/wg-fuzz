struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: u32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 66584i;

var<private> global1: array<vec2<i32>, 29>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> u32 {
    var var_0 = arg_0.c;
    global0 = ~arg_1;
    global1 = array<vec2<i32>, 29>();
    var var_1 = 25899u;
    global1 = array<vec2<i32>, 29>();
    return u_input.a.x;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(132f, -599f, arg_0, -1713f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(arg_0, -1000f, arg_0, arg_0)), false)))), Struct_1(min(u_input.a, u_input.a) & abs(u_input.a)), _wgslsmith_div_u32(func_3(Struct_2(vec4<f32>(arg_0, -301f, 3523f, arg_0), Struct_1(u_input.a), true, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), -2147483647i, 0i), ~1u) < 2342u, ~(~(~vec4<u32>(u_input.a.x, 8647u, 1u, 4294967295u)))), -_wgslsmith_mod_i32(max(1i, select(-2147483647i, 2147483647i, false)), -abs(-10842i)), _wgslsmith_mult_i32(0i, -23650i), Struct_1(vec3<u32>(1u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), _wgslsmith_add_u32(1u, abs(u_input.a.x)))));
    global0 = _wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(51808i, 52031i), vec2<i32>(var_0.c, var_0.c)), vec2<i32>(-30101i, var_0.b))), vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.b, var_0.b, var_0.b, var_0.b), max(vec4<i32>(var_0.b, 1i, 0i, -2147483647i), vec4<i32>(var_0.c, -2147483647i, var_0.b, 1i))), ~var_0.b >> (31043u % 32u))) >> (_wgslsmith_mod_u32(var_0.a.d.x, _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(~1u, firstLeadingBit(0u)))) % 32u);
    var var_1 = firstLeadingBit(u_input.a.x) | var_0.a.b.a.x;
    let var_2 = Struct_1((~u_input.a & var_0.a.d.xxx) & var_0.d.a);
    var_1 = var_2.a.x;
    return Struct_1(var_0.d.a | _wgslsmith_mult_vec3_u32(~max(vec3<u32>(0u, 4294967295u, 4294967295u), var_0.d.a), select(abs(var_0.d.a), reverseBits(vec3<u32>(31209u, 26021u, 8173u)), select(vec3<bool>(true, var_0.a.c, false), vec3<bool>(var_0.a.c, var_0.a.c, false), var_0.a.c))));
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(302f, 1073f, -1644f, 1180f) - vec4<f32>(-159f, -1096f, 452f, -480f)))), _wgslsmith_div_vec4_f32(vec4<f32>(347f, -1387f, -1999f, -377f), vec4<f32>(549f, -433f, 745f, -204f)))));
    var_0 = vec4<u32>(_wgslsmith_dot_vec2_u32(~var_0.yz, select(~vec2<u32>(var_0.x, u_input.a.x), _wgslsmith_mod_vec2_u32(var_0.zz, vec2<u32>(39096u, var_0.x)), vec2<bool>(true, false))) ^ abs(1u), countOneBits(reverseBits(_wgslsmith_div_u32(abs(0u), select(u_input.a.x, u_input.a.x, true)))), 0u, _wgslsmith_dot_vec3_u32(u_input.a, select(~(~u_input.a), ~_wgslsmith_div_vec3_u32(var_0.wzw, vec3<u32>(45357u, 1u, u_input.a.x)), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), true))));
    let var_2 = Struct_1(_wgslsmith_sub_vec3_u32(min(firstLeadingBit(_wgslsmith_div_vec3_u32(var_0.wzy, var_0.xxw)), var_0.wwy), u_input.a));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1819f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, -1617f))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_1)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_f32(trunc(var_1.x)), var_1.x, _wgslsmith_f_op_f32(-var_1.x)))), func_2(var_1.x), all(select(vec3<bool>(true, true, select(true, true, true)), vec3<bool>(false, all(vec3<bool>(false, true, true)), false), false)), ~(~(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, u_input.a.x, 11372u, 7842u), vec4<u32>(33903u, var_0.x, 73768u, 50595u)) | ~vec4<u32>(0u, var_2.a.x, 1u, u_input.a.x))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = 0u;
    var var_1 = !arg_0.c;
    var var_2 = vec3<bool>(arg_0.c, false, all(vec2<bool>(true, true)) | (true & (true & func_1(-1906i).c)));
    global0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(max(-vec3<i32>(1i, 47765i, 50475i), vec3<i32>(1i, 1i, 1i)), _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(-1i, 1i, 1i)), vec3<i32>(-2656i, -2147483647i, -2147483647i))), 9831i) >> (func_3(Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(855f, arg_0.a.x, arg_0.a.x, -2047f), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, 775f, -716f, arg_0.a.x), vec4<f32>(-487f, arg_0.a.x, -481f, arg_0.a.x))), Struct_1(firstTrailingBit(vec3<u32>(arg_0.d.x, var_0, 12242u))), true, ~firstTrailingBit(arg_0.d)), 51902i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(22193i, -11824i), vec2<i32>(662i, -44041i), global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec2<i32>(1i, 2147483647i)) >> (max(~0u, 4294967295u) % 32u)) % 32u);
    global0 = select(_wgslsmith_mult_i32(~reverseBits(-32434i), 1i), ~abs(i32(-1i) * -1i), arg_0.c);
    return Struct_1(u_input.a);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3) -> u32 {
    var var_0 = !select(select(vec2<bool>(true, any(vec4<bool>(true, arg_2.a.c, true, true))), vec2<bool>(false, func_1(-1i).c), vec2<bool>(all(vec2<bool>(false, false)), true)), vec2<bool>(!all(vec2<bool>(false, arg_2.a.c)), true), !select(2432f > arg_2.a.a.x, arg_2.a.c, true));
    var var_1 = ~arg_2.a.b.a;
    var var_2 = select(-firstLeadingBit(-firstTrailingBit(vec4<i32>(arg_2.c, arg_2.b, -1i, 28228i))), vec4<i32>(arg_2.b, 24737i, min(-(~arg_2.b), -13790i), -arg_2.c), !(~_wgslsmith_mod_u32(var_1.x, arg_2.a.d.x) != countOneBits(arg_2.a.d.x)));
    return arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = -(firstTrailingBit(vec4<i32>(-38719i, 1i, i32(-1i) * -2147483647i, firstTrailingBit(-678i))) ^ vec4<i32>(-30490i, 21203i, -41411i, 0i));
    let var_2 = ~firstTrailingBit(func_5(func_4(func_1(1i)), _wgslsmith_f_op_f32(f32(-1f) * -221f), Struct_3(func_1(var_1.x), _wgslsmith_sub_i32(14999i, 1i), var_1.x, func_1(var_1.x).b)));
    var_0 = 0u;
    global1 = array<vec2<i32>, 29>();
    let var_3 = reverseBits(abs(_wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, 34896i, var_1.x, 12696i), vec4<i32>(23435i, -21219i, 6096i, 1i)), vec4<i32>(var_1.x, var_1.x, var_1.x, 2147483647i) | (vec4<i32>(var_1.x, 9456i, 0i, 2147483647i) >> (vec4<u32>(var_2, 1u, 0u, u_input.a.x) % vec4<u32>(32u))))));
    let var_4 = func_1(_wgslsmith_add_i32(var_3, countOneBits(~1i))).b;
    let x = u_input.a;
    s_output = StorageBuffer(select(min(min(var_4.a, ~u_input.a), select(_wgslsmith_sub_vec3_u32(var_4.a, var_4.a), u_input.a, true)), func_4(func_1(-1i)).a, false));
}

