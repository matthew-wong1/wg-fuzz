struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(25676i, vec2<bool>(false, true), vec4<bool>(true, false, false, false), 326f), Struct_1(-29385i, vec2<bool>(false, false), vec4<bool>(false, true, true, true), -565f), Struct_1(2147483647i, vec2<bool>(false, true), vec4<bool>(false, true, true, false), 253f), Struct_1(17611i, vec2<bool>(true, false), vec4<bool>(false, true, true, true), -741f), Struct_1(0i, vec2<bool>(true, false), vec4<bool>(false, true, true, true), 888f), Struct_1(18835i, vec2<bool>(true, false), vec4<bool>(false, true, false, true), 1091f), Struct_1(32727i, vec2<bool>(true, true), vec4<bool>(true, false, false, true), -1389f));

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(16308i, vec2<bool>(true, false), vec4<bool>(false, true, true, true), 348f), Struct_1(i32(-2147483648), vec2<bool>(true, false), vec4<bool>(true, false, true, true), 1161f), Struct_1(0i, vec2<bool>(false, false), vec4<bool>(true, true, true, true), 261f), Struct_1(17245i, vec2<bool>(false, true), vec4<bool>(false, true, true, false), 1293f), Struct_1(2147483647i, vec2<bool>(true, false), vec4<bool>(false, false, false, false), -901f), Struct_1(i32(-2147483648), vec2<bool>(false, false), vec4<bool>(true, true, true, false), -366f), Struct_1(48688i, vec2<bool>(false, false), vec4<bool>(true, false, true, false), -695f), Struct_1(1i, vec2<bool>(false, false), vec4<bool>(false, true, false, false), 192f), Struct_1(-1i, vec2<bool>(true, true), vec4<bool>(false, true, true, false), -405f), Struct_1(57395i, vec2<bool>(false, true), vec4<bool>(true, false, true, true), 243f), Struct_1(-50701i, vec2<bool>(true, true), vec4<bool>(true, true, true, false), 1042f), Struct_1(-1i, vec2<bool>(true, true), vec4<bool>(true, true, false, false), 883f), Struct_1(0i, vec2<bool>(false, true), vec4<bool>(false, false, false, false), 178f), Struct_1(265i, vec2<bool>(true, true), vec4<bool>(false, true, false, true), -410f), Struct_1(-14069i, vec2<bool>(false, true), vec4<bool>(false, false, true, true), 1000f), Struct_1(i32(-2147483648), vec2<bool>(true, false), vec4<bool>(false, false, false, false), 554f), Struct_1(22513i, vec2<bool>(true, false), vec4<bool>(false, false, false, false), -1000f), Struct_1(1811i, vec2<bool>(false, true), vec4<bool>(true, true, false, false), 1368f), Struct_1(1i, vec2<bool>(true, false), vec4<bool>(false, true, true, false), -940f), Struct_1(22283i, vec2<bool>(true, false), vec4<bool>(false, false, true, true), -458f), Struct_1(26972i, vec2<bool>(false, true), vec4<bool>(false, true, true, false), -1000f), Struct_1(2147483647i, vec2<bool>(false, true), vec4<bool>(false, true, false, false), -1472f), Struct_1(-50654i, vec2<bool>(false, false), vec4<bool>(true, false, false, true), -2242f), Struct_1(6151i, vec2<bool>(false, false), vec4<bool>(true, true, false, false), 2788f), Struct_1(0i, vec2<bool>(false, true), vec4<bool>(false, false, true, true), 357f), Struct_1(-64229i, vec2<bool>(false, false), vec4<bool>(false, false, false, false), -1000f), Struct_1(33650i, vec2<bool>(true, true), vec4<bool>(true, false, true, true), -1706f), Struct_1(-41026i, vec2<bool>(true, true), vec4<bool>(false, true, false, false), -1236f), Struct_1(-50044i, vec2<bool>(false, true), vec4<bool>(true, false, true, false), -540f));

