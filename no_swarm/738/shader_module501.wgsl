struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(22081u, 0u, 0u, 49859u, 9331u, 4294967295u, 9511u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>) -> bool {
    var var_0 = vec4<i32>(0i, ~_wgslsmith_div_i32(u_input.e.x, 1i), ~countOneBits(-2147483647i), i32(-1i) * -2147483647i);
    var var_1 = Struct_5(-2147483647i ^ _wgslsmith_mod_i32(var_0.x, 2147483647i), -1i & min(var_0.x, 1i), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(-234f, arg_1.x)), 135f, _wgslsmith_f_op_f32(f32(-1f) * -330f)), _wgslsmith_f_op_vec3_f32(arg_1.zxx - arg_1.yxw), false)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(arg_1.x + 1303f), _wgslsmith_f_op_f32(-arg_1.x), -999f, _wgslsmith_f_op_f32(arg_1.x + 287f))))), u_input.d, Struct_1(vec3<f32>(_wgslsmith_div_f32(-1447f, 1078f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) * _wgslsmith_f_op_f32(-671f - -923f)), _wgslsmith_f_op_f32(select(-1013f, _wgslsmith_f_op_f32(step(arg_1.x, -1166f)), true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -1254f, _wgslsmith_f_op_f32(max(-660f, arg_1.x)), arg_1.x) + arg_1)));
    let var_2 = 532f;
    var var_3 = _wgslsmith_f_op_vec4_f32(min(var_1.c.b, vec4<f32>(_wgslsmith_f_op_f32(floor(-925f)), -948f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * var_2)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(arg_1.x - 538f))), 247f)));
    var var_4 = Struct_3(!(_wgslsmith_mult_u32(reverseBits(34194u), 0u) < firstLeadingBit(~arg_0.a)), Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.xww), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(107f, var_3.x, var_2, -222f), var_1.e.b))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, 789f, 960f, var_2))))), select(!vec2<bool>(2147483647i != var_0.x, false), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), true), any(vec4<bool>(false, false, true, false))), all(vec2<bool>(all(vec2<bool>(true, true)), true))));
    return true;
}

