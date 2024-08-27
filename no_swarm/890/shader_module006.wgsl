struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(-1i, vec3<bool>(false, true, false), Struct_1(vec2<i32>(-27102i, -11096i), vec2<i32>(-42762i, -4628i), true, vec3<i32>(-78954i, -69186i, 2147483647i))), Struct_3(4912i, vec3<bool>(false, true, true), Struct_1(vec2<i32>(831i, i32(-2147483648)), vec2<i32>(2147483647i, -48043i), false, vec3<i32>(1i, 24524i, -1553i))), Struct_3(i32(-2147483648), vec3<bool>(true, false, false), Struct_1(vec2<i32>(62973i, -27434i), vec2<i32>(2147483647i, -53335i), false, vec3<i32>(38558i, 2147483647i, 21626i))), Struct_3(16874i, vec3<bool>(false, false, false), Struct_1(vec2<i32>(i32(-2147483648), 4157i), vec2<i32>(-1i, 1i), false, vec3<i32>(2147483647i, -17383i, 5060i))), Struct_3(1974i, vec3<bool>(false, true, true), Struct_1(vec2<i32>(-6562i, -29913i), vec2<i32>(11469i, -1i), false, vec3<i32>(62094i, 1i, i32(-2147483648)))), Struct_3(0i, vec3<bool>(true, false, true), Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 27208i), true, vec3<i32>(-38061i, 1i, i32(-2147483648)))), Struct_3(i32(-2147483648), vec3<bool>(true, false, true), Struct_1(vec2<i32>(5214i, 0i), vec2<i32>(-55333i, -1i), true, vec3<i32>(17289i, i32(-2147483648), 1i))), Struct_3(33305i, vec3<bool>(true, true, true), Struct_1(vec2<i32>(-22386i, i32(-2147483648)), vec2<i32>(3128i, 2147483647i), true, vec3<i32>(2147483647i, -54068i, 0i))), Struct_3(i32(-2147483648), vec3<bool>(true, true, false), Struct_1(vec2<i32>(20575i, -29197i), vec2<i32>(2147483647i, 1i), true, vec3<i32>(-1i, -1i, 28676i))), Struct_3(55923i, vec3<bool>(false, false, false), Struct_1(vec2<i32>(0i, 2147483647i), vec2<i32>(0i, i32(-2147483648)), true, vec3<i32>(0i, 15495i, i32(-2147483648)))), Struct_3(2147483647i, vec3<bool>(true, true, true), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec2<i32>(7284i, 0i), false, vec3<i32>(1i, -1i, 0i))), Struct_3(-1i, vec3<bool>(false, false, true), Struct_1(vec2<i32>(22272i, -1i), vec2<i32>(1277i, 19982i), true, vec3<i32>(-2712i, i32(-2147483648), 1i))), Struct_3(-10274i, vec3<bool>(true, false, true), Struct_1(vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, i32(-2147483648)), true, vec3<i32>(-32066i, 2147483647i, -18463i))), Struct_3(-1i, vec3<bool>(false, true, false), Struct_1(vec2<i32>(110374i, 0i), vec2<i32>(-1i, 49916i), false, vec3<i32>(-15763i, -1i, 10681i))), Struct_3(i32(-2147483648), vec3<bool>(false, false, true), Struct_1(vec2<i32>(-1i, 1i), vec2<i32>(0i, 2147483647i), true, vec3<i32>(0i, -22207i, -1i))), Struct_3(1i, vec3<bool>(false, false, false), Struct_1(vec2<i32>(-1i, -20372i), vec2<i32>(-28959i, 16165i), false, vec3<i32>(10413i, -18949i, 2147483647i))), Struct_3(0i, vec3<bool>(false, true, false), Struct_1(vec2<i32>(-1706i, -29759i), vec2<i32>(i32(-2147483648), i32(-2147483648)), false, vec3<i32>(13478i, -20796i, 0i))), Struct_3(0i, vec3<bool>(true, false, false), Struct_1(vec2<i32>(-1i, 0i), vec2<i32>(-794i, i32(-2147483648)), true, vec3<i32>(-49657i, -1i, 967i))), Struct_3(1i, vec3<bool>(false, false, false), Struct_1(vec2<i32>(16393i, 38861i), vec2<i32>(i32(-2147483648), 111390i), true, vec3<i32>(7427i, 2125i, 0i))));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(floor(-199f));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(763f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1110f, -1541f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1352f)) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-734f, -327f)))), -1360f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-730f, 1000f, false)) * _wgslsmith_f_op_f32(trunc(-990f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-919f)) - _wgslsmith_f_op_f32(538f * -742f)))));
    var var_2 = vec2<i32>(-40750i, 1i) << (_wgslsmith_clamp_vec2_u32(u_input.a, firstLeadingBit(vec2<u32>(u_input.d, u_input.d)) ^ ~select(u_input.a, u_input.a, vec2<bool>(false, true)), ~(~select(vec2<u32>(u_input.d, 78253u), u_input.a, vec2<bool>(true, true)))) % vec2<u32>(32u));
    let var_3 = firstTrailingBit(~(~abs(var_2.x))) > select(12541i, -2147483647i, select(true, true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, -1099f, var_1.x, _wgslsmith_f_op_f32(-var_1.x)))));
    return vec2<bool>(true, select(true, all(vec2<bool>(var_3, var_3)), any(vec2<bool>(false, false))) & var_3);
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: i32) -> i32 {
    global0 = array<Struct_3, 19>();
    var var_0 = Struct_4(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1471f, arg_0.x) + arg_0.x), _wgslsmith_div_f32(1437f, _wgslsmith_f_op_f32(f32(-1f) * -973f)))));
    global0 = array<Struct_3, 19>();
    let var_1 = u_input.a.x;
    var var_2 = Struct_2(u_input.b, var_1, !select(vec2<bool>(all(vec2<bool>(arg_1, arg_1)), 755f == var_0.b), func_3(), !func_3()));
    return -(~44391i);
}

