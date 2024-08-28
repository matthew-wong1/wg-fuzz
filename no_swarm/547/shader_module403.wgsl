struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: vec4<i32>,
    d: i32,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(-1i, 1i, 2147483647i, i32(-2147483648), 2391i, 0i, -23599i, 15063i, 12660i, i32(-2147483648), -1i, 29227i, 1i, -1i, -1i, 2147483647i, 22522i, 2147483647i);

var<private> global1: array<f32, 25>;

var<private> global2: vec3<f32> = vec3<f32>(1611f, 461f, -484f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> vec2<i32> {
    global1 = array<f32, 25>();
    global0 = array<i32, 18>();
    let var_0 = true;
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d, 25u)] - -2129f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 1u), vec2<u32>(25255u, 4294967295u) & vec2<u32>(u_input.b, u_input.b)), 25u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(314f - 322f) * _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.d, 25u)], global2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(759f, global1[_wgslsmith_index_u32(1u, 25u)], 464f, global1[_wgslsmith_index_u32(0u, 25u)]), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(567f, global2.x, -661f, global1[_wgslsmith_index_u32(arg_0, 25u)]))), select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, true, var_0, false), vec4<bool>(var_0, false, var_0, true))))))), ~(-(arg_1 >> (~vec4<u32>(arg_0, 1u, u_input.b, 4294967295u) % vec4<u32>(32u)))), abs(_wgslsmith_add_vec2_i32(arg_1.zx, min(_wgslsmith_add_vec2_i32(arg_1.yw, vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], arg_1.x)), abs(vec2<i32>(-32471i, -14945i))))));
    global0 = array<i32, 18>();
    return _wgslsmith_add_vec2_i32(var_1.b.yw, var_1.b.yx >> (vec2<u32>(arg_0, _wgslsmith_div_u32(17695u, 27305u)) % vec2<u32>(32u)));
}

fn func_2(arg_0: u32) -> vec3<i32> {
    let var_0 = global1[_wgslsmith_index_u32(54224u, 25u)];
    global1 = array<f32, 25>();
    var var_1 = Struct_2(-2147483647i, _wgslsmith_dot_vec2_i32(-reverseBits(reverseBits(vec2<i32>(36719i, global0[_wgslsmith_index_u32(u_input.d, 18u)]))), _wgslsmith_div_vec2_i32(reverseBits(-vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(arg_0, 18u)])), firstLeadingBit(func_3(4294967295u, vec4<i32>(global0[_wgslsmith_index_u32(2671u, 18u)], global0[_wgslsmith_index_u32(u_input.d, 18u)], -40200i, 13307i))))), reverseBits(select(_wgslsmith_add_vec3_i32(vec3<i32>(12228i, global0[_wgslsmith_index_u32(u_input.b, 18u)], global0[_wgslsmith_index_u32(1061u, 18u)]), vec3<i32>(u_input.a, u_input.c, 2147483647i)), vec3<i32>(u_input.c, u_input.a, u_input.c), all(vec3<bool>(false, false, false))) << (vec3<u32>(~arg_0, ~arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, 71414u), vec3<u32>(arg_0, arg_0, 4294967295u))) % vec3<u32>(32u))));
    global1 = array<f32, 25>();
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(751f, global1[_wgslsmith_index_u32(37490u, 25u)], -1118f) - vec3<f32>(272f, -624f, global1[_wgslsmith_index_u32(u_input.d, 25u)]))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(756f, 762f, global1[_wgslsmith_index_u32(1u, 25u)]) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1353f, -1029f, global2.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 25u)], 115f, _wgslsmith_f_op_f32(global2.x + -1394f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(1u, 25u)], -123f, -714f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1549f, global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(43514u, 25u)]))), true)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-918f, global2.x, -1049f) + vec3<f32>(-2159f, 1788f, -1000f)) * vec3<f32>(global2.x, global2.x, global1[_wgslsmith_index_u32(u_input.d, 25u)]))), vec3<f32>(-550f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1715f * global1[_wgslsmith_index_u32(56227u, 25u)])), -1557f)));
    return _wgslsmith_clamp_vec3_i32(var_1.c, var_1.c, _wgslsmith_mod_vec3_i32(var_1.c, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, -1i, global0[_wgslsmith_index_u32(u_input.d, 18u)]), abs(vec3<i32>(global0[_wgslsmith_index_u32(25846u, 18u)], var_1.c.x, global0[_wgslsmith_index_u32(9308u, 18u)]))), -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(arg_0, 18u)], u_input.c, -2147483647i, 0i), countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(arg_0, 18u)], var_1.b, global0[_wgslsmith_index_u32(u_input.d, 18u)], 0i))))));
}

