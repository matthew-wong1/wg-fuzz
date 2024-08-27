struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(-188f, -1203f, 965f, 651f, 541f, 1000f, -663f);

var<private> global1: Struct_2;

var<private> global2: array<i32, 15>;

var<private> global3: Struct_4 = Struct_4(vec3<i32>(-41672i, i32(-2147483648), 9907i), true, vec2<i32>(1i, 1i), false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> vec4<i32> {
    global1 = arg_1.a;
    let var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.a, 7u)]))), global0[_wgslsmith_index_u32(global1.a, 7u)], any(vec4<bool>(false, false, false, false)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(878f))))), global0[_wgslsmith_index_u32(~46566u, 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-911f - -644f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-187f, global0[_wgslsmith_index_u32(u_input.c, 7u)], true))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c.d), global0[_wgslsmith_index_u32(arg_1.a.a, 7u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_1.c.d, -144f, arg_1.c.a)))), _wgslsmith_div_f32(arg_1.c.d, -591f)))));
    global3 = Struct_4(firstLeadingBit(arg_1.c.c.zyx), _wgslsmith_add_u32(1u, u_input.a.x) < u_input.c, ~global3.c, global3.d);
    var var_1 = arg_1.c;
    let var_2 = -arg_1.c.c;
    return arg_1.c.c;
}

fn func_2() -> Struct_3 {
    var var_0 = global1.a;
    let var_1 = Struct_3(Struct_2(~(~abs(4294967295u))), !vec2<bool>(global3.b, true), Struct_1(all(vec2<bool>(true, global3.d)), global3.b, -_wgslsmith_add_vec4_i32(func_3(global3.a.x, Struct_3(Struct_2(u_input.b.x), vec2<bool>(true, false), Struct_1(true, global3.d, vec4<i32>(global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(u_input.c, 15u)], 2147483647i, 0i), global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global3.c))), abs(vec4<i32>(global2[_wgslsmith_index_u32(global1.a, 15u)], -59869i, 2147483647i, 63167i))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1462f, global0[_wgslsmith_index_u32(u_input.a.x, 7u)])), _wgslsmith_f_op_f32(-521f + -1427f)))), vec2<i32>(abs(global2[_wgslsmith_index_u32(~4294967295u, 15u)]), ~global3.a.x)));
    global1 = var_1.a;
    var var_2 = global3.a.zz;
    let var_3 = var_1;
    return var_3;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_2) -> Struct_4 {
    global3 = Struct_4(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(30025i, -2147483647i, -52629i)) | vec3<i32>(reverseBits(arg_2.c.c.x), ~2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_2.c.c.x, global2[_wgslsmith_index_u32(arg_3.a, 15u)]), vec3<i32>(-4822i, -1i, 0i))), _wgslsmith_mod_vec3_i32(~firstLeadingBit(vec3<i32>(arg_1.e.x, global3.a.x, arg_2.c.e.x)), arg_0.c.c.wxw)), global0[_wgslsmith_index_u32(~func_2().a.a, 7u)] >= _wgslsmith_f_op_f32(f32(-1f) * -1110f), abs(vec2<i32>(-(~arg_1.c.x), -(global2[_wgslsmith_index_u32(4294967295u, 15u)] & arg_2.c.c.x))), arg_0.b.x);
    global3 = Struct_4(select(~vec3<i32>(1i, arg_2.c.c.x, global3.c.x), _wgslsmith_mod_vec3_i32(global3.a, select(vec3<i32>(-4316i, -2147483647i, arg_0.c.c.x), global3.a, true)), any(vec3<bool>(arg_2.c.a, true, arg_2.b.x))) & -arg_1.c.wwx, !func_2().b.x, select(vec2<i32>(~(~arg_2.c.e.x), arg_1.c.x), arg_1.c.wx, arg_1.b), true);
    global0 = array<f32, 7>();
    let var_0 = u_input.a.wy;
    return Struct_4(vec3<i32>(arg_0.c.e.x, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.x, var_0.x, _wgslsmith_mod_u32(reverseBits(arg_2.a.a), ~71u)), 15u)], reverseBits(global2[_wgslsmith_index_u32(min(u_input.b.x, ~5573u), 15u)])), !(!global3.b) || false, ~firstTrailingBit(arg_2.c.c.wz >> ((u_input.b.zx ^ u_input.a.yx) % vec2<u32>(32u))), true);
}

