struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, true), 0i, false, vec3<i32>(11472i, -20i, i32(-2147483648)), vec3<i32>(-135i, 23409i, 0i));

var<private> global2: array<f32, 5>;

var<private> global3: array<vec3<u32>, 8>;

var<private> global4: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = -610f;
    var var_1 = 364f;
    global0 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 5u)]);
    global2 = array<f32, 5>();
    let var_2 = arg_1;
    return firstTrailingBit(_wgslsmith_div_i32(var_2.d.x, 26765i & max(_wgslsmith_sub_i32(-50792i, -7089i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b, 2147483647i), vec2<i32>(var_2.e.x, 9824i)))));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> f32 {
    let var_0 = Struct_1(!global1.a, func_3(~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.x, arg_1.x, arg_1.x), vec3<u32>(arg_1.x, 43488u, arg_1.x)), Struct_1(select(vec3<bool>(true, global1.a.x, global1.c), select(global1.a, global1.a, global1.c), global1.a), 25475i, _wgslsmith_f_op_f32(trunc(-428f)) < arg_0, ~firstTrailingBit(u_input.b), global1.e), Struct_1(select(!vec3<bool>(true, false, global1.a.x), global1.a, !vec3<bool>(true, global1.a.x, false)), _wgslsmith_clamp_i32(22372i, u_input.c, global1.b) | _wgslsmith_mod_i32(1i, global1.e.x), all(select(global1.a.yx, vec2<bool>(false, global1.c), global1.a.x)), select(u_input.b, firstLeadingBit(vec3<i32>(global1.d.x, global1.b, global1.b)), false), _wgslsmith_mult_vec3_i32(-vec3<i32>(14930i, global1.e.x, global1.e.x), countOneBits(vec3<i32>(-11712i, 276i, u_input.b.x))))), (_wgslsmith_f_op_f32(step(-950f, 426f)) <= _wgslsmith_f_op_f32(-453f * arg_0)) | !any(select(vec3<bool>(global1.a.x, false, global1.a.x), vec3<bool>(true, global1.a.x, global1.c), vec3<bool>(global1.c, true, global1.a.x))), vec3<i32>(select(u_input.b.x, _wgslsmith_add_i32(2147483647i, -18638i), all(global1.a)), -global1.d.x, _wgslsmith_dot_vec2_i32(u_input.b.xz, vec2<i32>(2147483647i, 9286i))) & abs(u_input.b), _wgslsmith_div_vec3_i32(u_input.b >> (_wgslsmith_add_vec3_u32(countOneBits(arg_1), ~arg_1) % vec3<u32>(32u)), ~((vec3<i32>(global1.e.x, global1.d.x, global1.b) << (vec3<u32>(23822u, arg_1.x, arg_1.x) % vec3<u32>(32u))) & (vec3<i32>(27784i, global1.b, 0i) << (vec3<u32>(0u, 4294967295u, 86349u) % vec3<u32>(32u))))));
    global2 = array<f32, 5>();
    let var_1 = _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global1.b, u_input.a, 1i), vec3<i32>(var_0.b, global1.d.x, -12090i)), vec3<i32>(22887i, 21025i, -1i)), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(21775i, -19558i, var_0.e.x, -1i), vec4<i32>(var_0.d.x, global1.e.x, global1.b, global1.b))), var_0.e.x, i32(-1i) * -u_input.b.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.c), var_0.d.yx), 17119i, ~u_input.c, var_0.e.x), vec4<i32>(~var_0.e.x, global1.e.x, var_0.b, -2147483647i)) >> (vec4<u32>(arg_1.x, ~(~30547u), ~_wgslsmith_add_u32(0u, arg_1.x), _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(28933u, 0u, 26465u, arg_1.x), vec4<u32>(arg_1.x, 1u, 72601u, arg_1.x)))) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-784f - 2051f), global2[_wgslsmith_index_u32(abs(arg_1.x), 5u)], _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(1u, 5u)], -247f, global2[_wgslsmith_index_u32(32692u, 5u)]) - vec3<f32>(-1000f, 1000f, arg_0)) * vec3<f32>(-1812f, global2[_wgslsmith_index_u32(arg_1.x, 5u)], -1000f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1109f, global2[_wgslsmith_index_u32(60652u, 5u)], arg_0) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1306f, 134f, -1000f)))), vec3<bool>(!any(vec2<bool>(false, global1.a.x)), true, var_0.a.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(183f, -266f, arg_0))), vec3<f32>(global2[_wgslsmith_index_u32(2619u & arg_1.x, 5u)], arg_0, _wgslsmith_f_op_f32(step(-304f, global2[_wgslsmith_index_u32(arg_1.x, 5u)])))))));
    let var_3 = !(_wgslsmith_f_op_f32(358f - -1076f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-317f + _wgslsmith_f_op_f32(min(var_2.x, global2[_wgslsmith_index_u32(arg_1.x, 5u)])))));
    return var_2.x;
}

fn func_1() -> StorageBuffer {
    global3 = array<vec3<u32>, 8>();
    let var_0 = global1.a.zx;
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(20047u, 5u)])) + 598f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~firstLeadingBit(0u), 5u)] - _wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 12260u), vec2<u32>(1u, 0u)), 5u)], ~vec3<u32>(1u, 1u, 1u))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(8524u, 5u)], -773f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(abs(58571u), 5u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 5u)] + -129f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(168f, -275f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], 942f) - vec2<f32>(253f, global2[_wgslsmith_index_u32(56490u, 5u)])))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 5u)]))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 5u)], 663f) * global2[_wgslsmith_index_u32(countOneBits(~4294967295u), 5u)]))));
    let var_3 = Struct_1(select(!global1.a, vec3<bool>(select(true, var_0.x, !global1.a.x), var_0.x, _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(42959u, 5u)], var_2.x)) <= _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(25884u, 5u)] + -383f)), global1.a), 0i, any(!(!global1.a)), vec3<i32>((i32(-1i) * -29688i) >> ((firstTrailingBit(66904u) ^ abs(27941u)) % 32u), i32(-1i) * -(~0i), abs(_wgslsmith_sub_i32(2147483647i, u_input.a | 13357i))), abs(global1.e));
    return StorageBuffer(~_wgslsmith_mod_vec4_i32(-vec4<i32>(-2147483647i, 0i, 2147483647i, global1.e.x) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), ~select(vec4<i32>(u_input.c, global1.e.x, 2147483647i, 1i), vec4<i32>(0i, 1i, 2147483647i, u_input.b.x), global1.a.x)), vec4<i32>(72111i, max(~(-2147483647i), -1i), _wgslsmith_add_i32(global1.b, -66658i), -18489i), ((~vec4<i32>(var_3.d.x, -2147483647i, 6056i, var_3.b) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) | vec4<i32>(select(0i, u_input.a, var_3.a.x), 1i, ~(-51618i), u_input.a)) >> (abs(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 1u, 0u, 30882u), ~vec4<u32>(48480u, 1u, 85649u, 0u))) % vec4<u32>(32u)), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

