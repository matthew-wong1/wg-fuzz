struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1567f, -1079f);

var<private> global1: bool;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = ~(~u_input.a.x << (1u % 32u));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -861f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-366f, global0.x)))), vec2<f32>(global0.x, global0.x), select(arg_0.a.yy, !vec2<bool>(arg_0.a.x, true), arg_0.a.xz))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(331f, global0.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 109f) - vec2<f32>(-2549f, global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -912f))), select(vec2<bool>(arg_0.a.x, false), arg_0.a.xx, !arg_0.a.x)))));
    var var_1 = var_0;
    let var_2 = Struct_1(u_input.a.x <= var_0, any(!select(vec2<bool>(arg_0.a.x, arg_0.a.x), !vec2<bool>(false, arg_0.a.x), vec2<bool>(arg_0.a.x, arg_0.a.x))), _wgslsmith_f_op_f32(ceil(-251f)), ~_wgslsmith_clamp_u32(firstLeadingBit(62808u | var_0), var_0, u_input.a.x));
    let var_3 = countOneBits(vec4<u32>(var_2.d, 40518u, _wgslsmith_div_u32(u_input.e, 1u) & 1u, var_0 & 4294967295u) >> (firstLeadingBit(select(vec4<u32>(var_0, 1u, var_0, var_0), ~vec4<u32>(1u, var_0, u_input.a.x, var_2.d), false)) % vec4<u32>(32u)));
    return vec4<bool>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(16249u, u_input.c, var_2.d, var_0)), var_3) >= var_0, !arg_0.a.x, select(!all(!vec2<bool>(false, arg_0.a.x)), _wgslsmith_div_u32(1u, ~u_input.a.x) == countOneBits(_wgslsmith_add_u32(var_2.d, 1u)), (_wgslsmith_sub_u32(var_3.x, var_3.x) != var_0) || arg_0.a.x), true);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2) -> vec4<bool> {
    global1 = any(arg_0.a.zz);
    let var_0 = u_input.b;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(1000f - global0.x))))));
    let var_1 = vec4<u32>(62522u, u_input.c, 1u, u_input.a.x);
    var var_2 = Struct_1(false, all(select(vec4<bool>(false, any(arg_2.a.yz), arg_2.a.x, all(arg_2.a.xxy)), select(!vec4<bool>(arg_0.a.x, false, arg_0.a.x, true), !vec4<bool>(false, arg_0.a.x, true, arg_2.a.x), arg_2.a), !any(vec2<bool>(arg_2.a.x, true)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.x, -762f), 707f)), ~u_input.c);
    return select(vec4<bool>(false, true, arg_2.a.x, true), select(!select(vec4<bool>(false, false, false, var_2.b), vec4<bool>(var_2.b, false, var_2.a, true), arg_2.a), vec4<bool>(true, all(vec3<bool>(arg_2.a.x, arg_0.a.x, arg_0.a.x)), true && all(arg_2.a.xx), true), arg_2.a.x || true), !select(arg_2.a, func_3(arg_2), select(!vec4<bool>(arg_0.a.x, false, true, true), !arg_2.a, true | arg_0.a.x)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: vec2<u32>) -> vec3<f32> {
    let var_0 = select(select(func_2(Struct_2(!vec4<bool>(arg_1, true, arg_1, true)), ~(-vec3<i32>(-18265i, arg_0, 1i)), Struct_2(!vec4<bool>(false, arg_1, arg_1, false))), !func_3(Struct_2(vec4<bool>(true, arg_1, true, arg_1))), true), vec4<bool>(arg_1, false, any(vec3<bool>(func_2(Struct_2(vec4<bool>(false, true, true, arg_1)), vec3<i32>(u_input.d, -33958i, 0i), Struct_2(vec4<bool>(arg_1, arg_1, false, arg_1))).x, any(vec4<bool>(arg_1, arg_1, false, false)), any(vec2<bool>(true, false)))), true), vec4<bool>(false, _wgslsmith_f_op_f32(f32(-1f) * -1387f) != global0.x, true, !(_wgslsmith_add_u32(u_input.e, arg_2) != (arg_2 ^ arg_3.x))));
    let var_1 = ~(-3048i);
    let var_2 = Struct_2(!func_2(Struct_2(!vec4<bool>(true, arg_1, true, false)), abs(vec3<i32>(u_input.d, arg_0, -12127i)), Struct_2(!var_0)));
    let var_3 = ~reverseBits(abs(countOneBits(vec2<u32>(0u, u_input.e)) >> (vec2<u32>(0u, arg_2) % vec2<u32>(32u))));
    let var_4 = Struct_1(var_2.a.x, false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global0.x)))), _wgslsmith_mod_u32(~32709u, _wgslsmith_sub_u32(69532u ^ firstTrailingBit(0u), ~44770u ^ ~arg_3.x)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -153f)), var_4.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_4.c, var_4.c)))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_4.c, global0.x, global0.x), vec3<f32>(var_4.c, global0.x, global0.x)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, 1560f, var_4.c)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1696f, var_4.c, global0.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_1(-u_input.b.x, false, 3001u, ~vec2<u32>(0u, var_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(804f, global0.x, global0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-310f, -947f, global0.x)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -793f), _wgslsmith_f_op_f32(step(global0.x, -389f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(u_input.d, true, var_0, u_input.a.xx)).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-967f, 1000f)) - _wgslsmith_f_op_f32(-448f * global0.x)))));
    let var_2 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.b << (vec2<u32>(u_input.a.x, u_input.c) % vec2<u32>(32u)), vec2<i32>(u_input.d, u_input.d)), _wgslsmith_div_i32(~u_input.d, ~u_input.b.x)), -(-2147483647i ^ u_input.b.x), abs(_wgslsmith_add_i32(-2147483647i, u_input.d))) << (~select(vec3<u32>(~var_0, 1u, firstLeadingBit(1u)), ~(~u_input.a), vec3<bool>(true, true, any(vec4<bool>(false, true, true, false)))) % vec3<u32>(32u));
    global1 = true & (max(u_input.a.x, ~u_input.a.x) < ~1u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, u_input.a, var_1.zx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1), vec3<f32>(var_1.x, var_1.x, global0.x))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(533f, 1699f, var_1.x), var_1))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * var_1.x), _wgslsmith_f_op_f32(sign(global0.x)), 711f)), var_2);
}

