struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(1002f, -193f), vec2<f32>(655f, 1065f), vec2<f32>(-190f, -334f), vec2<f32>(1708f, -329f), vec2<f32>(1052f, -1000f), vec2<f32>(1048f, -1129f), vec2<f32>(1000f, 1047f), vec2<f32>(-1969f, -1000f), vec2<f32>(-524f, -408f));

var<private> global1: array<i32, 12>;

var<private> global2: array<f32, 16> = array<f32, 16>(-940f, -771f, 759f, 660f, 1000f, -1006f, 364f, 1792f, 373f, 572f, 850f, -205f, 1265f, 587f, 809f, -331f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>) -> u32 {
    var var_0 = ~arg_0.a.d.x;
    var_0 = _wgslsmith_clamp_u32(arg_0.a.e.x, ~select(arg_0.a.e.x >> ((4294967295u >> (arg_0.a.e.x % 32u)) % 32u), _wgslsmith_dot_vec2_u32(arg_0.a.e, arg_0.a.e | arg_0.a.e), false), _wgslsmith_add_u32(1u, _wgslsmith_add_u32(~(~arg_0.a.d.x), firstTrailingBit(arg_0.a.d.x))));
    let var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(select(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, arg_0.a.e.x, 92640u), vec4<u32>(4294967295u, 2847u, arg_0.a.d.x, 4294967295u)), max(vec4<u32>(41756u, arg_0.a.e.x, 0u, 24604u), vec4<u32>(arg_0.a.e.x, 1u, 31526u, arg_0.a.d.x)), ~vec4<u32>(arg_0.a.e.x, 3774u, 28605u, 4294967295u)), vec4<u32>(arg_0.a.d.x, 1u, ~29662u, ~9849u), select(!vec4<bool>(true, false, arg_0.a.c, arg_0.a.c), select(vec4<bool>(false, arg_0.a.c, true, false), vec4<bool>(arg_0.a.c, false, false, arg_0.a.c), vec4<bool>(false, arg_0.a.c, arg_0.a.c, false)), true)), (firstLeadingBit(vec4<u32>(56861u, arg_0.a.d.x, 59603u, arg_0.a.e.x)) | _wgslsmith_mod_vec4_u32(vec4<u32>(45486u, arg_0.a.d.x, arg_0.a.e.x, 1u), vec4<u32>(arg_0.a.e.x, 16705u, arg_0.a.e.x, arg_0.a.e.x))) ^ ~vec4<u32>(arg_0.a.e.x, arg_0.a.d.x, 4294967295u, 66474u)), arg_0.a.d.x);
    var_0 = _wgslsmith_mod_u32(~4294967295u, max(var_1, var_1));
    var var_2 = -min(vec3<i32>(reverseBits(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(var_1, 12u)], -1i)), ~(arg_1.x & 1396i), countOneBits(_wgslsmith_div_i32(-1111i, 2147483647i))), _wgslsmith_add_vec3_i32(abs(firstTrailingBit(vec3<i32>(u_input.b, 67915i, 28821i))), ~_wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(12152u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], arg_1.x), arg_1.xxy)));
    return 5336u;
}

