struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec3<bool>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(true, 1053f);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, 468f, 128f, -2618f))) - vec4<f32>(var_0.b, -1000f, -687f, global0.x)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), -713f, var_0.b, 505f)))));
    let var_2 = true;
    global1 = !vec3<bool>(true, var_2, var_2);
    var var_3 = reverseBits(4294967295u);
    return _wgslsmith_div_f32(var_0.b, var_0.b);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec2_f32(global0.yx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(584f + arg_0.b), _wgslsmith_f_op_f32(func_2())))) * vec2<f32>(arg_1.b, _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -609f)))));
    global1 = vec3<bool>(!(true == any(select(vec3<bool>(true, arg_0.a, true), vec3<bool>(true, global1.x, global1.x), arg_1.a))), arg_1.a, u_input.a > (u_input.c & 2147483647i));
    var var_1 = vec3<f32>(-1573f, arg_1.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -928f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.xx, global0.yz))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.b, arg_1.b, 2490f))) * _wgslsmith_div_vec3_f32(vec3<f32>(1000f, arg_0.b, arg_1.b), vec3<f32>(arg_1.b, -1246f, -970f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-899f, 1400f, 850f)) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -186f, var_0.x), vec3<f32>(arg_1.b, arg_1.b, arg_1.b)))))));
    return Struct_2(Struct_1(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b * -1000f))), arg_1, arg_0.b, arg_1);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    var var_0 = ~(~(select(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(0u, u_input.e, u_input.e, 4294967295u), vec4<bool>(global1.x, false, true, false)) >> (vec4<u32>(u_input.e, 6846u, 51893u, u_input.e) % vec4<u32>(32u))) << (_wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), u_input.b.xx), ~u_input.e, u_input.b.x >> (u_input.e % 32u), abs(4294967295u)), u_input.b) % vec4<u32>(32u)));
    let var_1 = func_1(func_1(Struct_1(true, func_1(func_1(Struct_1(false, arg_2.b), arg_2).b, Struct_1(arg_1.b.a, -665f)).c), arg_1.b).d, Struct_1(any(select(!global1.zz, global1.xz, global1.xx)), arg_2.b));
    let var_2 = func_1(func_1(var_1.a, Struct_1(arg_1.d.a || (arg_0 < arg_2.b), _wgslsmith_f_op_f32(select(1646f, arg_0, false)))).a, func_1(var_1.b, func_1(Struct_1(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_1(Struct_1(global1.x, arg_1.a.b), Struct_1(var_1.a.a, var_1.a.b)).b).d).a);
    var_0 = _wgslsmith_sub_vec4_u32(u_input.b, abs(vec4<u32>(0u, var_0.x, ~(~var_0.x), 18866u)));
    let var_3 = var_1;
    return any(select(!select(select(vec4<bool>(false, var_3.d.a, global1.x, var_2.b.a), vec4<bool>(var_2.d.a, var_3.b.a, false, true), arg_2.a), vec4<bool>(false, false, global1.x, true), vec4<bool>(false, arg_1.b.a, false, arg_2.a)), vec4<bool>(true, true, all(!vec4<bool>(false, arg_1.b.a, global1.x, false)), true), vec4<bool>(!var_3.d.a, !(var_2.b.a | arg_2.a), select(arg_2.a, select(arg_1.b.a, global1.x, global1.x), any(vec2<bool>(true, true))), false)));
}

fn func_4(arg_0: u32, arg_1: bool) -> i32 {
    return _wgslsmith_div_i32(u_input.d, -(abs(_wgslsmith_add_i32(u_input.c, -1i)) | (u_input.d & 27144i)));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: u32, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(arg_1, vec2<f32>(-667f, -374f), func_1(func_1(func_1(func_1(Struct_1(global1.x, 2365f), Struct_1(global1.x, -568f)).a, Struct_1(true, -2082f)).b, Struct_1(false, _wgslsmith_div_f32(743f, 209f))).d, func_1(func_1(Struct_1(true, arg_1.x), Struct_1(true, -326f)).b, func_1(func_1(Struct_1(false, 712f), Struct_1(true, -1000f)).b, func_1(Struct_1(global1.x, global0.x), Struct_1(global1.x, 251f)).d).b).a).d.a));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))) - vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), -2264f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(203f)))))));
    let var_1 = global1.yx;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -704f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1 * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1962f) * arg_1)))));
    global1 = !select(!(!vec3<bool>(var_1.x, var_1.x, false)), select(vec3<bool>(true, any(vec3<bool>(global1.x, var_1.x, global1.x)), true), vec3<bool>(global1.x, global1.x, false), select(vec3<bool>(false, false, var_1.x), vec3<bool>(true, true, true), !global1.x)), func_1(Struct_1(!var_1.x, _wgslsmith_f_op_f32(arg_1.x * -518f)), func_1(Struct_1(var_1.x, var_2.x), Struct_1(var_1.x, var_0.x)).b).a.a);
    return Struct_1(true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-280f + var_0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<i32>(-1i, u_input.a, 1i, func_4(~(~23928u), func_3(-290f, func_1(Struct_1(global1.x, global0.x), Struct_1(false, 1842f)), Struct_1(global1.x, global0.x)))), global0.zz, ~u_input.b.x, firstTrailingBit(4294967295u ^ (firstTrailingBit(u_input.b.x) & u_input.e)));
    var var_1 = func_1(Struct_1(!(!var_0.a) & !global1.x, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(f32(-1f) * -225f))), var_0);
    let var_2 = var_1.b;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b)));
    let var_4 = vec2<i32>(u_input.d, _wgslsmith_clamp_i32(2147483647i, _wgslsmith_div_i32(countOneBits(610i), u_input.d), firstLeadingBit(u_input.c)));
    let var_5 = 1u;
    var var_6 = func_1(var_1.d, Struct_1(var_1.d.a, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(global0.x - var_1.b.b))))));
    var_1 = func_1(var_6.d, Struct_1(!(true | (1i < u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, -39049i);
}

