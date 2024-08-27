struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true);

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global0 = arg_1;
    let var_0 = Struct_1(select(vec4<bool>(true, arg_0.x, !arg_0.x, !arg_0.x), vec4<bool>(select(67957u >= u_input.e, all(arg_0.zy), 34861i != u_input.a), any(vec2<bool>(global0.a.x, false)), true, true), !arg_1.b), vec4<bool>(1i != _wgslsmith_mod_i32(-2147483647i, u_input.a & u_input.d.x), arg_0.x, true, !any(select(global0.b.xyz, arg_0, arg_1.a.zww))), arg_2.b.x);
    let var_1 = ~95182u;
    let var_2 = _wgslsmith_f_op_f32(floor(1f));
    var var_3 = Struct_1(vec4<bool>(!var_0.a.x, !(!arg_0.x & arg_1.b.x), !global0.a.x, global0.a.x), vec4<bool>(true, true, any(vec3<bool>(var_1 < u_input.e, true, !arg_1.c)), global0.b.x), false);
    return select(-28921i, reverseBits(abs(~(~u_input.a))), all(vec2<bool>(false, any(select(vec2<bool>(arg_1.b.x, false), vec2<bool>(global0.a.x, true), vec2<bool>(arg_2.a.x, arg_0.x))))));
}

fn func_3() -> f32 {
    global0 = Struct_1(!vec4<bool>(!(global0.b.x != global0.b.x), global1.x, global1.x, !(true & global0.a.x)), vec4<bool>(any(global1.xyx), select(false, !(!global0.a.x), !(!global1.x)), true, global1.x), select(global0.c, !global0.a.x, select(all(vec4<bool>(false, false, global0.a.x, global0.b.x)), true, false)));
    let var_0 = -u_input.d;
    let var_1 = Struct_1(vec4<bool>(all(global0.a), false, global1.x, any(select(global1.yw, select(global0.b.yy, global0.a.xz, true), global0.b.x))), vec4<bool>(!any(select(global1.zw, vec2<bool>(global1.x, global0.b.x), false)), all(global0.a.ww), global0.a.x, _wgslsmith_add_i32(i32(-1i) * -2147483647i, ~u_input.d.x) >= u_input.a), all(vec3<bool>(global1.x, global1.x, (u_input.b << (u_input.b % 32u)) < 1u)));
    let var_2 = vec4<u32>(u_input.c.x, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(~abs(46322u), firstTrailingBit(u_input.e | 0u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, u_input.c.x, 0u)), vec3<u32>(u_input.c.x, u_input.b, u_input.b))), vec3<u32>(_wgslsmith_mult_u32(u_input.b, reverseBits(12855u)), u_input.b, firstTrailingBit(41003u))), u_input.c.x);
    var var_3 = select(!var_1.b.zx, vec2<bool>(false, all(global0.a.zz)), global1.zw);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-346f * 1371f)));
}

fn func_1() -> StorageBuffer {
    var var_0 = ~(abs(select(u_input.d.yy, vec2<i32>(0i, u_input.a), vec2<bool>(global0.a.x, false))) ^ vec2<i32>(-5337i, func_2(vec3<bool>(true, true, global0.b.x), Struct_1(vec4<bool>(global1.x, false, true, true), global0.b, global0.a.x), Struct_1(global0.a, vec4<bool>(false, false, global0.b.x, global1.x), global1.x)) ^ u_input.a));
    let var_1 = ~_wgslsmith_div_i32(var_0.x, 58775i);
    global1 = global0.a;
    let var_2 = ~u_input.d;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-295f, _wgslsmith_f_op_f32(round(-172f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2851f - 2811f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-790f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1193f) - _wgslsmith_div_f32(-3160f, 432f)), select(select(true, global1.x, true), !global1.x, true))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-861f, -117f)))), -436f);
    return StorageBuffer(-select(2147483647i, abs(-21669i), !global1.x), 13692u, ~(-(~(~vec4<i32>(var_1, var_1, 4567i, 7125i)))), ~select(countOneBits(-1i), abs(0i), false), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!global0.a);
    var var_1 = !(any(!vec3<bool>(true, global1.x, global0.a.x)) && (true && all(select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(false, true, true, var_0.x), true))));
    var var_2 = !(!(!global0.a.x));
    var_2 = var_0.x;
    let var_3 = reverseBits(u_input.d.x);
    let var_4 = vec2<i32>(1i, reverseBits(var_3));
    var var_5 = -7611i;
    var var_6 = vec3<u32>(_wgslsmith_div_u32(min(~1u, 37502u), _wgslsmith_sub_u32(u_input.b, 23986u)), u_input.b, 4294967295u);
    let x = u_input.a;
    s_output = func_1();
}

