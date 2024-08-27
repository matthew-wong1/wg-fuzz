struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 4294967295u, 58939u);

var<private> global1: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(-21693i, 56566i), vec2<i32>(0i, 2147483647i), vec2<i32>(26364i, 2147483647i), vec2<i32>(-13492i, 2147483647i), vec2<i32>(-1i, 0i), vec2<i32>(-1i, -1i), vec2<i32>(-1i, 1i), vec2<i32>(-9319i, -1i), vec2<i32>(-58650i, 29656i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(1i, -43935i), vec2<i32>(0i, 1i), vec2<i32>(36192i, i32(-2147483648)), vec2<i32>(0i, 2147483647i), vec2<i32>(47413i, -30020i), vec2<i32>(46389i, 90272i), vec2<i32>(-1i, 26991i), vec2<i32>(i32(-2147483648), -4248i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-1i, 0i), vec2<i32>(-43463i, 2147483647i), vec2<i32>(-1i, 2147483647i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-36964i, -19396i), vec2<i32>(3768i, 2147483647i), vec2<i32>(31002i, -13215i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(arg_1.x + arg_1.x), true);
    global1 = array<vec2<i32>, 26>();
    global1 = array<vec2<i32>, 26>();
    let var_1 = var_0;
    global1 = array<vec2<i32>, 26>();
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -320f), true);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = select(!select(!(!vec3<bool>(false, true, arg_1.b)), !select(vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(arg_1.b, true, arg_1.b)), select(!vec3<bool>(false, false, arg_1.b), vec3<bool>(arg_1.b, true, arg_0.a), vec3<bool>(true, true, arg_1.b))), !vec3<bool>((arg_0.a | true) & arg_0.a, false, 0i < _wgslsmith_add_i32(u_input.c.x, u_input.c.x)), true);
    var var_1 = _wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.a, _wgslsmith_div_f32(-693f, arg_1.a)))));
    global0 = _wgslsmith_clamp_vec3_u32(u_input.a, min(~select(arg_0.b.xwy | vec3<u32>(u_input.a.x, global0.x, 48709u), _wgslsmith_mod_vec3_u32(arg_0.b.ywz, vec3<u32>(arg_0.b.x, 0u, arg_0.b.x)), var_0), ~max(~vec3<u32>(arg_0.b.x, 12080u, arg_0.b.x), ~arg_0.b.xyz)), ~arg_0.b.zxz & firstTrailingBit(~vec3<u32>(4294967295u, u_input.a.x, 0u)));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(func_2(4294967295u, vec4<f32>(-1000f, arg_1.a, 838f, arg_1.a)).a, arg_1.a, any(vec2<bool>(arg_0.a, arg_1.b)))))))));
    var_1 = _wgslsmith_f_op_f32(floor(1460f));
    return vec4<u32>(~global0.x, u_input.a.x, _wgslsmith_dot_vec3_u32(select(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, global0.x, arg_0.b.x), vec3<u32>(u_input.a.x, 53056u, u_input.a.x)), ~arg_0.b.zwy << (abs(vec3<u32>(global0.x, u_input.a.x, global0.x)) % vec3<u32>(32u)), !(!var_0)), ~vec3<u32>(_wgslsmith_mod_u32(7189u, 38933u), _wgslsmith_sub_u32(global0.x, global0.x), arg_0.b.x)), ~_wgslsmith_div_u32(_wgslsmith_mod_u32(~arg_0.b.x, u_input.a.x & u_input.a.x), 4294967295u));
}

fn func_1(arg_0: Struct_3) -> u32 {
    let var_0 = -vec2<i32>(min(countOneBits(u_input.d), -10238i << (1u % 32u)), _wgslsmith_sub_i32(u_input.d, _wgslsmith_sub_i32(abs(u_input.c.x), select(22430i, -10786i, arg_0.a))));
    let var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(~global0.x, arg_0.b.x), u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(arg_0.b, arg_0.b), vec4<u32>(global0.x, 0u, u_input.a.x, 6311u) ^ vec4<u32>(61636u, 4294967295u, global0.x, arg_0.b.x))), ~arg_0.b.zxy, _wgslsmith_sub_vec3_u32(~u_input.a, reverseBits(vec3<u32>(0u, u_input.a.x, 0u)))) << (arg_0.b.zxw % vec3<u32>(32u));
    var var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, ~10243u, 1u, ~0u & (u_input.a.x ^ 13771u)), firstLeadingBit(func_3(Struct_3(arg_0.a, vec4<u32>(global0.x, 27973u, 13594u, 71331u)), func_2(u_input.a.x, vec4<f32>(-610f, -817f, -1419f, 869f)))) ^ ~vec4<u32>(arg_0.b.x, 48830u, ~0u, ~u_input.a.x));
    let var_3 = all(!vec4<bool>(arg_0.a, true, arg_0.a, false));
    return max(11758u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~abs(vec4<u32>(u_input.a.x, u_input.a.x, var_2.x, var_1.x)), ~arg_0.b >> (abs(vec4<u32>(4294967295u, global0.x, 0u, var_2.x)) % vec4<u32>(32u))), arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 26>();
    global0 = vec3<u32>(u_input.a.x, ~func_1(Struct_3(true, vec4<u32>(4294967295u, global0.x, 25918u, u_input.a.x))), u_input.a.x);
    global1 = array<vec2<i32>, 26>();
    var var_0 = Struct_4(countOneBits(_wgslsmith_add_vec2_i32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 73140u), u_input.a.xx), 26u)], vec2<i32>(-1i, -20517i)) ^ u_input.c.xz), Struct_1(false), max(abs(u_input.c & u_input.c) >> (~(~vec3<u32>(0u, u_input.a.x, 0u)) % vec3<u32>(32u)), min(countOneBits(~vec3<i32>(0i, u_input.b, u_input.d)), vec3<i32>(-35057i, u_input.c.x, u_input.b))));
    let var_1 = Struct_4(-abs(countOneBits(-var_0.c.zy)), var_0.b, _wgslsmith_div_vec3_i32(u_input.c, select(var_0.c, abs(u_input.c), any(vec3<bool>(var_0.b.a, var_0.b.a, var_0.b.a)))));
    var var_2 = Struct_4(~vec2<i32>(~(-var_1.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 50591i, var_0.a.x, -21303i), _wgslsmith_mult_vec4_i32(vec4<i32>(-41900i, var_0.c.x, u_input.b, var_1.a.x), vec4<i32>(var_0.c.x, var_1.c.x, -35991i, var_1.a.x)))), Struct_1(var_0.b.a), countOneBits(_wgslsmith_div_vec3_i32(select(countOneBits(vec3<i32>(0i, var_1.a.x, 52642i)), -var_1.c, vec3<bool>(var_0.b.a, var_1.b.a, var_1.b.a)), ~u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(164f, _wgslsmith_mult_u32(14026u, ~4294967295u), var_0.c.x, _wgslsmith_sub_i32(u_input.d, var_1.a.x), var_0.c.x);
}

