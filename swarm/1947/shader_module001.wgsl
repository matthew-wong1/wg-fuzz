struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 1666f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -375f), _wgslsmith_f_op_f32(sign(1514f)), false)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(377f + -775f)))), _wgslsmith_f_op_f32(sign(1282f))) * -1616f);
    var_1 = _wgslsmith_f_op_f32(abs(318f));
    var_0 = -1652f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -747f)) * _wgslsmith_div_f32(971f, -113f))) + _wgslsmith_f_op_f32(trunc(-530f))));
    return select(!vec2<bool>((u_input.b.x > u_input.b.x) | true, false), select(vec2<bool>(~arg_0.x <= (-35142i | u_input.b.x), true), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), false), true), select(vec2<bool>(min(2147483647i, u_input.b.x) <= -49883i, true), vec2<bool>(max(arg_0.x, u_input.b.x) > 1i, false), true));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    var var_0 = arg_2.c;
    var_0 = vec3<bool>(all(select(!arg_1, select(vec2<bool>(false, var_0.x), vec2<bool>(arg_2.b, arg_1.x), false), func_3(vec4<i32>(arg_2.a, arg_2.a, arg_2.a, arg_3.c.a)))) | select(all(!arg_2.c), arg_3.c.b, all(vec4<bool>(arg_1.x, arg_1.x, true, false))), true, !all(arg_2.c));
    var_0 = !vec3<bool>(true || arg_1.x, arg_3.c.b, arg_2.c.x);
    let var_1 = u_input.b;
    return arg_2.b;
}

fn func_1() -> f32 {
    var var_0 = vec2<bool>(!(!func_2(666f, vec2<bool>(true, true), Struct_1(31484i, false, vec3<bool>(true, true, false), -574f), Struct_2(vec2<u32>(u_input.d.x, 4294967295u), vec3<u32>(1u, 25740u, u_input.a), Struct_1(u_input.b.x, false, vec3<bool>(true, false, false), -329f), vec2<u32>(42105u, u_input.a), vec3<u32>(u_input.d.x, u_input.d.x, 1u)))) | true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1000f)))) >= _wgslsmith_f_op_f32(min(1461f, -404f)));
    var_0 = vec2<bool>(any(vec2<bool>(_wgslsmith_f_op_f32(floor(-1064f)) == _wgslsmith_f_op_f32(f32(-1f) * -1863f), var_0.x)), true);
    var_0 = select(vec2<bool>(any(vec2<bool>(var_0.x, any(vec2<bool>(false, false)))), false), !vec2<bool>(false, var_0.x), select(!select(vec2<bool>(var_0.x, false), select(vec2<bool>(false, var_0.x), vec2<bool>(false, true), true), var_0.x), vec2<bool>(any(func_3(vec4<i32>(u_input.c, u_input.b.x, 0i, 0i))), false), var_0.x));
    let var_1 = Struct_1(_wgslsmith_sub_i32(-55506i, countOneBits(-6353i)), var_0.x, !select(vec3<bool>(all(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), true, var_0.x), select(vec3<bool>(var_0.x, var_0.x, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), var_0.x), var_0.x), vec3<bool>(var_0.x, true, true)), 1f);
    var_0 = var_1.c.xz;
    return 1394f;
}

fn func_4(arg_0: f32) -> Struct_1 {
    let var_0 = firstTrailingBit(1u);
    var var_1 = Struct_1(2147483647i, all(vec3<bool>(true, true, func_3(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.c, -1i, u_input.b.x), vec4<i32>(20624i, -1i, 2147483647i, u_input.b.x))).x)), select(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), any(vec4<bool>(false, true, false, false))), vec3<bool>(arg_0 == arg_0, false, false)), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), _wgslsmith_f_op_f32(-1000f + arg_0));
    var_1 = Struct_1(-(var_1.a & _wgslsmith_mult_i32(min(u_input.b.x, 98072i), var_1.a)), select(true, any(vec2<bool>(false, all(var_1.c))), var_1.c.x), !vec3<bool>(true, true, var_1.c.x), arg_0);
    var_1 = Struct_1(var_1.a, false, select(var_1.c, select(var_1.c, vec3<bool>(-289f > var_1.d, select(var_1.c.x, true, var_1.c.x), var_1.b), true), var_1.b), var_1.d);
    var var_2 = !(!(!(var_1.c.x | any(var_1.c))));
    return Struct_1(var_1.a, var_1.b, var_1.c, -1320f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-528f, 1185f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(442f)) * 1f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-618f, _wgslsmith_f_op_f32(func_1()))))));
    let var_1 = !vec4<bool>(all(!(!vec4<bool>(var_0.b, var_0.b, var_0.c.x, true))), all(vec2<bool>(func_2(var_0.d, var_0.c.yx, Struct_1(u_input.c, var_0.b, var_0.c, var_0.d), Struct_2(vec2<u32>(u_input.a, 139505u), vec3<u32>(18781u, 0u, u_input.d.x), Struct_1(0i, var_0.c.x, var_0.c, var_0.d), vec2<u32>(u_input.a, 130025u), vec3<u32>(u_input.d.x, u_input.a, u_input.d.x))), var_0.b)), func_4(-1000f).c.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(350f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_4(var_0.d).d, _wgslsmith_f_op_f32(f32(-1f) * -377f)) * -1061f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-472f, -736f)))))));
}

