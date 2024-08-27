struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec4<i32> = vec4<i32>(i32(-2147483648), -1i, 8461i, -29808i);

var<private> global2: array<Struct_2, 25>;

var<private> global3: array<u32, 11> = array<u32, 11>(0u, 51829u, 1u, 4294967295u, 70807u, 14415u, 7203u, 23789u, 4294967295u, 10213u, 21277u);

var<private> global4: vec3<u32> = vec3<u32>(42355u, 1328u, 18797u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    var var_0 = ~(-1i);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(max(111f, arg_1)));
    global2 = array<Struct_2, 25>();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(-1462f, _wgslsmith_f_op_f32(-arg_1))), -1000f, -670f);
    var var_3 = arg_0;
    return false;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2) -> vec4<i32> {
    global1 = u_input.e;
    let var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(12983u, firstTrailingBit(select(~63593u, ~0u, false))), 25u)];
    global2 = array<Struct_2, 25>();
    var var_1 = -global1.x == ~(~global1.x);
    var_1 = any(select(select(vec4<bool>(arg_2.b | var_0.b, select(var_0.b, false, false), true, true), select(select(vec4<bool>(arg_2.b, true, false, arg_2.b), vec4<bool>(true, false, true, true), false), select(vec4<bool>(arg_2.b, true, arg_2.b, true), vec4<bool>(var_0.b, var_0.b, arg_2.b, arg_2.b), vec4<bool>(true, var_0.b, true, false)), !vec4<bool>(var_0.b, true, false, false)), true), vec4<bool>(false || select(arg_2.b, true, arg_2.b), var_0.b, _wgslsmith_mult_u32(arg_2.c.x, u_input.d.x) >= abs(var_0.c.x), any(vec4<bool>(true, false, false, true)) && true), !var_0.b));
    return select(max(vec4<i32>(_wgslsmith_clamp_i32(abs(global1.x), i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(u_input.c, global1.yzz)), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, 11994i, 1i, -23818i), u_input.e >> (u_input.d % vec4<u32>(32u))), _wgslsmith_mod_i32(global1.x ^ 20807i, firstLeadingBit(1i)), ~(-u_input.c.x)), u_input.e), vec4<i32>(global1.x & (global1.x >> (u_input.d.x % 32u)), 51597i, reverseBits(1i ^ global1.x), 1i), select(vec4<bool>(arg_2.b, all(!vec4<bool>(false, false, arg_2.b, false)), _wgslsmith_f_op_f32(-arg_2.d) <= _wgslsmith_f_op_f32(max(972f, -1000f)), all(!vec4<bool>(arg_2.b, false, arg_2.b, false))), select(!vec4<bool>(arg_2.b, var_0.b, var_0.b, arg_2.b), select(!vec4<bool>(arg_2.b, var_0.b, arg_2.b, true), !vec4<bool>(false, true, var_0.b, var_0.b), vec4<bool>(arg_2.b, true, arg_2.b, var_0.b)), arg_2.b), global1.x != ~23240i));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_2)), _wgslsmith_div_f32(arg_2, -278f), -1070f)))), Struct_1(825f), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-503f, -247f, arg_2))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-426f, arg_2, 804f)))), func_3(global2[_wgslsmith_index_u32(reverseBits(47056u), 25u)], _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(385f * -616f)), max(arg_0 ^ vec4<u32>(u_input.d.x, u_input.b, 0u, 4294967295u), ~u_input.d), Struct_1(-571f)), u_input.d.yw, _wgslsmith_f_op_f32(round(-1113f))));
    let var_1 = _wgslsmith_sub_i32(-11292i, 4377i);
    var var_2 = ~_wgslsmith_mod_u32(u_input.b, 1u) | ~(~4294967295u);
    let var_3 = select(all(vec3<bool>(_wgslsmith_div_f32(-148f, arg_2) < _wgslsmith_f_op_f32(f32(-1f) * -1000f), (arg_2 > -1038f) & (u_input.c.x > -2147483647i), true)), false, !(-2147483647i != ~global1.x));
    var var_4 = 130f;
    return Struct_1(-1273f);
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<u32>) -> f32 {
    let var_0 = func_2(u_input.d, 28219u, arg_0.x);
    global3 = array<u32, 11>();
    var var_1 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~u_input.d, ~vec4<u32>(u_input.b, 4294967295u, 4294967295u, arg_1)), reverseBits(u_input.d) ^ vec4<u32>(global3[_wgslsmith_index_u32(global0.x, 11u)], 19586u, 1u, 4294967295u)) | _wgslsmith_mult_vec4_u32(min(u_input.d, u_input.d), _wgslsmith_mult_vec4_u32(reverseBits(_wgslsmith_mult_vec4_u32(u_input.d, u_input.d)), u_input.d));
    let var_2 = false;
    let var_3 = func_2(vec4<u32>(0u, arg_1, 25923u, abs(5237u)), ~(~arg_2.x), _wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(-var_0.a), true)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(155f)))))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1802f, _wgslsmith_f_op_f32(ceil(var_3.a)), global1.x != global1.x)), arg_0.x)), -1557f, var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 25>();
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1527f, -117f, 1080f, -416f) + vec4<f32>(1000f, 187f, 798f, 382f)), abs(19338u), vec3<u32>(global4.x, global3[_wgslsmith_index_u32(6063u, 11u)], global3[_wgslsmith_index_u32(0u, 11u)]))) * _wgslsmith_f_op_f32(step(-408f, _wgslsmith_div_f32(-549f, 1387f)))), func_2(_wgslsmith_div_vec4_u32(u_input.d, u_input.d), global4.x, _wgslsmith_f_op_f32(func_1(vec4<f32>(-137f, -354f, 1000f, 1781f), _wgslsmith_add_u32(27681u, global0.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, global3[_wgslsmith_index_u32(global0.x, 11u)]), vec3<u32>(0u, 6013u, 4294967295u))))).a));
    global4 = ~vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(global4.x << (global3[_wgslsmith_index_u32(9923u, 11u)] % 32u), ~0u), global4.x), ~(~global3[_wgslsmith_index_u32(0u, 11u)]), countOneBits(global0.x));
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * -1178f), _wgslsmith_f_op_f32(var_0.a + 1599f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a, var_1.a)) + _wgslsmith_f_op_f32(step(410f, 266f)))), u_input.b, min(~vec3<u32>(0u, u_input.b, 52504u), abs(vec3<u32>(16582u, 1u, global3[_wgslsmith_index_u32(85950u, 11u)]))))) + -252f);
    let x = u_input.a;
    s_output = StorageBuffer(-(~global1.x), global1.x);
}

