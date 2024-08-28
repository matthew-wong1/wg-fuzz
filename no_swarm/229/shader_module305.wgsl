struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(0u, Struct_2(vec2<i32>(2147483647i, -59605i)), Struct_2(vec2<i32>(25387i, 29267i))), Struct_4(1u, Struct_2(vec2<i32>(18410i, 14469i)), Struct_2(vec2<i32>(-1i, 0i))));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> bool {
    let var_0 = min(~_wgslsmith_mod_u32(48352u, _wgslsmith_clamp_u32(~77675u, _wgslsmith_div_u32(10524u, 1u), ~46941u)), 0u);
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> u32 {
    var var_0 = Struct_4(firstLeadingBit(reverseBits(8217u)), Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(21261i, arg_3) >> (~vec2<u32>(46496u, 4294967295u) % vec2<u32>(32u)), reverseBits(arg_1.a))), arg_1);
    let var_1 = vec2<f32>(1f, 1f);
    let var_2 = Struct_3(var_0.a);
    return 23651u;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3) -> bool {
    var var_0 = ~abs(arg_0);
    let var_1 = ~arg_1.a;
    var var_2 = global1[_wgslsmith_index_u32(func_4(select(vec3<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)), all(vec3<bool>(true, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true | (u_input.a.x >= u_input.a.x)), !func_3() && true), Struct_2(vec2<i32>(max(_wgslsmith_sub_i32(arg_0.x, 0i), ~(-1i)), -1i)), 4294967295u, u_input.a.x), 2u)];
    let var_3 = Struct_1(76955u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1021f, -1547f, 574f, -1441f), vec4<f32>(2481f, 480f, 1022f, -1381f), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-587f, 171f, -1293f, 802f) + vec4<f32>(1000f, -384f, -1620f, 1070f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(532f, 855f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-269f + -375f)), _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(f32(-1f) * -203f))), u_input.a.zw, ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, 4294967295u) >> (max(vec4<u32>(var_1, var_2.a, arg_1.a, arg_1.a), vec4<u32>(arg_1.a, 1u, arg_1.a, 97959u)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(var_1, var_2.a, var_1, var_2.a), ~vec4<u32>(var_1, 36834u, 26442u, var_1))));
    var var_4 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_3.d.x, _wgslsmith_sub_u32(arg_1.a, firstTrailingBit(_wgslsmith_sub_u32(var_2.a, var_2.a)))), 2u)];
    return any(!(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true))));
}

fn func_1() -> Struct_4 {
    global0 = all(select(vec4<bool>(false, all(vec4<bool>(false, false, true, false)), all(vec4<bool>(true, true, true, true)), !all(vec3<bool>(true, true, true))), select(vec4<bool>(false, true, any(vec4<bool>(false, true, false, false)), all(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x) != -26451i), select(vec4<bool>(true, true, u_input.a.x != 1i, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), true))));
    global1 = array<Struct_4, 2>();
    var var_0 = !select(select(vec3<bool>(all(vec3<bool>(true, true, true)), true, func_2(vec4<i32>(u_input.a.x, 8628i, 69051i, -6857i), Struct_3(17719u))), vec3<bool>(func_2(u_input.a, Struct_3(10556u)), true, true), vec3<bool>(true, true, true)), !vec3<bool>(any(vec3<bool>(true, true, false)), 0i <= u_input.a.x, false), vec3<bool>(any(vec3<bool>(true, true, true)), true, true));
    global0 = true;
    let var_1 = Struct_2(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.ww, reverseBits(_wgslsmith_clamp_vec2_i32(u_input.a.ww, u_input.a.yy, u_input.a.zy))), vec2<i32>(min(firstLeadingBit(u_input.a.x), u_input.a.x), 1i)));
    return global1[_wgslsmith_index_u32(~(firstTrailingBit(_wgslsmith_mult_u32(firstLeadingBit(4294967295u), ~0u)) | _wgslsmith_mult_u32(max(1u, 1u), 1u)), 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_5(func_1(), Struct_4(4294967295u, Struct_2(countOneBits(vec2<i32>(6696i, u_input.a.x))), Struct_2(vec2<i32>(var_0.b.a.x, u_input.a.x))), var_0.c, vec4<bool>(~0u == _wgslsmith_mod_u32(var_0.a, var_0.a), false || !any(vec3<bool>(true, true, true)), true && select(true, true, true), true));
    global0 = true;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(206f, -1113f))), _wgslsmith_f_op_f32(select(-1216f, _wgslsmith_f_op_f32(-650f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(108f)))), var_1.d.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1004f)))))), 734f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))))));
    var var_3 = Struct_3(max(abs(4604u), var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.c.a << (~countOneBits(vec2<u32>(var_0.a, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1467f)), var_1.b.c.a.x);
}

