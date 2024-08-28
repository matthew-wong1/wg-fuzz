struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -606f;

var<private> global1: i32 = -11886i;

var<private> global2: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(0u, 69131u), vec2<u32>(1u, 98967u), vec2<u32>(36965u, 38998u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 802u));

var<private> global3: array<Struct_1, 14>;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(global4.b, firstLeadingBit(abs(global4.a)), arg_0.c, global4.d);
    var var_1 = Struct_1(-global4.a, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a, 0i, 0i, 58455i), vec4<i32>(28836i, 2147483647i, 1i, global4.a)), firstTrailingBit(~vec4<i32>(var_0.b, 48443i, 2147483647i, -42891i)), abs(vec4<i32>(arg_0.b, 1i, var_0.a, -1i)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(global4.a, global4.b, 13397i, var_0.b), vec4<i32>(20287i, global4.a, global4.a, -1i), vec4<i32>(1i, -36653i, 16070i, -6573i))), firstTrailingBit(~vec4<i32>(1i, arg_0.a, -57382i, arg_0.b))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1579f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + global4.c)))))), !select(!(!arg_0.d), global4.d, select(global4.d, vec2<bool>(true, true), vec2<bool>(true, global4.d.x))));
    let var_2 = select(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, ~4294967295u, u_input.a), countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a, 7436u), vec3<u32>(118878u, 4294967295u, 4294967295u))))), firstTrailingBit(~(~vec3<u32>(u_input.a, u_input.a, 0u)) | abs(vec3<u32>(4294967295u, 51899u, u_input.a))), vec3<bool>(true, true, var_1.d.x | all(select(vec2<bool>(arg_0.d.x, arg_0.d.x), global4.d, vec2<bool>(global4.d.x, true)))));
    var var_3 = Struct_1(0i, 7068i, _wgslsmith_f_op_f32(-721f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2385f - _wgslsmith_f_op_f32(global4.c + -1000f))))), vec2<bool>(var_1.d.x, all(!global4.d) | true));
    let var_4 = abs(1i);
    return vec2<bool>(all(vec2<bool>(!select(var_3.d.x, global4.d.x, true), global4.d.x)), var_1.d.x);
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    var var_0 = global4.d.x;
    return Struct_1(-(~_wgslsmith_mult_i32(_wgslsmith_div_i32(1834i, -1i), ~(-36223i))), 2147483647i, 2048f, func_3(Struct_1(2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global4.a, -67790i, global4.b), vec3<i32>(1i, arg_1, global4.b)), vec3<i32>(global4.b, -2147483647i, 2147483647i)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-592f - global4.c))), select(vec2<bool>(false, false), vec2<bool>(global4.d.x, true), select(vec2<bool>(arg_0, arg_0), global4.d, true)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = vec4<u32>(u_input.a, u_input.a, 1343u, ~(~1u));
    global0 = -1000f;
    var var_1 = ~select(~(-28213i), global4.b, true);
    global3 = array<Struct_1, 14>();
    let var_2 = arg_0.b;
    return func_2(true, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, 16426i, 1i), vec4<i32>(var_2, -2147483647i, 43783i, var_2)), ~var_2), ~reverseBits(vec2<i32>(1i, -2147483647i))), _wgslsmith_mult_i32(-67528i, ~(19655i << (u_input.a % 32u)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    global3 = array<Struct_1, 14>();
    global1 = arg_0.x;
    let var_0 = arg_1;
    var var_1 = func_2(all(select(vec3<bool>(-13868i > arg_0.x, true, arg_1.d.x), vec3<bool>(all(vec4<bool>(arg_1.d.x, global4.d.x, true, true)), all(vec4<bool>(global4.d.x, arg_1.d.x, global4.d.x, var_0.d.x)), var_0.d.x | arg_1.d.x), select(!vec3<bool>(global4.d.x, arg_1.d.x, true), select(vec3<bool>(true, arg_1.d.x, global4.d.x), vec3<bool>(global4.d.x, global4.d.x, var_0.d.x), vec3<bool>(arg_1.d.x, arg_1.d.x, true)), select(vec3<bool>(var_0.d.x, arg_1.d.x, global4.d.x), vec3<bool>(var_0.d.x, arg_1.d.x, global4.d.x), var_0.d.x)))), func_2(true, -82858i).a);
    return ~(u_input.a << ((_wgslsmith_add_u32(52835u, abs(u_input.a)) & (~u_input.a ^ max(u_input.a, 1u))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.d;
    var var_1 = global3[_wgslsmith_index_u32(func_4(-max(vec2<i32>(-global4.b, global4.a), (vec2<i32>(-1i, global4.a) ^ vec2<i32>(global4.b, global4.a)) | vec2<i32>(-32303i, 0i)), func_1(global3[_wgslsmith_index_u32(~u_input.a, 14u)], global4.d)), 14u)];
    var var_2 = func_1(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~u_input.a << (40111u % 32u)), _wgslsmith_div_u32(u_input.a << (u_input.a % 32u), 18062u)), 14u)], vec2<bool>(true, false));
    let var_3 = Struct_1(i32(-1i) * -19087i, global4.b, _wgslsmith_f_op_f32(trunc(2217f)), vec2<bool>(false || var_2.d.x, true));
    let var_4 = ~_wgslsmith_mult_u32(reverseBits(~_wgslsmith_mod_u32(41594u, 1u)), ~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(firstTrailingBit(16324u), 0u) >> (~vec2<u32>(~0u, abs(4294967295u)) % vec2<u32>(32u)), select(~vec4<i32>(_wgslsmith_div_i32(-3232i, var_3.a), var_2.b, _wgslsmith_mult_i32(var_2.b, -22519i), _wgslsmith_sub_i32(var_1.b, 27504i)), vec4<i32>(max(abs(var_3.b), func_1(Struct_1(1i, global4.a, var_2.c, vec2<bool>(true, var_3.d.x)), vec2<bool>(true, var_2.d.x)).a), -countOneBits(1i), _wgslsmith_clamp_i32(~var_1.b, firstLeadingBit(-18524i), firstLeadingBit(var_1.b)), _wgslsmith_mult_i32(~var_2.a, var_1.b)), false), u_input.a);
}

