struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> Struct_1 {
    global0 = array<f32, 14>();
    return Struct_1(2556f, false);
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = _wgslsmith_dot_vec4_i32(((firstTrailingBit(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, -24329i)) | reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i))) << ((_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.e.x, 16900u, 34969u, 56538u), vec4<u32>(51994u, arg_0.e.x, 5785u, 1u)) & arg_0.e) % vec4<u32>(32u))) >> (vec4<u32>(~(89788u << (u_input.b.x % 32u)), _wgslsmith_div_u32(9294u, _wgslsmith_div_u32(arg_0.e.x, 0u)), u_input.b.x, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, u_input.a.x, -1i << (min(arg_0.e.x, 44421u) % 32u), -reverseBits(u_input.a.x)) << (reverseBits(arg_0.e) % vec4<u32>(32u)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(226f)), arg_0.b.a, _wgslsmith_f_op_f32(max(-1080f, arg_0.c.a))))), func_2(), Struct_1(global0[_wgslsmith_index_u32(min(~_wgslsmith_mod_u32(u_input.c.x, u_input.b.x), _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(85457u, 5987u))), 14u)], func_2().b), vec3<bool>(!arg_0.b.b, true || (select(true, false, false) != arg_0.c.b), !arg_0.d.x || false), u_input.c);
    var var_2 = ~vec3<i32>(u_input.a.x, firstLeadingBit(u_input.a.x), firstLeadingBit(var_0 & var_0));
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1751f, 1248f, -1168f) * vec3<f32>(global0[_wgslsmith_index_u32(20266u, 14u)], -1658f, global0[_wgslsmith_index_u32(26557u, 14u)])) + _wgslsmith_f_op_vec3_f32(arg_0.a + vec3<f32>(global0[_wgslsmith_index_u32(23938u, 14u)], global0[_wgslsmith_index_u32(arg_0.e.x, 14u)], var_1.c.a))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_0.a), vec3<f32>(_wgslsmith_f_op_f32(max(385f, -376f)), -1016f, _wgslsmith_div_f32(var_1.a.x, -2490f))))) * var_1.a);
}

fn func_4(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = 372f;
    var var_1 = _wgslsmith_dot_vec3_u32(~(~firstTrailingBit(~vec3<u32>(34430u, arg_0.e.x, 1u))), vec3<u32>(arg_0.e.x, arg_0.e.x ^ 0u, min(0u, u_input.b.x) & ~(~u_input.c.x)));
    global0 = array<f32, 14>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(18336u, arg_0.e.x), 4294967295u), 14u)] + _wgslsmith_div_f32(739f, func_2().a))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, 421f))) * -1065f));
    var var_3 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(~(-1i), ~u_input.a.x), -74266i), 1i, i32(-1i) * -3436i, _wgslsmith_clamp_i32(-1i, ~_wgslsmith_add_i32(~u_input.a.x, u_input.a.x), u_input.a.x));
    return vec4<u32>(_wgslsmith_mult_u32(122509u, 24488u), _wgslsmith_add_u32(reverseBits(~(u_input.b.x >> (u_input.b.x % 32u))), ~arg_0.e.x), u_input.c.x, select(35408u, reverseBits(max(4294967295u, ~arg_0.e.x)), any(vec2<bool>(arg_0.d.x, !var_2))));
}

fn func_1() -> Struct_1 {
    global0 = array<f32, 14>();
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_mult_vec2_u32(~(~(~(~u_input.c.yz))), u_input.b.yy);
    let var_2 = Struct_4(func_2(), func_4(Struct_2(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 14u)], global0[_wgslsmith_index_u32(var_1.x, 14u)], 2679f), Struct_1(global0[_wgslsmith_index_u32(var_1.x, 14u)], false), Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], false), vec3<bool>(false, false, false), vec4<u32>(var_1.x, u_input.c.x, var_1.x, u_input.c.x)))), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 14u)], true), Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(16483u, 14u)]), all(vec3<bool>(true, false, true))), vec3<bool>(true, true, true), ~vec4<u32>(var_1.x, 0u, u_input.b.x, 1u))), -1171f, abs(~select(min(vec2<u32>(u_input.b.x, 45659u), u_input.b.xz), min(u_input.b.xy, vec2<u32>(43412u, u_input.c.x)), true)));
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec3<f32>(var_2.a.a, 973f, global0[_wgslsmith_index_u32(29306u, 14u)]), Struct_1(-1319f, var_2.a.b), Struct_1(-1655f, false), vec3<bool>(var_2.a.b, var_2.a.b, false), var_2.b))) - vec3<f32>(1569f, -724f, 1619f)))), func_2(), Struct_1(global0[_wgslsmith_index_u32(56441u, 14u)], true & all(vec3<bool>(false, true, var_2.a.b))), vec3<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(var_2.a.b, var_2.a.b, false), false)), any(vec3<bool>(var_2.a.b, false, var_2.a.b)), !all(vec3<bool>(true, false, var_2.a.b))), _wgslsmith_mult_vec4_u32(~u_input.c, var_2.b)), var_2.d, ~(var_1.x & max(var_1.x, 0u)) & 25752u);
    return Struct_1(var_2.c, var_2.a.b != var_3.a.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(40250u, 14u)] - 532f), -324f, -262f, var_0.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-633f, 1064f, -118f, 492f) - vec4<f32>(-347f, var_0.a, var_0.a, -1800f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -271f, -1187f, var_0.a))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(981f, -626f, -239f, global0[_wgslsmith_index_u32(4294967295u, 14u)]))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], var_0.a, var_0.a, -2108f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

