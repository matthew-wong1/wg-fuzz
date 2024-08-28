struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_4;

var<private> global2: array<Struct_5, 32>;

var<private> global3: vec3<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_4, arg_3: Struct_3) -> bool {
    var var_0 = !vec2<bool>((all(vec3<bool>(arg_1, arg_2.a.x, true)) || arg_1) & (_wgslsmith_add_u32(u_input.a.x, u_input.a.x) >= firstTrailingBit(0u)), select(!(u_input.a.x < 16886u), all(arg_2.a), true));
    var var_1 = ~select(countOneBits(-2147483647i), arg_2.b.a, any(arg_2.a) && any(vec3<bool>(global1.a.x, true, true)));
    var var_2 = 807f;
    let var_3 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~3606u, select(u_input.a.x, 98204u, var_0.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 79339u), ~vec2<u32>(4294967295u, u_input.a.x)), _wgslsmith_clamp_u32(abs(8338u), ~u_input.a.x, min(1u, 4294967295u))), vec3<u32>(_wgslsmith_mult_u32(1920u, 38988u), 10957u, 1u)), vec3<u32>(0u, u_input.a.x, 1u >> (~u_input.a.x % 32u)));
    let var_4 = firstTrailingBit(reverseBits(firstTrailingBit(~(32334u | u_input.a.x))));
    return true;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> Struct_2 {
    var var_0 = vec3<bool>(!func_3(Struct_1(_wgslsmith_f_op_f32(sign(global1.b.b.x))), false, Struct_4(!vec4<bool>(true, false, true, global1.a.x), Struct_2(0i, global1.b.b, global1.b.c)), Struct_3(vec2<i32>(-43147i, global1.b.a))), !(!any(global1.a.zww) && false), u_input.a.x < ~17094u);
    let var_1 = _wgslsmith_add_i32(26788i, ~37013i);
    var var_2 = ~18927u;
    global3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(735f - -1000f) * _wgslsmith_div_f32(-718f, -2035f)))), _wgslsmith_div_f32(-2064f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1865f - -1101f) - -1464f)), 1000f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global1.b.b, vec3<f32>(global1.b.c.a, global3.x, 1000f)))) - _wgslsmith_f_op_vec3_f32(global1.b.b * vec3<f32>(_wgslsmith_div_f32(508f, -1000f), _wgslsmith_f_op_f32(811f + global3.x), -312f))));
    let var_3 = select(vec4<bool>(global1.a.x, any(var_0.zx), all(select(global1.a, !global1.a, select(global1.a, global1.a, true))), global1.a.x), vec4<bool>(true & !(global1.b.b.x != 590f), true, !global1.a.x, true), global1.a.x);
    return global1.b;
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    global1 = Struct_4(global1.a, func_2(_wgslsmith_mult_vec3_i32(-vec3<i32>(global1.b.a, -2147483647i, u_input.b.x), ~(-vec3<i32>(1i, 2147483647i, u_input.b.x))), _wgslsmith_mod_i32(~(~1i), 2147483647i)));
    let var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 32u)];
    global2 = array<Struct_5, 32>();
    global2 = array<Struct_5, 32>();
    var var_1 = vec3<u32>(8241u, u_input.a.x, firstTrailingBit(0u));
    return func_2(max(vec3<i32>(~u_input.b.x, global1.b.a, -16547i), (vec3<i32>(-1i) * -vec3<i32>(1i, -1i, global1.b.a)) | _wgslsmith_div_vec3_i32(var_0.b.wwz, firstLeadingBit(u_input.b.yww))), _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(7836i, var_0.a.b.a), ~2147483647i) ^ _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, u_input.b.x), -1i), ~firstLeadingBit(-var_0.b.x)));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_4) -> vec4<f32> {
    global0 = func_3(Struct_1(arg_1.b.x), select(false, true, (!arg_2.a.x == arg_2.a.x) && arg_2.a.x), arg_2, Struct_3(min(_wgslsmith_div_vec2_i32(vec2<i32>(60301i, arg_1.a), vec2<i32>(arg_1.a, -2147483647i)) << (vec2<u32>(2708u, u_input.a.x) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.b.a, 13352i), u_input.b.xw) ^ vec2<i32>(u_input.b.x, 26045i))));
    global2 = array<Struct_5, 32>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-207f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x - 521f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_2.b.c.a)), _wgslsmith_f_op_f32(select(global1.b.b.x, global1.b.c.a, false)))))));
    global1 = arg_2;
    global0 = false;
    return vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_div_f32(arg_1.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.x)) * -1171f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.b.x, -141f) * -1804f));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global1.b.b, vec3<f32>(global1.b.b.x, 262f, global1.b.c.a)))), global1.b.b)));
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(global3.x, 366f, 754f, global1.b.b.x), _wgslsmith_f_op_vec4_f32(func_4(true, func_1(_wgslsmith_sub_vec3_u32(vec3<u32>(763u, 61164u, u_input.a.x) ^ vec3<u32>(8174u, 53395u, u_input.a.x), vec3<u32>(1u, u_input.a.x, u_input.a.x))), Struct_4(global1.a, global1.b))));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1361f, 506f, global3.x, -1106f)))) - vec4<f32>(_wgslsmith_div_f32(global3.x, global3.x), var_0.x, var_0.x, 1000f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, var_0.x, -1311f, -817f), vec4<f32>(global1.b.b.x, global1.b.b.x, -116f, -144f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-267f, -911f, 1384f, var_0.x))))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(924f, func_1(vec3<u32>(u_input.a.x, u_input.a.x, 1u)).c.a))))));
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_f32(step(-125f, _wgslsmith_div_f32(-1330f, global1.b.b.x))))));
    var var_4 = _wgslsmith_clamp_vec2_u32(firstLeadingBit(u_input.a) << (~(~vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.a.x, 1u)), reverseBits(u_input.a)), u_input.a);
    global2 = array<Struct_5, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x | ~u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

