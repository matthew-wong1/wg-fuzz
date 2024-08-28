struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
    d: bool,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 6>;

var<private> global1: f32;

var<private> global2: Struct_2 = Struct_2(24597i, vec2<u32>(1u, 1u), vec3<u32>(1u, 22102u, 4294967295u), Struct_1(false, vec4<f32>(-753f, 340f, 1097f, 480f)), vec4<f32>(-571f, -124f, -830f, 321f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<u32> {
    let var_0 = max(29246u, ~u_input.b.x);
    var var_1 = global2.a;
    let var_2 = abs(~countOneBits(var_0));
    var var_3 = Struct_4(Struct_1(all(select(vec4<bool>(global2.d.a, global2.d.a, false, false), !vec4<bool>(global2.d.a, global2.d.a, global2.d.a, true), -327f < global2.e.x)), global2.e), ~vec4<u32>(1u, 4294967295u, min(~var_0, min(7751u, 6832u)), global2.b.x), 1740f, global2.d.a);
    var var_4 = var_3.a;
    return vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0, 30023u), vec2<u32>(5762u, 7593u) & global2.b, vec2<u32>(var_2, global2.c.x)), ~vec2<u32>(var_3.b.x, var_3.b.x), _wgslsmith_div_vec2_u32(global2.c.xz, ~u_input.b.xx)), _wgslsmith_mult_vec2_u32(vec2<u32>(~global2.b.x, var_2), max(vec2<u32>(var_3.b.x, var_3.b.x), u_input.b.wz << (u_input.b.xz % vec2<u32>(32u))))), 1u, ~var_2, 72185u);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: Struct_4) -> bool {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(733f)) - 134f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -249f) + _wgslsmith_f_op_f32(f32(-1f) * -229f)));
    var var_0 = arg_0;
    global1 = var_0.c;
    global0 = array<vec3<i32>, 6>();
    var var_1 = Struct_1(all(select(!vec3<bool>(false, true, arg_3.a.a), select(vec3<bool>(global2.d.a, false, true), vec3<bool>(global2.d.a, arg_3.a.a, var_0.d), false), arg_0.d)) & arg_3.a.a, _wgslsmith_f_op_vec4_f32(-arg_0.a.b));
    return all(vec4<bool>(all(select(select(vec2<bool>(false, false), vec2<bool>(arg_3.a.a, global2.d.a), false), !vec2<bool>(var_0.a.a, arg_0.a.a), all(vec4<bool>(var_1.a, arg_0.d, var_0.a.a, arg_0.a.a)))), all(!vec2<bool>(false, global2.d.a)), select(!any(vec2<bool>(arg_3.a.a, var_0.a.a)), all(vec3<bool>(true, true, true)), var_0.b.x < var_0.b.x), any(select(vec4<bool>(global2.d.a, false, false, true), select(vec4<bool>(arg_3.a.a, var_0.a.a, var_0.a.a, var_0.d), vec4<bool>(false, false, var_0.d, false), vec4<bool>(false, true, arg_3.a.a, var_1.a)), true))));
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 6u)];
    var var_1 = Struct_4(global2.d, vec4<u32>(u_input.b.x, 0u, u_input.b.x, ~(~min(0u, 0u))), arg_0.b.x, func_4(Struct_4(global2.d, _wgslsmith_sub_vec4_u32(~u_input.b, func_3()), _wgslsmith_f_op_f32(-1139f * _wgslsmith_div_f32(583f, arg_0.b.x)), false), _wgslsmith_clamp_vec2_u32(~(~u_input.b.xw), vec2<u32>(0u, _wgslsmith_mult_u32(10554u, u_input.b.x)), _wgslsmith_sub_vec2_u32(~global2.b, min(global2.c.zy, vec2<u32>(1u, 0u)))), ~u_input.c, Struct_4(Struct_1(true, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b.x, 446f, 1015f, global2.e.x), arg_0.b, false))), ~(~u_input.b), _wgslsmith_f_op_f32(ceil(arg_0.b.x)), true)));
    return 2147483647i;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: bool, arg_3: vec2<bool>) -> vec3<u32> {
    let var_0 = -vec4<i32>(_wgslsmith_clamp_i32(~global2.a | ~global2.a, u_input.a.x << (_wgslsmith_mod_u32(0u, u_input.b.x) % 32u), func_2(Struct_1(false, global2.e))), max(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(global2.a, -2977i, global2.a)), u_input.c), -29370i), i32(-1i) * -20447i, _wgslsmith_mult_i32(2147483647i, _wgslsmith_mult_i32(0i, global2.a)));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.e.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.b.x + -376f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.d.b.x)))))));
    var var_2 = all(!select(arg_0.zx, !select(arg_0.zy, vec2<bool>(false, arg_2), vec2<bool>(arg_0.x, true)), true));
    let var_3 = vec3<i32>(_wgslsmith_mod_i32(~firstTrailingBit(1i), ~u_input.a.x), _wgslsmith_dot_vec2_i32(~u_input.c.zz, u_input.a.zx), countOneBits(~(-3610i)));
    let var_4 = -_wgslsmith_clamp_i32(min(var_0.x, var_0.x), 2147483647i, 47958i);
    return vec3<u32>(~_wgslsmith_dot_vec2_u32(~(u_input.b.ww << (global2.b % vec2<u32>(32u))), u_input.b.yw), 0u, 2132u);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: f32) -> Struct_3 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(881f)), -683f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_2)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-421f)))))) - arg_2), _wgslsmith_f_op_f32(-arg_2));
    global2 = Struct_2(global2.a, ~u_input.b.yy, select(u_input.b.ywy, ~(~vec3<u32>(u_input.b.x, arg_0.x, 19465u)), vec3<bool>(!(!arg_1.x), func_4(Struct_4(global2.d, u_input.b, var_0.x, global2.d.a), vec2<u32>(global2.b.x, global2.b.x) & global2.c.xz, -vec3<i32>(-2147483647i, 5251i, u_input.c.x), Struct_4(global2.d, u_input.b, -731f, true)), all(vec3<bool>(false, false, arg_1.x)))), global2.d, vec4<f32>(arg_2, 884f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global2.d.b.x)))) - arg_2), -1615f));
    global2 = Struct_2(~(u_input.a.x ^ ~_wgslsmith_mult_i32(2147483647i, 1i)), u_input.b.yx, arg_0, global2.d, _wgslsmith_f_op_vec4_f32(abs(global2.d.b)));
    var var_1 = var_0.x;
    let var_2 = u_input.b;
    return Struct_3(~_wgslsmith_sub_i32(42368i, func_2(Struct_1(global2.d.a, vec4<f32>(1190f, var_0.x, var_0.x, -1271f))) << (arg_0.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.d.b.x, _wgslsmith_f_op_f32(-global2.d.b.x)))), global2.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.c.zz;
    var var_1 = 0u;
    var var_2 = func_5(func_1(!select(vec3<bool>(global2.d.a, global2.d.a, true), vec3<bool>(global2.d.a, false, false), true), select(!vec4<bool>(global2.d.a, global2.d.a, false, false), !vec4<bool>(global2.d.a, global2.d.a, global2.d.a, global2.d.a), vec4<bool>(global2.d.a, false, global2.d.a, global2.d.a)), true, vec2<bool>(all(vec2<bool>(false, true)), true || global2.d.a)) ^ u_input.b.zyz, vec3<bool>(false, global2.d.a, all(select(vec2<bool>(false, global2.d.a), !vec2<bool>(false, global2.d.a), select(vec2<bool>(false, global2.d.a), vec2<bool>(true, global2.d.a), vec2<bool>(true, global2.d.a))))), 214f);
    var var_3 = !vec2<bool>(!(408f > _wgslsmith_div_f32(-865f, global2.e.x)), !any(!vec4<bool>(global2.d.a, true, global2.d.a, var_2.c.a)));
    var var_4 = Struct_4(Struct_1(false, global2.e), select(u_input.b, countOneBits(vec4<u32>(var_0.x ^ global2.b.x, _wgslsmith_mult_u32(var_0.x, global2.c.x), abs(2512u), countOneBits(var_0.x))), !vec4<bool>(true, all(vec4<bool>(true, global2.d.a, var_3.x, var_3.x)), var_2.c.a, var_2.c.a | true)), _wgslsmith_f_op_f32(round(-2587f)), min(u_input.c.x, -func_2(Struct_1(var_3.x, vec4<f32>(1509f, global2.e.x, global2.d.b.x, -740f)))) < global2.a);
    let var_5 = Struct_3(var_2.a, 973f, func_5(_wgslsmith_clamp_vec3_u32(global2.c, ~max(vec3<u32>(u_input.b.x, 14719u, global2.b.x), vec3<u32>(1u, 4294967295u, 1u)), abs(max(u_input.b.wyy, vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)))), select(select(select(vec3<bool>(true, var_4.d, true), vec3<bool>(global2.d.a, var_4.d, var_3.x), vec3<bool>(true, global2.d.a, false)), vec3<bool>(var_4.d, true, true), global2.a <= -27679i), vec3<bool>(var_4.a.a, false, true), var_4.d), -1453f).c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(2435f, 701f), _wgslsmith_f_op_f32(select(var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.e.x, 1085f)) + var_2.c.b.x), true)));
}

