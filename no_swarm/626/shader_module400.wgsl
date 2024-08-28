struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 43797u);

var<private> global1: array<Struct_1, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> bool {
    var var_0 = max(select(~(vec4<u32>(1u, 84605u, global0.x, 0u) & vec4<u32>(global0.x, u_input.c, u_input.a, global0.x)), select(max(vec4<u32>(10930u, 4294967295u, u_input.e.x, 5823u), vec4<u32>(u_input.e.x, 18319u, 48989u, 0u)), vec4<u32>(u_input.c, u_input.a, global0.x, 1u), select(vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, true, arg_0, true))), arg_0) ^ ~vec4<u32>(1u, ~0u, _wgslsmith_mod_u32(4294967295u, 4294967295u), max(4294967295u, global0.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(~46334u, u_input.a, 24574u | u_input.e.x, _wgslsmith_clamp_u32(64660u, u_input.e.x, global0.x)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(72260u, 67379u, 0u, global0.x)), vec4<u32>(u_input.c, 2920u, 14713u, global0.x) ^ vec4<u32>(u_input.c, u_input.a, 0u, u_input.e.x))));
    var var_1 = u_input.d.x;
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(min(u_input.e.x, ~4294967295u), 29u)], global1[_wgslsmith_index_u32(~u_input.a, 29u)], 0i, max(u_input.d.x << (29351u % 32u), 1i) ^ (min(1i, u_input.d.x) & ~(i32(-1i) * -29223i)), !vec4<bool>(0i <= u_input.b, any(!vec2<bool>(arg_0, arg_0)), !(0i <= u_input.d.x), arg_0));
    global0 = vec2<u32>(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(global0.x, var_2.b.a, 57820u)), var_0.x), global0.x);
    let var_3 = any(vec3<bool>(select(false, arg_1.x >= 1033f, all(vec3<bool>(arg_0, var_2.b.d.x, true))) || !any(vec3<bool>(var_2.e.x, true, true)), all(!vec4<bool>(var_2.a.d.x, false, false, var_2.a.d.x)), !(!all(vec3<bool>(var_2.e.x, false, var_2.e.x)))));
    return false;
}

