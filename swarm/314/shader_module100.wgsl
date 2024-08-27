struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<bool>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_1(vec4<i32>(0i, 0i, -21989i, -24548i), 0i, vec3<bool>(false, true, false), 18823u, i32(-2147483648))), Struct_3(Struct_1(vec4<i32>(2147483647i, 2147483647i, -16526i, 81996i), -1i, vec3<bool>(true, true, false), 36934u, -51944i)), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 1i), 10981i, vec3<bool>(true, false, false), 9199u, 2147483647i)), Struct_3(Struct_1(vec4<i32>(0i, 29592i, 0i, -51911i), i32(-2147483648), vec3<bool>(true, true, true), 6907u, 1i)), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -13241i, -1i), i32(-2147483648), vec3<bool>(true, false, false), 1u, 0i)), Struct_3(Struct_1(vec4<i32>(-1i, -1i, 0i, -1i), 0i, vec3<bool>(true, false, true), 89015u, -1278i)), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), -3388i, -22420i, 25771i), -5865i, vec3<bool>(true, false, true), 8477u, -13205i)), Struct_3(Struct_1(vec4<i32>(5146i, 2147483647i, -48463i, 14461i), -19418i, vec3<bool>(false, false, true), 44736u, 1i)), Struct_3(Struct_1(vec4<i32>(-8131i, 2147483647i, 1i, -16365i), 1i, vec3<bool>(false, true, true), 1u, -12235i)), Struct_3(Struct_1(vec4<i32>(38178i, 25966i, -33201i, 20262i), -1i, vec3<bool>(false, false, true), 60871u, 27665i)), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), -55939i, 2147483647i, i32(-2147483648)), 1i, vec3<bool>(true, false, false), 37675u, -1i)), Struct_3(Struct_1(vec4<i32>(23806i, 1i, 1i, 1i), 0i, vec3<bool>(false, false, false), 1u, 2147483647i)), Struct_3(Struct_1(vec4<i32>(-36821i, 1i, -1i, 1i), 0i, vec3<bool>(true, true, true), 37291u, -28924i)), Struct_3(Struct_1(vec4<i32>(-11070i, 1i, 36925i, 46146i), -29199i, vec3<bool>(false, false, true), 1u, i32(-2147483648))), Struct_3(Struct_1(vec4<i32>(2147483647i, 16833i, 17580i, -46508i), -1i, vec3<bool>(true, false, true), 1u, i32(-2147483648))), Struct_3(Struct_1(vec4<i32>(-26837i, 43194i, 4158i, -20134i), 1i, vec3<bool>(true, false, true), 1u, 21044i)), Struct_3(Struct_1(vec4<i32>(29685i, 2147483647i, 44460i, 2147483647i), 10849i, vec3<bool>(true, false, true), 1u, 9741i)), Struct_3(Struct_1(vec4<i32>(-21687i, -6150i, i32(-2147483648), 24236i), -2411i, vec3<bool>(false, true, false), 21539u, 25287i)), Struct_3(Struct_1(vec4<i32>(-3489i, 0i, 46224i, 0i), 1i, vec3<bool>(false, true, true), 24876u, 11361i)), Struct_3(Struct_1(vec4<i32>(7058i, i32(-2147483648), i32(-2147483648), -1i), 44174i, vec3<bool>(false, false, true), 28635u, -3014i)), Struct_3(Struct_1(vec4<i32>(0i, 0i, 28304i, 2147483647i), -1i, vec3<bool>(true, false, true), 17860u, 1i)), Struct_3(Struct_1(vec4<i32>(2147483647i, 6086i, 0i, -1i), i32(-2147483648), vec3<bool>(false, true, false), 22262u, 0i)));

var<private> global1: array<f32, 29>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: u32) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(arg_1, 22u)];
    global0 = array<Struct_3, 22>();
    global1 = array<f32, 29>();
    let var_1 = false;
    let var_2 = Struct_5(_wgslsmith_div_i32(min(~u_input.b, firstLeadingBit(-1i)), select(-2147483647i, -1i, true)) ^ ~abs(_wgslsmith_div_i32(var_0.a.b, u_input.b)));
    return arg_0;
}

