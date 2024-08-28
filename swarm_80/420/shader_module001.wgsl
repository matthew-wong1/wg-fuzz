struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = firstLeadingBit(firstLeadingBit(-u_input.c.zzz));
    let var_1 = !select(!(!select(vec3<bool>(true, true, global0.b), vec3<bool>(false, false, false), global0.a.x)), vec3<bool>((12712i > var_0.x) && all(vec3<bool>(false, global0.b, global0.b)), true || (global0.a.x && false), false), all(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(global0.b, true, false), global0.b), true)));
    let var_2 = Struct_1(global0.a, true, _wgslsmith_sub_vec2_i32(var_0.zz, countOneBits(var_0.yy)) | ~vec2<i32>(7680i, -1i), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global0.d + global0.d), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-703f, 824f, -1474f) + vec3<f32>(-111f, global0.d.x, -2051f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, global0.d.x, global0.d.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-358f, global0.d.x, 916f), global0.d)), _wgslsmith_f_op_vec3_f32(-global0.d)))))), var_0.xz);
    var var_3 = !(!(!(!var_1.x)));
    var var_4 = true && all(vec3<bool>(var_2.a.x, var_1.x, !var_1.x != false));
    return ~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(4294967295u, ~u_input.a.x, abs(0u))));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>) -> vec3<f32> {
    return global0.d;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global0 = Struct_1(vec2<bool>(true, true), false, vec2<i32>(i32(-1i) * -38409i, -1i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_4(~func_3(), -vec4<i32>(-45655i, -8649i, global0.c.x, u_input.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0.x, global0.d.x))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-597f, global0.d.x, 719f) + global0.d)))), all(!select(vec4<bool>(false, global0.a.x, global0.a.x, true), vec4<bool>(true, false, false, false), vec4<bool>(global0.a.x, true, false, true))))), ~vec2<i32>(u_input.c.x, 0i));
    var var_0 = vec4<bool>(all(select(!(!vec3<bool>(true, global0.a.x, true)), vec3<bool>(global0.b, u_input.a.x != u_input.a.x, global0.a.x || global0.b), select(!vec3<bool>(false, global0.b, global0.a.x), vec3<bool>(false, global0.a.x, global0.b), vec3<bool>(false, false, false)))), true, global0.b, global0.a.x);
    global0 = Struct_1(!global0.a, var_0.x, vec2<i32>(u_input.b, ~(-abs(u_input.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(arg_0)))) * global0.d)), ~select(firstLeadingBit(vec2<i32>(global0.c.x, global0.e.x)), -u_input.c.xy, false));
    global0 = Struct_1(select(var_0.zw, select(global0.a, select(select(var_0.zw, vec2<bool>(false, false), true), var_0.yy, vec2<bool>(true, true)), var_0.xy), select(select(select(vec2<bool>(true, true), vec2<bool>(true, var_0.x), var_0.wx), var_0.zx, global0.b), vec2<bool>(!global0.a.x, true), global0.a)), !(abs(1i) <= min(u_input.c.x, 1i)) || global0.a.x, ~_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.b, u_input.b), -vec2<i32>(u_input.c.x, 6951i)) & u_input.c.wz, global0.d, global0.e);
    var_0 = select(!vec4<bool>(true, global0.b, any(!var_0.zyw), global0.b & true), vec4<bool>(true, true, var_0.x, !(!any(vec2<bool>(global0.b, true)))), false);
    return Struct_1(vec2<bool>(true, any(!select(vec4<bool>(var_0.x, var_0.x, global0.b, false), vec4<bool>(global0.b, global0.b, var_0.x, var_0.x), vec4<bool>(false, true, true, var_0.x)))), false, global0.e, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.d), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_add_u32(u_input.a.x, 4294967295u), u_input.c << (vec4<u32>(u_input.a.x, 0u, u_input.a.x, 4294967295u) % vec4<u32>(32u)))), (var_0.x && var_0.x) || any(var_0.xxz))))), vec2<i32>(u_input.b, 3107i));
}

