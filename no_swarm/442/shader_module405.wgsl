struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -207f) - _wgslsmith_f_op_f32(ceil(285f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1445f * -1000f))))))));
    var var_1 = select(!select(vec4<bool>(true, any(vec4<bool>(global0.x, false, true, false)), global0.x & true, true), !(!vec4<bool>(false, global0.x, global0.x, false)), true), vec4<bool>(!(!(global0.x && false)), false & all(select(global0.yx, global0.xz, global0.x)), global0.x, !(true & (var_0 != 251f))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(global0.x, false, global0.x, -246f == var_0), !vec4<bool>(global0.x, global0.x, global0.x, global0.x)), select(vec4<bool>(false, true, true, any(vec4<bool>(global0.x, global0.x, global0.x, false))), vec4<bool>(true, true, 509f >= var_0, false), !(!vec4<bool>(global0.x, true, global0.x, global0.x))), !(_wgslsmith_f_op_f32(f32(-1f) * -350f) > _wgslsmith_f_op_f32(step(var_0, -912f)))));
    var var_2 = Struct_2(-229f, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(var_0 + -1453f), -2230f, 348f, _wgslsmith_f_op_f32(-var_0)), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, 30019i) & select(vec2<i32>(10742i, u_input.a), vec2<i32>(21522i, -64053i), true), vec2<i32>(u_input.a, -18555i >> (1u % 32u)))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(358f, var_0, 286f, 720f) + vec4<f32>(-183f, var_0, var_0, var_0))), vec4<f32>(-664f, _wgslsmith_f_op_f32(389f - 357f), _wgslsmith_f_op_f32(2334f + -442f), var_0)), u_input.a), Struct_1(vec4<f32>(-675f, -163f, 554f, _wgslsmith_f_op_f32(abs(290f))), u_input.a), global0.zz);
    var_2 = Struct_2(var_2.b.a.x, Struct_1(var_2.b.a, ~1i), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(var_2.d.a.x * _wgslsmith_div_f32(-325f, var_0)), _wgslsmith_f_op_f32(min(-707f, _wgslsmith_f_op_f32(-var_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.d.a.x + -528f), _wgslsmith_f_op_f32(var_2.c.a.x + 372f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(340f)) + _wgslsmith_f_op_f32(var_0 * var_2.d.a.x))), abs(-1i)), var_2.c, !vec2<bool>(!select(true, var_2.e.x, var_1.x), true));
    var var_3 = var_2.d.b;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_2.d.a.x, 1025f, var_2.a), vec4<f32>(var_2.d.a.x, -311f, var_0, var_2.d.a.x))))) - var_2.b.a);
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(1f, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(395f, 860f, 1518f, 138f) + vec4<f32>(180f, 202f, -570f, 406f)) * vec4<f32>(187f, 354f, 1245f, -860f)), _wgslsmith_add_i32(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(0i, arg_0.x))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1244f, 449f, -1761f, -603f))), -19688i), Struct_1(_wgslsmith_f_op_vec4_f32(func_3()), 3818i), vec2<bool>(!(true || global0.x), true)), Struct_2(_wgslsmith_f_op_f32(-1328f * -393f), Struct_1(_wgslsmith_f_op_vec4_f32(func_3()), -2147483647i), Struct_1(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-648f - 1000f), 270f, _wgslsmith_f_op_vec4_f32(func_3()).x), -arg_0.x), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-352f, 271f, -579f, 916f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-648f, -1671f, -624f, 501f)))), u_input.a), global0.zy), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1698f)), _wgslsmith_f_op_f32(floor(1563f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1081f, -167f, 836f, 183f)), arg_0.x), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(279f, 114f, -391f, 656f) - vec4<f32>(175f, 232f, -246f, 1357f)) - vec4<f32>(-1000f, -714f, 410f, 846f)), abs(~(-6315i))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-526f, -1219f, -556f, -530f)), ~1i), select(vec2<bool>(true, any(vec3<bool>(false, true, global0.x))), vec2<bool>(global0.x, all(global0.xz)), !select(vec2<bool>(false, global0.x), global0.zy, global0.yz))));
    var var_1 = _wgslsmith_mult_vec2_u32(~min(vec2<u32>(1u, 1u), min(~vec2<u32>(8466u, 40958u), vec2<u32>(4294967295u, 3137u))), max(~(~vec2<u32>(1u, 4294967295u)), _wgslsmith_add_vec2_u32(select(vec2<u32>(1u, 1u), vec2<u32>(26746u, 1u), true), select(vec2<u32>(1u, 4294967295u), ~vec2<u32>(0u, 109u), select(var_0.a.e, var_0.c.e, var_0.a.e.x)))));
    var var_2 = !global0.x;
    global0 = vec3<bool>(any(!vec3<bool>(any(vec3<bool>(false, global0.x, var_0.c.e.x)), var_0.c.e.x, false)), true, false);
    var var_3 = reverseBits(-abs(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-24483i, var_0.b.d.b), arg_0.zy), ~u_input.a, arg_0.x)));
    return var_0.c;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(vec4<f32>(329f, _wgslsmith_f_op_f32(f32(-1f) * -643f), -1888f, 1f), _wgslsmith_sub_i32(u_input.a, u_input.a));
    let var_1 = -1i;
    let var_2 = func_2(~(-(~(~vec3<i32>(var_1, var_0.b, u_input.a)))));
    var_0 = var_2.d;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -252f);
    return Struct_1(var_2.b.a, _wgslsmith_mult_i32(var_2.b.b, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(false, true, true);
    var var_0 = 1028f;
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(116f - 539f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1008f, -1174f))))) * 523f)));
    let var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_1.a.zy), _wgslsmith_f_op_vec3_f32(min(var_1.a.wyy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1494f, -1434f))))))), -949f, vec2<f32>(var_1.a.x, func_2(vec3<i32>(~var_1.b, _wgslsmith_mod_i32(-7172i, 1i), _wgslsmith_add_i32(-1i, var_1.b))).c.a.x));
}

