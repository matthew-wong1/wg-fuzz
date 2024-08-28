struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_3,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(vec4<i32>(-30041i, 0i, -17359i, -1i))), Struct_2(Struct_1(vec4<i32>(-63702i, -1i, 52588i, i32(-2147483648)))), Struct_2(Struct_1(vec4<i32>(-37574i, -1i, i32(-2147483648), 32107i))), Struct_2(Struct_1(vec4<i32>(-5780i, 60934i, 39906i, -17178i))), Struct_2(Struct_1(vec4<i32>(2147483647i, 0i, -2033i, -1i))), Struct_2(Struct_1(vec4<i32>(10277i, 0i, -24546i, -16574i))), Struct_2(Struct_1(vec4<i32>(16491i, -1i, -1i, -17383i))), Struct_2(Struct_1(vec4<i32>(1i, i32(-2147483648), 0i, 1i))), Struct_2(Struct_1(vec4<i32>(1i, 62076i, -1i, 2147483647i))), Struct_2(Struct_1(vec4<i32>(1i, 0i, 1i, 1i))), Struct_2(Struct_1(vec4<i32>(0i, i32(-2147483648), -53572i, 1i))));

var<private> global2: vec2<bool>;

var<private> global3: u32;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = ~(i32(-1i) * -2147483647i);
    global3 = firstLeadingBit(33279u) >> (max(u_input.b.x, 7788u) % 32u);
    global2 = vec2<bool>(any(vec2<bool>(global2.x, 2147483647i == arg_0.a.x)) | global2.x, true);
    var var_1 = select(vec2<bool>(true, true), !select(vec2<bool>(!global2.x, false == global2.x), select(select(vec2<bool>(global2.x, false), vec2<bool>(global2.x, global2.x), true), select(vec2<bool>(true, global2.x), vec2<bool>(global2.x, global2.x), vec2<bool>(false, true)), vec2<bool>(false, true)), vec2<bool>(true, true)), any(!vec2<bool>(true, all(vec2<bool>(true, global2.x)))));
    var var_2 = -1i;
    return -1i;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(vec4<i32>(-1i) * -countOneBits(max(vec4<i32>(-10507i, u_input.a, 0i, u_input.a), vec4<i32>(0i, u_input.a, u_input.a, -2147483647i))));
    var var_1 = countOneBits(~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, u_input.c), vec3<u32>(u_input.b.x, u_input.c, u_input.c), vec3<u32>(u_input.b.x, 1236u, u_input.b.x)), vec3<u32>(4294967295u, 0u, 1u)) ^ min(~(vec3<u32>(1u, u_input.b.x, 6800u) >> (vec3<u32>(62909u, 22557u, u_input.b.x) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(abs(vec3<u32>(4294967295u, u_input.b.x, u_input.c)), vec3<u32>(56323u, 60157u, u_input.b.x) >> (vec3<u32>(83258u, 1u, u_input.b.x) % vec3<u32>(32u)))));
    global3 = firstLeadingBit(_wgslsmith_dot_vec3_u32(~max(vec3<u32>(4294967295u, var_1.x, 67422u), vec3<u32>(0u, 1u, var_1.x) >> (vec3<u32>(var_1.x, var_1.x, 35070u) % vec3<u32>(32u))), vec3<u32>(~var_1.x, _wgslsmith_div_u32(~4294967295u, ~var_1.x), min(_wgslsmith_dot_vec4_u32(vec4<u32>(22566u, 990u, 1u, u_input.c), vec4<u32>(var_1.x, 34737u, var_1.x, 7859u)), ~var_1.x))));
    let var_2 = 42115u;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1447f, _wgslsmith_f_op_f32(-234f * 1161f))))));
    return Struct_3(var_0);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_4) -> vec3<i32> {
    global2 = select(vec2<bool>(false, all(select(vec2<bool>(false, arg_3.d.x), !arg_3.d, select(vec2<bool>(arg_3.d.x, false), vec2<bool>(true, arg_3.d.x), false)))), !(!select(!vec2<bool>(true, arg_3.d.x), arg_3.d, global2.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(31270i, u_input.a, arg_3.c.a.a.x, arg_3.c.a.a.x), countOneBits(arg_3.c.a.a)), firstTrailingBit(-2147483647i)) > ~(-(~arg_3.c.a.a.x)));
    global3 = arg_3.b;
    var var_0 = ~reverseBits(min(arg_3.b, select(1u, ~arg_1.x, !arg_3.d.x)));
    var var_1 = arg_1.x;
    global0 = select(21958u, _wgslsmith_clamp_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 36093u, 4294967295u, u_input.c), vec4<u32>(arg_1.x, arg_1.x, 56515u, 33382u)) & ~47598u), ~_wgslsmith_sub_u32(abs(19650u), ~arg_3.b), arg_3.b >> (~7405u % 32u)), false);
    return ~vec3<i32>(~92247i, min(func_2().a.a.x, ~arg_3.c.a.a.x | -26731i), ~_wgslsmith_dot_vec4_i32(arg_3.c.a.a, -arg_3.c.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(-u_input.a, (func_1(Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a, 0i))) >> (~30570u % 32u)) >> (53954u % 32u));
    let var_1 = ~select(_wgslsmith_div_vec3_i32(max(vec3<i32>(u_input.a, u_input.a, 2147483647i) << (vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.a, -2147483647i), vec3<i32>(u_input.a, -43219i, 1i), vec3<i32>(var_0, u_input.a, u_input.a))), abs(vec3<i32>(0i, -2147483647i, var_0) & vec3<i32>(var_0, var_0, u_input.a))), func_3(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1000f, -2199f, 1312f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-653f, -1904f, 138f, 114f)))), vec2<u32>(~0u, _wgslsmith_mult_u32(1u, u_input.b.x)), Struct_2(Struct_1(vec4<i32>(var_0, 68217i, -2147483647i, 0i))), Struct_4(-1i, 1u, func_2(), select(vec2<bool>(false, global2.x), vec2<bool>(global2.x, true), vec2<bool>(global2.x, global2.x)))), vec3<bool>(true, true, true));
    let var_2 = select(!select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(global2.x, true)), var_1.x <= var_0), true), vec2<bool>(true, true), true);
    global3 = ~firstTrailingBit(u_input.c);
    let var_3 = var_1.yx;
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_1), ~(~select(vec3<u32>(4294967295u, 1u, 4294967295u), ~vec3<u32>(65818u, 5961u, 45566u), any(vec3<bool>(false, var_2.x, global2.x)))), func_1(Struct_1(~abs(vec4<i32>(2147483647i, u_input.a, 0i, u_input.a)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(370f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(181f, -125f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(623f, 461f))))), u_input.c);
}

