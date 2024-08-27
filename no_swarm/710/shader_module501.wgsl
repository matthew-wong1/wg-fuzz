struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec3<bool>,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

var<private> global1: Struct_4;

var<private> global2: array<vec3<bool>, 23>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec2<u32> {
    let var_0 = global1.a.a.a;
    var var_1 = var_0.a.x | _wgslsmith_clamp_u32(~(~52642u), reverseBits(u_input.b), abs(22298u));
    var var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(66028u << (global1.a.a.a.a.x % 32u), ~_wgslsmith_mult_u32(firstTrailingBit(global1.a.a.a.a.x), ~4294967295u), reverseBits(0u), firstLeadingBit(~(~u_input.c))), u_input.a);
    global0 = array<bool, 21>();
    let var_3 = Struct_3(Struct_2(global1.a.a.a, u_input.d.x), vec2<bool>(true, !any(select(vec4<bool>(var_0.c.x, var_0.c.x, true, global1.a.e), vec4<bool>(global0[_wgslsmith_index_u32(1u, 21u)], var_0.c.x, global1.a.a.a.c.x, false), false))), select(!global2[_wgslsmith_index_u32(~var_0.a.x, 23u)], global2[_wgslsmith_index_u32(var_2.x, 23u)], _wgslsmith_dot_vec2_i32(u_input.d.xz, u_input.d.zz) >= global1.a.a.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global1.a.d, global1.a.d)))))))), !select(all(global1.a.a.a.c.yy), true, global0[_wgslsmith_index_u32(4294967295u, 21u)]));
    return var_0.a;
}

