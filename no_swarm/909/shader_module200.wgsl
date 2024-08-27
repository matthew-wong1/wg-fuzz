struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<f32>(1612f, -587f), -258i), 0u);

var<private> global2: bool;

var<private> global3: vec3<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(true, true), all(vec3<bool>(false, all(vec4<bool>(false, false, true, false)), false)));
    let var_1 = min(~_wgslsmith_div_i32(i32(-1i) * -38320i, arg_0.b), arg_0.b);
    global0 = arg_0.a.x;
    let var_2 = min(~firstLeadingBit(arg_0.b), _wgslsmith_mult_i32(-2147483647i, var_1));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.a.a.x, 1227f, arg_0.a.x, arg_0.a.x))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1054f, global1.a.a.x, global1.a.a.x, arg_0.a.x), vec4<f32>(956f, 375f, arg_1.a.a.x, global1.a.a.x)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2028f), 600f, arg_0.a.x, _wgslsmith_f_op_f32(-186f - -392f)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-462f, arg_0.a.x, arg_1.a.a.x, 291f) + vec4<f32>(207f, 1031f, 1054f, -1043f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(730f, global1.a.a.x, arg_1.a.a.x, 956f) - vec4<f32>(-164f, arg_0.a.x, arg_1.a.a.x, arg_1.a.a.x))))))));
    return select(select(!vec4<bool>(any(vec3<bool>(var_0.x, true, var_0.x)), all(vec4<bool>(var_0.x, var_0.x, true, false)), false, true), vec4<bool>(var_0.x, var_3.x == -1000f, true, var_0.x), vec4<bool>(!(!var_0.x), all(!vec3<bool>(true, var_0.x, true)), all(vec3<bool>(false, true, false)), var_0.x)), select(select(!select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, var_0.x), var_0.x), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, true, true), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), var_0.x), !var_0.x), vec4<bool>(true, true, any(!var_0), true), var_0.x), var_0.x);
}

