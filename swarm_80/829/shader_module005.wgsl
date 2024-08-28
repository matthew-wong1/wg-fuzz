struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(-981f, 31291u, -1i);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec3<u32>, arg_3: bool) -> vec3<bool> {
    let var_0 = Struct_4(select(65414u, abs(arg_2.x), arg_3), Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(global1.a + 937f))), min(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.b, 1u), vec3<u32>(global1.b, 78054u, arg_2.x)), _wgslsmith_mod_u32(1u, global1.b)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 14477i, 1i, global0.a.c), vec4<i32>(u_input.b, 32367i, u_input.b, global1.c))), global0.a));
    var var_1 = ~min(u_input.c, arg_2.xx | u_input.c);
    var var_2 = ~(~max(-vec4<i32>(-108517i, var_0.b.b.c, arg_0, 2147483647i) >> (~u_input.d % vec4<u32>(32u)), vec4<i32>(min(-39126i, u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.c, var_0.b.a.c), vec2<i32>(-6412i, 2147483647i)), -var_0.b.a.c, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.c, global0.b.c), vec2<i32>(-28769i, 12690i)))));
    var var_3 = vec4<bool>(((~var_1.x > 0u) | !any(vec4<bool>(false, false, true, arg_3))) || !arg_3, true, arg_3, !(false & any(select(vec4<bool>(arg_3, arg_3, arg_3, arg_3), vec4<bool>(arg_3, true, arg_3, arg_3), vec4<bool>(arg_3, arg_3, true, arg_3)))));
    var var_4 = max(vec2<u32>(~abs(select(34268u, 1u, false)), 1u), ~vec2<u32>(~select(u_input.c.x, global1.b, var_3.x), global1.b));
    return !(!var_3.xwy);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec3<bool>) -> f32 {
    global1 = global0.b;
    var var_0 = global0.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1779f) * _wgslsmith_f_op_f32(floor(arg_0))), _wgslsmith_f_op_f32(trunc(var_0.a))))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_dot_vec2_u32(~countOneBits(u_input.c), (_wgslsmith_sub_vec2_u32(vec2<u32>(22162u, global0.a.b), u_input.d.yx) >> ((vec2<u32>(1u, u_input.c.x) << (vec2<u32>(var_0.b, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u))) >> (firstTrailingBit(~vec2<u32>(7418u, 11293u)) % vec2<u32>(32u))), -25410i);
    var var_2 = _wgslsmith_f_op_f32(sign(var_0.a));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1495f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b.a)) - _wgslsmith_f_op_f32(select(global0.a.a, var_0.a, arg_1.a)))))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(global0.a, Struct_1(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(abs(global1.a)), Struct_3(true), func_3(~(-2147483647i), global0.a.a, u_input.d.zxz, -934f < global0.a.a))), global1.b, global0.b.c));
    let var_1 = !vec4<bool>(-82324i >= (-2147483647i << (countOneBits(global1.b) % 32u)), all(vec3<bool>(select(false, false, true), func_3(37055i, global1.a, vec3<u32>(u_input.a, global0.b.b, 4294967295u), true).x, global0.a.a == 892f)), any(!select(vec2<bool>(false, false), vec2<bool>(true, false), true)), true);
    var var_2 = _wgslsmith_sub_i32(reverseBits(_wgslsmith_mult_i32(firstLeadingBit(0i), firstLeadingBit(var_0.b.c))), var_0.b.c);
    let var_3 = global0.b.b;
    global1 = var_0.b;
    return Struct_2(global0.a, global0.a);
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    let var_1 = Struct_3(false);
    let var_2 = u_input.c.x;
    var var_3 = var_0.b;
    var var_4 = _wgslsmith_f_op_f32(global1.a + _wgslsmith_div_f32(1925f, _wgslsmith_f_op_f32(trunc(-684f))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = select(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global0.b.c, firstTrailingBit(global1.c), 28697i), -(~vec3<i32>(u_input.b, -2147483647i, u_input.b))), abs(countOneBits(vec3<i32>(u_input.b, global1.c, -1i))) | abs(vec3<i32>(global1.c, -2147483647i, -21947i))), vec3<i32>(reverseBits(49615i), -1i, ~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -34950i), vec2<i32>(u_input.b, u_input.b)))), true);
    global0 = func_1();
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.a + global1.a)), _wgslsmith_clamp_u32(~firstTrailingBit(global1.b), ~1u, ~(~abs(global0.b.b))), -u_input.b);
    let var_1 = Struct_4(~(~(~1u)), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b.a))), ~global1.b, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.c, -1i, u_input.b, u_input.b), vec4<i32>(20006i, global1.c, global1.c, var_0.x)))), Struct_1(396f, u_input.a, 1i)));
    var var_2 = -2147483647i;
    let var_3 = !vec2<bool>(true, any(select(vec2<bool>(true, true), func_3(-1i, global0.b.a, vec3<u32>(4294967295u, global1.b, 23066u), true).xz, func_3(-37303i, global1.a, vec3<u32>(1u, 14680u, var_1.a), false).zy)));
    var var_4 = true;
    global0 = Struct_2(global0.a, func_2().b);
    let x = u_input.a;
    s_output = StorageBuffer(11787u, firstLeadingBit(abs(_wgslsmith_sub_vec2_i32(-vec2<i32>(0i, 0i), firstTrailingBit(var_0.xy)))), ~var_0, _wgslsmith_f_op_f32(-var_1.b.b.a), vec3<f32>(var_1.b.a.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -579f) * global0.a.a))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-global1.a), Struct_3(all(vec3<bool>(true, var_3.x, true))), vec3<bool>(any(vec2<bool>(var_3.x, var_3.x)), true, !var_3.x)))));
}