fn func_1() -> Struct_2 {
    var var_0 = ~vec4<u32>(u_input.d, ~u_input.a.x, _wgslsmith_mult_u32(1u << (~u_input.a.x % 32u), ~u_input.d), ~4294967295u);
    let var_1 = vec4<i32>(2147483647i, u_input.c, -(-(~(-66188i)) ^ func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-163f, -219f) * vec2<f32>(991f, -685f)), false, i32(-1i) * -1i)), u_input.b);
    global0 = array<Struct_3, 19>();
    let var_2 = Struct_4(firstLeadingBit(func_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(356f, -377f), vec2<f32>(-573f, -1040f))))), true, 15178i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -302f))), -2925f)));
    let var_3 = Struct_4(-_wgslsmith_dot_vec2_i32(var_1.wz, var_1.yx) ^ 0i, -490f);
    return Struct_2(select(_wgslsmith_mult_i32(var_2.a, max(2147483647i, 32371i) >> (~var_0.x % 32u)), -10577i, true), _wgslsmith_div_u32(108550u, _wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_add_u32(var_0.x, 4294967295u)), 1u)), select(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 19>();
    let var_0 = func_1();
    var var_1 = vec4<bool>(var_0.c.x, var_0.c.x, all(select(!(!vec3<bool>(false, true, var_0.c.x)), select(!vec3<bool>(var_0.c.x, var_0.c.x, true), !vec3<bool>(false, var_0.c.x, var_0.c.x), var_0.c.x), true)), var_0.c.x);
    let var_2 = Struct_2(-(~_wgslsmith_mod_i32(0i ^ var_0.a, select(u_input.b, var_0.a, var_1.x))), _wgslsmith_div_u32(var_0.b, ~abs(var_0.b)), var_0.c);
    var var_3 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, u_input.b, 1i, -46961i), vec4<i32>(2147483647i, -7502i, var_2.a, var_2.a)), 55394i, var_2.a, firstLeadingBit(-u_input.b)), -vec4<i32>(u_input.b, u_input.c, ~(-18526i), 2751i)));
}

