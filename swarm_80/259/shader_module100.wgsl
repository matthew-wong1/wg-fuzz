struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(Struct_1(1u, false, -439f)), Struct_3(181f, vec4<i32>(5393i, -2748i, -28853i, 406i), 2147483647i, Struct_2(Struct_1(4294967295u, false, -583f))), false, vec2<i32>(1i, -17000i));

var<private> global1: array<vec2<bool>, 14>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    var var_0 = firstLeadingBit(firstTrailingBit(32515i));
    let var_1 = Struct_2(global0.b.d.a);
    return Struct_1(~select(4294967295u, 33669u, arg_0.a.b), true & !global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.a.c, -1723f, !(global0.b.d.a.a == 43722u))) * -922f));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = -(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, ~(-28886i), _wgslsmith_dot_vec4_i32(global0.b.b, vec4<i32>(-2147483647i, global0.b.c, -30815i, global0.b.c))), -global0.b.b.xxw));
    var var_1 = arg_1.a;
    var var_2 = _wgslsmith_clamp_vec2_i32(u_input.c, select(~vec2<i32>(_wgslsmith_sub_i32(global0.d.x, -41623i), _wgslsmith_add_i32(global0.b.b.x, -1i)), abs(vec2<i32>(2147483647i, var_0) & (vec2<i32>(1i, global0.b.b.x) & u_input.c)), -884f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c + 1000f) + 1f)), vec2<i32>(5201i, firstLeadingBit(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, var_0, -2243i, 0i), global0.b.b, arg_1.a.b), min(global0.b.b, vec4<i32>(u_input.c.x, global0.d.x, -21271i, -1i))))));
    var var_3 = vec4<u32>(global0.a.a.a, 107831u, 0u, ~global0.a.a.a ^ 0u);
    let var_4 = _wgslsmith_f_op_f32(-global0.b.a);
    return select(countOneBits(~vec4<u32>(var_3.x, firstLeadingBit(37472u), u_input.a, ~4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(~1u, abs(u_input.e), 1u, ~38130u), max(~(~vec4<u32>(u_input.e, var_1.a, 4294967295u, 4294967295u)), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 64294u, u_input.a, arg_1.a.a), vec4<u32>(var_1.a, 0u, 4294967295u, 45246u), vec4<u32>(global0.a.a.a, arg_1.a.a, global0.b.d.a.a, 0u))))), !(!(!vec4<bool>(arg_1.a.b, arg_1.a.b, false, true))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4) -> Struct_4 {
    var var_0 = arg_1;
    var var_1 = max(_wgslsmith_add_u32(48766u << (_wgslsmith_mult_u32(var_0.a.a.a, ~u_input.e) % 32u), 1u), ~(1u & ~(u_input.a << (1u % 32u))));
    let var_2 = select(vec3<bool>(all(vec4<bool>(!global0.a.a.b, false, all(vec3<bool>(true, arg_1.b.d.a.b, false)), arg_1.b.d.a.b)), any(select(vec3<bool>(false, true, false), select(vec3<bool>(global0.c, global0.b.d.a.b, global0.b.d.a.b), vec3<bool>(true, var_0.c, global0.b.d.a.b), vec3<bool>(arg_1.a.a.b, false, true)), !vec3<bool>(arg_1.c, true, true))), ~_wgslsmith_dot_vec4_i32(var_0.b.b, var_0.b.b) < -_wgslsmith_div_i32(var_0.d.x, 23451i)), select(!vec3<bool>(var_0.b.a == -498f, !var_0.a.a.b, false), !(!vec3<bool>(var_0.b.d.a.b, false, global0.c)), select(true, arg_1.b.d.a.b, global0.c)), arg_1.b.d.a.b & false);
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -267f), global0.b.d.a.c))))));
    let var_4 = -arg_1.b.b.x;
    return arg_1;
}

