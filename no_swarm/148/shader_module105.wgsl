struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(-1542f, vec2<u32>(0u, 18557u), vec4<u32>(1u, 5568u, 57149u, 39012u), 1u, -20079i), Struct_1(-371f, vec2<u32>(64171u, 5650u), vec4<u32>(0u, 4294967295u, 10638u, 13754u), 4294967295u, -1i), Struct_1(1000f, vec2<u32>(0u, 0u), vec4<u32>(0u, 42593u, 0u, 77872u), 29366u, 40858i), Struct_1(-1184f, vec2<u32>(5904u, 4294967295u), vec4<u32>(60718u, 51995u, 1u, 4294967295u), 25003u, 0i), Struct_1(1127f, vec2<u32>(4294967295u, 0u), vec4<u32>(0u, 19632u, 1u, 64134u), 60451u, i32(-2147483648)), Struct_1(-1467f, vec2<u32>(27199u, 0u), vec4<u32>(38646u, 71318u, 8671u, 37420u), 17908u, i32(-2147483648)), Struct_1(1020f, vec2<u32>(40974u, 37377u), vec4<u32>(4294967295u, 33805u, 4294967295u, 32611u), 50062u, -1i), Struct_1(-1055f, vec2<u32>(4294967295u, 92368u), vec4<u32>(4294967295u, 62595u, 107727u, 1u), 0u, i32(-2147483648)), Struct_1(-126f, vec2<u32>(1u, 0u), vec4<u32>(0u, 53264u, 1u, 83463u), 78049u, 66016i), Struct_1(-1398f, vec2<u32>(57586u, 10202u), vec4<u32>(26591u, 40467u, 1u, 4294967295u), 4294967295u, 36722i), Struct_1(-776f, vec2<u32>(4294967295u, 0u), vec4<u32>(56830u, 4294967295u, 4294967295u, 4084u), 19004u, 1i), Struct_1(-1563f, vec2<u32>(52925u, 0u), vec4<u32>(1u, 4294967295u, 1u, 22515u), 19682u, -36584i), Struct_1(1072f, vec2<u32>(4294967295u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 160u), 4294967295u, 4622i), Struct_1(497f, vec2<u32>(4294967295u, 34707u), vec4<u32>(0u, 0u, 9203u, 73674u), 7157u, -1i), Struct_1(-1541f, vec2<u32>(12838u, 115780u), vec4<u32>(0u, 170624u, 1u, 0u), 59054u, -75i), Struct_1(1000f, vec2<u32>(44797u, 4294967295u), vec4<u32>(1u, 12099u, 4294967295u, 1u), 4294967295u, 74710i), Struct_1(-1736f, vec2<u32>(15957u, 33577u), vec4<u32>(13257u, 924u, 0u, 0u), 0u, -4714i), Struct_1(-1129f, vec2<u32>(0u, 40586u), vec4<u32>(51956u, 66644u, 1u, 68096u), 0u, -1i), Struct_1(152f, vec2<u32>(1u, 0u), vec4<u32>(4294967295u, 0u, 15859u, 0u), 1u, -1i), Struct_1(1505f, vec2<u32>(15419u, 21120u), vec4<u32>(53171u, 45695u, 4294967295u, 0u), 31182u, -1256i), Struct_1(-485f, vec2<u32>(1u, 0u), vec4<u32>(1u, 1u, 4294967295u, 56396u), 1u, -25515i), Struct_1(-990f, vec2<u32>(57072u, 0u), vec4<u32>(0u, 12411u, 4294967295u, 1u), 16960u, 1i), Struct_1(764f, vec2<u32>(8777u, 1u), vec4<u32>(1u, 65601u, 38256u, 4294967295u), 9218u, 2147483647i), Struct_1(919f, vec2<u32>(4294967295u, 24055u), vec4<u32>(0u, 56510u, 0u, 107926u), 1u, -51030i), Struct_1(-1206f, vec2<u32>(0u, 1u), vec4<u32>(1u, 1u, 1u, 54463u), 52485u, 1i), Struct_1(-594f, vec2<u32>(11172u, 4294967295u), vec4<u32>(58848u, 4294967295u, 1u, 1u), 1u, 15460i), Struct_1(-790f, vec2<u32>(4294967295u, 1u), vec4<u32>(6438u, 73341u, 0u, 76971u), 1u, -34260i), Struct_1(-2015f, vec2<u32>(0u, 30364u), vec4<u32>(4294967295u, 0u, 1u, 47767u), 1u, 1i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1235f)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(814f, arg_0.a), vec2<f32>(_wgslsmith_f_op_f32(round(arg_0.a)), _wgslsmith_f_op_f32(ceil(-1117f)))))))));
    global0 = array<Struct_1, 28>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(3401f))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: u32) -> u32 {
    let var_0 = Struct_2(u_input.c != abs(-25940i));
    var var_1 = u_input.c;
    var var_2 = global0[_wgslsmith_index_u32(arg_2, 28u)];
    let var_3 = ~u_input.d.xz;
    var_2 = Struct_1(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(select(_wgslsmith_div_u32(~63486u, _wgslsmith_add_u32(1u, var_3.x)), _wgslsmith_clamp_u32(8779u, 1u, ~4294967295u), true), 28u)], firstTrailingBit(vec3<i32>(1i, 1i, 1i)))), var_3, vec4<u32>(u_input.d.x, min(var_3.x, _wgslsmith_clamp_u32(arg_2, arg_2, ~9669u)), 1u, 94810u << (u_input.d.x % 32u)), ~var_3.x, var_2.e);
    return arg_2;
}