fn func_4(arg_0: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(421f, 257f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-288f, 1000f) + vec2<f32>(293f, -367f)), _wgslsmith_div_vec2_f32(vec2<f32>(-192f, -1135f), vec2<f32>(1000f, 534f)), select(vec2<bool>(false, arg_0.x), arg_0.yy, arg_0.zy))))));
    let var_1 = reverseBits(u_input.b.x);
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    let var_2 = (all(!vec2<bool>(arg_0.x, true)) || all(vec3<bool>(func_3(Struct_4(u_input.a.x), vec4<f32>(var_0.x, var_0.x, var_0.x, -1195f)), false, !arg_0.x))) & all(arg_0);
    return true;
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: f32) -> Struct_3 {
    let var_0 = arg_1;
    var var_1 = u_input.d;
    let var_2 = Struct_2(vec3<bool>(true, func_4(vec4<bool>(func_3(Struct_4(global0[_wgslsmith_index_u32(68680u, 7u)]), vec4<f32>(arg_1.b.b.x, var_0.b.a.x, arg_3, 1000f)), 4294967295u <= var_1.x, func_3(Struct_4(40541u), var_0.b.b), func_3(Struct_4(19821u), vec4<f32>(var_0.b.a.x, 598f, arg_3, -1000f)))), any(vec2<bool>(var_0.c.x, arg_0 > u_input.a.x))), select(arg_2.x, u_input.b.x, arg_1.b.a.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1642f))), arg_1.b);
    let var_3 = Struct_3(arg_2.x >= u_input.b.x, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_2.c.b.wxz)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b.x, arg_1.b.a.x, -222f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_3, -1612f, var_0.b.b.x))) - vec3<f32>(-1193f, arg_1.b.a.x, 1116f))), _wgslsmith_f_op_vec4_f32(var_2.c.b + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_0.b.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(255f, arg_3, arg_3, -314f))))), select(vec2<bool>(all(select(arg_1.c, var_2.a.yy, arg_1.c.x)), any(select(vec4<bool>(var_0.a, var_2.a.x, arg_1.c.x, false), vec4<bool>(arg_1.a, var_0.c.x, true, true), arg_1.c.x))), vec2<bool>(true, !(arg_0 >= global0[_wgslsmith_index_u32(4294967295u, 7u)])), !(15252u < ~u_input.c)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_0.b.b, _wgslsmith_f_op_vec4_f32(abs(var_3.b.b)))));
    return Struct_3(false, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_1.b.a.x, var_4.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(776f, var_0.b.b.x, 418f, -1275f), arg_1.b.b))))), !vec2<bool>(firstTrailingBit(u_input.d.x) < 4294967295u, all(select(var_2.a.xx, arg_1.c, false))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_3, arg_2: u32) -> Struct_2 {
    global0 = array<u32, 7>();
    var var_0 = func_2(~arg_2, Struct_3(false, func_2(~u_input.a.x, arg_1, _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e.x, 5638i, 1i, 2147483647i), vec4<i32>(arg_0.a, 32004i, 31544i, arg_0.b)), _wgslsmith_div_vec4_i32(vec4<i32>(0i, 1i, 2147483647i, 2147483647i), vec4<i32>(arg_0.a, u_input.e.x, u_input.e.x, u_input.b.x))), 1801f).b, !select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(arg_1.a, arg_1.c.x)), !arg_1.c, vec2<bool>(arg_1.c.x, false))), ~vec4<i32>(_wgslsmith_add_i32(-7535i, arg_0.b), 1i, ~u_input.b.x, abs(2147483647i)) << (~reverseBits(~vec4<u32>(0u, 4294967295u, 76455u, 17969u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-108f - _wgslsmith_f_op_f32(-arg_1.b.b.x)))).b;
    global0 = array<u32, 7>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_1.b.a.xz))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 2334f)));
    var var_2 = max(abs(u_input.e), -vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-34260i, arg_0.a), u_input.b.x), max(u_input.e.x, -2147483647i)));
    return Struct_2(select(!select(!vec3<bool>(true, false, arg_1.a), select(vec3<bool>(arg_1.c.x, arg_1.a, true), vec3<bool>(true, arg_1.a, arg_1.c.x), vec3<bool>(true, false, true)), !vec3<bool>(arg_1.a, false, arg_1.c.x)), !(!(!vec3<bool>(arg_1.c.x, arg_1.c.x, arg_1.a))), select(select(vec3<bool>(false, arg_1.c.x, arg_1.a), !vec3<bool>(arg_1.a, true, true), vec3<bool>(true, arg_1.c.x, false)), vec3<bool>(any(vec3<bool>(true, true, false)), all(vec4<bool>(true, false, arg_1.c.x, arg_1.a)), true), !select(vec3<bool>(false, false, arg_1.c.x), vec3<bool>(false, false, arg_1.c.x), vec3<bool>(true, arg_1.a, false)))), arg_0.b, func_2(global0[_wgslsmith_index_u32(arg_2, 7u)], func_2(~(~u_input.c), func_2(1u, func_2(51314u, arg_1, vec4<i32>(arg_0.a, arg_0.b, -1i, -1i), -1000f), select(vec4<i32>(arg_0.a, var_2.x, 0i, 0i), vec4<i32>(-3389i, u_input.b.x, u_input.b.x, arg_0.a), vec4<bool>(false, arg_1.a, false, true)), _wgslsmith_f_op_f32(-var_0.a.x)), abs(abs(vec4<i32>(-1i, -4832i, arg_0.b, var_2.x))), -1556f), ~(~(-vec4<i32>(-2147483647i, 33397i, 1i, 21787i))), arg_0.e.a.x).b);
}

fn func_6(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    global0 = array<u32, 7>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(min(1u, global0[_wgslsmith_index_u32(1u, 7u)]), 14773u), 7u)];
    var_0 = ~select(reverseBits(_wgslsmith_add_u32(~u_input.a.x, ~1u)), _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(u_input.c, 1u))), 16758u), all(!(!vec4<bool>(true, arg_0, false, arg_0))));
    var var_1 = 24341u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(497f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.c.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1963f))), _wgslsmith_f_op_f32(f32(-1f) * -1142f)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.c.b.zyy), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -514f)), _wgslsmith_f_op_f32(-func_2(4294967295u, Struct_3(false, arg_1.c, vec2<bool>(true, arg_1.a.x)), vec4<i32>(u_input.b.x, arg_1.b, u_input.e.x, -1i), -2355f).b.b.x), arg_1.c.a.x) - vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_1.c.b.x)), arg_1.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2)) - _wgslsmith_f_op_f32(ceil(-951f))), _wgslsmith_f_op_f32(ceil(-650f)), arg_1.c.b.x)));
}

