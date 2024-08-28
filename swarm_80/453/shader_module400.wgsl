struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = arg_1;
    var var_0 = reverseBits(vec4<i32>(_wgslsmith_mult_i32(u_input.a ^ -47379i, countOneBits(u_input.a)), u_input.a << (select(0u, ~global0.c, true) % 32u), 0i, ~u_input.a));
    let var_1 = var_0.yzx;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1085f), 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1055f - -615f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-114f)))))));
    var var_3 = 17912i;
    return _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(1u, arg_1.a.x, arg_2.c))), ~max(vec3<u32>(~21255u, _wgslsmith_sub_u32(arg_1.d.x, 0u), 1u), _wgslsmith_mod_vec3_u32(arg_2.d, firstTrailingBit(arg_2.a))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_div_vec3_u32(~arg_0, arg_0) << (vec3<u32>(~global0.c ^ func_3(Struct_1(arg_0, false, 19874u, vec3<u32>(0u, global0.c, arg_0.x)), Struct_1(global0.d, true, 13870u, vec3<u32>(global0.c, 4294967295u, arg_0.x)), Struct_1(vec3<u32>(global0.c, global0.d.x, 1u), true, global0.d.x, vec3<u32>(arg_0.x, arg_0.x, arg_0.x))), global0.d.x, ~(4294967295u >> (1u % 32u))) % vec3<u32>(32u)), true, 4623u, arg_0);
    let var_0 = select(select(vec3<bool>(true, false, !(global0.b && true)), !(!vec3<bool>(global0.b, global0.b, true)), any(select(select(vec2<bool>(false, global0.b), vec2<bool>(global0.b, false), vec2<bool>(false, global0.b)), !vec2<bool>(global0.b, true), vec2<bool>(true, true)))), select(!select(!vec3<bool>(global0.b, false, global0.b), select(vec3<bool>(global0.b, true, global0.b), vec3<bool>(global0.b, global0.b, false), true), select(vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(true, global0.b, global0.b), vec3<bool>(global0.b, global0.b, global0.b))), select(select(!vec3<bool>(global0.b, global0.b, global0.b), !vec3<bool>(false, global0.b, false), !global0.b), vec3<bool>(global0.b, true, all(vec2<bool>(false, false))), select(vec3<bool>(true, true, true), !vec3<bool>(global0.b, global0.b, true), vec3<bool>(global0.b, global0.b, false))), !all(select(vec2<bool>(false, global0.b), vec2<bool>(global0.b, global0.b), global0.b))), global0.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2238f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-391f))))));
    let var_2 = Struct_1(vec3<u32>(~_wgslsmith_mult_u32(arg_0.x, 53057u) >> (func_3(Struct_1(global0.a, true, 70459u, global0.a), Struct_1(vec3<u32>(1u, global0.c, 36691u), global0.b, 65707u, vec3<u32>(1u, 1u, global0.a.x)), Struct_1(global0.d, global0.b, global0.a.x, vec3<u32>(1u, 1u, 1u))) % 32u), _wgslsmith_div_u32(~40556u, 3018u), ~arg_0.x), true, ~(~40906u) ^ arg_0.x, global0.a);
    global0 = var_2;
    return Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(0u, countOneBits(_wgslsmith_clamp_u32(global0.c, global0.a.x, 10691u)), firstLeadingBit(64088u)), arg_0), !(var_0.x || any(var_0.yz)) != !(global0.b && true), var_2.c, firstLeadingBit(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 0u, 8782u, global0.c), vec4<u32>(13595u, global0.d.x, 15392u, arg_0.x)), 4294967295u, min(_wgslsmith_dot_vec4_u32(vec4<u32>(1505u, 44784u, global0.c, var_2.d.x), vec4<u32>(4294967295u, 4294967295u, global0.a.x, arg_0.x)), ~var_2.d.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-338f)));
    var var_1 = true;
    let var_2 = arg_1;
    global0 = func_2(global0.a);
    global0 = arg_0;
    return func_2(min(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(41823u, arg_0.c), _wgslsmith_dot_vec2_u32(arg_0.d.xz, arg_0.a.yz), 0u), arg_0.a | abs(arg_0.d)), ~abs(~arg_0.a)));
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_1 {
    let var_0 = true;
    global0 = func_4(func_2(global0.a), _wgslsmith_sub_vec4_i32(~(~(-vec4<i32>(u_input.a, 0i, -16374i, -7582i))), vec4<i32>(u_input.a, 1i, 1i, i32(-1i) * -1i)), global0.b);
    global0 = func_2(min(func_4(Struct_1(global0.d, select(false, arg_0, arg_0), 19621u, vec3<u32>(4294967295u, 3157u, global0.c)), max(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 16439i), vec4<i32>(22908i, 0i, u_input.a, u_input.a)), -vec4<i32>(u_input.a, 2147483647i, -990i, u_input.a)), false).d, firstTrailingBit(~(vec3<u32>(global0.c, 9909u, global0.a.x) ^ vec3<u32>(73901u, global0.d.x, global0.c)))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -113f), 509f))));
    var var_2 = _wgslsmith_f_op_f32(1797f - arg_1);
    return Struct_1(abs(func_2(~min(vec3<u32>(global0.a.x, 0u, global0.c), vec3<u32>(global0.d.x, 4294967295u, 4119u))).a), any(vec2<bool>(true, true)), abs(global0.d.x), vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(27220u, global0.c, 0u), global0.a) | ~(global0.a.x << (0u % 32u)), 1u, 75957u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(242f - -899f) - _wgslsmith_div_f32(1000f, 1000f)), 181f))));
    global0 = func_1(any(!vec3<bool>(var_0 > -1000f, true, global0.b || false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(186f * var_0) - -1405f))));
    global0 = func_1(!(!(!(var_0 <= 432f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * var_0)), _wgslsmith_f_op_f32(-var_0)))));
    let var_1 = Struct_1(abs(global0.d), global0.b, global0.d.x >> (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(14177u, 0u), global0.a.zy), vec2<u32>(global0.d.x, global0.a.x) ^ global0.d.yy) % 32u), global0.a);
    global0 = var_1;
    global0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~18770u, min(4294967295u, 14663u));
}

