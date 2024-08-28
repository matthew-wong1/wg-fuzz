struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -54162i), vec2<u32>(4294967295u, 1u), vec3<i32>(-52507i, 2147483647i, 15350i), vec4<u32>(107787u, 0u, 4294967295u, 4294967295u), vec4<u32>(54317u, 8733u, 1u, 1u));

var<private> global1: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(-158f, -837f, -657f, 1000f), vec4<f32>(1000f, -502f, 605f, 2678f), vec4<f32>(279f, 662f, -2072f, -468f), vec4<f32>(-1080f, -620f, -433f, 1000f), vec4<f32>(-270f, 1000f, 1082f, 664f), vec4<f32>(-129f, 357f, -480f, -611f), vec4<f32>(-1000f, 1106f, -1055f, 1057f), vec4<f32>(673f, 932f, 518f, 842f), vec4<f32>(-1702f, 579f, 977f, -140f), vec4<f32>(1160f, 788f, 1011f, 564f), vec4<f32>(1935f, 1112f, 1250f, -518f), vec4<f32>(-392f, 115f, 235f, -496f), vec4<f32>(-656f, 1346f, 150f, 2324f), vec4<f32>(364f, -241f, 1585f, -1897f), vec4<f32>(1558f, 1164f, 435f, -576f), vec4<f32>(539f, -181f, 701f, 1838f), vec4<f32>(-419f, -446f, 1000f, -403f), vec4<f32>(457f, -239f, -299f, -858f));

var<private> global2: array<vec2<u32>, 23>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = 1u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1036f)) + _wgslsmith_f_op_f32(-270f * 2592f)) - 2483f) + -304f));
}

fn func_3(arg_0: u32, arg_1: f32) -> vec2<u32> {
    var var_0 = Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c.yx, -vec2<i32>(-2736i, 63811i)), _wgslsmith_dot_vec2_i32(max(-u_input.c.xx, select(vec2<i32>(u_input.c.x, -39742i), u_input.c.wx, false)), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(global0.a.zx, vec2<i32>(global0.c.x, global0.c.x), u_input.c.wz), reverseBits(vec2<i32>(global0.c.x, 374i)))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 54755i), -vec2<i32>(-2147483647i, u_input.c.x))), vec2<u32>(u_input.d, 23765u) ^ u_input.a.yy, select(select(global0.a, abs(vec3<i32>(-28834i, u_input.c.x, global0.c.x)), select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true))), u_input.c.zzz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(213f))) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(abs(arg_1))))), vec4<u32>(4294967295u, global0.b.x ^ 26206u, reverseBits(2245u), _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.d, arg_0 << (1u % 32u)), ~0u)), ~abs(select(~vec4<u32>(u_input.a.x, 53143u, u_input.b, 127945u), vec4<u32>(0u, arg_0, u_input.d, global0.e.x), vec4<bool>(true, true, true, true))));
    var var_1 = Struct_1(vec3<i32>(~reverseBits(u_input.c.x) | 0i, -2147483647i, _wgslsmith_mod_i32(_wgslsmith_add_i32(global0.a.x, 23228i), var_0.c.x) | countOneBits(_wgslsmith_clamp_i32(var_0.a.x, var_0.a.x, u_input.c.x))), vec2<u32>(~firstLeadingBit(4294967295u), 4294967295u), ~global0.c, ~(~vec4<u32>(arg_0, 1u, 1u, var_0.b.x)) | select(global0.e, firstTrailingBit(~vec4<u32>(arg_0, var_0.b.x, global0.e.x, 30078u)), arg_1 <= _wgslsmith_f_op_f32(func_2(true))), global0.d);
    return reverseBits(countOneBits(vec2<u32>(global0.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_1.e.wwx, u_input.a), global0.e.xzx))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = vec3<f32>(751f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - 328f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1284f + -919f)))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(true)), -1047f);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    return Struct_1(_wgslsmith_sub_vec3_i32(u_input.c.ywy, _wgslsmith_mod_vec3_i32(~vec3<i32>(-21852i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, -1i, _wgslsmith_add_i32(-32262i, u_input.c.x)))), max(~vec2<u32>(63245u, 0u), ~_wgslsmith_sub_vec2_u32(func_3(17719u, -146f), _wgslsmith_mult_vec2_u32(u_input.a.xz, global0.e.xz))), abs(u_input.c.zyw), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global0.b.x, u_input.a.x, u_input.b), abs(vec4<u32>(1u, global0.b.x, 4294967295u, arg_0))), min(abs(vec4<u32>(u_input.b, u_input.b, 15378u, 4294967295u)), max(vec4<u32>(u_input.b, 1u, 12783u, 43746u), vec4<u32>(92058u, arg_0, arg_0, 4294967295u)))) >> (vec4<u32>(global0.e.x, 4294967295u, _wgslsmith_div_u32(51904u, ~62778u), 59622u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~u_input.a, global0.d.xwy), u_input.a.x), ~37019u, ~_wgslsmith_mod_u32(4294967295u, ~arg_0), global0.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(38326u, func_1(global0.d.x));
    var var_1 = 482f;
    global0 = Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.b.c, vec3<i32>(1i, var_0.b.c.x, var_0.b.a.x)) | vec3<i32>(-9136i, 2428i, var_0.b.c.x), -var_0.b.a), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b.c.x, var_0.b.c.x, -35591i), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 2147483647i, var_0.b.c.x), var_0.b.c), vec3<i32>(-12235i, var_0.b.c.x, -2147483647i)), var_0.b.c)), ~_wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_0.a), vec2<u32>(global0.b.x, u_input.a.x)), vec2<u32>(u_input.a.x ^ global0.e.x, 32814u)), reverseBits(var_0.b.c), ~_wgslsmith_div_vec4_u32(global0.d, vec4<u32>(4294967295u, _wgslsmith_clamp_u32(global0.b.x, 4294967295u, 4294967295u), global0.d.x & 69781u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.e.x, var_0.a), u_input.a.zy))), ~vec4<u32>(~51993u, u_input.a.x & var_0.b.e.x, var_0.b.e.x, _wgslsmith_mod_u32(global0.b.x, 11743u)));
    let var_2 = Struct_1(u_input.c.yyy, _wgslsmith_div_vec2_u32(min(~vec2<u32>(4294967295u, global0.d.x), min(vec2<u32>(62848u, 15946u), ~vec2<u32>(73525u, u_input.a.x))), vec2<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(33860u, u_input.b), 0u))), reverseBits(-global0.a), max(vec4<u32>(var_0.b.b.x, u_input.a.x, countOneBits(_wgslsmith_mod_u32(var_0.a, 0u)), func_3(1u, 2852f).x), vec4<u32>(_wgslsmith_mod_u32(min(26098u, global0.d.x), min(var_0.a, u_input.b)), ~0u, _wgslsmith_clamp_u32(1u, global0.d.x, u_input.a.x), u_input.a.x)), ~var_0.b.d);
    var var_3 = var_0.b.a.zy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(668f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -875f) - _wgslsmith_f_op_f32(f32(-1f) * -1021f)))) * -1000f), vec3<i32>(global0.a.x, max(-firstTrailingBit(var_3.x), reverseBits(_wgslsmith_clamp_i32(global0.a.x, -17050i, global0.a.x))), ~global0.a.x));
}

