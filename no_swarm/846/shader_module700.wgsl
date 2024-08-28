struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> f32 {
    let var_0 = u_input.a.x;
    var var_1 = vec3<bool>(!(any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))) && (any(vec4<bool>(true, false, true, false)) || true)), false, false & (any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))) || ((0u | u_input.a.x) < ~1u)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-403f, 1001f), arg_1.a) + arg_1.a))) - arg_1.a));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-arg_1.a.x), ~(-vec4<i32>(~u_input.d, arg_2, arg_2, _wgslsmith_clamp_i32(-22015i, arg_0.b.x, 0i))), 1000f, vec4<i32>(1i, 1i, 0i, arg_0.d.x));
    var_2 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-256f - -1000f));
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    let var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-366f, global0[_wgslsmith_index_u32(~u_input.a.x, 6u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1231f, 605f)))))));
    var var_1 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.x)) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 6u)]))), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1312f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1067f, 1001f) - _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 6u)] * global0[_wgslsmith_index_u32(64981u, 6u)]), countOneBits(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -18592i)), _wgslsmith_f_op_f32(f32(-1f) * -187f), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -8215i, -21178i, -15567i), vec4<i32>(2147483647i, -6064i, arg_0.x, u_input.d))), var_0, u_input.c.x))));
    let var_3 = vec2<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(select(abs(~vec3<u32>(1115u, 0u, u_input.b.x)), ~vec3<u32>(u_input.b.x, 53472u, u_input.b.x) & ~vec3<u32>(66813u, u_input.b.x, u_input.b.x), select(select(false, true, false), u_input.d < -34804i, false)), ~(~vec3<u32>(21847u, u_input.a.x, 32918u)) | vec3<u32>(u_input.b.x, 20322u, _wgslsmith_mod_u32(u_input.a.x, u_input.b.x))));
    let var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, -974f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)), select(vec2<bool>(true, false), vec2<bool>(true, false), false)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.x, 614f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4649u, 6u)], -149f))))));
    return u_input.c.x;
}

fn func_1() -> Struct_1 {
    global0 = array<f32, 6>();
    var var_0 = u_input.c.yx;
    var_0 = _wgslsmith_mult_vec2_i32(u_input.c.xy, u_input.c.zx);
    var var_1 = Struct_1(853f, vec4<i32>(_wgslsmith_clamp_i32(19845i, u_input.c.x, var_0.x), u_input.c.x, func_2(abs(u_input.c.xy)), ~var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2352f) - -1747f), _wgslsmith_mod_vec4_i32(~vec4<i32>(var_0.x, abs(var_0.x), 9579i, u_input.c.x), countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, 2816i, -2147483647i, u_input.c.x), vec4<i32>(var_0.x, 24250i, var_0.x, var_0.x)), ~vec4<i32>(19633i, 0i, u_input.d, -2263i), abs(vec4<i32>(u_input.c.x, u_input.d, -36854i, u_input.d))))));
    let var_2 = ~vec4<u32>((u_input.a.x & 1u) >> (u_input.b.x % 32u), 1u, ~(27607u & ~u_input.a.x), _wgslsmith_mod_u32(u_input.b.x, ~72701u) | 6838u);
    return Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(65609u, 6u)])), var_1.c), var_1.a, any(vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true)))), vec4<i32>(49050i, firstLeadingBit(1i), -31251i & _wgslsmith_sub_i32(var_0.x, 2147483647i), ~_wgslsmith_dot_vec2_i32(u_input.c.yz, min(u_input.c.xx, u_input.c.zy))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1862f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1238f, 942f))))), _wgslsmith_clamp_vec4_i32(reverseBits(var_1.d), reverseBits(var_1.b), var_1.b) << (~(~min(var_2, vec4<u32>(6777u, 2162u, u_input.b.x, u_input.b.x))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -565f;
    var var_1 = func_1();
    global0 = array<f32, 6>();
    var_0 = _wgslsmith_f_op_f32(step(-167f, var_1.c));
    let var_2 = func_1();
    global0 = array<f32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1617f)) - -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 6u)]))), var_1.c, global0[_wgslsmith_index_u32(~(~1u), 6u)]));
}

