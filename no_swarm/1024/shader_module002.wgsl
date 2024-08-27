struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: f32) -> f32 {
    global1 = !(!vec3<bool>(any(vec2<bool>(true, global1.x)), true, global1.x && any(vec4<bool>(global1.x, arg_0, true, false))));
    var var_0 = 1000f;
    global1 = !select(!(!select(vec3<bool>(true, false, global1.x), vec3<bool>(false, false, arg_0), vec3<bool>(global1.x, global1.x, arg_0))), select(vec3<bool>(false, arg_0, false), !(!vec3<bool>(global1.x, false, arg_0)), select(select(vec3<bool>(false, true, true), vec3<bool>(global1.x, false, true), global1.x), select(vec3<bool>(global1.x, global1.x, arg_0), vec3<bool>(global1.x, false, arg_0), false), vec3<bool>(false, true, arg_0))), true);
    var var_1 = Struct_3(Struct_1(~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1.b.yx, u_input.d.yx), vec2<u32>(0u, 4294967295u)), arg_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-311f * arg_3), arg_1.c), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1379f, arg_1.d.x)))))));
    var var_2 = Struct_2(~reverseBits(~arg_2.x), u_input.b.x, arg_1);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x - _wgslsmith_f_op_f32(floor(var_2.c.c)))));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: u32, arg_3: Struct_3) -> f32 {
    var var_0 = ~u_input.b.x;
    var var_1 = u_input.b.x;
    let var_2 = Struct_2(4294967295u, u_input.b.x, Struct_1(vec2<u32>(abs(min(u_input.c, 12497u)), 29488u), ~arg_3.a.b, 103f, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(abs(-1248f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, Struct_1(u_input.d.xx, vec3<u32>(arg_3.a.b.x, 4294967295u, arg_3.a.b.x), arg_1, vec2<f32>(global0.x, 1526f)), vec2<u32>(u_input.d.x, arg_2), arg_3.a.d.x))))));
    var var_3 = Struct_2(min(32898u, ~countOneBits(arg_2 | 0u)), select(~(-2147483647i), var_2.b, false), Struct_1((~vec2<u32>(arg_2, 0u) & arg_3.a.a) << ((~vec2<u32>(arg_3.a.a.x, 45894u) | countOneBits(var_2.c.b.xy)) % vec2<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 0u, 18774u), var_2.c.b) | _wgslsmith_sub_vec3_u32(vec3<u32>(13790u, u_input.a, 36208u), vec3<u32>(var_2.c.a.x, 0u, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), arg_3.a.d));
    var var_4 = var_2.c;
    return 893f;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = global0.wwy;
    let var_1 = arg_0;
    global1 = select(vec3<bool>(!(!all(vec2<bool>(false, true))), global1.x, !(true || (global1.x == global1.x))), vec3<bool>(any(vec3<bool>(global1.x, false, all(vec4<bool>(global1.x, false, global1.x, global1.x)))), var_1.b != u_input.b.x, true), vec3<bool>(any(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, global1.x), vec4<bool>(global1.x, global1.x, false, true))), false, true));
    global1 = vec3<bool>(global1.x == (!global1.x | !(!global1.x)), true, global1.x & true);
    var var_2 = Struct_3(Struct_1(vec2<u32>(u_input.c, u_input.c) | ~(~var_1.c.b.xx), vec3<u32>(u_input.a, 11620u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 8883u), vec2<u32>(arg_0.c.a.x, 4294967295u) << (vec2<u32>(1u, arg_0.c.b.x) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(667f + _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1170f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c.d - var_0.xx)))));
    return Struct_1(vec2<u32>(4294967295u, arg_0.a), min(firstTrailingBit(var_2.a.b), ~(~select(u_input.d, vec3<u32>(arg_0.c.b.x, var_2.a.a.x, arg_0.c.b.x), global1.x))), 1000f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(520f, _wgslsmith_f_op_f32(func_2(vec3<i32>(-1i, var_1.b, -2147483647i), -1533f, arg_0.c.a.x, Struct_3(Struct_1(vec2<u32>(1u, var_1.c.b.x), var_1.c.b, 705f, vec2<f32>(var_2.a.c, var_2.a.d.x))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_2.a.d), var_0.xz)))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 1445f))) + -585f);
    let var_1 = func_4(Struct_2(~_wgslsmith_dot_vec2_u32(u_input.d.yy, _wgslsmith_mult_vec2_u32(u_input.d.xx, vec2<u32>(0u, u_input.d.x))), 1i, Struct_1(vec2<u32>(u_input.a, min(23997u, 4294967295u)), ~abs(u_input.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1004f) + _wgslsmith_f_op_f32(round(global0.x))), vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(func_2(u_input.b.wzz, global0.x, 2798u, Struct_3(Struct_1(u_input.d.yx, u_input.d, global0.x, global0.wx))))))));
    let var_2 = _wgslsmith_clamp_i32(~(-24533i), ~firstLeadingBit(u_input.b.x), -1i);
    var var_3 = select(!select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), select(vec3<bool>(false, global1.x, true), vec3<bool>(true, global1.x, false), false), true), vec3<bool>(true, true, all(global1.yz)), global1.x), select(select(!select(vec3<bool>(true, global1.x, false), vec3<bool>(false, global1.x, global1.x), true), select(!vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, global1.x, false), !vec3<bool>(true, global1.x, global1.x)), global1.x), vec3<bool>(all(!vec3<bool>(global1.x, global1.x, true)), global1.x, any(select(vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(false, global1.x, false, global1.x)))), any(!select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, false, false), vec3<bool>(global1.x, global1.x, global1.x)))), select(!(!select(vec3<bool>(false, global1.x, true), vec3<bool>(false, global1.x, false), true)), vec3<bool>(false, true, !any(vec3<bool>(true, true, global1.x))), vec3<bool>(true, true, any(select(vec4<bool>(true, false, global1.x, true), vec4<bool>(false, true, false, global1.x), vec4<bool>(global1.x, global1.x, true, false))))));
    var_3 = !vec3<bool>(any(vec3<bool>(!global1.x, true, true)), !global1.x, true);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.yz;
    var var_1 = func_1();
    let var_2 = Struct_2(u_input.d.x, 3782i, func_4(Struct_2(var_0.x, min(-u_input.b.x, u_input.b.x), Struct_1(var_0, ~vec3<u32>(u_input.c, u_input.d.x, 26062u), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_vec2_f32(var_1.d, vec2<f32>(-154f, -104f))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -504f), _wgslsmith_f_op_f32(-var_2.c.c), !global1.x)), _wgslsmith_div_f32(-1220f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.d.x - global0.x) * -1869f)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.d.x, global0.x, var_1.c, -1034f), vec4<f32>(var_2.c.c, -554f, 662f, -390f), true))))))));
    var_1 = func_4(Struct_2(firstTrailingBit(~u_input.a), u_input.b.x, var_2.c));
    let var_3 = ~(~13440u);
    let x = u_input.a;
    s_output = StorageBuffer(var_3, 1u, _wgslsmith_f_op_f32(func_2(vec3<i32>(abs(1i), -1i, 2147483647i), _wgslsmith_f_op_f32(-global0.x), ~countOneBits(0u), Struct_3(func_1()))));
}

