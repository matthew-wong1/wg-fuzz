struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<bool> {
    var var_0 = any(select(vec2<bool>(true, true), !vec2<bool>(false, all(vec4<bool>(false, true, true, false))), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, all(vec3<bool>(true, true, false))), all(vec3<bool>(false, false, false)) && select(true, true, false))));
    var var_1 = reverseBits(~(~(~52128u)));
    let var_2 = 2147483647i;
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-442f - -271f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -106f))), -837f, false | !any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)))));
    var_1 = select(abs(~1u), _wgslsmith_sub_u32(~_wgslsmith_mod_u32(1u, select(0u, 4294967295u, false)), select(1u, _wgslsmith_sub_u32(firstTrailingBit(0u), ~4294967295u), any(vec2<bool>(true, false)))), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    return vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, false)), false, false), vec3<bool>(true, true, true))), true);
}

fn func_2() -> Struct_1 {
    global0 = all(func_3());
    global0 = !select(true, true, true);
    global0 = any(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(true, true)))) || all(vec3<bool>(true, !select(false, true, true), true));
    var var_0 = !all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))) || (_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-254f)))), _wgslsmith_f_op_f32(f32(-1f) * -202f)) > -353f);
    let var_1 = Struct_2(select(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)), select(vec3<bool>(func_3().x, true, true), vec3<bool>(false, any(vec3<bool>(true, true, false)), true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), !vec3<bool>(all(vec4<bool>(false, true, false, false)), true, all(vec2<bool>(false, false)))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -342f))), ~vec4<u32>(firstTrailingBit(927u), ~0u, ~4938u, 95u)));
    return var_1.b;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = arg_1.e;
    var var_1 = vec3<bool>(any(!(!vec3<bool>(arg_1.a, var_0.a.x, arg_1.e.a.x))) & !(arg_1.e.a.x || (true == arg_1.a)), true, select(select(!(!var_0.a.x), arg_1.a, true), any(func_3()), arg_1.a));
    let var_2 = -_wgslsmith_add_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 1i, 4727i) | vec3<i32>(-1i, -2147483647i, 7441i), max(vec3<i32>(0i, u_input.a, -56364i), vec3<i32>(u_input.a, u_input.a, u_input.a)))), _wgslsmith_clamp_vec3_i32(select(~vec3<i32>(1i, u_input.a, u_input.a), -vec3<i32>(-1i, 9209i, 1i), !var_0.a), (vec3<i32>(u_input.a, u_input.a, -13154i) >> (var_0.b.b.yyw % vec3<u32>(32u))) | firstTrailingBit(vec3<i32>(15400i, u_input.a, 18505i)), vec3<i32>(u_input.a, -19630i, u_input.a) | -vec3<i32>(u_input.a, u_input.a, -2147483647i)));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.a, var_0.b.a) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a) - _wgslsmith_f_op_f32(1173f - arg_1.b.a)), _wgslsmith_f_op_f32(min(-158f, arg_2.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.xy + arg_2.yz)))));
    var var_4 = -2147483647i;
    return arg_1;
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = u_input.a;
    global0 = !(!arg_0);
    var_0 = u_input.a;
    global0 = true;
    var var_1 = false;
    return func_4(all(select(vec2<bool>(false, true), select(select(vec2<bool>(false, false), vec2<bool>(false, arg_0), arg_0), vec2<bool>(true, arg_0), vec2<bool>(arg_0, true)), true)), Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1067f))) <= _wgslsmith_f_op_f32(f32(-1f) * -689f), func_2(), Struct_2(!select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, arg_0, true)), Struct_1(_wgslsmith_f_op_f32(-812f - 232f), vec4<u32>(1u, 1u, 1u, 1u))), firstLeadingBit(vec3<u32>(1u, 1u, 1u)), Struct_2(select(vec3<bool>(true, arg_0, true), select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, arg_0, true)), vec3<bool>(true, arg_0, arg_0)), Struct_1(_wgslsmith_f_op_f32(step(1000f, -471f)), vec4<u32>(1u, 1u, 1u, 1u)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -309f), -198f, -402f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true);
    var var_1 = _wgslsmith_mod_i32(reverseBits(1i >> (var_0.e.b.b.x % 32u)), -(~(-2147483647i)));
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(firstLeadingBit(~vec3<i32>(-7263i, 0i, 3633i)), select(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<bool>(true, true, true)) & vec3<i32>(u_input.a, u_input.a, u_input.a)), ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.a), firstLeadingBit(vec3<i32>(-1i, -8558i, 22968i)))), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a | -1i, 0i, u_input.a), abs(vec3<i32>(_wgslsmith_div_i32(76888i, u_input.a), u_input.a, -2147483647i))));
    var var_3 = -1616i != countOneBits(u_input.a);
    var var_4 = var_0.e.a;
    var var_5 = func_1(any(!vec2<bool>(var_0.b.b.x <= var_0.c.b.b.x, false))).b.a;
    let x = u_input.a;
    s_output = StorageBuffer(~24470u, -_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(11649i, u_input.a, 11041i, 1i), vec4<i32>(u_input.a, -2147483647i, 2147483647i, 0i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(13747i, 2147483647i, u_input.a, -17665i), vec4<i32>(5271i, -1i, -1i, u_input.a), vec4<i32>(u_input.a, -1i, 0i, -7424i))), vec4<i32>(~u_input.a, firstTrailingBit(1i), u_input.a, firstTrailingBit(1i))), ~(~(~vec2<u32>(var_0.b.b.x, var_0.e.b.b.x) >> (var_0.e.b.b.xy % vec2<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.e.b.a))), var_0.e.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a) * 1f)), -2147483647i);
}

