struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, true);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = u_input.e;
    global0 = select(!(!vec4<bool>(global0.x, false & global0.x, global0.x, any(vec4<bool>(global0.x, true, true, false)))), vec4<bool>(true, global0.x, !global0.x, !(!(!global0.x))), !global0.x);
    let var_1 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, ~20427i), max(max(vec2<i32>(u_input.e, -2147483647i), vec2<i32>(var_0, 40225i)) & vec2<i32>(var_0, u_input.a), ~_wgslsmith_mod_vec2_i32(vec2<i32>(20902i, 2147483647i), vec2<i32>(var_0, u_input.e)))), reverseBits(~_wgslsmith_div_u32(1u, countOneBits(19297u))), select(vec4<bool>(global0.x & global0.x, global0.x != any(vec4<bool>(false, false, global0.x, false)), all(vec4<bool>(global0.x, global0.x, false, global0.x)), global0.x & false), vec4<bool>(!any(vec3<bool>(global0.x, false, global0.x)), global0.x, !(global0.x | true), global0.x), global0.x), ~0u);
    let var_2 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.c, _wgslsmith_dot_vec2_u32(min(u_input.b, u_input.b), u_input.b)), ~u_input.b, u_input.b);
    var var_3 = Struct_3(var_1, Struct_2(arg_0.a), firstTrailingBit(~abs(4294967295u)), arg_0, Struct_2(_wgslsmith_f_op_vec2_f32(abs(arg_0.a))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1609f, 1016f, arg_0.a.x, var_3.e.a.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.a.x, arg_0.a.x, -1531f, var_3.b.a.x)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_3.e.a.x - _wgslsmith_f_op_f32(min(-681f, -523f))), var_3.d.a.x, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1260f) - _wgslsmith_f_op_f32(-arg_0.a.x)))));
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_4(arg_0, -753f, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1012f, 128f, 1253f))), vec3<f32>(546f, 440f, -696f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1539f), 618f, -814f))), arg_0.c.yy);
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, 862f, 1006f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-307f, var_0.c.x, -976f, 795f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(var_0.c.yz)))))), !vec4<bool>(!arg_0.c.x, all(arg_0.c), select(arg_0.c.x, false, false), true)))));
    var var_2 = true;
    var var_3 = arg_0.c.x;
    var_2 = false;
    return ~(_wgslsmith_dot_vec2_i32(min(arg_0.a, min(arg_0.a, vec2<i32>(var_0.a.a.x, arg_0.a.x))), vec2<i32>(-2147483647i, var_0.a.a.x) << (reverseBits(u_input.b) % vec2<u32>(32u))) | arg_0.a.x);
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec3<i32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(max(-422f, -149f));
    global0 = vec4<bool>(global0.x, global0.x, all(vec2<bool>(true, true)), arg_1.x);
    let var_1 = Struct_1(~vec2<i32>(func_2(Struct_1(vec2<i32>(2147483647i, u_input.a), 102498u, vec4<bool>(global0.x, arg_1.x, true, global0.x), 4294967295u)) << (~11758u % 32u), -1i), (1u >> ((select(u_input.b.x, u_input.b.x, arg_1.x) | ~78776u) % 32u)) >> (u_input.c % 32u), vec4<bool>(true, abs(_wgslsmith_add_u32(u_input.b.x, u_input.b.x)) < (_wgslsmith_mult_u32(u_input.c, u_input.d) << (~u_input.c % 32u)), true, false), _wgslsmith_mult_u32(abs(99479u), 18420u));
    var var_2 = Struct_2(arg_2.a);
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_2.a * vec2<f32>(1231f, var_2.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_div_f32(221f, 483f)), !select(vec2<bool>(global0.x, true), vec2<bool>(true, true), false))) * vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(538f + arg_2.a.x))));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1584f, _wgslsmith_f_op_f32(-arg_2.a.x))) - var_2.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec2<f32>(var_3.a.x, var_2.a.x)))).x)), 1513f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x)), var_3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = ~_wgslsmith_div_u32(~_wgslsmith_mod_u32(~u_input.b.x, 47484u), 73749u);
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_1(1i, !select(!vec3<bool>(global0.x, global0.x, false), global0.yxz, vec3<bool>(true, false, true)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(456f, 1255f) - vec2<f32>(421f, 1000f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 1087f), vec2<f32>(-309f, -1440f))))), firstTrailingBit(~vec3<i32>(u_input.a, -28728i, -2147483647i))))));
    var_0 = u_input.b;
    var_0 = _wgslsmith_mult_vec2_u32(~vec2<u32>(184u, ~u_input.d) << ((vec2<u32>(abs(var_1), ~u_input.d) ^ vec2<u32>(~u_input.c, 1u)) % vec2<u32>(32u)), ~(~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(u_input.c, 0u)), min(vec2<u32>(var_1, var_0.x), u_input.b))));
    var var_3 = ~_wgslsmith_add_u32(var_0.x, var_0.x);
    let var_4 = !vec4<bool>(any(!vec4<bool>(false, global0.x, false, global0.x)), !all(global0.zx), _wgslsmith_f_op_f32(-var_2.x) == var_2.x, true);
    var_3 = _wgslsmith_div_u32(u_input.b.x, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, 11966u, _wgslsmith_clamp_u32(~72u, 4294967295u, countOneBits(u_input.c)), countOneBits(vec4<i32>(-1i) * -abs(vec4<i32>(-16196i, u_input.e, u_input.a, 45076i))));
}

