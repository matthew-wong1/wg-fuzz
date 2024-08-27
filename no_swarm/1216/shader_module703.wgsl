struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = select(select(vec4<bool>(!(!arg_2.b.x), true, select(arg_2.b.x & true, arg_0.b.x, -2183f >= arg_1), true), select(select(vec4<bool>(false, false, false, arg_2.b.x), vec4<bool>(false, arg_2.b.x, arg_2.b.x, arg_0.b.x), !vec4<bool>(true, arg_2.b.x, false, true)), select(select(vec4<bool>(false, arg_2.b.x, arg_0.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, true, false, false), vec4<bool>(true, true, true, arg_2.b.x)), !vec4<bool>(arg_2.b.x, true, true, arg_0.b.x), arg_0.b.x), any(select(vec4<bool>(false, arg_2.b.x, arg_0.b.x, true), vec4<bool>(arg_2.b.x, arg_2.b.x, false, true), vec4<bool>(arg_2.b.x, arg_2.b.x, true, false)))), !vec4<bool>(arg_0.b.x, any(arg_2.b.xx), !arg_0.b.x, false)), select(select(vec4<bool>(all(vec3<bool>(arg_0.b.x, true, arg_0.b.x)), arg_1 == arg_1, arg_2.b.x, !arg_0.b.x), select(vec4<bool>(true, arg_0.b.x, true, arg_2.b.x), !vec4<bool>(arg_2.b.x, arg_2.b.x, arg_0.b.x, arg_0.b.x), select(vec4<bool>(arg_2.b.x, false, true, false), vec4<bool>(arg_2.b.x, false, true, arg_0.b.x), false)), vec4<bool>(true, any(vec4<bool>(false, false, false, arg_0.b.x)), !arg_2.b.x, false)), select(vec4<bool>(false, 0i >= u_input.b.x, all(vec2<bool>(arg_0.b.x, arg_2.b.x)), arg_0.b.x), select(vec4<bool>(true, arg_2.b.x, arg_2.b.x, true), !vec4<bool>(false, true, true, arg_2.b.x), vec4<bool>(true, arg_0.b.x, arg_0.b.x, arg_0.b.x)), true), 30388i != firstTrailingBit(93801i >> (arg_0.a % 32u))), select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_2.b.x, true), vec4<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x, false), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_2.b.x, false)), select(vec4<bool>(arg_0.b.x, true, arg_0.b.x, arg_0.b.x), vec4<bool>(arg_2.b.x, false, false, true), false)), vec4<bool>(true, arg_1 <= arg_1, arg_0.b.x, any(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true))), vec4<bool>(arg_0.b.x, any(vec3<bool>(false, true, arg_0.b.x)), true, arg_2.b.x | true)), !select(vec4<bool>(true, arg_2.b.x, false, arg_2.b.x), !vec4<bool>(arg_2.b.x, false, arg_0.b.x, false), vec4<bool>(true, true, arg_0.b.x, arg_2.b.x)), !vec4<bool>(arg_0.b.x, true, true, false)));
    var_0 = !vec4<bool>(((u_input.b.x > 34231i) & (arg_1 >= 137f)) & arg_0.b.x, true, any(select(vec2<bool>(var_0.x, arg_0.b.x), vec2<bool>(arg_0.b.x, arg_0.b.x), arg_1 == arg_1)), !select(arg_0.b.x, var_0.x, any(vec4<bool>(var_0.x, false, false, arg_0.b.x))));
    var_0 = select(select(vec4<bool>(true, false, false, any(arg_2.b.yx)), select(select(!vec4<bool>(arg_0.b.x, arg_2.b.x, false, arg_2.b.x), vec4<bool>(var_0.x, var_0.x, arg_2.b.x, false), vec4<bool>(arg_2.b.x, true, true, true)), !vec4<bool>(false, false, arg_0.b.x, arg_2.b.x), arg_0.b.x), arg_2.b.x || !arg_2.b.x), vec4<bool>(_wgslsmith_clamp_u32(abs(0u), u_input.c.x, firstLeadingBit(arg_2.a)) >= ~reverseBits(0u), var_0.x, !(true && var_0.x), true), !arg_2.b.x);
    let var_1 = u_input.c.wxz;
    let var_2 = Struct_1(4294967295u, vec3<bool>(arg_0.b.x, select(all(select(vec4<bool>(arg_2.b.x, arg_0.b.x, arg_2.b.x, arg_0.b.x), vec4<bool>(true, true, arg_0.b.x, true), false)), var_0.x, select(false, all(vec4<bool>(false, arg_2.b.x, true, arg_0.b.x)), false && var_0.x)), var_0.x));
    return ~(~(~arg_2.a));
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.c;
    var var_1 = 12394u;
    var_1 = _wgslsmith_add_u32(func_3(Struct_1(max(select(4294967295u, u_input.c.x, false), 1u), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), true)), _wgslsmith_f_op_f32(trunc(-611f)), Struct_1(13248u, vec3<bool>(true, true, true))), _wgslsmith_div_u32(u_input.c.x, 17778u));
    var var_2 = Struct_1(1u << ((4822u ^ firstTrailingBit(~1u)) % 32u), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), true), vec3<bool>(true, all(vec3<bool>(true, false, true)), true), vec3<bool>(u_input.a.x <= u_input.b.x, true, false)), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), true));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-362f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-193f, -1000f)), _wgslsmith_f_op_f32(889f - 998f)))), 436f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1190f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-575f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -777f), -1124f))) * vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1978f - -461f), _wgslsmith_f_op_f32(sign(-1601f)))), 1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(957f))))), -124f, 1f));
    return Struct_1(var_0.x, select(select(select(!vec3<bool>(true, true, var_2.b.x), var_2.b, !var_2.b.x), select(select(vec3<bool>(false, var_2.b.x, var_2.b.x), vec3<bool>(true, var_2.b.x, var_2.b.x), var_2.b.x), select(vec3<bool>(false, var_2.b.x, var_2.b.x), var_2.b, var_2.b.x), var_2.b), true), select(select(vec3<bool>(var_2.b.x, true, true), var_2.b, true), !select(var_2.b, var_2.b, vec3<bool>(false, true, var_2.b.x)), any(var_2.b.yz)), var_2.b));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(15531u, select(select(select(arg_0.b, !vec3<bool>(arg_0.b.x, true, false), vec3<bool>(false, false, false)), arg_0.b, !vec3<bool>(false, true, arg_0.b.x)), arg_0.b, arg_0.b.x));
    let var_1 = vec2<f32>(241f, -1525f);
    var var_2 = _wgslsmith_sub_u32(~0u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.a, 20827u, 28526u), vec3<u32>(15466u, var_0.a, arg_0.a)), u_input.c.xwy)) < _wgslsmith_add_u32(~1u, 1u | u_input.c.x);
    var_0 = func_2();
    let var_3 = vec4<bool>(var_0.b.x, !(false == !(!var_0.b.x)), 4294967295u == _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(1u), arg_0.a, var_0.a & arg_0.a, var_0.a), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(35920u, u_input.c.x, var_0.a, arg_0.a), u_input.c), ~u_input.c)), any(select(select(!vec4<bool>(true, true, arg_0.b.x, var_0.b.x), !vec4<bool>(var_0.b.x, true, var_0.b.x, arg_0.b.x), all(vec4<bool>(true, var_0.b.x, true, arg_0.b.x))), select(vec4<bool>(var_0.b.x, true, var_0.b.x, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, arg_0.b.x, false), vec4<bool>(arg_0.b.x, var_0.b.x, false, false)), !vec4<bool>(true, arg_0.b.x, arg_0.b.x, var_0.b.x)), vec4<bool>(select(true, true, var_0.b.x), var_0.b.x, any(var_0.b.zz), true))));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: vec3<i32>) -> u32 {
    let var_0 = func_1(func_1(Struct_1(0u, vec3<bool>(func_2().b.x, 31622u <= arg_0.a, select(true, arg_0.b.x, arg_0.b.x)))));
    var var_1 = var_0.a;
    let var_2 = Struct_1(~(~(~u_input.c.x)), arg_0.b);
    let var_3 = u_input.c.xw;
    let var_4 = Struct_1(12398u, select(select(var_0.b, var_0.b, vec3<bool>(any(arg_0.b), arg_0.b.x, true)), select(var_0.b, var_2.b, vec3<bool>(false, !arg_0.b.x, func_1(var_0).b.x)), !vec3<bool>(1u <= var_2.a, func_2().b.x, !arg_0.b.x)));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false, true & any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true))), false, true);
    var var_1 = Struct_1(~func_4(func_1(Struct_1(u_input.c.x, var_0.xxw)), var_0.xxw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-869f, 820f), vec2<f32>(1258f, 1925f))) - vec2<f32>(-802f, -276f)), abs(vec3<i32>(17081i, u_input.b.x, u_input.a.x))), vec3<bool>(false, false, false));
    var_1 = func_1(func_2());
    var_1 = func_2();
    let var_2 = u_input.c.yw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(143f)), 302f, 387f, -1643f) + vec4<f32>(236f, _wgslsmith_div_f32(1000f, -1096f), _wgslsmith_f_op_f32(step(538f, 1188f)), _wgslsmith_f_op_f32(1411f + -802f))) + vec4<f32>(-889f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-801f - -1000f) * -247f), 900f, 1381f)), ~select(-firstTrailingBit(u_input.b), u_input.b, vec3<bool>(false, true, var_0.x)), _wgslsmith_clamp_vec2_u32(~select(u_input.c.xy, abs(var_2), func_2().b.xy), ~firstTrailingBit(~u_input.c.ww), abs(u_input.c.zy)));
}