fn func_7(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: vec4<f32>) -> Struct_3 {
    global0 = array<u32, 7>();
    return func_2(_wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(31277u, 7u)], 20679u), ~14021u, ~u_input.c << (abs(global0[_wgslsmith_index_u32(u_input.c, 7u)]) % 32u))), Struct_3(false, func_5(Struct_5(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), u_input.b.x, Struct_1(vec3<f32>(arg_1, 589f, arg_0.b.x), arg_3), min(u_input.d, u_input.d), arg_0), func_2(global0[_wgslsmith_index_u32(71739u, 7u)] << (u_input.c % 32u), Struct_3(true, arg_0, vec2<bool>(true, true)), vec4<i32>(-6501i, -1i, 34585i, -41991i), 1f), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a, u_input.a), u_input.a)).c, func_5(Struct_5(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, -60674i, arg_2.x, u_input.b.x), vec4<i32>(arg_2.x, -68479i, arg_2.x, arg_2.x)), firstLeadingBit(-1i), Struct_1(vec3<f32>(-122f, -260f, arg_0.b.x), arg_3), _wgslsmith_sub_vec2_u32(u_input.a.yy, u_input.a.yx), Struct_1(vec3<f32>(2033f, -863f, arg_1), vec4<f32>(-1000f, 1252f, 511f, arg_0.a.x))), func_2(1u, Struct_3(true, Struct_1(arg_0.b.zwz, arg_0.b), vec2<bool>(false, false)), vec4<i32>(u_input.e.x, -10827i, 2147483647i, arg_2.x), arg_3.x), min(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 4294967295u), ~u_input.d.x)).a.zz), vec4<i32>(-abs(_wgslsmith_clamp_i32(-535i, u_input.b.x, 1i)), arg_2.x, abs(~(-24443i)), _wgslsmith_dot_vec3_i32(countOneBits(~vec3<i32>(arg_2.x, arg_2.x, arg_2.x)), _wgslsmith_add_vec3_i32(~vec3<i32>(20839i, 48915i, u_input.b.x), vec3<i32>(u_input.b.x, arg_2.x, -1i) << (u_input.a % vec3<u32>(32u))))), func_5(Struct_5(arg_2.x, -6325i, arg_0, vec2<u32>(_wgslsmith_sub_u32(u_input.d.x, global0[_wgslsmith_index_u32(20908u, 7u)]), ~u_input.c), Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1183f, -260f, -1000f))), arg_0.b)), func_2(u_input.d.x, func_2(global0[_wgslsmith_index_u32(8899u, 7u)] << (1u % 32u), Struct_3(true, arg_0, vec2<bool>(true, true)), -vec4<i32>(45030i, u_input.b.x, arg_2.x, u_input.e.x), arg_3.x), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-20228i, -2147483647i, -40939i, u_input.b.x), vec4<i32>(u_input.e.x, arg_2.x, 11771i, u_input.b.x)), -vec4<i32>(1i, arg_2.x, -42606i, arg_2.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(579f + arg_1)))), 1u).c.a.x);
}

fn func_8(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_4 {
    global0 = array<u32, 7>();
    var var_0 = countOneBits(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(13u, global0[_wgslsmith_index_u32(6051u, 7u)], 0u), vec3<u32>(43435u, 4294967295u, 1u) ^ select(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(23883u, 7u)], global0[_wgslsmith_index_u32(60072u, 7u)]), u_input.a, vec3<bool>(arg_2.a, arg_2.a, arg_2.c.x)))));
    let var_1 = func_5(Struct_5(1i, arg_0, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(165f)), 495f, _wgslsmith_div_f32(1617f, -356f)), arg_1.b.b), abs(~(~u_input.a.xy)), arg_2.b), arg_2, u_input.d.x);
    global0 = array<u32, 7>();
    var_0 = u_input.a.x;
    return Struct_4(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a, ~vec3<u32>(58374u, 4294967295u, 4294967295u)), u_input.a), 7u)], 7u)]);
}

