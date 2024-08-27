struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(8605i, 32724i, -15761i), Struct_1(vec2<bool>(true, true), vec3<i32>(-7331i, 37715i, i32(-2147483648)), false, 800f));

var<private> global1: vec2<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = vec3<i32>(~_wgslsmith_add_i32(-1i, -1i), abs(global0.a.x), firstLeadingBit(1i));
    global1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1038f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(847f, 196f, global0.b.a.x)) + _wgslsmith_f_op_f32(global0.b.d - global0.b.d))))));
    var var_1 = Struct_2(vec3<i32>(_wgslsmith_mult_i32(2147483647i, firstLeadingBit(u_input.a)), var_0.x, -23843i), Struct_1(!vec2<bool>(!global0.b.a.x, false), ~(~(var_0 >> (vec3<u32>(12353u, 0u, u_input.b) % vec3<u32>(32u)))), !(false || any(vec4<bool>(false, false, global0.b.a.x, global0.b.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1074f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x))))));
    global1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(493f * global1.x), _wgslsmith_div_f32(global0.b.d, global1.x)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-569f, global1.x))), vec2<bool>(var_1.b.c && false, var_1.b.c))))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + global0.b.d) - -295f), Struct_1(select(!select(global0.b.a, vec2<bool>(global0.b.c, var_1.b.c), false), vec2<bool>(u_input.d > u_input.d, global0.b.c), !var_1.b.a.x == false), global0.b.b, global1.x != _wgslsmith_f_op_f32(-var_1.b.d), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(216f)), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-358f + 1186f)), abs(-59547i) > max(u_input.a, var_1.b.b.x)))), -416f);
    return 10077u;
}

fn func_2() -> Struct_1 {
    var var_0 = global0.b;
    var_0 = Struct_1(vec2<bool>(false, !(1u >= func_3())), reverseBits(max(select(vec3<i32>(u_input.a, -2147483647i, 0i), vec3<i32>(1i, 1i, 1i), var_0.a.x), _wgslsmith_div_vec3_i32(global0.a, vec3<i32>(u_input.a, -1i, -15672i)))), true, var_0.d);
    global0 = Struct_2(vec3<i32>(-18652i, global0.b.b.x, -2147483647i), Struct_1(select(var_0.a, !(!global0.b.a), global0.b.c), var_0.b, any(vec4<bool>(all(vec4<bool>(var_0.c, global0.b.c, var_0.a.x, global0.b.a.x)), false, true, global0.b.c)), _wgslsmith_div_f32(1164f, _wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(-var_0.d)))));
    var_0 = Struct_1(!(!select(!vec2<bool>(global0.b.a.x, false), !vec2<bool>(var_0.a.x, var_0.c), global0.b.a)), var_0.b, false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b.d))));
    global1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(564f, _wgslsmith_f_op_f32(-global0.b.d))))));
    return Struct_1(global0.b.a, abs(var_0.b | vec3<i32>(~var_0.b.x, ~u_input.a, ~var_0.b.x)), !(global0.a.x > 18196i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -632f)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>) -> f32 {
    global0 = Struct_2(arg_1.yzx, func_2());
    global0 = Struct_2(abs(-arg_1.xyz), Struct_1(select(select(select(global0.b.a, vec2<bool>(false, true), false), vec2<bool>(global0.b.a.x, false), !global0.b.a.x), select(select(vec2<bool>(global0.b.a.x, global0.b.a.x), vec2<bool>(global0.b.c, false), global0.b.c), vec2<bool>(global0.b.a.x, false), 83316u > u_input.d), select(vec2<bool>(true, true), global0.b.a, vec2<bool>(true, global0.b.c))), min(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(25687i, u_input.a), arg_1.wx), ~arg_1.x, max(arg_1.x, 1i)), vec3<i32>(-1i) * -vec3<i32>(arg_1.x, -9248i, 10377i)), (~1u & ~u_input.d) >= ~reverseBits(u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(788f - global0.b.d)))));
    global0 = Struct_2(max(-arg_1.xxx, -firstLeadingBit(global0.b.b)), Struct_1(func_2().a, func_2().b, false, _wgslsmith_f_op_f32(sign(global1.x))));
    let var_0 = Struct_3(-1190f, func_2(), -846f);
    let var_1 = 0u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-305f + -362f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.b.d), _wgslsmith_f_op_f32(-var_0.a))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global0.b.d)))))), _wgslsmith_f_op_f32(select(515f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<f32>(-385f, global1.x, -852f), vec4<i32>(-1i, 0i, u_input.a, u_input.a)))) + _wgslsmith_f_op_f32(-239f - global1.x)), true)));
    global0 = Struct_2(global0.a, global0.b);
    global1 = vec2<f32>(global1.x, -460f);
    var var_0 = true;
    var var_1 = true;
    let var_2 = select(vec3<bool>(false, true, true), select(vec3<bool>(global0.b.a.x | !global0.b.a.x, true, (global0.b.d > global1.x) == global0.b.a.x), !vec3<bool>(global0.b.a.x, -193f != global0.b.d, !global0.b.a.x), select(!vec3<bool>(false, global0.b.a.x, false), vec3<bool>(global0.b.a.x, all(global0.b.a), global0.b.c || true), select(!vec3<bool>(global0.b.c, global0.b.c, global0.b.a.x), vec3<bool>(false, global0.b.c, false), vec3<bool>(true, false, false)))), select(vec3<bool>(true && func_2().c, !(global1.x > -1166f), true), !(!(!vec3<bool>(true, false, global0.b.c))), true));
    let var_3 = ~26297u;
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(u_input.c, u_input.c), func_2().b.zz, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1967f)), global0.b.d))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(trunc(global0.b.d)), 122f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global0.b.d, 1337f), vec3<f32>(-939f, global1.x, -257f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.b.d)), _wgslsmith_f_op_f32(round(global0.b.d))), global1.x, global1.x)));
}