fn func_1() -> Struct_2 {
    global0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.x, global0.d.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.d.x, global0.d.x)) - _wgslsmith_f_op_f32(-global0.d.x)), 586f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x * global0.d.x)) - global0.d.x)));
    global0 = Struct_1(select(func_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1330f, 1000f, global0.d.x), vec3<f32>(global0.d.x, global0.d.x, global0.d.x)))))).a, select(!vec2<bool>(true, global0.a.x), select(vec2<bool>(global0.b, global0.a.x), vec2<bool>(global0.b, true), true), vec2<bool>(global0.b, global0.d.x != -499f)), true | (global0.b && global0.b)), true, vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, global0.c.x), u_input.c.xw >> (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))) >> (59541u % 32u), u_input.c.x), global0.d, max(global0.e, global0.c));
    let var_0 = global0.d.x;
    let var_1 = select(global0.a.x, false, any(!(!select(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.b), vec4<bool>(global0.a.x, true, global0.a.x, false), global0.b))));
    let var_2 = select(select(!select(vec4<bool>(true, true, var_1, global0.a.x), select(vec4<bool>(true, var_1, var_1, global0.a.x), vec4<bool>(true, true, var_1, global0.a.x), vec4<bool>(false, false, var_1, var_1)), u_input.a.x <= 4294967295u), vec4<bool>(global0.b, true, all(vec3<bool>(true, false, false)), select(true, true, var_1) & all(global0.a)), vec4<bool>(var_1, global0.a.x, !(var_1 & true), global0.b)), select(vec4<bool>(true, true, true, select(var_1 & var_1, !var_1, any(vec2<bool>(true, true)))), select(vec4<bool>(true, all(vec3<bool>(var_1, var_1, false)), var_1 && var_1, any(vec3<bool>(global0.b, false, global0.b))), vec4<bool>(any(vec4<bool>(var_1, false, global0.b, false)), all(vec2<bool>(var_1, false)), !var_1, !global0.a.x), any(vec3<bool>(global0.a.x, var_1, var_1))), var_1), any(select(select(vec3<bool>(var_1, var_1, false), vec3<bool>(global0.b, var_1, global0.a.x), false & var_1), select(!vec3<bool>(global0.a.x, true, false), vec3<bool>(true, var_1, true), vec3<bool>(false, global0.b, false)), vec3<bool>(global0.b, any(global0.a), !global0.a.x))));
    return Struct_2(44070u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec3_f32(func_4(u_input.a.x, reverseBits(~vec4<i32>(0i, 2147483647i, global0.c.x, -48231i)))).x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -644f), 1f) - global0.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(!(!vec4<bool>(global0.a.x, global0.a.x, true, true)), !(!vec4<bool>(global0.a.x, true, true, false)), !global0.a.x), !(!(!vec4<bool>(global0.b, global0.b, false, global0.a.x))), !select(!vec4<bool>(true, global0.b, false, false), vec4<bool>(global0.a.x, false, global0.a.x, false), all(global0.a)));
    let var_1 = func_1();
    global0 = func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global0.d))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.d.x, global0.d.x, 1000f))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(927f)), var_1.b, global0.d.x)));
    var var_2 = global0.d;
    var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.d + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(477f, var_1.b, global0.d.x))) - vec3<f32>(-1077f, -286f, -330f))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(global0.c.x, global0.c.x), firstTrailingBit(vec2<i32>(1i, u_input.c.x)))), vec3<u32>(~0u, max(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a, var_1.a, 92236u, var_1.a), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_1.a, var_1.a, 1u), vec4<u32>(var_1.a, 4615u, var_1.a, 3602u))), countOneBits(u_input.a.x)), 0u), ~(~(~vec4<u32>(u_input.a.x, u_input.a.x, var_1.a, 31910u))) << (_wgslsmith_mult_vec4_u32(abs(~vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)), select(vec4<u32>(u_input.a.x, u_input.a.x, var_1.a, 72721u), vec4<u32>(var_1.a, var_1.a, 4687u, 7950u), vec4<bool>(global0.a.x, true, true, var_0.x))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(max(global0.d.yz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.xz * var_2.yx)))));
}

