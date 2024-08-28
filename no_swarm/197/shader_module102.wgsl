struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: bool,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: f32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: array<i32, 5>;

var<private> global2: array<vec4<u32>, 3>;

var<private> global3: vec3<i32> = vec3<i32>(1i, 2147483647i, -20724i);

var<private> global4: array<u32, 23>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> vec2<i32> {
    var var_0 = vec4<u32>(u_input.a, u_input.a, ~arg_1, u_input.a);
    global4 = array<u32, 23>();
    var_0 = _wgslsmith_add_vec4_u32(global2[_wgslsmith_index_u32(arg_1, 3u)], countOneBits(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(global4[_wgslsmith_index_u32(u_input.a, 23u)], 80542u)), 0u, 0u, ~1u)));
    let var_1 = select(all(!vec4<bool>(all(vec3<bool>(true, true, true)), true, true, true)), any(vec2<bool>(true, true)) || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(640f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-747f)) + _wgslsmith_f_op_f32(min(-625f, -147f)))), true);
    let var_2 = -298f;
    return abs(~(~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, global3.x, -31303i), arg_0), 17889i)));
}

fn func_2(arg_0: f32) -> bool {
    global3 = -(~(vec3<i32>(-1i) * -(~vec3<i32>(0i, -51479i, global3.x))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1704f, -364f)), -1000f), arg_0, arg_0));
    let var_1 = vec2<i32>(global3.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(select(_wgslsmith_div_u32(u_input.a, u_input.a), global4[_wgslsmith_index_u32(~1u, 23u)], all(vec3<bool>(false, false, true))), _wgslsmith_sub_u32(~50933u, u_input.a)), 5u)]) ^ func_3(vec3<i32>(-29934i, _wgslsmith_mult_i32(-1i, global3.x), ~(~1i)), u_input.a);
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 27831u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global4[_wgslsmith_index_u32(4294967295u, 23u)]), vec2<u32>(13162u, 1u)))), ~vec3<u32>(1u, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 83746u, 0u)), vec3<u32>(global4[_wgslsmith_index_u32(u_input.a, 23u)], u_input.a, 4294967295u)), (global4[_wgslsmith_index_u32(4294967295u, 23u)] << (83660u % 32u)) >> (u_input.a % 32u)));
    let var_3 = vec4<u32>(_wgslsmith_div_u32(abs(~36338u), select(_wgslsmith_add_u32(0u, global4[_wgslsmith_index_u32(firstLeadingBit(1u), 23u)]), 1u, true)), _wgslsmith_mult_u32(~16094u << (global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(11660u, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(9712u, u_input.a))), 23u)] % 32u), 4294967295u), ~(~20412u ^ _wgslsmith_mod_u32(firstTrailingBit(global4[_wgslsmith_index_u32(u_input.a, 23u)]), ~21965u)), ~_wgslsmith_mult_u32(4294967295u, global4[_wgslsmith_index_u32(reverseBits(4294967295u), 23u)]) ^ 0u);
    return false;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: vec4<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-854f - -223f), _wgslsmith_f_op_f32(floor(-712f)), -631f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(floor(-596f)), 1505f, -946f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-695f, -951f, -783f)))))), global1[_wgslsmith_index_u32(0u, 5u)] <= _wgslsmith_add_i32(-78260i, abs(-18730i))));
    let var_1 = Struct_3(vec4<i32>(1i, _wgslsmith_sub_i32(abs(1i), global3.x), 1i, countOneBits(_wgslsmith_mult_i32(-15358i, abs(0i)))), global3.xz, _wgslsmith_dot_vec2_i32(abs(arg_0.wy) | -vec2<i32>(arg_0.x, arg_0.x), arg_0.yx));
    global1 = array<i32, 5>();
    global4 = array<u32, 23>();
    var var_2 = 50617u;
    return var_1;
}

fn func_1() -> StorageBuffer {
    global1 = array<i32, 5>();
    let var_0 = global4[_wgslsmith_index_u32(3072u >> (u_input.a % 32u), 23u)];
    var var_1 = func_4(vec4<i32>(-(-global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 23u)], 5u)] ^ -1i), ~(-1i), _wgslsmith_mult_i32(-58174i | (global1[_wgslsmith_index_u32(4294967295u, 5u)] | 1i), _wgslsmith_sub_i32(~global3.x, global3.x >> (global4[_wgslsmith_index_u32(11232u, 23u)] % 32u))), 2147483647i), select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec3<bool>(false, false, false)), all(vec4<bool>(true, true, true, false))), (func_2(-1000f) & true) & false), vec4<bool>(select(41344i, _wgslsmith_mult_i32(1i, -22601i), true) < (firstTrailingBit(1i) << (_wgslsmith_div_u32(90603u, u_input.a) % 32u)), true, !(-920f != _wgslsmith_f_op_f32(select(-1198f, -1740f, true))), !(all(vec4<bool>(true, false, false, true)) & true)), vec4<bool>(false, func_2(_wgslsmith_f_op_f32(f32(-1f) * -966f)), ~2508u == reverseBits(global4[_wgslsmith_index_u32(~4294967295u, 23u)]), all(select(vec2<bool>(true, true), vec2<bool>(true, false), true))));
    var_1 = Struct_3(vec4<i32>(select(~6255i, 1i, true), 2147483647i, _wgslsmith_sub_i32(_wgslsmith_div_i32(abs(var_1.c), global3.x), 1i), -1i), _wgslsmith_sub_vec2_i32(var_1.a.yx, abs(-vec2<i32>(-2147483647i, var_1.a.x)) & ~_wgslsmith_div_vec2_i32(vec2<i32>(-17803i, var_1.b.x), vec2<i32>(global1[_wgslsmith_index_u32(58026u, 5u)], var_1.c))), -7319i);
    var_1 = func_4(select(var_1.a, vec4<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(var_1.b.x, var_1.c)), _wgslsmith_mod_i32(-18997i, ~(-2147483647i)), i32(-1i) * -1i, 31681i), true), !vec3<bool>(!all(vec4<bool>(true, true, true, false)), func_2(_wgslsmith_div_f32(550f, 207f)), true), !select(vec4<bool>(true, -2147483647i > var_1.a.x, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false), any(vec2<bool>(false, false))), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, false, func_2(781f))), vec4<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -390f), _wgslsmith_f_op_f32(step(-254f, 898f)))) >= _wgslsmith_f_op_f32(f32(-1f) * -396f), all(vec2<bool>(true, true)), true, !any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), true))));
    return StorageBuffer(~abs(global4[_wgslsmith_index_u32(~u_input.a << (select(0u, 0u, true) % 32u), 23u)]), -1645f);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<u32, 23>();
    var var_0 = all(!(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true))));
    global2 = array<vec4<u32>, 3>();
    global1 = array<i32, 5>();
    global0 = array<Struct_1, 5>();
    global4 = array<u32, 23>();
    var var_1 = -1i;
    var var_2 = _wgslsmith_div_u32(abs(~u_input.a), firstLeadingBit(u_input.a));
    let x = u_input.a;
    s_output = func_1();
}

