struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(1u, false), Struct_1(4294967295u, false), Struct_1(37152u, false), Struct_1(35322u, false), Struct_1(72535u, true), Struct_1(57557u, false), Struct_1(102517u, true), Struct_1(0u, true), Struct_1(16586u, true), Struct_1(4294967295u, false), Struct_1(1u, true), Struct_1(37777u, false), Struct_1(4294967295u, false), Struct_1(19490u, true), Struct_1(0u, false), Struct_1(114216u, false));

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(15406u, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: i32) -> u32 {
    global1 = global0[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec2_u32(u_input.b.wx, _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), u_input.b.xz)))), 16u)];
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 16u)]);
    global0 = array<Struct_1, 16>();
    var_0 = Struct_2(Struct_1(u_input.b.x, true));
    let var_1 = !vec4<bool>(true, arg_1 < _wgslsmith_f_op_f32(-1679f * -261f), max(-1i, -arg_2) >= (~u_input.a.x & (i32(-1i) * -1i)), (~2147483647i ^ arg_2) > _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_2, 1i), min(-10037i, arg_2)));
    return _wgslsmith_mult_u32(_wgslsmith_mult_u32(8317u, max(u_input.b.x >> (global1.a % 32u), ~(~4294967295u))), 41817u);
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = u_input.b.x;
    global1 = Struct_1(u_input.b.x, true);
    return Struct_2(global0[_wgslsmith_index_u32(4294967295u | func_3(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_f32(select(576f, -1191f, false)), _wgslsmith_sub_i32(0i, 0i)), 16u)]);
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-437f, arg_0.x), 985f)) + arg_0));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -342f);
    global2 = arg_2.a;
    global0 = array<Struct_1, 16>();
    var var_2 = func_2(~_wgslsmith_mod_u32(global2.a, 4294967295u));
    return !global2.b;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec3<bool>) -> StorageBuffer {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(~arg_0, 16u)]);
    let var_1 = select(~(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -33603i, 2147483647i))) >> (~vec3<u32>(5628u, 21157u, global2.a) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 1i, 1i, u_input.a.x), vec4<i32>(-54305i, u_input.a.x, 41800i, 28714i), vec4<i32>(-2147483647i, 9227i, u_input.a.x, 2147483647i)), vec4<i32>(-1412i, u_input.a.x, -21421i, 2147483647i)), vec4<i32>(i32(-1i) * -5373i, ~25495i, -u_input.a.x, u_input.a.x)), 0i, 6270i), select(!select(arg_2, vec3<bool>(false, global1.b, global2.b), arg_2.x || global1.b), arg_2, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 67394i), ~vec4<i32>(-38016i, u_input.a.x, 40544i, 9158i)) == _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.a.x, u_input.a.x, -10389i, -26645i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i)))));
    let var_2 = ~var_1.x;
    var var_3 = vec4<bool>(false, arg_2.x, any(vec4<bool>(!var_0.a.b || arg_1.a.b, false, all(arg_2), true)), true | global2.b);
    var var_4 = firstTrailingBit(reverseBits(98416u));
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(158f)), _wgslsmith_f_op_f32(floor(1000f)))) + -285f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 16>();
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x | u_input.a.x, u_input.a.x))), ~u_input.a.x);
    var var_1 = countOneBits(countOneBits(global2.a));
    var var_2 = Struct_1(_wgslsmith_mult_u32(~40583u, min(global1.a ^ abs(0u), global1.a)), global2.b);
    var var_3 = true;
    let x = u_input.a;
    s_output = func_4(max(~var_2.a, global1.a), Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), select(select(vec3<bool>(all(vec4<bool>(false, global1.b, global1.b, global1.b)), true, !global1.b), !select(vec3<bool>(false, true, true), vec3<bool>(global1.b, global2.b, var_2.b), false), vec3<bool>(var_2.b || global2.b, var_2.b, 4294967295u < u_input.b.x)), vec3<bool>(global1.b, all(!vec3<bool>(false, global2.b, true)), global2.b), vec3<bool>(_wgslsmith_div_f32(1859f, -129f) <= _wgslsmith_f_op_f32(trunc(-340f)), func_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(149f, 1753f))), _wgslsmith_f_op_f32(-597f - 1427f), Struct_2(global0[_wgslsmith_index_u32(10305u, 16u)])), !(!global1.b))));
}

