struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 2>;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(1i, -37843i), 317f, 557i, false);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> Struct_1 {
    return arg_0.d;
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> f32 {
    let var_0 = 1i;
    global1 = Struct_1(global1.a, _wgslsmith_f_op_f32(-1208f + -2041f), _wgslsmith_mult_i32(-select(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-12880i, global1.a.x), vec2<i32>(-53661i, 2147483647i)), arg_1.d), u_input.a.x), !arg_1.d);
    return _wgslsmith_f_op_f32(round(arg_0));
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-623f, global1.b, global1.b, -1460f)))))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global1.b, -1810f, 2480f)), vec4<f32>(global1.b, global1.b, global1.b, 1245f)))))));
    var var_1 = arg_0.x;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-1060f, func_2(Struct_2(906f, 0u, vec2<bool>(false, false), Struct_1(global1.a, global1.b, 1i, false), var_0.x), arg_0.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.b))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-284f, var_0.x, global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(569f, var_2.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(109f, -302f, 1294f, var_2.x), vec4<f32>(-784f, -859f, var_0.x, 830f))))))));
    global0 = array<vec2<bool>, 2>();
    return Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-833f))))), max(~28086u, 23207u), global0[_wgslsmith_index_u32(28080u, 2u)], Struct_1(-(~(-vec2<i32>(u_input.a.x, -2147483647i))), _wgslsmith_f_op_f32(-var_2.x), global1.c, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.x)) + var_2.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(floor(global1.b)))) * global1.b);
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.x, arg_0.b), arg_1);
    var var_2 = 0u;
    global0 = array<vec2<bool>, 2>();
    var_2 = 0u;
    return Struct_1(~(select(u_input.a.zz << (var_1 % vec2<u32>(32u)), u_input.a.zx & global1.a, select(vec2<bool>(true, true), global0[_wgslsmith_index_u32(arg_0.b, 2u)], true)) << (abs(var_1) % vec2<u32>(32u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.e)))))), ~min(global1.c, func_1(vec3<bool>(true, true, true)).d.c), any(vec2<bool>(-1000f >= _wgslsmith_f_op_f32(func_3(global1.b, arg_0.d)), true)));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_1(select(!select(vec3<bool>(true, true, arg_0.d), vec3<bool>(true, true, false), select(false, true, true)), vec3<bool>(false, arg_0.d, global1.d), select(vec3<bool>(global1.d, any(vec4<bool>(true, false, false, arg_0.d)), any(vec3<bool>(true, arg_0.d, false))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(global1.d, global1.d, global1.d), arg_0.d), global1.d))));
    let var_1 = -2239f;
    global1 = Struct_1(u_input.a.xz >> (~min(~vec2<u32>(4294967295u, var_0.b), vec2<u32>(var_0.b, 0u) & vec2<u32>(22673u, 0u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(min(func_1(select(select(vec3<bool>(arg_0.d, arg_0.d, global1.d), vec3<bool>(true, true, global1.d), false), select(vec3<bool>(var_0.d.d, false, arg_0.d), vec3<bool>(global1.d, true, true), vec3<bool>(false, global1.d, global1.d)), !vec3<bool>(false, true, arg_0.d))).e, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(var_1 * var_0.a), var_0.d)))), -func_1(!vec3<bool>(var_0.c.x, global1.d, true)).d.a.x & _wgslsmith_mult_i32(var_0.d.c, abs(29576i)), any(vec3<bool>(var_0.c.x, any(select(vec3<bool>(false, global1.d, false), vec3<bool>(true, false, arg_0.d), false)), true)));
    var var_2 = abs(vec2<u32>(var_0.b, _wgslsmith_mult_u32(1u, 21555u)));
    var var_3 = any(!vec4<bool>(!all(vec3<bool>(global1.d, var_0.d.d, true)), true, max(12687u, 56567u) <= var_2.x, var_0.d.d));
    return Struct_1(global1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - var_0.a)), func_4(func_1(select(vec3<bool>(false, false, arg_0.d), vec3<bool>(true, true, false), global1.d)), abs(~vec2<u32>(var_0.b, 6299u)), _wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, var_2.x), vec2<u32>(var_0.b, var_0.b)), vec2<u32>(var_0.b, var_0.b))).b), abs(18590i), true || var_0.d.d);
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> StorageBuffer {
    var var_0 = arg_2.d;
    global1 = Struct_1(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(func_1(vec3<bool>(var_0.d, var_0.d, true)), func_2(Struct_2(-1395f, arg_2.b, vec2<bool>(false, arg_2.c.x), Struct_1(global1.a, -610f, -1i, false), arg_1.b), false, false).d, true).b + arg_0) - arg_0), -1i, true | arg_1.d);
    global1 = func_5(Struct_1(~(-abs(u_input.a.yz)), _wgslsmith_f_op_f32(f32(-1f) * -722f), u_input.a.x, true));
    var var_1 = u_input.a.yz;
    var var_2 = true;
    return StorageBuffer(firstLeadingBit(arg_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 2>();
    global0 = array<vec2<bool>, 2>();
    let var_0 = select(~global1.a, _wgslsmith_clamp_vec2_i32(-vec2<i32>(-2728i, -2918i >> (1u % 32u)), select(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.yy, vec2<i32>(-100687i, 0i)), ~vec2<i32>(u_input.a.x, -2147483647i)), vec2<i32>(global1.c, global1.c), global1.d && true), global1.a), global1.b != _wgslsmith_f_op_f32(-211f - _wgslsmith_f_op_f32(sign(global1.b))));
    global0 = array<vec2<bool>, 2>();
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global1.b)), global1.b)), func_5(func_4(func_1(!vec3<bool>(global1.d, true, false)), abs(select(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u), global0[_wgslsmith_index_u32(4294967295u, 2u)])), ~(~0u))), Struct_2(global1.b, 1u, select(vec2<bool>(global1.d, true & global1.d), !global0[_wgslsmith_index_u32(~4294967295u, 2u)], global1.d), Struct_1(~(vec2<i32>(2229i, 2147483647i) | var_0), _wgslsmith_f_op_f32(-global1.b), -2147483647i | func_1(vec3<bool>(false, true, true)).d.c, func_1(!vec3<bool>(global1.d, global1.d, false)).d.d), _wgslsmith_f_op_f32(f32(-1f) * -1396f)), ~countOneBits(~(-33187i)));
}

