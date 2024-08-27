struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(2147483647i, 1i, -26074i, -13530i, 1i, 18282i, i32(-2147483648), 2147483647i, 14736i, 0i);

var<private> global1: u32;

var<private> global2: vec2<f32> = vec2<f32>(-840f, -486f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = -1166f;
    var var_1 = _wgslsmith_sub_u32(43191u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(reverseBits(74856u), select(u_input.a, u_input.a, true)), 32835u)) <= ~34686u;
    var var_2 = select(vec2<bool>(true, true), vec2<bool>(~u_input.a == (4294967295u | u_input.a), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.a >> (0u % 32u), 10u)], firstTrailingBit(-2428i)) > (i32(-1i) * -1i)), vec2<bool>(any(vec3<bool>(true, true, true)), any(vec2<bool>(-16779i < global0[_wgslsmith_index_u32(1u, 10u)], select(true, false, false)))));
    var var_3 = u_input.a;
    global0 = array<i32, 10>();
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), u_input.a, 84426u, ~43074u), ~vec4<u32>(u_input.a, u_input.a, 0u, 0u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(44307u, 67280u, 0u, u_input.a) & vec4<u32>(u_input.a, 9096u, 10095u, u_input.a), ~vec4<u32>(72125u, u_input.a, 12616u, u_input.a)), 23194u, select(min(1u, 10931u), 10116u << (u_input.a % 32u), true), 20842u)), u_input.a);
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = -2147483647i;
    var var_1 = Struct_3(1929i, _wgslsmith_add_u32(_wgslsmith_sub_u32(98895u << (func_3() % 32u), ~1u), 1u), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -692f))), Struct_1(1207f, any(vec4<bool>(false, true, false, false))), abs(abs(select(vec4<i32>(-39632i, global0[_wgslsmith_index_u32(u_input.a, 10u)], 0i, -24504i), vec4<i32>(arg_0, 14197i, 46209i, -1i), vec4<bool>(false, false, true, false)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -878f), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, global0[_wgslsmith_index_u32(6864u, 10u)]), vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(9869u, 10u)])) == arg_0)), select(select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true)), any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), false))), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false), true)), vec4<bool>(false, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(global0[_wgslsmith_index_u32(50034u, 10u)], 52841i)) < ~arg_0, !(global0[_wgslsmith_index_u32(u_input.a, 10u)] == 38639i), _wgslsmith_f_op_f32(-global2.x) < global2.x)));
    global0 = array<i32, 10>();
    let var_2 = Struct_5(var_1.a, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-584f, _wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(var_1.c.b.a * _wgslsmith_f_op_f32(global2.x - global2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-506f, var_1.c.b.a), _wgslsmith_f_op_f32(var_1.c.b.a + var_1.c.b.a)))))), 600f, vec4<f32>(global2.x, _wgslsmith_f_op_f32(-696f - global2.x), 392f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global2.x, -1003f)))))));
    var_1 = Struct_3(var_0, firstLeadingBit(36775u), var_1.c, vec4<bool>(all(!var_1.d), !(_wgslsmith_dot_vec3_i32(vec3<i32>(16752i, global0[_wgslsmith_index_u32(25070u, 10u)], var_1.c.c.x), vec3<i32>(25565i, 1i, 1i)) >= _wgslsmith_dot_vec4_i32(var_1.c.c, vec4<i32>(var_2.a, 1i, 2147483647i, -1i))), var_1.c.d.b, true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(171f * 923f)))))));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1437f))) + _wgslsmith_f_op_f32(step(637f, _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(func_2(arg_0))))))));
    global1 = _wgslsmith_sub_u32(func_3(), ~4294967295u);
    let var_1 = max(arg_0 ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-6805i, global0[_wgslsmith_index_u32(u_input.a, 10u)]), max(-vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 10u)], 2147483647i), select(vec2<i32>(2147483647i, arg_0), vec2<i32>(-1i, 2147483647i), vec2<bool>(false, true)))), 0i);
    global0 = array<i32, 10>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(0u), (91096u ^ u_input.a) | ~u_input.a, u_input.a) << ((_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, 4294967295u)), _wgslsmith_mult_vec3_u32(vec3<u32>(66415u, u_input.a, 92696u), vec3<u32>(u_input.a, u_input.a, 33843u)), ~vec3<u32>(u_input.a, 911u, u_input.a)) & (~vec3<u32>(u_input.a, 0u, 4886u) | vec3<u32>(u_input.a, 42739u, 4294967295u))) % vec3<u32>(32u)), abs(vec3<u32>(4294967295u, min(u_input.a, u_input.a), 55463u)) << (min(select(~vec3<u32>(95047u, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a), true), ~vec3<u32>(4294967295u, 0u, u_input.a) >> (vec3<u32>(68739u, 0u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))), 10u)];
    return Struct_3(-global0[_wgslsmith_index_u32(func_3(), 10u)], firstTrailingBit(countOneBits(46341u)), Struct_2(-421f, Struct_1(1000f, all(vec2<bool>(true, true))), vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-27486i, 3649i, global0[_wgslsmith_index_u32(u_input.a, 10u)]), _wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 10u)], 0i, var_1), vec3<i32>(var_1, -17013i, -6155i))), 2266i, 5695i, -arg_0), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_0, global0[_wgslsmith_index_u32(6203u, 10u)], 0i), vec4<i32>(arg_0, -38686i, arg_0, 10851i)) == (-2147483647i >> (u_input.a % 32u)))), !select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(true, true, false)), any(vec4<bool>(false, false, true, true)), true), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a;
    let var_0 = true;
    let var_1 = func_1(global0[_wgslsmith_index_u32(~u_input.a, 10u)]);
    let var_2 = _wgslsmith_f_op_f32(step(var_1.c.b.a, global2.x));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + _wgslsmith_f_op_f32(-var_2)))))), _wgslsmith_f_op_f32(1000f * var_2));
    var var_3 = var_1.d.wzz;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-(~_wgslsmith_add_i32(-1i, global0[_wgslsmith_index_u32(4294967295u, 10u)])), -var_1.a, var_1.c.c.x << (_wgslsmith_sub_u32(4294967295u, 35947u) % 32u), ~(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 35328u), vec2<u32>(0u, var_1.b)), 10u)])), _wgslsmith_sub_vec3_u32(abs(abs(select(vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(u_input.a, var_1.b, 1u), true))), ~abs(vec3<u32>(32819u, u_input.a, 1u))), ~39104u);
}

