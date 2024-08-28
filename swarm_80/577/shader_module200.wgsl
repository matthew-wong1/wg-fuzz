struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1423f), _wgslsmith_div_f32(820f, 294f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2575f + _wgslsmith_f_op_f32(trunc(-1239f))) + 1f)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-2560f + 402f), _wgslsmith_div_f32(585f, 307f), -1227f)))));
    let var_1 = Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, true, false, true)), true, true), select(true, true, any(vec2<bool>(false, false)))), vec3<bool>(!select(true, false, true), _wgslsmith_mod_u32(26451u, u_input.d) >= _wgslsmith_dot_vec2_u32(vec2<u32>(26105u, u_input.d), vec2<u32>(23704u, u_input.d)), any(vec2<bool>(false, false))), false | (true | any(vec4<bool>(false, true, false, false)))), reverseBits(arg_0), vec2<bool>(true, true), arg_0);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0))), vec3<f32>(-1000f, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -754f))))));
    return false;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(!all(vec3<bool>(true, true, true)), false, ~u_input.c.x <= _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, 2147483647i), u_input.c)), 1i, vec2<bool>(true, true), _wgslsmith_sub_i32(u_input.c.x, -1i));
    var var_1 = ~u_input.d | u_input.a;
    let var_2 = 4294967295u;
    var_1 = u_input.a;
    let var_3 = !select(!(!(!vec4<bool>(var_0.a.x, var_0.c.x, var_0.a.x, false))), !vec4<bool>(false, true, true, func_3(4885i)), !var_0.c.x);
    return Struct_1(select(!select(vec3<bool>(var_0.a.x, var_3.x, var_3.x), !var_3.xww, false), vec3<bool>(true, true, true), !vec3<bool>(!var_3.x, all(var_3), var_0.c.x && var_0.a.x)), 2147483647i, vec2<bool>(false, true), u_input.c.x | u_input.c.x);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(-21071i, func_2());
    var var_1 = u_input.c.wy;
    var var_2 = var_0.a;
    var_1 = countOneBits(firstLeadingBit(firstTrailingBit(u_input.c.xw)));
    return Struct_1(vec3<bool>(!any(vec3<bool>(var_0.b.a.x, var_0.b.a.x, true)), var_0.b.c.x, any(!vec4<bool>(var_0.b.c.x, false, var_0.b.a.x, false))), -_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-16995i, var_1.x), vec2<i32>(var_1.x, var_1.x))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, -34893i, 2147483647i), u_input.c)), !select(select(!var_0.b.a.xy, !vec2<bool>(false, var_0.b.c.x), var_0.b.a.yz), vec2<bool>(true, true), var_0.b.a.xz), -9647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = select(!(!(!(!vec4<bool>(false, var_0.a.x, var_0.a.x, false)))), select(!(!select(vec4<bool>(var_0.c.x, var_0.a.x, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, var_0.a.x, false, var_0.a.x))), !vec4<bool>(select(var_0.c.x, var_0.a.x, true), any(vec4<bool>(true, var_0.c.x, true, false)), !var_0.a.x, u_input.c.x > var_0.b), !select(vec4<bool>(var_0.a.x, var_0.a.x, false, true), vec4<bool>(var_0.c.x, var_0.a.x, var_0.a.x, true), !var_0.c.x)), true);
    let var_2 = 1000f;
    let var_3 = u_input.a;
    var var_4 = Struct_2(firstTrailingBit(_wgslsmith_sub_i32(abs(_wgslsmith_add_i32(var_0.d, var_0.d)), u_input.c.x)), func_2());
    let var_5 = vec3<bool>(false, func_2().a.x, (_wgslsmith_div_i32(u_input.c.x, u_input.c.x) << (_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_3, u_input.b), vec2<u32>(4294967295u, var_3))) % 32u)) > var_4.a);
    let var_6 = Struct_2(u_input.c.x, var_4.b);
    let var_7 = var_6;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_3, 61059u), vec2<u32>(4294967295u, 58212u)), ~var_3, 2963u, _wgslsmith_sub_u32(~var_3, 11478u)));
}