fn func_1() -> Struct_2 {
    let var_0 = 1i;
    let var_1 = vec3<u32>(u_input.a.x, ~select(~u_input.d.x, ~1u, any(vec2<bool>(false, true)) & true), ~(~_wgslsmith_mult_u32(u_input.d.x, _wgslsmith_div_u32(0u, 13266u))));
    let var_2 = vec3<u32>(abs(0u), 1u, func_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(891f * 1748f), -532f), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-872f)) - _wgslsmith_f_op_f32(-200f + -1133f)), _wgslsmith_f_op_f32(ceil(-840f))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(select(true, true, true), false), vec2<bool>(true, true)), var_1.x));
    var var_3 = vec4<u32>(abs(abs(_wgslsmith_add_u32(20575u, u_input.b.x))), var_1.x, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.x, 76804u, 4294967295u), reverseBits(u_input.d)), ~u_input.a.x) << (vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mult_u32(firstLeadingBit(u_input.a.x), u_input.a.x)), var_2.x, ~_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a.x, 34609u), var_2.x)) % vec4<u32>(32u));
    global0 = array<Struct_1, 28>();
    return Struct_2(!(!(all(vec3<bool>(false, false, false)) || true)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f)));
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    var var_2 = firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_0.x, 1u), u_input.a.zyz));
    return global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_0 | arg_0, arg_0), ~abs(firstTrailingBit(4294967295u))), 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 28>();
    let var_0 = func_4(min(~_wgslsmith_mod_vec3_u32(~u_input.d, vec3<u32>(u_input.a.x, 2639u, u_input.b.x)), u_input.a.wyw), func_1(), func_1());
    let var_1 = var_0.c;
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a, -632f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-193f, -536f)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(605f, -2362f), vec2<f32>(-1000f, 1000f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(189f, var_0.a)))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a))), 1168f))));
    let var_3 = Struct_2(any(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true))));
    var var_4 = -_wgslsmith_mod_vec2_i32(max(vec2<i32>(var_0.e, -31807i), max(~vec2<i32>(var_0.e, -2147483647i), firstTrailingBit(vec2<i32>(-9409i, var_0.e)))), -select(vec2<i32>(u_input.c, var_0.e), vec2<i32>(-1i, 2147483647i), vec2<bool>(var_3.a, false)) | firstLeadingBit(vec2<i32>(u_input.c, var_0.e)));
    let var_5 = select(select(select(vec2<bool>(all(vec3<bool>(var_3.a, false, false)), true), !select(vec2<bool>(true, var_3.a), vec2<bool>(var_3.a, var_3.a), false), var_4.x > abs(-2147483647i)), vec2<bool>(any(vec2<bool>(var_3.a, true)) & var_3.a, !var_3.a), false), vec2<bool>(true, true), true);
    let var_6 = 1177f;
    var var_7 = !vec4<bool>(!var_5.x, any(vec3<bool>(24240u < var_0.d, var_5.x, !var_5.x)), var_5.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<u32>(min(u_input.a.x, var_0.c.x) << (_wgslsmith_sub_u32(u_input.a.x, 0u) % 32u), ~(u_input.a.x | var_0.b.x))), max(1u, u_input.b.x));
}