var<private> global3: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global3 = any(vec3<bool>(all(select(arg_0.c.wwy, arg_0.c.yyw, vec3<bool>(arg_0.b.x, true, false))) | any(vec4<bool>(arg_0.c.x, arg_0.b.x, true, arg_0.b.x)), all(!vec3<bool>(arg_0.c.x, true, arg_0.b.x)), true));
    let var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 28u)];
    let var_1 = vec4<u32>(u_input.d, ~u_input.a.x, 10072u, ~u_input.a.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-366f)))) + -472f)));
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_1, 28>();
    let var_0 = ~max(~u_input.c.x, ~2147483647i);
    let var_1 = vec2<i32>(6437i, _wgslsmith_sub_i32(-2147483647i, u_input.c.x));
    global3 = _wgslsmith_add_u32(select(max(u_input.d ^ 1u, u_input.a.x), u_input.b.x, true), 4294967295u) != u_input.d;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -294f), 1863f, -1099f, _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(45449u, 29u)])))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(645f, -663f, 1158f, -290f), _wgslsmith_div_vec4_f32(vec4<f32>(935f, -1740f, -1440f, -1571f), vec4<f32>(-3289f, -2131f, 815f, 955f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-571f, 2506f, 1412f, 555f) - vec4<f32>(-879f, -1537f, 1362f, -1000f))))), select(vec4<bool>(true, any(vec4<bool>(false, true, true, true)) && true, u_input.d != countOneBits(u_input.a.x), any(vec3<bool>(false, true, false))), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))))));
    return global2[_wgslsmith_index_u32(countOneBits(u_input.b.x), 29u)];
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = func_2();
    var var_1 = -1i;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(57111u, firstLeadingBit(firstLeadingBit(abs(~1u)))), 7u)];
    global1 = array<Struct_1, 7>();
    let var_3 = abs(~(~4294967295u));
    return ~_wgslsmith_mod_u32(~u_input.b.x, ~(_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(var_3, 71841u)) & reverseBits(u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~(~(~u_input.d)), func_1(vec3<bool>(u_input.b.x >= 4294967295u, true, false), global1[_wgslsmith_index_u32(countOneBits(29947u | u_input.a.x), 7u)], ~(~u_input.d)), min(~4294967295u, countOneBits(14580u >> (u_input.d % 32u)))) ^ min(u_input.b, vec3<u32>(~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(8897u, u_input.b.x, u_input.b.x)), ~2743u, firstLeadingBit(u_input.a.x | 0u)));
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(u_input.c, u_input.c), vec2<i32>(56821i, 2147483647i)), u_input.c.x) << (_wgslsmith_sub_u32((_wgslsmith_dot_vec3_u32(u_input.b, u_input.b) & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 39508u, u_input.a.x), vec3<u32>(u_input.d, u_input.b.x, u_input.a.x))) ^ var_0.x, ~(~u_input.a.x >> (u_input.b.x % 32u))) % 32u);
    var_0 = ~(~vec3<u32>(5883u, 73380u, ~(~u_input.d)));
    var var_2 = i32(-1i) * -1i;
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1167f), 1f, -1133f, 523f)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + var_3.x)))) + -130f);
    let var_5 = Struct_1(select(var_1, var_1, true), select(vec2<bool>(true, _wgslsmith_mod_u32(4294967295u, u_input.b.x) > 0u), vec2<bool>(false, all(vec3<bool>(false, false, true))), vec2<bool>(all(vec4<bool>(true, true, true, true)), true)), vec4<bool>(!(var_3.x < var_3.x) & true, 651f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * var_3.x), all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), !(!all(vec4<bool>(true, false, true, false)))), _wgslsmith_f_op_f32(abs(-498f)));
    var var_6 = var_5.c.x | any(select(select(!var_5.c, !var_5.c, true), vec4<bool>(-1000f != var_5.d, true || var_5.b.x, var_5.c.x, false), false));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().a, ~_wgslsmith_mod_vec3_u32(max(u_input.b, vec3<u32>(var_0.x, u_input.d, var_0.x)), vec3<u32>(_wgslsmith_mod_u32(var_0.x, var_0.x), var_0.x, _wgslsmith_clamp_u32(21764u, u_input.d, 4294967295u))));
}

