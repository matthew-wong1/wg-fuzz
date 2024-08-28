struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 48750u;

var<private> global1: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_3) -> i32 {
    global0 = ~52842u | _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(select(vec2<u32>(2554u, 65549u), vec2<u32>(25736u, 1u), true), select(vec2<u32>(0u, 4294967295u), vec2<u32>(109606u, 0u), vec2<bool>(false, arg_1))), vec2<u32>(1u, 1u)), 1u, ~48729u);
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(383f, 744f)))));
    let var_1 = 11787u;
    var var_2 = 23514i;
    let var_3 = vec4<u32>(var_1, 8595u, var_1, var_1);
    return 0i;
}

fn func_3() -> vec2<u32> {
    var var_0 = vec2<u32>(abs(firstTrailingBit(21264u)), 4294967295u);
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -567f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -779f) + _wgslsmith_f_op_f32(f32(-1f) * -357f))), _wgslsmith_f_op_f32(floor(-396f))));
    var var_2 = ~var_0.x;
    var_2 = max(~1u, countOneBits(31698u) | (1u ^ ~var_0.x)) & (max(~var_0.x, var_0.x) & 48021u);
    let var_3 = -2147483647i;
    return vec2<u32>(~(~(~7327u)), 746u << (~(53247u ^ ~var_0.x) % 32u));
}

fn func_1(arg_0: Struct_5, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> vec2<u32> {
    var var_0 = !vec4<bool>(any(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, 6802u, 4294967295u)), ~vec4<u32>(16241u, 0u, 0u, 68163u)), 25u)]), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true)), true, (_wgslsmith_mod_i32(arg_1, 0i) != (-64570i << (1u % 32u))) | true);
    var var_1 = select(vec2<i32>(-1i) * -vec2<i32>(u_input.a & u_input.a, 0i), vec2<i32>(abs(-39785i), abs(_wgslsmith_mod_i32(func_2(vec2<i32>(75102i, arg_1), true, arg_0.a), _wgslsmith_sub_i32(-1i, arg_0.b.x)))), var_0.x);
    var_0 = !select(!vec4<bool>(false, true, var_0.x, var_0.x), !vec4<bool>(true, select(true, var_0.x, true), var_0.x, true), !vec4<bool>(any(global1[_wgslsmith_index_u32(1u, 25u)]), true, false, all(vec3<bool>(false, false, var_0.x))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.a)) * vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a.a)), _wgslsmith_f_op_f32(select(arg_0.a.b.a.x, arg_3, false))))));
    global0 = 4294967295u;
    return min(func_3() & _wgslsmith_clamp_vec2_u32(select(select(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 41209u), var_0.x), vec2<u32>(35846u, 0u), true), ~vec2<u32>(1u, 56820u), vec2<u32>(1u, func_3().x)), vec2<u32>(48580u, _wgslsmith_mult_u32(17461u, 1u)));
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-558f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(492f)))))), arg_2.b);
    var var_1 = select(select(!select(!vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, true), arg_0), !vec2<bool>(false, arg_0.x), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(any(global1[_wgslsmith_index_u32(arg_1, 25u)]), arg_0.x))), select(vec2<bool>(arg_0.x, any(!vec4<bool>(true, arg_0.x, false, false))), arg_0, (arg_0.x || true) & all(vec3<bool>(true, true, false))), select(vec2<bool>(arg_0.x, !arg_0.x), arg_0, false));
    let var_2 = Struct_5(Struct_3(var_0.a.x, arg_2), arg_2.b);
    var_1 = !(!global1[_wgslsmith_index_u32(select(arg_1, ~(~arg_1), var_1.x), 25u)]);
    var var_3 = (reverseBits(_wgslsmith_mult_vec4_i32(-vec4<i32>(arg_2.b.x, u_input.a, arg_2.b.x, -1i), ~vec4<i32>(2147483647i, -2643i, arg_2.b.x, var_0.b.x))) << (~_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1, arg_1, 0u, 34193u), ~vec4<u32>(arg_1, 0u, 53748u, 24886u)) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(~min(vec4<u32>(arg_1, 52096u, 4294967295u, arg_1), vec4<u32>(1u, arg_1, arg_1, 59920u)), countOneBits(~vec4<u32>(arg_1, arg_1, 0u, arg_1)), (vec4<u32>(arg_1, arg_1, 0u, 0u) | vec4<u32>(arg_1, arg_1, arg_1, arg_1)) ^ select(vec4<u32>(arg_1, arg_1, 0u, arg_1), vec4<u32>(arg_1, 0u, 1u, arg_1), vec4<bool>(arg_0.x, true, var_1.x, true))), vec4<u32>(func_1(Struct_5(var_2.a, vec2<i32>(var_2.b.x, -2147483647i)), arg_2.b.x & -31571i, Struct_1(var_2.a.b.a), _wgslsmith_f_op_f32(-arg_2.a.x)).x, _wgslsmith_mult_u32(~arg_1, firstLeadingBit(arg_1)), _wgslsmith_div_u32(max(arg_1, arg_1), 3916u), 43713u)) % vec4<u32>(32u));
    return Struct_2(var_2.a.b.a, _wgslsmith_div_vec2_i32(vec2<i32>(-select(var_2.a.b.b.x, -3062i, true), (i32(-1i) * -2147483647i) ^ u_input.a), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(-var_3.xy, abs(vec2<i32>(-55384i, var_0.b.x))), -var_2.a.b.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 7247u;
    let var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -284f), func_4(global1[_wgslsmith_index_u32(0u, 25u)], _wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 4294967295u)), ~vec2<u32>(56575u, 2441u) & func_1(Struct_5(Struct_3(-389f, Struct_2(vec2<f32>(-183f, 1097f), vec2<i32>(u_input.a, u_input.a))), vec2<i32>(-14235i, -16274i)), -19100i, Struct_1(vec2<f32>(-211f, -359f)), -495f)), Struct_2(vec2<f32>(_wgslsmith_div_f32(-965f, 825f), 1f), firstLeadingBit(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, -5713i), false)))));
    global1 = array<vec2<bool>, 25>();
    var var_1 = _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(func_1(Struct_5(Struct_3(var_0.b.a.x, var_0.b), vec2<i32>(24494i, var_0.b.b.x)), u_input.a, Struct_1(vec2<f32>(823f, var_0.a)), var_0.b.a.x).x, 1u, ~32914u), 0u) & 0u;
    var_1 = min(45151u, 0u);
    global1 = array<vec2<bool>, 25>();
    let var_2 = vec4<u32>(1u >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 95271u, 1u), vec4<u32>(5249u, 1u, 0u, 1u)) & 1u, 0u) % 32u), min(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 24018u), vec3<u32>(16863u, 74718u, 4294967295u))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 1u), 49975u, _wgslsmith_mod_u32(4294967295u, 17529u)), max(~vec3<u32>(57050u, 4294967295u, 4294967295u), countOneBits(vec3<u32>(4294967295u, 0u, 4294967295u))))), select(~(~0u), 146128u, true), func_3().x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(-(~vec3<i32>(2147483647i, 8829i, -1i)) | abs(_wgslsmith_mult_vec3_i32(vec3<i32>(50348i, 1i, u_input.a), vec3<i32>(u_input.a, var_0.b.b.x, u_input.a))), -countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 2073i, 19675i), vec3<i32>(6122i, 0i, 0i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(exp2(var_0.b.a.x)), var_0.b.a.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 1181f, var_0.a))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), var_0.a)), 1f)));
}

