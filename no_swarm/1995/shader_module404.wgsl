struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: Struct_3;

var<private> global2: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(2147483647i, 2147483647i));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: i32) -> vec2<f32> {
    return arg_1.zz;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = firstLeadingBit(u_input.b);
    global1 = Struct_3(global1.a, _wgslsmith_sub_u32(0u, _wgslsmith_add_u32(0u, max(u_input.b, var_0))), arg_1.c, Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(arg_1.d.xx, _wgslsmith_div_vec3_f32(vec3<f32>(-345f, global1.d.a.x, global1.d.a.x), vec3<f32>(-1307f, 1322f, -165f)), vec4<u32>(26970u, u_input.b, var_0, 4294967295u) & vec4<u32>(1u, var_0, arg_1.c.b.x, arg_1.c.b.x), arg_1.b)))), _wgslsmith_sub_vec2_u32(max(firstLeadingBit(vec2<u32>(1u, global1.d.b.x)), vec2<u32>(u_input.c, 0u) << (arg_1.c.b % vec2<u32>(32u))), vec2<u32>(26426u, u_input.b)), false, global1.b >= (~var_0 >> (arg_1.c.b.x % 32u))), u_input.d);
    var var_1 = global1.d.d || true;
    let var_2 = arg_1.c;
    global2 = array<vec2<i32>, 1>();
    return Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c.a.x), _wgslsmith_f_op_f32(step(-806f, -841f))))), vec2<f32>(-1544f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.c.a.x))))), firstTrailingBit(~reverseBits(select(var_2.b, vec2<u32>(var_0, 42275u), vec2<bool>(true, true)))), var_2.c & true, true);
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: vec3<u32>) -> Struct_1 {
    global1 = Struct_3(global1.a, 73126u, global1.c, func_2(-abs(~vec2<i32>(0i, -73423i)), Struct_2(vec3<u32>(4528u, 1u, arg_2.x) >> (~arg_2 % vec3<u32>(32u)), -1i, global1.d, !vec3<bool>(global1.d.c, global1.c.d, global1.c.c), _wgslsmith_f_op_vec2_f32(global1.d.a + vec2<f32>(569f, -1000f)))), -vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(22066i, global1.e.x), u_input.d.x), 6687i, -50284i));
    return func_2(vec2<i32>(-1i, ~global1.a.x >> (arg_1.x % 32u)) >> (vec2<u32>(~arg_2.x, 61775u) % vec2<u32>(32u)), Struct_2(arg_1.wwz, abs(u_input.a.x | ~u_input.a.x), global1.c, !(!vec3<bool>(true, global1.c.d, global1.d.c)), global1.d.a));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = u_input.c & (_wgslsmith_div_u32(26329u, ~u_input.b) & 6913u);
    global2 = array<vec2<i32>, 1>();
    let var_1 = arg_2.x;
    var var_2 = Struct_4(true, u_input.a.x);
    var var_3 = arg_1.e.x;
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(110f - -1609f)), _wgslsmith_f_op_f32(-global1.d.a.x)), arg_1.a.yx, true, global1.c.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(995f, 297f, 389f, global1.c.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-829f, -314f, -1046f, global1.c.a.x)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.a.x, 1000f, global1.d.a.x, global1.d.a.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.a.x, 950f, 384f, -1000f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-617f, global1.d.a.x, 3718f, -1388f))), vec4<f32>(325f, -1275f, -638f, global1.c.a.x)))));
    let var_1 = Struct_2(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 0u, 4294967295u), vec3<u32>(u_input.b ^ global1.d.b.x, global1.c.b.x, 75120u))), _wgslsmith_sub_i32(u_input.a.x >> (~min(10095u, global1.d.b.x) % 32u), -1i), func_4(~firstTrailingBit(~global1.d.b), Struct_2(_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(10940u, 0u, global1.b)), ~vec3<u32>(0u, 793u, u_input.b)), global1.e.x, func_1(_wgslsmith_f_op_f32(-global1.c.a.x), vec4<u32>(1u, u_input.b, 85032u, 0u) >> (vec4<u32>(122157u, u_input.b, 17448u, u_input.b) % vec4<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.b), vec3<u32>(1u, global1.d.b.x, u_input.c))), !(!vec3<bool>(true, false, global1.d.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, 188f))))), abs(~_wgslsmith_sub_vec4_i32(global1.a, vec4<i32>(60181i, -2147483647i, -57390i, global1.e.x)))), vec3<bool>(global1.d.d, false, global1.d.c && (true && (2205f == var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global1.c.a, vec2<f32>(global1.c.a.x, 295f), vec2<bool>(global1.d.c, true))) + _wgslsmith_f_op_vec2_f32(-var_0.wy)), var_0.yz) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -744f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1809f) + vec2<f32>(-107f, global1.c.a.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.c.a.x, var_0.x), global1.d.a, vec2<bool>(global1.d.d, true))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1166f))))));
    let var_2 = ~(~((func_4(vec2<u32>(26809u, 26168u), Struct_2(var_1.a, var_1.b, Struct_1(vec2<f32>(-473f, 1185f), vec2<u32>(55175u, 2224u), var_1.d.x, true), var_1.d, vec2<f32>(1446f, -663f)), global1.a).b.x | func_2(u_input.d.xy, var_1).b.x) >> (var_1.c.b.x % 32u)));
    var var_3 = func_4(_wgslsmith_clamp_vec2_u32(reverseBits(var_1.a.zz << (global1.c.b % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(~global1.d.b, vec2<u32>(u_input.c, global1.d.b.x) ^ var_1.a.yx), var_1.c.b) << ((~(~var_1.a.zz) >> (select(~vec2<u32>(var_1.a.x, var_1.a.x), vec2<u32>(18690u, global1.c.b.x), global1.d.a.x == global1.c.a.x) % vec2<u32>(32u))) % vec2<u32>(32u)), var_1, ~(-(-global1.a & global1.a))).d;
    global0 = -_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(66376i, 18220i), -min(global1.a.x, var_1.b)), -1i);
    global1 = Struct_3(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~(-1i), reverseBits(-8473i), _wgslsmith_mult_i32(u_input.d.x, var_1.b)), _wgslsmith_div_vec3_i32(firstTrailingBit(global1.e), vec3<i32>(global1.e.x, u_input.d.x, 0i))), u_input.a.x, reverseBits(i32(-1i) * -1i), u_input.a.x >> (20828u % 32u)), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_add_u32(var_1.c.b.x & var_2, 1u) >> (~_wgslsmith_mod_u32(0u, 4294967295u) % 32u), 9337u), Struct_1(_wgslsmith_f_op_vec2_f32(global1.d.a - var_0.wz), _wgslsmith_sub_vec2_u32(~global1.d.b, vec2<u32>(~global1.c.b.x, 4294967295u)), var_1.d.x, !global1.c.c), global1.d, vec3<i32>(firstLeadingBit(min(global1.e.x, var_1.b)), -37452i, _wgslsmith_mult_i32(~1i, -u_input.e)));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -186f), _wgslsmith_f_op_f32(1127f - func_4(var_1.a.yy, Struct_2(var_1.a, var_1.b, var_1.c, vec3<bool>(true, true, true), var_1.e), vec4<i32>(global1.e.x, u_input.d.x, -2147483647i, var_1.b)).a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(var_1.d.zx, vec3<f32>(global1.c.a.x, 1214f, var_1.e.x), vec4<u32>(var_2, u_input.c, 1u, var_2), global1.e.x)).x), global1.c.a.x))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.a.x, _wgslsmith_f_op_f32(trunc(var_1.c.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(844f - _wgslsmith_f_op_f32(var_0.x * 197f))), var_1.c.a.x, var_0.x));
    let var_5 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d.yx | _wgslsmith_div_vec2_i32(~abs(vec2<i32>(-1i, global1.a.x)), global1.e.xx), ~var_1.c.b.x);
}