fn func_2() -> Struct_4 {
    let var_0 = global1.a.a;
    let var_1 = Struct_4(global1.a);
    global0 = array<bool, 21>();
    var var_2 = Struct_1(countOneBits(func_3() >> (~(~vec2<u32>(var_0.a.a.x, 4294967295u)) % vec2<u32>(32u))), -26543i, vec3<bool>(!var_0.a.c.x & false, true, false));
    global1 = var_1;
    return Struct_4(var_1.a);
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: i32, arg_3: Struct_4) -> vec4<i32> {
    global2 = array<vec3<bool>, 23>();
    var var_0 = firstTrailingBit(~vec3<i32>(57215i, func_2().a.a.b, arg_2)) ^ u_input.d;
    var_0 = ~(~select(select(vec3<i32>(var_0.x, arg_0.a.a.b, -29666i), u_input.d | vec3<i32>(arg_2, u_input.d.x, 29888i), !vec3<bool>(false, global0[_wgslsmith_index_u32(global1.a.a.a.a.x, 21u)], arg_0.a.e)), firstTrailingBit(u_input.d), ~arg_0.a.a.a.a.x > _wgslsmith_clamp_u32(u_input.c, 1u, arg_3.a.a.a.a.x)));
    var var_1 = Struct_1(firstLeadingBit(vec2<u32>(_wgslsmith_sub_u32(abs(3763u), arg_0.a.a.a.a.x | 0u), reverseBits(_wgslsmith_add_u32(global1.a.a.a.a.x, arg_0.a.a.a.a.x)))), _wgslsmith_mod_i32(abs(~(-74393i)), ~(-u_input.d.x) << (0u % 32u)), arg_3.a.a.a.c);
    var var_2 = Struct_2(arg_3.a.a.a, u_input.d.x);
    return vec4<i32>(1i, u_input.d.x, max(firstTrailingBit(abs(u_input.d.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-3675i << (1u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 33726i, -2147483647i, arg_3.a.a.b), vec4<i32>(-21196i, 0i, -2147483647i, 0i)), 1i, arg_2 & -2147483647i), -firstTrailingBit(vec4<i32>(var_1.b, var_0.x, -3936i, global1.a.a.a.b)))), _wgslsmith_dot_vec2_i32(vec2<i32>(-27930i, abs(0i)), u_input.d.yx));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    global1 = Struct_4(Struct_3(Struct_2(Struct_1(min(arg_0.a, global1.a.a.a.a), global1.a.a.b, vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 21u)], global1.a.c.x)), u_input.d.x), !(!arg_1.xy), !global1.a.c, 507f, false));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-140f, global1.a.d, 1321f), vec3<f32>(1000f, global1.a.d, 694f), global2[_wgslsmith_index_u32(arg_0.a.x, 23u)])) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.d, 1151f, 1610f) + vec3<f32>(global1.a.d, global1.a.d, global1.a.d))))));
    let var_1 = 1000f;
    var var_2 = vec2<i32>(arg_0.b, _wgslsmith_add_i32(-1i, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(0i, 6661i, 21633i, 1i)) | -vec4<i32>(-1i, -2147483647i, global1.a.a.b, u_input.d.x), func_4(func_2(), var_1, global1.a.a.a.b, func_2()))));
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.d + 1071f)))), func_2().a.d, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) + global1.a.d)), var_1)));
    return func_2().a.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(_wgslsmith_mod_vec2_u32(~countOneBits(global1.a.a.a.a), ~countOneBits(vec2<u32>(37448u, global1.a.a.a.a.x))), _wgslsmith_mult_i32(global1.a.a.a.b, 22945i), select(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(23748u, u_input.a.x, global1.a.a.a.a.x), u_input.a.yyw), 21u)], false, any(vec2<bool>(global1.a.b.x, global0[_wgslsmith_index_u32(global1.a.a.a.a.x, 21u)]))), !(!vec3<bool>(global0[_wgslsmith_index_u32(45414u, 21u)], global1.a.a.a.c.x, global0[_wgslsmith_index_u32(1u, 21u)])), global1.a.a.a.c.x != false)), select(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~708u, ~u_input.b), 21u)], _wgslsmith_f_op_f32(-global1.a.d) == global1.a.d, !(global1.a.d >= 1366f)), select(!(!global2[_wgslsmith_index_u32(global1.a.a.a.a.x, 23u)]), vec3<bool>(any(global1.a.a.a.c.xx), global0[_wgslsmith_index_u32(global1.a.a.a.a.x, 21u)], !global0[_wgslsmith_index_u32(48455u, 21u)]), global0[_wgslsmith_index_u32(~(~global1.a.a.a.a.x), 21u)]), true));
    var_0 = Struct_1(firstLeadingBit(u_input.a.zx), firstTrailingBit(select(-min(59155i, -34353i), -global1.a.a.a.b, all(global1.a.a.a.c.xz))), select(global2[_wgslsmith_index_u32(0u, 23u)], vec3<bool>(!any(var_0.c), true, var_0.c.x), _wgslsmith_mult_u32(firstLeadingBit(u_input.a.x), ~1u) < ~(~u_input.b)));
    var_0 = global1.a.a.a;
    var var_1 = -min(-7039i << (global1.a.a.a.a.x % 32u), ~17546i);
    var var_2 = all(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 21u)], global1.a.e, any(vec2<bool>(var_0.c.x, true))), vec4<bool>(!global1.a.b.x, true, true, global0[_wgslsmith_index_u32(u_input.b, 21u)]), select(vec4<bool>(true, false, false, var_0.c.x), select(vec4<bool>(false, true, var_0.c.x, global0[_wgslsmith_index_u32(56893u, 21u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(7554u, 21u)], false, var_0.c.x), true), false)));
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global1.a.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.d), _wgslsmith_f_op_f32(-global1.a.d)))), global1.a.d, any(!vec2<bool>(global1.a.e, true)))) <= _wgslsmith_f_op_f32(f32(-1f) * -217f);
    let var_4 = 1f;
    var var_5 = _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_add_i32(var_0.b | -2147483647i, global1.a.a.a.b), u_input.d.x, 1i ^ -var_0.b), vec3<i32>(global1.a.a.b, countOneBits(var_0.b), func_4(Struct_4(Struct_3(global1.a.a, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], var_3), vec3<bool>(global0[_wgslsmith_index_u32(13224u, 21u)], var_0.c.x, true), -368f, global1.a.e)), _wgslsmith_f_op_f32(-global1.a.d), global1.a.a.b, Struct_4(Struct_3(global1.a.a, vec2<bool>(true, var_3), vec3<bool>(var_3, true, true), -1490f, true))).x)), -vec3<i32>(817i, 2147483647i, var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.d)), _wgslsmith_f_op_f32(-global1.a.d)))), 4851i);
}

