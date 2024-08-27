struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

var<private> global1: Struct_2;

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: i32) -> u32 {
    var var_0 = -12561i;
    var var_1 = reverseBits(~vec4<i32>(-arg_0, reverseBits(firstLeadingBit(2147483647i)), ~(-1i), select(select(0i, u_input.b.x, true), ~arg_1.x, any(vec2<bool>(false, false)))));
    let var_2 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(~var_1.x, global2.c.x, ~13683i << (_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b, 8344u, 1u, global2.b), vec4<u32>(4294967295u, 4776u, global1.b, 20530u)) % 32u)), _wgslsmith_clamp_i32(firstLeadingBit(-14892i), 19664i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global2.d.x, arg_1.x, var_1.x) | vec4<i32>(-1i, u_input.a, arg_1.x, -3138i), ~vec4<i32>(global2.a, arg_2, 7002i, arg_1.x)))));
    var var_3 = Struct_3(select(vec4<bool>(any(vec3<bool>(false, true, false)), true | all(vec3<bool>(true, false, false)), false, true || any(vec2<bool>(false, true))), !select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), any(vec4<bool>(true, false, true, true))), true), select(vec4<bool>(!all(vec3<bool>(false, true, true)), any(vec3<bool>(true, true, true)), true, all(vec3<bool>(true, false, true)) || false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false), all(select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(false, false)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.e.x - 395f), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(49359u, 0u), 1u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(global2.b), 1u)])))), global2.e.x, true);
    global2 = Struct_2(_wgslsmith_clamp_i32(abs(_wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_mod_i32(2147483647i, arg_1.x))), _wgslsmith_dot_vec4_i32(min(vec4<i32>(0i, 0i, global2.a, -45972i), vec4<i32>(u_input.b.x, -45420i, 23914i, 16434i)), ~vec4<i32>(1i, global1.c.x, arg_2, -35101i)), global2.a), abs(global1.b), vec3<i32>(reverseBits(arg_0), _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0, 2147483647i) & countOneBits(vec2<i32>(arg_0, -2147483647i)), u_input.b), -5931i), vec3<i32>(-u_input.a, arg_1.x, -_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 44556i, arg_1.x, global1.d.x), reverseBits(vec4<i32>(0i, 0i, var_2.a, -1i)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(426f + var_3.c.x), -615f)));
    return 4294967295u;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    global2 = Struct_2(arg_0.x, global1.b, _wgslsmith_mod_vec3_i32(countOneBits(arg_2.xxw), global1.d), global2.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.e.x + global1.e.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global1.e.x, global1.e.x)))))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(11992u, 1u)]))), global0[_wgslsmith_index_u32(1u, 1u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.e.x)))))) - global1.e.x);
    let var_1 = global2.e.x;
    let var_2 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(func_3(-4019i, arg_0, arg_3.a), _wgslsmith_dot_vec4_u32(vec4<u32>(10506u, 1u, 0u, global2.b), vec4<u32>(4294967295u, 0u, 0u, global2.b))), global2.b, countOneBits(_wgslsmith_mult_u32(global2.b, global2.b))), select(_wgslsmith_mod_vec3_u32(max(vec3<u32>(global2.b, global2.b, 9725u), vec3<u32>(58327u, 4294967295u, global2.b)), vec3<u32>(37078u, 35942u, 12731u)), _wgslsmith_div_vec3_u32(~vec3<u32>(global1.b, 5142u, 74027u), ~vec3<u32>(global2.b, 0u, 61059u)), all(vec3<bool>(false, false, false))));
    var var_3 = Struct_3(vec4<bool>(~(-arg_2.x) > (i32(-1i) * -arg_1.a), all(vec3<bool>(any(vec4<bool>(true, false, true, false)), all(vec4<bool>(false, true, true, false)), true)), true, !(!all(vec3<bool>(true, true, false)))), select(vec4<bool>(true, global0[_wgslsmith_index_u32(global2.b, 1u)] <= _wgslsmith_f_op_f32(min(1481f, 496f)), (arg_0.x == 0i) & false, false), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false))), (~arg_1.a >= 1i) || true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(37627u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]) + global1.e))), _wgslsmith_div_vec2_f32(global1.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1201f, 787f), global1.e)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1099f, global1.e.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 1u)], global2.e.x), global1.e.x))))), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), select(true, true, true))));
    return arg_3;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: i32) -> vec4<u32> {
    let var_0 = arg_1;
    var var_1 = true;
    var var_2 = ~(i32(-1i) * -43468i);
    let var_3 = func_2(vec3<i32>(~u_input.a, 1i, global2.d.x), Struct_1(0i | arg_2), -vec4<i32>(-1i, firstLeadingBit(firstTrailingBit(0i)), -40168i, ~firstTrailingBit(-10740i)), Struct_1(global1.a));
    global2 = Struct_2(global2.c.x, global2.b, vec3<i32>(-var_3.a, -1i, u_input.a), _wgslsmith_add_vec3_i32(global2.c, countOneBits(global1.d)), vec2<f32>(-337f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1124f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(61703u, 1u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1628f))))));
    return ~(~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global2.b, 0u, 64577u) ^ vec4<u32>(32349u, global2.b, var_0, global2.b), vec4<u32>(29813u, 0u, var_0, arg_1) | vec4<u32>(global1.b, var_0, global1.b, global1.b)), ~(~vec4<u32>(global2.b, 15711u, var_0, 17665u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec3<i32>(-global2.d.x, firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, global1.d.x), vec2<i32>(2147483647i, global2.c.x)), _wgslsmith_sub_i32(global1.d.x, -37274i))), min((2611i >> (1u % 32u)) ^ _wgslsmith_div_i32(1i, global1.c.x), 34866i >> (1u % 32u)));
    let var_1 = vec2<bool>(true, true);
    let var_2 = 1u;
    global0 = array<f32, 1>();
    let var_3 = global1.e.x;
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.b, global2.b, global1.b), vec3<u32>(global1.b, global2.b, global1.b)) | ~vec3<u32>(global1.b, global2.b, 6380u)) ^ ((vec3<u32>(1u, 33717u, global1.b) << (~vec3<u32>(16800u, var_2, global1.b) % vec3<u32>(32u))) | ~(vec3<u32>(global2.b, global1.b, global1.b) >> (vec3<u32>(4294967295u, 59365u, var_2) % vec3<u32>(32u)))), vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_1(var_1.x, var_2, u_input.b.x) | vec4<u32>(85178u, global1.b, var_2, 23997u), firstTrailingBit(abs(vec4<u32>(1u, 1u, 30129u, 24571u)))), 1u)], global2.e.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1102f, global2.e.x, global2.e.x, 631f) + vec4<f32>(-1100f, global0[_wgslsmith_index_u32(4294967295u, 1u)], global2.e.x, global1.e.x)))), vec4<f32>(_wgslsmith_div_f32(-1006f, 797f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1124f, -415f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global2.e.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.e.x)) + _wgslsmith_f_op_f32(global2.e.x * global0[_wgslsmith_index_u32(global1.b, 1u)]))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(837f, global0[_wgslsmith_index_u32(27902u, 1u)], global2.e.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(global2.b, 1u)], global1.e.x, 111f))))));
}

