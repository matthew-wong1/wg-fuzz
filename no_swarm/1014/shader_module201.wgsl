struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<u32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: i32) -> bool {
    var var_0 = firstLeadingBit(min(vec3<u32>(71310u, 1u, ~1u), max(~(~vec3<u32>(global1.x, global1.x, 32072u)), ~vec3<u32>(global1.x, global1.x, 1u) << (select(vec3<u32>(469u, 1u, global1.x), vec3<u32>(0u, 39847u, global1.x), true) % vec3<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -372f), 432f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1650f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1571f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-414f, -1081f), vec2<f32>(578f, -1000f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-217f, 697f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1011f, 1251f)))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1067f, 982f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(select(174f, var_1.x, arg_0)))))), u_input.a, !select(vec3<bool>(arg_1, arg_0, all(vec3<bool>(false, arg_1, arg_1))), select(vec3<bool>(true, arg_0, arg_0), !vec3<bool>(true, arg_1, false), vec3<bool>(false, false, arg_1)), arg_1));
    global1 = ~_wgslsmith_clamp_vec2_u32(~var_0.zz, countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global1.x), var_0.xy, ~vec2<u32>(47193u, 7358u))), select(vec2<u32>(0u, 4294967295u), select(vec2<u32>(global1.x, 4294967295u), vec2<u32>(global1.x, var_0.x), true), all(var_2.c.zz)) & vec2<u32>(reverseBits(1u), var_0.x & 0u));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * -433f)))), _wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)));
    return false || arg_1;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = select(reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(global1.x, max(global1.x, global1.x)), vec2<u32>(global1.x, global1.x))), countOneBits(~(~select(vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, 0u), true))), !arg_0.c.x);
    global0 = arg_0.b;
    var var_0 = select(vec4<bool>(arg_0.c.x, all(!(!vec3<bool>(false, arg_1.c.x, arg_0.c.x))), true, select(true || arg_1.c.x, false, ~global1.x <= ~global1.x)), select(!(!vec4<bool>(true, arg_0.c.x, false, true)), select(vec4<bool>(!arg_0.c.x, true, func_3(true, true, -33422i), true), vec4<bool>(true, !arg_0.c.x, true, arg_0.c.x), true), vec4<bool>(true, any(vec2<bool>(arg_1.c.x, arg_1.c.x)), true, arg_1.c.x)), vec4<bool>(func_3(!select(arg_1.c.x, false, false), !select(false, arg_0.c.x, false), _wgslsmith_add_i32(-arg_0.b, firstTrailingBit(1i))), true == any(vec4<bool>(arg_0.c.x, false, true, false)), true, all(vec2<bool>(select(false, true, arg_0.c.x), true))));
    var var_1 = vec3<f32>(-635f, arg_0.a, -568f);
    var var_2 = arg_1;
    return arg_1;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = !any(select(select(vec4<bool>(arg_1.c.x, false, false, true), select(vec4<bool>(false, arg_1.c.x, false, false), vec4<bool>(false, arg_1.c.x, arg_1.c.x, false), vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, true)), select(vec4<bool>(arg_1.c.x, arg_1.c.x, true, arg_1.c.x), vec4<bool>(arg_1.c.x, false, true, false), vec4<bool>(false, arg_1.c.x, true, arg_1.c.x))), vec4<bool>(true, 2407f == arg_1.a, false, true), !(!vec4<bool>(true, true, arg_1.c.x, arg_1.c.x))));
    global1 = arg_0.yz;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -949f);
    let var_2 = func_2(func_2(Struct_1(1000f, -_wgslsmith_div_i32(-28155i, 77044i), vec3<bool>(!var_0, func_3(false, var_0, arg_1.b), arg_1.c.x)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1.a)), _wgslsmith_f_op_f32(-arg_1.a)), u_input.a, !func_2(Struct_1(846f, -3075i, vec3<bool>(false, arg_1.c.x, arg_1.c.x)), Struct_1(898f, 48700i, vec3<bool>(arg_1.c.x, var_0, true))).c)), arg_1);
    var var_3 = !(!any(select(arg_1.c, var_2.c, var_2.c)));
    return Struct_1(-866f, 0i, arg_1.c);
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_1) -> bool {
    let var_0 = arg_3;
    var var_1 = 701f;
    var var_2 = func_4(vec3<u32>(countOneBits(0u), 63388u, 16830u), func_2(arg_3, arg_3));
    var_1 = arg_3.a;
    var var_3 = func_2(func_4(_wgslsmith_mult_vec3_u32(vec3<u32>(12829u, global1.x, arg_2) | ~vec3<u32>(4294967295u, arg_2, 48480u), abs(_wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_2, arg_2), vec3<u32>(global1.x, 11730u, arg_2)))), arg_3), Struct_1(_wgslsmith_f_op_f32(-var_0.a), -2147483647i, select(vec3<bool>(false, arg_3.c.x, !var_0.c.x), vec3<bool>(arg_3.c.x && true, true, var_2.c.x | var_2.c.x), !var_2.c)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(-(1i ^ ~u_input.a), ~(-u_input.a)) >> (1u % 32u);
    global0 = u_input.a;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-322f + 1142f))))), u_input.a, select(select(vec3<bool>(all(vec4<bool>(false, false, false, true)), true, func_1(u_input.a, vec2<f32>(136f, -136f), global1.x, Struct_1(460f, u_input.a, vec3<bool>(false, false, true)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_2(Struct_1(-1022f, 2147483647i, vec3<bool>(true, false, true)), Struct_1(-184f, 1i, vec3<bool>(false, false, false))).c), true), !vec3<bool>(all(vec3<bool>(true, true, false)), true, func_4(vec3<u32>(global1.x, global1.x, 0u), Struct_1(-1323f, 2147483647i, vec3<bool>(false, false, false))).c.x), vec3<bool>(func_3(49872i != u_input.a, true, 88985i), func_2(Struct_1(-1000f, -14441i, vec3<bool>(false, false, false)), func_2(Struct_1(2031f, u_input.a, vec3<bool>(true, false, true)), Struct_1(846f, u_input.a, vec3<bool>(false, false, true)))).c.x, true)));
    let var_2 = _wgslsmith_add_vec4_i32(countOneBits(select(select(select(vec4<i32>(1i, var_1.b, -37035i, var_1.b), vec4<i32>(u_input.a, u_input.a, -1i, u_input.a), true), -vec4<i32>(31238i, -2147483647i, var_1.b, 49058i), !var_1.c.x), vec4<i32>(-var_1.b, 2147483647i, var_1.b, 32778i), _wgslsmith_f_op_f32(abs(var_1.a)) < _wgslsmith_f_op_f32(trunc(-740f)))), -vec4<i32>(u_input.a, firstLeadingBit(max(-1i, var_1.b)), max(func_2(Struct_1(1000f, var_1.b, var_1.c), Struct_1(-1531f, u_input.a, vec3<bool>(true, true, var_1.c.x))).b, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, 45011i) >> (vec3<u32>(global1.x, 36300u, global1.x) % vec3<u32>(32u)), abs(vec3<i32>(-1i, var_1.b, -23594i)))));
    global0 = ~_wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_mult_i32(-38776i, 14675i), u_input.a, -15031i, ~var_1.b), var_2);
    let var_3 = Struct_1(_wgslsmith_div_f32(var_1.a, 612f), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-6751i, 1i), u_input.a), !vec3<bool>(select(func_2(Struct_1(var_1.a, var_1.b, var_1.c), Struct_1(-457f, var_2.x, var_1.c)).c.x, any(vec4<bool>(true, false, var_1.c.x, false)), true), false, !var_1.c.x || false));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(global1.x, 65066u), var_2, global1.x);
}

