struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -15811i;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec2<u32>(0u, 1u), 132812u, vec3<i32>(2147483647i, 58863i, -37868i)), Struct_1(vec2<u32>(1u, 23742u), 80138u, vec3<i32>(-26180i, 2147483647i, 27946i)), Struct_1(vec2<u32>(4294967295u, 27811u), 50098u, vec3<i32>(17470i, -30005i, 54937i)), Struct_1(vec2<u32>(4294967295u, 54767u), 4294967295u, vec3<i32>(i32(-2147483648), -4080i, i32(-2147483648))), Struct_1(vec2<u32>(35822u, 41887u), 24479u, vec3<i32>(35540i, 23254i, i32(-2147483648))), Struct_1(vec2<u32>(74662u, 1u), 4294967295u, vec3<i32>(3604i, i32(-2147483648), 1i)), Struct_1(vec2<u32>(62920u, 4294967295u), 29723u, vec3<i32>(-12278i, 67991i, 1i)), Struct_1(vec2<u32>(6227u, 1u), 4294967295u, vec3<i32>(-1i, 2147483647i, -1i)), Struct_1(vec2<u32>(4294967295u, 54261u), 0u, vec3<i32>(1i, -1i, -1i)), Struct_1(vec2<u32>(0u, 40946u), 4294967295u, vec3<i32>(-21599i, 0i, 2147483647i)), Struct_1(vec2<u32>(80230u, 0u), 1u, vec3<i32>(0i, 4182i, -6719i)), Struct_1(vec2<u32>(18181u, 1712u), 21008u, vec3<i32>(-1i, -39359i, -12820i)), Struct_1(vec2<u32>(1u, 22145u), 57219u, vec3<i32>(-31307i, 1i, 40540i)), Struct_1(vec2<u32>(40536u, 0u), 2804u, vec3<i32>(0i, -1823i, -18997i)), Struct_1(vec2<u32>(49851u, 42129u), 1u, vec3<i32>(-1i, 7804i, 39366i)), Struct_1(vec2<u32>(4294967295u, 1u), 35109u, vec3<i32>(i32(-2147483648), 2147483647i, -1i)), Struct_1(vec2<u32>(2229u, 29864u), 26933u, vec3<i32>(18660i, -33043i, 15259i)), Struct_1(vec2<u32>(15886u, 0u), 22127u, vec3<i32>(37384i, 0i, -1i)), Struct_1(vec2<u32>(61416u, 1u), 13270u, vec3<i32>(-28958i, 9759i, i32(-2147483648))), Struct_1(vec2<u32>(4294967295u, 114761u), 25910u, vec3<i32>(-1i, -7533i, -79927i)), Struct_1(vec2<u32>(20331u, 91077u), 19120u, vec3<i32>(-8062i, 73036i, 1i)), Struct_1(vec2<u32>(1u, 75709u), 4294967295u, vec3<i32>(-12212i, -40578i, 1i)), Struct_1(vec2<u32>(16090u, 27419u), 20417u, vec3<i32>(2147483647i, 2147483647i, 2147483647i)), Struct_1(vec2<u32>(1u, 64615u), 4294967295u, vec3<i32>(i32(-2147483648), 1i, -1i)), Struct_1(vec2<u32>(4294967295u, 25534u), 73127u, vec3<i32>(34576i, -57308i, -16131i)), Struct_1(vec2<u32>(0u, 1u), 46722u, vec3<i32>(46237i, -52237i, 1i)), Struct_1(vec2<u32>(3198u, 0u), 1u, vec3<i32>(0i, 11558i, -35035i)), Struct_1(vec2<u32>(12271u, 1u), 8525u, vec3<i32>(2147483647i, -2113i, 0i)), Struct_1(vec2<u32>(4294967295u, 8552u), 0u, vec3<i32>(17806i, i32(-2147483648), -18311i)), Struct_1(vec2<u32>(0u, 53159u), 46947u, vec3<i32>(5716i, -18821i, 85718i)));

