struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: bool = false;

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), 2147483647i, 32131i, 39518i);

var<private> global3: array<u32, 31> = array<u32, 31>(45407u, 28728u, 59891u, 1u, 4294967295u, 6724u, 26371u, 4294967295u, 30562u, 66200u, 0u, 0u, 0u, 4294967295u, 89054u, 74050u, 12422u, 40949u, 14295u, 34153u, 0u, 12002u, 126152u, 0u, 0u, 17535u, 36830u, 89562u, 1u, 1u, 5693u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = vec4<u32>(~_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(u_input.c.yxx, u_input.c.zzy), reverseBits(_wgslsmith_dot_vec3_u32(u_input.c.yyx, u_input.c.yxz))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(global3[_wgslsmith_index_u32(1u, 31u)], 103063u, u_input.b)) ^ u_input.c.xxx, min(~vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 31u)], 4294967295u, 1574u), _wgslsmith_sub_vec3_u32(u_input.c.wxy, vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], global3[_wgslsmith_index_u32(28201u, 31u)], global3[_wgslsmith_index_u32(63934u, 31u)])))), u_input.b), _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(firstLeadingBit(~countOneBits(13741u)), 31u)], 51413u), global3[_wgslsmith_index_u32(0u, 31u)]);
    global1 = false;
    var var_1 = Struct_2(any(!vec3<bool>(true, all(vec4<bool>(true, true, true, true)), false)), ~arg_1.a, vec3<bool>(any(vec3<bool>(true, true, true)), any(vec2<bool>(all(vec2<bool>(false, false)), true)), false), _wgslsmith_dot_vec3_i32(vec3<i32>(4687i, -countOneBits(arg_1.a), -arg_1.a), vec3<i32>(-arg_2.a, ~0i, 2147483647i) << (reverseBits(firstTrailingBit(var_0.wzz)) % vec3<u32>(32u))));
    let var_2 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global2.yxx, firstLeadingBit(select(vec3<i32>(global0.x, arg_1.a, 25085i), global2.wxy, var_1.c.x))), reverseBits(-(global2.x << (var_0.x % 32u)))));
    var var_3 = var_1.a;
    return var_1.c.x;
}

fn func_2() -> vec4<i32> {
    var var_0 = _wgslsmith_div_f32(-1000f, 356f);
    var var_1 = all(vec4<bool>(true, !(func_3(-2147483647i, Struct_1(global0.x), Struct_1(1i), 156f) && true), any(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(false, false, false))), !select(true, true, true)));
    return abs(u_input.e);
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> f32 {
    let var_0 = ~arg_2 >> (u_input.d % 32u);
    global2 = u_input.e;
    global0 = vec2<i32>(~arg_3.a, reverseBits(_wgslsmith_div_i32(abs(1i) << (1u % 32u), -2147483647i)));
    var var_1 = arg_3;
    global2 = _wgslsmith_div_vec4_i32(func_2(), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(abs(var_0), _wgslsmith_mult_i32(0i, 22871i), -13345i), abs(-var_1.a)), -1i, (arg_2 & var_0) << (~11724u % 32u), ~_wgslsmith_add_i32(-29103i >> (arg_1 % 32u), 23311i)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-577f + -251f)) * -1139f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-659f - 482f), _wgslsmith_f_op_f32(round(-232f)), all(vec4<bool>(true, true, false, false)))) - _wgslsmith_f_op_f32(max(240f, _wgslsmith_f_op_f32(158f + -379f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-167f * 1426f)), _wgslsmith_f_op_f32(526f + _wgslsmith_f_op_f32(sign(-211f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.yyz;
    global2 = vec4<i32>(select(global2.x, _wgslsmith_div_i32(global2.x, 1i) | global2.x, true), u_input.e.x ^ u_input.e.x, _wgslsmith_clamp_i32(reverseBits(u_input.e.x), u_input.e.x, global0.x), _wgslsmith_mult_i32(global2.x, 4583i));
    let var_1 = _wgslsmith_sub_vec3_i32(u_input.e.yzw, global2.zzz);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(846f, _wgslsmith_f_op_f32(func_1(u_input.c, var_0.x, var_1.x, Struct_1(u_input.e.x))), true))) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-217f * _wgslsmith_f_op_f32(sign(267f))))), -3628i, !vec3<bool>(false || any(vec2<bool>(true, false)), false, any(vec2<bool>(true, true))), 0i);
    global1 = !(!(_wgslsmith_f_op_f32(func_1(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(57604u, 31u)], 31u)], 31u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.x, 31u)], 31u)], 0u, 4294967295u), var_0.x, -1i, Struct_1(-2147483647i))) == _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(-1518f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-142f, -822f, -266f, -857f) + vec4<f32>(-1598f, 962f, -544f, 121f))))))), vec3<i32>(_wgslsmith_clamp_i32(global2.x, 22311i, 10257i), reverseBits(_wgslsmith_mod_i32(-15525i, var_1.x)) | firstTrailingBit(-global2.x), _wgslsmith_div_i32(var_1.x, -u_input.e.x)), -788f, select(global3[_wgslsmith_index_u32(u_input.d ^ _wgslsmith_div_u32(var_0.x, 24388u), 31u)], _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 72908u, 0u, var_0.x), vec4<u32>(0u, 0u, var_0.x, 29339u)), var_2.a) & u_input.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1155f, -170f) * vec2<f32>(622f, 1077f))))));
}

