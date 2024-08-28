struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_2 = Struct_2(vec4<bool>(false, false, false, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    global0 = firstLeadingBit(max(firstLeadingBit(vec3<u32>(0u, global0.x, 25593u)), vec3<u32>(global0.x, 108356u, global0.x) & vec3<u32>(global0.x, global0.x, 33909u)) & countOneBits(select(vec3<u32>(4175u, 1u, global0.x), vec3<u32>(4294967295u, 7071u, global0.x), false))) >> (firstTrailingBit(~vec3<u32>(57897u, 42834u, 4294967295u) | _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(global0.x, 67107u, 4294967295u)), vec3<u32>(4294967295u, global0.x, 45918u))) % vec3<u32>(32u));
    var var_0 = -_wgslsmith_clamp_i32(-39478i, ~(-46519i ^ u_input.a), u_input.a) << (global0.x % 32u);
    var var_1 = _wgslsmith_mod_i32(0i, u_input.a);
    let var_2 = ~(abs(vec4<u32>(4294967295u, global0.x, global0.x, global0.x) & _wgslsmith_clamp_vec4_u32(vec4<u32>(5531u, global0.x, 73696u, global0.x), vec4<u32>(global0.x, global0.x, global0.x, 0u), vec4<u32>(1u, global0.x, global0.x, global0.x))) & ~max(countOneBits(vec4<u32>(0u, global0.x, global0.x, global0.x)), vec4<u32>(global0.x, 0u, 4294967295u, 43698u) | vec4<u32>(global0.x, global0.x, 4294967295u, global0.x)));
    let var_3 = Struct_1(firstLeadingBit(var_2.x));
    return 11287u;
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_3(global1.a, Struct_1(~(~global0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-749f, -1317f), vec2<f32>(1000f, -212f), global1.a.xy))))), Struct_1(func_3()), -1i);
    var_0 = Struct_3(!(!var_0.a), var_0.d, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, var_0.c.x) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.c.x, -240f), var_0.c))) - var_0.c))), var_0.b, 2147483647i);
    let var_1 = Struct_2(global1.a);
    let var_2 = select(!(!(!var_0.a.xz)), vec2<bool>(var_1.a.x, var_1.a.x), !global1.a.zw);
    let var_3 = Struct_3(!vec4<bool>(all(vec3<bool>(global1.a.x, var_0.a.x, false)), all(vec3<bool>(false, true, true)), any(!var_1.a.zw), !(var_1.a.x && false)), Struct_1(1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c))), var_0.d, (_wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.e, var_0.e), abs(-17285i)) ^ reverseBits(~var_0.e)) ^ ~3296i);
    return select(~abs(vec3<u32>(var_3.b.a, global0.x, 46073u)) | vec3<u32>(_wgslsmith_div_u32(global0.x, 1u), ~global0.x, 0u), abs(~min(vec3<u32>(global0.x, 45815u, var_3.d.a), vec3<u32>(98401u, 4294967295u, var_3.d.a))), false) >> (vec3<u32>(1u, 4294967295u, ~(~(~1u))) % vec3<u32>(32u));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    global0 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(select(vec3<u32>(global0.x, 1u, global0.x), vec3<u32>(arg_0.a, 29818u, 0u), global1.a.x) | countOneBits(vec3<u32>(arg_0.a, 1u, global0.x)), vec3<u32>(8767u, ~arg_1.x, _wgslsmith_div_u32(arg_1.x, 67860u))), func_2(), ~vec3<u32>(_wgslsmith_add_u32(4294967295u, arg_0.a), 40446u, _wgslsmith_div_u32(global0.x, 4294967295u)));
    global0 = func_2();
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), true));
    let var_1 = select(global1.a.yy, !(!select(vec2<bool>(true, false), global1.a.yz, global1.a.yx)), select(!(!(!global1.a.xy)), global1.a.wy, global1.a.xz));
    global1 = Struct_2(global1.a);
    return Struct_1(func_2().x);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_3, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -583f), select(!global1.a.x | !global1.a.x, true, true))));
    var var_1 = select(select(!arg_2.a.zy, arg_2.a.zw, !arg_2.a.yx), global1.a.wx, !any(select(select(vec4<bool>(false, global1.a.x, true, false), vec4<bool>(arg_2.a.x, global1.a.x, global1.a.x, true), arg_2.a), !vec4<bool>(false, global1.a.x, global1.a.x, false), all(vec3<bool>(global1.a.x, global1.a.x, global1.a.x)))));
    global0 = firstTrailingBit(~(~(~(~vec3<u32>(arg_3, 4294967295u, global0.x)))));
    let var_2 = ~vec3<i32>(firstLeadingBit(arg_2.e ^ -arg_2.e), -2147483647i, 1i);
    global1 = Struct_2(select(select(global1.a, select(!global1.a, !global1.a, vec4<bool>(true, true, true, true)), global1.a), !global1.a, select(!select(vec4<bool>(arg_2.a.x, global1.a.x, false, arg_2.a.x), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, var_1.x)), select(arg_2.a, vec4<bool>(true, false, global1.a.x, true), select(true, global1.a.x, var_1.x)), arg_2.a)));
    return arg_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global1.a, Struct_1(4294967295u), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1045f) + vec2<f32>(149f, -1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1800f, -733f))))))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -193f)), 1395f, Struct_3(select(select(vec4<bool>(global1.a.x, false, true, false), vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), global1.a), !global1.a, global1.a.x), func_1(Struct_1(5850u), vec2<u32>(1u, 45428u)), vec2<f32>(-331f, 1086f), func_1(func_1(Struct_1(0u), global0.zx), ~vec2<u32>(1146u, 42507u)), 2147483647i), ~(~(~4294967295u))), i32(-1i) * -2147483647i);
    var var_1 = var_0;
    var var_2 = ~var_0.d.a;
    global1 = Struct_2(select(!vec4<bool>(true, select(true, var_0.a.x, false), select(var_1.a.x, true, global1.a.x), any(vec2<bool>(true, var_0.a.x))), vec4<bool>(any(!global1.a), !any(var_0.a), true, all(select(vec4<bool>(true, var_1.a.x, true, true), vec4<bool>(true, true, var_1.a.x, false), vec4<bool>(var_0.a.x, false, global1.a.x, var_1.a.x)))), vec4<bool>(all(select(vec2<bool>(false, var_1.a.x), var_0.a.xz, var_1.a.x)), true, true, true)));
    let var_3 = var_1.d;
    var var_4 = !(!select(vec3<bool>(all(vec3<bool>(true, false, true)), !var_0.a.x, var_3.a == 0u), var_0.a.yxw, global1.a.wzy));
    var_4 = !select(var_1.a.yzx, select(select(!vec3<bool>(var_4.x, false, false), var_0.a.yxx, vec3<bool>(true, false, global1.a.x)), select(select(global1.a.xzw, vec3<bool>(var_1.a.x, var_0.a.x, false), var_0.a.yzy), select(global1.a.yxw, vec3<bool>(var_4.x, true, false), var_0.a.x), select(vec3<bool>(global1.a.x, false, var_1.a.x), var_0.a.zyx, var_4.x)), global1.a.x), vec3<bool>(func_2().x > 65382u, _wgslsmith_f_op_f32(-var_0.c.x) >= _wgslsmith_f_op_f32(-3457f - var_0.c.x), false));
    var_2 = ~(~var_3.a);
    var var_5 = _wgslsmith_dot_vec3_i32(countOneBits(~vec3<i32>(var_1.e, -2147483647i, -11301i) >> (vec3<u32>(~var_0.d.a, ~54930u, 0u) % vec3<u32>(32u))), vec3<i32>(9417i, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -7057i) ^ vec3<i32>(var_1.e, 2147483647i, var_0.e), countOneBits(vec3<i32>(0i, var_1.e, -2147483647i)))), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(183f, -474f))), -1000f)) - 1288f), ~0u);
}