fn func_1() -> f32 {
    var var_0 = vec3<i32>(u_input.e.x, i32(-1i) * -2147483647i, _wgslsmith_add_i32(7080i, u_input.b.x));
    var var_1 = func_8(-5606i, func_7(func_6(true, func_5(Struct_5(1i, 2147483647i, Struct_1(vec3<f32>(-837f, 264f, 155f), vec4<f32>(459f, 501f, -449f, 2372f)), vec2<u32>(u_input.a.x, u_input.a.x), Struct_1(vec3<f32>(760f, 236f, -1875f), vec4<f32>(-490f, -422f, 930f, -629f))), func_2(1u, Struct_3(false, Struct_1(vec3<f32>(535f, 439f, 2025f), vec4<f32>(927f, 724f, -640f, 1289f)), vec2<bool>(true, false)), vec4<i32>(32902i, 4997i, 16491i, u_input.e.x), 420f), 1u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(543f, _wgslsmith_f_op_f32(abs(1570f)))), u_input.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-826f, 197f, -271f, 473f), vec4<f32>(231f, -539f, -615f, -761f))))))), func_2(u_input.a.x, func_7(func_7(func_2(global0[_wgslsmith_index_u32(43719u, 7u)], Struct_3(true, Struct_1(vec3<f32>(-1000f, 384f, 1000f), vec4<f32>(1856f, -968f, 1827f, 1000f)), vec2<bool>(true, false)), vec4<i32>(u_input.e.x, -44578i, u_input.e.x, u_input.e.x), -250f).b, _wgslsmith_f_op_f32(ceil(232f)), _wgslsmith_div_vec2_i32(var_0.yz, vec2<i32>(-55074i, 1i)), vec4<f32>(1000f, 1000f, -401f, -107f)).b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2049f), _wgslsmith_f_op_f32(abs(1181f)), false)), -select(vec2<i32>(u_input.e.x, var_0.x), vec2<i32>(2147483647i, -1i), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(430f, -1465f, -964f, -1357f)))), _wgslsmith_mult_vec4_i32(~firstTrailingBit(vec4<i32>(u_input.b.x, -2147483647i, var_0.x, var_0.x)), -(~vec4<i32>(-1i, u_input.e.x, u_input.e.x, 2975i))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_5(Struct_5(30106i, -39197i, Struct_1(vec3<f32>(-1383f, -1341f, 1244f), vec4<f32>(873f, -218f, -1071f, -1052f)), u_input.a.xz, Struct_1(vec3<f32>(1000f, -1192f, 567f), vec4<f32>(-1301f, 1000f, -2203f, 1405f))), Struct_3(true, Struct_1(vec3<f32>(480f, 832f, -1471f), vec4<f32>(-306f, -659f, -385f, -1251f)), vec2<bool>(false, false)), u_input.d.x).c.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1497f)))), _wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.b.x, u_input.e.x, 1i) ^ vec3<i32>(var_0.x, 1i, u_input.e.x)), vec3<i32>(27116i, var_0.x, func_5(Struct_5(u_input.b.x, var_0.x, Struct_1(vec3<f32>(135f, -1558f, -138f), vec4<f32>(681f, 1084f, -142f, 1341f)), vec2<u32>(global0[_wgslsmith_index_u32(37921u, 7u)], 1136u), Struct_1(vec3<f32>(-898f, 1136f, 140f), vec4<f32>(1176f, -1247f, 958f, -1000f))), Struct_3(false, Struct_1(vec3<f32>(927f, -2205f, -447f), vec4<f32>(-767f, -1000f, 1585f, 143f)), vec2<bool>(false, false)), u_input.c).b)) ^ countOneBits(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b.x, u_input.e.x, 8402i), _wgslsmith_mod_vec3_i32(vec3<i32>(-38381i, 2147483647i, var_0.x), vec3<i32>(u_input.e.x, -52944i, 9379i)))));
    var var_2 = Struct_4(global0[_wgslsmith_index_u32(63094u, 7u)]);
    var_2 = func_8(reverseBits(select(1i, _wgslsmith_mod_i32(var_0.x >> (var_2.a % 32u), _wgslsmith_dot_vec2_i32(var_0.yz, u_input.e)), all(vec2<bool>(true, true)))), Struct_3(false, func_7(func_6(true, Struct_2(vec3<bool>(false, false, false), u_input.b.x, Struct_1(vec3<f32>(2534f, -289f, -185f), vec4<f32>(1402f, 825f, -629f, 715f)))), _wgslsmith_f_op_f32(1057f - _wgslsmith_f_op_f32(1038f - -1999f)), vec2<i32>(var_0.x, -var_0.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1108f, 514f, 525f, -1093f), vec4<f32>(-308f, 229f, -312f, 1892f), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(918f, 1315f, 242f, -300f)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false))))).b, func_7(func_5(Struct_5(var_0.x, 2147483647i, Struct_1(vec3<f32>(873f, -1865f, -453f), vec4<f32>(709f, -1519f, -919f, 617f)), vec2<u32>(var_2.a, 4294967295u), Struct_1(vec3<f32>(-604f, -1266f, 1798f), vec4<f32>(-236f, -647f, 818f, -682f))), Struct_3(true, Struct_1(vec3<f32>(-541f, 827f, -349f), vec4<f32>(-277f, -248f, -785f, 1114f)), vec2<bool>(false, false)), ~4294967295u).c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(102f))), vec2<i32>(26935i >> (global0[_wgslsmith_index_u32(1u, 7u)] % 32u), _wgslsmith_sub_i32(-1i, -2851i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(741f, 869f, -222f, 718f) - vec4<f32>(-2218f, 1027f, -1000f, 768f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1170f, 1319f, 1812f, 830f), vec4<f32>(-547f, 1000f, 333f, 1059f))))).c), Struct_3(true, func_6(any(vec3<bool>(false, true, true)), func_5(Struct_5(0i, u_input.b.x, Struct_1(vec3<f32>(-1000f, 432f, 534f), vec4<f32>(2612f, 812f, -196f, -986f)), vec2<u32>(var_2.a, 2803u), Struct_1(vec3<f32>(-1648f, 845f, -779f), vec4<f32>(1181f, 930f, -1277f, 173f))), func_2(0u, Struct_3(false, Struct_1(vec3<f32>(-1837f, -1000f, -1189f), vec4<f32>(262f, -727f, 402f, -591f)), vec2<bool>(true, false)), vec4<i32>(u_input.e.x, u_input.e.x, 2147483647i, var_0.x), -150f), var_1.a)), vec2<bool>(true, 50386i <= ~var_0.x)), ~(~(-vec3<i32>(44781i, 1i, -2147483647i) ^ (vec3<i32>(var_0.x, 15743i, 24277i) ^ vec3<i32>(-20378i, var_0.x, 81465i)))));
    global0 = array<u32, 7>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1405f)));
}

