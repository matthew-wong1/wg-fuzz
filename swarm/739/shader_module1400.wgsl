struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_1;

var<private> global2: f32 = -424f;

var<private> global3: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: bool) -> i32 {
    return _wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0, 0i, -1i), vec3<i32>(0i, global1.d, u_input.c.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, 32731i, global1.a), vec3<i32>(global1.a, u_input.c.x, u_input.c.x))), vec3<i32>(2147483647i, _wgslsmith_div_i32(1i, 1i), _wgslsmith_div_i32(global1.c, -23625i))), arg_0);
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, -951f, -622f), vec3<f32>(-534f, global0.x, 944f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -889f, global0.x) * vec3<f32>(global0.x, 339f, 537f)))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, -113f, -453f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) * vec3<f32>(178f, global0.x, global0.x)), false))))));
    var var_1 = 0u;
    let var_2 = Struct_1(max(min(-1i, 1i), 0i), global1.b, _wgslsmith_mult_i32(countOneBits(func_3(0i, true)), reverseBits(global1.a)), abs(-_wgslsmith_dot_vec2_i32(u_input.c, u_input.c) & firstLeadingBit(reverseBits(26614i))));
    global1 = var_2;
    var var_3 = vec2<u32>(~var_2.b, abs(26381u ^ _wgslsmith_sub_u32(u_input.b.x, max(u_input.b.x, 6714u))));
    return var_2.b;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec2<bool>) -> i32 {
    let var_0 = Struct_1(-_wgslsmith_sub_i32(36982i, arg_1.d), global1.b, _wgslsmith_dot_vec4_i32(~(-(vec4<i32>(54841i, arg_1.d, u_input.c.x, global1.c) >> (vec4<u32>(1u, u_input.a, u_input.a, global1.b) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_mod_i32(u_input.c.x, 1i), _wgslsmith_add_i32(arg_1.c ^ -33134i, 1i), arg_1.c, -arg_1.d << (firstTrailingBit(arg_1.b) % 32u))), -u_input.c.x);
    let var_1 = arg_1;
    let var_2 = Struct_1(var_0.c, 4294967295u, (var_1.c & 1i) >> (func_2() % 32u), 0i);
    global2 = -2090f;
    let var_3 = Struct_1(global1.a, firstLeadingBit(_wgslsmith_mult_u32(var_2.b, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(var_2.b, arg_1.b, arg_2.x)), ~1u))), ~var_1.d, ~firstTrailingBit(abs(~var_1.c)));
    return ~(i32(-1i) * -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(!any(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), false, 1i != _wgslsmith_sub_i32(u_input.c.x, abs(u_input.c.x)), true), !vec4<bool>(true, _wgslsmith_clamp_i32(0i, u_input.c.x, u_input.c.x) > firstTrailingBit(20612i), any(vec4<bool>(false, true, false, false)), min(global1.b, global1.b) != 9164u), vec4<bool>(false, any(vec2<bool>(true, true)), true || !any(vec2<bool>(false, false)), (u_input.b.x & 35363u) < min(~u_input.a, global1.b & 1u)));
    global1 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.c, firstLeadingBit(-vec2<i32>(global1.a, global1.a)))), ~((global1.b | _wgslsmith_dot_vec4_u32(vec4<u32>(global1.b, 45175u, u_input.b.x, 4294967295u), vec4<u32>(24456u, global1.b, global1.b, global1.b))) ^ select(u_input.b.x, 0u, var_0.x)), func_1(_wgslsmith_f_op_f32(trunc(442f)), Struct_1(global1.c, global1.b, -(-16147i << (u_input.b.x % 32u)), _wgslsmith_add_i32(-11624i, ~global1.a)), ~vec3<u32>(abs(4294967295u), 50185u, _wgslsmith_dot_vec2_u32(vec2<u32>(25776u, 1u), vec2<u32>(38452u, global1.b))), vec2<bool>(!all(var_0.yzw), !var_0.x)), _wgslsmith_div_i32(70394i, i32(-1i) * -10399i) | ~u_input.c.x);
    var var_1 = u_input.c.x;
    global3 = global0.x;
    var var_2 = -firstLeadingBit(-(~(~vec4<i32>(u_input.c.x, u_input.c.x, -7445i, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -105f), global0.x, 1000f))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(1860f, -692f, global0.x, -1000f), vec4<f32>(1213f, global0.x, global0.x, -1042f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -778f, 264f, global0.x))))))), abs(0u), abs(_wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-44041i, 37630i, global1.d, u_input.c.x), vec4<i32>(u_input.c.x, global1.c, global1.c, -1i))), ~abs(vec4<i32>(-2147483647i, var_2.x, u_input.c.x, -2147483647i)))), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(16145u, global1.b, 49221u, global1.b), vec4<u32>(global1.b, 78064u, 119332u, 20513u), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), vec4<u32>(1u, 4294967295u, u_input.b.x, 21751u), firstTrailingBit(vec4<u32>(global1.b, u_input.a, global1.b, 4294967295u))), select(vec4<u32>(1u, global1.b, 66901u, u_input.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 26195u, 51711u, u_input.b.x), vec4<u32>(global1.b, u_input.b.x, 4294967295u, 1u)), true), _wgslsmith_add_vec4_u32(~vec4<u32>(19406u, 65423u, u_input.b.x, u_input.a), max(vec4<u32>(0u, 7698u, 56158u, 2104u), vec4<u32>(global1.b, u_input.a, global1.b, u_input.a)))), vec3<u32>(_wgslsmith_mod_u32(~4294967295u, 0u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(101558u, global1.b, global1.b, global1.b), vec4<u32>(global1.b, u_input.b.x, u_input.b.x, u_input.b.x))), 7939u, u_input.a));
}

