struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global1: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(55295u, Struct_2(Struct_1(true), vec4<bool>(false, false, true, true))), Struct_3(4294967295u, Struct_2(Struct_1(false), vec4<bool>(false, true, false, true))), Struct_3(1u, Struct_2(Struct_1(true), vec4<bool>(false, true, true, false))), Struct_3(4750u, Struct_2(Struct_1(true), vec4<bool>(true, true, true, false))), Struct_3(4294967295u, Struct_2(Struct_1(true), vec4<bool>(true, true, true, false))), Struct_3(0u, Struct_2(Struct_1(true), vec4<bool>(false, true, true, true))), Struct_3(4294967295u, Struct_2(Struct_1(false), vec4<bool>(false, false, false, true))), Struct_3(1u, Struct_2(Struct_1(true), vec4<bool>(false, false, false, true))), Struct_3(0u, Struct_2(Struct_1(true), vec4<bool>(true, false, false, false))), Struct_3(50926u, Struct_2(Struct_1(false), vec4<bool>(false, true, false, true))), Struct_3(4294967295u, Struct_2(Struct_1(false), vec4<bool>(false, false, false, false))), Struct_3(16203u, Struct_2(Struct_1(true), vec4<bool>(true, false, false, true))), Struct_3(0u, Struct_2(Struct_1(false), vec4<bool>(true, false, true, true))));

var<private> global2: i32 = 0i;

var<private> global3: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(true), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(true), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(false), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(false), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(true), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(true), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(false), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(true), vec4<bool>(true, false, true, false)));

var<private> global4: vec2<bool>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: vec3<u32>) -> vec3<i32> {
    global4 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, false)))) <= _wgslsmith_f_op_f32(ceil(arg_2.x)), !((_wgslsmith_sub_i32(-31376i, 0i) >> (_wgslsmith_dot_vec3_u32(arg_3, arg_3) % 32u)) > 48128i));
    var var_0 = false;
    global0 = array<vec2<bool>, 31>();
    return firstTrailingBit(~u_input.b);
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_mod_vec3_i32(u_input.b, _wgslsmith_clamp_vec3_i32(func_3(global0[_wgslsmith_index_u32(u_input.a, 31u)], !global0[_wgslsmith_index_u32(u_input.a, 31u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-927f, arg_0)), vec3<u32>(countOneBits(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 0u)), 26822u)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.b.x, 0i, u_input.b.x), vec3<i32>(~u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(1i, 1i, ~u_input.b.x)), (countOneBits(u_input.b) | _wgslsmith_mod_vec3_i32(u_input.b, u_input.b)) | vec3<i32>(u_input.b.x, u_input.b.x << (70356u % 32u), abs(u_input.b.x))));
    var var_1 = reverseBits(vec3<u32>(countOneBits(3417u), u_input.a, 14432u)) ^ firstLeadingBit(_wgslsmith_mod_vec3_u32((vec3<u32>(0u, u_input.a, 123494u) << (vec3<u32>(u_input.a, u_input.a, 4294967295u) % vec3<u32>(32u))) >> (abs(vec3<u32>(1u, u_input.a, 107042u)) % vec3<u32>(32u)), select(vec3<u32>(67382u, 28692u, u_input.a) | vec3<u32>(u_input.a, 0u, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(11732u, u_input.a, u_input.a), vec3<u32>(1u, u_input.a, 4294967295u)), true)));
    var var_2 = Struct_1(all(select(vec3<bool>(false, true, global4.x | global4.x), !select(vec3<bool>(global4.x, false, global4.x), vec3<bool>(global4.x, false, global4.x), vec3<bool>(false, global4.x, global4.x)), select(select(vec3<bool>(global4.x, global4.x, true), vec3<bool>(global4.x, false, false), global4.x), select(vec3<bool>(true, global4.x, global4.x), vec3<bool>(global4.x, true, global4.x), false), all(vec2<bool>(global4.x, false))))));
    let var_3 = Struct_2(Struct_1(!(0u < var_1.x)), !(!(!vec4<bool>(var_2.a, global4.x, global4.x, true))));
    var_1 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, select(1u, abs(var_1.x), -13990i > u_input.b.x)), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(77262u, u_input.a, u_input.a, u_input.a) & vec4<u32>(33629u, var_1.x, var_1.x, 0u)), ~(~vec4<u32>(u_input.a, var_1.x, u_input.a, 12888u)))), var_1.x, ~(u_input.a | u_input.a));
    return abs(_wgslsmith_sub_u32(var_1.x, (0u | u_input.a) >> (u_input.a % 32u))) << ((_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~4259u, ~0u), vec3<u32>(~var_1.x, ~u_input.a, 4294967295u)) ^ ~_wgslsmith_clamp_u32(98552u, ~1u, u_input.a ^ u_input.a)) % 32u);
}

fn func_1() -> f32 {
    global0 = array<vec2<bool>, 31>();
    global0 = array<vec2<bool>, 31>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_2(283f), func_2(323f)), 13u)];
    let var_1 = global4.x;
    let var_2 = var_0.b.a.a || !global4.x;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-232f, _wgslsmith_f_op_f32(f32(-1f) * -320f))) - _wgslsmith_f_op_f32(sign(1f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1679f, 769f, false))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = !vec2<bool>(any(!vec2<bool>(false, global4.x)), global4.x);
    let var_0 = vec4<f32>(-136f, 1f, 231f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -962f), _wgslsmith_f_op_f32(1505f - -525f))))));
    global4 = vec2<bool>(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), -1000f), global4.x, any(!vec2<bool>(global4.x, true))), global4.x);
    let var_1 = !global4.x;
    let var_2 = Struct_4(Struct_2(Struct_1(true), !vec4<bool>(global4.x, global4.x, 1504f < var_0.x, 10294i == u_input.b.x)), 4294967295u, Struct_1(global4.x), vec2<bool>(true, all(!(!vec4<bool>(global4.x, false, global4.x, var_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0.yxx + vec3<f32>(1030f, var_0.x, 1419f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-628f, var_0.x, var_0.x)))))) * var_0.zyx));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-vec4<i32>(i32(-1i) * -38079i, countOneBits(1i), 9658i, countOneBits(44838i))), vec3<i32>(func_3(vec2<bool>(true, var_2.a.a.a), vec2<bool>(true, var_2.d.x), _wgslsmith_f_op_vec2_f32(-var_2.e.yy), ~vec3<u32>(0u, u_input.a, u_input.a)).x << (var_2.b % 32u), ~u_input.b.x, 25792i), abs(~firstLeadingBit(33358u)), abs(_wgslsmith_sub_i32(u_input.b.x, -abs(u_input.b.x))), _wgslsmith_mult_u32(reverseBits(~var_2.b), ~69290u) ^ 4294967295u);
}

