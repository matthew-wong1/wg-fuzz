struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: i32,
}

struct Struct_5 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: vec2<f32> = vec2<f32>(-830f, -1642f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_mult_u32(~14532u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a >> (~(~u_input.a) % vec4<u32>(32u))));
    var var_1 = ~(~_wgslsmith_mod_vec2_u32(~u_input.d, ~max(vec2<u32>(4294967295u, var_0), vec2<u32>(u_input.c.x, 7141u))));
    let var_2 = Struct_5(firstLeadingBit(~(-1i)), -_wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(28691i, 2147483647i, -1i), vec3<i32>(-89023i, -2147483647i, -1i) >> (vec3<u32>(57420u, 3292u, var_1.x) % vec3<u32>(32u)))));
    var var_3 = abs(vec4<i32>(0i, ~var_2.a | countOneBits(var_2.b), var_2.a, -6600i) << (vec4<u32>(~12668u, firstTrailingBit(40140u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d.x, var_1.x), u_input.a.wyw), ~(~global0.a.x)) % vec4<u32>(32u)));
    var var_4 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -149f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -684f), _wgslsmith_f_op_f32(-407f - 2022f), true))), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x)), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global2.x)), _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1818f * global2.x), _wgslsmith_f_op_f32(max(1216f, global2.x))))), -1208f), !vec3<bool>(global1.x, all(!vec3<bool>(global1.x, global1.x, false)), all(vec4<bool>(global1.x, true, global1.x, global1.x)))));
    return global2.x;
}

fn func_2() -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1875f)) - global2.x)), _wgslsmith_div_f32(174f, 350f));
    var var_1 = select(1i, abs(_wgslsmith_sub_i32(2147483647i, 1i)), global1.x);
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + 419f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -472f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))))));
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1764f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(367f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-var_0.x))));
    var var_2 = Struct_4(Struct_2(~global0.a), ~global0.a.zy, 32794i);
    return -1341f;
}

fn func_4(arg_0: f32) -> vec4<bool> {
    global2 = vec2<f32>(global2.x, -1278f);
    let var_0 = true;
    let var_1 = Struct_5(_wgslsmith_mult_i32(abs(~0i), firstLeadingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(56159i, 2147483647i, 0i), select(vec3<i32>(-1i, -1i, -14792i), vec3<i32>(1i, 2147483647i, 1i), vec3<bool>(global1.x, var_0, false))))), -26171i);
    let var_2 = Struct_3(Struct_1(vec4<i32>(_wgslsmith_add_i32(-16423i, _wgslsmith_div_i32(var_1.b, var_1.a)), _wgslsmith_sub_i32(0i, 1i), firstLeadingBit(var_1.b), var_1.b), ~(~(-11041i))), u_input.a, 100671u);
    var var_3 = (firstLeadingBit(5224u) ^ var_2.c) >> (select(u_input.d.x, global0.a.x, global1.x) % 32u);
    return !select(select(vec4<bool>(all(vec3<bool>(var_0, true, var_0)), all(global1.yz), !global1.x, !global1.x), vec4<bool>(global1.x, any(vec2<bool>(global1.x, global1.x)), false, true), !any(vec4<bool>(var_0, var_0, false, global1.x))), !(!select(vec4<bool>(global1.x, var_0, false, var_0), vec4<bool>(var_0, global1.x, global1.x, true), true)), false);
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: i32, arg_3: vec3<bool>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1188f), _wgslsmith_div_f32(-914f, 1327f), _wgslsmith_f_op_f32(-global2.x), global2.x) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, 219f, global2.x, global2.x), vec4<f32>(global2.x, 567f, 498f, global2.x), vec4<bool>(false, true, false, global1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, -414f, -1000f) - vec4<f32>(global2.x, -625f, -2091f, 717f)), global1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 1653f, global2.x, global2.x)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-195f, global2.x, global2.x, 1000f))))), func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -194f), _wgslsmith_f_op_f32(func_2())))))));
    let var_1 = reverseBits(u_input.a);
    var var_2 = ~(i32(-1i) * -(~2147483647i));
    var var_3 = vec2<bool>(global1.x, false);
    var var_4 = _wgslsmith_f_op_vec4_f32(min(var_0, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(var_0, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, -135f, var_0.x), vec4<f32>(global2.x, global2.x, 226f, var_0.x), vec4<bool>(true, global1.x, arg_3.x, false))))))))));
    return var_4.zy;
}

fn func_5(arg_0: vec2<f32>) -> bool {
    global1 = func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -802f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-355f * global2.x))))))).xxw;
    global2 = arg_0;
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(-1132f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec2_f32(func_1((25652i << (global0.a.x % 32u)) & -8819i, _wgslsmith_div_vec3_u32(max(vec3<u32>(70684u, 2111u, 73704u), vec3<u32>(u_input.b, 21213u, global0.a.x)), vec3<u32>(21563u, global0.a.x, 41230u)), 0i, vec3<bool>(true, func_4(global2.x).x, true))).x)), arg_0.x, 515f);
    var var_1 = 7749u;
    var_1 = _wgslsmith_mult_u32(select(~4294967295u, ~(~global0.a.x), false), _wgslsmith_div_u32(~(~0u), global0.a.x));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.x, -1431f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(1182i, vec3<u32>(1u, global0.a.x, u_input.d.x), -23790i, vec3<bool>(global1.x, global1.x, global1.x))) + vec2<f32>(global2.x, global2.x)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(596f, 262f))))))));
    let var_1 = Struct_1(abs(max(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -12430i), vec2<i32>(-10522i, -1i)), ~(-22414i), -1i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -1i, 20930i, -57037i), vec4<i32>(2147483647i, -2147483647i, -2147483647i, -18336i), vec4<i32>(-2147483647i, -1i, 2147483647i, 45097i)) << (vec4<u32>(74964u, global0.a.x, 1u, 1566u) % vec4<u32>(32u)))), _wgslsmith_add_i32(min(i32(-1i) * -1624i, ~(-1i)), min(~1i, min(-10601i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, -98i, -1i), vec4<i32>(1i, 0i, 37026i, 2147483647i))))));
    var var_2 = Struct_2(_wgslsmith_clamp_vec3_u32(global0.a, vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.c.x, global0.a.x, u_input.c.x), ~u_input.a), ~abs(global0.a.x), (u_input.a.x | 1u) >> (~global0.a.x % 32u)), vec3<u32>(1u, 11315u, ~53266u)));
    var_0 = !global1.x;
    var_0 = false;
    var var_3 = var_1;
    var var_4 = Struct_2(vec3<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, var_2.a.x), _wgslsmith_mod_vec2_u32(var_2.a.xz, global0.a.zy)), u_input.d.x >> (4294967295u % 32u), ~firstTrailingBit(29969u)));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_f_op_vec2_f32(func_1(-var_3.b, var_4.a, i32(-1i) * -39058i, select(!vec3<bool>(global1.x, global1.x, false), vec3<bool>(var_1.b <= -31447i, all(vec2<bool>(true, global1.x)), !global1.x), global1.x))).x, 0u);
}

