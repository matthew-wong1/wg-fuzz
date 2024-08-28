struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: u32;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_3(vec3<f32>(1f, 1f, 1f), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -977f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(244f - -1000f))), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, 1i)), u_input.a.x, abs(u_input.a.x)), u_input.a.x, _wgslsmith_mod_i32(22721i, min(u_input.a.x, u_input.a.x)), u_input.a.x), Struct_1(1u, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-740f, -738f))))), Struct_1(0u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-643f, -703f) * vec2<f32>(-572f, -1000f)) + vec2<f32>(174f, 1183f)))), vec2<bool>(global2.x & (u_input.d.x <= 4294967295u), (firstTrailingBit(-5394i) > _wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(u_input.a.x, u_input.a.x))) == select(u_input.b == u_input.c, global2.x, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(372f, -602f, -1472f))))))));
    global0 = (firstLeadingBit(_wgslsmith_dot_vec4_i32(select(var_0.b.b, var_0.b.b, vec4<bool>(true, global2.x, var_0.c.x, true)), var_0.b.b)) >= _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_0.b.b.x, var_0.b.b.x), u_input.a), max(vec3<i32>(u_input.a.x, var_0.b.b.x, 38885i), vec3<i32>(u_input.a.x, var_0.b.b.x, -24358i))), countOneBits(0i))) & global2.x;
    let var_1 = Struct_1(u_input.c, _wgslsmith_f_op_vec2_f32(max(var_0.a.yx, _wgslsmith_f_op_vec2_f32(var_0.b.d.b + vec2<f32>(-538f, _wgslsmith_f_op_f32(f32(-1f) * -763f))))));
    global0 = select(var_0.c.x, true, any(vec4<bool>(var_0.c.x, false, var_0.c.x, true)));
    return var_0.c;
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    global2 = select(select(select(vec2<bool>(global2.x, !global2.x), vec2<bool>(global2.x != global2.x, all(vec3<bool>(false, global2.x, global2.x))), vec2<bool>(true, !global2.x)), !func_3(), false), func_3(), global2.x & all(vec4<bool>(arg_0.a >= u_input.b, false, !global2.x, false)));
    let var_0 = ~(_wgslsmith_div_vec2_i32(-min(vec2<i32>(-10674i, -2147483647i), u_input.a.yx), select(abs(u_input.a.yx), u_input.a.yx, select(vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, global2.x), global2.x))) ^ (vec2<i32>(-1i) * -select(u_input.a.yx, u_input.a.xy, false)));
    return ~(-(~select(vec4<i32>(-16345i, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<i32>(var_0.x, var_0.x, 1i, 1i), countOneBits(vec4<i32>(u_input.a.x, 30469i, 18639i, 1i)), true & global2.x)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1350f, -153f) - _wgslsmith_f_op_f32(arg_1.b.x + arg_1.b.x)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(max(arg_1.b.x, -2118f))), _wgslsmith_f_op_f32(-arg_1.b.x)))), -331f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1422f * arg_1.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.b.x * 176f), _wgslsmith_f_op_f32(select(155f, 1038f, true)))))));
    var var_1 = ~_wgslsmith_sub_vec2_i32(-((u_input.a.xx << (u_input.d.xx % vec2<u32>(32u))) >> (u_input.d.yz % vec2<u32>(32u))), reverseBits(~vec2<i32>(2147483647i, u_input.a.x)));
    var var_2 = ~vec4<u32>(~1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a, 1u), ~vec2<u32>(u_input.c, 0u)), _wgslsmith_add_u32(0u, 29179u), abs(1u));
    var_1 = u_input.a.xy;
    let var_3 = ~(_wgslsmith_clamp_vec4_i32(-(~vec4<i32>(-26480i, var_1.x, 15255i, u_input.a.x)), ~func_2(arg_1), vec4<i32>(-var_1.x, u_input.a.x, 4524i, -u_input.a.x)) & vec4<i32>(30638i, 1i, min(0i, 0i), -21172i));
    return Struct_2(_wgslsmith_f_op_f32(sign(-1000f)), var_3, arg_1, arg_1);
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> Struct_1 {
    global0 = true;
    global2 = !select(vec2<bool>(any(select(vec4<bool>(global2.x, false, global2.x, global2.x), vec4<bool>(arg_1.c.x, true, arg_1.c.x, true), global2.x)), !global2.x | false), func_3(), arg_1.c);
    var var_0 = select(!vec3<bool>(global2.x, global2.x, true), !vec3<bool>(true, any(arg_1.c), false), select(select(select(vec3<bool>(arg_1.c.x, arg_1.c.x, true), !vec3<bool>(true, false, global2.x), true), vec3<bool>(true, true, arg_1.a.x < arg_0), true), vec3<bool>(global2.x, !any(vec2<bool>(arg_1.c.x, true)), !all(vec2<bool>(true, global2.x))), !select(select(vec3<bool>(arg_1.c.x, global2.x, global2.x), vec3<bool>(false, arg_1.c.x, global2.x), true), select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(global2.x, global2.x, true), global2.x), select(vec3<bool>(true, global2.x, arg_1.c.x), vec3<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x), global2.x))));
    global1 = u_input.b;
    global1 = _wgslsmith_dot_vec3_u32(~vec3<u32>(abs(arg_1.b.d.a << (arg_1.b.d.a % 32u)), 56575u ^ ~u_input.b, 61484u), ~u_input.d);
    return arg_1.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 199f;
    var var_1 = vec3<i32>(~1i, u_input.a.x, firstLeadingBit(0i));
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(51365u, u_input.c, abs(_wgslsmith_div_u32(4294967295u, u_input.b) ^ (u_input.b ^ u_input.b)), select(u_input.b, u_input.c, false)), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, 4294967295u) << (u_input.d.x % 32u), u_input.c), ~(0u >> (~u_input.c % 32u)), u_input.c, u_input.c & ~8971u));
    var_1 = u_input.a;
    var var_3 = func_4(-1000f, Struct_3(vec3<f32>(var_0, var_0, var_0), func_1(vec2<bool>(all(vec2<bool>(global2.x, global2.x)), all(vec3<bool>(false, false, global2.x))), Struct_1(1u, vec2<f32>(132f, -771f)), !select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(false, true, global2.x, true), vec4<bool>(true, true, global2.x, global2.x))), select(!(!vec2<bool>(global2.x, true)), func_3(), global2.x | true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(790f, -2557f, var_0)))))));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(func_4(_wgslsmith_div_f32(var_3.b.x, var_0), Struct_3(vec3<f32>(1885f, var_3.b.x, var_3.b.x), Struct_2(var_0, vec4<i32>(-52261i, -29014i, 1i, -1i), Struct_1(u_input.c, vec2<f32>(var_0, -175f)), Struct_1(1u, vec2<f32>(-215f, var_3.b.x))), vec2<bool>(false, false), vec3<f32>(var_3.b.x, 161f, 923f))).b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_3.b.x) * _wgslsmith_f_op_f32(abs(-586f)))) - _wgslsmith_f_op_f32(sign(var_0))), _wgslsmith_f_op_f32(-func_4(var_3.b.x, Struct_3(vec3<f32>(var_3.b.x, var_3.b.x, -454f), func_1(vec2<bool>(global2.x, global2.x), Struct_1(u_input.b, var_3.b), vec4<bool>(true, true, global2.x, true)), func_3(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.x, var_3.b.x, var_0)))).b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-231f, 1095f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.b.x, var_0, global2.x)) + -1035f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.b.x, -447f))) * 393f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-340f, var_0));
}

