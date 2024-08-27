struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec2<u32>) -> bool {
    var var_0 = vec3<u32>(firstLeadingBit(~(~arg_1)), 24854u, arg_1);
    let var_1 = arg_0.b;
    var var_2 = arg_2;
    let var_3 = arg_2;
    var_2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(213f))) * 1290f))), false);
    return global1.b;
}

fn func_2() -> Struct_1 {
    global0 = -u_input.c.xy;
    var var_0 = !(!(!func_3(Struct_1(global1.a, false), u_input.b.x, Struct_1(814f, false), vec2<u32>(u_input.b.x, 56383u))));
    let var_1 = vec4<bool>(false, !(_wgslsmith_f_op_f32(sign(755f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1155f * global1.a) * _wgslsmith_f_op_f32(max(global1.a, global1.a)))), true, true);
    var_0 = !(!any(var_1.zz));
    var_0 = func_3(Struct_1(1144f, any(vec3<bool>(false, true, var_1.x)) && !any(vec3<bool>(var_1.x, false, var_1.x))), ~u_input.b.x, Struct_1(global1.a, !all(!var_1)), countOneBits(vec2<u32>(17537u, 4294967295u)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x | 1u, u_input.b.x), u_input.a.xx) % vec2<u32>(32u)));
    return Struct_1(-171f, any(vec3<bool>(true, !var_1.x, 0u >= u_input.a.x)) & var_1.x);
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = u_input.c.yz;
    global1 = func_2();
    global1 = Struct_1(1146f, false);
    var var_0 = abs(u_input.c.x) & ~(50230i & firstTrailingBit(firstLeadingBit(global0.x)));
    let var_1 = func_2();
    return func_2();
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<f32>) -> bool {
    global1 = func_4(_wgslsmith_f_op_f32(526f + arg_1.x), vec4<f32>(_wgslsmith_f_op_f32(round(global1.a)), -1000f, 979f, _wgslsmith_f_op_f32(1036f * arg_1.x)), func_2(), Struct_1(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(f32(-1f) * -684f)), !(!global1.b)));
    global0 = -_wgslsmith_mult_vec2_i32(vec2<i32>(-u_input.c.x, 17973i) >> (_wgslsmith_sub_vec2_u32(~arg_0, firstTrailingBit(vec2<u32>(4294967295u, u_input.b.x))) % vec2<u32>(32u)), vec2<i32>(abs(u_input.c.x & 0i), global0.x));
    let var_0 = max(_wgslsmith_dot_vec3_u32(u_input.a.yzx, vec3<u32>(reverseBits(arg_0.x), abs(72787u & u_input.b.x), ~arg_0.x << ((0u ^ arg_0.x) % 32u))), countOneBits(u_input.a.x));
    var var_1 = !vec3<bool>(true, true, !any(!vec4<bool>(true, global1.b, global1.b, global1.b)));
    global1 = Struct_1(841f, var_1.x);
    return false;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    global0 = vec2<i32>(-1i) * -min(min(select(vec2<i32>(global0.x, u_input.c.x), u_input.c.zx, vec2<bool>(true, false)), min(vec2<i32>(-33089i, 0i), vec2<i32>(-7076i, 0i))), vec2<i32>(1i, 1i));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.a, -389f))), vec2<f32>(_wgslsmith_f_op_f32(step(arg_2.a, arg_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -914f))))) * vec2<f32>(arg_2.a, arg_1.a));
    var var_1 = func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(143f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.a, -247f, -2044f, var_0.x), vec4<f32>(-628f, -919f, -695f, arg_1.a))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.a, arg_2.a, -1000f, -527f), vec4<f32>(1151f, global1.a, -240f, global1.a)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_2.a, arg_0.a, arg_0.a)))))) - vec4<f32>(global1.a, func_4(var_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, arg_0.a, var_0.x, arg_1.a)), arg_2, arg_2).a, 1175f, -1000f)), func_2(), func_2());
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, 520f) * vec2<f32>(-656f, var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 222f) + vec2<f32>(var_1.a, 384f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, arg_0.a))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.a, var_1.a)))))));
    let var_2 = func_2();
    return vec4<bool>(true, arg_1.b, arg_2.b && any(select(!vec3<bool>(false, var_2.b, true), !vec3<bool>(arg_1.b, false, arg_1.b), select(vec3<bool>(false, var_1.b, var_1.b), vec3<bool>(true, false, global1.b), arg_0.b))), !(!(1i < global0.x) || !func_2().b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1.a, false);
    var var_1 = Struct_1(-1000f, all(func_5(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1329f), var_0.b), Struct_1(_wgslsmith_f_op_f32(-global1.a), func_1(u_input.b, vec3<f32>(global1.a, var_0.a, global1.a))), func_4(1057f, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a, 1000f, 789f, var_0.a))), func_2(), Struct_1(-769f, global1.b)))));
    let var_2 = _wgslsmith_sub_vec4_u32(u_input.a, ~u_input.a);
    global0 = ~vec2<i32>(~u_input.c.x, u_input.c.x);
    global0 = _wgslsmith_div_vec2_i32(select(u_input.c.zx, ~(vec2<i32>(u_input.c.x, 22165i) >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u))), func_5(Struct_1(_wgslsmith_f_op_f32(-global1.a), func_2().b), func_2(), Struct_1(_wgslsmith_f_op_f32(global1.a + -2054f), var_0.b || var_1.b)).zx), u_input.c.zz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.a, -1000f))), vec3<f32>(-795f, _wgslsmith_f_op_f32(431f - global1.a), -553f), all(select(vec4<bool>(true, true, true, var_0.b), vec4<bool>(var_0.b, true, true, global1.b), vec4<bool>(var_1.b, false, var_1.b, false))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, global1.a)))))), vec3<bool>(true, any(select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(false, true, var_1.b), true)), !var_0.b))), func_4(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a, -1229f, _wgslsmith_f_op_f32(423f * var_0.a), _wgslsmith_f_op_f32(step(var_0.a, 242f))))), func_4(-914f, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a, var_1.a, var_1.a, -1000f), vec4<f32>(-226f, global1.a, -933f, var_0.a), false)))), var_0, var_0), var_0).a, -global0.x, u_input.c.xz);
}

