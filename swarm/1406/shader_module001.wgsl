struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_2 {
    global0 = false;
    return arg_1;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_2) -> f32 {
    var var_0 = ~(~_wgslsmith_sub_vec2_u32(arg_0.xy, vec2<u32>(arg_0.x, func_2(vec3<i32>(u_input.a.x, -47286i, u_input.a.x), Struct_2(Struct_1(-1000f, vec4<u32>(54770u, global1.b.x, global1.b.x, arg_2.a.b.x)))).a.b.x)));
    var var_1 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a - arg_2.a.a) * 1000f) * _wgslsmith_f_op_f32(-1280f + 314f)) != -1042f, !(!arg_1.x), !(func_2(u_input.a.xzx, func_2(vec3<i32>(-49931i, u_input.a.x, 5208i), Struct_2(Struct_1(-862f, global1.b)))).a.b.x < global1.b.x), arg_1.x);
    var var_2 = !vec2<bool>(false, arg_1.x);
    let var_3 = (false == any(select(arg_1, vec2<bool>(false, true), !arg_1))) | true;
    let var_4 = ~(~vec4<u32>(max(arg_0.x, var_0.x), abs(arg_2.a.b.x), var_0.x, _wgslsmith_div_u32(max(arg_2.a.b.x, 2852u), 1u)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = func_2((~(~u_input.a.wxx) >> (abs(arg_2.zyw) % vec3<u32>(32u))) << (vec3<u32>(func_2(u_input.a.zwx, func_2(u_input.a.zyz, Struct_2(arg_1))).a.b.x, global1.b.x & min(11962u, 0u), firstLeadingBit(4294967295u)) % vec3<u32>(32u)), func_2(u_input.a.yww, func_2(~vec3<i32>(19344i, -22324i, 1i), Struct_2(func_2(vec3<i32>(u_input.a.x, 2147483647i, -2147483647i), Struct_2(arg_1)).a)))).a;
    let var_1 = arg_1;
    var var_2 = Struct_1(-367f, ~arg_1.b);
    var var_3 = 768f;
    var var_4 = arg_1;
    return arg_1;
}

fn func_1() -> Struct_2 {
    global1 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(firstLeadingBit(vec3<u32>(u_input.b, global1.b.x, 7709u)), vec2<bool>(true, true), func_2(vec3<i32>(0i, u_input.a.x, -1i), Struct_2(Struct_1(global1.a, global1.b))))), global1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, global1.a)))), Struct_1(625f, vec4<u32>(~u_input.b, firstTrailingBit(22731u), ~global1.b.x, u_input.b) ^ global1.b), select(vec4<u32>(countOneBits(4294967295u), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 1u, 29844u), global1.b), 4294967295u << (u_input.b % 32u)) & global1.b, vec4<u32>(1u, firstLeadingBit(~66199u), u_input.b, global1.b.x), vec4<bool>(true, any(vec3<bool>(false, true, false)), !any(vec3<bool>(false, false, true)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)))), vec2<bool>(false, false));
    let var_0 = select(vec2<bool>(true, false), vec2<bool>(select(false, false, false && (global1.a > global1.a)), false), all(vec2<bool>(false, all(vec4<bool>(true, true, true, true)))));
    let var_1 = select(vec3<bool>(all(vec3<bool>(any(vec3<bool>(var_0.x, false, false)), false, true | var_0.x)), -479f >= _wgslsmith_f_op_f32(step(-398f, _wgslsmith_f_op_f32(global1.a + global1.a))), true), select(!select(!vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false)), select(select(vec3<bool>(true, true, true), !vec3<bool>(false, false, var_0.x), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, true, var_0.x))), vec3<bool>(true, false, !var_0.x), true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(global1.a != global1.a, 3995i >= u_input.a.x, var_0.x | false), vec3<bool>(true, true, 4294967295u == global1.b.x), any(select(vec3<bool>(false, false, var_0.x), vec3<bool>(false, true, true), false))), !(var_0.x | true) | var_0.x));
    global1 = Struct_1(_wgslsmith_f_op_f32(global1.a * 950f), vec4<u32>(reverseBits(u_input.b), ~(global1.b.x << (u_input.b % 32u)) ^ countOneBits(~12330u), u_input.b, global1.b.x));
    global0 = (i32(-1i) * -1i) <= u_input.a.x;
    return func_2(vec3<i32>(-1i, -_wgslsmith_mult_i32(~u_input.a.x, _wgslsmith_sub_i32(-1i, u_input.a.x)), 4481i), Struct_2(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, 102f, -1143f) + vec3<f32>(356f, global1.a, global1.a)), Struct_1(global1.a, vec4<u32>(1u, global1.b.x, u_input.b, 14361u)), vec4<u32>(_wgslsmith_mult_u32(u_input.b, global1.b.x), global1.b.x, _wgslsmith_sub_u32(6011u, 1u), 57602u ^ global1.b.x), var_0)));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global1 = Struct_1(-920f, ~max(func_2(u_input.a.zwx, Struct_2(Struct_1(2102f, vec4<u32>(84991u, 0u, u_input.b, u_input.b)))).a.b & (global1.b & global1.b), arg_1.a.b));
    let var_0 = vec4<f32>(arg_3, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(arg_2.b.wyx, !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), func_2(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), func_2(u_input.a.xyw, Struct_2(Struct_1(arg_1.a.a, arg_1.a.b)))))))), _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.a) * arg_1.a.a))));
    var var_1 = countOneBits(0u);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -1428f) + -1274f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(603f + arg_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * -1008f) * var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(943f, arg_2.a), 108f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-489f)), _wgslsmith_f_op_f32(-arg_1.a.a)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1284f + arg_2.a), -425f)))));
    var_1 = ~arg_0;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_5(global1.b.x, func_1(), Struct_1(_wgslsmith_f_op_f32(-func_2(u_input.a.xzx, Struct_2(Struct_1(534f, global1.b))).a.a), vec4<u32>(u_input.b, ~u_input.b, _wgslsmith_sub_u32(u_input.b, u_input.b), u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1485f))));
    global0 = select(true, _wgslsmith_f_op_f32(-func_2(vec3<i32>(-6886i, u_input.a.x, u_input.a.x), func_1()).a.a) > 138f, true);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.a)), global1.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.a, -948f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-317f, var_0.a.a), vec2<f32>(-396f, var_0.a.a)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, global1.a)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.a)), var_0.a.a))));
    let var_2 = func_2(select(-u_input.a.yzx, ~vec3<i32>(u_input.a.x, -24149i, -1i), vec3<bool>(true, true, true)) | -(_wgslsmith_add_vec3_i32(u_input.a.wxy, vec3<i32>(1i, 3551i, 2147483647i)) << (abs(vec3<u32>(1u, 1u, 0u)) % vec3<u32>(32u))), Struct_2(Struct_1(_wgslsmith_div_f32(var_0.a.a, -2312f), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.a.b.x, u_input.b, u_input.b, 1u), var_0.a.b))));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.a.a, _wgslsmith_f_op_f32(floor(var_0.a.a)), var_2.a.a, _wgslsmith_f_op_f32(f32(-1f) * -446f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a, 231f, global1.a, 781f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.a, var_1.x, var_0.a.a, var_1.x) * vec4<f32>(-249f, var_1.x, var_1.x, var_2.a.a)) * vec4<f32>(-771f, global1.a, var_1.x, 124f)))));
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~var_0.a.b.x, ~var_0.a.b.x), ~(~var_2.a.b.x)), abs(4885u)), select(~(~u_input.a.x), 2147483647i, true) | (u_input.a.x >> (global1.b.x % 32u)));
}

