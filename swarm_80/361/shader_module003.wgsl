struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-276f, 131f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> f32 {
    var var_0 = arg_0;
    var_0 = Struct_1(4294967295u, global0.x, _wgslsmith_div_f32(var_0.b, -1803f));
    var var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(firstTrailingBit(var_1.a), u_input.a.x) ^ ~(~var_1.a)), -619f, var_1.c);
    global0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(sign(var_1.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, _wgslsmith_f_op_f32(-var_1.c)) - vec2<f32>(_wgslsmith_f_op_f32(-111f - 2125f), arg_0.b)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(var_1.b, 1910f)) + vec2<f32>(var_1.b, arg_0.c)))), !arg_1));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))), var_0.c));
}

fn func_2() -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(608f, global0.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1039f, global0.x), vec2<f32>(global0.x, -531f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(global0.x)), global0.x))));
    var var_0 = Struct_1((1u << ((u_input.a.x ^ ~34192u) % 32u)) | ~u_input.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-242f + _wgslsmith_f_op_f32(min(global0.x, 1966f))))), _wgslsmith_f_op_f32(f32(-1f) * -882f)), 526f);
    let var_1 = any(!(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)))));
    let var_2 = (_wgslsmith_mod_vec2_u32(~(~u_input.a.yw), u_input.a.zx) << (_wgslsmith_div_vec2_u32(abs(vec2<u32>(var_0.a, 1u)), ~vec2<u32>(u_input.a.x, u_input.a.x) ^ _wgslsmith_div_vec2_u32(u_input.a.yx, vec2<u32>(var_0.a, 32351u))) % vec2<u32>(32u))) & u_input.a.xx;
    let var_3 = Struct_1(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_1(var_0.a, 414f, 1180f), true))))), global0.x);
    return select(select(select(!(!vec2<bool>(var_1, var_1)), vec2<bool>(any(vec4<bool>(true, false, var_1, false)), false && var_1), all(!vec2<bool>(var_1, var_1))), vec2<bool>(any(select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(false, true, false, var_1))), true), any(vec2<bool>(u_input.c != -1i, any(vec4<bool>(var_1, false, var_1, false))))), vec2<bool>(!var_1, select(true, var_1, all(!vec2<bool>(var_1, var_1)))), true);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = vec2<bool>(true, true);
    let var_1 = select(!(!var_0), var_0, var_0.x);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global0.x, global0.x));
    let var_2 = func_2();
    var var_3 = select(!(!vec4<bool>(true, var_1.x, -988f <= global0.x, false)), !(!vec4<bool>(any(vec3<bool>(var_0.x, true, var_1.x)), select(var_1.x, var_2.x, var_1.x), all(vec4<bool>(var_2.x, var_1.x, var_0.x, true)), u_input.a.x != u_input.a.x)), !select(select(vec4<bool>(false, false, var_2.x, var_1.x), vec4<bool>(var_2.x, true, var_0.x, true), true), !(!vec4<bool>(var_2.x, var_2.x, var_1.x, var_0.x)), select(!vec4<bool>(true, true, false, var_0.x), !vec4<bool>(var_2.x, var_0.x, var_0.x, false), u_input.a.x > u_input.a.x)));
    return Struct_1(u_input.a.x ^ u_input.a.x, global0.x, 684f);
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = func_1(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.d, -1i), vec3<i32>(u_input.b, u_input.d, 70084i)), _wgslsmith_add_i32(-2147483647i, 0i), -11562i), ~vec3<i32>(-11649i, 47505i, -1i))));
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(-998f * -234f))))))));
    let var_1 = func_1(-1i);
    var var_2 = ~_wgslsmith_div_u32(var_1.a, abs(max(var_1.a, var_1.a)));
    var_2 = _wgslsmith_mult_u32(~((func_1(14479i).a & (arg_0.a & u_input.a.x)) >> (17252u % 32u)), var_1.a);
    return 732f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x)))), global0.x)));
    var var_0 = 31884i;
    var var_1 = u_input.a.x;
    var_1 = u_input.a.x;
    var var_2 = ~(~(~((vec4<u32>(u_input.a.x, 1u, 0u, 21584u) | u_input.a) >> (~u_input.a % vec4<u32>(32u)))));
    let var_3 = Struct_1(~(~0u), -716f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(u_input.c)))) * global0.x));
    var var_4 = Struct_1(_wgslsmith_dot_vec2_u32(var_2.zy << (var_2.yy % vec2<u32>(32u)), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(var_3.a, var_2.x), 1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_3.a, 4294967295u, 1u, var_2.x), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_3.a, 64576u, 0u), u_input.a)))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -112f)), 1945f, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_4.c, var_4.c, -917f), vec3<f32>(1863f, -2133f, 1869f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-916f, -262f, var_4.b), vec3<f32>(var_4.b, global0.x, 796f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.c, var_3.b, -1000f), vec3<f32>(-1212f, 1375f, global0.x)))))), ~vec2<u32>(u_input.a.x, abs(70255u)), countOneBits(min(-1i, u_input.c)) & (min(u_input.b, ~u_input.c) >> ((func_1(u_input.c).a & u_input.a.x) % 32u)), 807f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.c, -1303f, var_3.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.c, 1007f, global0.x) + vec3<f32>(-815f, 1000f, var_3.b)), 23741u > u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_4.c, -839f, 283f)))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-781f, global0.x, var_3.c), vec3<f32>(global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(857f, global0.x, 1726f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-690f, global0.x, -759f))))))));
}

