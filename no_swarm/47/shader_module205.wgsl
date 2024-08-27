struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: vec3<u32>,
    d: i32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    return u_input.b.x;
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_5(u_input.b, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-825f, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, 450f, global0.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.x, global0.x))))));
    var var_1 = Struct_4(var_0.b.a.zx, Struct_3(_wgslsmith_mult_i32(~u_input.c, u_input.c) | 0i, 3188i), var_0.a.xww >> (u_input.a.xwx % vec3<u32>(32u)), -1i);
    let var_2 = !(!(_wgslsmith_sub_u32(max(var_0.a.x, 1u), func_3()) >= ~(~var_1.c.x)));
    let var_3 = var_0.b;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.b.a.yy))), _wgslsmith_f_op_vec2_f32(-var_1.a)), var_0.b.a.yz)));
    return Struct_5(u_input.b, var_0.b);
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_5, arg_3: vec2<i32>) -> vec3<i32> {
    let var_0 = all(select(select(vec4<bool>(select(true, true, true), all(vec3<bool>(false, false, true)), any(vec4<bool>(true, true, true, false)), false), vec4<bool>(true, true, arg_1 > 1u, true), vec4<bool>(true, false, true, all(vec4<bool>(false, false, true, true)))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false), all(vec4<bool>(false, true, false, true))), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), true), !all(vec3<bool>(true, true, false))), all(vec4<bool>(true, true, true, true)) != !all(vec3<bool>(false, false, false))));
    let var_1 = func_2();
    var var_2 = Struct_2(var_1.b, !(!(~43377i >= arg_3.x)), all(select(vec4<bool>(var_0, false, true, false & var_0), select(!vec4<bool>(false, var_0, var_0, true), vec4<bool>(true, var_0, false, false), !vec4<bool>(var_0, false, var_0, true)), !vec4<bool>(var_0, var_0, true, var_0))), Struct_1(arg_2.b.a));
    var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(abs(var_1.b.a))), var_2.c, true, var_1.b);
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(arg_0.a));
    return abs(vec3<i32>(2147483647i, _wgslsmith_mult_i32(-42651i << (~var_1.a.x % 32u), -2665i), _wgslsmith_mult_i32(1i ^ max(arg_0.d, 41939i), arg_0.b.a)));
}

fn func_1(arg_0: u32) -> bool {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1683f)))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))) + vec2<f32>(-1000f, _wgslsmith_f_op_f32(global0.x * -1000f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), vec2<f32>(global0.x, global0.x), false))));
    let var_0 = reverseBits(select(vec3<i32>(~(-45159i), i32(-1i) * -11179i, _wgslsmith_clamp_i32(u_input.c, u_input.c, -24877i)), func_4(Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -1674f) - vec2<f32>(-355f, 1238f)), Struct_3(-1i, 34982i), vec3<u32>(u_input.a.x, 0u, 4294967295u), u_input.c), ~_wgslsmith_add_u32(0u, arg_0), func_2(), -vec2<i32>(-1i, u_input.c) ^ abs(vec2<i32>(-10062i, u_input.c))), true));
    var var_1 = vec4<bool>(!all(vec4<bool>(true, true, true, true)), true, all(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)) && (true && (false == (global0.x >= global0.x))), all(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -681f) * vec2<f32>(-1093f, global0.x)) * vec2<f32>(822f, -1000f)) - vec2<f32>(global0.x, _wgslsmith_f_op_f32(-208f - -2376f))) + _wgslsmith_f_op_vec2_f32(-func_2().b.a.zz)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -884f) - vec2<f32>(-606f, -1000f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1089f)))))))));
    return all(!select(select(select(vec4<bool>(true, false, var_1.x, false), vec4<bool>(false, var_1.x, var_1.x, var_1.x), var_1.x), !vec4<bool>(var_1.x, false, true, false), !vec4<bool>(true, var_1.x, true, var_1.x)), select(!vec4<bool>(var_1.x, var_1.x, var_1.x, true), !vec4<bool>(true, var_1.x, var_1.x, true), true), any(vec4<bool>(var_1.x, var_1.x, true, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!func_1(~u_input.a.x)));
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - func_2().b.a.zx))), Struct_3(u_input.c, -2147483647i), u_input.a.wyz, func_4(Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1058f, -996f), vec2<f32>(global0.x, global0.x)))), Struct_3(firstTrailingBit(u_input.c), ~u_input.c), ~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), u_input.c), 66676u, Struct_5(~(vec4<u32>(1u, u_input.a.x, u_input.b.x, 32063u) | vec4<u32>(1u, 30377u, u_input.b.x, 35525u)), Struct_1(vec3<f32>(1635f, -1248f, 896f))), min(~(~vec2<i32>(-2147483647i, u_input.c)), -vec2<i32>(u_input.c, -27460i))).x);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_2().b.a.yx) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1543f), _wgslsmith_f_op_f32(var_1.a.x - var_1.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.c ^ ~(~var_1.d), -2147483647i, 27458i), _wgslsmith_f_op_f32(exp2(var_1.a.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(767f, -527f, 307f, -749f), vec4<f32>(global0.x, 871f, 1033f, global0.x))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, -231f, var_1.a.x) + vec4<f32>(global0.x, global0.x, -548f, global0.x))))))), 19308u);
}

