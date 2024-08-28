struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_2 = Struct_2(vec2<f32>(-954f, 1000f), 484f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<i32>) -> vec2<u32> {
    var var_0 = ~63218u;
    return (select(abs(~vec2<u32>(1u, arg_0.x)), select(arg_0.yx, ~arg_0.yy, any(vec4<bool>(true, false, false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), false)) << (~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(19277u, 1u), vec2<u32>(arg_0.x, 26005u)), vec2<u32>(arg_0.x, arg_0.x) ^ arg_0.zy) % vec2<u32>(32u))) | _wgslsmith_mod_vec2_u32(arg_0.zy, firstTrailingBit(arg_0.zz));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<bool>) -> vec4<bool> {
    let var_0 = select(vec2<bool>(arg_3.x, arg_3.x), vec2<bool>(!any(select(vec3<bool>(arg_3.x, arg_3.x, false), vec3<bool>(arg_2.a, arg_2.a, true), vec3<bool>(false, arg_2.a, arg_3.x))), arg_2.a), vec2<bool>(true, _wgslsmith_sub_u32(25801u, arg_1.x) < func_3(abs(vec3<u32>(arg_1.x, 0u, arg_1.x)), ~vec2<i32>(arg_0.x, arg_0.x)).x));
    let var_1 = _wgslsmith_f_op_f32(-global1.b);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_1, 539f)))))))) * 226f);
    global1 = Struct_2(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-413f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -187f)))))));
    var var_3 = Struct_3(max(min(vec3<u32>(arg_1.x, arg_1.x, func_3(vec3<u32>(arg_1.x, arg_1.x, 5046u), arg_0.xz).x), ~vec3<u32>(28420u, arg_1.x, 17365u)), _wgslsmith_div_vec3_u32(~(~vec3<u32>(arg_1.x, 44936u, 1u)), firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, arg_1.x), vec3<u32>(0u, 1u, arg_1.x))))));
    return !(!(!(!(!vec4<bool>(false, arg_3.x, false, var_0.x)))));
}

fn func_2() -> Struct_2 {
    var var_0 = !func_4(vec4<i32>(0i, _wgslsmith_clamp_i32(~u_input.d, -u_input.c, -1i), ~(-35584i), reverseBits(-39561i)), _wgslsmith_div_vec2_u32(func_3(vec3<u32>(4294967295u, 0u, 64404u), u_input.b.xx), firstLeadingBit(vec2<u32>(18020u, 4294967295u))) ^ min(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), Struct_1(all(vec3<bool>(true, true, true))), select(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), true), false), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))));
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a - global1.a) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global1.a))))), global1.b);
    return Struct_2(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.a.x))) - global1.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(557f * _wgslsmith_f_op_f32(-global1.b)))));
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), true));
    global0 = var_0.x;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(-u_input.b.x, Struct_3(min(~vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(41497u, 52965u, 44659u)))));
    var var_0 = Struct_3(~(~countOneBits(~vec3<u32>(1u, 4294967295u, 13409u))));
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, 931f) * _wgslsmith_f_op_vec2_f32(global1.a + vec2<f32>(707f, global1.b))), vec2<f32>(_wgslsmith_div_f32(-152f, -215f), 1425f))) - vec2<f32>(global1.a.x, 1000f)), -889f);
    let var_1 = Struct_4(Struct_1(true), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b, global1.a.x)))));
    var_0 = Struct_3(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_0.a.x), ~u_input.a.x);
}