fn func_1(arg_0: Struct_4, arg_1: u32) -> vec3<bool> {
    var var_0 = Struct_2(min(global0[_wgslsmith_index_u32(arg_1, 18u)], _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(func_2(1u), abs(vec3<i32>(7954i, arg_0.c.b, 0i))), vec3<i32>(-1i, -44935i, -1i))), i32(-1i) * -_wgslsmith_add_i32(~(-38285i), ~global0[_wgslsmith_index_u32(1u, 18u)]), arg_0.c.c);
    var var_1 = u_input.c << (countOneBits(u_input.b) % 32u);
    let var_2 = ~16120u;
    var var_3 = Struct_4(_wgslsmith_dot_vec2_u32(~arg_0.b.b.yw, _wgslsmith_mult_vec2_u32(vec2<u32>(var_2, arg_1) | _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, arg_1), arg_0.b.b.xx), ~vec2<u32>(1u, 1u))), arg_0.b, Struct_2(-2147483647i, i32(-1i) * -1i, _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(18250i, -2147483647i, u_input.c), -vec3<i32>(global0[_wgslsmith_index_u32(30736u, 18u)], u_input.c, arg_0.c.c.x)), vec3<i32>(-arg_0.c.b, arg_0.c.b, _wgslsmith_mult_i32(1i, u_input.c)))));
    var_1 = _wgslsmith_clamp_i32(-9480i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(-1i, arg_0.c.c.x, 0i, u_input.a), min(vec4<i32>(1i, 73393i, 1i, 40863i), vec4<i32>(var_3.c.b, arg_0.c.a, arg_0.c.c.x, arg_0.c.a))), abs(vec4<i32>(0i, u_input.c, 2147483647i, arg_0.c.c.x))) & arg_0.c.a, global0[_wgslsmith_index_u32(abs(firstLeadingBit(arg_1)) << (var_3.b.c.x % 32u), 18u)]);
    return !(!select(vec3<bool>(any(vec2<bool>(true, false)), true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~min(~max(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, 15446u)), vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))), ~firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(35162u, 50817u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.x, var_0.x), vec2<u32>(4294967295u, 4294967295u)), 25u)]) + global2.xx));
    global1 = array<f32, 25>();
    let var_2 = u_input.c;
    let var_3 = vec2<bool>(!any(select(func_1(Struct_4(u_input.b, Struct_1(vec4<u32>(123705u, u_input.d, u_input.d, 0u), vec4<u32>(var_0.x, var_0.x, 4294967295u, 0u), var_0), Struct_2(15694i, 0i, vec3<i32>(57978i, -1659i, global0[_wgslsmith_index_u32(16950u, 18u)]))), var_0.x), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), true)), true);
    global1 = array<f32, 25>();
    global1 = array<f32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(~(vec4<i32>(global0[_wgslsmith_index_u32(1u, 18u)], -48560i, 17234i, 0i) >> (vec4<u32>(var_0.x, u_input.b, var_0.x, var_0.x) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(u_input.c, 0i, 1i, 0i)), ~vec4<i32>(1i, var_2, 2147483647i, u_input.c))) << (~(~_wgslsmith_mod_vec4_u32(vec4<u32>(19550u, 0u, u_input.b, 57384u), vec4<u32>(0u, u_input.b, 29168u, 1u))) % vec4<u32>(32u)), -_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, var_2, 7191i) << (select(vec3<u32>(u_input.b, 29026u, u_input.d), vec3<u32>(var_0.x, 1u, 63741u), vec3<bool>(var_3.x, false, true)) % vec3<u32>(32u)), firstLeadingBit(~vec3<i32>(var_2, u_input.a, -2147483647i))));
}

