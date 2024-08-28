struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = ~(firstTrailingBit(104258u) & ~_wgslsmith_dot_vec4_u32(vec4<u32>(30707u, 4294967295u, arg_0.a.b, arg_0.a.a.x), arg_0.a.a & vec4<u32>(44876u, u_input.c, u_input.a, 1u)));
    global0 = select(arg_0.d.xyw, vec3<bool>(false, false, arg_0.d.x), select(select(select(!vec3<bool>(false, true, global0.x), arg_0.d.yxx, all(vec2<bool>(global0.x, global0.x))), arg_0.d.ywy, vec3<bool>(all(arg_0.d.wwx), arg_0.d.x, u_input.b.x >= u_input.b.x)), select(arg_0.d.zww, select(!arg_0.d.xxw, select(vec3<bool>(true, false, true), arg_0.d.wxy, arg_0.d.xww), false), true), global0.x));
    let var_1 = arg_0.d.yy;
    global0 = select(vec3<bool>(all(select(arg_0.d.zwz, !arg_0.d.wzw, true)), true, arg_0.d.x), vec3<bool>(any(select(arg_0.d, vec4<bool>(arg_0.d.x, var_1.x, true, arg_0.d.x), true)), true, !any(vec2<bool>(var_1.x, arg_0.d.x))), arg_0.d.wxy);
    let var_2 = -63263i;
    return !any(arg_0.d);
}

fn func_2() -> vec2<f32> {
    global0 = vec3<bool>(false, all(select(select(!vec4<bool>(global0.x, true, true, true), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, false, false, true)), vec4<bool>(any(vec3<bool>(global0.x, global0.x, false)), global0.x || global0.x, global0.x, true), true)), global0.x);
    global0 = !vec3<bool>(false, true, func_3(Struct_2(Struct_1(vec4<u32>(1u, u_input.a, u_input.a, 14737u), u_input.b.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-490f, -249f, -542f, 411f), vec4<f32>(-709f, -961f, 1559f, 565f))), 0i, vec4<bool>(global0.x, true, global0.x, true))));
    var var_0 = _wgslsmith_f_op_f32(-610f - -1000f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1439f, _wgslsmith_f_op_f32(sign(-410f)))));
    var var_1 = !(!(!select(!vec4<bool>(true, global0.x, global0.x, true), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, false, false, global0.x), vec4<bool>(false, true, false, false)), !vec4<bool>(true, false, global0.x, false))));
    var var_2 = firstLeadingBit(2147483647i);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1355f, 2260f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-994f, 402f), vec2<f32>(-864f, 1760f)), _wgslsmith_div_vec2_f32(vec2<f32>(183f, 1160f), vec2<f32>(-1164f, 493f)))))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-763f, 966f)) * 213f) * _wgslsmith_f_op_f32(f32(-1f) * -202f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-854f + -238f)) + -1441f)));
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(func_2()))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1407f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-458f))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-594f * -456f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(931f)) * _wgslsmith_div_f32(1201f, 1347f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-665f)), -771f))));
    var var_1 = Struct_2(Struct_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.c, u_input.a), ~vec4<u32>(u_input.a, u_input.c, 66279u, 1u)), 0u), vec4<f32>(_wgslsmith_f_op_f32(step(-544f, -1492f)), -108f, -448f, -301f), _wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(u_input.d.x, min(u_input.d.x | u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-72462i, u_input.d.x, 0i, 1i), vec4<i32>(-1i, u_input.d.x, u_input.d.x, u_input.d.x))))), select(!select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(global0.x, false, true, true), vec4<bool>(global0.x, true, false, false)), true), !vec4<bool>(any(vec2<bool>(global0.x, global0.x)), u_input.d.x != -35158i, true, global0.x), !global0.x));
    var var_2 = select(vec4<bool>(var_1.d.x, true, !global0.x | (_wgslsmith_mult_i32(var_1.c, 17692i) <= 2147483647i), var_1.b.x == _wgslsmith_f_op_f32(select(-1541f, _wgslsmith_f_op_f32(-var_0.x), global0.x || global0.x))), !(!vec4<bool>(var_1.d.x, all(vec3<bool>(global0.x, true, false)), var_1.c <= var_1.c, func_3(Struct_2(Struct_1(vec4<u32>(var_1.a.b, 52972u, 19739u, 0u), 1u), var_1.b, var_1.c, var_1.d)))), any(vec3<bool>(any(select(vec4<bool>(var_1.d.x, false, global0.x, false), vec4<bool>(global0.x, false, global0.x, global0.x), global0.x)), true, global0.x)));
    return var_1.d.zxx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(abs(vec4<u32>(u_input.b.x, 0u, ~u_input.c, u_input.c >> (~u_input.c % 32u))), 0u);
    global0 = func_1();
    var var_1 = Struct_2(Struct_1(~(~var_0.a), u_input.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 280f, -1000f, 839f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-966f, -1175f, 787f, 1000f) * vec4<f32>(-205f, 1245f, 843f, -813f))))), u_input.d.x, !vec4<bool>(global0.x, false, func_3(Struct_2(Struct_1(vec4<u32>(var_0.a.x, 4294967295u, 1u, 4294967295u), 8293u), vec4<f32>(-1102f, -177f, -1443f, 2424f), u_input.d.x, vec4<bool>(global0.x, global0.x, global0.x, global0.x))), global0.x));
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_vec4_u32(var_1.a.a, vec4<u32>(u_input.b.x, ~1u, var_0.b, abs(32524u))), _wgslsmith_sub_u32(4294967295u & var_1.a.b, var_0.b)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(round(-616f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.b.x, 218f)))), var_1.b.x), _wgslsmith_clamp_i32(-57928i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.d.x), u_input.d ^ vec2<i32>(u_input.d.x, 34782i)), u_input.d.x), max(-_wgslsmith_sub_i32(-7844i, 0i), firstLeadingBit(firstLeadingBit(-2147483647i)))), var_1.d);
    var_0 = Struct_1(firstTrailingBit(vec4<u32>(0u, ~u_input.a << (max(1u, 0u) % 32u), firstTrailingBit(4294967295u), var_0.b)), 1u);
    var_0 = var_1.a;
    global0 = select(!(!var_1.d.zxw), vec3<bool>(!(4294967295u != (151332u >> (var_0.a.x % 32u))), select(true, var_2.d.x, (var_2.d.x && global0.x) & false), false), var_1.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, -1062f, 282f)))) * var_1.b.wyw), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.wz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.b.x, -1177f), var_2.b.yw))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, var_2.b.x)) - var_2.b.yy))), vec4<u32>(93047u, 19926u, var_1.a.b & 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(81913u, var_1.a.b) << (var_0.a.wz % vec2<u32>(32u)), vec2<u32>(var_1.a.a.x, 1u))) << (~vec4<u32>(min(3251u, 19379u), 0u, 57548u << (u_input.b.x % 32u), 8976u) % vec4<u32>(32u)), ~_wgslsmith_div_u32(var_2.a.b, countOneBits(var_2.a.b) >> (54483u % 32u)), reverseBits(reverseBits(_wgslsmith_add_i32(~(-27058i), -2340i))));
}

