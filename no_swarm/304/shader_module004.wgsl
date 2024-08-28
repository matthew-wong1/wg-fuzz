struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<bool>(false, false), vec2<f32>(538f, 155f), vec3<f32>(819f, -1000f, -868f), 0u));

var<private> global3: u32 = 0u;

var<private> global4: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    global3 = ~firstLeadingBit(~31865u);
    var var_0 = vec3<f32>(-507f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-144f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global4.c.x), _wgslsmith_f_op_f32(global4.c.x + -811f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b.x) + _wgslsmith_f_op_f32(ceil(-809f))), global4.c.x) + _wgslsmith_f_op_f32(select(213f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-502f, 407f) + 712f), false))));
    let var_1 = vec4<i32>(-1i) * -min(~vec4<i32>(-39780i, 2147483647i, -1i, -1i), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), ~vec4<i32>(50089i, -5195i, 2147483647i, arg_0.x)));
    var var_2 = Struct_1(select(vec2<bool>(true, true), global4.a, global0.zy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global4.c.yx * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -763f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(635f, 431f), global4.c.zx))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global4.c, global4.c)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, global4.c.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1161f, 882f, var_0.x) - vec3<f32>(1000f, global4.c.x, global4.c.x))))), ~55482u);
    var var_3 = ~global4.d;
    return false || global4.a.x;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(select(vec2<bool>(true, func_3(vec2<i32>(-90713i, 0i))), !arg_0.a, 1659f < _wgslsmith_f_op_f32(max(arg_0.c.x, global4.c.x))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(step(-277f, _wgslsmith_f_op_f32(103f * 2435f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-423f, arg_0.c.x)) + _wgslsmith_f_op_f32(-2016f * 657f))))), vec3<f32>(-403f, arg_0.c.x, global4.c.x), ~49729u);
    let var_1 = global1.x;
    var var_2 = arg_0.d;
    var var_3 = firstTrailingBit(u_input.c);
    let var_4 = countOneBits(vec2<u32>(1u ^ ~arg_0.d, ~35689u));
    return Struct_1(!vec2<bool>(var_0.a.x || true, all(global0.wyy)), var_0.c.xy, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(exp2(var_0.b.x)), _wgslsmith_f_op_f32(global4.c.x + var_0.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_0.c, vec3<f32>(var_0.c.x, global4.c.x, -747f))) - arg_0.c))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 1000f, 654f), vec3<f32>(-316f, var_0.b.x, 955f), true)), _wgslsmith_f_op_vec3_f32(-var_0.c), true)))), _wgslsmith_dot_vec4_u32(~((vec4<u32>(var_0.d, 63770u, global1.x, 0u) << (vec4<u32>(25869u, var_0.d, global4.d, global1.x) % vec4<u32>(32u))) ^ min(vec4<u32>(4294967295u, global1.x, 45092u, arg_0.d), vec4<u32>(51973u, 122224u, arg_0.d, 30037u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(global4.d, 1u, 52694u, 0u), ~vec4<u32>(1u, u_input.b, var_4.x, arg_0.d)) ^ ~(~vec4<u32>(arg_0.d, 69129u, global1.x, 0u))));
}

fn func_1() -> bool {
    global3 = 1u;
    global4 = global2[_wgslsmith_index_u32(1u, 1u)];
    var var_0 = func_2(global2[_wgslsmith_index_u32(33320u, 1u)]);
    let var_1 = 14721u;
    let var_2 = Struct_1(vec2<bool>(false, true), vec2<f32>(var_0.c.x, var_0.b.x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1374f, _wgslsmith_f_op_f32(var_0.c.x - global4.c.x)), 5113u);
    return !global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_add_u32(61730u, 58204u);
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.b.x, -915f, -1235f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1144f, -1078f, _wgslsmith_div_f32(428f, _wgslsmith_f_op_f32(min(global4.c.x, global4.b.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1865f, global4.c.x, global4.c.x) + vec3<f32>(-1300f, 1727f, global4.c.x))) * _wgslsmith_div_vec3_f32(global4.c, _wgslsmith_f_op_vec3_f32(-global4.c))))), (func_1() && true) != func_2(Struct_1(func_2(global2[_wgslsmith_index_u32(global4.d, 1u)]).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c.x, global4.b.x)), vec3<f32>(-213f, 766f, 990f), reverseBits(global1.x))).a.x));
    global4 = global2[_wgslsmith_index_u32(~u_input.a.x, 1u)];
    let var_1 = Struct_1(global4.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.xy))), var_0, _wgslsmith_mult_u32(global1.x, global1.x));
    var var_2 = ~(u_input.a << (reverseBits(_wgslsmith_add_vec3_u32(abs(u_input.a), u_input.a)) % vec3<u32>(32u)));
    global4 = func_2(Struct_1(!select(global4.a, !global4.a, true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1457f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-208f, 1398f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(var_0.zx, global4.b)))), vec2<bool>(true, !global0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(abs(var_1.c.x)), var_1.b.x)), 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(max(~vec4<i32>(_wgslsmith_add_i32(-75859i, 0i), u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-27926i, u_input.c, 1i, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.c, 0i)), 2147483647i), select(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 1i, -5557i, -1i), vec4<i32>(u_input.c, 0i, -9734i, u_input.c)), vec4<i32>(u_input.c, u_input.c, u_input.c, -1i)), vec4<i32>(2147483647i, u_input.c, -2147483647i, u_input.c) & ~vec4<i32>(u_input.c, 2147483647i, -2147483647i, 18474i), !(51201u >= var_2.x))), _wgslsmith_div_u32(~global4.d & 0u, ~(~_wgslsmith_sub_u32(0u, var_1.d))), var_1.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_1.b))))) - _wgslsmith_f_op_vec2_f32(-var_0.xz)));
}

