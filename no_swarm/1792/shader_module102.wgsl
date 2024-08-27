struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec4<f32>(1000f, -143f, 913f, -1450f), -377f, 0u, 15974u), Struct_3(vec4<f32>(748f, -1971f, -441f, -1301f), -642f, 4294967295u, 31538u), Struct_3(vec4<f32>(577f, -984f, -1857f, -792f), 408f, 4294967295u, 0u), Struct_3(vec4<f32>(567f, -461f, 306f, -264f), -146f, 4284u, 4294967295u), Struct_3(vec4<f32>(265f, 973f, -703f, -1000f), -556f, 43559u, 20992u), Struct_3(vec4<f32>(-915f, 210f, -1213f, -244f), -1083f, 0u, 1u), Struct_3(vec4<f32>(-1000f, 942f, 1727f, 2184f), 1749f, 1u, 1u), Struct_3(vec4<f32>(-862f, 758f, -602f, 1312f), -1075f, 91648u, 0u), Struct_3(vec4<f32>(-1000f, -1427f, 102f, -448f), -696f, 4294967295u, 58597u), Struct_3(vec4<f32>(-445f, 533f, 542f, 361f), -857f, 0u, 0u), Struct_3(vec4<f32>(505f, 806f, -818f, -330f), -789f, 34449u, 138913u), Struct_3(vec4<f32>(874f, -868f, -2181f, -252f), -1039f, 1u, 0u), Struct_3(vec4<f32>(702f, -650f, -192f, -587f), 2492f, 4294967295u, 0u), Struct_3(vec4<f32>(-2162f, 1040f, 369f, 821f), 855f, 142072u, 0u), Struct_3(vec4<f32>(-407f, -293f, 596f, 431f), -535f, 120243u, 20129u), Struct_3(vec4<f32>(-418f, 353f, 2926f, -254f), -338f, 0u, 1u), Struct_3(vec4<f32>(615f, 1158f, -1037f, 1092f), 214f, 0u, 1u), Struct_3(vec4<f32>(339f, 2296f, -445f, 491f), 593f, 1u, 1u), Struct_3(vec4<f32>(-1377f, -307f, -2671f, 1000f), -1528f, 39109u, 50666u), Struct_3(vec4<f32>(-444f, -501f, -199f, -262f), -1657f, 1u, 4294967295u), Struct_3(vec4<f32>(838f, -804f, 624f, -1957f), -384f, 1u, 0u), Struct_3(vec4<f32>(745f, 1007f, -671f, -113f), 919f, 4294967295u, 1u));

var<private> global1: array<Struct_2, 26>;

var<private> global2: Struct_2 = Struct_2(1u);

var<private> global3: bool = true;

var<private> global4: array<Struct_2, 7>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: u32) -> u32 {
    var var_0 = ~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(arg_0, arg_2)), -vec2<i32>(38330i, 59744i)), select(_wgslsmith_mod_vec2_i32(u_input.d, vec2<i32>(2147483647i, arg_1)), vec2<i32>(-30176i, arg_2) << (vec2<u32>(global2.a, global2.a) % vec2<u32>(32u)), true)), -((arg_2 << (global2.a % 32u)) ^ -37535i));
    global1 = array<Struct_2, 26>();
    return ~global2.a;
}

fn func_3(arg_0: Struct_3) -> bool {
    global4 = array<Struct_2, 7>();
    var var_0 = global1[_wgslsmith_index_u32(global2.a, 26u)];
    let var_1 = -(u_input.d >> (~vec2<u32>(abs(arg_0.d), _wgslsmith_clamp_u32(0u, var_0.a, 1609u)) % vec2<u32>(32u)));
    global0 = array<Struct_3, 22>();
    let var_2 = ~20118u;
    return any(vec2<bool>(false, !(!all(vec4<bool>(true, false, true, false)))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec4<f32>) -> f32 {
    var var_0 = firstLeadingBit(countOneBits(i32(-1i) * -36066i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool) -> vec4<f32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(835f + -1774f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(u_input.d.x, ~(u_input.a << (0u % 32u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-522f, 934f, -763f, -2616f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(192f, -710f, 471f, -149f)), func_3(Struct_3(vec4<f32>(552f, 1548f, -1000f, 1454f), 1843f, u_input.b, 20891u))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(-866f, 1653f, false))))), _wgslsmith_f_op_f32(select(514f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -884f))), true)));
    let var_1 = true;
    var var_2 = vec2<f32>(var_0.x, -562f);
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(var_0.xyy)), _wgslsmith_f_op_vec3_f32(step(var_0.zxy, var_0.yzz)), vec3<bool>(all(select(select(vec3<bool>(var_1, var_1, true), vec3<bool>(var_1, false, arg_1), vec3<bool>(var_1, arg_1, var_1)), vec3<bool>(true, true, true), 22293u != global2.a)), true, true)));
    let var_4 = Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(4352u, 15964u), ~(~vec2<u32>(u_input.b, 0u)), vec2<u32>(1u, 56557u) << (select(vec2<u32>(u_input.c, global2.a), vec2<u32>(1u, u_input.b), vec2<bool>(var_1, var_1)) % vec2<u32>(32u))), ~(vec2<u32>(u_input.b, 0u) << ((vec2<u32>(1u, 4294967295u) | vec2<u32>(94835u, u_input.c)) % vec2<u32>(32u)))));
    return vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(347f)))), 478f, 358f, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 22>();
    global2 = Struct_2(_wgslsmith_div_u32(_wgslsmith_add_u32(~u_input.c, func_1(u_input.d.x, u_input.a, 32625i, u_input.b)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, global2.a), ~global2.a)) << (abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 40247u, 18904u), vec3<u32>(global2.a, global2.a, u_input.b)), select(57213u, u_input.c, false))) % 32u));
    global1 = array<Struct_2, 26>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_2(vec4<i32>(~u_input.a, -2147483647i, 1i, 2147483647i << (global2.a % 32u)), false)))));
    var var_1 = global0[_wgslsmith_index_u32(14313u, 22u)];
    var var_2 = _wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(~5589u, _wgslsmith_sub_u32(u_input.b, 1u)), abs(vec2<u32>(1u, 1u))), vec2<u32>(u_input.b, func_1(-u_input.a, -2147483647i, _wgslsmith_div_i32(u_input.a, -57840i), 27033u)) & _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 58087u | global2.a), _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(global2.a, var_1.d)), ~vec2<u32>(global2.a, var_1.c), ~vec2<u32>(u_input.b, 0u))));
    var var_3 = select(vec3<bool>(true == all(vec3<bool>(true, true, true)), !(!(var_0.x == 2455f)), true), vec3<bool>(true | !any(vec4<bool>(false, true, false, false)), true, true), all(vec3<bool>(true, all(vec4<bool>(true, false, false, false)), true)) & true);
    let x = u_input.a;
    s_output = StorageBuffer(-(~u_input.d.x), vec2<f32>(-163f, _wgslsmith_f_op_f32(-1061f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_1.a.x)))))), u_input.a);
}

