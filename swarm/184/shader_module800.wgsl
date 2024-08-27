struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: f32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14> = array<f32, 14>(-1056f, 735f, -266f, 1318f, -1145f, 197f, 1064f, -1143f, -1000f, 632f, -939f, 187f, 3317f, -837f);

var<private> global1: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(97124u, 1u, 5170u, 51775u), vec4<u32>(134820u, 1u, 13525u, 1u), vec4<u32>(0u, 0u, 52255u, 4294967295u), vec4<u32>(4294967295u, 0u, 55713u, 0u), vec4<u32>(121697u, 51547u, 2661u, 5070u), vec4<u32>(1u, 1u, 1u, 16492u), vec4<u32>(4294967295u, 24591u, 64750u, 4294967295u), vec4<u32>(40165u, 25306u, 0u, 4294967295u), vec4<u32>(1u, 18139u, 4294967295u, 1u), vec4<u32>(26723u, 21804u, 4294967295u, 17285u));

var<private> global2: array<vec3<f32>, 17>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_1) -> Struct_4 {
    let var_0 = u_input.a;
    let var_1 = Struct_2(true, Struct_1(arg_0.a), abs(0u), vec3<i32>(i32(-1i) * -2147483647i, -1i, 1i >> (0u % 32u)) & firstTrailingBit(vec3<i32>(1i, 1i, firstLeadingBit(0i))), _wgslsmith_div_vec3_i32(firstLeadingBit(~(-vec3<i32>(-1i, -1i, 1i))), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-19978i, 23592i, 29757i), -vec3<i32>(2147483647i, -56675i, -2147483647i)), ~(-vec3<i32>(46352i, -70848i, 14134i)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 14u)]), global0[_wgslsmith_index_u32(~(~4294967295u), 14u)])));
    let var_3 = ~(~56964u);
    var var_4 = arg_0;
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(444f)) + var_4.a));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: Struct_4) -> Struct_1 {
    let var_0 = abs(vec2<i32>(_wgslsmith_mult_i32(-728i, -(~(-36733i))), -_wgslsmith_dot_vec4_i32(vec4<i32>(47333i, 2147483647i, 1i, -2147483647i), firstTrailingBit(vec4<i32>(-14570i, -6304i, 2147483647i, 8838i)))));
    let var_1 = arg_2;
    global1 = array<vec4<u32>, 10>();
    let var_2 = countOneBits(_wgslsmith_add_vec3_u32(reverseBits(~vec3<u32>(0u, 47749u, 19440u)), _wgslsmith_mult_vec3_u32(~firstTrailingBit(vec3<u32>(u_input.a, 0u, 4294967295u)), select(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, 9557u), vec3<u32>(u_input.a, 47963u, 8681u)), vec3<u32>(u_input.a, u_input.a, u_input.a), arg_1.xyx))));
    var var_3 = var_0.x;
    return Struct_1(_wgslsmith_f_op_f32(-arg_3.a));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = select(select(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true)), vec4<bool>(true, true, true, -1050f < global0[_wgslsmith_index_u32(17524u, 14u)]), vec4<bool>(true, true, true, true)), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), select(vec4<bool>(func_3(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), Struct_4(global0[_wgslsmith_index_u32(u_input.a, 14u)]), Struct_4(global0[_wgslsmith_index_u32(116807u, 14u)])).a != _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 14u)] + -1229f), all(vec3<bool>(true, false, false)), all(vec3<bool>(true, true, true)), true), select(vec4<bool>(select(false, false, false), true, true, any(vec4<bool>(true, false, true, false))), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(15545u != u_input.a, all(vec3<bool>(false, true, true)), all(vec4<bool>(true, false, false, true)), true)), !(arg_0.x < arg_0.x)), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 14u)]), 1377f)), _wgslsmith_f_op_f32(-arg_1.a), 587f) + vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a & 0u, 14u)]), 273f, 302f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(27848u, 17u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a, 115f, arg_1.a), vec3<f32>(-1000f, global0[_wgslsmith_index_u32(1u, 14u)], arg_1.a)))))));
    global0 = array<f32, 14>();
    let var_2 = vec2<f32>(-556f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-701f))))));
    let var_3 = 45951u;
    return func_3(var_0, vec4<bool>(arg_1.a > _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-1000f - 1211f)), any(vec2<bool>(true, var_0.x)), var_0.x, true), func_2(Struct_1(537f)), func_2(arg_1));
}

fn func_1() -> u32 {
    var var_0 = func_4(firstTrailingBit(vec3<i32>(i32(-1i) * -60684i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(16337i, -2147483647i, -17651i, 25519i), vec4<i32>(-2147483647i, 34529i, -30594i, 2147483647i)), 1i), 836i)), func_3(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), true)), any(vec4<bool>(false, false, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 14u)] >= global0[_wgslsmith_index_u32(u_input.a, 14u)], false, true, true), false), func_2(Struct_1(-1000f)), func_2(Struct_1(global0[_wgslsmith_index_u32(16363u, 14u)]))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(Struct_1(503f)).a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 14u)] - global0[_wgslsmith_index_u32(u_input.a, 14u)]) + _wgslsmith_f_op_f32(f32(-1f) * -503f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -875f))));
    let var_2 = func_4(~_wgslsmith_mod_vec3_i32(vec3<i32>(-38216i, -562i, 24987i) >> (vec3<u32>(31417u, u_input.a, 1u) % vec3<u32>(32u)), vec3<i32>(1i, countOneBits(1i), 1i)), func_4(vec3<i32>(0i, max(_wgslsmith_div_i32(-9248i, 1i), i32(-1i) * -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(13530i, 0i, 18724i), vec3<i32>(-1i, -1i, -2147483647i), vec3<bool>(false, true, false)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - 922f)))));
    let var_3 = vec2<i32>(_wgslsmith_sub_i32(0i, -(~_wgslsmith_mod_i32(2147483647i, -1i))), _wgslsmith_mult_i32(~1i, ~1i));
    let var_4 = var_3.x;
    return _wgslsmith_mult_u32(5556u, u_input.a) | _wgslsmith_mod_u32(1731u, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 10>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * global0[_wgslsmith_index_u32(~(~(~49558u)), 14u)]));
    var var_1 = _wgslsmith_f_op_f32(-1544f * -250f);
    var var_2 = global0[_wgslsmith_index_u32(1u | func_1(), 14u)];
    var var_3 = firstTrailingBit(vec3<i32>(0i, firstLeadingBit(1i), -21266i)) ^ (vec3<i32>(-(3631i << (u_input.a % 32u)), 13034i, _wgslsmith_mult_i32(1i, 1i)) ^ vec3<i32>(-firstTrailingBit(-28697i), ~(-2147483647i) & firstTrailingBit(50423i), _wgslsmith_mod_i32(select(1i, 47566i, true), -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.a ^ ~(~u_input.a)), _wgslsmith_div_vec2_i32(-vec2<i32>(-42313i, var_3.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_3.x, 2147483647i), firstLeadingBit(vec2<i32>(var_3.x, var_3.x)), var_3.xz)), ~(~countOneBits(~vec2<u32>(0u, 38280u))), max(vec2<i32>(-(1i & var_3.x), var_3.x ^ 0i), -(~vec2<i32>(1467i, 12173i))));
}

