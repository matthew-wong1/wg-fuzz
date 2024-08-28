struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: vec3<bool>;

var<private> global1: array<vec2<f32>, 30>;

var<private> global2: array<Struct_3, 30>;

var<private> global3: vec4<u32>;

var<private> global4: vec2<f32> = vec2<f32>(1249f, 397f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32) -> Struct_3 {
    let var_0 = ~(~u_input.a.x & ~global3.x);
    global2 = array<Struct_3, 30>();
    var var_1 = Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.x | 40433u, ~23542u), 30u)], Struct_1(vec3<bool>(true, any(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(true, true, global0.x, global0.x), global0.x)), true)), Struct_1(!select(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false), global0.x), !vec3<bool>(global0.x, global0.x, true), global0.x)), _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(_wgslsmith_sub_u32(var_0, u_input.a.x), ~var_0, _wgslsmith_dot_vec3_u32(global3.yxy, global3.xyw), 35183u) >> (vec4<u32>(16759u, 26064u, ~4294967295u, global3.x) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -103f)));
    let var_2 = var_1.c.a.xx;
    global1 = array<vec2<f32>, 30>();
    return Struct_3(!(!var_1.b.a), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_1.a.b.yw, vec2<i32>(-30244i, var_1.a.b.x) >> (u_input.a.wx % vec2<u32>(32u))), -_wgslsmith_dot_vec4_i32(var_1.a.b, vec4<i32>(-2147483647i, 35670i, var_1.a.b.x, -1i))), var_1.a.b.x ^ (var_1.a.b.x & var_1.a.b.x), abs(var_1.a.b.x), ~49061i), var_1.d.x, var_1.a.d);
}

fn func_3() -> bool {
    let var_0 = all(!vec3<bool>(any(!vec4<bool>(true, global0.x, true, true)), true, _wgslsmith_f_op_f32(trunc(global4.x)) <= -795f));
    var var_1 = Struct_4(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1137f))))), func_2(_wgslsmith_f_op_f32(-1279f + _wgslsmith_f_op_f32(-280f * _wgslsmith_f_op_f32(f32(-1f) * -2211f)))).d, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)))).d, _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(19942u, 0u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a ^ u_input.a), _wgslsmith_mult_u32(0u, global3.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4.x)))), global4.x)));
    global3 = reverseBits(var_1.d);
    var var_2 = global4.x;
    global0 = var_1.c.a;
    return any(vec2<bool>(true, var_1.b.a.x));
}

fn func_1(arg_0: f32) -> vec2<u32> {
    let var_0 = Struct_4(func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -857f) - -498f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0))))), func_2(-337f).d, func_2(_wgslsmith_f_op_f32(-global4.x)).d, u_input.a, -737f);
    var var_1 = Struct_5(Struct_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4.x, -475f)) * _wgslsmith_div_f32(global4.x, -838f))), var_0.c, func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0))))).d, u_input.a, _wgslsmith_f_op_f32(-var_0.e)), u_input.a.x == u_input.a.x);
    var var_2 = Struct_2(var_0.a.b.ywx, func_2(var_0.e).d, ~(~vec2<i32>(_wgslsmith_sub_i32(var_0.a.b.x, var_0.a.b.x), 1i)), any(vec3<bool>(false, select(func_3(), true, global0.x), true)));
    var var_3 = true;
    var var_4 = ~_wgslsmith_add_vec2_u32(vec2<u32>(~13019u, reverseBits(33430u)), ~(~abs(var_1.a.d.yw)));
    return _wgslsmith_mult_vec2_u32(~(vec2<u32>(func_2(arg_0).c, _wgslsmith_clamp_u32(var_4.x, u_input.a.x, 4294967295u)) << (global3.yx % vec2<u32>(32u))), ~(~_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a.x, var_4.x), abs(vec2<u32>(var_1.a.a.c, var_0.a.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_vec2_u32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) * _wgslsmith_f_op_f32(max(-199f, -1000f)))), _wgslsmith_sub_vec2_u32(~u_input.a.yy, ~min(vec2<u32>(0u, 23955u), global3.xw)));
    let var_1 = !global0.x;
    var var_2 = select(select(-vec2<i32>(~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 32161i, 35421i, -3634i), vec4<i32>(3339i, -20002i, 2147483647i, 1i))), reverseBits(-select(vec2<i32>(0i, -7925i), vec2<i32>(1i, 1i), global0.zx)), !func_2(_wgslsmith_f_op_f32(-global4.x)).a.xz), -(vec2<i32>(~41878i, -21410i) >> (vec2<u32>(~61707u, _wgslsmith_sub_u32(u_input.a.x, global3.x)) % vec2<u32>(32u))), select(func_2(-236f).a.zy, !func_2(global4.x).d.a.xy, true));
    let var_3 = func_2(global4.x);
    let var_4 = -(~(-9786i));
    let var_5 = Struct_4(global2[_wgslsmith_index_u32(var_0.x, 30u)], var_3.d, var_3.d, select(u_input.a, reverseBits(~u_input.a), !(!vec4<bool>(var_3.a.x, var_1, global0.x, var_3.d.a.x))) | u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) - global4.x))) - global4.x));
    var var_6 = vec2<bool>(false, _wgslsmith_f_op_f32(global4.x - -1984f) == var_5.e);
    let var_7 = Struct_3(!func_2(var_5.e).a, ~var_3.b, _wgslsmith_sub_u32(~_wgslsmith_mod_u32(~25576u, firstLeadingBit(var_3.c)), var_5.a.c), Struct_1(var_5.c.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_7.b.x);
}