fn func_1(arg_0: vec2<u32>) -> vec4<i32> {
    let var_0 = global0.b;
    global0 = func_4(_wgslsmith_add_vec4_u32(func_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -552f), _wgslsmith_f_op_f32(f32(-1f) * -1181f)), Struct_2(func_2(Struct_2(Struct_1(arg_0.x, true, 1347f)), 373f))), vec4<u32>(~global0.b.d.a.a, ~4294967295u, _wgslsmith_sub_u32(global0.a.a.a, 0u), abs(58424u)) ^ _wgslsmith_mod_vec4_u32(select(vec4<u32>(16u, global0.a.a.a, var_0.d.a.a, global0.b.d.a.a), vec4<u32>(0u, 40974u, u_input.a, 43767u), false), vec4<u32>(0u, 4294967295u, u_input.e, 41859u))), Struct_4(global0.b.d, Struct_3(649f, _wgslsmith_sub_vec4_i32(global0.b.b, min(var_0.b, vec4<i32>(31786i, global0.d.x, -78077i, var_0.c))), global0.b.b.x, Struct_2(func_2(Struct_2(Struct_1(41570u, var_0.d.a.b, global0.a.a.c)), 1438f))), !global0.b.d.a.b, global0.d));
    var var_1 = -35227i;
    let var_2 = u_input.d;
    let var_3 = ~4294967295u << (1u % 32u);
    return firstLeadingBit(-var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(func_1(firstTrailingBit(vec2<u32>(u_input.e, 28606u))), global0.b.b), -(firstTrailingBit(393i) >> (~u_input.e % 32u))), _wgslsmith_dot_vec4_i32(global0.b.b, ~_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.d.x, u_input.b, -13697i, 0i), vec4<i32>(global0.d.x, u_input.c.x, -21604i, global0.b.b.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -51199i, 0i, -1i), vec4<i32>(u_input.d, 33703i, u_input.d, u_input.c.x)))), _wgslsmith_mult_i32(-func_4(firstTrailingBit(vec4<u32>(43324u, u_input.a, 4294967295u, global0.b.d.a.a)), Struct_4(global0.b.d, Struct_3(global0.b.a, global0.b.b, global0.b.b.x, Struct_2(global0.b.d.a)), var_0, vec2<i32>(21077i, -2147483647i))).d.x, -u_input.c.x));
    var var_2 = func_4(vec4<u32>(_wgslsmith_clamp_u32(~u_input.a, ~(~u_input.e), u_input.e), ~105589u, u_input.e, global0.a.a.a), func_4(vec4<u32>(~global0.a.a.a, 0u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.d.a.a, global0.a.a.a), vec2<u32>(77123u, 0u)), global0.a.a.a, ~_wgslsmith_sub_u32(u_input.a, 1u)), func_4(vec4<u32>(1u, ~u_input.e, _wgslsmith_add_u32(global0.b.d.a.a, u_input.a), 6456u), func_4(~vec4<u32>(0u, global0.b.d.a.a, 67259u, 1u), func_4(vec4<u32>(u_input.a, u_input.e, 22345u, 2027u), Struct_4(global0.b.d, Struct_3(global0.b.d.a.c, global0.b.b, global0.d.x, global0.a), true, global0.b.b.xx)))))).a;
    var var_3 = _wgslsmith_div_vec2_u32((vec2<u32>(u_input.a, var_2.a.a) & vec2<u32>(1u, 0u)) | ~(~max(vec2<u32>(1u, var_2.a.a), vec2<u32>(var_2.a.a, var_2.a.a))), vec2<u32>(u_input.a, func_4(~vec4<u32>(12561u, global0.a.a.a, 82632u, 74698u), Struct_4(Struct_2(var_2.a), Struct_3(-610f, vec4<i32>(var_1.x, 56849i, global0.d.x, -2147483647i), 1i, global0.a), var_0, u_input.c)).b.d.a.a & u_input.e));
    let var_4 = global0.a.a;
    var var_5 = abs(vec2<u32>(0u, 41957u));
    var_5 = abs(_wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_4.a, var_5.x), vec2<u32>(var_3.x, u_input.a)), ~vec2<u32>(var_5.x, var_5.x)), vec2<u32>(_wgslsmith_div_u32(1u, func_3(vec2<f32>(var_2.a.c, -945f), global0.b.d).x), 110486u)));
    let x = u_input.a;
    s_output = StorageBuffer(-975f);
}

