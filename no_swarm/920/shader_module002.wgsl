struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: f32;

var<private> global2: array<vec4<bool>, 17>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3) -> vec4<i32> {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.b.x, arg_1.a), _wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.c, u_input.c, arg_1.a), u_input.b), _wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 96630u, arg_1.a)))) & _wgslsmith_div_vec2_u32(u_input.b.xz, ~(vec2<u32>(arg_1.a, 0u) | u_input.b.zx)), vec2<u32>(~arg_1.a, ~_wgslsmith_sub_u32(542u | u_input.b.x, ~arg_1.a)));
    let var_1 = _wgslsmith_mult_u32(4294967295u, ~(~arg_1.a >> (~14089u % 32u)) ^ _wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_0, var_0), ~u_input.b)));
    let var_2 = vec4<i32>(abs(countOneBits(~(-2147483647i << (0u % 32u)))), select(-2147483647i, _wgslsmith_dot_vec2_i32(u_input.a.yx, -(~vec2<i32>(u_input.a.x, 0i))), all(select(select(global0.d.a, vec4<bool>(false, global0.c, false, global0.d.a.x), vec4<bool>(false, true, false, global0.d.a.x)), select(vec4<bool>(global0.c, true, global0.b.x, false), vec4<bool>(global0.b.x, false, true, global0.d.a.x), global0.c), false))), firstTrailingBit(-85987i), 1i);
    var var_3 = Struct_1(vec4<bool>(!global0.c, select(global0.c, any(select(global0.d.a.yw, vec2<bool>(global0.d.a.x, global0.c), true)), (global0.b.x | global0.c) | global0.c), global0.c, global0.b.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global0.a.zy - _wgslsmith_f_op_vec2_f32(-global0.a.xx)))))));
    var var_4 = ~min(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1, 57132u, arg_1.a, 97221u), ~vec4<u32>(arg_1.a, u_input.c, u_input.b.x, var_1), vec4<u32>(var_0, var_1, 10842u, var_0)), ((vec4<u32>(u_input.b.x, arg_1.a, 0u, 1u) & vec4<u32>(15857u, u_input.c, 50831u, arg_1.a)) & ~vec4<u32>(arg_1.a, var_1, 35369u, 1u)) ^ select(vec4<u32>(var_0, u_input.c, var_0, arg_1.a), countOneBits(vec4<u32>(4294967295u, 0u, 87255u, 1u)), global2[_wgslsmith_index_u32(~var_0, 17u)]));
    return select(_wgslsmith_clamp_vec4_i32(arg_0, vec4<i32>(-1i) * -var_2, -(vec4<i32>(-2147483647i, -51224i, 1i, 44489i) << (vec4<u32>(60189u, var_4.x, var_4.x, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.d, abs(-12259i), i32(-1i) * -7646i), abs(-arg_0)), global0.d.a) ^ select(vec4<i32>(i32(-1i) * -2147483647i, var_2.x, abs(u_input.d ^ arg_0.x), min(abs(-1i), ~u_input.a.x)), var_2, (-44891i >= _wgslsmith_mult_i32(var_2.x, var_2.x)) == any(vec4<bool>(global0.b.x, false, true, false)));
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    var var_0 = Struct_3(4294967295u ^ countOneBits(u_input.b.x));
    return _wgslsmith_dot_vec4_i32(func_3(arg_0, Struct_3(u_input.b.x)), _wgslsmith_div_vec4_i32(vec4<i32>(-18011i, min(arg_0.x, -2147483647i), u_input.d, -11628i), reverseBits(_wgslsmith_sub_vec4_i32(arg_0, vec4<i32>(arg_0.x, arg_0.x, u_input.d, arg_0.x))))) >> (48630u % 32u);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(countOneBits(~(u_input.b | u_input.b)), -(vec3<i32>(abs(u_input.d), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, 48074i), u_input.a), func_2(vec4<i32>(10202i, 15910i, u_input.d, 0i))) & _wgslsmith_mult_vec3_i32(~u_input.a, u_input.a)), Struct_1(global0.d.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1156f, _wgslsmith_f_op_f32(select(global0.d.b.x, global0.d.b.x, arg_0.a.x))))), global0.b, arg_0.a.wz);
    global1 = -258f;
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(210f - var_0.c.b.x)), global0.a.x, 1f, _wgslsmith_f_op_f32(-237f - arg_0.b.x)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, global0.d.b.x, 365f, -185f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, arg_0.b.x, var_0.c.b.x, 941f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1680f, -482f, arg_0.b.x, var_0.c.b.x))))))));
    return Struct_1(vec4<bool>(arg_0.a.x, !(!select(arg_0.a.x, true, false)), false, all(var_0.c.a.yx)), _wgslsmith_f_op_vec2_f32(-global0.d.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(global0.a, select(vec3<bool>(global0.b.x, global0.c, global0.d.a.x), !select(!vec3<bool>(false, global0.c, false), vec3<bool>(true, true, true), global0.b.x), global0.b.x), !global0.d.a.x, func_1(global0.d));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 0u, 1u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(23907u, u_input.b.x, 0u), max(vec3<u32>(u_input.b.x, 15737u, 0u), vec3<u32>(u_input.b.x, 4294967295u, 1530u)))), select(firstTrailingBit(u_input.b.xx), _wgslsmith_sub_vec2_u32(u_input.b.yz, ~(vec2<u32>(u_input.c, 30778u) & u_input.b.yz)), global0.c), func_3(~vec4<i32>(1i, 1i, u_input.a.x >> (1u % 32u), func_2(vec4<i32>(u_input.a.x, u_input.d, 1i, 24836i))), Struct_3(~(~95846u))).x, global0.a.x, u_input.c << (1u % 32u));
}