fn func_2() -> vec3<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(633f * global2[_wgslsmith_index_u32(51456u, 16u)]), _wgslsmith_f_op_f32(max(-1074f, -1000f))))) + 583f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(func_3(Struct_3(Struct_1(619f, global1[_wgslsmith_index_u32(4294967295u, 12u)], false, vec2<u32>(48013u, 1165u), vec2<u32>(45459u, 1u))), vec4<i32>(-1i, 2147483647i, ~u_input.b, _wgslsmith_mult_i32(u_input.b, 15253i))), 16u)]), -776f);
    let var_1 = any(vec2<bool>(false, true));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 16u)], 1142f, var_0.x) - vec3<f32>(-863f, -535f, 1058f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(exp2(var_0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1065f, var_0.x, var_0.x)))), !select(!vec3<bool>(var_1, true, false), !vec3<bool>(var_1, true, var_1), select(vec3<bool>(true, var_1, var_1), vec3<bool>(var_1, false, true), vec3<bool>(true, var_1, true)))))));
    var var_3 = vec4<bool>(!any(vec3<bool>(true, false, false)), true, var_1, any(vec2<bool>(!var_1, var_1)));
    let var_4 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(248f)) + var_2.x), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(26594u, 24898u, 1u), vec3<u32>(1u, 1u, 1u)), 12u)], var_1, vec2<u32>(~11618u, ~0u), select(select(vec2<u32>(3585u, 1u), vec2<u32>(9129u, 26988u), vec2<bool>(false, var_3.x)), vec2<u32>(62873u, 0u), !var_3.wx)), countOneBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 27718u, 47155u), vec3<u32>(39185u, 4294967295u, 4294967295u))), abs(_wgslsmith_div_vec2_i32(min(vec2<i32>(global1[_wgslsmith_index_u32(0u, 12u)], -1i), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(global1[_wgslsmith_index_u32(15227u, 12u)], 0i)))), min(-firstTrailingBit(vec3<i32>(u_input.a, u_input.a, -7826i) >> (vec3<u32>(34424u, 45479u, 59865u) % vec3<u32>(32u))), reverseBits(-(~vec3<i32>(1i, 2147483647i, u_input.b)))), _wgslsmith_sub_vec2_i32(-vec2<i32>(~(-10988i), _wgslsmith_mult_i32(u_input.b, -63611i)), _wgslsmith_sub_vec2_i32(-abs(vec2<i32>(u_input.b, u_input.a)), abs(vec2<i32>(2147483647i, 2147483647i)))), var_3.xyw);
    return vec3<bool>(true, false, !(!(!any(var_3.zy))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec3<f32>) -> vec3<u32> {
    global1 = array<i32, 12>();
    var var_0 = vec2<u32>(firstTrailingBit(countOneBits(~_wgslsmith_mod_u32(51073u, 9701u))), arg_1.a.d.x);
    let var_1 = arg_3.x;
    let var_2 = !(!(!(!(!vec4<bool>(arg_1.a.c, arg_0.x, arg_1.a.c, arg_1.a.c)))));
    return vec3<u32>(abs(var_0.x << (~(~29789u) % 32u)), 36220u, arg_1.b.x);
}

fn func_1(arg_0: vec4<u32>) -> Struct_4 {
    global1 = array<i32, 12>();
    let var_0 = ~(~func_4(func_2(), Struct_2(Struct_1(global2[_wgslsmith_index_u32(17233u, 16u)], global1[_wgslsmith_index_u32(arg_0.x, 12u)], true, arg_0.yw, arg_0.xy), _wgslsmith_div_vec3_u32(arg_0.zxy, arg_0.wyz), ~vec2<i32>(global1[_wgslsmith_index_u32(1u, 12u)], u_input.b)), vec4<f32>(-977f, 1391f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 16u)]), global2[_wgslsmith_index_u32(countOneBits(0u), 16u)]), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 16u)], 1000f, -616f)), vec3<f32>(-1867f, -1000f, global2[_wgslsmith_index_u32(arg_0.x, 16u)])))));
    global1 = array<i32, 12>();
    global1 = array<i32, 12>();
    global2 = array<f32, 16>();
    return Struct_4(Struct_2(Struct_1(global2[_wgslsmith_index_u32(4294967295u, 16u)], u_input.a << (var_0.x % 32u), func_2().x, vec2<u32>(~arg_0.x, arg_0.x), _wgslsmith_mult_vec2_u32(arg_0.zx, _wgslsmith_div_vec2_u32(arg_0.wx, arg_0.zx))), vec3<u32>(var_0.x, var_0.x, arg_0.x), vec2<i32>(global1[_wgslsmith_index_u32(~33524u, 12u)], countOneBits(global1[_wgslsmith_index_u32(1u, 12u)])) >> (countOneBits(vec2<u32>(arg_0.x, arg_0.x)) % vec2<u32>(32u))), vec3<i32>(34278i, _wgslsmith_mod_i32(~global1[_wgslsmith_index_u32(arg_0.x, 12u)] | ~(-7766i), u_input.a), -1i), vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 5121i, 12244i), vec3<i32>(global1[_wgslsmith_index_u32(27932u, 12u)], 0i, 1i)), u_input.b | -13906i), !(!vec3<bool>(true, all(vec2<bool>(false, true)), true)));
}

fn func_5(arg_0: f32, arg_1: Struct_4) -> i32 {
    global0 = array<vec2<f32>, 9>();
    global1 = array<i32, 12>();
    let var_0 = true && select(any(vec4<bool>(arg_1.d.x, arg_1.d.x, any(vec2<bool>(false, arg_1.a.a.c)), func_2().x)), !select(false, arg_1.a.a.c | arg_1.d.x, any(vec4<bool>(false, arg_1.a.a.c, true, true))), any(vec4<bool>(true, false, arg_1.a.a.c, arg_1.d.x)) & true);
    global1 = array<i32, 12>();
    var var_1 = func_4(!vec3<bool>(var_0 && var_0, var_0 || true, false && arg_1.a.a.c), Struct_2(Struct_1(_wgslsmith_div_f32(-731f, arg_1.a.a.a), max(2147483647i, -1i), false, arg_1.a.b.xy, ~arg_1.a.b.yy), countOneBits(~arg_1.a.b), abs(_wgslsmith_div_vec2_i32(arg_1.b.xy, arg_1.a.c))), vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.a.a + arg_0), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1868f - global2[_wgslsmith_index_u32(0u, 16u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1116f - -552f), -1202f), arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0, -1180f)))).x | 4294967295u;
    return -global1[_wgslsmith_index_u32(arg_1.a.b.x, 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 9>();
    let var_0 = -642f;
    let var_1 = func_5(global2[_wgslsmith_index_u32(countOneBits(21943u), 16u)], func_1(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
    global1 = array<i32, 12>();
    var var_2 = reverseBits(global1[_wgslsmith_index_u32(func_3(Struct_3(func_1(vec4<u32>(24689u, 3631u, 34882u, 41349u)).a.a), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, var_1, 6661i, u_input.b), vec4<i32>(u_input.b, -2147483647i, -37101i, u_input.b)), max(vec4<i32>(1i, var_1, -1i, u_input.a), vec4<i32>(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(36842u, 12u)], u_input.b, global1[_wgslsmith_index_u32(0u, 12u)]))), _wgslsmith_mod_i32(var_1, u_input.a), 0i, _wgslsmith_mult_i32(_wgslsmith_div_i32(2147483647i, u_input.b), global1[_wgslsmith_index_u32(1u, 12u)]))), 12u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(countOneBits(max(vec4<u32>(1u, 51207u, 27421u, 4294967295u), vec4<u32>(0u, 6839u, 17732u, 0u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, global2[_wgslsmith_index_u32(4294967295u, 16u)], -301f)), vec3<f32>(var_0, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 16u)], 1000f), _wgslsmith_f_op_f32(-var_0))))));
}

