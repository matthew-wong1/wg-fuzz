struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(1i, 2147483647i), vec2<i32>(i32(-2147483648), 18894i), vec2<i32>(-20867i, 1i), vec2<i32>(1i, -1i), vec2<i32>(-3871i, 1i), vec2<i32>(-4275i, 0i), vec2<i32>(-22328i, 1i), vec2<i32>(0i, 0i), vec2<i32>(-20192i, 24132i), vec2<i32>(7566i, -26569i), vec2<i32>(-10523i, -5697i), vec2<i32>(2147483647i, 1i), vec2<i32>(0i, -1i), vec2<i32>(0i, -1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(52569i, -1i), vec2<i32>(0i, 14909i), vec2<i32>(35623i, 2147483647i), vec2<i32>(-70422i, -52747i), vec2<i32>(-7229i, -64358i), vec2<i32>(-13918i, i32(-2147483648)), vec2<i32>(-12583i, -1i), vec2<i32>(2147483647i, 1i), vec2<i32>(584i, 0i), vec2<i32>(-11947i, -9024i), vec2<i32>(-36513i, 0i));

var<private> global2: vec3<u32> = vec3<u32>(15031u, 43258u, 104143u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<i32>) -> f32 {
    var var_0 = vec3<bool>(select(any(!vec4<bool>(arg_1.a.b.x, false, arg_1.a.b.x, true)), all(!(!arg_1.a.b)), !arg_1.a.b.x), false, false);
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(arg_1.a.a, _wgslsmith_f_op_f32(max(arg_0.x, -1657f))), select(!select(arg_1.a.b, vec2<bool>(arg_1.a.b.x, false), true), vec2<bool>(arg_0.x <= arg_1.a.a, arg_1.a.b.x), select(vec2<bool>(true, true), !vec2<bool>(arg_1.a.b.x, var_0.x), arg_1.a.b.x))));
    return _wgslsmith_f_op_f32(var_1.a.a + -2314f);
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-588f + -741f), -539f, -1000f, _wgslsmith_f_op_f32(func_3(vec2<f32>(270f, 1321f), Struct_2(Struct_1(-609f, vec2<bool>(true, false))), global1[_wgslsmith_index_u32(0u, 26u)]))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(2199f, 1269f, -981f, 1075f) * vec4<f32>(994f, 618f, -1039f, 1215f))))), vec4<f32>(590f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-863f, 881f))), _wgslsmith_f_op_f32(f32(-1f) * -1390f), 1183f))), select(vec4<bool>(true, true, false, all(vec4<bool>(true, true, true, true))), vec4<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true, !any(vec4<bool>(true, true, true, false))), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    global2 = min(vec3<u32>(~10655u, ~global2.x, 21932u), vec3<u32>(abs(~32039u), _wgslsmith_div_u32(~4215u ^ ~global2.x, 38614u), 1u & _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 1u, global2.x), vec3<u32>(global2.x, 66338u, 35105u))));
    let var_1 = _wgslsmith_clamp_u32(global2.x, ~reverseBits(1u), global2.x);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-265f - -1048f), vec2<bool>(true, true));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.a))), var_2.a)), var_2.b);
    return all(!select(!select(vec3<bool>(var_3.b.x, true, true), vec3<bool>(true, false, true), vec3<bool>(var_2.b.x, true, var_3.b.x)), select(vec3<bool>(false, var_3.b.x, var_2.b.x), select(vec3<bool>(var_2.b.x, true, var_3.b.x), vec3<bool>(var_3.b.x, true, var_2.b.x), true), select(vec3<bool>(false, false, var_3.b.x), vec3<bool>(var_2.b.x, var_3.b.x, false), vec3<bool>(false, true, var_2.b.x))), var_2.b.x));
}

fn func_1() -> i32 {
    var var_0 = Struct_2(Struct_1(-333f, vec2<bool>(func_2(), any(vec4<bool>(true, true, false, true)))));
    let var_1 = var_0.a.b;
    global2 = abs(~(~(~(~vec3<u32>(global2.x, global2.x, global2.x)))));
    var_0 = Struct_2(var_0.a);
    var var_2 = Struct_2(var_0.a);
    return -18980i;
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: f32, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(arg_2, select(vec2<bool>(any(!vec3<bool>(arg_1, false, arg_1)), arg_1 | select(arg_1, arg_1, true)), !vec2<bool>(arg_1, !arg_1), !vec2<bool>(28281i <= arg_3.x, true)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(405f, _wgslsmith_f_op_f32(round(-662f)))), -231f), vec2<bool>(1u != _wgslsmith_div_u32(global2.x, 60467u), _wgslsmith_f_op_f32(-1061f + -2102f) < var_0.a)));
    let var_2 = Struct_2(Struct_1(-1000f, !select(vec2<bool>(var_0.b.x, var_0.b.x), var_1.a.b, select(var_1.a.b, vec2<bool>(false, true), true))));
    let var_3 = vec4<i32>(21594i << (1u % 32u), select(abs(10401i), _wgslsmith_sub_i32(1i, ~min(u_input.a, arg_3.x)), any(select(vec4<bool>(var_0.b.x, true, false, var_0.b.x), !vec4<bool>(arg_1, true, var_0.b.x, arg_1), var_0.b.x & var_0.b.x))), max(countOneBits(_wgslsmith_mult_i32(0i, ~u_input.a)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(global2.x, 26u)], vec2<i32>(0i, arg_3.x)), arg_0.x)), arg_0.x);
    let var_4 = Struct_2(var_1.a);
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -382f), !select(select(vec2<bool>(var_4.a.b.x, var_1.a.b.x), vec2<bool>(false, var_4.a.b.x), true), var_2.a.b, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(reverseBits(-vec4<i32>(u_input.a, -u_input.a, 12361i >> (global2.x % 32u), u_input.a)), all(!vec2<bool>(true, global2.x == 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1205f, -644f) + -601f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -283f)))), ~vec4<i32>(func_1() ^ ~u_input.a, firstTrailingBit(u_input.a), ~u_input.a, -_wgslsmith_div_i32(-1i, u_input.a)));
    global0 = var_0.b.x;
    var var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~(-12543i), u_input.a, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -17243i, abs(0i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(u_input.a, 14919i, -10782i))), vec3<i32>(~(-23907i), u_input.a, 0i))), u_input.a << (global2.x % 32u));
    let var_2 = -_wgslsmith_sub_vec3_i32(vec3<i32>(-(~var_1.x), 2147483647i, abs(-var_1.x)), vec3<i32>(var_1.x, func_1(), u_input.a));
    let var_3 = min(~_wgslsmith_dot_vec4_u32(~vec4<u32>(global2.x, global2.x, global2.x, global2.x) | vec4<u32>(53552u, global2.x, global2.x, global2.x), ~vec4<u32>(4294967295u, global2.x, global2.x, 0u) >> (vec4<u32>(44729u, global2.x, 1u, global2.x) % vec4<u32>(32u))), _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(42606u, global2.x, 25560u, 48387u), ~vec4<u32>(28618u, 4294967295u, 48226u, global2.x)), global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_div_u32(1u, 22348u), ~110705u, max(global2.x, min(~1u, ~global2.x))));
}

