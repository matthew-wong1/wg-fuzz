struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
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

var<private> global0: Struct_2 = Struct_2(false, 0i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: vec4<u32>) -> f32 {
    var var_0 = arg_3.x;
    let var_1 = Struct_1((reverseBits(firstLeadingBit(arg_2)) & _wgslsmith_mod_i32(~global0.b, max(44704i, u_input.a))) ^ -arg_1.a, 1861f);
    let var_2 = firstTrailingBit(_wgslsmith_add_vec3_u32(arg_3.xww << (countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3.x, 4294967295u, 1u), vec3<u32>(u_input.c.x, 42606u, u_input.c.x), arg_3.wyz)) % vec3<u32>(32u)), arg_3.zyz));
    var_0 = ~8579u;
    let var_3 = vec4<f32>(-1345f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, -902f)), _wgslsmith_f_op_f32(min(var_1.b, _wgslsmith_f_op_f32(step(1000f, arg_1.b)))), true))), -453f, _wgslsmith_f_op_f32(abs(var_1.b)));
    return arg_1.b;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: f32) -> u32 {
    let var_0 = Struct_2(true, _wgslsmith_mult_i32(1i, ~global0.b));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~(~8606u), Struct_1(var_0.b, arg_2), _wgslsmith_clamp_i32(-2147483647i, -16127i & u_input.d, min(0i, 1i)), countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 29255u, 4294967295u, 0u), arg_0, arg_0))))));
    let var_2 = Struct_1(-_wgslsmith_mod_i32(global0.b, ~(-u_input.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(676f, -1167f)) + _wgslsmith_f_op_f32(sign(354f))));
    global0 = var_0;
    let var_3 = _wgslsmith_f_op_f32(-1000f - -135f);
    return ~(~5741u);
}

fn func_1(arg_0: u32) -> f32 {
    global0 = Struct_2(true, i32(-1i) * -global0.b);
    let var_0 = func_2(~max(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 1u, arg_0, arg_0), vec4<u32>(arg_0, u_input.b, u_input.b, u_input.c.x)), ~(~vec4<u32>(88056u, arg_0, 4294967295u, 4294967295u))), true, -572f);
    let var_1 = select(~vec4<i32>(u_input.a, _wgslsmith_div_i32(~0i, global0.b), -1i, _wgslsmith_div_i32(2147483647i, u_input.a)), firstTrailingBit(min(~vec4<i32>(52502i, global0.b, 1i, -2147483647i), ~vec4<i32>(1i, global0.b, global0.b, 1i)) & (vec4<i32>(-1i) * -vec4<i32>(global0.b, 2147483647i, global0.b, global0.b))), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(0u, Struct_1(u_input.a, 479f), global0.b, vec4<u32>(3380u, var_0, 37806u, 0u))) - _wgslsmith_f_op_f32(f32(-1f) * -1622f)) != -566f, false, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(global0.b, -1i, -1i, u_input.d)), ~vec4<i32>(-2147483647i, u_input.a, 1i, global0.b)) >= u_input.d, true));
    var var_2 = Struct_2(global0.a, ~_wgslsmith_dot_vec2_i32(select(var_1.xw, abs(vec2<i32>(u_input.a, global0.b)), global0.a & global0.a), firstLeadingBit(var_1.xz)));
    let var_3 = (true || select(!global0.a, any(!vec4<bool>(var_2.a, false, var_2.a, var_2.a)), ~u_input.d == 0i)) == var_2.a;
    return _wgslsmith_f_op_f32(abs(-731f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!(!(!vec4<bool>(global0.a, global0.a, true, global0.a))));
    var var_1 = !select(vec3<bool>(true, true, true), !vec3<bool>(!global0.a, !var_0, true), global0.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-247f)) * -110f)), _wgslsmith_div_f32(870f, _wgslsmith_f_op_f32(func_1(u_input.b))), -307f));
    let var_3 = u_input.b;
    global0 = Struct_2(!var_1.x, ~global0.b);
    var var_4 = Struct_2(-1021f != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))))), 1i);
    var_4 = Struct_2(all(select(vec4<bool>(true, true, true, var_0), vec4<bool>(true, true, true, true), !(!var_4.a))), ~(-1i));
    global0 = Struct_2(any(vec2<bool>(!select(true, true, false), (1057f < var_2.x) | (0u < u_input.b))), firstTrailingBit(reverseBits(_wgslsmith_mod_i32(global0.b, -68789i))));
    let var_5 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(~(-26027i), ~_wgslsmith_clamp_i32(1i, var_4.b, 18252i), u_input.d));
}

