struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(81677u, 8704u);

var<private> global1: array<i32, 6> = array<i32, 6>(1i, i32(-2147483648), -1i, 874i, -30233i, -1i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5) -> vec2<bool> {
    global1 = array<i32, 6>();
    global0 = ~(vec2<u32>(_wgslsmith_div_u32(global0.x, arg_0.a.a.x), u_input.a.x) ^ vec2<u32>(~30668u, global0.x));
    global1 = array<i32, 6>();
    global1 = array<i32, 6>();
    global0 = firstLeadingBit(_wgslsmith_clamp_vec2_u32(~arg_0.a.a.zz, abs(~u_input.b) ^ vec2<u32>(global0.x, 0u), abs(~arg_0.a.a.xx)));
    return vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(true, true)), true))), false);
}

fn func_2(arg_0: i32) -> Struct_5 {
    var var_0 = _wgslsmith_div_u32(global0.x, ~1u) >> (34352u % 32u);
    var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1007f);
    global0 = u_input.b;
    var var_2 = Struct_4(func_3(Struct_5(Struct_2(vec3<u32>(4294967295u, global0.x, 4294967295u) >> (u_input.a % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1, var_1), vec2<f32>(var_1, -325f))), 1i))), Struct_2(countOneBits(~u_input.a), vec2<f32>(var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(max(var_1, var_1)))), ~(-2147483647i)), Struct_2(vec3<u32>(firstLeadingBit(select(u_input.b.x, u_input.b.x, true)), ~49160u | ~u_input.b.x, firstLeadingBit(u_input.b.x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1284f, var_1), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-968f, 665f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -460f))))), global1[_wgslsmith_index_u32(u_input.b.x | ~u_input.b.x, 6u)]), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-976f, -233f, var_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(303f, -511f, -680f)), vec3<bool>(true, false, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, 357f) * vec3<f32>(var_1, 1430f, var_1))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1)) + vec3<f32>(var_1, 1037f, -336f))))));
    return Struct_5(var_2.b);
}

fn func_1(arg_0: bool) -> bool {
    global1 = array<i32, 6>();
    let var_0 = func_2(firstLeadingBit(abs(max(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(53132u, 6u)], 0i, global1[_wgslsmith_index_u32(global0.x, 6u)], global1[_wgslsmith_index_u32(82896u, 6u)]), vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(global0.x, 6u)], 0i)), 1i >> (u_input.a.x % 32u)))));
    let var_1 = !vec3<bool>(arg_0, !(var_0.a.a.x >= u_input.a.x), !all(vec3<bool>(arg_0, arg_0, arg_0)));
    var var_2 = true;
    var var_3 = var_1.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec2<bool>(func_1(any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)))), true), Struct_2(_wgslsmith_add_vec3_u32(select(func_2(global1[_wgslsmith_index_u32(1u, 6u)]).a.a, vec3<u32>(1u, u_input.a.x, 0u), vec3<bool>(true, true, false)), u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, -1000f)))), ~global1[_wgslsmith_index_u32(4294967295u, 6u)]), Struct_2(~reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(47677u, global0.x, global0.x), u_input.a)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-511f, -1207f) + vec2<f32>(-2172f, 1368f))))), -22206i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(-1873f + 1416f), _wgslsmith_f_op_f32(ceil(1190f))))));
    var var_1 = func_2(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], 2147483647i, firstLeadingBit(1i) ^ -firstTrailingBit(1i)));
    global1 = array<i32, 6>();
    let var_2 = select(vec4<u32>(79109u, 32398u, abs(u_input.b.x), _wgslsmith_sub_u32(4294967295u, min(var_1.a.a.x, var_1.a.a.x) << (_wgslsmith_mod_u32(29222u, 1u) % 32u))), (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.a.a.x, 36653u, 55956u), vec4<u32>(var_0.c.a.x, 4294967295u, u_input.b.x, var_1.a.a.x)), 4294967295u, firstLeadingBit(41559u), _wgslsmith_mult_u32(4294967295u, var_0.b.a.x)) | ~vec4<u32>(45750u, 23615u, u_input.b.x, 18115u)) >> ((~select(vec4<u32>(var_1.a.a.x, var_1.a.a.x, global0.x, 1u), vec4<u32>(0u, 4294967295u, global0.x, 12099u), false) << (max(~vec4<u32>(33146u, 6345u, var_0.b.a.x, 10572u), ~vec4<u32>(var_0.b.a.x, 16976u, 14826u, 71698u)) % vec4<u32>(32u))) % vec4<u32>(32u)), !all(vec2<bool>(!var_0.a.x, all(vec4<bool>(true, var_0.a.x, true, var_0.a.x)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_1.a.b.x * _wgslsmith_f_op_f32(max(504f, 1582f))), var_1.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.b.x, var_1.a.b.x)), -2773f), vec4<f32>(529f, 155f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.d.x))), 2062f), select(vec4<bool>(var_0.a.x, true, var_1.a.b.x > 673f, false), !(!vec4<bool>(var_0.a.x, true, false, true)), vec4<bool>(true, global0.x == u_input.b.x, false, false)))), _wgslsmith_mod_vec2_i32(~select(-vec2<i32>(var_1.a.c, -139530i), firstTrailingBit(vec2<i32>(global1[_wgslsmith_index_u32(var_0.b.a.x, 6u)], global1[_wgslsmith_index_u32(var_2.x, 6u)])), var_0.a), ~(~(vec2<i32>(-2147483647i, var_0.b.c) | vec2<i32>(49271i, global1[_wgslsmith_index_u32(4294967295u, 6u)])))), vec3<u32>(countOneBits(countOneBits(_wgslsmith_clamp_u32(var_0.b.a.x, 44953u, 0u))), 11489u, ~var_2.x), vec3<u32>(func_2(var_1.a.c).a.a.x, min(11611u, _wgslsmith_add_u32(1u, var_0.b.a.x)), firstTrailingBit(~1u)) >> (vec3<u32>(5809u, var_2.x, ~1u) % vec3<u32>(32u)), 4294967295u);
    var var_4 = vec4<bool>(true, false, (2147483647i >= var_1.a.c) && true, any(vec2<bool>(true, _wgslsmith_f_op_f32(-1343f + -307f) >= var_0.c.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(838f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.a.x))) + var_0.d.x)), vec2<u32>(var_1.a.a.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~var_3.d, vec3<u32>(12964u, 65681u, 60559u)), ~1u)), var_2, _wgslsmith_f_op_vec2_f32(var_3.a.zx - func_2(-var_0.c.c << ((var_0.c.a.x ^ 4294967295u) % 32u)).a.b));
}

