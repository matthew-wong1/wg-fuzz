struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 5> = array<bool, 5>(false, true, true, false, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_4) -> u32 {
    return ~global0.e.x;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: vec2<f32>) -> i32 {
    global1 = array<bool, 5>();
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(1090f, -1231f), vec2<f32>(arg_3.x, 677f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1459f, arg_1.a.a.x))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.a.x, -305f), vec2<f32>(arg_3.x, global0.a.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1274f, arg_3.x) + arg_3)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1323f, arg_0.a.x)))), arg_0.d.x & _wgslsmith_mult_i32(2147483647i, firstTrailingBit(i32(-1i) * -8862i)), -global0.c, _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, _wgslsmith_div_i32(arg_1.a.b, 2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(0i, 1i))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, arg_0.b), vec3<i32>(-1i, arg_0.b, -49326i)), _wgslsmith_add_i32(global0.b, arg_1.a.d.x), select(u_input.a, 24111i, arg_1.c))) & arg_1.a.d, abs(~(~select(vec3<u32>(global0.e.x, arg_0.e.x, arg_0.e.x), arg_0.e, true))));
    var var_0 = abs(-global0.d);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.a.x), global0.a.x))), u_input.a, global0.b, firstLeadingBit(countOneBits(-vec3<i32>(-1i, arg_2, 1i))), select(reverseBits(vec3<u32>(0u ^ global0.e.x, 50451u, global0.e.x & arg_0.e.x)), arg_0.e << ((global0.e >> (countOneBits(vec3<u32>(global0.e.x, arg_0.e.x, arg_0.e.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<bool>(true, true, !any(vec2<bool>(false, false)))));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.a), _wgslsmith_f_op_vec2_f32(select(global0.a, vec2<f32>(-953f, arg_0.a.x), vec2<bool>(false, true))), false))))), 1i, -34592i, vec3<i32>(-_wgslsmith_mod_i32(25309i << (arg_1.b.x % 32u), global0.c), u_input.a, reverseBits(abs(abs(2147483647i)))), arg_1.a.e);
    return _wgslsmith_add_i32(firstLeadingBit(29982i), 1i);
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    var var_0 = firstTrailingBit(min(-abs(~vec4<i32>(1i, arg_0.a.d.x, -55096i, 2147483647i)), vec4<i32>(~(-25640i), arg_0.a.d.x, countOneBits(0i), -2147483647i) & _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.a, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, global0.d.x, global0.d.x, 40066i), vec4<i32>(-37569i, 0i, u_input.a, global0.b)))));
    var var_1 = _wgslsmith_mod_vec2_u32(arg_0.b, global0.e.xz & vec2<u32>(func_2(Struct_2(Struct_1(vec2<f32>(2520f, -806f), arg_0.a.b, -17706i, vec3<i32>(-2147483647i, var_0.x, -1i), global0.e), vec2<u32>(arg_0.a.e.x, 4294967295u), false, false), u_input.a, Struct_4(10180i)), 1u));
    var var_2 = Struct_3(var_0.x, ~4294967295u);
    var_0 = ~max(firstTrailingBit(-reverseBits(vec4<i32>(-2147483647i, -4707i, -38496i, u_input.a))), vec4<i32>(var_2.a, func_3(arg_0.a, arg_0, ~(-38747i), _wgslsmith_f_op_vec2_f32(vec2<f32>(412f, global0.a.x) * vec2<f32>(arg_1, arg_1))), arg_0.a.c, var_2.a ^ firstTrailingBit(arg_0.a.c)));
    var var_3 = -firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, arg_0.a.c, u_input.a), vec3<i32>(-2147483647i, 23257i, u_input.a), vec3<i32>(-2147483647i, global0.b, -1i)), vec3<i32>(var_0.x, i32(-1i) * -1i, -1i)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-525f, 171f), _wgslsmith_f_op_vec2_f32(-arg_0.a.a)))))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(var_0.x, -28905i, 1i)), -_wgslsmith_div_vec3_i32(vec3<i32>(0i, arg_0.a.b, -2147483647i), global0.d)), _wgslsmith_div_vec3_i32(vec3<i32>(24941i, -2147483647i, 1i) << ((vec3<u32>(var_2.b, var_1.x, 4377u) << (vec3<u32>(var_2.b, global0.e.x, 28909u) % vec3<u32>(32u))) % vec3<u32>(32u)), ~vec3<i32>(var_0.x, -37573i, var_2.a) & _wgslsmith_div_vec3_i32(vec3<i32>(-69876i, var_2.a, var_2.a), vec3<i32>(global0.c, arg_0.a.c, global0.c)))), 19474i, -var_0.xwz, vec3<u32>(14172u, 111105u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(Struct_1(vec2<f32>(global0.a.x, -1531f), _wgslsmith_clamp_i32(global0.b, -1i, u_input.a) & global0.b, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-10308i, u_input.a), global0.d.x), ~(-global0.d), global0.e), reverseBits(vec2<u32>(global0.e.x >> (78556u % 32u), ~89212u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global0.a.x)))) > _wgslsmith_div_f32(global0.a.x, _wgslsmith_div_f32(-139f, global0.a.x)), -292f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_f32(select(-945f, _wgslsmith_f_op_f32(-1807f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1213f) * _wgslsmith_f_op_f32(global0.a.x - global0.a.x))), true)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-1045f * -166f), global0.a.x);
    var var_2 = Struct_3(-7695i, abs(_wgslsmith_clamp_u32(~var_0.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 15269u, 4294967295u), vec3<u32>(global0.e.x, 36216u, var_0.e.x)), var_0.e.x)) ^ ~max(~106085u, max(global0.e.x, 51850u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.x)))), _wgslsmith_f_op_f32(-var_1.x), 1562f, _wgslsmith_div_f32(-553f, -1857f)), _wgslsmith_div_vec4_i32(~(vec4<i32>(-1i) * -vec4<i32>(u_input.a, var_0.d.x, 10168i, 1i)), min(vec4<i32>(-54998i, _wgslsmith_sub_i32(0i, 1i), _wgslsmith_mult_i32(global0.b, -2147483647i), global0.b), _wgslsmith_mod_vec4_i32(~vec4<i32>(var_0.b, 10683i, var_0.b, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(-11942i, 1i, 8422i, global0.d.x), vec4<i32>(-2147483647i, global0.d.x, var_2.a, var_2.a))))), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.e.x, global0.e.x, 19552u, global0.e.x), ~vec4<u32>(global0.e.x, 1u, var_2.b, 17734u)) ^ reverseBits(~vec4<u32>(global0.e.x, 4294967295u, var_0.e.x, 37566u))), _wgslsmith_div_i32(-_wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, -1i), firstTrailingBit(u_input.a)), global0.c));
}