fn func_1() -> vec3<bool> {
    var var_0 = func_4(func_2(), func_2().c, Struct_3(func_2().a, vec2<bool>(true, global3.b), Struct_1(any(vec2<bool>(global3.d, true)), global3.d, vec4<i32>(-global3.c.x, _wgslsmith_mod_i32(-5338i, global3.a.x), ~global2[_wgslsmith_index_u32(u_input.a.x, 15u)], ~0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(391f))), ~_wgslsmith_mult_vec2_i32(global3.a.xy, vec2<i32>(-75354i, global2[_wgslsmith_index_u32(global1.a, 15u)])))), Struct_2(1u));
    var var_1 = Struct_3(func_2().a, vec2<bool>(true, true), func_2().c);
    var var_2 = ~(~(~(firstTrailingBit(u_input.a.x) ^ 4294967295u)));
    var_1 = func_2();
    let var_3 = func_4(func_2(), func_2().c, func_2(), Struct_2(1u)).a.xy;
    return !vec3<bool>(select(true, func_4(Struct_3(var_1.a, vec2<bool>(false, true), var_1.c), Struct_1(var_1.c.a, true, vec4<i32>(var_1.c.c.x, global3.a.x, -1i, 3880i), 774f, vec2<i32>(var_1.c.e.x, 1i)), func_2(), func_2().a).d, global3.d), global3.b, all(vec4<bool>(var_1.c.a, var_0.b, var_1.b.x, func_2().c.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(global2[_wgslsmith_index_u32(global1.a, 15u)], -2147483647i);
    var var_1 = vec2<u32>(84840u, u_input.b.x);
    var var_2 = !select(!(!select(vec3<bool>(false, true, global3.b), vec3<bool>(global3.d, true, global3.d), vec3<bool>(true, true, global3.d))), vec3<bool>(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 0i) > firstTrailingBit(var_0), !(var_0 < global2[_wgslsmith_index_u32(7927u, 15u)]), true), !any(func_1()));
    let var_3 = -func_4(Struct_3(func_2().a, vec2<bool>(func_2().b.x, true), func_2().c), func_2().c, func_2(), func_2().a).a.x;
    var var_4 = func_4(func_2(), func_2().c, func_2(), Struct_2(1u));
    let var_5 = Struct_1(all(!vec3<bool>(false, false, var_4.b)) & !(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(72518u, 7u)]) >= global0[_wgslsmith_index_u32(~87932u, 7u)]), !(!any(vec4<bool>(global3.d, false, var_2.x, false)) | true), _wgslsmith_mod_vec4_i32(-vec4<i32>(-global2[_wgslsmith_index_u32(global1.a, 15u)], _wgslsmith_mult_i32(-1i, var_0), min(var_3, var_4.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(var_1.x, 15u)], -2147483647i, var_3), global3.a)), func_3(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_4.c.x, 0i, -66622i), vec3<i32>(global3.c.x, global3.c.x, 1i)), 2147483647i), func_2())), 240f, vec2<i32>(global3.a.x, -1i));
    var var_6 = vec4<i32>(abs(10387i), _wgslsmith_add_i32(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(abs(var_1.x), 15u)], _wgslsmith_div_i32(-2147483647i, var_0)), -1403i), i32(-1i) * -16329i, 9299i << (((~62937u ^ var_1.x) << (~firstTrailingBit(1u) % 32u)) % 32u));
    var var_7 = select(-54063i, -2147483647i | (global2[_wgslsmith_index_u32(~(~0u), 15u)] << (1u % 32u)), true);
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(13559i, max(-global2[_wgslsmith_index_u32(u_input.b.x, 15u)], -global3.c.x)), ~_wgslsmith_dot_vec3_i32(~(-vec3<i32>(61439i, var_6.x, global2[_wgslsmith_index_u32(0u, 15u)])), vec3<i32>(-1i) * -var_5.c.zyy), vec3<f32>(var_5.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(global1.a, 7u)], var_5.d))))), -142f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-470f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -277f) + vec3<f32>(1053f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(43815u, 7u)], -1743f), -729f)) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.d, var_5.d, global0[_wgslsmith_index_u32(22656u, 7u)]) * vec3<f32>(var_5.d, var_5.d, 1280f)), vec3<f32>(global0[_wgslsmith_index_u32(global1.a, 7u)], 472f, -1029f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1349f, 424f, global0[_wgslsmith_index_u32(3084u, 7u)]) - vec3<f32>(var_5.d, global0[_wgslsmith_index_u32(4294967295u, 7u)], -1221f)))))), 66914u);
}

