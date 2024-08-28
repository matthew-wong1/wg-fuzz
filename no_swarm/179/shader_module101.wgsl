struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: u32;

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec2<bool>(true, false), false, vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false), false, vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true), false, vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true), false, vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false), true, vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false), false, vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true), true, vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false), false, vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false), true, vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false), true, vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false), true, vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false), false, vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false), true, vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false), true, vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true), true, vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true), true, vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true), true, vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false), true, vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false), true, vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false), true, vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false), true, vec2<bool>(true, false)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec3<f32> {
    global1 = u_input.c;
    let var_0 = Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, false, true, true)), true)), true || (countOneBits(u_input.a) >= (-19232i | u_input.a)), !(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))));
    let var_1 = vec3<bool>(u_input.a <= u_input.a, var_0.a.b, !var_0.a.c.x);
    global2 = array<Struct_1, 21>();
    var var_2 = Struct_2(var_0.a);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-743f, arg_0, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-1042f - arg_0)))));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 979f, arg_1)))))), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(abs(689f)))), true)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(-568f * arg_1), -846f)))), any(vec4<bool>(!arg_0.a.c.x & all(vec4<bool>(arg_0.a.b, arg_0.a.a.x, arg_0.a.b, arg_0.a.b)), arg_0.a.c.x, all(arg_0.a.c) || arg_0.a.b, arg_0.a.b))));
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -12785i, _wgslsmith_mult_i32(0i, arg_2)), -vec3<i32>(-1i, _wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, 1i), u_input.a), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))));
    var var_2 = global2[_wgslsmith_index_u32(~reverseBits(u_input.c), 21u)];
    let var_3 = Struct_1(vec2<bool>(all(select(vec3<bool>(false, arg_0.a.b, var_2.a.x), !vec3<bool>(var_2.c.x, true, var_2.a.x), true)), arg_1 > arg_1), all(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, arg_0.a.a.x, var_2.b), vec3<bool>(true, true, false)), !vec3<bool>(arg_0.a.a.x, true, true), !vec3<bool>(true, var_2.a.x, arg_0.a.a.x)), vec3<bool>(true, false, any(arg_0.a.c)), !(!vec3<bool>(false, false, arg_0.a.c.x)))), vec2<bool>(false, select(any(vec2<bool>(false, true)), any(vec3<bool>(arg_0.a.c.x, var_2.a.x, var_2.a.x)), arg_0.a.b)));
    global2 = array<Struct_1, 21>();
    return Struct_1(!select(!arg_0.a.c, arg_0.a.a, vec2<bool>(var_0.x >= 319f, var_3.a.x && var_2.a.x)), true, var_2.c);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = Struct_2(Struct_1(vec2<bool>(!(!arg_0.c.x), true & !arg_0.a.x), true, !vec2<bool>(true, any(vec3<bool>(false, arg_0.b, true)))));
    var var_1 = true;
    var_1 = u_input.a != (arg_1 << (_wgslsmith_mult_u32(4068u, abs(u_input.c) << ((u_input.c >> (u_input.c % 32u)) % 32u)) % 32u));
    let var_2 = func_2(Struct_2(Struct_1(!select(arg_0.c, vec2<bool>(true, var_0.a.c.x), true), true, vec2<bool>(!var_0.a.a.x, all(vec4<bool>(var_0.a.b, false, var_0.a.b, false))))), 1041f, _wgslsmith_dot_vec4_i32(max(vec4<i32>(~u_input.a, _wgslsmith_clamp_i32(47877i, 2147483647i, 27979i), 25503i, select(arg_1, -20750i, true)), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, 47668i, -2147483647i, u_input.a), vec4<i32>(1i, -2147483647i, u_input.a, arg_1)))), vec4<i32>(-1i) * -abs(vec4<i32>(35571i, 30734i, -1i, arg_1))), u_input.c << (u_input.c % 32u));
    let var_3 = true;
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var_0 = ~u_input.b | countOneBits(u_input.b);
    let var_1 = (0u << (~reverseBits(_wgslsmith_div_u32(var_0.x, var_0.x)) % 32u)) | var_0.x;
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, ~_wgslsmith_mod_u32(~reverseBits(0u), u_input.c)), 21u)];
    let var_3 = global2[_wgslsmith_index_u32(func_1(global2[_wgslsmith_index_u32(max(~(~_wgslsmith_mult_u32(21163u, u_input.c)), firstLeadingBit(~abs(var_0.x))), 21u)], -_wgslsmith_mod_i32(-1i, ~u_input.a ^ u_input.a)), 21u)];
    var var_4 = global2[_wgslsmith_index_u32(16186u, 21u)];
    var_4 = func_2(Struct_2(func_2(Struct_2(func_2(Struct_2(Struct_1(vec2<bool>(false, var_4.c.x), false, vec2<bool>(true, true))), 698f, -5957i, 4294967295u)), _wgslsmith_f_op_f32(round(-215f)), -u_input.a, 8745u ^ var_1)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1461f - -455f)))), 735f)), -4167i, 0u);
    let var_5 = _wgslsmith_add_vec2_u32(u_input.b.zz, select(abs(vec2<u32>(func_1(global2[_wgslsmith_index_u32(66735u, 21u)], u_input.a), ~1u)), u_input.b.yz | firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, 0u), u_input.b.zz)), !func_2(Struct_2(Struct_1(vec2<bool>(var_3.a.x, false), var_3.b, vec2<bool>(true, var_2.a.x))), _wgslsmith_div_f32(416f, 919f), _wgslsmith_dot_vec3_i32(vec3<i32>(-9814i, 55223i, u_input.a), vec3<i32>(u_input.a, 22826i, u_input.a)), 1u).c));
    global1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(~58287u, 3212u), reverseBits(min(var_5.x, ~var_5.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(((0u << (u_input.b.x % 32u)) >> (~var_5.x % 32u)) & _wgslsmith_sub_u32(1u, ~u_input.c)), ~u_input.a, _wgslsmith_f_op_f32(round(-456f)), ~_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a, u_input.a, u_input.a, -25386i), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -2147483647i, u_input.a, -2147483647i), vec4<i32>(1i, 2147483647i, 1i, 28310i)))), ~55830u);
}

