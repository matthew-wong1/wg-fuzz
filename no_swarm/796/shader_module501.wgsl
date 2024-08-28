struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true));

var<private> global1: Struct_1 = Struct_1(4294967295u, 4294967295u, vec3<u32>(23834u, 30434u, 1u), false, 32526u);

var<private> global2: vec4<f32> = vec4<f32>(-1024f, 301f, -2833f, -606f);

var<private> global3: array<Struct_1, 15>;

var<private> global4: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(0u, 0u, vec3<u32>(0u, 49882u, 4294967295u), false, 24012u), Struct_1(4294967295u, 19702u, vec3<u32>(4294967295u, 18140u, 0u), false, 2739u), Struct_1(1u, 13046u, vec3<u32>(22553u, 4294967295u, 0u), false, 4294967295u), Struct_1(4294967295u, 0u, vec3<u32>(59238u, 1u, 0u), false, 835u), Struct_1(1u, 4294967295u, vec3<u32>(4012u, 1u, 1u), false, 0u), Struct_1(63775u, 0u, vec3<u32>(43170u, 4294967295u, 0u), true, 8522u), Struct_1(11797u, 1u, vec3<u32>(0u, 8804u, 2294u), true, 7961u), Struct_1(0u, 47962u, vec3<u32>(17829u, 0u, 28393u), false, 1u), Struct_1(37163u, 0u, vec3<u32>(23616u, 1u, 0u), true, 0u), Struct_1(30524u, 0u, vec3<u32>(1u, 4294967295u, 48102u), false, 2250u), Struct_1(0u, 28486u, vec3<u32>(4294967295u, 37186u, 4294967295u), false, 21636u), Struct_1(44112u, 4294967295u, vec3<u32>(13366u, 14263u, 31850u), false, 4294967295u), Struct_1(4294967295u, 43867u, vec3<u32>(13658u, 13344u, 22891u), true, 4294967295u), Struct_1(101741u, 0u, vec3<u32>(1u, 0u, 1u), false, 1u), Struct_1(4294967295u, 51018u, vec3<u32>(10170u, 54765u, 1u), true, 4294967295u), Struct_1(110138u, 0u, vec3<u32>(37239u, 7590u, 19869u), true, 27504u), Struct_1(1u, 251u, vec3<u32>(1u, 0u, 4294967295u), false, 54993u), Struct_1(4294967295u, 32786u, vec3<u32>(0u, 1u, 4294967295u), false, 4294967295u), Struct_1(73359u, 58475u, vec3<u32>(67999u, 1u, 0u), true, 56771u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec3<u32> {
    global3 = array<Struct_1, 15>();
    global4 = array<Struct_1, 19>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-global2.x), Struct_1(min(4354u, firstLeadingBit(arg_0.a)), _wgslsmith_add_u32(_wgslsmith_add_u32(~global1.c.x, 22747u ^ global1.c.x), min(~u_input.a.x, 15783u)), ~(~abs(vec3<u32>(0u, 1u, 1546u))), false, reverseBits(firstTrailingBit(17352u))), Struct_1(global1.c.x, _wgslsmith_add_u32(firstLeadingBit(1u), global1.b), arg_0.c, _wgslsmith_mod_i32(_wgslsmith_mod_i32(2637i, u_input.b), 31199i) >= (70873i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-59962i, -2147483647i, -2147483647i, u_input.b), vec4<i32>(-18674i, u_input.b, -27911i, u_input.b))), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(u_input.c, global1.c.x, global1.c.x, global1.b), vec4<u32>(4294967295u, global1.e, arg_0.c.x, 18952u), global1.d), max(vec4<u32>(global1.c.x, arg_0.b, 1u, u_input.a.x) >> (vec4<u32>(global1.e, arg_0.b, 53393u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(arg_0.e, 1u, 26406u, arg_0.c.x)))), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -659f), _wgslsmith_f_op_f32(-global2.x))))));
    let var_1 = var_0.c.c.zy;
    global0 = array<vec4<bool>, 2>();
    return ~(~u_input.a);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> vec3<bool> {
    let var_0 = Struct_1(arg_2, global1.e, func_3(arg_0.c, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - 637f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1168f + -504f)))), ~global1.e);
    var var_1 = _wgslsmith_f_op_f32(-global2.x);
    var var_2 = Struct_2(443f, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~select(arg_1.c, vec3<u32>(42372u, arg_2, 4294967295u), var_0.d)), vec3<u32>(var_0.b | var_0.c.x, ~global1.b, _wgslsmith_mult_u32(0u, max(var_0.a, 24619u)))), 19u)], arg_0.c, -627f, _wgslsmith_f_op_f32(floor(global2.x)));
    let var_3 = ~((vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.b, 2147483647i, 68200i), vec4<i32>(19270i, 0i, 1i, u_input.b), vec4<i32>(-83004i, u_input.b, u_input.b, -16799i))) ^ -(~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)));
    var var_4 = Struct_2(-608f, global4[_wgslsmith_index_u32(~global1.a, 19u)], var_2.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.e))))), _wgslsmith_f_op_f32(f32(-1f) * -1270f));
    return !(!vec3<bool>(any(vec3<bool>(false, true, arg_0.b.d)), true, any(select(vec3<bool>(false, var_0.d, false), vec3<bool>(var_0.d, false, var_0.d), vec3<bool>(true, arg_1.d, true)))));
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: vec4<i32>) -> Struct_1 {
    return global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~23932u, firstLeadingBit(~(~_wgslsmith_sub_u32(1u, u_input.a.x)))), 15u)];
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = true;
    let var_1 = global1.d;
    global1 = func_4(!(!any(func_2(Struct_2(438f, Struct_1(0u, global1.c.x, arg_2.c, false, u_input.a.x), arg_2, global2.x, arg_0), arg_2, 4294967295u))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, reverseBits(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-22412i, -20357i, 31239i))), min(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.x, u_input.b, arg_1.x), vec3<i32>(-1i, arg_1.x, arg_1.x)), min(vec3<i32>(u_input.b, arg_1.x, -1i), vec3<i32>(u_input.b, 69337i, u_input.b)))), u_input.b, 26228i), countOneBits(max(vec4<i32>(arg_1.x, _wgslsmith_div_i32(2147483647i, u_input.b), -10977i, abs(arg_1.x)), _wgslsmith_div_vec4_i32(vec4<i32>(-10023i, 2147483647i, -1714i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, -8930i, arg_1.x, u_input.b), vec4<i32>(-53602i, 0i, u_input.b, -1i))))));
    global1 = Struct_1(~arg_2.e, func_4(var_0, abs(~firstTrailingBit(vec3<i32>(39912i, -1i, u_input.b))), reverseBits(vec4<i32>(u_input.b, 6532i, arg_1.x, u_input.b)) << (vec4<u32>(1u, ~u_input.a.x, 1u, ~0u) % vec4<u32>(32u))).c.x, global1.c, any(vec4<bool>(var_0, false, true, func_2(Struct_2(arg_0, arg_2, Struct_1(0u, u_input.a.x, u_input.a, var_0, 1u), 373f, 426f), func_4(arg_2.d, vec3<i32>(1i, u_input.b, -1i), vec4<i32>(u_input.b, -22396i, -44514i, 30414i)), ~global1.b).x)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c, _wgslsmith_mod_u32(u_input.c, global1.c.x), abs(50945u), _wgslsmith_div_u32(4294967295u, 16280u)), vec4<u32>(~4294967295u, min(0u, u_input.c), 16238u, u_input.c)), ~_wgslsmith_div_u32(4294967295u, arg_2.e)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(min(-690f, arg_0)))), -229f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(507f, arg_0, global2.x, 698f) * vec4<f32>(arg_0, 615f, 1530f, global2.x)))))));
    return Struct_2(-434f, Struct_1(u_input.c, global1.e, _wgslsmith_sub_vec3_u32(~vec3<u32>(14865u, 32044u, 10049u), vec3<u32>(0u, global1.a, arg_2.b)), arg_2.d, 1u), Struct_1(~arg_2.e, reverseBits(arg_2.c.x), max(~arg_2.c, _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, arg_2.c), _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(arg_2.a, arg_2.c.x, u_input.a.x)))), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 0u), global1.c.zz)) != 0u, u_input.c), global2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_2.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2929f), _wgslsmith_f_op_f32(arg_0 * global2.x), func_2(Struct_2(arg_0, Struct_1(5387u, 1u, vec3<u32>(1u, 0u, u_input.c), false, global1.b), Struct_1(arg_2.c.x, arg_2.c.x, u_input.a, true, 9238u), -177f, 753f), Struct_1(40001u, 29932u, global1.c, true, global1.b), arg_2.c.x).x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1239f * global2.x)) * global2.x), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1915f)))), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, global2.x) + vec4<f32>(-307f, -3732f, -162f, global2.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 658f, global2.x) + vec4<f32>(global2.x, global2.x, 733f, global2.x)))))), any(select(vec2<bool>(any(vec3<bool>(false, true, global1.d)), !global1.d), vec2<bool>(!global1.d, true), vec2<bool>(all(global0[_wgslsmith_index_u32(48394u, 2u)]), false)))));
    var var_0 = global1.d;
    let var_1 = func_1(global2.x, vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b, reverseBits(-1i)), ~(u_input.b | 38041i)), u_input.b), Struct_1(~0u, ~u_input.c, _wgslsmith_div_vec3_u32(select(u_input.a, countOneBits(u_input.a), !global1.d), _wgslsmith_mod_vec3_u32(select(global1.c, vec3<u32>(u_input.c, 61917u, 1u), global1.d), vec3<u32>(u_input.a.x, global1.b, 4294967295u))), !(!(global2.x > global2.x)), 31754u));
    let var_2 = var_1.b;
    let var_3 = vec2<bool>(!(_wgslsmith_f_op_f32(-1655f - 488f) != var_1.d), !(!(!var_2.d) & true));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, i32(-1i) * -2147483647i, 1i, u_input.b), vec4<i32>(-11091i, 9819i, -u_input.b, 0i)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e)), global2.x, 1474f), vec3<f32>(_wgslsmith_f_op_f32(func_1(683f, vec2<i32>(u_input.b, u_input.b), global3[_wgslsmith_index_u32(var_2.a, 15u)]).d + var_1.e), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-228f)))), var_1.d)), reverseBits(vec4<i32>(firstLeadingBit(1i), 1i, _wgslsmith_mod_i32(38988i, -u_input.b), countOneBits(u_input.b >> (1u % 32u)))), _wgslsmith_div_f32(-498f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.e, var_1.e)) + 509f)), select(_wgslsmith_mult_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.b, 0i, u_input.b), vec4<i32>(-1i, 8397i, 6725i, u_input.b)), vec4<i32>(u_input.b & u_input.b, u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 57701i), vec2<i32>(u_input.b, u_input.b)), firstLeadingBit(u_input.b))), firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -8896i), vec4<i32>(u_input.b, 0i, -2147483647i, -12193i)), u_input.b << (var_1.b.e % 32u), 37492i, 13671i)), false));
}