fn func_2() -> bool {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(18087u, 29u)], Struct_1(4294967295u, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 128f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(397f, 1000f), vec2<f32>(-251f, -934f), !all(vec2<bool>(true, true)))), select(vec4<bool>(true, func_3(true, vec4<f32>(-719f, -1000f, -683f, 966f)), false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, true, true)), ~(~_wgslsmith_div_u32(1418u, global0.x))), firstLeadingBit(40437i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, select(u_input.d.x, u_input.d.x, false) << (0u % 32u), reverseBits(~2147483647i), u_input.d.x), _wgslsmith_add_vec4_i32(-select(vec4<i32>(2147483647i, u_input.d.x, u_input.b, 0i), vec4<i32>(0i, 35079i, u_input.b, u_input.d.x), vec4<bool>(false, true, false, true)), vec4<i32>(u_input.d.x, u_input.d.x, reverseBits(2147483647i), 1i))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec2<bool>(true, true)), _wgslsmith_sub_i32(57500i, u_input.d.x) >= -2147483647i, true && all(vec2<bool>(true, true))), vec4<bool>(!(12073u == global0.x), select(69707u, 65198u, true) < 55303u, !select(true, false, false), true)));
    let var_1 = Struct_1(global0.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_0.a.b - var_0.b.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1033f, -348f)))) + var_0.b.b))), var_0.a.b, var_0.e, var_0.b.a);
    let var_2 = Struct_1(var_1.a, var_1.b, var_0.b.b, select(select(var_1.d, vec4<bool>(false, true, any(vec2<bool>(true, true)), var_1.b.x > var_0.b.b.x), vec4<bool>(var_0.c >= var_0.c, var_0.e.x, -1i < var_0.c, var_1.d.x)), vec4<bool>(all(vec2<bool>(true, var_0.a.d.x)) && true, false, any(!var_1.d), var_1.d.x), !var_1.d), countOneBits(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 40670u, 4294967295u, global0.x), vec4<u32>(38351u, 1u, 1u, var_0.b.e)), global0.x)));
    global0 = ~(~(~(~u_input.e.yz)));
    let var_3 = reverseBits(min(max(u_input.d, _wgslsmith_div_vec2_i32(-u_input.d, abs(vec2<i32>(-14337i, -2147483647i)))), -_wgslsmith_clamp_vec2_i32(-vec2<i32>(-2147483647i, u_input.d.x), select(vec2<i32>(1i, var_0.d), vec2<i32>(u_input.b, var_0.d), vec2<bool>(var_1.d.x, true)), ~u_input.d)));
    return false;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec4<i32>) -> f32 {
    var var_0 = vec4<bool>(true, arg_2.d.x, true, func_2());
    let var_1 = vec2<i32>(~u_input.b, min(~arg_3.x, _wgslsmith_dot_vec2_i32(u_input.d, ~(~u_input.d))));
    let var_2 = 22510i;
    let var_3 = Struct_2(Struct_1(~(~0u), _wgslsmith_f_op_vec2_f32(arg_2.b * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1452f, arg_2.c.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1093f, arg_2.b.x)), arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.e.x), _wgslsmith_sub_vec3_u32(vec3<u32>(29980u, 4294967295u, 1u) | u_input.e, ~u_input.e))), arg_2, _wgslsmith_mult_i32(abs(-2147483647i), var_1.x), reverseBits(_wgslsmith_sub_i32(abs(36382i), ~var_1.x)), select(vec4<bool>(!(var_0.x && true), false, func_2(), (i32(-1i) * -1i) <= -arg_3.x), vec4<bool>(all(var_0.wyz), arg_2.d.x, false, !(!var_0.x)), var_0.x));
    var_0 = select(select(arg_1, arg_2.d, vec4<bool>(all(arg_2.d), any(!vec3<bool>(false, false, arg_1.x)), !all(vec4<bool>(arg_2.d.x, var_0.x, var_3.a.d.x, var_3.e.x)), !var_3.e.x & arg_1.x)), vec4<bool>(!func_3(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1972f, 427f, -1004f, arg_2.b.x))), true, true, true), var_3.a.d);
    return var_3.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<f32>(633f, -194f), vec4<bool>(false, true, true, true), Struct_1(u_input.a, vec2<f32>(-577f, 362f), vec2<f32>(579f, 2207f), vec4<bool>(true, true, true, true), 38788u), vec4<i32>(9956i, 1i, u_input.d.x, u_input.b) & vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-916f, -176f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -504f) + _wgslsmith_div_f32(-927f, _wgslsmith_f_op_f32(f32(-1f) * -505f))), _wgslsmith_f_op_f32(1011f + _wgslsmith_f_op_f32(f32(-1f) * -1059f))));
    global1 = array<Struct_1, 29>();
    let var_1 = u_input.e;
    let var_2 = -(i32(-1i) * -firstTrailingBit(u_input.b));
    let var_3 = u_input.b;
    global1 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(min(max(-var_3, -1i), var_2)), u_input.e, vec4<u32>(~4294967295u, global0.x, ~1u, countOneBits(_wgslsmith_clamp_u32(u_input.c, _wgslsmith_add_u32(var_1.x, 13379u), 45785u ^ global0.x))), vec4<u32>(10021u & select(~var_1.x, 1u, all(vec4<bool>(true, true, true, false))), _wgslsmith_add_u32(abs(abs(var_1.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 0u, 18657u), vec3<u32>(4294967295u, 0u, var_1.x) << (var_1 % vec3<u32>(32u)))), ~(max(u_input.e.x, 0u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 0u), u_input.e.zx)), select(select(u_input.a, var_1.x, false), u_input.e.x, true) | 1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(1260f, _wgslsmith_div_f32(var_0.x, var_0.x))), _wgslsmith_f_op_f32(-var_0.x), 272f, _wgslsmith_f_op_f32(ceil(-694f)))));
}

