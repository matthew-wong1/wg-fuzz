struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(1u, vec2<i32>(-27871i, 61382i)), Struct_1(4294967295u, vec2<i32>(-40061i, -21283i)), Struct_1(1u, vec2<i32>(8631i, 62680i)), Struct_1(0u, vec2<i32>(1i, 2147483647i)), Struct_1(4294967295u, vec2<i32>(-10908i, 0i)), Struct_1(38165u, vec2<i32>(-36971i, 0i)), Struct_1(1u, vec2<i32>(49806i, -1i)), Struct_1(30432u, vec2<i32>(1i, -1i)), Struct_1(40868u, vec2<i32>(2147483647i, 1i)), Struct_1(56211u, vec2<i32>(1i, 1i)), Struct_1(15601u, vec2<i32>(1877i, 20622i)), Struct_1(54887u, vec2<i32>(i32(-2147483648), 22735i)), Struct_1(54523u, vec2<i32>(-12413i, 2147483647i)), Struct_1(4294967295u, vec2<i32>(60161i, -36215i)), Struct_1(48189u, vec2<i32>(-29494i, i32(-2147483648))));

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(1u, vec2<i32>(-58580i, 0i)), Struct_1(0u, vec2<i32>(-1i, -57703i)), Struct_1(7467u, vec2<i32>(2147483647i, -1813i)), Struct_1(51024u, vec2<i32>(61422i, -9583i)));

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.a, ~vec2<u32>(0u, global2.a)), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(u_input.c, u_input.c)), u_input.a.x)), ~_wgslsmith_mult_vec2_i32(global2.b, -global2.b));
    var var_1 = var_0.b.x;
    return ~abs(4294967295u);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: bool, arg_3: bool) -> u32 {
    let var_0 = arg_0.x;
    var var_1 = select(select(vec4<bool>((arg_2 || false) || false, false, all(select(vec3<bool>(false, arg_2, arg_3), vec3<bool>(false, false, arg_2), arg_3)), arg_3 && true), select(select(!vec4<bool>(false, arg_3, false, false), select(vec4<bool>(false, false, arg_2, false), vec4<bool>(false, false, arg_2, arg_2), vec4<bool>(arg_3, true, arg_3, false)), select(vec4<bool>(arg_2, arg_2, arg_3, true), vec4<bool>(arg_2, true, arg_2, true), false)), select(vec4<bool>(false, arg_3, false, false), vec4<bool>(arg_3, arg_2, arg_3, arg_3), !vec4<bool>(true, true, arg_2, arg_2)), true), !select(false, any(vec3<bool>(false, true, false)), false)), select(!vec4<bool>(arg_3, !arg_3, false, arg_3), select(!vec4<bool>(arg_2, false, arg_3, arg_3), !select(vec4<bool>(arg_2, arg_2, arg_2, false), vec4<bool>(true, true, true, arg_2), vec4<bool>(false, true, false, true)), !(!vec4<bool>(true, arg_2, true, false))), select(select(select(vec4<bool>(true, arg_2, arg_2, arg_2), vec4<bool>(false, true, arg_3, arg_2), true), !vec4<bool>(true, false, arg_2, arg_2), arg_2), !(!vec4<bool>(arg_3, false, false, arg_2)), select(vec4<bool>(arg_2, arg_3, arg_2, arg_2), vec4<bool>(true, arg_3, arg_2, true), select(vec4<bool>(true, arg_3, false, arg_2), vec4<bool>(arg_3, arg_3, arg_2, arg_2), false)))), all(vec4<bool>(arg_3, any(select(vec2<bool>(false, false), vec2<bool>(arg_3, false), vec2<bool>(true, false))), true, true)));
    var var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.d, -54660i, -select(u_input.d, var_0, true)), 2147483647i, -_wgslsmith_add_i32(arg_0.x, -2147483647i) ^ -(~2147483647i), _wgslsmith_dot_vec3_i32(-arg_0, max(vec3<i32>(var_0, 0i, global2.b.x), vec3<i32>(global2.b.x, var_0, -45469i)))), vec4<i32>(((-2147483647i & global2.b.x) >> (~arg_1.x % 32u)) | (-67450i ^ arg_0.x), _wgslsmith_add_i32(-39867i, _wgslsmith_dot_vec3_i32(arg_0, arg_0) >> (_wgslsmith_add_u32(arg_1.x, 58977u) % 32u)), arg_0.x, 0i));
    global1 = array<Struct_1, 4>();
    let var_3 = _wgslsmith_clamp_vec3_i32(reverseBits(_wgslsmith_sub_vec3_i32(~firstLeadingBit(vec3<i32>(-1i, u_input.d, var_2.x)), _wgslsmith_sub_vec3_i32(var_2.zxw, var_2.xzz))), min(arg_0, arg_0), firstLeadingBit(select(vec3<i32>(1i, ~var_0, max(var_2.x, -2147483647i)), arg_0, !select(var_1.wxx, vec3<bool>(arg_3, arg_2, arg_2), false))));
    return 1u;
}