fn func_2() -> vec4<u32> {
    global0 = array<Struct_3, 22>();
    var var_0 = ~vec4<u32>(~(u_input.a.x << (u_input.a.x % 32u)) << (u_input.c.x % 32u), 42219u, u_input.a.x, ~(~0u) << (0u % 32u));
    global1 = array<f32, 29>();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 29u)] + -533f)))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~var_0.x, 29u)])) - vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(47113u, 29u)], 37245u)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.x, 29u)] - 1060f)))));
    let var_2 = all(!(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))));
    return reverseBits(select(~vec4<u32>(var_0.x, 1799u | u_input.a.x, _wgslsmith_mod_u32(39220u, u_input.a.x), firstLeadingBit(var_0.x)), ~max(abs(vec4<u32>(4294967295u, var_0.x, u_input.a.x, 4294967295u)), ~vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.a.x)), true));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: vec4<bool>) -> vec3<bool> {
    let var_0 = ~u_input.b;
    var var_1 = true;
    var var_2 = arg_2.yz;
    var var_3 = abs(countOneBits(min(func_2(), ~vec4<u32>(14761u, u_input.a.x, 1u, 1u)) & vec4<u32>(50004u, arg_1.x, firstTrailingBit(arg_1.x), u_input.a.x)));
    let var_4 = select(!all(vec4<bool>(all(vec2<bool>(true, var_2.x)), false, true, select(true, var_2.x, arg_2.x))), var_2.x, false);
    return arg_2.xxx;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 22>();
    let var_0 = Struct_1(abs(-vec4<i32>(2147483647i, 20155i, u_input.b, -44996i) & (firstLeadingBit(vec4<i32>(-2147483647i, u_input.b, 35985i, 22431i)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, 54715u), vec4<u32>(u_input.c.x, 84971u, u_input.a.x, 0u)) % vec4<u32>(32u)))), _wgslsmith_mod_i32(-_wgslsmith_sub_i32(~29431i, 24232i), i32(-1i) * -1i), select(func_1(_wgslsmith_div_f32(-630f, _wgslsmith_f_op_f32(round(-368f))), ~u_input.a, vec4<bool>(true, u_input.b <= -26951i, false, all(vec2<bool>(false, false)))), select(vec3<bool>(all(vec2<bool>(false, true)), true, true), vec3<bool>(1u >= u_input.c.x, u_input.c.x < u_input.a.x, false), select(true, true, false) || all(vec2<bool>(true, false))), select(select(func_1(global1[_wgslsmith_index_u32(66185u, 29u)], u_input.a, vec4<bool>(false, false, false, true)), vec3<bool>(true, true, true), u_input.c.x == u_input.c.x), vec3<bool>(true, any(vec3<bool>(false, false, true)), true), vec3<bool>(all(vec3<bool>(true, true, true)), true, true))), ~17235u ^ ~firstLeadingBit(u_input.c.x & 0u), ~0i);
    let var_1 = Struct_3(var_0);
    let var_2 = select(vec4<bool>(~firstTrailingBit(-27120i) >= -var_1.a.a.x, var_0.c.x, true, global1[_wgslsmith_index_u32(var_1.a.d << (~0u % 32u), 29u)] >= 1652f), !(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(76080u, 29u)] < global1[_wgslsmith_index_u32(var_1.a.d, 29u)], all(vec3<bool>(true, var_1.a.c.x, true)))), all(select(!var_0.c, vec3<bool>(false, all(vec2<bool>(true, false)), var_0.c.x), var_1.a.c.x)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2207f * -2875f))), 0u ^ var_0.d);
    global1 = array<f32, 29>();
    let var_4 = select(-max(max(min(u_input.b, var_1.a.a.x), ~(-2147483647i)), i32(-1i) * -29964i), var_0.a.x, var_1.a.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_3.a, _wgslsmith_f_op_f32(-736f + global1[_wgslsmith_index_u32(var_3.b, 29u)])), countOneBits(firstLeadingBit(vec3<i32>(-var_1.a.b, 5518i, -27847i))), _wgslsmith_mult_vec2_u32(~(~u_input.c), u_input.a.yy) << (_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(var_0.d, u_input.a.x)), vec2<u32>(1u, 16393u), (u_input.c & u_input.c) >> (~u_input.a.yz % vec2<u32>(32u))) % vec2<u32>(32u)), var_4, countOneBits(_wgslsmith_mod_u32(1u, ~var_3.b)));
}

