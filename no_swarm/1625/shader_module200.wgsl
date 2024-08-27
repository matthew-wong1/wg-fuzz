struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
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

var<private> global0: vec2<bool>;

var<private> global1: Struct_1;

var<private> global2: vec4<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> bool {
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.a, global1.b))))), global1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(405f * 1f))) <= global1.a, ~u_input.b.zy);
    var var_0 = Struct_1(264f, _wgslsmith_f_op_f32(global1.b - global1.b), !((0i <= _wgslsmith_clamp_i32(u_input.c.x, -2147483647i, global2.x)) & any(vec4<bool>(false, global0.x, global1.c, global0.x))), select(firstLeadingBit(u_input.b.zx) >> (firstTrailingBit(vec2<u32>(1u, 1u)) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(_wgslsmith_add_i32(22157i, 24751i), i32(-1i) * -2147483647i)), select(!(!vec2<bool>(global0.x, global1.c)), !vec2<bool>(global0.x, true), select(select(vec2<bool>(global1.c, true), vec2<bool>(global0.x, true), global0.x), vec2<bool>(global0.x, global1.c), !global1.c))));
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-125f, _wgslsmith_f_op_f32(sign(global1.b))) * var_0.b)), 855f, all(select(vec4<bool>(false, true, select(true, true, global1.c), var_0.c), vec4<bool>(false, global1.c, global0.x, all(vec2<bool>(true, false))), select(vec4<bool>(true, global0.x, var_0.c, true), select(vec4<bool>(global0.x, global0.x, global1.c, false), vec4<bool>(false, true, global0.x, false), var_0.c), vec4<bool>(true, false, true, global0.x)))), vec2<i32>(0i, 2147483647i));
    global1 = Struct_1(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a)))) + _wgslsmith_f_op_f32(-global1.a)), _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 75375u, 0u), vec4<u32>(0u, 1u, 0u, 44070u)), vec4<u32>(1u, 1u, 1u, 1u)) < 4294967295u, global1.d);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2127f), -846f, true, global2.wx), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(329f, var_0.b) + _wgslsmith_f_op_f32(abs(140f))))), _wgslsmith_f_op_f32(max(global1.a, _wgslsmith_f_op_f32(-var_0.b))), true, global2.ww));
    return var_1.a.c;
}

fn func_2() -> vec3<bool> {
    let var_0 = select(select(vec4<bool>(global1.c, func_3(), !(false && global1.c), _wgslsmith_f_op_f32(-global1.a) >= global1.b), vec4<bool>(global1.d.x > select(1i, global2.x, true), select(!global1.c, true, true), false, global0.x), vec4<bool>(all(select(vec2<bool>(global1.c, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false))), global0.x, !(-2147483647i > global1.d.x), !(!global0.x))), !select(vec4<bool>(global0.x, true, all(vec2<bool>(global0.x, global0.x)), false), select(vec4<bool>(global0.x, false, global1.c, true), !vec4<bool>(false, global0.x, global1.c, global0.x), true), !select(vec4<bool>(false, false, global1.c, global1.c), vec4<bool>(false, true, true, global1.c), false)), 1i >= (global2.x & _wgslsmith_mod_i32(u_input.b.x, -29547i & global1.d.x)));
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), global1.b, global0.x, countOneBits(-select(_wgslsmith_add_vec2_i32(vec2<i32>(-26755i, 2147483647i), vec2<i32>(global1.d.x, -1i)), vec2<i32>(63123i, global1.d.x), vec2<bool>(false, false))));
    var var_1 = _wgslsmith_div_i32(select(1i, _wgslsmith_add_i32(~2147483647i, _wgslsmith_mult_i32(global2.x, -12150i)) & select(i32(-1i) * -14193i, global2.x, true), any(var_0)), min(15887i, u_input.b.x & _wgslsmith_dot_vec2_i32(vec2<i32>(-26387i, u_input.c.x), -vec2<i32>(0i, global1.d.x))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.b))) + _wgslsmith_f_op_f32(-global1.a)), !(!var_0.x), firstTrailingBit(vec2<i32>(min(u_input.c.x, global1.d.x), _wgslsmith_dot_vec2_i32(global1.d, u_input.b.zz)) << (vec2<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 50903u, 1u, 1u), vec4<u32>(21915u, 0u, 4294967295u, 4294967295u))) % vec2<u32>(32u))));
    global2 = vec4<i32>(29342i, max(_wgslsmith_div_i32(-(~var_2.d.x), global2.x ^ select(17594i, -8895i, global1.c)), global1.d.x), _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-19131i, ~2147483647i), _wgslsmith_sub_i32(var_2.d.x, -48528i)), global2.x), u_input.a);
    return !var_0.xwx;
}

fn func_1(arg_0: Struct_1) -> u32 {
    global2 = vec4<i32>(~(~(~arg_0.d.x)), arg_0.d.x, 0i, -4287i);
    let var_0 = ~(-u_input.b.x);
    let var_1 = _wgslsmith_div_f32(1000f, arg_0.a);
    let var_2 = vec4<bool>(global0.x, true, any(vec2<bool>(!global0.x, false)), any(func_2()) & true);
    var var_3 = Struct_2(Struct_1(1708f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1067f + -465f))) + _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(-625f, global1.b, true)))), global0.x, min(_wgslsmith_add_vec2_i32(vec2<i32>(var_0, var_0), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, global2.x), vec2<i32>(17235i, 2147483647i))), ~vec2<i32>(-13497i, arg_0.d.x))), arg_0);
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(214f, 475f) + _wgslsmith_f_op_f32(global1.a * global1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + _wgslsmith_f_op_f32(ceil(730f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a)) + -900f))));
    let var_1 = 1508f;
    let var_2 = (~(func_1(Struct_1(global1.a, global1.a, false, vec2<i32>(-41655i, global1.d.x))) << (~5716u % 32u)) > 1u) | false;
    var var_3 = false;
    let var_4 = _wgslsmith_f_op_f32(round(var_0.x));
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(var_0.zy, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-247f, -1047f), vec2<f32>(var_0.x, -873f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1, 361f)))))))));
    var var_6 = _wgslsmith_clamp_i32(~u_input.b.x, _wgslsmith_dot_vec2_i32(~(~vec2<i32>(19489i, -9819i)), global2.xz), -4472i);
    global1 = Struct_1(1928f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-446f, -907f, true)) - _wgslsmith_f_op_f32(426f + var_4))), global1.c, ~vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, global1.d.x, -10042i, u_input.b.x), vec4<i32>(1i, global1.d.x, 1i, global2.x)), global1.d.x), _wgslsmith_mod_i32(global1.d.x ^ -2147483647i, global1.d.x | global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~0u, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(623f, var_0.x, global1.b)))))))));
}

