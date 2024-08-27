struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>) -> u32 {
    var var_0 = u_input.c.x;
    global0 = vec2<bool>(global0.x, false);
    var var_1 = 278f;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(785f, arg_1.x, 561f, -175f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2303f, arg_1.x, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 252f, arg_1.x, arg_1.x) - vec4<f32>(arg_1.x, -1784f, -1664f, 1000f)))), !(!vec4<bool>(global0.x, global0.x, true, true))))));
    var_2 = vec4<f32>(-312f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x))), var_2.x, _wgslsmith_f_op_f32(-var_2.x));
    return min(max(46469u, _wgslsmith_dot_vec4_u32(u_input.d, ~vec4<u32>(u_input.c.x, 29208u, u_input.a, u_input.d.x))), 1u);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> bool {
    global0 = vec2<bool>(true, global0.x);
    var var_0 = arg_2;
    var var_1 = -1i;
    var var_2 = var_0.b;
    var var_3 = arg_0;
    return true;
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    global0 = !arg_2.c.xz;
    global0 = var_0.c.zx;
    global0 = select(var_0.c.yw, arg_2.c.wy, vec2<bool>(all(!vec3<bool>(var_0.c.x, arg_2.c.x, false)) || arg_2.c.x, arg_1 != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.xy);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(577f, _wgslsmith_f_op_f32(f32(-1f) * -960f), -1284f) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1145f)), 593f, -2002f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -186f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-178f + 1000f)))), Struct_1(vec4<u32>(firstLeadingBit(func_1(vec2<i32>(u_input.b.x, -2147483647i), vec3<f32>(-433f, 481f, 518f))), reverseBits(1u), abs(reverseBits(u_input.c.x)), 4294967295u >> (_wgslsmith_add_u32(0u, u_input.a) % 32u)), ~u_input.b.x, select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(false, global0.x, true)), true, true, true), select(select(vec4<bool>(global0.x, false, true, false), vec4<bool>(false, true, global0.x, global0.x), false), !vec4<bool>(global0.x, false, global0.x, global0.x), !global0.x))), Struct_1(u_input.d, u_input.e, !vec4<bool>(global0.x, func_2(Struct_1(vec4<u32>(2276u, u_input.d.x, u_input.a, u_input.d.x), 681i, vec4<bool>(global0.x, false, true, global0.x)), true, Struct_1(vec4<u32>(u_input.d.x, 4294967295u, u_input.c.x, u_input.d.x), u_input.e, vec4<bool>(global0.x, true, global0.x, global0.x))), true, true)));
    var var_1 = var_0.c.xw;
    var_1 = vec2<bool>(any(select(vec4<bool>(true || var_0.c.x, true, 0u == var_0.a.x, true), var_0.c, false)), any(vec4<bool>(!all(var_0.c.wy), global0.x, !(!var_0.c.x), var_1.x)));
    var var_2 = Struct_1(~vec4<u32>(u_input.d.x, ~56855u, 34747u, ~_wgslsmith_div_u32(var_0.a.x, 4294967295u)), reverseBits(u_input.b.x), var_0.c);
    var_2 = func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1406f), 1398f, _wgslsmith_f_op_f32(f32(-1f) * -672f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-529f, -1577f, _wgslsmith_f_op_f32(trunc(-922f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1059f, -1008f, 1212f))))), -1681f, var_0, Struct_1(select(var_0.a, var_2.a, var_0.c) ^ ~(u_input.d | u_input.d), var_2.b, vec4<bool>(any(var_0.c.zz), !(u_input.e >= 1i), false, !(u_input.d.x != u_input.c.x))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1679f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -303f) + _wgslsmith_f_op_f32(min(251f, 1000f))), -934f), _wgslsmith_f_op_f32(2426f - _wgslsmith_f_op_f32(-425f - -236f))));
    let var_4 = func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-495f, var_3.x, 724f)))) - var_3) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, var_3.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_3.x, 650f) * _wgslsmith_f_op_vec3_f32(min(var_3, var_3))), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(452f + var_3.x) + var_3.x) - -786f)), Struct_1(~((var_2.a << (var_0.a % vec4<u32>(32u))) ^ vec4<u32>(u_input.c.x, 0u, 4294967295u, 3063u)), max(_wgslsmith_div_i32(0i, -33782i), min(var_0.b, 1i)) | 34153i, var_2.c), var_0);
    var var_5 = true;
    let var_6 = Struct_1(~(~abs(vec4<u32>(var_2.a.x, var_4.a.x, 0u, 0u)) & var_4.a), 50816i, vec4<bool>(true, 372f == _wgslsmith_f_op_f32(-var_3.x), all(vec3<bool>(global0.x, true, any(var_2.c.xy))), var_0.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.yy, abs(firstTrailingBit(1i)) ^ var_4.b);
}