fn func_2() -> Struct_1 {
    var var_0 = !all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))) || !all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), true));
    var var_1 = all(!(!vec4<bool>(true, true, global1.b < 4294967295u, true)));
    let var_2 = !func_3(Struct_1(vec2<f32>(-1000f, 106f), -firstTrailingBit(4837i)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.a.a.x, -223f))), ~u_input.b), 48793u));
    let var_3 = global1.a.a.x;
    var var_4 = vec4<u32>(global1.b >> (_wgslsmith_dot_vec3_u32(vec3<u32>(~65476u, select(global1.b, u_input.a.x, var_2.x), 1u), vec3<u32>(~62853u, global1.b, global1.b)) % 32u), global1.b, min(_wgslsmith_clamp_u32(1u, ~u_input.a.x, 52965u & u_input.a.x) << (~1u % 32u), ~u_input.a.x), 49189u);
    return Struct_1(vec2<f32>(792f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1234f - _wgslsmith_f_op_f32(trunc(global1.a.a.x)))))), global3.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_2 {
    return arg_2;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = true | ((u_input.b & firstTrailingBit(abs(arg_0.b))) == -44714i);
    var_0 = any(select(vec3<bool>(true, arg_0.b > _wgslsmith_add_i32(global1.a.b, arg_0.b), true), vec3<bool>(any(vec4<bool>(true, true, false, true)), true, true), !vec3<bool>(all(vec3<bool>(false, true, true)), u_input.a.x <= 3538u, u_input.a.x < u_input.a.x)));
    var var_1 = func_4(_wgslsmith_f_op_vec2_f32(-global1.a.a), func_2(), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-355f, global1.a.a.x))), -u_input.b | _wgslsmith_dot_vec2_i32(global3.zy, vec2<i32>(0i, u_input.b))), ~firstTrailingBit(firstLeadingBit(global1.b))), ~u_input.a);
    let var_2 = -237f;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(878f)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1.a);
    global3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-75311i, var_0.b, firstTrailingBit(1i)) | ~(vec3<i32>(global1.a.b, global3.x, 46125i) | -vec3<i32>(1i, u_input.b, global3.x)), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(~firstTrailingBit(vec3<i32>(global3.x, 22770i, u_input.b)), abs(select(vec3<i32>(global3.x, var_0.b, u_input.b), vec3<i32>(var_0.b, var_0.b, 0i), vec3<bool>(true, false, true)))), -(~(~vec3<i32>(u_input.b, -2147483647i, -37349i)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(7807i, ~(~u_input.b), _wgslsmith_mod_i32(global1.a.b, -2147483647i)), ~vec3<i32>(-35891i, ~0i, -26793i), _wgslsmith_div_vec3_i32(-vec3<i32>(2147483647i, 19763i, global3.x), min(vec3<i32>(1i, -2147483647i, 1i), ~vec3<i32>(17027i, 0i, u_input.b)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-global1.a.a);
    var var_2 = ~max(~abs(vec2<u32>(u_input.a.x, u_input.a.x) & u_input.a), select(~vec2<u32>(4294967295u, 0u), _wgslsmith_mod_vec2_u32(max(vec2<u32>(global1.b, global1.b), u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 30744u), vec2<u32>(4294967295u, 57616u))), any(vec4<bool>(true, true, true, true))));
    let var_3 = func_3(Struct_1(_wgslsmith_div_vec2_f32(global1.a.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-577f, -761f))) + vec2<f32>(var_0.a.x, 1000f))), func_1(var_0).b), func_4(vec2<f32>(var_0.a.x, global1.a.a.x), global1.a, func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global1.a.a.x)), func_2(), func_4(_wgslsmith_f_op_vec2_f32(abs(var_0.a)), func_1(Struct_1(vec2<f32>(-619f, 875f), var_0.b)), func_4(vec2<f32>(1530f, var_1.x), var_0, Struct_2(var_0, 495u), vec2<u32>(global1.b, var_2.x)), u_input.a), firstTrailingBit(vec2<u32>(global1.b, 83929u)) & u_input.a), vec2<u32>(firstLeadingBit(firstTrailingBit(u_input.a.x)), ~(~var_2.x))));
    global1 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a.a) * vec2<f32>(global1.a.a.x, 715f))))), global1.a, func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1923f, var_0.a.x)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global1.a.a.x), -1000f), ~1i), func_4(vec2<f32>(_wgslsmith_div_f32(-106f, var_1.x), _wgslsmith_f_op_f32(-var_0.a.x)), global1.a, Struct_2(func_2(), 0u), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(global1.b, global1.b) ^ vec2<u32>(0u, global1.b), countOneBits(u_input.a))), ~max(select(u_input.a, u_input.a, var_3.x), min(vec2<u32>(global1.b, 40950u), vec2<u32>(0u, 1u)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(~select(global1.b, 45657u, var_3.x), 1u), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(var_2.x, 0u), var_2.x), 1u), ~_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, global1.b))));
    global2 = !var_3.x;
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * 1952f)));
    global3 = select(firstLeadingBit(~vec3<i32>(global1.a.b, 28648i, var_0.b)), _wgslsmith_sub_vec3_i32(~max(vec3<i32>(-49317i, 1152i, global1.a.b), select(vec3<i32>(-35693i, u_input.b, global3.x), vec3<i32>(global1.a.b, 29305i, 812i), var_3.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b, func_4(var_0.a, Struct_1(vec2<f32>(var_1.x, -647f), var_0.b), Struct_2(Struct_1(global1.a.a, global3.x), u_input.a.x), u_input.a).a.b, global1.a.b ^ global3.x), vec3<i32>(func_2().b, abs(var_0.b), global3.x))), vec3<bool>(-25938i >= global3.x, ~(~global3.x) < min(~global3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-10327i, 5902i, var_0.b, -37780i), vec4<i32>(global3.x, 1i, global3.x, 5771i))), !all(var_3.wwy)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i ^ u_input.b);
}

