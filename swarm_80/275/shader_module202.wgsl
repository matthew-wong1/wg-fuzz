struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global1: vec2<f32>;

var<private> global2: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(16376u, 4294967295u, 63805u, 4294967295u), vec4<u32>(4294967295u, 31831u, 3361u, 4294967295u), vec4<u32>(1u, 4294967295u, 20758u, 0u), vec4<u32>(25968u, 4294967295u, 1u, 47962u), vec4<u32>(1u, 28374u, 0u, 41248u));

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(4294967295u, vec2<f32>(677f, 1076f)), Struct_1(1u, vec2<f32>(-2943f, 183f)), Struct_1(45911u, vec2<f32>(490f, 1838f)), Struct_1(0u, vec2<f32>(223f, 1687f)), Struct_1(71352u, vec2<f32>(-699f, 1000f)), Struct_1(0u, vec2<f32>(2263f, 1351f)), Struct_1(26402u, vec2<f32>(-270f, 2262f)), Struct_1(4294967295u, vec2<f32>(1312f, -1371f)), Struct_1(7731u, vec2<f32>(-155f, -505f)), Struct_1(1u, vec2<f32>(1000f, -654f)), Struct_1(5186u, vec2<f32>(-389f, -1532f)), Struct_1(2208u, vec2<f32>(1149f, 977f)), Struct_1(4294967295u, vec2<f32>(170f, -2256f)), Struct_1(31925u, vec2<f32>(-248f, 961f)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global3 = array<Struct_1, 14>();
    global0 = array<vec2<bool>, 31>();
    let var_0 = arg_0;
    global3 = array<Struct_1, 14>();
    let var_1 = _wgslsmith_dot_vec2_u32(abs(~firstLeadingBit(vec2<u32>(arg_0.a, arg_0.a))), max(vec2<u32>(~14187u, ~43450u), vec2<u32>(~1u, 57404u)) >> (abs(vec2<u32>(0u, var_0.a)) % vec2<u32>(32u)));
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: u32) -> vec3<u32> {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(reverseBits(~(vec2<u32>(arg_0.a, u_input.b.x) ^ u_input.b.wx)), vec2<u32>(_wgslsmith_div_u32(0u, u_input.b.x) >> (~u_input.b.x % 32u), u_input.b.x)), firstLeadingBit(vec2<u32>(arg_0.a, 11262u)), vec2<u32>(u_input.b.x, firstLeadingBit(firstLeadingBit(arg_3 | u_input.b.x))));
    var var_2 = select(select(select(select(!vec3<bool>(false, arg_1, true), !vec3<bool>(true, false, arg_1), !vec3<bool>(arg_1, false, true)), !select(vec3<bool>(true, arg_1, false), vec3<bool>(arg_1, true, false), vec3<bool>(true, false, arg_1)), any(vec3<bool>(true, true, true))), !vec3<bool>(all(vec4<bool>(false, true, arg_1, false)), all(vec4<bool>(arg_1, arg_1, false, arg_1)), arg_1), arg_1), vec3<bool>(arg_0.b.x >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-global1.x)), false, all(!(!vec4<bool>(arg_1, true, false, true)))), vec3<bool>(!(select(5715u, arg_3, true) < var_1.x), all(global0[_wgslsmith_index_u32(max(min(u_input.b.x, 1u), 25690u), 31u)]), all(vec4<bool>(any(vec2<bool>(false, true)), arg_0.b.x < -1121f, true, all(vec3<bool>(true, true, arg_1))))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-209f + _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(arg_0.b.x - 870f))))));
    let var_3 = Struct_1(arg_0.a, vec2<f32>(1f, 1f));
    return vec3<u32>(min(~(75647u & abs(var_1.x)), 1243u), 21452u, arg_0.a);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - 1087f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.b.x)))))), 372f, global1.x);
    let var_1 = global3[_wgslsmith_index_u32(~arg_0.x << (arg_1.a % 32u), 14u)];
    var var_2 = func_2(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~func_3(Struct_1(0u, vec2<f32>(var_0.x, arg_1.b.x)), true, 1000f, arg_2.x).x | countOneBits(arg_1.a), u_input.b.x), 14u)], !vec3<bool>(false, select(false, true, all(vec3<bool>(false, true, false))), true), false, global3[_wgslsmith_index_u32(~arg_2.x, 14u)]);
    global0 = array<vec2<bool>, 31>();
    var var_3 = Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, 932f)))))));
    return _wgslsmith_mod_u32(1u | abs(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(arg_2, arg_0), abs(u_input.b.x))), 1u);
}

fn func_1() -> Struct_1 {
    global2 = array<vec4<u32>, 5>();
    let var_0 = global3[_wgslsmith_index_u32(reverseBits(~(~u_input.b.x)), 14u)];
    var var_1 = ~(~func_4(func_3(func_2(Struct_1(var_0.a, vec2<f32>(var_0.b.x, var_0.b.x)), vec3<bool>(true, true, false), true, Struct_1(var_0.a, var_0.b)), false, _wgslsmith_f_op_f32(-1106f + var_0.b.x), 12374u), func_2(Struct_1(38988u, var_0.b), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), 64874u < u_input.b.x, Struct_1(var_0.a, vec2<f32>(var_0.b.x, 1385f))), ~min(u_input.b.yxy, vec3<u32>(var_0.a, 4294967295u, 31116u))));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~52264u, _wgslsmith_mult_u32(15323u, var_0.a)), 14u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -541f, var_2.b.x) * vec3<f32>(global1.x, -1605f, var_0.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-234f, 399f, var_0.b.x))), vec3<f32>(_wgslsmith_div_f32(375f, -189f), global1.x, global1.x)))));
    return func_2(Struct_1(_wgslsmith_dot_vec3_u32(abs(~u_input.b.zzz), ~vec3<u32>(u_input.b.x, var_2.a, 0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_2.b, vec2<f32>(-621f, 173f))), vec2<f32>(-556f, global1.x)))), !vec3<bool>(select(all(vec2<bool>(true, true)), true, true), true, any(select(global0[_wgslsmith_index_u32(59550u, 31u)], vec2<bool>(false, false), true))), true, func_2(global3[_wgslsmith_index_u32(select(5612u, min(65849u, ~var_0.a), true), 14u)], !vec3<bool>(false, var_2.a != u_input.b.x, true), true, Struct_1(func_2(func_2(global3[_wgslsmith_index_u32(0u, 14u)], vec3<bool>(false, false, false), false, global3[_wgslsmith_index_u32(4294967295u, 14u)]), vec3<bool>(true, true, true), all(global0[_wgslsmith_index_u32(1u, 31u)]), Struct_1(71785u, var_2.b)).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_3.xy)) - _wgslsmith_f_op_vec2_f32(abs(var_3.yz))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -649f), -880f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * global1.x) + _wgslsmith_f_op_f32(round(-1204f)))))));
    var var_2 = func_1();
    let var_3 = Struct_1(~select(~min(1u, 85461u), u_input.b.x ^ func_2(global3[_wgslsmith_index_u32(var_0, 14u)], vec3<bool>(false, true, false), true, Struct_1(var_2.a, var_1)).a, global1.x <= _wgslsmith_div_f32(var_2.b.x, var_1.x)), var_1);
    let var_4 = any(vec2<bool>(all(vec2<bool>(true, true)), true));
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, u_input.a.x);
}