var<private> global2: f32 = -1281f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1() -> i32 {
    var var_0 = -12580i;
    var var_1 = ~_wgslsmith_sub_i32(1i, ~(~min(12139i, 1i)));
    var_1 = (i32(-1i) * -(~(24570i << (u_input.a % 32u)))) ^ -_wgslsmith_mult_i32(1i, _wgslsmith_div_i32(-63153i, 75550i));
    let var_2 = -318f;
    return countOneBits(~_wgslsmith_div_i32(~2434i, _wgslsmith_clamp_i32(-2147483647i, -2147483647i, -2147483647i))) ^ 3742i;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> bool {
    let var_0 = 2147483647i;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-109f + -620f) - _wgslsmith_f_op_f32(-369f - -666f)) - _wgslsmith_f_op_f32(169f + _wgslsmith_f_op_f32(round(719f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1571f * 260f))))));
    global1 = array<Struct_1, 30>();
    var var_1 = ~vec3<u32>(abs(arg_1.b), 1u, ~30803u);
    global0 = ~1i;
    return false != !(select(any(vec3<bool>(false, false, false)), false, any(vec4<bool>(true, true, true, false))) || true);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: Struct_1) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.b, firstTrailingBit(~_wgslsmith_mult_u32(28882u, u_input.a)), ~(~(~39673u))), _wgslsmith_sub_vec3_u32(~min(vec3<u32>(u_input.a, 1u, 52734u), vec3<u32>(1u, arg_3.a.x, 4294967295u)) >> (firstLeadingBit(min(vec3<u32>(u_input.a, 4294967295u, 4294967295u), vec3<u32>(u_input.a, 22268u, 15263u))) % vec3<u32>(32u)), abs(vec3<u32>(~4294967295u, 1u, 0u)))), 30u)];
    let var_1 = _wgslsmith_mod_i32(arg_3.c.x, -3360i);
    global1 = array<Struct_1, 30>();
    let var_2 = Struct_1(firstLeadingBit(~vec2<u32>(1u >> (0u % 32u), 20359u)), ~9264u, arg_3.c);
    var var_3 = var_2;
    return true;
}

fn func_2(arg_0: vec4<u32>) -> vec4<i32> {
    let var_0 = vec4<u32>(reverseBits(firstLeadingBit(u_input.a)), min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 49478u, 4294967295u), arg_0.www), 4294967295u) ^ (u_input.a ^ (countOneBits(u_input.a) & arg_0.x)), u_input.a | ~1u, 0u);
    var var_1 = vec2<bool>(func_4(-(~vec2<i32>(1i, 1i)), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), func_3(0i, global1[_wgslsmith_index_u32(1u, 30u)])), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), true)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(u_input.a), _wgslsmith_mod_u32(64294u, 85392u)), var_0.wz), 30u)]), !((func_3(0i, Struct_1(var_0.yw, 0u, vec3<i32>(-26863i, 1i, 0i))) && true) || (_wgslsmith_div_u32(616u, var_0.x) > 22624u)));
    var var_2 = select(1i == _wgslsmith_clamp_i32(~(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(-41066i, -33939i, 0i)), -_wgslsmith_div_i32(-18744i, 3088i)), true, !var_1.x);
    return ~vec4<i32>(1i, 1i, 1i, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(func_1(), 2147483647i, _wgslsmith_dot_vec4_i32(func_2(min(vec4<u32>(22762u, u_input.a, u_input.a, 1u), max(vec4<u32>(56399u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-32300i, 1i, 27118i, -33894i), vec4<i32>(-1i, 42579i, 12538i, 3142i)), firstTrailingBit(1i), ~38643i, select(1i, 37430i, false)) >> (vec4<u32>(abs(0u), 4294967295u, ~u_input.a, select(83127u, 0u, true)) % vec4<u32>(32u))), 34587i);
    global0 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~(~var_0.yx), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 0i, 0i), var_0.yyx), ~1i)), abs(-vec2<i32>(-19179i, var_0.x) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(~(~22102u), _wgslsmith_add_u32(firstTrailingBit(u_input.a), u_input.a))));
}

