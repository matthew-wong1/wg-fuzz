struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: vec4<bool>,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

var<private> global1: vec3<bool>;

var<private> global2: array<i32, 6>;

var<private> global3: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(-29161i, Struct_1(vec3<i32>(-1i, 1i, -1i), -509f, i32(-2147483648), true, vec4<u32>(4294967295u, 1u, 27671u, 0u)), 0i), Struct_2(1i, Struct_1(vec3<i32>(i32(-2147483648), 58768i, 2147483647i), -985f, 0i, true, vec4<u32>(51844u, 1u, 1u, 0u)), 34131i), Struct_2(1i, Struct_1(vec3<i32>(-1i, -12492i, -1i), 280f, 522i, false, vec4<u32>(1u, 4294967295u, 0u, 59666u)), -57363i), Struct_2(0i, Struct_1(vec3<i32>(2147483647i, 2672i, i32(-2147483648)), 311f, -6616i, true, vec4<u32>(46707u, 0u, 1u, 14028u)), 22072i), Struct_2(1i, Struct_1(vec3<i32>(-5867i, i32(-2147483648), -28953i), 935f, 1i, false, vec4<u32>(20056u, 4294967295u, 4294967295u, 4294967295u)), 0i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    let var_0 = vec4<u32>(~global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a.x >> (global0[_wgslsmith_index_u32(u_input.b, 12u)] % 32u), 0u), 12u)], u_input.a.x, global0[_wgslsmith_index_u32(1940u, 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 8497u), 12u)], 12u)], 12u)], 12u)] << (max(22261u & ~global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(~u_input.b, 12u)]) % 32u));
    let var_1 = reverseBits(vec4<i32>(abs(global2[_wgslsmith_index_u32(1u, 6u)]), global2[_wgslsmith_index_u32(u_input.b, 6u)], global2[_wgslsmith_index_u32(~u_input.a.x, 6u)] & -(~(-1i)), -2147483647i));
    var var_2 = max(_wgslsmith_add_vec3_u32(~reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, global0[_wgslsmith_index_u32(var_0.x, 12u)], 6254u), vec3<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 12u)], 4294967295u))), vec3<u32>(17895u, _wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.x, 6077u), max(0u, 1u)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~28157u, 12u)], 12u)])), vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 12u)], 1u), ~var_0.yw), var_0.zy), global0[_wgslsmith_index_u32(8392u, 12u)]));
    global3 = array<Struct_2, 5>();
    var var_3 = -3616i;
    return _wgslsmith_mult_i32(var_1.x, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(var_0.x, 6u)], _wgslsmith_mult_i32(~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(14149i, global2[_wgslsmith_index_u32(4294967295u, 6u)], 1i, var_1.x), var_1))) >> (global0[_wgslsmith_index_u32(1u ^ ~_wgslsmith_sub_u32(u_input.c.x, var_0.x), 12u)] % 32u));
}

