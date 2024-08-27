struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(22712u, 72744u, 1u, 4294967295u), vec4<u32>(21689u, 0u, 4294967295u, 3305u), vec4<u32>(35102u, 0u, 2558u, 1u), vec4<u32>(47545u, 1u, 29136u, 72071u), vec4<u32>(25112u, 56731u, 4294967295u, 4294967295u), vec4<u32>(0u, 22261u, 4294967295u, 0u), vec4<u32>(52644u, 11880u, 11163u, 0u), vec4<u32>(12467u, 4294967295u, 1u, 1u), vec4<u32>(17252u, 10231u, 36037u, 1u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 1u, 1u, 100536u), vec4<u32>(1u, 6691u, 0u, 150u), vec4<u32>(4294967295u, 35270u, 53941u, 4294967295u), vec4<u32>(0u, 53928u, 4294967295u, 0u), vec4<u32>(0u, 41060u, 4294967295u, 4294967295u), vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(107529u, 1u, 8176u, 55534u), vec4<u32>(110689u, 4294967295u, 1u, 0u), vec4<u32>(0u, 30955u, 12873u, 42276u), vec4<u32>(3647u, 1u, 4294967295u, 25374u), vec4<u32>(48407u, 0u, 0u, 30815u), vec4<u32>(1u, 99701u, 23220u, 0u), vec4<u32>(11754u, 21608u, 0u, 2302u), vec4<u32>(0u, 29893u, 0u, 1u), vec4<u32>(51318u, 7947u, 15491u, 27932u), vec4<u32>(0u, 32083u, 40157u, 4294967295u), vec4<u32>(4294967295u, 0u, 55688u, 64711u), vec4<u32>(48357u, 28371u, 17976u, 64348u));

var<private> global1: i32 = i32(-2147483648);

var<private> global2: vec3<f32> = vec3<f32>(-312f, -1608f, -517f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    var var_0 = arg_2.a.xx;
    var_0 = !select(arg_2.a.zy, !select(select(vec2<bool>(arg_2.a.x, arg_1.x), arg_2.a.xx, vec2<bool>(arg_1.x, false)), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, arg_1.x)), var_0.x);
    global1 = 1i;
    var var_1 = arg_3;
    var_0 = vec2<bool>(true, false);
    return global2.x;
}

fn func_3() -> f32 {
    let var_0 = u_input.c.x;
    var var_1 = any(select(select(vec3<bool>(any(vec3<bool>(false, true, false)), true, true), vec3<bool>(true, true, true), all(select(vec2<bool>(false, true), vec2<bool>(false, false), true))), !select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), true));
    var var_2 = Struct_1(countOneBits(_wgslsmith_mod_u32(~4294967295u, u_input.b)));
    global1 = countOneBits(~firstLeadingBit(var_0 << (var_2.a % 32u))) << (u_input.b % 32u);
    var var_3 = Struct_2(select(vec3<bool>(true, any(vec4<bool>(true, true, true, true)), !(0u > u_input.b)), vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), (u_input.c.x < -1i) == true, true), true), Struct_1(_wgslsmith_dot_vec4_u32(~(~global0[_wgslsmith_index_u32(6389u, 28u)]), vec4<u32>(~u_input.a, ~25258u, 4294967295u & u_input.b, reverseBits(101165u)))), Struct_1(u_input.a), Struct_1(~4294967295u), u_input.b <= 8924u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec4<u32>, 28>();
    let var_0 = vec3<u32>(countOneBits(u_input.a), ~u_input.a, 1u);
    global1 = _wgslsmith_sub_i32(-2147483647i, _wgslsmith_sub_i32(~reverseBits(u_input.c.x), -1116i));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global2.x, -520f), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(trunc(-564f)), global2.x)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1383f, 1250f, _wgslsmith_f_op_f32(func_2(u_input.c, vec4<bool>(false, false, true, false), Struct_2(vec3<bool>(false, true, false), arg_0, arg_0, Struct_1(0u), false), arg_0)), _wgslsmith_f_op_f32(func_3()))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-773f, global2.x, 575f, 1f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, 993f, global2.x, 1400f))), -17801i == (-5157i << (u_input.a % 32u)))))));
    global0 = array<vec4<u32>, 28>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(_wgslsmith_clamp_u32(0u, firstTrailingBit(64634u << (0u % 32u)), u_input.a)));
    var var_1 = Struct_2(select(select(vec3<bool>(all(vec4<bool>(false, false, false, true)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(false, false, true, true)), true), false), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), true)), func_1(Struct_1(~var_0.a)), Struct_1(firstLeadingBit(u_input.b)), Struct_1(7928u), false);
    var var_2 = global0[_wgslsmith_index_u32(var_0.a, 28u)];
    var_2 = vec4<u32>(countOneBits(4294967295u), 11249u, ~_wgslsmith_clamp_u32(reverseBits(1u), var_0.a, ~(4294967295u << (var_0.a % 32u))), ~4294967295u);
    var_0 = Struct_1(u_input.b ^ firstTrailingBit(~(~0u)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.x)) * -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.x, -1756f, 205f, var_3))), _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, -853f, global2.x, var_3), vec4<f32>(var_3, var_3, global2.x, global2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, 775f, -1478f, 1000f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3, var_3, -691f, 515f))), true)))), vec3<i32>(countOneBits(~u_input.c.x >> (1u % 32u)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1i, 2147483647i, ~u_input.c.x), (i32(-1i) * -2051i) >> (~u_input.b % 32u)), 20735i ^ firstLeadingBit(-u_input.c.x)), -1022f, ~(~79878u), 11858u);
}

