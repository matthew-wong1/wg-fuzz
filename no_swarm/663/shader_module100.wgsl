struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = 4632i;
    let var_1 = reverseBits(37563u);
    var var_2 = ~(~u_input.c.x);
    let var_3 = countOneBits(-abs(u_input.a.x));
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1f), 689f, _wgslsmith_f_op_f32(-415f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) - arg_2.b)), 872f) - vec4<f32>(arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(204f - arg_2.b)))), _wgslsmith_f_op_f32(trunc(arg_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b), arg_2.a))));
    return _wgslsmith_f_op_f32(-arg_2.b);
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_2(any(vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<i32>(-49215i, 2147483647i), -1390f, Struct_1(-629f, 1000f))) + 1f)), -1005f));
    let var_1 = select(u_input.a.x, ~(~u_input.a.x), true) ^ (u_input.a.x ^ _wgslsmith_add_i32(select(min(0i, -22178i), -2147483647i, any(vec4<bool>(true, var_0.a, true, true))), 1i));
    let var_2 = firstLeadingBit(firstLeadingBit(u_input.a));
    var var_3 = vec3<bool>(!(select(all(vec3<bool>(false, var_0.a, var_0.a)), var_0.a, !var_0.a) || true), any(select(!vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), !vec4<bool>(var_0.a, false, var_0.a, true), !vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a))), true);
    var var_4 = var_0.b;
    return select(!(!select(vec3<bool>(true, false, var_3.x), vec3<bool>(false, false, var_3.x), vec3<bool>(true, true, true))), vec3<bool>(!(u_input.a.x != select(var_1, -1i, true)), false, all(var_3.yz)), select(vec3<bool>(!any(vec4<bool>(var_3.x, var_0.a, var_0.a, false)), false, true), select(select(select(vec3<bool>(false, var_0.a, false), vec3<bool>(true, var_0.a, var_3.x), false), select(vec3<bool>(false, var_3.x, true), vec3<bool>(true, true, false), vec3<bool>(true, var_0.a, false)), var_3.x), select(!vec3<bool>(true, var_0.a, false), select(vec3<bool>(var_3.x, var_0.a, var_0.a), vec3<bool>(true, var_0.a, var_3.x), vec3<bool>(false, var_3.x, true)), select(vec3<bool>(var_0.a, true, false), vec3<bool>(var_3.x, var_3.x, var_0.a), vec3<bool>(true, var_3.x, var_3.x))), vec3<bool>(any(vec2<bool>(true, true)), var_0.a && var_3.x, true)), false));
}

fn func_4(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -301f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1042f * 646f)), _wgslsmith_f_op_f32(exp2(1f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(668f, -686f))) + _wgslsmith_f_op_f32(f32(-1f) * -195f))));
    var var_1 = var_0;
    var_1 = Struct_1(_wgslsmith_f_op_f32(func_3(vec2<i32>(-u_input.a.x, -40086i), var_1.a, Struct_1(var_1.b, var_0.b))), _wgslsmith_f_op_f32(f32(-1f) * -220f));
    var_1 = var_0;
    var var_2 = ~(~u_input.c.yy);
    return var_0;
}

fn func_1() -> Struct_1 {
    let var_0 = -314f;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(var_0)), var_0);
    let var_2 = func_4(func_2());
    var var_3 = !(true == any(vec4<bool>(func_2().x, select(false, true, true), true, true)));
    let var_4 = ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(~0u, select(u_input.b.x, 8557u, true))));
    return func_4(vec3<bool>(false, !(!select(true, true, false)), !(true || func_2().x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = !select(vec2<bool>(true, true), !select(vec2<bool>(true, false), func_2().xx, true), vec2<bool>(true, !(-823f <= var_0.a)));
    var_1 = select(func_2().zz, !vec2<bool>(all(!vec2<bool>(var_1.x, var_1.x)), false), vec2<bool>(true, any(select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), !vec4<bool>(false, true, var_1.x, true), !var_1.x))));
    var var_2 = vec2<bool>(all(select(vec3<bool>(any(vec2<bool>(false, var_1.x)), true, all(vec2<bool>(false, var_1.x))), vec3<bool>(true, all(vec3<bool>(var_1.x, true, false)), var_1.x && var_1.x), all(vec4<bool>(var_1.x, var_1.x, true, true)) || var_1.x)), var_1.x);
    var_1 = select(!vec2<bool>(1u < u_input.b.x, false), func_2().xz, !vec2<bool>(!all(vec4<bool>(false, var_1.x, var_2.x, var_2.x)), true));
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, 203f, -499f, -373f) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b, -385f, var_0.b, var_0.b)))), vec4<f32>(2303f, -354f, var_0.a, -1095f))))));
    var_2 = vec2<bool>(true, true);
    let var_4 = func_4(vec3<bool>(var_2.x, true, true));
    let var_5 = !select(select(vec4<bool>(var_1.x, var_1.x, -41857i == u_input.a.x, false), !(!vec4<bool>(var_1.x, var_1.x, true, true)), true), !select(vec4<bool>(true, var_2.x, true, true), vec4<bool>(true, var_1.x, var_1.x, var_2.x), !vec4<bool>(var_2.x, false, false, var_2.x)), select(!(!vec4<bool>(false, var_2.x, true, var_1.x)), select(vec4<bool>(false, false, var_2.x, var_2.x), !vec4<bool>(var_1.x, var_2.x, false, false), func_2().x), select(!vec4<bool>(var_1.x, false, var_1.x, var_2.x), select(vec4<bool>(true, var_2.x, var_2.x, var_1.x), vec4<bool>(true, var_1.x, var_2.x, var_1.x), var_2.x), select(vec4<bool>(var_1.x, false, var_2.x, var_2.x), vec4<bool>(var_2.x, true, true, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.c.x, 16744u)), min(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(4294967295u, u_input.b.x))), ~7777u), _wgslsmith_f_op_f32(1183f * -653f), _wgslsmith_add_vec2_i32(-_wgslsmith_sub_vec2_i32(u_input.a.yz, select(u_input.a.yw, vec2<i32>(33392i, u_input.a.x), true)), -abs(vec2<i32>(u_input.a.x, 1i))), countOneBits(10032i), abs(u_input.c.x));
}