fn func_2(arg_0: vec4<f32>) -> vec4<u32> {
    let var_0 = Struct_2(-1i, Struct_1(~firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47207u, 12u)], 6u)], 18532i, 5340i), vec3<i32>(global2[_wgslsmith_index_u32(84249u, 6u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32331u, 12u)], 6u)], -24717i))), 560f, ~global2[_wgslsmith_index_u32(~(u_input.b | 0u), 6u)], global1.x, ~select(~vec4<u32>(27109u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53602u, 12u)], 12u)], 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42031u, 12u)], 12u)], global0[_wgslsmith_index_u32(48886u, 12u)]), ~vec4<u32>(u_input.c.x, u_input.a.x, u_input.b, 48915u), select(vec4<bool>(true, global1.x, false, true), vec4<bool>(false, global1.x, true, false), global1.x))), ~_wgslsmith_sub_i32(~global2[_wgslsmith_index_u32(1u, 6u)] >> (_wgslsmith_div_u32(u_input.a.x, 3670u) % 32u), func_3(vec3<bool>(global1.x, true, false)) ^ 0i));
    var var_1 = false;
    global3 = array<Struct_2, 5>();
    return vec4<u32>(_wgslsmith_add_u32(u_input.b, min(u_input.c.x, ~(~u_input.c.x))), _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), 0u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.b.e.ww, vec2<u32>(31557u, 4294967295u)), _wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(25932u, 12u)], var_0.b.e.x), var_0.b.e.yy)), 12u)], firstTrailingBit(4294967295u) ^ 877u) & ~u_input.c.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> bool {
    global2 = array<i32, 6>();
    let var_0 = ~(~vec4<u32>(global0[_wgslsmith_index_u32(~4294967295u << (countOneBits(u_input.b) % 32u), 12u)], 4294967295u, max(_wgslsmith_div_u32(0u, 57203u), ~28466u), ~_wgslsmith_dot_vec3_u32(u_input.c, u_input.c)));
    let var_1 = 202f;
    var var_2 = vec4<u32>(~_wgslsmith_mod_u32(abs(var_0.x), 9914u), var_0.x << (global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(42678u), ~u_input.b, 47267u), 12u)] % 32u), ~(~4294967295u), _wgslsmith_dot_vec4_u32(var_0, func_2(vec4<f32>(_wgslsmith_f_op_f32(965f * 596f), 133f, var_1, _wgslsmith_f_op_f32(step(var_1, 1000f))))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, _wgslsmith_f_op_f32(var_1 - arg_1), _wgslsmith_f_op_f32(f32(-1f) * -645f), 690f))));
    return any(select(!vec4<bool>(global1.x, global1.x, false, true), !(!vec4<bool>(true, true, global1.x, global1.x)), select(vec4<bool>(false, global1.x, global1.x, false), !vec4<bool>(false, true, false, global1.x), select(vec4<bool>(global1.x, false, false, true), vec4<bool>(true, true, true, global1.x), vec4<bool>(false, global1.x, true, false))))) | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1562f, 506f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) + _wgslsmith_f_op_f32(trunc(-942f)))) >= var_3.a.x);
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<bool>) -> Struct_4 {
    let var_0 = reverseBits(4294967295u);
    let var_1 = ~_wgslsmith_div_vec4_u32(vec4<u32>(firstTrailingBit(countOneBits(0u)), (global0[_wgslsmith_index_u32(44901u, 12u)] << (1u % 32u)) & global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 36114u, var_0), 12u)], select(func_2(arg_0).x, _wgslsmith_sub_u32(42891u, 1u), any(vec3<bool>(true, arg_2.x, true))), 1u), _wgslsmith_mult_vec4_u32(~vec4<u32>(27238u, u_input.c.x, 0u, u_input.c.x) & _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 30462u, 1u, global0[_wgslsmith_index_u32(32280u, 12u)]), vec4<u32>(u_input.c.x, u_input.c.x, var_0, 51117u)), ~(~vec4<u32>(var_0, 4294967295u, var_0, global0[_wgslsmith_index_u32(68916u, 12u)]))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * 983f) - -1000f);
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-189f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1282f)) - -195f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(sign(-1695f))))), arg_2.x, !select(!vec4<bool>(arg_2.x, true, false, global1.x), !select(vec4<bool>(true, arg_2.x, false, global1.x), vec4<bool>(true, arg_2.x, false, true), false), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(73216u, 12u)], 12u)] <= global0[_wgslsmith_index_u32(13614u, 12u)]), global1.x, Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)))));
    let var_4 = arg_2;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 6>();
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-366f * -670f) - 437f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(620f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -680f) - -562f), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(286f * 1364f)))), select(global1.xz, select(vec2<bool>(func_1(vec3<i32>(25695i, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22794u, 12u)], 6u)], global2[_wgslsmith_index_u32(107431u, 6u)]), -1471f), !global1.x), vec2<bool>(true, true), vec2<bool>(global1.x, global1.x)), !vec2<bool>(all(global1.xy), !global1.x)));
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-244f, -1455f)) - _wgslsmith_f_op_f32(-293f * var_0.e.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1346f)), func_4(_wgslsmith_f_op_vec4_f32(sign(var_0.e.a)), var_0.a.x, func_4(vec4<f32>(var_0.e.a.x, 525f, var_0.e.a.x, 862f), -130f, vec2<bool>(global1.x, var_0.c.x)).c.wy).e.a.x, var_0.e.a.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(var_0.a)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.e.a * vec4<f32>(-600f, 392f, 1318f, var_0.e.a.x)), _wgslsmith_f_op_vec4_f32(ceil(var_0.a)), var_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(209f, 1295f))), var_0.e.a.x)), var_0.c.wy).e;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-115f, _wgslsmith_f_op_f32(trunc(var_0.a.x)), var_1.a.x))), _wgslsmith_f_op_vec3_f32(ceil(var_0.a.wxw)));
    global3 = array<Struct_2, 5>();
    global2 = array<i32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_div_vec3_i32(~vec3<i32>(0i, global2[_wgslsmith_index_u32(u_input.b, 6u)], -2147483647i), ~vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], global2[_wgslsmith_index_u32(82730u, 6u)], -1i)) & -firstTrailingBit(vec3<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 6u)], global2[_wgslsmith_index_u32(0u, 6u)], 0i))), vec3<u32>(110090u, global0[_wgslsmith_index_u32(u_input.b, 12u)], abs(37032u)));
}

