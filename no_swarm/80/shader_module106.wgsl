struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1789f, -491f);

var<private> global1: i32 = 19549i;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 1475f, global0.x), vec3<f32>(arg_1.a, arg_0.a, 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(998f, 615f, -162f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1591f, arg_1.a)))))), arg_1, vec3<u32>(~0u, 84249u, 4294967295u));
    global1 = -19819i;
    let var_1 = select(true, true, true);
    let var_2 = var_0.b.b;
    global1 = -42710i;
    return true;
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))), func_3(Struct_1(global0.x, vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_f32(1072f - global0.x), vec3<bool>(any(vec4<bool>(arg_0, arg_0, true, arg_0)), false, arg_0)), reverseBits(u_input.a.x)), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), 1000f) * vec2<f32>(_wgslsmith_f_op_f32(floor(1549f)), 1005f))), Struct_1(global0.x, vec3<bool>(true, true, true)));
    let var_1 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_div_vec2_u32(vec2<u32>(43726u, 4294967295u), vec2<u32>(4294967295u, 27066u))), vec2<u32>(abs(0u), _wgslsmith_add_u32(1u, 20216u))), max(~0u, 4294967295u));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -453f) - -336f), var_0.d.a, func_3(var_0.d, var_0.d, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, 2477i, u_input.a.x, 2693i)) & select(u_input.a.x, u_input.a.x, arg_0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), var_0.d.a));
    let var_3 = Struct_3(var_0.c.a);
    return _wgslsmith_div_u32(~4294967295u, firstTrailingBit(1u));
}

fn func_1() -> bool {
    let var_0 = func_2(true);
    var var_1 = global0.x;
    let var_2 = u_input.a.wxx;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, global0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-463f, global0.x)), global0.x < global0.x)), vec2<f32>(_wgslsmith_f_op_f32(global0.x * 1961f), _wgslsmith_f_op_f32(f32(-1f) * -649f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-731f * _wgslsmith_f_op_f32(f32(-1f) * -185f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, -1020f))), vec2<f32>(global0.x, -140f)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1530f, global0.x))))))));
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3.x, global0.x))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1932f, global0.x), vec2<f32>(-1000f, var_3.x)))))) * vec2<f32>(-1184f, _wgslsmith_f_op_f32(round(var_3.x))))));
    return true;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> vec3<i32> {
    var var_0 = -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~u_input.a, u_input.a, vec4<i32>(-7888i, firstTrailingBit(2595i), -14064i, -1i)), vec4<i32>(-1i, -_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), -18134i, 2147483647i));
    let var_1 = global0.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) + arg_0), select(select(!vec3<bool>(arg_1, false, true), vec3<bool>(arg_1, arg_1 & arg_1, arg_1 & arg_1), true), vec3<bool>(func_3(Struct_1(959f, vec3<bool>(arg_1, true, false)), Struct_1(1726f, vec3<bool>(true, arg_1, true)), u_input.a.x), true || (u_input.a.x < u_input.a.x), !(arg_1 && arg_1)), !vec3<bool>(arg_1 && false, true, false)));
    var var_3 = var_2.b;
    var var_4 = _wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(~(~vec4<u32>(27068u, 1u, 1u, 0u)), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 29779u, 9301u, 1u), vec4<u32>(76129u, 5954u, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 2967u, 101149u)), vec4<u32>(56578u, 0u, 15522u, 4294967295u))), vec4<u32>(_wgslsmith_add_u32(1u, firstTrailingBit(0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(0u, 0u, 53588u)) & ~5730u, 1u, 22417u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 57450u), 0u, 60814u, ~1u), reverseBits(vec4<u32>(4294967295u, 1u, 1u, 4294967295u)), ~(~vec4<u32>(51415u, 0u, 1u, 0u))) % vec4<u32>(32u)));
    return max(~u_input.a.yxy, ~(vec3<i32>(-1i) * -u_input.a.wxz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(global0.x, true & func_1(), Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, 978f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-891f, 111f)) + vec2<f32>(843f, 1000f))))));
    var_0 = u_input.a.yyy;
    var var_1 = Struct_1(1000f, !select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, true, true, true)), true, true), !all(vec2<bool>(false, false))));
    let var_2 = var_1.b.x;
    var_1 = Struct_1(_wgslsmith_f_op_f32(round(-445f)), select(select(vec3<bool>(var_1.b.x & var_1.b.x, var_1.b.x, var_1.b.x), var_1.b, var_1.b.x && var_1.b.x), vec3<bool>(global0.x >= var_1.a, true, var_1.b.x), select(var_1.b, !var_1.b, !var_1.b)));
    var_0 = vec3<i32>(u_input.a.x, var_0.x, ~var_0.x);
    var var_3 = ~_wgslsmith_div_i32(14512i, firstTrailingBit(_wgslsmith_dot_vec4_i32(abs(u_input.a), ~vec4<i32>(10698i, var_0.x, 1i, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-15623i >> (select(1u, 12629u, true == var_1.b.x) % 32u)), 2147483647i, vec3<u32>(1u, 16943u, ~_wgslsmith_mult_u32(4294967295u, 0u)), max(firstLeadingBit(vec4<i32>(var_0.x, -62077i, -39143i, 7563i)), _wgslsmith_mod_vec4_i32(~u_input.a, -vec4<i32>(u_input.a.x, var_0.x, u_input.a.x, -1i))) | -(_wgslsmith_add_vec4_i32(u_input.a, u_input.a) >> (~vec4<u32>(14567u, 55038u, 0u, 0u) % vec4<u32>(32u))));
}