fn func_9(arg_0: bool) -> Struct_3 {
    var var_0 = func_8(-u_input.b.x, func_7(Struct_1(func_2(global0[_wgslsmith_index_u32(u_input.c, 7u)] << (u_input.a.x % 32u), Struct_3(false, Struct_1(vec3<f32>(1297f, -1202f, -632f), vec4<f32>(-752f, 453f, -325f, 1071f)), vec2<bool>(false, false)), ~vec4<i32>(0i, u_input.e.x, u_input.b.x, 1i), _wgslsmith_f_op_f32(f32(-1f) * -1483f)).b.b.zyw, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(427f, 975f, 1136f, 1000f)))), 424f, ~vec2<i32>(u_input.e.x, -17171i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -625f, -1000f, 1092f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1394f, -366f, -1000f, -336f) * vec4<f32>(926f, 1123f, 1000f, -245f))))), func_2(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 7u)], 7u)], 7u)], 7u)], 0u), 7u)], u_input.c), 1u, _wgslsmith_add_u32(u_input.d.x, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 23152u))), func_2(0u, Struct_3(!arg_0, Struct_1(vec3<f32>(-1237f, 1504f, -185f), vec4<f32>(-2761f, -1462f, -2106f, 352f)), vec2<bool>(true, arg_0)), countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.e.x), vec4<i32>(u_input.e.x, 0i, u_input.b.x, u_input.e.x))), 1447f), -firstTrailingBit(-vec4<i32>(u_input.e.x, u_input.b.x, u_input.e.x, 12454i)), _wgslsmith_f_op_f32(sign(-1052f))), select(_wgslsmith_mult_vec3_i32(-vec3<i32>(-2147483647i, -1i, -1i), _wgslsmith_mult_vec3_i32(~vec3<i32>(-76176i, 55958i, 6876i), vec3<i32>(u_input.e.x, u_input.b.x, 0i))), firstTrailingBit(vec3<i32>(u_input.e.x, -9508i, _wgslsmith_div_i32(-1i, -1i))), vec3<bool>(all(vec2<bool>(arg_0, true)), func_5(Struct_5(u_input.b.x, u_input.b.x, Struct_1(vec3<f32>(1000f, -1912f, 105f), vec4<f32>(199f, -1000f, -2465f, -1106f)), u_input.a.zz, Struct_1(vec3<f32>(594f, 1374f, -183f), vec4<f32>(-476f, -1288f, 633f, 1000f))), Struct_3(false, Struct_1(vec3<f32>(186f, 805f, 1000f), vec4<f32>(1002f, -706f, -216f, -410f)), vec2<bool>(arg_0, true)), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(1u, 7u)], 66520u, 1u)).a.x, arg_0)));
    var var_1 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, min(0u, 4294967295u), 77555u, max(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(var_0.a, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 7u)]), ~1u)), ~vec4<u32>(var_0.a, 14738u, 18898u, global0[_wgslsmith_index_u32(u_input.d.x, 7u)] | var_0.a));
    var_0 = Struct_4(16271u);
    global0 = array<u32, 7>();
    var_1 = ~(vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 19913u, global0[_wgslsmith_index_u32(var_1.x, 7u)]), vec3<u32>(var_1.x, 32751u, global0[_wgslsmith_index_u32(18844u, 7u)])), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_1.x, var_1.x), countOneBits(50849u)), 7u)], 4294967295u) ^ _wgslsmith_sub_vec4_u32(select(~vec4<u32>(44903u, u_input.a.x, var_0.a, 58709u), vec4<u32>(var_1.x, var_0.a, 25110u, 82783u), true), vec4<u32>(~var_1.x, ~u_input.c, ~var_0.a, ~1u)));
    return func_2(89136u, func_7(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -2015f, 853f)) + vec3<f32>(1453f, 538f, -1215f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(326f, 970f, 521f, 1236f), vec4<f32>(-946f, 818f, -1188f, -1852f)))), _wgslsmith_f_op_f32(-688f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -500f)))), select(-_wgslsmith_mult_vec2_i32(u_input.e, u_input.b), u_input.e, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(func_6(true, Struct_2(vec3<bool>(arg_0, arg_0, true), -2147483647i, Struct_1(vec3<f32>(-233f, 1398f, -100f), vec4<f32>(247f, -1044f, -968f, -471f)))).a.x, _wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(-875f, -880f), -538f) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1030f, -610f, -1110f, -173f), vec4<f32>(-1799f, -1029f, 1097f, -1392f)))))), ~(-vec4<i32>(_wgslsmith_div_i32(-1i, -12729i), -45874i, ~u_input.e.x, u_input.b.x << (var_0.a % 32u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1065f, -255f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-457f, 1000f)), _wgslsmith_f_op_f32(round(2304f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 7>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -565f);
    let var_1 = all(!select(vec2<bool>(false, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), all(vec2<bool>(true, true))));
    global0 = array<u32, 7>();
    var var_2 = func_9(_wgslsmith_f_op_f32(func_1()) < 2810f);
    global0 = array<u32, 7>();
    var var_3 = ~vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(func_8(~72448i, Struct_3(false, Struct_1(vec3<f32>(var_0, -716f, var_2.b.a.x), vec4<f32>(var_0, 1000f, -421f, var_2.b.b.x)), vec2<bool>(var_1, true)), func_2(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(65430u, 7u)], 7u)], Struct_3(true, Struct_1(var_2.b.b.yww, vec4<f32>(-638f, var_2.b.b.x, var_2.b.a.x, 574f)), vec2<bool>(var_1, true)), vec4<i32>(-2147483647i, 13427i, u_input.b.x, u_input.e.x), var_2.b.b.x), countOneBits(vec3<i32>(u_input.b.x, u_input.b.x, u_input.e.x))).a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)] << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)] % 32u), 7u)] << ((30333u >> (0u % 32u)) % 32u), 7u)]), 7u)], ~1u);
    global0 = array<u32, 7>();
    let var_4 = countOneBits(_wgslsmith_mult_vec3_u32(select(~u_input.a, ~(~vec3<u32>(21005u, u_input.d.x, 82648u)), func_5(Struct_5(1i, 2147483647i, Struct_1(vec3<f32>(var_0, -869f, 698f), vec4<f32>(var_2.b.b.x, 120f, var_0, var_0)), u_input.a.xy, var_2.b), func_2(4294967295u, Struct_3(var_1, Struct_1(var_2.b.b.zwy, vec4<f32>(-746f, -201f, var_0, var_2.b.b.x)), vec2<bool>(var_2.c.x, true)), vec4<i32>(u_input.b.x, 29137i, u_input.e.x, u_input.e.x), 177f), ~global0[_wgslsmith_index_u32(15357u, 7u)]).a), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

