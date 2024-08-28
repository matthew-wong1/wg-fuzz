struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> Struct_1 {
    let var_0 = 65324i;
    let var_1 = false;
    let var_2 = ~_wgslsmith_mod_i32(-14843i, -1i);
    var var_3 = 28053u <= (~u_input.c.x | u_input.d);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(578f + _wgslsmith_f_op_f32(f32(-1f) * -785f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(726f, 792f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1676f, 1218f)))))), ~min(~u_input.c >> (~vec3<u32>(10977u, u_input.c.x, u_input.c.x) % vec3<u32>(32u)), vec3<u32>(~u_input.d, u_input.c.x, _wgslsmith_mult_u32(58389u, 43040u))));
    return Struct_1(550f, _wgslsmith_f_op_vec2_f32(-var_4.b), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, var_4.c.x, var_4.c.x, u_input.c.x), ~vec4<u32>(u_input.d, 14575u, u_input.c.x, 0u)), ~(vec4<u32>(0u, var_4.c.x, 4294967295u, var_4.c.x) & vec4<u32>(0u, 1u, var_4.c.x, var_4.c.x))), u_input.c.x, _wgslsmith_mult_u32((var_4.c.x >> (77510u % 32u)) >> (~83881u % 32u), firstLeadingBit(_wgslsmith_clamp_u32(u_input.c.x, 30901u, 11274u)))));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = ~vec3<u32>(u_input.c.x, 19414u, 48661u);
    let var_1 = -((vec4<i32>(_wgslsmith_mult_i32(1i, u_input.e.x), ~u_input.e.x, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, u_input.e.x), vec2<i32>(-1i, u_input.a.x))) >> (~(~vec4<u32>(15794u, 1u, u_input.c.x, 62590u)) % vec4<u32>(32u))) >> (reverseBits(vec4<u32>(1u, u_input.c.x, _wgslsmith_mult_u32(0u, var_0.x), _wgslsmith_div_u32(8532u, 19173u))) % vec4<u32>(32u)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(max(func_2().b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * arg_0.a) + _wgslsmith_div_f32(arg_0.a, arg_0.a)))))), arg_0.b, firstLeadingBit(select(~(vec3<u32>(50691u, var_0.x, arg_0.c.x) >> (vec3<u32>(u_input.d, var_0.x, u_input.d) % vec3<u32>(32u))), min(vec3<u32>(u_input.c.x, var_0.x, u_input.d), var_0), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    let var_3 = true;
    var var_4 = var_2;
    return select(select(!select(!vec3<bool>(true, true, var_3), vec3<bool>(var_3, var_3, var_3), vec3<bool>(var_3, false, var_3)), vec3<bool>(var_3, any(select(vec2<bool>(false, var_3), vec2<bool>(var_3, var_3), vec2<bool>(var_3, true))), (var_3 | var_3) & any(vec2<bool>(true, var_3))), true), !(!(!(!vec3<bool>(true, var_3, true)))), vec3<bool>(any(!vec4<bool>(true, false, var_3, true)), 2147483647i > reverseBits(_wgslsmith_sub_i32(u_input.e.x, var_1.x)), true));
}

fn func_1() -> vec2<bool> {
    var var_0 = !(!vec3<bool>(u_input.b > (i32(-1i) * -1i), true, any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true))));
    var_0 = vec3<bool>(var_0.x, var_0.x, select(var_0.x, !var_0.x || any(!vec3<bool>(var_0.x, var_0.x, false)), all(vec2<bool>(!var_0.x, false))));
    var_0 = vec3<bool>(1f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(658f - -230f), 860f))), true, any(func_3(func_2())));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1200f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(732f * -475f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(min(-359f, _wgslsmith_f_op_f32(select(-1436f, -415f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().b.x - 386f)), true)), _wgslsmith_f_op_f32(floor(func_2().b.x)));
    let var_2 = vec4<u32>(1u, ~(~func_2().c.x), u_input.c.x, u_input.d);
    return select(var_0.xy, vec2<bool>(var_0.x, all(!var_0.zx)), !select(select(var_0.xz, vec2<bool>(false, false), false), select(vec2<bool>(var_0.x, true), func_3(Struct_1(var_1.x, vec2<f32>(var_1.x, var_1.x), vec3<u32>(6295u, var_2.x, 69647u))).zz, any(vec3<bool>(var_0.x, false, false))), var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(func_1(), vec2<bool>(true, all(vec3<bool>(false, true, false)) | all(vec3<bool>(true, false, false))), any(vec3<bool>(true, true, true))), !vec2<bool>(any(func_1()), true), vec2<bool>(false, false));
    let var_1 = func_2();
    let var_2 = select(select(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(any(vec3<bool>(var_0.x, false, true)), false, !var_0.x, var_0.x), vec4<bool>(var_0.x, 1i >= u_input.b, false, false)), select(vec4<bool>(!var_0.x, false && var_0.x, any(var_0), true), !(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_f32(var_1.b.x - -711f) >= -448f), vec4<bool>(var_0.x, var_0.x, any(vec3<bool>(false, var_0.x, false)), true)), vec4<bool>(true, !(-1047f > _wgslsmith_f_op_f32(-var_1.b.x)), any(!select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, true, var_0.x, false))), var_0.x), var_0.x && var_0.x);
    let var_3 = func_2();
    var var_4 = all(select(select(var_0, var_0, var_2.x), func_3(var_1).yy, func_3(Struct_1(-504f, vec2<f32>(931f, var_1.b.x), u_input.c)).x == func_1().x));
    let var_5 = Struct_1(_wgslsmith_f_op_f32(-var_1.b.x), var_1.b, vec3<u32>(48733u, ~_wgslsmith_mod_u32(var_1.c.x, select(u_input.d, var_1.c.x, var_0.x)), _wgslsmith_dot_vec2_u32(~(vec2<u32>(12970u, var_3.c.x) >> (u_input.c.xz % vec2<u32>(32u))), u_input.c.zz)));
    let var_6 = !any(var_0);
    var var_7 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(~vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, 0u))), _wgslsmith_f_op_f32(ceil(var_3.a)), var_1.c.x >> (_wgslsmith_mult_u32(var_5.c.x, 4294967295u) % 32u), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-1468f, 1152f, _wgslsmith_f_op_f32(-var_3.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(596f, var_5.a, var_3.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-671f, -175f, -2376f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.b.x, var_1.a, 918f)))))))));
}

