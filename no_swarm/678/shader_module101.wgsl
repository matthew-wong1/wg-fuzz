struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_3, 28>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-208f, 171f, -619f, _wgslsmith_f_op_f32(sign(1137f)))));
    global2 = array<Struct_3, 28>();
    global0 = var_0.x;
    global2 = array<Struct_3, 28>();
    let var_1 = global1.yx;
    return _wgslsmith_div_i32(~5216i, i32(-1i) * -2147483647i);
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: f32) -> i32 {
    global0 = -294f;
    let var_0 = arg_2.a;
    global2 = array<Struct_3, 28>();
    global1 = ~abs(u_input.b.www);
    var var_1 = false;
    return 52412i;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_3) -> bool {
    global1 = vec3<u32>(min(1u, 27750u), 63943u, 10580u);
    global1 = _wgslsmith_mult_vec3_u32(u_input.b.xzz, _wgslsmith_mult_vec3_u32(u_input.b.xyy, vec3<u32>(u_input.b.x << (u_input.b.x % 32u), global1.x, 4294967295u)));
    let var_0 = vec2<i32>(27492i, min(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_1.x, _wgslsmith_add_i32(arg_1.x, arg_1.x)), func_2(), max(func_2(), max(arg_1.x, arg_1.x))), arg_1.x));
    global2 = array<Struct_3, 28>();
    var var_1 = Struct_2(Struct_1(vec4<bool>(false, false, !(arg_2.a & arg_2.a), !all(vec2<bool>(true, arg_2.a))), _wgslsmith_clamp_vec3_u32(firstTrailingBit(_wgslsmith_mod_vec3_u32(u_input.b.zyx, vec3<u32>(u_input.b.x, global1.x, global1.x))), ~min(vec3<u32>(1u, 44030u, u_input.a), vec3<u32>(global1.x, 54744u, 1u)), ~(vec3<u32>(4294967295u, global1.x, global1.x) & vec3<u32>(56755u, u_input.b.x, u_input.a))), -10076i <= func_3(true, vec2<u32>(global1.x, global1.x), Struct_2(Struct_1(vec4<bool>(arg_2.a, arg_2.a, false, false), vec3<u32>(4294967295u, u_input.b.x, u_input.a), arg_2.a, vec4<i32>(1i, -2147483647i, var_0.x, -2147483647i)), arg_0.x), 1064f), select(-_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, var_0.x, var_0.x), vec4<i32>(0i, 83203i, -839i, var_0.x)), vec4<i32>(-arg_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, 1i, -16085i, -2147483647i), vec4<i32>(-44985i, 2147483647i, arg_1.x, arg_1.x)), ~var_0.x, firstLeadingBit(arg_1.x)), _wgslsmith_div_f32(1194f, arg_0.x) > _wgslsmith_f_op_f32(arg_0.x - arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))))));
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 9608i;
    let var_1 = Struct_4(!(!func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(485f, 884f, -474f) * vec3<f32>(526f, -1214f, -1000f)), firstLeadingBit(vec3<i32>(var_0, var_0, -1i)), Struct_3(false))), ~u_input.b.zyw);
    var var_2 = select(all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.a, var_1.a, var_1.a, true), vec4<bool>(true, var_1.a, var_1.a, true)), select(vec4<bool>(var_1.a, true, true, var_1.a), !vec4<bool>(var_1.a, var_1.a, var_1.a, false), vec4<bool>(var_1.a, var_1.a, var_1.a, true)), var_1.a)), true, !(true & any(select(vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, false)))));
    var var_3 = global2[_wgslsmith_index_u32(max(abs(0u), 4294967295u), 28u)];
    var_3 = Struct_3(any(select(!vec2<bool>(false, var_1.a), vec2<bool>(var_1.a, false), vec2<bool>(true, false))) && var_1.a);
    let var_4 = Struct_3(false);
    let var_5 = 57565i;
    let x = u_input.a;
    s_output = StorageBuffer(max(~max(-vec2<i32>(var_5, var_5), ~vec2<i32>(-4757i, var_5)), vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, var_0, var_0, var_0), vec4<i32>(2147483647i, var_0, var_0, 0i))), var_0)), -15526i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1569f, 575f, -927f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1502f, 251f, -256f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(298f, -771f, -294f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-146f, -1272f)))), vec2<f32>(-432f, _wgslsmith_f_op_f32(floor(1045f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-577f, _wgslsmith_f_op_f32(select(-336f, -292f, var_1.a))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))));
}

