struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_1, 24>;

var<private> global3: Struct_1 = Struct_1(true, 147f);

var<private> global4: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(false, -1108f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: f32, arg_1: u32) -> i32 {
    global4 = array<Struct_1, 1>();
    var var_0 = ~firstTrailingBit(~abs(9725i) ^ abs(_wgslsmith_dot_vec2_i32(vec2<i32>(13380i, 6566i), vec2<i32>(-1i, -1i))));
    var var_1 = ~(-21228i);
    let var_2 = 1i << (u_input.a % 32u);
    let var_3 = Struct_3(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1, _wgslsmith_mult_u32(73227u, arg_1)), ~vec2<u32>(abs(1u), min(4294967295u, 2242u))), u_input.a, !select(select(!vec3<bool>(false, true, global3.a), vec3<bool>(true, global1.x, true), arg_0 > 1000f), !select(vec3<bool>(false, global3.a, true), vec3<bool>(false, global3.a, global1.x), global1.x), var_2 >= (40462i & var_2)), ~(i32(-1i) * -1i));
    return var_3.d;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_i32(-72503i, max(_wgslsmith_sub_i32(func_2(_wgslsmith_f_op_f32(-global3.b), ~u_input.a), -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2081i, _wgslsmith_div_i32(9524i, -16663i)), vec2<i32>(0i, 1i))), ~(~_wgslsmith_add_i32(32603i, select(46221i, -9317i, global3.a))));
    global2 = array<Struct_1, 24>();
    global0 = -1000f;
    let var_1 = Struct_3(max(~abs(vec2<u32>(u_input.a, 2943u)) >> ((vec2<u32>(219u, u_input.a) >> (abs(vec2<u32>(4294967295u, u_input.a)) % vec2<u32>(32u))) % vec2<u32>(32u)), firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(abs(_wgslsmith_mult_u32(u_input.a, 8594u)), u_input.a), u_input.a), vec3<bool>(global1.x, arg_0.a, global3.a), 0i);
    global4 = array<Struct_1, 1>();
    return Struct_2(Struct_1(global3.a, global3.b), Struct_1(_wgslsmith_mult_i32(min(-24067i, 7800i), ~(-41145i)) <= var_1.d, _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(394f - -274f), -972f))), !global3.a);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec3<u32>) -> vec2<bool> {
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.b.b)));
    global2 = array<Struct_1, 24>();
    return global1.zz;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: vec2<bool>) -> u32 {
    global4 = array<Struct_1, 1>();
    global3 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, ~4294967295u, 1u), vec3<u32>(u_input.a, u_input.a, u_input.a)), 42754u), 1u)];
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1155f, arg_2) * vec3<f32>(-247f, arg_0, 1000f)), vec3<f32>(arg_1.b, arg_0, 390f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, arg_2, global3.b))), !vec3<bool>(arg_3.x, false, false))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.b, arg_0, arg_2), _wgslsmith_f_op_vec3_f32(vec3<f32>(-214f, -1214f, arg_2) - vec3<f32>(608f, arg_0, arg_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1797f, arg_0, 830f), vec3<f32>(-103f, -393f, -1262f))) + vec3<f32>(1f, 1f, 1f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b), 1944f, _wgslsmith_div_f32(378f, 650f)) - vec3<f32>(func_1(global2[_wgslsmith_index_u32(u_input.a, 24u)]).a.b, arg_0, arg_2)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0, arg_1.b)), _wgslsmith_f_op_f32(arg_1.b - arg_0))))));
    let var_1 = global4[_wgslsmith_index_u32(4294967295u, 1u)];
    let var_2 = func_1(Struct_1(arg_3.x, _wgslsmith_f_op_f32(1446f + _wgslsmith_div_f32(-484f, -984f))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global4[_wgslsmith_index_u32(~func_4(_wgslsmith_f_op_f32(872f + _wgslsmith_f_op_f32(global3.b - 1136f)), Struct_1(global3.a, _wgslsmith_f_op_f32(f32(-1f) * -1098f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.b))), func_3(u_input.a, func_1(Struct_1(true, 1710f)), vec3<u32>(68708u, u_input.a, 4294967295u))), 1u)], func_1(global4[_wgslsmith_index_u32(~4294967295u, 1u)]).a, global3.a && true);
    global2 = array<Struct_1, 24>();
    let var_1 = select(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)) | _wgslsmith_clamp_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, 1u, u_input.a)), vec3<u32>(1u, abs(u_input.a), ~10045u), max(abs(vec3<u32>(89074u, 0u, u_input.a)), ~vec3<u32>(u_input.a, 1u, u_input.a))), vec3<u32>(u_input.a, 29491u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a) | _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(1u, u_input.a)), vec2<u32>(u_input.a, 1u) & abs(vec2<u32>(8162u, 1733u)))), vec3<bool>(global1.x, global3.a, !select(any(global1.yx), func_1(var_0.b).b.a, var_0.a.a)));
    global4 = array<Struct_1, 1>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global3.b)), var_0.a.b);
    var var_3 = select(vec3<bool>(true, global1.x, !select(all(vec4<bool>(global1.x, global1.x, true, global3.a)), func_1(global2[_wgslsmith_index_u32(u_input.a, 24u)]).c, var_0.a.a)), vec3<bool>(_wgslsmith_f_op_f32(2663f * _wgslsmith_f_op_f32(select(global3.b, global3.b, false))) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(595f - global3.b))), (_wgslsmith_f_op_f32(global3.b + -1816f) != _wgslsmith_f_op_f32(step(global3.b, -958f))) && true, true), global3.a);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-303f, _wgslsmith_f_op_f32(abs(global3.b)))), 953f, global3.a)))));
    let var_4 = ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, var_1.x), vec2<u32>(4294967295u, 4294967295u))) ^ _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(firstTrailingBit(var_1.zx), vec2<u32>(1u, var_1.x)), min(~var_1.x, reverseBits(min(55445u, u_input.a))), select(_wgslsmith_mod_u32(var_1.x, abs(u_input.a)), ~_wgslsmith_add_u32(u_input.a, 65606u), u_input.a > _wgslsmith_mult_u32(4294967295u, var_1.x)));
    let var_5 = _wgslsmith_dot_vec2_i32(vec2<i32>(-38431i, ~abs(i32(-1i) * -1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-13761i, -2147483647i, -12808i), vec3<i32>(-39092i, -13139i, 2147483647i))), vec2<i32>(1i, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(525i, 1i, _wgslsmith_sub_i32(var_5, 1i)) >> ((min(vec3<u32>(var_4, 28848u, u_input.a), var_1) | ~var_1) % vec3<u32>(32u)), -min(abs(vec3<i32>(var_5, var_5, var_5)), _wgslsmith_add_vec3_i32(vec3<i32>(11995i, var_5, -36771i), vec3<i32>(var_5, var_5, 25991i)))), _wgslsmith_clamp_i32(-1i, 6922i, _wgslsmith_mult_i32(max(17054i >> (var_1.x % 32u), -13071i), countOneBits(54329i))), -(~(-_wgslsmith_clamp_i32(22011i, 0i, 2147483647i))));
}