fn func_1(arg_0: Struct_1) -> f32 {
    global1 = array<Struct_1, 4>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 808f)));
    let var_1 = ~vec4<u32>(u_input.c, 0u, _wgslsmith_dot_vec2_u32(~u_input.a, ~u_input.a) << (func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1562f, 351f, -499f, -261f) + vec4<f32>(495f, 338f, 941f, 1459f))) % 32u), func_3(vec3<i32>(-56438i >> (global2.a % 32u), _wgslsmith_mult_i32(global2.b.x, 29450i), 1i), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(79426u, 24944u, 419u, arg_0.a), vec4<u32>(arg_0.a, 0u, 0u, 13861u), vec4<u32>(global2.a, 19759u, 74398u, global2.a))), true, true));
    var var_2 = global1[_wgslsmith_index_u32(var_1.x, 4u)];
    let var_3 = Struct_1(var_1.x, vec2<i32>((countOneBits(2147483647i) | (1i | global2.b.x)) | -35018i, min(_wgslsmith_mod_i32(min(arg_0.b.x, arg_0.b.x), 4090i), -2147483647i)));
    return 1000f;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>) -> StorageBuffer {
    let var_0 = arg_2;
    global1 = array<Struct_1, 4>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, var_0.x) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0) + arg_2)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1175f - _wgslsmith_f_op_f32(round(arg_2.x))) + _wgslsmith_div_f32(-1000f, arg_2.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)))));
    let var_3 = -min(firstTrailingBit(firstTrailingBit(~vec4<i32>(global2.b.x, -2147483647i, -36287i, -4083i))), vec4<i32>(2147483647i, global2.b.x, u_input.d << (_wgslsmith_mult_u32(11373u, 90741u) % 32u), -1i));
    return StorageBuffer(arg_2, vec4<f32>(_wgslsmith_f_op_f32(func_1(arg_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(Struct_1(1u, var_3.xy))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-974f, -467f))), _wgslsmith_f_op_f32(var_1.x * 1000f)), max(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.c, 0u), ~17038u), min(~vec2<u32>(39286u, u_input.c), u_input.b.xy)), vec2<u32>(5275u << (_wgslsmith_sub_u32(36462u, global2.a) % 32u), ~(global2.a >> (arg_1 % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec3<bool>(true, false, true));
    var var_1 = 26223u;
    var var_2 = Struct_1(_wgslsmith_div_u32(~(_wgslsmith_clamp_u32(u_input.a.x, 24584u, 4294967295u) & 9611u), u_input.a.x), vec2<i32>(global2.b.x, 2147483647i));
    let x = u_input.a;
    s_output = func_4(global0[_wgslsmith_index_u32(0u, 15u)], select(max(~(u_input.a.x << (0u % 32u)), 111269u), global2.a, var_0), vec2<f32>(_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.a, 32743u, 20011u), _wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(65826u, 92071u, 1u))), 15u)])), 567f));
}

